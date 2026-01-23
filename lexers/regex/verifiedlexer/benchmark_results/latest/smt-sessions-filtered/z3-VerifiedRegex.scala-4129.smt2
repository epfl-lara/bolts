; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221392 () Bool)

(assert start!221392)

(declare-fun b!2266171 () Bool)

(declare-fun b_free!67149 () Bool)

(declare-fun b_next!67853 () Bool)

(assert (=> b!2266171 (= b_free!67149 (not b_next!67853))))

(declare-fun tp!716975 () Bool)

(declare-fun b_and!178329 () Bool)

(assert (=> b!2266171 (= tp!716975 b_and!178329)))

(declare-fun b_free!67151 () Bool)

(declare-fun b_next!67855 () Bool)

(assert (=> b!2266171 (= b_free!67151 (not b_next!67855))))

(declare-fun tp!716966 () Bool)

(declare-fun b_and!178331 () Bool)

(assert (=> b!2266171 (= tp!716966 b_and!178331)))

(declare-fun b!2266165 () Bool)

(declare-fun b_free!67153 () Bool)

(declare-fun b_next!67857 () Bool)

(assert (=> b!2266165 (= b_free!67153 (not b_next!67857))))

(declare-fun tp!716960 () Bool)

(declare-fun b_and!178333 () Bool)

(assert (=> b!2266165 (= tp!716960 b_and!178333)))

(declare-fun b_free!67155 () Bool)

(declare-fun b_next!67859 () Bool)

(assert (=> b!2266165 (= b_free!67155 (not b_next!67859))))

(declare-fun tp!716973 () Bool)

(declare-fun b_and!178335 () Bool)

(assert (=> b!2266165 (= tp!716973 b_and!178335)))

(declare-fun b!2266164 () Bool)

(declare-fun b_free!67157 () Bool)

(declare-fun b_next!67861 () Bool)

(assert (=> b!2266164 (= b_free!67157 (not b_next!67861))))

(declare-fun tp!716974 () Bool)

(declare-fun b_and!178337 () Bool)

(assert (=> b!2266164 (= tp!716974 b_and!178337)))

(declare-fun b_free!67159 () Bool)

(declare-fun b_next!67863 () Bool)

(assert (=> b!2266164 (= b_free!67159 (not b_next!67863))))

(declare-fun tp!716964 () Bool)

(declare-fun b_and!178339 () Bool)

(assert (=> b!2266164 (= tp!716964 b_and!178339)))

(declare-fun b!2266147 () Bool)

(declare-fun b_free!67161 () Bool)

(declare-fun b_next!67865 () Bool)

(assert (=> b!2266147 (= b_free!67161 (not b_next!67865))))

(declare-fun tp!716965 () Bool)

(declare-fun b_and!178341 () Bool)

(assert (=> b!2266147 (= tp!716965 b_and!178341)))

(declare-fun b_free!67163 () Bool)

(declare-fun b_next!67867 () Bool)

(assert (=> b!2266147 (= b_free!67163 (not b_next!67867))))

(declare-fun tp!716967 () Bool)

(declare-fun b_and!178343 () Bool)

(assert (=> b!2266147 (= tp!716967 b_and!178343)))

(declare-fun e!1451275 () Bool)

(assert (=> b!2266147 (= e!1451275 (and tp!716965 tp!716967))))

(declare-fun b!2266148 () Bool)

(declare-fun e!1451269 () Bool)

(declare-datatypes ((List!27025 0))(
  ( (Nil!26931) (Cons!26931 (h!32332 (_ BitVec 16)) (t!202119 List!27025)) )
))
(declare-datatypes ((TokenValue!4451 0))(
  ( (FloatLiteralValue!8902 (text!31602 List!27025)) (TokenValueExt!4450 (__x!17962 Int)) (Broken!22255 (value!136030 List!27025)) (Object!4544) (End!4451) (Def!4451) (Underscore!4451) (Match!4451) (Else!4451) (Error!4451) (Case!4451) (If!4451) (Extends!4451) (Abstract!4451) (Class!4451) (Val!4451) (DelimiterValue!8902 (del!4511 List!27025)) (KeywordValue!4457 (value!136031 List!27025)) (CommentValue!8902 (value!136032 List!27025)) (WhitespaceValue!8902 (value!136033 List!27025)) (IndentationValue!4451 (value!136034 List!27025)) (String!29358) (Int32!4451) (Broken!22256 (value!136035 List!27025)) (Boolean!4452) (Unit!39883) (OperatorValue!4454 (op!4511 List!27025)) (IdentifierValue!8902 (value!136036 List!27025)) (IdentifierValue!8903 (value!136037 List!27025)) (WhitespaceValue!8903 (value!136038 List!27025)) (True!8902) (False!8902) (Broken!22257 (value!136039 List!27025)) (Broken!22258 (value!136040 List!27025)) (True!8903) (RightBrace!4451) (RightBracket!4451) (Colon!4451) (Null!4451) (Comma!4451) (LeftBracket!4451) (False!8903) (LeftBrace!4451) (ImaginaryLiteralValue!4451 (text!31603 List!27025)) (StringLiteralValue!13353 (value!136041 List!27025)) (EOFValue!4451 (value!136042 List!27025)) (IdentValue!4451 (value!136043 List!27025)) (DelimiterValue!8903 (value!136044 List!27025)) (DedentValue!4451 (value!136045 List!27025)) (NewLineValue!4451 (value!136046 List!27025)) (IntegerValue!13353 (value!136047 (_ BitVec 32)) (text!31604 List!27025)) (IntegerValue!13354 (value!136048 Int) (text!31605 List!27025)) (Times!4451) (Or!4451) (Equal!4451) (Minus!4451) (Broken!22259 (value!136049 List!27025)) (And!4451) (Div!4451) (LessEqual!4451) (Mod!4451) (Concat!11088) (Not!4451) (Plus!4451) (SpaceValue!4451 (value!136050 List!27025)) (IntegerValue!13355 (value!136051 Int) (text!31606 List!27025)) (StringLiteralValue!13354 (text!31607 List!27025)) (FloatLiteralValue!8903 (text!31608 List!27025)) (BytesLiteralValue!4451 (value!136052 List!27025)) (CommentValue!8903 (value!136053 List!27025)) (StringLiteralValue!13355 (value!136054 List!27025)) (ErrorTokenValue!4451 (msg!4512 List!27025)) )
))
(declare-datatypes ((C!13420 0))(
  ( (C!13421 (val!7758 Int)) )
))
(declare-datatypes ((List!27026 0))(
  ( (Nil!26932) (Cons!26932 (h!32333 C!13420) (t!202120 List!27026)) )
))
(declare-datatypes ((IArray!17457 0))(
  ( (IArray!17458 (innerList!8786 List!27026)) )
))
(declare-datatypes ((Conc!8726 0))(
  ( (Node!8726 (left!20439 Conc!8726) (right!20769 Conc!8726) (csize!17682 Int) (cheight!8937 Int)) (Leaf!12856 (xs!11668 IArray!17457) (csize!17683 Int)) (Empty!8726) )
))
(declare-datatypes ((BalanceConc!17180 0))(
  ( (BalanceConc!17181 (c!359902 Conc!8726)) )
))
(declare-datatypes ((Regex!6637 0))(
  ( (ElementMatch!6637 (c!359903 C!13420)) (Concat!11089 (regOne!13786 Regex!6637) (regTwo!13786 Regex!6637)) (EmptyExpr!6637) (Star!6637 (reg!6966 Regex!6637)) (EmptyLang!6637) (Union!6637 (regOne!13787 Regex!6637) (regTwo!13787 Regex!6637)) )
))
(declare-datatypes ((String!29359 0))(
  ( (String!29360 (value!136055 String)) )
))
(declare-datatypes ((TokenValueInjection!8442 0))(
  ( (TokenValueInjection!8443 (toValue!6043 Int) (toChars!5902 Int)) )
))
(declare-datatypes ((Rule!8378 0))(
  ( (Rule!8379 (regex!4289 Regex!6637) (tag!4779 String!29359) (isSeparator!4289 Bool) (transformation!4289 TokenValueInjection!8442)) )
))
(declare-fun otherR!12 () Rule!8378)

(declare-fun tp!716959 () Bool)

(declare-fun e!1451266 () Bool)

(declare-fun inv!36474 (String!29359) Bool)

(declare-fun inv!36477 (TokenValueInjection!8442) Bool)

(assert (=> b!2266148 (= e!1451269 (and tp!716959 (inv!36474 (tag!4779 otherR!12)) (inv!36477 (transformation!4289 otherR!12)) e!1451266))))

(declare-fun b!2266149 () Bool)

(declare-fun res!968878 () Bool)

(declare-fun e!1451259 () Bool)

(assert (=> b!2266149 (=> (not res!968878) (not e!1451259))))

(declare-fun e!1451285 () Bool)

(assert (=> b!2266149 (= res!968878 e!1451285)))

(declare-fun res!968876 () Bool)

(assert (=> b!2266149 (=> res!968876 e!1451285)))

(declare-fun lt!842167 () Bool)

(assert (=> b!2266149 (= res!968876 lt!842167)))

(declare-fun b!2266150 () Bool)

(declare-fun e!1451267 () Bool)

(declare-fun e!1451274 () Bool)

(assert (=> b!2266150 (= e!1451267 e!1451274)))

(declare-fun res!968877 () Bool)

(assert (=> b!2266150 (=> res!968877 e!1451274)))

(declare-fun lt!842177 () Int)

(declare-fun lt!842172 () Int)

(assert (=> b!2266150 (= res!968877 (> lt!842177 lt!842172))))

(declare-datatypes ((List!27027 0))(
  ( (Nil!26933) (Cons!26933 (h!32334 Rule!8378) (t!202121 List!27027)) )
))
(declare-fun rules!1750 () List!27027)

(declare-fun getIndex!310 (List!27027 Rule!8378) Int)

(assert (=> b!2266150 (= lt!842172 (getIndex!310 rules!1750 otherR!12))))

(declare-fun r!2363 () Rule!8378)

(assert (=> b!2266150 (= lt!842177 (getIndex!310 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3886 0))(
  ( (LexerInterfaceExt!3883 (__x!17963 Int)) (Lexer!3884) )
))
(declare-fun thiss!16613 () LexerInterface!3886)

(declare-fun ruleValid!1381 (LexerInterface!3886 Rule!8378) Bool)

(assert (=> b!2266150 (ruleValid!1381 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39884 0))(
  ( (Unit!39885) )
))
(declare-fun lt!842176 () Unit!39884)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!788 (LexerInterface!3886 Rule!8378 List!27027) Unit!39884)

(assert (=> b!2266150 (= lt!842176 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!788 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2266151 () Bool)

(declare-fun e!1451282 () Bool)

(assert (=> b!2266151 (= e!1451282 e!1451259)))

(declare-fun res!968871 () Bool)

(assert (=> b!2266151 (=> (not res!968871) (not e!1451259))))

(declare-fun e!1451280 () Bool)

(assert (=> b!2266151 (= res!968871 e!1451280)))

(declare-fun res!968864 () Bool)

(assert (=> b!2266151 (=> res!968864 e!1451280)))

(assert (=> b!2266151 (= res!968864 lt!842167)))

(declare-datatypes ((Token!8056 0))(
  ( (Token!8057 (value!136056 TokenValue!4451) (rule!6605 Rule!8378) (size!21120 Int) (originalCharacters!5059 List!27026)) )
))
(declare-datatypes ((List!27028 0))(
  ( (Nil!26934) (Cons!26934 (h!32335 Token!8056) (t!202122 List!27028)) )
))
(declare-fun tokens!456 () List!27028)

(declare-fun isEmpty!15239 (List!27028) Bool)

(assert (=> b!2266151 (= lt!842167 (isEmpty!15239 tokens!456))))

(declare-fun e!1451257 () Bool)

(declare-fun e!1451265 () Bool)

(declare-fun tp!716971 () Bool)

(declare-fun b!2266152 () Bool)

(assert (=> b!2266152 (= e!1451257 (and tp!716971 (inv!36474 (tag!4779 (h!32334 rules!1750))) (inv!36477 (transformation!4289 (h!32334 rules!1750))) e!1451265))))

(declare-fun b!2266153 () Bool)

(assert (=> b!2266153 (= e!1451259 (not e!1451267))))

(declare-fun res!968879 () Bool)

(assert (=> b!2266153 (=> res!968879 e!1451267)))

(declare-fun e!1451277 () Bool)

(assert (=> b!2266153 (= res!968879 e!1451277)))

(declare-fun res!968868 () Bool)

(assert (=> b!2266153 (=> (not res!968868) (not e!1451277))))

(assert (=> b!2266153 (= res!968868 (not lt!842167))))

(assert (=> b!2266153 (ruleValid!1381 thiss!16613 r!2363)))

(declare-fun lt!842173 () Unit!39884)

(assert (=> b!2266153 (= lt!842173 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!788 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2266154 () Bool)

(declare-fun res!968865 () Bool)

(declare-fun e!1451279 () Bool)

(assert (=> b!2266154 (=> (not res!968865) (not e!1451279))))

(declare-fun rulesInvariant!3388 (LexerInterface!3886 List!27027) Bool)

(assert (=> b!2266154 (= res!968865 (rulesInvariant!3388 thiss!16613 rules!1750))))

(declare-fun e!1451283 () Bool)

(declare-fun tp!716968 () Bool)

(declare-fun e!1451270 () Bool)

(declare-fun b!2266155 () Bool)

(declare-fun inv!21 (TokenValue!4451) Bool)

(assert (=> b!2266155 (= e!1451270 (and (inv!21 (value!136056 (h!32335 tokens!456))) e!1451283 tp!716968))))

(declare-fun b!2266156 () Bool)

(declare-fun res!968874 () Bool)

(assert (=> b!2266156 (=> (not res!968874) (not e!1451259))))

(assert (=> b!2266156 (= res!968874 (not (= r!2363 otherR!12)))))

(declare-fun b!2266157 () Bool)

(declare-fun e!1451263 () Bool)

(declare-fun tp_is_empty!10495 () Bool)

(declare-fun tp!716963 () Bool)

(assert (=> b!2266157 (= e!1451263 (and tp_is_empty!10495 tp!716963))))

(declare-fun b!2266158 () Bool)

(declare-fun head!4876 (List!27028) Token!8056)

(assert (=> b!2266158 (= e!1451285 (= (rule!6605 (head!4876 tokens!456)) r!2363))))

(declare-fun b!2266160 () Bool)

(assert (=> b!2266160 (= e!1451279 e!1451282)))

(declare-fun res!968872 () Bool)

(assert (=> b!2266160 (=> (not res!968872) (not e!1451282))))

(declare-datatypes ((IArray!17459 0))(
  ( (IArray!17460 (innerList!8787 List!27028)) )
))
(declare-datatypes ((Conc!8727 0))(
  ( (Node!8727 (left!20440 Conc!8727) (right!20770 Conc!8727) (csize!17684 Int) (cheight!8938 Int)) (Leaf!12857 (xs!11669 IArray!17459) (csize!17685 Int)) (Empty!8727) )
))
(declare-datatypes ((BalanceConc!17182 0))(
  ( (BalanceConc!17183 (c!359904 Conc!8727)) )
))
(declare-datatypes ((tuple2!26570 0))(
  ( (tuple2!26571 (_1!15795 BalanceConc!17182) (_2!15795 BalanceConc!17180)) )
))
(declare-fun lt!842175 () tuple2!26570)

(declare-fun suffix!886 () List!27026)

(declare-datatypes ((tuple2!26572 0))(
  ( (tuple2!26573 (_1!15796 List!27028) (_2!15796 List!27026)) )
))
(declare-fun list!10413 (BalanceConc!17182) List!27028)

(declare-fun list!10414 (BalanceConc!17180) List!27026)

(assert (=> b!2266160 (= res!968872 (= (tuple2!26573 (list!10413 (_1!15795 lt!842175)) (list!10414 (_2!15795 lt!842175))) (tuple2!26573 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27026)

(declare-fun lex!1725 (LexerInterface!3886 List!27027 BalanceConc!17180) tuple2!26570)

(declare-fun seqFromList!2993 (List!27026) BalanceConc!17180)

(assert (=> b!2266160 (= lt!842175 (lex!1725 thiss!16613 rules!1750 (seqFromList!2993 input!1722)))))

(declare-fun b!2266161 () Bool)

(declare-fun matchR!2898 (Regex!6637 List!27026) Bool)

(declare-fun charsOf!2677 (Token!8056) BalanceConc!17180)

(assert (=> b!2266161 (= e!1451277 (not (matchR!2898 (regex!4289 r!2363) (list!10414 (charsOf!2677 (head!4876 tokens!456))))))))

(declare-fun b!2266162 () Bool)

(declare-fun tp!716962 () Bool)

(assert (=> b!2266162 (= e!1451283 (and tp!716962 (inv!36474 (tag!4779 (rule!6605 (h!32335 tokens!456)))) (inv!36477 (transformation!4289 (rule!6605 (h!32335 tokens!456)))) e!1451275))))

(declare-fun b!2266163 () Bool)

(declare-fun e!1451260 () Unit!39884)

(declare-fun Unit!39886 () Unit!39884)

(assert (=> b!2266163 (= e!1451260 Unit!39886)))

(declare-fun lt!842171 () Unit!39884)

(declare-fun lemmaSameIndexThenSameElement!156 (List!27027 Rule!8378 Rule!8378) Unit!39884)

(assert (=> b!2266163 (= lt!842171 (lemmaSameIndexThenSameElement!156 rules!1750 r!2363 otherR!12))))

(assert (=> b!2266163 false))

(assert (=> b!2266164 (= e!1451265 (and tp!716974 tp!716964))))

(assert (=> b!2266165 (= e!1451266 (and tp!716960 tp!716973))))

(declare-fun b!2266166 () Bool)

(declare-fun res!968875 () Bool)

(assert (=> b!2266166 (=> (not res!968875) (not e!1451259))))

(declare-fun otherP!12 () List!27026)

(declare-fun isPrefix!2279 (List!27026 List!27026) Bool)

(assert (=> b!2266166 (= res!968875 (isPrefix!2279 otherP!12 input!1722))))

(declare-fun b!2266167 () Bool)

(declare-fun e!1451262 () Bool)

(assert (=> b!2266167 (= e!1451274 e!1451262)))

(declare-fun res!968869 () Bool)

(assert (=> b!2266167 (=> res!968869 e!1451262)))

(get-info :version)

(assert (=> b!2266167 (= res!968869 ((_ is Nil!26934) tokens!456))))

(declare-fun lt!842170 () Unit!39884)

(assert (=> b!2266167 (= lt!842170 e!1451260)))

(declare-fun c!359901 () Bool)

(assert (=> b!2266167 (= c!359901 (= lt!842177 lt!842172))))

(declare-fun b!2266168 () Bool)

(declare-fun e!1451258 () Bool)

(declare-fun tp!716970 () Bool)

(assert (=> b!2266168 (= e!1451258 (and tp_is_empty!10495 tp!716970))))

(declare-fun b!2266169 () Bool)

(declare-fun e!1451278 () Bool)

(declare-fun tp!716961 () Bool)

(assert (=> b!2266169 (= e!1451278 (and e!1451257 tp!716961))))

(declare-fun e!1451261 () Bool)

(declare-fun b!2266170 () Bool)

(declare-fun tp!716972 () Bool)

(declare-fun inv!36478 (Token!8056) Bool)

(assert (=> b!2266170 (= e!1451261 (and (inv!36478 (h!32335 tokens!456)) e!1451270 tp!716972))))

(declare-fun e!1451264 () Bool)

(assert (=> b!2266171 (= e!1451264 (and tp!716975 tp!716966))))

(declare-fun b!2266172 () Bool)

(assert (=> b!2266172 (= e!1451262 true)))

(declare-fun lt!842180 () Int)

(declare-fun lt!842166 () List!27026)

(declare-fun size!21121 (List!27026) Int)

(assert (=> b!2266172 (= lt!842180 (size!21121 lt!842166))))

(declare-fun lt!842168 () Int)

(assert (=> b!2266172 (= lt!842168 (size!21121 otherP!12))))

(declare-datatypes ((tuple2!26574 0))(
  ( (tuple2!26575 (_1!15797 Token!8056) (_2!15797 List!27026)) )
))
(declare-fun lt!842178 () tuple2!26574)

(declare-fun lt!842169 () List!27026)

(assert (=> b!2266172 (= (_2!15797 lt!842178) lt!842169)))

(declare-fun lt!842174 () Unit!39884)

(declare-fun lemmaSamePrefixThenSameSuffix!1008 (List!27026 List!27026 List!27026 List!27026 List!27026) Unit!39884)

(assert (=> b!2266172 (= lt!842174 (lemmaSamePrefixThenSameSuffix!1008 lt!842166 (_2!15797 lt!842178) lt!842166 lt!842169 input!1722))))

(declare-fun getSuffix!1090 (List!27026 List!27026) List!27026)

(assert (=> b!2266172 (= lt!842169 (getSuffix!1090 input!1722 lt!842166))))

(declare-fun ++!6561 (List!27026 List!27026) List!27026)

(assert (=> b!2266172 (isPrefix!2279 lt!842166 (++!6561 lt!842166 (_2!15797 lt!842178)))))

(declare-fun lt!842179 () Unit!39884)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1504 (List!27026 List!27026) Unit!39884)

(assert (=> b!2266172 (= lt!842179 (lemmaConcatTwoListThenFirstIsPrefix!1504 lt!842166 (_2!15797 lt!842178)))))

(assert (=> b!2266172 (= lt!842166 (list!10414 (charsOf!2677 (h!32335 tokens!456))))))

(declare-datatypes ((Option!5267 0))(
  ( (None!5266) (Some!5266 (v!30306 tuple2!26574)) )
))
(declare-fun get!8127 (Option!5267) tuple2!26574)

(declare-fun maxPrefix!2160 (LexerInterface!3886 List!27027 List!27026) Option!5267)

(assert (=> b!2266172 (= lt!842178 (get!8127 (maxPrefix!2160 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2266173 () Bool)

(declare-fun size!21122 (BalanceConc!17180) Int)

(assert (=> b!2266173 (= e!1451280 (<= (size!21122 (charsOf!2677 (head!4876 tokens!456))) (size!21121 otherP!12)))))

(declare-fun b!2266174 () Bool)

(declare-fun res!968873 () Bool)

(assert (=> b!2266174 (=> (not res!968873) (not e!1451279))))

(declare-fun contains!4647 (List!27027 Rule!8378) Bool)

(assert (=> b!2266174 (= res!968873 (contains!4647 rules!1750 otherR!12))))

(declare-fun res!968867 () Bool)

(assert (=> start!221392 (=> (not res!968867) (not e!1451279))))

(assert (=> start!221392 (= res!968867 ((_ is Lexer!3884) thiss!16613))))

(assert (=> start!221392 e!1451279))

(assert (=> start!221392 true))

(assert (=> start!221392 e!1451258))

(assert (=> start!221392 e!1451269))

(assert (=> start!221392 e!1451263))

(declare-fun e!1451276 () Bool)

(assert (=> start!221392 e!1451276))

(assert (=> start!221392 e!1451278))

(declare-fun e!1451284 () Bool)

(assert (=> start!221392 e!1451284))

(assert (=> start!221392 e!1451261))

(declare-fun tp!716958 () Bool)

(declare-fun b!2266159 () Bool)

(assert (=> b!2266159 (= e!1451284 (and tp!716958 (inv!36474 (tag!4779 r!2363)) (inv!36477 (transformation!4289 r!2363)) e!1451264))))

(declare-fun b!2266175 () Bool)

(declare-fun res!968866 () Bool)

(assert (=> b!2266175 (=> (not res!968866) (not e!1451279))))

(declare-fun isEmpty!15240 (List!27027) Bool)

(assert (=> b!2266175 (= res!968866 (not (isEmpty!15240 rules!1750)))))

(declare-fun b!2266176 () Bool)

(declare-fun res!968870 () Bool)

(assert (=> b!2266176 (=> (not res!968870) (not e!1451279))))

(assert (=> b!2266176 (= res!968870 (contains!4647 rules!1750 r!2363))))

(declare-fun b!2266177 () Bool)

(declare-fun Unit!39887 () Unit!39884)

(assert (=> b!2266177 (= e!1451260 Unit!39887)))

(declare-fun b!2266178 () Bool)

(declare-fun tp!716969 () Bool)

(assert (=> b!2266178 (= e!1451276 (and tp_is_empty!10495 tp!716969))))

(assert (= (and start!221392 res!968867) b!2266175))

(assert (= (and b!2266175 res!968866) b!2266154))

(assert (= (and b!2266154 res!968865) b!2266176))

(assert (= (and b!2266176 res!968870) b!2266174))

(assert (= (and b!2266174 res!968873) b!2266160))

(assert (= (and b!2266160 res!968872) b!2266151))

(assert (= (and b!2266151 (not res!968864)) b!2266173))

(assert (= (and b!2266151 res!968871) b!2266149))

(assert (= (and b!2266149 (not res!968876)) b!2266158))

(assert (= (and b!2266149 res!968878) b!2266166))

(assert (= (and b!2266166 res!968875) b!2266156))

(assert (= (and b!2266156 res!968874) b!2266153))

(assert (= (and b!2266153 res!968868) b!2266161))

(assert (= (and b!2266153 (not res!968879)) b!2266150))

(assert (= (and b!2266150 (not res!968877)) b!2266167))

(assert (= (and b!2266167 c!359901) b!2266163))

(assert (= (and b!2266167 (not c!359901)) b!2266177))

(assert (= (and b!2266167 (not res!968869)) b!2266172))

(assert (= (and start!221392 ((_ is Cons!26932) input!1722)) b!2266168))

(assert (= b!2266148 b!2266165))

(assert (= start!221392 b!2266148))

(assert (= (and start!221392 ((_ is Cons!26932) suffix!886)) b!2266157))

(assert (= (and start!221392 ((_ is Cons!26932) otherP!12)) b!2266178))

(assert (= b!2266152 b!2266164))

(assert (= b!2266169 b!2266152))

(assert (= (and start!221392 ((_ is Cons!26933) rules!1750)) b!2266169))

(assert (= b!2266159 b!2266171))

(assert (= start!221392 b!2266159))

(assert (= b!2266162 b!2266147))

(assert (= b!2266155 b!2266162))

(assert (= b!2266170 b!2266155))

(assert (= (and start!221392 ((_ is Cons!26934) tokens!456)) b!2266170))

(declare-fun m!2695429 () Bool)

(assert (=> b!2266153 m!2695429))

(declare-fun m!2695431 () Bool)

(assert (=> b!2266153 m!2695431))

(declare-fun m!2695433 () Bool)

(assert (=> b!2266154 m!2695433))

(declare-fun m!2695435 () Bool)

(assert (=> b!2266170 m!2695435))

(declare-fun m!2695437 () Bool)

(assert (=> b!2266176 m!2695437))

(declare-fun m!2695439 () Bool)

(assert (=> b!2266160 m!2695439))

(declare-fun m!2695441 () Bool)

(assert (=> b!2266160 m!2695441))

(declare-fun m!2695443 () Bool)

(assert (=> b!2266160 m!2695443))

(assert (=> b!2266160 m!2695443))

(declare-fun m!2695445 () Bool)

(assert (=> b!2266160 m!2695445))

(declare-fun m!2695447 () Bool)

(assert (=> b!2266163 m!2695447))

(declare-fun m!2695449 () Bool)

(assert (=> b!2266174 m!2695449))

(declare-fun m!2695451 () Bool)

(assert (=> b!2266159 m!2695451))

(declare-fun m!2695453 () Bool)

(assert (=> b!2266159 m!2695453))

(declare-fun m!2695455 () Bool)

(assert (=> b!2266152 m!2695455))

(declare-fun m!2695457 () Bool)

(assert (=> b!2266152 m!2695457))

(declare-fun m!2695459 () Bool)

(assert (=> b!2266150 m!2695459))

(declare-fun m!2695461 () Bool)

(assert (=> b!2266150 m!2695461))

(declare-fun m!2695463 () Bool)

(assert (=> b!2266150 m!2695463))

(declare-fun m!2695465 () Bool)

(assert (=> b!2266150 m!2695465))

(declare-fun m!2695467 () Bool)

(assert (=> b!2266175 m!2695467))

(declare-fun m!2695469 () Bool)

(assert (=> b!2266162 m!2695469))

(declare-fun m!2695471 () Bool)

(assert (=> b!2266162 m!2695471))

(declare-fun m!2695473 () Bool)

(assert (=> b!2266172 m!2695473))

(declare-fun m!2695475 () Bool)

(assert (=> b!2266172 m!2695475))

(declare-fun m!2695477 () Bool)

(assert (=> b!2266172 m!2695477))

(declare-fun m!2695479 () Bool)

(assert (=> b!2266172 m!2695479))

(declare-fun m!2695481 () Bool)

(assert (=> b!2266172 m!2695481))

(declare-fun m!2695483 () Bool)

(assert (=> b!2266172 m!2695483))

(assert (=> b!2266172 m!2695481))

(assert (=> b!2266172 m!2695475))

(declare-fun m!2695485 () Bool)

(assert (=> b!2266172 m!2695485))

(declare-fun m!2695487 () Bool)

(assert (=> b!2266172 m!2695487))

(declare-fun m!2695489 () Bool)

(assert (=> b!2266172 m!2695489))

(assert (=> b!2266172 m!2695479))

(declare-fun m!2695491 () Bool)

(assert (=> b!2266172 m!2695491))

(declare-fun m!2695493 () Bool)

(assert (=> b!2266172 m!2695493))

(declare-fun m!2695495 () Bool)

(assert (=> b!2266161 m!2695495))

(assert (=> b!2266161 m!2695495))

(declare-fun m!2695497 () Bool)

(assert (=> b!2266161 m!2695497))

(assert (=> b!2266161 m!2695497))

(declare-fun m!2695499 () Bool)

(assert (=> b!2266161 m!2695499))

(assert (=> b!2266161 m!2695499))

(declare-fun m!2695501 () Bool)

(assert (=> b!2266161 m!2695501))

(declare-fun m!2695503 () Bool)

(assert (=> b!2266166 m!2695503))

(declare-fun m!2695505 () Bool)

(assert (=> b!2266151 m!2695505))

(declare-fun m!2695507 () Bool)

(assert (=> b!2266148 m!2695507))

(declare-fun m!2695509 () Bool)

(assert (=> b!2266148 m!2695509))

(assert (=> b!2266173 m!2695495))

(assert (=> b!2266173 m!2695495))

(assert (=> b!2266173 m!2695497))

(assert (=> b!2266173 m!2695497))

(declare-fun m!2695511 () Bool)

(assert (=> b!2266173 m!2695511))

(assert (=> b!2266173 m!2695493))

(assert (=> b!2266158 m!2695495))

(declare-fun m!2695513 () Bool)

(assert (=> b!2266155 m!2695513))

(check-sat (not b!2266178) (not b_next!67867) (not b!2266151) (not b!2266154) (not b!2266173) b_and!178331 b_and!178329 (not b!2266150) (not b!2266168) (not b!2266174) (not b!2266161) (not b!2266152) (not b_next!67855) (not b!2266166) (not b!2266158) (not b!2266163) (not b!2266170) b_and!178335 (not b_next!67859) (not b!2266175) b_and!178333 b_and!178343 (not b!2266176) (not b!2266157) (not b!2266162) (not b!2266155) tp_is_empty!10495 (not b!2266148) (not b_next!67863) (not b!2266153) b_and!178339 (not b!2266172) (not b_next!67857) b_and!178341 (not b!2266160) (not b!2266159) (not b!2266169) (not b_next!67853) (not b_next!67861) (not b_next!67865) b_and!178337)
(check-sat (not b_next!67855) (not b_next!67867) b_and!178335 b_and!178331 b_and!178329 (not b_next!67859) (not b_next!67863) b_and!178339 b_and!178333 b_and!178343 (not b_next!67857) b_and!178341 (not b_next!67853) (not b_next!67861) (not b_next!67865) b_and!178337)
