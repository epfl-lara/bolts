; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226464 () Bool)

(assert start!226464)

(declare-fun b!2302194 () Bool)

(declare-fun b_free!69501 () Bool)

(declare-fun b_next!70205 () Bool)

(assert (=> b!2302194 (= b_free!69501 (not b_next!70205))))

(declare-fun tp!730366 () Bool)

(declare-fun b_and!183401 () Bool)

(assert (=> b!2302194 (= tp!730366 b_and!183401)))

(declare-fun b_free!69503 () Bool)

(declare-fun b_next!70207 () Bool)

(assert (=> b!2302194 (= b_free!69503 (not b_next!70207))))

(declare-fun tp!730354 () Bool)

(declare-fun b_and!183403 () Bool)

(assert (=> b!2302194 (= tp!730354 b_and!183403)))

(declare-fun b!2302191 () Bool)

(declare-fun b_free!69505 () Bool)

(declare-fun b_next!70209 () Bool)

(assert (=> b!2302191 (= b_free!69505 (not b_next!70209))))

(declare-fun tp!730350 () Bool)

(declare-fun b_and!183405 () Bool)

(assert (=> b!2302191 (= tp!730350 b_and!183405)))

(declare-fun b_free!69507 () Bool)

(declare-fun b_next!70211 () Bool)

(assert (=> b!2302191 (= b_free!69507 (not b_next!70211))))

(declare-fun tp!730357 () Bool)

(declare-fun b_and!183407 () Bool)

(assert (=> b!2302191 (= tp!730357 b_and!183407)))

(declare-fun b!2302172 () Bool)

(declare-fun b_free!69509 () Bool)

(declare-fun b_next!70213 () Bool)

(assert (=> b!2302172 (= b_free!69509 (not b_next!70213))))

(declare-fun tp!730351 () Bool)

(declare-fun b_and!183409 () Bool)

(assert (=> b!2302172 (= tp!730351 b_and!183409)))

(declare-fun b_free!69511 () Bool)

(declare-fun b_next!70215 () Bool)

(assert (=> b!2302172 (= b_free!69511 (not b_next!70215))))

(declare-fun tp!730361 () Bool)

(declare-fun b_and!183411 () Bool)

(assert (=> b!2302172 (= tp!730361 b_and!183411)))

(declare-fun b!2302173 () Bool)

(declare-fun b_free!69513 () Bool)

(declare-fun b_next!70217 () Bool)

(assert (=> b!2302173 (= b_free!69513 (not b_next!70217))))

(declare-fun tp!730353 () Bool)

(declare-fun b_and!183413 () Bool)

(assert (=> b!2302173 (= tp!730353 b_and!183413)))

(declare-fun b_free!69515 () Bool)

(declare-fun b_next!70219 () Bool)

(assert (=> b!2302173 (= b_free!69515 (not b_next!70219))))

(declare-fun tp!730356 () Bool)

(declare-fun b_and!183415 () Bool)

(assert (=> b!2302173 (= tp!730356 b_and!183415)))

(declare-fun b!2302165 () Bool)

(declare-fun e!1475339 () Bool)

(declare-datatypes ((List!27499 0))(
  ( (Nil!27405) (Cons!27405 (h!32806 (_ BitVec 16)) (t!205925 List!27499)) )
))
(declare-datatypes ((TokenValue!4555 0))(
  ( (FloatLiteralValue!9110 (text!32330 List!27499)) (TokenValueExt!4554 (__x!18170 Int)) (Broken!22775 (value!138994 List!27499)) (Object!4648) (End!4555) (Def!4555) (Underscore!4555) (Match!4555) (Else!4555) (Error!4555) (Case!4555) (If!4555) (Extends!4555) (Abstract!4555) (Class!4555) (Val!4555) (DelimiterValue!9110 (del!4615 List!27499)) (KeywordValue!4561 (value!138995 List!27499)) (CommentValue!9110 (value!138996 List!27499)) (WhitespaceValue!9110 (value!138997 List!27499)) (IndentationValue!4555 (value!138998 List!27499)) (String!29878) (Int32!4555) (Broken!22776 (value!138999 List!27499)) (Boolean!4556) (Unit!40309) (OperatorValue!4558 (op!4615 List!27499)) (IdentifierValue!9110 (value!139000 List!27499)) (IdentifierValue!9111 (value!139001 List!27499)) (WhitespaceValue!9111 (value!139002 List!27499)) (True!9110) (False!9110) (Broken!22777 (value!139003 List!27499)) (Broken!22778 (value!139004 List!27499)) (True!9111) (RightBrace!4555) (RightBracket!4555) (Colon!4555) (Null!4555) (Comma!4555) (LeftBracket!4555) (False!9111) (LeftBrace!4555) (ImaginaryLiteralValue!4555 (text!32331 List!27499)) (StringLiteralValue!13665 (value!139005 List!27499)) (EOFValue!4555 (value!139006 List!27499)) (IdentValue!4555 (value!139007 List!27499)) (DelimiterValue!9111 (value!139008 List!27499)) (DedentValue!4555 (value!139009 List!27499)) (NewLineValue!4555 (value!139010 List!27499)) (IntegerValue!13665 (value!139011 (_ BitVec 32)) (text!32332 List!27499)) (IntegerValue!13666 (value!139012 Int) (text!32333 List!27499)) (Times!4555) (Or!4555) (Equal!4555) (Minus!4555) (Broken!22779 (value!139013 List!27499)) (And!4555) (Div!4555) (LessEqual!4555) (Mod!4555) (Concat!11296) (Not!4555) (Plus!4555) (SpaceValue!4555 (value!139014 List!27499)) (IntegerValue!13667 (value!139015 Int) (text!32334 List!27499)) (StringLiteralValue!13666 (text!32335 List!27499)) (FloatLiteralValue!9111 (text!32336 List!27499)) (BytesLiteralValue!4555 (value!139016 List!27499)) (CommentValue!9111 (value!139017 List!27499)) (StringLiteralValue!13667 (value!139018 List!27499)) (ErrorTokenValue!4555 (msg!4616 List!27499)) )
))
(declare-datatypes ((C!13628 0))(
  ( (C!13629 (val!7862 Int)) )
))
(declare-datatypes ((List!27500 0))(
  ( (Nil!27406) (Cons!27406 (h!32807 C!13628) (t!205926 List!27500)) )
))
(declare-datatypes ((IArray!17873 0))(
  ( (IArray!17874 (innerList!8994 List!27500)) )
))
(declare-datatypes ((Conc!8934 0))(
  ( (Node!8934 (left!20767 Conc!8934) (right!21097 Conc!8934) (csize!18098 Int) (cheight!9145 Int)) (Leaf!13116 (xs!11876 IArray!17873) (csize!18099 Int)) (Empty!8934) )
))
(declare-datatypes ((BalanceConc!17596 0))(
  ( (BalanceConc!17597 (c!364982 Conc!8934)) )
))
(declare-datatypes ((Regex!6741 0))(
  ( (ElementMatch!6741 (c!364983 C!13628)) (Concat!11297 (regOne!13994 Regex!6741) (regTwo!13994 Regex!6741)) (EmptyExpr!6741) (Star!6741 (reg!7070 Regex!6741)) (EmptyLang!6741) (Union!6741 (regOne!13995 Regex!6741) (regTwo!13995 Regex!6741)) )
))
(declare-datatypes ((String!29879 0))(
  ( (String!29880 (value!139019 String)) )
))
(declare-datatypes ((TokenValueInjection!8650 0))(
  ( (TokenValueInjection!8651 (toValue!6203 Int) (toChars!6062 Int)) )
))
(declare-datatypes ((Rule!8586 0))(
  ( (Rule!8587 (regex!4393 Regex!6741) (tag!4883 String!29879) (isSeparator!4393 Bool) (transformation!4393 TokenValueInjection!8650)) )
))
(declare-datatypes ((Token!8264 0))(
  ( (Token!8265 (value!139020 TokenValue!4555) (rule!6739 Rule!8586) (size!21614 Int) (originalCharacters!5163 List!27500)) )
))
(declare-datatypes ((List!27501 0))(
  ( (Nil!27407) (Cons!27407 (h!32808 Token!8264) (t!205927 List!27501)) )
))
(declare-fun tokens!456 () List!27501)

(declare-fun r!2363 () Rule!8586)

(declare-fun head!5038 (List!27501) Token!8264)

(assert (=> b!2302165 (= e!1475339 (= (rule!6739 (head!5038 tokens!456)) r!2363))))

(declare-fun tp!730352 () Bool)

(declare-fun e!1475334 () Bool)

(declare-fun e!1475328 () Bool)

(declare-fun b!2302166 () Bool)

(declare-fun inv!37035 (String!29879) Bool)

(declare-fun inv!37038 (TokenValueInjection!8650) Bool)

(assert (=> b!2302166 (= e!1475334 (and tp!730352 (inv!37035 (tag!4883 (rule!6739 (h!32808 tokens!456)))) (inv!37038 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) e!1475328))))

(declare-fun b!2302167 () Bool)

(declare-fun res!984270 () Bool)

(declare-fun e!1475346 () Bool)

(assert (=> b!2302167 (=> (not res!984270) (not e!1475346))))

(assert (=> b!2302167 (= res!984270 e!1475339)))

(declare-fun res!984267 () Bool)

(assert (=> b!2302167 (=> res!984267 e!1475339)))

(declare-fun lt!853884 () Bool)

(assert (=> b!2302167 (= res!984267 lt!853884)))

(declare-fun tp!730360 () Bool)

(declare-fun e!1475327 () Bool)

(declare-fun b!2302168 () Bool)

(declare-fun e!1475335 () Bool)

(declare-fun inv!37039 (Token!8264) Bool)

(assert (=> b!2302168 (= e!1475327 (and (inv!37039 (h!32808 tokens!456)) e!1475335 tp!730360))))

(declare-fun b!2302169 () Bool)

(declare-fun e!1475322 () Bool)

(assert (=> b!2302169 (= e!1475346 (not e!1475322))))

(declare-fun res!984268 () Bool)

(assert (=> b!2302169 (=> res!984268 e!1475322)))

(declare-fun e!1475347 () Bool)

(assert (=> b!2302169 (= res!984268 e!1475347)))

(declare-fun res!984276 () Bool)

(assert (=> b!2302169 (=> (not res!984276) (not e!1475347))))

(assert (=> b!2302169 (= res!984276 (not lt!853884))))

(declare-datatypes ((LexerInterface!3990 0))(
  ( (LexerInterfaceExt!3987 (__x!18171 Int)) (Lexer!3988) )
))
(declare-fun thiss!16613 () LexerInterface!3990)

(declare-fun ruleValid!1483 (LexerInterface!3990 Rule!8586) Bool)

(assert (=> b!2302169 (ruleValid!1483 thiss!16613 r!2363)))

(declare-datatypes ((List!27502 0))(
  ( (Nil!27408) (Cons!27408 (h!32809 Rule!8586) (t!205928 List!27502)) )
))
(declare-fun rules!1750 () List!27502)

(declare-datatypes ((Unit!40310 0))(
  ( (Unit!40311) )
))
(declare-fun lt!853896 () Unit!40310)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!888 (LexerInterface!3990 Rule!8586 List!27502) Unit!40310)

(assert (=> b!2302169 (= lt!853896 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!888 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2302170 () Bool)

(declare-fun tp!730363 () Bool)

(declare-fun inv!21 (TokenValue!4555) Bool)

(assert (=> b!2302170 (= e!1475335 (and (inv!21 (value!139020 (h!32808 tokens!456))) e!1475334 tp!730363))))

(declare-fun b!2302171 () Bool)

(declare-fun res!984260 () Bool)

(assert (=> b!2302171 (=> (not res!984260) (not e!1475346))))

(declare-fun otherP!12 () List!27500)

(declare-fun input!1722 () List!27500)

(declare-fun isPrefix!2383 (List!27500 List!27500) Bool)

(assert (=> b!2302171 (= res!984260 (isPrefix!2383 otherP!12 input!1722))))

(declare-fun e!1475325 () Bool)

(assert (=> b!2302172 (= e!1475325 (and tp!730351 tp!730361))))

(declare-fun e!1475345 () Bool)

(assert (=> b!2302173 (= e!1475345 (and tp!730353 tp!730356))))

(declare-fun b!2302174 () Bool)

(declare-fun e!1475344 () Bool)

(declare-fun size!21615 (BalanceConc!17596) Int)

(declare-fun charsOf!2781 (Token!8264) BalanceConc!17596)

(declare-fun size!21616 (List!27500) Int)

(assert (=> b!2302174 (= e!1475344 (<= (size!21615 (charsOf!2781 (head!5038 tokens!456))) (size!21616 otherP!12)))))

(declare-fun b!2302175 () Bool)

(declare-fun e!1475337 () Bool)

(declare-fun tp_is_empty!10703 () Bool)

(declare-fun tp!730364 () Bool)

(assert (=> b!2302175 (= e!1475337 (and tp_is_empty!10703 tp!730364))))

(declare-fun b!2302176 () Bool)

(declare-fun e!1475332 () Bool)

(declare-fun e!1475340 () Bool)

(declare-fun tp!730365 () Bool)

(assert (=> b!2302176 (= e!1475332 (and e!1475340 tp!730365))))

(declare-fun b!2302177 () Bool)

(declare-fun e!1475320 () Unit!40310)

(declare-fun Unit!40312 () Unit!40310)

(assert (=> b!2302177 (= e!1475320 Unit!40312)))

(declare-fun lt!853894 () Unit!40310)

(declare-fun otherR!12 () Rule!8586)

(declare-fun lemmaSameIndexThenSameElement!186 (List!27502 Rule!8586 Rule!8586) Unit!40310)

(assert (=> b!2302177 (= lt!853894 (lemmaSameIndexThenSameElement!186 rules!1750 r!2363 otherR!12))))

(assert (=> b!2302177 false))

(declare-fun b!2302178 () Bool)

(declare-fun e!1475330 () Bool)

(declare-fun e!1475326 () Bool)

(assert (=> b!2302178 (= e!1475330 e!1475326)))

(declare-fun res!984261 () Bool)

(assert (=> b!2302178 (=> res!984261 e!1475326)))

(declare-fun lt!853885 () List!27500)

(assert (=> b!2302178 (= res!984261 (<= (size!21616 otherP!12) (size!21616 lt!853885)))))

(declare-datatypes ((tuple2!27290 0))(
  ( (tuple2!27291 (_1!16155 Token!8264) (_2!16155 List!27500)) )
))
(declare-fun lt!853888 () tuple2!27290)

(declare-fun lt!853893 () List!27500)

(assert (=> b!2302178 (= (_2!16155 lt!853888) lt!853893)))

(declare-fun lt!853892 () Unit!40310)

(declare-fun lemmaSamePrefixThenSameSuffix!1064 (List!27500 List!27500 List!27500 List!27500 List!27500) Unit!40310)

(assert (=> b!2302178 (= lt!853892 (lemmaSamePrefixThenSameSuffix!1064 lt!853885 (_2!16155 lt!853888) lt!853885 lt!853893 input!1722))))

(declare-fun getSuffix!1162 (List!27500 List!27500) List!27500)

(assert (=> b!2302178 (= lt!853893 (getSuffix!1162 input!1722 lt!853885))))

(declare-fun lt!853886 () List!27500)

(assert (=> b!2302178 (isPrefix!2383 lt!853885 lt!853886)))

(declare-fun ++!6707 (List!27500 List!27500) List!27500)

(assert (=> b!2302178 (= lt!853886 (++!6707 lt!853885 (_2!16155 lt!853888)))))

(declare-fun lt!853890 () Unit!40310)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1576 (List!27500 List!27500) Unit!40310)

(assert (=> b!2302178 (= lt!853890 (lemmaConcatTwoListThenFirstIsPrefix!1576 lt!853885 (_2!16155 lt!853888)))))

(declare-fun list!10792 (BalanceConc!17596) List!27500)

(assert (=> b!2302178 (= lt!853885 (list!10792 (charsOf!2781 (h!32808 tokens!456))))))

(declare-datatypes ((Option!5389 0))(
  ( (None!5388) (Some!5388 (v!30486 tuple2!27290)) )
))
(declare-fun get!8261 (Option!5389) tuple2!27290)

(declare-fun maxPrefix!2246 (LexerInterface!3990 List!27502 List!27500) Option!5389)

(assert (=> b!2302178 (= lt!853888 (get!8261 (maxPrefix!2246 thiss!16613 rules!1750 input!1722)))))

(declare-fun tp!730367 () Bool)

(declare-fun b!2302179 () Bool)

(declare-fun e!1475329 () Bool)

(assert (=> b!2302179 (= e!1475329 (and tp!730367 (inv!37035 (tag!4883 r!2363)) (inv!37038 (transformation!4393 r!2363)) e!1475345))))

(declare-fun b!2302180 () Bool)

(declare-fun res!984265 () Bool)

(assert (=> b!2302180 (=> res!984265 e!1475326)))

(assert (=> b!2302180 (= res!984265 (not (= input!1722 lt!853886)))))

(declare-fun b!2302181 () Bool)

(declare-fun res!984264 () Bool)

(declare-fun e!1475333 () Bool)

(assert (=> b!2302181 (=> (not res!984264) (not e!1475333))))

(declare-fun contains!4779 (List!27502 Rule!8586) Bool)

(assert (=> b!2302181 (= res!984264 (contains!4779 rules!1750 otherR!12))))

(declare-fun b!2302182 () Bool)

(declare-fun e!1475318 () Bool)

(assert (=> b!2302182 (= e!1475333 e!1475318)))

(declare-fun res!984271 () Bool)

(assert (=> b!2302182 (=> (not res!984271) (not e!1475318))))

(declare-datatypes ((IArray!17875 0))(
  ( (IArray!17876 (innerList!8995 List!27501)) )
))
(declare-datatypes ((Conc!8935 0))(
  ( (Node!8935 (left!20768 Conc!8935) (right!21098 Conc!8935) (csize!18100 Int) (cheight!9146 Int)) (Leaf!13117 (xs!11877 IArray!17875) (csize!18101 Int)) (Empty!8935) )
))
(declare-datatypes ((BalanceConc!17598 0))(
  ( (BalanceConc!17599 (c!364984 Conc!8935)) )
))
(declare-datatypes ((tuple2!27292 0))(
  ( (tuple2!27293 (_1!16156 BalanceConc!17598) (_2!16156 BalanceConc!17596)) )
))
(declare-fun lt!853895 () tuple2!27292)

(declare-fun suffix!886 () List!27500)

(declare-datatypes ((tuple2!27294 0))(
  ( (tuple2!27295 (_1!16157 List!27501) (_2!16157 List!27500)) )
))
(declare-fun list!10793 (BalanceConc!17598) List!27501)

(assert (=> b!2302182 (= res!984271 (= (tuple2!27295 (list!10793 (_1!16156 lt!853895)) (list!10792 (_2!16156 lt!853895))) (tuple2!27295 tokens!456 suffix!886)))))

(declare-fun lex!1829 (LexerInterface!3990 List!27502 BalanceConc!17596) tuple2!27292)

(declare-fun seqFromList!3097 (List!27500) BalanceConc!17596)

(assert (=> b!2302182 (= lt!853895 (lex!1829 thiss!16613 rules!1750 (seqFromList!3097 input!1722)))))

(declare-fun b!2302183 () Bool)

(declare-fun res!984277 () Bool)

(assert (=> b!2302183 (=> (not res!984277) (not e!1475333))))

(assert (=> b!2302183 (= res!984277 (contains!4779 rules!1750 r!2363))))

(declare-fun b!2302184 () Bool)

(declare-fun matchR!2998 (Regex!6741 List!27500) Bool)

(assert (=> b!2302184 (= e!1475347 (not (matchR!2998 (regex!4393 r!2363) (list!10792 (charsOf!2781 (head!5038 tokens!456))))))))

(declare-fun b!2302185 () Bool)

(declare-fun Unit!40313 () Unit!40310)

(assert (=> b!2302185 (= e!1475320 Unit!40313)))

(declare-fun b!2302186 () Bool)

(declare-fun e!1475321 () Bool)

(assert (=> b!2302186 (= e!1475321 e!1475330)))

(declare-fun res!984263 () Bool)

(assert (=> b!2302186 (=> res!984263 e!1475330)))

(get-info :version)

(assert (=> b!2302186 (= res!984263 ((_ is Nil!27407) tokens!456))))

(declare-fun lt!853883 () Unit!40310)

(assert (=> b!2302186 (= lt!853883 e!1475320)))

(declare-fun c!364981 () Bool)

(declare-fun lt!853887 () Int)

(declare-fun lt!853891 () Int)

(assert (=> b!2302186 (= c!364981 (= lt!853887 lt!853891))))

(declare-fun b!2302187 () Bool)

(declare-fun res!984272 () Bool)

(assert (=> b!2302187 (=> (not res!984272) (not e!1475346))))

(assert (=> b!2302187 (= res!984272 (not (= r!2363 otherR!12)))))

(declare-fun e!1475331 () Bool)

(declare-fun b!2302188 () Bool)

(declare-fun tp!730359 () Bool)

(assert (=> b!2302188 (= e!1475340 (and tp!730359 (inv!37035 (tag!4883 (h!32809 rules!1750))) (inv!37038 (transformation!4393 (h!32809 rules!1750))) e!1475331))))

(declare-fun b!2302189 () Bool)

(assert (=> b!2302189 (= e!1475322 e!1475321)))

(declare-fun res!984273 () Bool)

(assert (=> b!2302189 (=> res!984273 e!1475321)))

(assert (=> b!2302189 (= res!984273 (> lt!853887 lt!853891))))

(declare-fun getIndex!406 (List!27502 Rule!8586) Int)

(assert (=> b!2302189 (= lt!853891 (getIndex!406 rules!1750 otherR!12))))

(assert (=> b!2302189 (= lt!853887 (getIndex!406 rules!1750 r!2363))))

(assert (=> b!2302189 (ruleValid!1483 thiss!16613 otherR!12)))

(declare-fun lt!853889 () Unit!40310)

(assert (=> b!2302189 (= lt!853889 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!888 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1475338 () Bool)

(declare-fun tp!730358 () Bool)

(declare-fun b!2302190 () Bool)

(assert (=> b!2302190 (= e!1475338 (and tp!730358 (inv!37035 (tag!4883 otherR!12)) (inv!37038 (transformation!4393 otherR!12)) e!1475325))))

(assert (=> b!2302191 (= e!1475331 (and tp!730350 tp!730357))))

(declare-fun b!2302192 () Bool)

(declare-fun e!1475323 () Bool)

(declare-fun tp!730355 () Bool)

(assert (=> b!2302192 (= e!1475323 (and tp_is_empty!10703 tp!730355))))

(declare-fun b!2302193 () Bool)

(declare-fun e!1475343 () Bool)

(declare-fun tp!730362 () Bool)

(assert (=> b!2302193 (= e!1475343 (and tp_is_empty!10703 tp!730362))))

(assert (=> b!2302194 (= e!1475328 (and tp!730366 tp!730354))))

(declare-fun b!2302195 () Bool)

(declare-fun res!984266 () Bool)

(assert (=> b!2302195 (=> (not res!984266) (not e!1475333))))

(declare-fun isEmpty!15650 (List!27502) Bool)

(assert (=> b!2302195 (= res!984266 (not (isEmpty!15650 rules!1750)))))

(declare-fun b!2302196 () Bool)

(assert (=> b!2302196 (= e!1475318 e!1475346)))

(declare-fun res!984275 () Bool)

(assert (=> b!2302196 (=> (not res!984275) (not e!1475346))))

(assert (=> b!2302196 (= res!984275 e!1475344)))

(declare-fun res!984274 () Bool)

(assert (=> b!2302196 (=> res!984274 e!1475344)))

(assert (=> b!2302196 (= res!984274 lt!853884)))

(declare-fun isEmpty!15651 (List!27501) Bool)

(assert (=> b!2302196 (= lt!853884 (isEmpty!15651 tokens!456))))

(declare-fun b!2302197 () Bool)

(declare-fun res!984269 () Bool)

(assert (=> b!2302197 (=> (not res!984269) (not e!1475333))))

(declare-fun rulesInvariant!3492 (LexerInterface!3990 List!27502) Bool)

(assert (=> b!2302197 (= res!984269 (rulesInvariant!3492 thiss!16613 rules!1750))))

(declare-fun res!984262 () Bool)

(assert (=> start!226464 (=> (not res!984262) (not e!1475333))))

(assert (=> start!226464 (= res!984262 ((_ is Lexer!3988) thiss!16613))))

(assert (=> start!226464 e!1475333))

(assert (=> start!226464 true))

(assert (=> start!226464 e!1475337))

(assert (=> start!226464 e!1475338))

(assert (=> start!226464 e!1475323))

(assert (=> start!226464 e!1475343))

(assert (=> start!226464 e!1475332))

(assert (=> start!226464 e!1475329))

(assert (=> start!226464 e!1475327))

(declare-fun b!2302198 () Bool)

(declare-fun isEmpty!15652 (List!27500) Bool)

(assert (=> b!2302198 (= e!1475326 (not (isEmpty!15652 lt!853885)))))

(assert (= (and start!226464 res!984262) b!2302195))

(assert (= (and b!2302195 res!984266) b!2302197))

(assert (= (and b!2302197 res!984269) b!2302183))

(assert (= (and b!2302183 res!984277) b!2302181))

(assert (= (and b!2302181 res!984264) b!2302182))

(assert (= (and b!2302182 res!984271) b!2302196))

(assert (= (and b!2302196 (not res!984274)) b!2302174))

(assert (= (and b!2302196 res!984275) b!2302167))

(assert (= (and b!2302167 (not res!984267)) b!2302165))

(assert (= (and b!2302167 res!984270) b!2302171))

(assert (= (and b!2302171 res!984260) b!2302187))

(assert (= (and b!2302187 res!984272) b!2302169))

(assert (= (and b!2302169 res!984276) b!2302184))

(assert (= (and b!2302169 (not res!984268)) b!2302189))

(assert (= (and b!2302189 (not res!984273)) b!2302186))

(assert (= (and b!2302186 c!364981) b!2302177))

(assert (= (and b!2302186 (not c!364981)) b!2302185))

(assert (= (and b!2302186 (not res!984263)) b!2302178))

(assert (= (and b!2302178 (not res!984261)) b!2302180))

(assert (= (and b!2302180 (not res!984265)) b!2302198))

(assert (= (and start!226464 ((_ is Cons!27406) input!1722)) b!2302175))

(assert (= b!2302190 b!2302172))

(assert (= start!226464 b!2302190))

(assert (= (and start!226464 ((_ is Cons!27406) suffix!886)) b!2302192))

(assert (= (and start!226464 ((_ is Cons!27406) otherP!12)) b!2302193))

(assert (= b!2302188 b!2302191))

(assert (= b!2302176 b!2302188))

(assert (= (and start!226464 ((_ is Cons!27408) rules!1750)) b!2302176))

(assert (= b!2302179 b!2302173))

(assert (= start!226464 b!2302179))

(assert (= b!2302166 b!2302194))

(assert (= b!2302170 b!2302166))

(assert (= b!2302168 b!2302170))

(assert (= (and start!226464 ((_ is Cons!27407) tokens!456)) b!2302168))

(declare-fun m!2729335 () Bool)

(assert (=> b!2302198 m!2729335))

(declare-fun m!2729337 () Bool)

(assert (=> b!2302196 m!2729337))

(declare-fun m!2729339 () Bool)

(assert (=> b!2302177 m!2729339))

(declare-fun m!2729341 () Bool)

(assert (=> b!2302169 m!2729341))

(declare-fun m!2729343 () Bool)

(assert (=> b!2302169 m!2729343))

(declare-fun m!2729345 () Bool)

(assert (=> b!2302188 m!2729345))

(declare-fun m!2729347 () Bool)

(assert (=> b!2302188 m!2729347))

(declare-fun m!2729349 () Bool)

(assert (=> b!2302168 m!2729349))

(declare-fun m!2729351 () Bool)

(assert (=> b!2302182 m!2729351))

(declare-fun m!2729353 () Bool)

(assert (=> b!2302182 m!2729353))

(declare-fun m!2729355 () Bool)

(assert (=> b!2302182 m!2729355))

(assert (=> b!2302182 m!2729355))

(declare-fun m!2729357 () Bool)

(assert (=> b!2302182 m!2729357))

(declare-fun m!2729359 () Bool)

(assert (=> b!2302170 m!2729359))

(declare-fun m!2729361 () Bool)

(assert (=> b!2302184 m!2729361))

(assert (=> b!2302184 m!2729361))

(declare-fun m!2729363 () Bool)

(assert (=> b!2302184 m!2729363))

(assert (=> b!2302184 m!2729363))

(declare-fun m!2729365 () Bool)

(assert (=> b!2302184 m!2729365))

(assert (=> b!2302184 m!2729365))

(declare-fun m!2729367 () Bool)

(assert (=> b!2302184 m!2729367))

(declare-fun m!2729369 () Bool)

(assert (=> b!2302195 m!2729369))

(declare-fun m!2729371 () Bool)

(assert (=> b!2302190 m!2729371))

(declare-fun m!2729373 () Bool)

(assert (=> b!2302190 m!2729373))

(declare-fun m!2729375 () Bool)

(assert (=> b!2302183 m!2729375))

(declare-fun m!2729377 () Bool)

(assert (=> b!2302166 m!2729377))

(declare-fun m!2729379 () Bool)

(assert (=> b!2302166 m!2729379))

(declare-fun m!2729381 () Bool)

(assert (=> b!2302178 m!2729381))

(declare-fun m!2729383 () Bool)

(assert (=> b!2302178 m!2729383))

(declare-fun m!2729385 () Bool)

(assert (=> b!2302178 m!2729385))

(declare-fun m!2729387 () Bool)

(assert (=> b!2302178 m!2729387))

(declare-fun m!2729389 () Bool)

(assert (=> b!2302178 m!2729389))

(declare-fun m!2729391 () Bool)

(assert (=> b!2302178 m!2729391))

(assert (=> b!2302178 m!2729389))

(declare-fun m!2729393 () Bool)

(assert (=> b!2302178 m!2729393))

(declare-fun m!2729395 () Bool)

(assert (=> b!2302178 m!2729395))

(assert (=> b!2302178 m!2729385))

(declare-fun m!2729397 () Bool)

(assert (=> b!2302178 m!2729397))

(declare-fun m!2729399 () Bool)

(assert (=> b!2302178 m!2729399))

(declare-fun m!2729401 () Bool)

(assert (=> b!2302178 m!2729401))

(assert (=> b!2302165 m!2729361))

(declare-fun m!2729403 () Bool)

(assert (=> b!2302197 m!2729403))

(declare-fun m!2729405 () Bool)

(assert (=> b!2302181 m!2729405))

(declare-fun m!2729407 () Bool)

(assert (=> b!2302171 m!2729407))

(declare-fun m!2729409 () Bool)

(assert (=> b!2302179 m!2729409))

(declare-fun m!2729411 () Bool)

(assert (=> b!2302179 m!2729411))

(assert (=> b!2302174 m!2729361))

(assert (=> b!2302174 m!2729361))

(assert (=> b!2302174 m!2729363))

(assert (=> b!2302174 m!2729363))

(declare-fun m!2729413 () Bool)

(assert (=> b!2302174 m!2729413))

(assert (=> b!2302174 m!2729401))

(declare-fun m!2729415 () Bool)

(assert (=> b!2302189 m!2729415))

(declare-fun m!2729417 () Bool)

(assert (=> b!2302189 m!2729417))

(declare-fun m!2729419 () Bool)

(assert (=> b!2302189 m!2729419))

(declare-fun m!2729421 () Bool)

(assert (=> b!2302189 m!2729421))

(check-sat (not b!2302198) (not b!2302196) (not b!2302193) (not b!2302171) (not b!2302176) (not b!2302183) (not b!2302184) (not b!2302195) b_and!183415 (not b!2302170) (not b_next!70215) tp_is_empty!10703 (not b_next!70211) (not b!2302166) b_and!183405 b_and!183403 (not b!2302179) (not b!2302168) (not b!2302197) b_and!183413 (not b!2302190) (not b!2302181) (not b!2302178) (not b!2302174) (not b_next!70209) (not b_next!70205) b_and!183411 (not b_next!70213) b_and!183407 (not b!2302165) (not b_next!70219) (not b!2302175) (not b!2302189) (not b!2302188) (not b!2302182) (not b!2302177) (not b_next!70217) (not b!2302192) (not b_next!70207) b_and!183401 b_and!183409 (not b!2302169))
(check-sat b_and!183403 b_and!183413 (not b_next!70219) (not b_next!70217) b_and!183409 b_and!183415 (not b_next!70215) b_and!183405 (not b_next!70211) (not b_next!70209) (not b_next!70205) b_and!183411 (not b_next!70213) b_and!183407 (not b_next!70207) b_and!183401)
(get-model)

(declare-fun b!2302209 () Bool)

(declare-fun e!1475354 () Bool)

(declare-fun e!1475356 () Bool)

(assert (=> b!2302209 (= e!1475354 e!1475356)))

(declare-fun c!364990 () Bool)

(assert (=> b!2302209 (= c!364990 ((_ is IntegerValue!13666) (value!139020 (h!32808 tokens!456))))))

(declare-fun b!2302210 () Bool)

(declare-fun inv!16 (TokenValue!4555) Bool)

(assert (=> b!2302210 (= e!1475354 (inv!16 (value!139020 (h!32808 tokens!456))))))

(declare-fun d!680974 () Bool)

(declare-fun c!364989 () Bool)

(assert (=> d!680974 (= c!364989 ((_ is IntegerValue!13665) (value!139020 (h!32808 tokens!456))))))

(assert (=> d!680974 (= (inv!21 (value!139020 (h!32808 tokens!456))) e!1475354)))

(declare-fun b!2302211 () Bool)

(declare-fun e!1475355 () Bool)

(declare-fun inv!15 (TokenValue!4555) Bool)

(assert (=> b!2302211 (= e!1475355 (inv!15 (value!139020 (h!32808 tokens!456))))))

(declare-fun b!2302212 () Bool)

(declare-fun res!984293 () Bool)

(assert (=> b!2302212 (=> res!984293 e!1475355)))

(assert (=> b!2302212 (= res!984293 (not ((_ is IntegerValue!13667) (value!139020 (h!32808 tokens!456)))))))

(assert (=> b!2302212 (= e!1475356 e!1475355)))

(declare-fun b!2302213 () Bool)

(declare-fun inv!17 (TokenValue!4555) Bool)

(assert (=> b!2302213 (= e!1475356 (inv!17 (value!139020 (h!32808 tokens!456))))))

(assert (= (and d!680974 c!364989) b!2302210))

(assert (= (and d!680974 (not c!364989)) b!2302209))

(assert (= (and b!2302209 c!364990) b!2302213))

(assert (= (and b!2302209 (not c!364990)) b!2302212))

(assert (= (and b!2302212 (not res!984293)) b!2302211))

(declare-fun m!2729423 () Bool)

(assert (=> b!2302210 m!2729423))

(declare-fun m!2729425 () Bool)

(assert (=> b!2302211 m!2729425))

(declare-fun m!2729427 () Bool)

(assert (=> b!2302213 m!2729427))

(assert (=> b!2302170 d!680974))

(declare-fun d!680976 () Bool)

(declare-fun lt!853899 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3693 (List!27502) (InoxSet Rule!8586))

(assert (=> d!680976 (= lt!853899 (select (content!3693 rules!1750) otherR!12))))

(declare-fun e!1475361 () Bool)

(assert (=> d!680976 (= lt!853899 e!1475361)))

(declare-fun res!984299 () Bool)

(assert (=> d!680976 (=> (not res!984299) (not e!1475361))))

(assert (=> d!680976 (= res!984299 ((_ is Cons!27408) rules!1750))))

(assert (=> d!680976 (= (contains!4779 rules!1750 otherR!12) lt!853899)))

(declare-fun b!2302218 () Bool)

(declare-fun e!1475362 () Bool)

(assert (=> b!2302218 (= e!1475361 e!1475362)))

(declare-fun res!984298 () Bool)

(assert (=> b!2302218 (=> res!984298 e!1475362)))

(assert (=> b!2302218 (= res!984298 (= (h!32809 rules!1750) otherR!12))))

(declare-fun b!2302219 () Bool)

(assert (=> b!2302219 (= e!1475362 (contains!4779 (t!205928 rules!1750) otherR!12))))

(assert (= (and d!680976 res!984299) b!2302218))

(assert (= (and b!2302218 (not res!984298)) b!2302219))

(declare-fun m!2729429 () Bool)

(assert (=> d!680976 m!2729429))

(declare-fun m!2729431 () Bool)

(assert (=> d!680976 m!2729431))

(declare-fun m!2729433 () Bool)

(assert (=> b!2302219 m!2729433))

(assert (=> b!2302181 d!680976))

(declare-fun d!680984 () Bool)

(assert (=> d!680984 (= (inv!37035 (tag!4883 otherR!12)) (= (mod (str.len (value!139019 (tag!4883 otherR!12))) 2) 0))))

(assert (=> b!2302190 d!680984))

(declare-fun d!680986 () Bool)

(declare-fun res!984305 () Bool)

(declare-fun e!1475368 () Bool)

(assert (=> d!680986 (=> (not res!984305) (not e!1475368))))

(declare-fun semiInverseModEq!1786 (Int Int) Bool)

(assert (=> d!680986 (= res!984305 (semiInverseModEq!1786 (toChars!6062 (transformation!4393 otherR!12)) (toValue!6203 (transformation!4393 otherR!12))))))

(assert (=> d!680986 (= (inv!37038 (transformation!4393 otherR!12)) e!1475368)))

(declare-fun b!2302225 () Bool)

(declare-fun equivClasses!1705 (Int Int) Bool)

(assert (=> b!2302225 (= e!1475368 (equivClasses!1705 (toChars!6062 (transformation!4393 otherR!12)) (toValue!6203 (transformation!4393 otherR!12))))))

(assert (= (and d!680986 res!984305) b!2302225))

(declare-fun m!2729443 () Bool)

(assert (=> d!680986 m!2729443))

(declare-fun m!2729445 () Bool)

(assert (=> b!2302225 m!2729445))

(assert (=> b!2302190 d!680986))

(declare-fun d!680996 () Bool)

(declare-fun res!984310 () Bool)

(declare-fun e!1475371 () Bool)

(assert (=> d!680996 (=> (not res!984310) (not e!1475371))))

(declare-fun validRegex!2546 (Regex!6741) Bool)

(assert (=> d!680996 (= res!984310 (validRegex!2546 (regex!4393 r!2363)))))

(assert (=> d!680996 (= (ruleValid!1483 thiss!16613 r!2363) e!1475371)))

(declare-fun b!2302230 () Bool)

(declare-fun res!984311 () Bool)

(assert (=> b!2302230 (=> (not res!984311) (not e!1475371))))

(declare-fun nullable!1884 (Regex!6741) Bool)

(assert (=> b!2302230 (= res!984311 (not (nullable!1884 (regex!4393 r!2363))))))

(declare-fun b!2302231 () Bool)

(assert (=> b!2302231 (= e!1475371 (not (= (tag!4883 r!2363) (String!29880 ""))))))

(assert (= (and d!680996 res!984310) b!2302230))

(assert (= (and b!2302230 res!984311) b!2302231))

(declare-fun m!2729447 () Bool)

(assert (=> d!680996 m!2729447))

(declare-fun m!2729449 () Bool)

(assert (=> b!2302230 m!2729449))

(assert (=> b!2302169 d!680996))

(declare-fun d!680998 () Bool)

(assert (=> d!680998 (ruleValid!1483 thiss!16613 r!2363)))

(declare-fun lt!853902 () Unit!40310)

(declare-fun choose!13443 (LexerInterface!3990 Rule!8586 List!27502) Unit!40310)

(assert (=> d!680998 (= lt!853902 (choose!13443 thiss!16613 r!2363 rules!1750))))

(assert (=> d!680998 (contains!4779 rules!1750 r!2363)))

(assert (=> d!680998 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!888 thiss!16613 r!2363 rules!1750) lt!853902)))

(declare-fun bs!457734 () Bool)

(assert (= bs!457734 d!680998))

(assert (=> bs!457734 m!2729341))

(declare-fun m!2729451 () Bool)

(assert (=> bs!457734 m!2729451))

(assert (=> bs!457734 m!2729375))

(assert (=> b!2302169 d!680998))

(declare-fun d!681000 () Bool)

(declare-fun res!984316 () Bool)

(declare-fun e!1475374 () Bool)

(assert (=> d!681000 (=> (not res!984316) (not e!1475374))))

(assert (=> d!681000 (= res!984316 (not (isEmpty!15652 (originalCharacters!5163 (h!32808 tokens!456)))))))

(assert (=> d!681000 (= (inv!37039 (h!32808 tokens!456)) e!1475374)))

(declare-fun b!2302236 () Bool)

(declare-fun res!984317 () Bool)

(assert (=> b!2302236 (=> (not res!984317) (not e!1475374))))

(declare-fun dynLambda!11913 (Int TokenValue!4555) BalanceConc!17596)

(assert (=> b!2302236 (= res!984317 (= (originalCharacters!5163 (h!32808 tokens!456)) (list!10792 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (value!139020 (h!32808 tokens!456))))))))

(declare-fun b!2302237 () Bool)

(assert (=> b!2302237 (= e!1475374 (= (size!21614 (h!32808 tokens!456)) (size!21616 (originalCharacters!5163 (h!32808 tokens!456)))))))

(assert (= (and d!681000 res!984316) b!2302236))

(assert (= (and b!2302236 res!984317) b!2302237))

(declare-fun b_lambda!73313 () Bool)

(assert (=> (not b_lambda!73313) (not b!2302236)))

(declare-fun t!205930 () Bool)

(declare-fun tb!137647 () Bool)

(assert (=> (and b!2302194 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205930) tb!137647))

(declare-fun b!2302242 () Bool)

(declare-fun e!1475377 () Bool)

(declare-fun tp!730370 () Bool)

(declare-fun inv!37042 (Conc!8934) Bool)

(assert (=> b!2302242 (= e!1475377 (and (inv!37042 (c!364982 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (value!139020 (h!32808 tokens!456))))) tp!730370))))

(declare-fun result!167802 () Bool)

(declare-fun inv!37043 (BalanceConc!17596) Bool)

(assert (=> tb!137647 (= result!167802 (and (inv!37043 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (value!139020 (h!32808 tokens!456)))) e!1475377))))

(assert (= tb!137647 b!2302242))

(declare-fun m!2729453 () Bool)

(assert (=> b!2302242 m!2729453))

(declare-fun m!2729455 () Bool)

(assert (=> tb!137647 m!2729455))

(assert (=> b!2302236 t!205930))

(declare-fun b_and!183417 () Bool)

(assert (= b_and!183403 (and (=> t!205930 result!167802) b_and!183417)))

(declare-fun tb!137649 () Bool)

(declare-fun t!205932 () Bool)

(assert (=> (and b!2302191 (= (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205932) tb!137649))

(declare-fun result!167806 () Bool)

(assert (= result!167806 result!167802))

(assert (=> b!2302236 t!205932))

(declare-fun b_and!183419 () Bool)

(assert (= b_and!183407 (and (=> t!205932 result!167806) b_and!183419)))

(declare-fun t!205934 () Bool)

(declare-fun tb!137651 () Bool)

(assert (=> (and b!2302172 (= (toChars!6062 (transformation!4393 otherR!12)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205934) tb!137651))

(declare-fun result!167808 () Bool)

(assert (= result!167808 result!167802))

(assert (=> b!2302236 t!205934))

(declare-fun b_and!183421 () Bool)

(assert (= b_and!183411 (and (=> t!205934 result!167808) b_and!183421)))

(declare-fun tb!137653 () Bool)

(declare-fun t!205936 () Bool)

(assert (=> (and b!2302173 (= (toChars!6062 (transformation!4393 r!2363)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205936) tb!137653))

(declare-fun result!167810 () Bool)

(assert (= result!167810 result!167802))

(assert (=> b!2302236 t!205936))

(declare-fun b_and!183423 () Bool)

(assert (= b_and!183415 (and (=> t!205936 result!167810) b_and!183423)))

(declare-fun m!2729457 () Bool)

(assert (=> d!681000 m!2729457))

(declare-fun m!2729459 () Bool)

(assert (=> b!2302236 m!2729459))

(assert (=> b!2302236 m!2729459))

(declare-fun m!2729461 () Bool)

(assert (=> b!2302236 m!2729461))

(declare-fun m!2729463 () Bool)

(assert (=> b!2302237 m!2729463))

(assert (=> b!2302168 d!681000))

(declare-fun d!681002 () Bool)

(assert (=> d!681002 (= (inv!37035 (tag!4883 r!2363)) (= (mod (str.len (value!139019 (tag!4883 r!2363))) 2) 0))))

(assert (=> b!2302179 d!681002))

(declare-fun d!681004 () Bool)

(declare-fun res!984318 () Bool)

(declare-fun e!1475378 () Bool)

(assert (=> d!681004 (=> (not res!984318) (not e!1475378))))

(assert (=> d!681004 (= res!984318 (semiInverseModEq!1786 (toChars!6062 (transformation!4393 r!2363)) (toValue!6203 (transformation!4393 r!2363))))))

(assert (=> d!681004 (= (inv!37038 (transformation!4393 r!2363)) e!1475378)))

(declare-fun b!2302243 () Bool)

(assert (=> b!2302243 (= e!1475378 (equivClasses!1705 (toChars!6062 (transformation!4393 r!2363)) (toValue!6203 (transformation!4393 r!2363))))))

(assert (= (and d!681004 res!984318) b!2302243))

(declare-fun m!2729465 () Bool)

(assert (=> d!681004 m!2729465))

(declare-fun m!2729467 () Bool)

(assert (=> b!2302243 m!2729467))

(assert (=> b!2302179 d!681004))

(declare-fun b!2302252 () Bool)

(declare-fun e!1475386 () Bool)

(declare-fun e!1475387 () Bool)

(assert (=> b!2302252 (= e!1475386 e!1475387)))

(declare-fun res!984330 () Bool)

(assert (=> b!2302252 (=> (not res!984330) (not e!1475387))))

(assert (=> b!2302252 (= res!984330 (not ((_ is Nil!27406) lt!853886)))))

(declare-fun d!681006 () Bool)

(declare-fun e!1475385 () Bool)

(assert (=> d!681006 e!1475385))

(declare-fun res!984329 () Bool)

(assert (=> d!681006 (=> res!984329 e!1475385)))

(declare-fun lt!853905 () Bool)

(assert (=> d!681006 (= res!984329 (not lt!853905))))

(assert (=> d!681006 (= lt!853905 e!1475386)))

(declare-fun res!984328 () Bool)

(assert (=> d!681006 (=> res!984328 e!1475386)))

(assert (=> d!681006 (= res!984328 ((_ is Nil!27406) lt!853885))))

(assert (=> d!681006 (= (isPrefix!2383 lt!853885 lt!853886) lt!853905)))

(declare-fun b!2302253 () Bool)

(declare-fun res!984327 () Bool)

(assert (=> b!2302253 (=> (not res!984327) (not e!1475387))))

(declare-fun head!5040 (List!27500) C!13628)

(assert (=> b!2302253 (= res!984327 (= (head!5040 lt!853885) (head!5040 lt!853886)))))

(declare-fun b!2302254 () Bool)

(declare-fun tail!3327 (List!27500) List!27500)

(assert (=> b!2302254 (= e!1475387 (isPrefix!2383 (tail!3327 lt!853885) (tail!3327 lt!853886)))))

(declare-fun b!2302255 () Bool)

(assert (=> b!2302255 (= e!1475385 (>= (size!21616 lt!853886) (size!21616 lt!853885)))))

(assert (= (and d!681006 (not res!984328)) b!2302252))

(assert (= (and b!2302252 res!984330) b!2302253))

(assert (= (and b!2302253 res!984327) b!2302254))

(assert (= (and d!681006 (not res!984329)) b!2302255))

(declare-fun m!2729469 () Bool)

(assert (=> b!2302253 m!2729469))

(declare-fun m!2729471 () Bool)

(assert (=> b!2302253 m!2729471))

(declare-fun m!2729473 () Bool)

(assert (=> b!2302254 m!2729473))

(declare-fun m!2729475 () Bool)

(assert (=> b!2302254 m!2729475))

(assert (=> b!2302254 m!2729473))

(assert (=> b!2302254 m!2729475))

(declare-fun m!2729477 () Bool)

(assert (=> b!2302254 m!2729477))

(declare-fun m!2729479 () Bool)

(assert (=> b!2302255 m!2729479))

(assert (=> b!2302255 m!2729381))

(assert (=> b!2302178 d!681006))

(declare-fun d!681008 () Bool)

(assert (=> d!681008 (isPrefix!2383 lt!853885 (++!6707 lt!853885 (_2!16155 lt!853888)))))

(declare-fun lt!853908 () Unit!40310)

(declare-fun choose!13445 (List!27500 List!27500) Unit!40310)

(assert (=> d!681008 (= lt!853908 (choose!13445 lt!853885 (_2!16155 lt!853888)))))

(assert (=> d!681008 (= (lemmaConcatTwoListThenFirstIsPrefix!1576 lt!853885 (_2!16155 lt!853888)) lt!853908)))

(declare-fun bs!457735 () Bool)

(assert (= bs!457735 d!681008))

(assert (=> bs!457735 m!2729395))

(assert (=> bs!457735 m!2729395))

(declare-fun m!2729481 () Bool)

(assert (=> bs!457735 m!2729481))

(declare-fun m!2729483 () Bool)

(assert (=> bs!457735 m!2729483))

(assert (=> b!2302178 d!681008))

(declare-fun d!681010 () Bool)

(assert (=> d!681010 (= (_2!16155 lt!853888) lt!853893)))

(declare-fun lt!853911 () Unit!40310)

(declare-fun choose!13446 (List!27500 List!27500 List!27500 List!27500 List!27500) Unit!40310)

(assert (=> d!681010 (= lt!853911 (choose!13446 lt!853885 (_2!16155 lt!853888) lt!853885 lt!853893 input!1722))))

(assert (=> d!681010 (isPrefix!2383 lt!853885 input!1722)))

(assert (=> d!681010 (= (lemmaSamePrefixThenSameSuffix!1064 lt!853885 (_2!16155 lt!853888) lt!853885 lt!853893 input!1722) lt!853911)))

(declare-fun bs!457736 () Bool)

(assert (= bs!457736 d!681010))

(declare-fun m!2729485 () Bool)

(assert (=> bs!457736 m!2729485))

(declare-fun m!2729487 () Bool)

(assert (=> bs!457736 m!2729487))

(assert (=> b!2302178 d!681010))

(declare-fun d!681012 () Bool)

(declare-fun lt!853914 () Int)

(assert (=> d!681012 (>= lt!853914 0)))

(declare-fun e!1475390 () Int)

(assert (=> d!681012 (= lt!853914 e!1475390)))

(declare-fun c!364993 () Bool)

(assert (=> d!681012 (= c!364993 ((_ is Nil!27406) otherP!12))))

(assert (=> d!681012 (= (size!21616 otherP!12) lt!853914)))

(declare-fun b!2302260 () Bool)

(assert (=> b!2302260 (= e!1475390 0)))

(declare-fun b!2302261 () Bool)

(assert (=> b!2302261 (= e!1475390 (+ 1 (size!21616 (t!205926 otherP!12))))))

(assert (= (and d!681012 c!364993) b!2302260))

(assert (= (and d!681012 (not c!364993)) b!2302261))

(declare-fun m!2729489 () Bool)

(assert (=> b!2302261 m!2729489))

(assert (=> b!2302178 d!681012))

(declare-fun b!2302271 () Bool)

(declare-fun e!1475396 () List!27500)

(assert (=> b!2302271 (= e!1475396 (Cons!27406 (h!32807 lt!853885) (++!6707 (t!205926 lt!853885) (_2!16155 lt!853888))))))

(declare-fun lt!853917 () List!27500)

(declare-fun b!2302273 () Bool)

(declare-fun e!1475395 () Bool)

(assert (=> b!2302273 (= e!1475395 (or (not (= (_2!16155 lt!853888) Nil!27406)) (= lt!853917 lt!853885)))))

(declare-fun b!2302272 () Bool)

(declare-fun res!984335 () Bool)

(assert (=> b!2302272 (=> (not res!984335) (not e!1475395))))

(assert (=> b!2302272 (= res!984335 (= (size!21616 lt!853917) (+ (size!21616 lt!853885) (size!21616 (_2!16155 lt!853888)))))))

(declare-fun d!681014 () Bool)

(assert (=> d!681014 e!1475395))

(declare-fun res!984336 () Bool)

(assert (=> d!681014 (=> (not res!984336) (not e!1475395))))

(declare-fun content!3695 (List!27500) (InoxSet C!13628))

(assert (=> d!681014 (= res!984336 (= (content!3695 lt!853917) ((_ map or) (content!3695 lt!853885) (content!3695 (_2!16155 lt!853888)))))))

(assert (=> d!681014 (= lt!853917 e!1475396)))

(declare-fun c!364996 () Bool)

(assert (=> d!681014 (= c!364996 ((_ is Nil!27406) lt!853885))))

(assert (=> d!681014 (= (++!6707 lt!853885 (_2!16155 lt!853888)) lt!853917)))

(declare-fun b!2302270 () Bool)

(assert (=> b!2302270 (= e!1475396 (_2!16155 lt!853888))))

(assert (= (and d!681014 c!364996) b!2302270))

(assert (= (and d!681014 (not c!364996)) b!2302271))

(assert (= (and d!681014 res!984336) b!2302272))

(assert (= (and b!2302272 res!984335) b!2302273))

(declare-fun m!2729491 () Bool)

(assert (=> b!2302271 m!2729491))

(declare-fun m!2729493 () Bool)

(assert (=> b!2302272 m!2729493))

(assert (=> b!2302272 m!2729381))

(declare-fun m!2729495 () Bool)

(assert (=> b!2302272 m!2729495))

(declare-fun m!2729497 () Bool)

(assert (=> d!681014 m!2729497))

(declare-fun m!2729499 () Bool)

(assert (=> d!681014 m!2729499))

(declare-fun m!2729501 () Bool)

(assert (=> d!681014 m!2729501))

(assert (=> b!2302178 d!681014))

(declare-fun d!681016 () Bool)

(declare-fun lt!853920 () BalanceConc!17596)

(assert (=> d!681016 (= (list!10792 lt!853920) (originalCharacters!5163 (h!32808 tokens!456)))))

(assert (=> d!681016 (= lt!853920 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (value!139020 (h!32808 tokens!456))))))

(assert (=> d!681016 (= (charsOf!2781 (h!32808 tokens!456)) lt!853920)))

(declare-fun b_lambda!73315 () Bool)

(assert (=> (not b_lambda!73315) (not d!681016)))

(assert (=> d!681016 t!205930))

(declare-fun b_and!183425 () Bool)

(assert (= b_and!183417 (and (=> t!205930 result!167802) b_and!183425)))

(assert (=> d!681016 t!205932))

(declare-fun b_and!183427 () Bool)

(assert (= b_and!183419 (and (=> t!205932 result!167806) b_and!183427)))

(assert (=> d!681016 t!205934))

(declare-fun b_and!183429 () Bool)

(assert (= b_and!183421 (and (=> t!205934 result!167808) b_and!183429)))

(assert (=> d!681016 t!205936))

(declare-fun b_and!183431 () Bool)

(assert (= b_and!183423 (and (=> t!205936 result!167810) b_and!183431)))

(declare-fun m!2729503 () Bool)

(assert (=> d!681016 m!2729503))

(assert (=> d!681016 m!2729459))

(assert (=> b!2302178 d!681016))

(declare-fun d!681018 () Bool)

(declare-fun lt!853921 () Int)

(assert (=> d!681018 (>= lt!853921 0)))

(declare-fun e!1475397 () Int)

(assert (=> d!681018 (= lt!853921 e!1475397)))

(declare-fun c!364997 () Bool)

(assert (=> d!681018 (= c!364997 ((_ is Nil!27406) lt!853885))))

(assert (=> d!681018 (= (size!21616 lt!853885) lt!853921)))

(declare-fun b!2302274 () Bool)

(assert (=> b!2302274 (= e!1475397 0)))

(declare-fun b!2302275 () Bool)

(assert (=> b!2302275 (= e!1475397 (+ 1 (size!21616 (t!205926 lt!853885))))))

(assert (= (and d!681018 c!364997) b!2302274))

(assert (= (and d!681018 (not c!364997)) b!2302275))

(declare-fun m!2729505 () Bool)

(assert (=> b!2302275 m!2729505))

(assert (=> b!2302178 d!681018))

(declare-fun d!681020 () Bool)

(assert (=> d!681020 (= (get!8261 (maxPrefix!2246 thiss!16613 rules!1750 input!1722)) (v!30486 (maxPrefix!2246 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2302178 d!681020))

(declare-fun b!2302367 () Bool)

(declare-fun res!984388 () Bool)

(declare-fun e!1475449 () Bool)

(assert (=> b!2302367 (=> (not res!984388) (not e!1475449))))

(declare-fun lt!853971 () Option!5389)

(assert (=> b!2302367 (= res!984388 (matchR!2998 (regex!4393 (rule!6739 (_1!16155 (get!8261 lt!853971)))) (list!10792 (charsOf!2781 (_1!16155 (get!8261 lt!853971))))))))

(declare-fun b!2302368 () Bool)

(declare-fun e!1475446 () Option!5389)

(declare-fun call!137067 () Option!5389)

(assert (=> b!2302368 (= e!1475446 call!137067)))

(declare-fun b!2302369 () Bool)

(declare-fun res!984395 () Bool)

(assert (=> b!2302369 (=> (not res!984395) (not e!1475449))))

(declare-fun apply!6655 (TokenValueInjection!8650 BalanceConc!17596) TokenValue!4555)

(assert (=> b!2302369 (= res!984395 (= (value!139020 (_1!16155 (get!8261 lt!853971))) (apply!6655 (transformation!4393 (rule!6739 (_1!16155 (get!8261 lt!853971)))) (seqFromList!3097 (originalCharacters!5163 (_1!16155 (get!8261 lt!853971)))))))))

(declare-fun d!681022 () Bool)

(declare-fun e!1475450 () Bool)

(assert (=> d!681022 e!1475450))

(declare-fun res!984389 () Bool)

(assert (=> d!681022 (=> res!984389 e!1475450)))

(declare-fun isEmpty!15655 (Option!5389) Bool)

(assert (=> d!681022 (= res!984389 (isEmpty!15655 lt!853971))))

(assert (=> d!681022 (= lt!853971 e!1475446)))

(declare-fun c!365015 () Bool)

(assert (=> d!681022 (= c!365015 (and ((_ is Cons!27408) rules!1750) ((_ is Nil!27408) (t!205928 rules!1750))))))

(declare-fun lt!853974 () Unit!40310)

(declare-fun lt!853970 () Unit!40310)

(assert (=> d!681022 (= lt!853974 lt!853970)))

(assert (=> d!681022 (isPrefix!2383 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1513 (List!27500 List!27500) Unit!40310)

(assert (=> d!681022 (= lt!853970 (lemmaIsPrefixRefl!1513 input!1722 input!1722))))

(declare-fun rulesValidInductive!1555 (LexerInterface!3990 List!27502) Bool)

(assert (=> d!681022 (rulesValidInductive!1555 thiss!16613 rules!1750)))

(assert (=> d!681022 (= (maxPrefix!2246 thiss!16613 rules!1750 input!1722) lt!853971)))

(declare-fun b!2302370 () Bool)

(declare-fun res!984393 () Bool)

(assert (=> b!2302370 (=> (not res!984393) (not e!1475449))))

(assert (=> b!2302370 (= res!984393 (< (size!21616 (_2!16155 (get!8261 lt!853971))) (size!21616 input!1722)))))

(declare-fun b!2302371 () Bool)

(declare-fun res!984394 () Bool)

(assert (=> b!2302371 (=> (not res!984394) (not e!1475449))))

(assert (=> b!2302371 (= res!984394 (= (++!6707 (list!10792 (charsOf!2781 (_1!16155 (get!8261 lt!853971)))) (_2!16155 (get!8261 lt!853971))) input!1722))))

(declare-fun b!2302372 () Bool)

(declare-fun res!984392 () Bool)

(assert (=> b!2302372 (=> (not res!984392) (not e!1475449))))

(assert (=> b!2302372 (= res!984392 (= (list!10792 (charsOf!2781 (_1!16155 (get!8261 lt!853971)))) (originalCharacters!5163 (_1!16155 (get!8261 lt!853971)))))))

(declare-fun bm!137062 () Bool)

(declare-fun maxPrefixOneRule!1416 (LexerInterface!3990 Rule!8586 List!27500) Option!5389)

(assert (=> bm!137062 (= call!137067 (maxPrefixOneRule!1416 thiss!16613 (h!32809 rules!1750) input!1722))))

(declare-fun b!2302373 () Bool)

(assert (=> b!2302373 (= e!1475449 (contains!4779 rules!1750 (rule!6739 (_1!16155 (get!8261 lt!853971)))))))

(declare-fun b!2302374 () Bool)

(assert (=> b!2302374 (= e!1475450 e!1475449)))

(declare-fun res!984387 () Bool)

(assert (=> b!2302374 (=> (not res!984387) (not e!1475449))))

(declare-fun isDefined!4246 (Option!5389) Bool)

(assert (=> b!2302374 (= res!984387 (isDefined!4246 lt!853971))))

(declare-fun b!2302375 () Bool)

(declare-fun lt!853973 () Option!5389)

(declare-fun lt!853972 () Option!5389)

(assert (=> b!2302375 (= e!1475446 (ite (and ((_ is None!5388) lt!853973) ((_ is None!5388) lt!853972)) None!5388 (ite ((_ is None!5388) lt!853972) lt!853973 (ite ((_ is None!5388) lt!853973) lt!853972 (ite (>= (size!21614 (_1!16155 (v!30486 lt!853973))) (size!21614 (_1!16155 (v!30486 lt!853972)))) lt!853973 lt!853972)))))))

(assert (=> b!2302375 (= lt!853973 call!137067)))

(assert (=> b!2302375 (= lt!853972 (maxPrefix!2246 thiss!16613 (t!205928 rules!1750) input!1722))))

(assert (= (and d!681022 c!365015) b!2302368))

(assert (= (and d!681022 (not c!365015)) b!2302375))

(assert (= (or b!2302368 b!2302375) bm!137062))

(assert (= (and d!681022 (not res!984389)) b!2302374))

(assert (= (and b!2302374 res!984387) b!2302372))

(assert (= (and b!2302372 res!984392) b!2302370))

(assert (= (and b!2302370 res!984393) b!2302371))

(assert (= (and b!2302371 res!984394) b!2302369))

(assert (= (and b!2302369 res!984395) b!2302367))

(assert (= (and b!2302367 res!984388) b!2302373))

(declare-fun m!2729591 () Bool)

(assert (=> b!2302367 m!2729591))

(declare-fun m!2729593 () Bool)

(assert (=> b!2302367 m!2729593))

(assert (=> b!2302367 m!2729593))

(declare-fun m!2729595 () Bool)

(assert (=> b!2302367 m!2729595))

(assert (=> b!2302367 m!2729595))

(declare-fun m!2729597 () Bool)

(assert (=> b!2302367 m!2729597))

(assert (=> b!2302373 m!2729591))

(declare-fun m!2729599 () Bool)

(assert (=> b!2302373 m!2729599))

(assert (=> b!2302369 m!2729591))

(declare-fun m!2729601 () Bool)

(assert (=> b!2302369 m!2729601))

(assert (=> b!2302369 m!2729601))

(declare-fun m!2729603 () Bool)

(assert (=> b!2302369 m!2729603))

(assert (=> b!2302370 m!2729591))

(declare-fun m!2729605 () Bool)

(assert (=> b!2302370 m!2729605))

(declare-fun m!2729607 () Bool)

(assert (=> b!2302370 m!2729607))

(assert (=> b!2302372 m!2729591))

(assert (=> b!2302372 m!2729593))

(assert (=> b!2302372 m!2729593))

(assert (=> b!2302372 m!2729595))

(assert (=> b!2302371 m!2729591))

(assert (=> b!2302371 m!2729593))

(assert (=> b!2302371 m!2729593))

(assert (=> b!2302371 m!2729595))

(assert (=> b!2302371 m!2729595))

(declare-fun m!2729609 () Bool)

(assert (=> b!2302371 m!2729609))

(declare-fun m!2729611 () Bool)

(assert (=> b!2302374 m!2729611))

(declare-fun m!2729613 () Bool)

(assert (=> d!681022 m!2729613))

(declare-fun m!2729615 () Bool)

(assert (=> d!681022 m!2729615))

(declare-fun m!2729617 () Bool)

(assert (=> d!681022 m!2729617))

(declare-fun m!2729619 () Bool)

(assert (=> d!681022 m!2729619))

(declare-fun m!2729621 () Bool)

(assert (=> b!2302375 m!2729621))

(declare-fun m!2729623 () Bool)

(assert (=> bm!137062 m!2729623))

(assert (=> b!2302178 d!681022))

(declare-fun d!681058 () Bool)

(declare-fun lt!853985 () List!27500)

(assert (=> d!681058 (= (++!6707 lt!853885 lt!853985) input!1722)))

(declare-fun e!1475464 () List!27500)

(assert (=> d!681058 (= lt!853985 e!1475464)))

(declare-fun c!365019 () Bool)

(assert (=> d!681058 (= c!365019 ((_ is Cons!27406) lt!853885))))

(assert (=> d!681058 (>= (size!21616 input!1722) (size!21616 lt!853885))))

(assert (=> d!681058 (= (getSuffix!1162 input!1722 lt!853885) lt!853985)))

(declare-fun b!2302408 () Bool)

(assert (=> b!2302408 (= e!1475464 (getSuffix!1162 (tail!3327 input!1722) (t!205926 lt!853885)))))

(declare-fun b!2302409 () Bool)

(assert (=> b!2302409 (= e!1475464 input!1722)))

(assert (= (and d!681058 c!365019) b!2302408))

(assert (= (and d!681058 (not c!365019)) b!2302409))

(declare-fun m!2729669 () Bool)

(assert (=> d!681058 m!2729669))

(assert (=> d!681058 m!2729607))

(assert (=> d!681058 m!2729381))

(declare-fun m!2729671 () Bool)

(assert (=> b!2302408 m!2729671))

(assert (=> b!2302408 m!2729671))

(declare-fun m!2729673 () Bool)

(assert (=> b!2302408 m!2729673))

(assert (=> b!2302178 d!681058))

(declare-fun d!681068 () Bool)

(declare-fun list!10796 (Conc!8934) List!27500)

(assert (=> d!681068 (= (list!10792 (charsOf!2781 (h!32808 tokens!456))) (list!10796 (c!364982 (charsOf!2781 (h!32808 tokens!456)))))))

(declare-fun bs!457742 () Bool)

(assert (= bs!457742 d!681068))

(declare-fun m!2729681 () Bool)

(assert (=> bs!457742 m!2729681))

(assert (=> b!2302178 d!681068))

(declare-fun b!2302438 () Bool)

(declare-fun e!1475482 () Int)

(assert (=> b!2302438 (= e!1475482 0)))

(declare-fun d!681072 () Bool)

(declare-fun lt!853997 () Int)

(assert (=> d!681072 (>= lt!853997 0)))

(assert (=> d!681072 (= lt!853997 e!1475482)))

(declare-fun c!365033 () Bool)

(assert (=> d!681072 (= c!365033 (and ((_ is Cons!27408) rules!1750) (= (h!32809 rules!1750) otherR!12)))))

(assert (=> d!681072 (contains!4779 rules!1750 otherR!12)))

(assert (=> d!681072 (= (getIndex!406 rules!1750 otherR!12) lt!853997)))

(declare-fun b!2302441 () Bool)

(declare-fun e!1475483 () Int)

(assert (=> b!2302441 (= e!1475483 (- 1))))

(declare-fun b!2302439 () Bool)

(assert (=> b!2302439 (= e!1475482 e!1475483)))

(declare-fun c!365032 () Bool)

(assert (=> b!2302439 (= c!365032 (and ((_ is Cons!27408) rules!1750) (not (= (h!32809 rules!1750) otherR!12))))))

(declare-fun b!2302440 () Bool)

(assert (=> b!2302440 (= e!1475483 (+ 1 (getIndex!406 (t!205928 rules!1750) otherR!12)))))

(assert (= (and d!681072 c!365033) b!2302438))

(assert (= (and d!681072 (not c!365033)) b!2302439))

(assert (= (and b!2302439 c!365032) b!2302440))

(assert (= (and b!2302439 (not c!365032)) b!2302441))

(assert (=> d!681072 m!2729405))

(declare-fun m!2729695 () Bool)

(assert (=> b!2302440 m!2729695))

(assert (=> b!2302189 d!681072))

(declare-fun b!2302442 () Bool)

(declare-fun e!1475484 () Int)

(assert (=> b!2302442 (= e!1475484 0)))

(declare-fun d!681084 () Bool)

(declare-fun lt!853998 () Int)

(assert (=> d!681084 (>= lt!853998 0)))

(assert (=> d!681084 (= lt!853998 e!1475484)))

(declare-fun c!365035 () Bool)

(assert (=> d!681084 (= c!365035 (and ((_ is Cons!27408) rules!1750) (= (h!32809 rules!1750) r!2363)))))

(assert (=> d!681084 (contains!4779 rules!1750 r!2363)))

(assert (=> d!681084 (= (getIndex!406 rules!1750 r!2363) lt!853998)))

(declare-fun b!2302445 () Bool)

(declare-fun e!1475485 () Int)

(assert (=> b!2302445 (= e!1475485 (- 1))))

(declare-fun b!2302443 () Bool)

(assert (=> b!2302443 (= e!1475484 e!1475485)))

(declare-fun c!365034 () Bool)

(assert (=> b!2302443 (= c!365034 (and ((_ is Cons!27408) rules!1750) (not (= (h!32809 rules!1750) r!2363))))))

(declare-fun b!2302444 () Bool)

(assert (=> b!2302444 (= e!1475485 (+ 1 (getIndex!406 (t!205928 rules!1750) r!2363)))))

(assert (= (and d!681084 c!365035) b!2302442))

(assert (= (and d!681084 (not c!365035)) b!2302443))

(assert (= (and b!2302443 c!365034) b!2302444))

(assert (= (and b!2302443 (not c!365034)) b!2302445))

(assert (=> d!681084 m!2729375))

(declare-fun m!2729697 () Bool)

(assert (=> b!2302444 m!2729697))

(assert (=> b!2302189 d!681084))

(declare-fun d!681086 () Bool)

(declare-fun res!984426 () Bool)

(declare-fun e!1475486 () Bool)

(assert (=> d!681086 (=> (not res!984426) (not e!1475486))))

(assert (=> d!681086 (= res!984426 (validRegex!2546 (regex!4393 otherR!12)))))

(assert (=> d!681086 (= (ruleValid!1483 thiss!16613 otherR!12) e!1475486)))

(declare-fun b!2302446 () Bool)

(declare-fun res!984427 () Bool)

(assert (=> b!2302446 (=> (not res!984427) (not e!1475486))))

(assert (=> b!2302446 (= res!984427 (not (nullable!1884 (regex!4393 otherR!12))))))

(declare-fun b!2302447 () Bool)

(assert (=> b!2302447 (= e!1475486 (not (= (tag!4883 otherR!12) (String!29880 ""))))))

(assert (= (and d!681086 res!984426) b!2302446))

(assert (= (and b!2302446 res!984427) b!2302447))

(declare-fun m!2729699 () Bool)

(assert (=> d!681086 m!2729699))

(declare-fun m!2729701 () Bool)

(assert (=> b!2302446 m!2729701))

(assert (=> b!2302189 d!681086))

(declare-fun d!681088 () Bool)

(assert (=> d!681088 (ruleValid!1483 thiss!16613 otherR!12)))

(declare-fun lt!853999 () Unit!40310)

(assert (=> d!681088 (= lt!853999 (choose!13443 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!681088 (contains!4779 rules!1750 otherR!12)))

(assert (=> d!681088 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!888 thiss!16613 otherR!12 rules!1750) lt!853999)))

(declare-fun bs!457745 () Bool)

(assert (= bs!457745 d!681088))

(assert (=> bs!457745 m!2729419))

(declare-fun m!2729703 () Bool)

(assert (=> bs!457745 m!2729703))

(assert (=> bs!457745 m!2729405))

(assert (=> b!2302189 d!681088))

(declare-fun d!681090 () Bool)

(assert (=> d!681090 (= (inv!37035 (tag!4883 (h!32809 rules!1750))) (= (mod (str.len (value!139019 (tag!4883 (h!32809 rules!1750)))) 2) 0))))

(assert (=> b!2302188 d!681090))

(declare-fun d!681092 () Bool)

(declare-fun res!984428 () Bool)

(declare-fun e!1475487 () Bool)

(assert (=> d!681092 (=> (not res!984428) (not e!1475487))))

(assert (=> d!681092 (= res!984428 (semiInverseModEq!1786 (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toValue!6203 (transformation!4393 (h!32809 rules!1750)))))))

(assert (=> d!681092 (= (inv!37038 (transformation!4393 (h!32809 rules!1750))) e!1475487)))

(declare-fun b!2302448 () Bool)

(assert (=> b!2302448 (= e!1475487 (equivClasses!1705 (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toValue!6203 (transformation!4393 (h!32809 rules!1750)))))))

(assert (= (and d!681092 res!984428) b!2302448))

(declare-fun m!2729705 () Bool)

(assert (=> d!681092 m!2729705))

(declare-fun m!2729707 () Bool)

(assert (=> b!2302448 m!2729707))

(assert (=> b!2302188 d!681092))

(declare-fun d!681094 () Bool)

(assert (=> d!681094 (= (inv!37035 (tag!4883 (rule!6739 (h!32808 tokens!456)))) (= (mod (str.len (value!139019 (tag!4883 (rule!6739 (h!32808 tokens!456))))) 2) 0))))

(assert (=> b!2302166 d!681094))

(declare-fun d!681096 () Bool)

(declare-fun res!984429 () Bool)

(declare-fun e!1475488 () Bool)

(assert (=> d!681096 (=> (not res!984429) (not e!1475488))))

(assert (=> d!681096 (= res!984429 (semiInverseModEq!1786 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (toValue!6203 (transformation!4393 (rule!6739 (h!32808 tokens!456))))))))

(assert (=> d!681096 (= (inv!37038 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) e!1475488)))

(declare-fun b!2302449 () Bool)

(assert (=> b!2302449 (= e!1475488 (equivClasses!1705 (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (toValue!6203 (transformation!4393 (rule!6739 (h!32808 tokens!456))))))))

(assert (= (and d!681096 res!984429) b!2302449))

(declare-fun m!2729709 () Bool)

(assert (=> d!681096 m!2729709))

(declare-fun m!2729711 () Bool)

(assert (=> b!2302449 m!2729711))

(assert (=> b!2302166 d!681096))

(declare-fun d!681098 () Bool)

(assert (=> d!681098 (= (isEmpty!15652 lt!853885) ((_ is Nil!27406) lt!853885))))

(assert (=> b!2302198 d!681098))

(declare-fun d!681100 () Bool)

(assert (=> d!681100 (= r!2363 otherR!12)))

(declare-fun lt!854002 () Unit!40310)

(declare-fun choose!13447 (List!27502 Rule!8586 Rule!8586) Unit!40310)

(assert (=> d!681100 (= lt!854002 (choose!13447 rules!1750 r!2363 otherR!12))))

(assert (=> d!681100 (contains!4779 rules!1750 r!2363)))

(assert (=> d!681100 (= (lemmaSameIndexThenSameElement!186 rules!1750 r!2363 otherR!12) lt!854002)))

(declare-fun bs!457746 () Bool)

(assert (= bs!457746 d!681100))

(declare-fun m!2729713 () Bool)

(assert (=> bs!457746 m!2729713))

(assert (=> bs!457746 m!2729375))

(assert (=> b!2302177 d!681100))

(declare-fun d!681102 () Bool)

(assert (=> d!681102 (= (head!5038 tokens!456) (h!32808 tokens!456))))

(assert (=> b!2302165 d!681102))

(declare-fun d!681104 () Bool)

(declare-fun res!984448 () Bool)

(declare-fun e!1475505 () Bool)

(assert (=> d!681104 (=> (not res!984448) (not e!1475505))))

(declare-fun rulesValid!1630 (LexerInterface!3990 List!27502) Bool)

(assert (=> d!681104 (= res!984448 (rulesValid!1630 thiss!16613 rules!1750))))

(assert (=> d!681104 (= (rulesInvariant!3492 thiss!16613 rules!1750) e!1475505)))

(declare-fun b!2302480 () Bool)

(declare-datatypes ((List!27504 0))(
  ( (Nil!27410) (Cons!27410 (h!32811 String!29879) (t!205978 List!27504)) )
))
(declare-fun noDuplicateTag!1628 (LexerInterface!3990 List!27502 List!27504) Bool)

(assert (=> b!2302480 (= e!1475505 (noDuplicateTag!1628 thiss!16613 rules!1750 Nil!27410))))

(assert (= (and d!681104 res!984448) b!2302480))

(declare-fun m!2729715 () Bool)

(assert (=> d!681104 m!2729715))

(declare-fun m!2729717 () Bool)

(assert (=> b!2302480 m!2729717))

(assert (=> b!2302197 d!681104))

(declare-fun d!681106 () Bool)

(assert (=> d!681106 (= (isEmpty!15651 tokens!456) ((_ is Nil!27407) tokens!456))))

(assert (=> b!2302196 d!681106))

(declare-fun d!681108 () Bool)

(declare-fun lt!854007 () Int)

(assert (=> d!681108 (= lt!854007 (size!21616 (list!10792 (charsOf!2781 (head!5038 tokens!456)))))))

(declare-fun size!21619 (Conc!8934) Int)

(assert (=> d!681108 (= lt!854007 (size!21619 (c!364982 (charsOf!2781 (head!5038 tokens!456)))))))

(assert (=> d!681108 (= (size!21615 (charsOf!2781 (head!5038 tokens!456))) lt!854007)))

(declare-fun bs!457747 () Bool)

(assert (= bs!457747 d!681108))

(assert (=> bs!457747 m!2729363))

(assert (=> bs!457747 m!2729365))

(assert (=> bs!457747 m!2729365))

(declare-fun m!2729719 () Bool)

(assert (=> bs!457747 m!2729719))

(declare-fun m!2729721 () Bool)

(assert (=> bs!457747 m!2729721))

(assert (=> b!2302174 d!681108))

(declare-fun d!681110 () Bool)

(declare-fun lt!854008 () BalanceConc!17596)

(assert (=> d!681110 (= (list!10792 lt!854008) (originalCharacters!5163 (head!5038 tokens!456)))))

(assert (=> d!681110 (= lt!854008 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456)))) (value!139020 (head!5038 tokens!456))))))

(assert (=> d!681110 (= (charsOf!2781 (head!5038 tokens!456)) lt!854008)))

(declare-fun b_lambda!73319 () Bool)

(assert (=> (not b_lambda!73319) (not d!681110)))

(declare-fun t!205946 () Bool)

(declare-fun tb!137663 () Bool)

(assert (=> (and b!2302194 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205946) tb!137663))

(declare-fun b!2302495 () Bool)

(declare-fun e!1475513 () Bool)

(declare-fun tp!730374 () Bool)

(assert (=> b!2302495 (= e!1475513 (and (inv!37042 (c!364982 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456)))) (value!139020 (head!5038 tokens!456))))) tp!730374))))

(declare-fun result!167822 () Bool)

(assert (=> tb!137663 (= result!167822 (and (inv!37043 (dynLambda!11913 (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456)))) (value!139020 (head!5038 tokens!456)))) e!1475513))))

(assert (= tb!137663 b!2302495))

(declare-fun m!2729723 () Bool)

(assert (=> b!2302495 m!2729723))

(declare-fun m!2729725 () Bool)

(assert (=> tb!137663 m!2729725))

(assert (=> d!681110 t!205946))

(declare-fun b_and!183441 () Bool)

(assert (= b_and!183425 (and (=> t!205946 result!167822) b_and!183441)))

(declare-fun t!205948 () Bool)

(declare-fun tb!137665 () Bool)

(assert (=> (and b!2302191 (= (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205948) tb!137665))

(declare-fun result!167824 () Bool)

(assert (= result!167824 result!167822))

(assert (=> d!681110 t!205948))

(declare-fun b_and!183443 () Bool)

(assert (= b_and!183427 (and (=> t!205948 result!167824) b_and!183443)))

(declare-fun t!205950 () Bool)

(declare-fun tb!137667 () Bool)

(assert (=> (and b!2302172 (= (toChars!6062 (transformation!4393 otherR!12)) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205950) tb!137667))

(declare-fun result!167826 () Bool)

(assert (= result!167826 result!167822))

(assert (=> d!681110 t!205950))

(declare-fun b_and!183445 () Bool)

(assert (= b_and!183429 (and (=> t!205950 result!167826) b_and!183445)))

(declare-fun tb!137669 () Bool)

(declare-fun t!205952 () Bool)

(assert (=> (and b!2302173 (= (toChars!6062 (transformation!4393 r!2363)) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205952) tb!137669))

(declare-fun result!167828 () Bool)

(assert (= result!167828 result!167822))

(assert (=> d!681110 t!205952))

(declare-fun b_and!183447 () Bool)

(assert (= b_and!183431 (and (=> t!205952 result!167828) b_and!183447)))

(declare-fun m!2729727 () Bool)

(assert (=> d!681110 m!2729727))

(declare-fun m!2729729 () Bool)

(assert (=> d!681110 m!2729729))

(assert (=> b!2302174 d!681110))

(assert (=> b!2302174 d!681102))

(assert (=> b!2302174 d!681012))

(declare-fun b!2302546 () Bool)

(declare-fun e!1475550 () Bool)

(declare-fun e!1475547 () Bool)

(assert (=> b!2302546 (= e!1475550 e!1475547)))

(declare-fun res!984486 () Bool)

(assert (=> b!2302546 (=> res!984486 e!1475547)))

(declare-fun call!137074 () Bool)

(assert (=> b!2302546 (= res!984486 call!137074)))

(declare-fun b!2302547 () Bool)

(declare-fun e!1475544 () Bool)

(assert (=> b!2302547 (= e!1475544 e!1475550)))

(declare-fun res!984484 () Bool)

(assert (=> b!2302547 (=> (not res!984484) (not e!1475550))))

(declare-fun lt!854017 () Bool)

(assert (=> b!2302547 (= res!984484 (not lt!854017))))

(declare-fun b!2302548 () Bool)

(declare-fun res!984485 () Bool)

(assert (=> b!2302548 (=> res!984485 e!1475544)))

(assert (=> b!2302548 (= res!984485 (not ((_ is ElementMatch!6741) (regex!4393 r!2363))))))

(declare-fun e!1475549 () Bool)

(assert (=> b!2302548 (= e!1475549 e!1475544)))

(declare-fun b!2302549 () Bool)

(assert (=> b!2302549 (= e!1475547 (not (= (head!5040 (list!10792 (charsOf!2781 (head!5038 tokens!456)))) (c!364983 (regex!4393 r!2363)))))))

(declare-fun b!2302550 () Bool)

(declare-fun e!1475548 () Bool)

(assert (=> b!2302550 (= e!1475548 e!1475549)))

(declare-fun c!365056 () Bool)

(assert (=> b!2302550 (= c!365056 ((_ is EmptyLang!6741) (regex!4393 r!2363)))))

(declare-fun b!2302552 () Bool)

(declare-fun res!984483 () Bool)

(declare-fun e!1475546 () Bool)

(assert (=> b!2302552 (=> (not res!984483) (not e!1475546))))

(assert (=> b!2302552 (= res!984483 (not call!137074))))

(declare-fun b!2302553 () Bool)

(assert (=> b!2302553 (= e!1475546 (= (head!5040 (list!10792 (charsOf!2781 (head!5038 tokens!456)))) (c!364983 (regex!4393 r!2363))))))

(declare-fun b!2302554 () Bool)

(declare-fun res!984487 () Bool)

(assert (=> b!2302554 (=> res!984487 e!1475544)))

(assert (=> b!2302554 (= res!984487 e!1475546)))

(declare-fun res!984489 () Bool)

(assert (=> b!2302554 (=> (not res!984489) (not e!1475546))))

(assert (=> b!2302554 (= res!984489 lt!854017)))

(declare-fun b!2302555 () Bool)

(assert (=> b!2302555 (= e!1475549 (not lt!854017))))

(declare-fun b!2302556 () Bool)

(declare-fun res!984482 () Bool)

(assert (=> b!2302556 (=> (not res!984482) (not e!1475546))))

(assert (=> b!2302556 (= res!984482 (isEmpty!15652 (tail!3327 (list!10792 (charsOf!2781 (head!5038 tokens!456))))))))

(declare-fun bm!137069 () Bool)

(assert (=> bm!137069 (= call!137074 (isEmpty!15652 (list!10792 (charsOf!2781 (head!5038 tokens!456)))))))

(declare-fun b!2302557 () Bool)

(declare-fun res!984488 () Bool)

(assert (=> b!2302557 (=> res!984488 e!1475547)))

(assert (=> b!2302557 (= res!984488 (not (isEmpty!15652 (tail!3327 (list!10792 (charsOf!2781 (head!5038 tokens!456)))))))))

(declare-fun b!2302551 () Bool)

(declare-fun e!1475545 () Bool)

(assert (=> b!2302551 (= e!1475545 (nullable!1884 (regex!4393 r!2363)))))

(declare-fun d!681112 () Bool)

(assert (=> d!681112 e!1475548))

(declare-fun c!365059 () Bool)

(assert (=> d!681112 (= c!365059 ((_ is EmptyExpr!6741) (regex!4393 r!2363)))))

(assert (=> d!681112 (= lt!854017 e!1475545)))

(declare-fun c!365058 () Bool)

(assert (=> d!681112 (= c!365058 (isEmpty!15652 (list!10792 (charsOf!2781 (head!5038 tokens!456)))))))

(assert (=> d!681112 (validRegex!2546 (regex!4393 r!2363))))

(assert (=> d!681112 (= (matchR!2998 (regex!4393 r!2363) (list!10792 (charsOf!2781 (head!5038 tokens!456)))) lt!854017)))

(declare-fun b!2302558 () Bool)

(declare-fun derivativeStep!1544 (Regex!6741 C!13628) Regex!6741)

(assert (=> b!2302558 (= e!1475545 (matchR!2998 (derivativeStep!1544 (regex!4393 r!2363) (head!5040 (list!10792 (charsOf!2781 (head!5038 tokens!456))))) (tail!3327 (list!10792 (charsOf!2781 (head!5038 tokens!456))))))))

(declare-fun b!2302559 () Bool)

(assert (=> b!2302559 (= e!1475548 (= lt!854017 call!137074))))

(assert (= (and d!681112 c!365058) b!2302551))

(assert (= (and d!681112 (not c!365058)) b!2302558))

(assert (= (and d!681112 c!365059) b!2302559))

(assert (= (and d!681112 (not c!365059)) b!2302550))

(assert (= (and b!2302550 c!365056) b!2302555))

(assert (= (and b!2302550 (not c!365056)) b!2302548))

(assert (= (and b!2302548 (not res!984485)) b!2302554))

(assert (= (and b!2302554 res!984489) b!2302552))

(assert (= (and b!2302552 res!984483) b!2302556))

(assert (= (and b!2302556 res!984482) b!2302553))

(assert (= (and b!2302554 (not res!984487)) b!2302547))

(assert (= (and b!2302547 res!984484) b!2302546))

(assert (= (and b!2302546 (not res!984486)) b!2302557))

(assert (= (and b!2302557 (not res!984488)) b!2302549))

(assert (= (or b!2302559 b!2302546 b!2302552) bm!137069))

(assert (=> bm!137069 m!2729365))

(declare-fun m!2729775 () Bool)

(assert (=> bm!137069 m!2729775))

(assert (=> d!681112 m!2729365))

(assert (=> d!681112 m!2729775))

(assert (=> d!681112 m!2729447))

(assert (=> b!2302549 m!2729365))

(declare-fun m!2729777 () Bool)

(assert (=> b!2302549 m!2729777))

(assert (=> b!2302557 m!2729365))

(declare-fun m!2729779 () Bool)

(assert (=> b!2302557 m!2729779))

(assert (=> b!2302557 m!2729779))

(declare-fun m!2729781 () Bool)

(assert (=> b!2302557 m!2729781))

(assert (=> b!2302556 m!2729365))

(assert (=> b!2302556 m!2729779))

(assert (=> b!2302556 m!2729779))

(assert (=> b!2302556 m!2729781))

(assert (=> b!2302551 m!2729449))

(assert (=> b!2302553 m!2729365))

(assert (=> b!2302553 m!2729777))

(assert (=> b!2302558 m!2729365))

(assert (=> b!2302558 m!2729777))

(assert (=> b!2302558 m!2729777))

(declare-fun m!2729783 () Bool)

(assert (=> b!2302558 m!2729783))

(assert (=> b!2302558 m!2729365))

(assert (=> b!2302558 m!2729779))

(assert (=> b!2302558 m!2729783))

(assert (=> b!2302558 m!2729779))

(declare-fun m!2729785 () Bool)

(assert (=> b!2302558 m!2729785))

(assert (=> b!2302184 d!681112))

(declare-fun d!681134 () Bool)

(assert (=> d!681134 (= (list!10792 (charsOf!2781 (head!5038 tokens!456))) (list!10796 (c!364982 (charsOf!2781 (head!5038 tokens!456)))))))

(declare-fun bs!457750 () Bool)

(assert (= bs!457750 d!681134))

(declare-fun m!2729787 () Bool)

(assert (=> bs!457750 m!2729787))

(assert (=> b!2302184 d!681134))

(assert (=> b!2302184 d!681110))

(assert (=> b!2302184 d!681102))

(declare-fun d!681136 () Bool)

(assert (=> d!681136 (= (isEmpty!15650 rules!1750) ((_ is Nil!27408) rules!1750))))

(assert (=> b!2302195 d!681136))

(declare-fun d!681138 () Bool)

(declare-fun lt!854018 () Bool)

(assert (=> d!681138 (= lt!854018 (select (content!3693 rules!1750) r!2363))))

(declare-fun e!1475553 () Bool)

(assert (=> d!681138 (= lt!854018 e!1475553)))

(declare-fun res!984495 () Bool)

(assert (=> d!681138 (=> (not res!984495) (not e!1475553))))

(assert (=> d!681138 (= res!984495 ((_ is Cons!27408) rules!1750))))

(assert (=> d!681138 (= (contains!4779 rules!1750 r!2363) lt!854018)))

(declare-fun b!2302564 () Bool)

(declare-fun e!1475554 () Bool)

(assert (=> b!2302564 (= e!1475553 e!1475554)))

(declare-fun res!984494 () Bool)

(assert (=> b!2302564 (=> res!984494 e!1475554)))

(assert (=> b!2302564 (= res!984494 (= (h!32809 rules!1750) r!2363))))

(declare-fun b!2302565 () Bool)

(assert (=> b!2302565 (= e!1475554 (contains!4779 (t!205928 rules!1750) r!2363))))

(assert (= (and d!681138 res!984495) b!2302564))

(assert (= (and b!2302564 (not res!984494)) b!2302565))

(assert (=> d!681138 m!2729429))

(declare-fun m!2729789 () Bool)

(assert (=> d!681138 m!2729789))

(declare-fun m!2729791 () Bool)

(assert (=> b!2302565 m!2729791))

(assert (=> b!2302183 d!681138))

(declare-fun d!681140 () Bool)

(declare-fun list!10797 (Conc!8935) List!27501)

(assert (=> d!681140 (= (list!10793 (_1!16156 lt!853895)) (list!10797 (c!364984 (_1!16156 lt!853895))))))

(declare-fun bs!457751 () Bool)

(assert (= bs!457751 d!681140))

(declare-fun m!2729793 () Bool)

(assert (=> bs!457751 m!2729793))

(assert (=> b!2302182 d!681140))

(declare-fun d!681142 () Bool)

(assert (=> d!681142 (= (list!10792 (_2!16156 lt!853895)) (list!10796 (c!364982 (_2!16156 lt!853895))))))

(declare-fun bs!457752 () Bool)

(assert (= bs!457752 d!681142))

(declare-fun m!2729797 () Bool)

(assert (=> bs!457752 m!2729797))

(assert (=> b!2302182 d!681142))

(declare-fun d!681144 () Bool)

(declare-fun e!1475606 () Bool)

(assert (=> d!681144 e!1475606))

(declare-fun res!984506 () Bool)

(assert (=> d!681144 (=> (not res!984506) (not e!1475606))))

(declare-fun e!1475604 () Bool)

(assert (=> d!681144 (= res!984506 e!1475604)))

(declare-fun c!365062 () Bool)

(declare-fun lt!854021 () tuple2!27292)

(declare-fun size!21620 (BalanceConc!17598) Int)

(assert (=> d!681144 (= c!365062 (> (size!21620 (_1!16156 lt!854021)) 0))))

(declare-fun lexTailRecV2!805 (LexerInterface!3990 List!27502 BalanceConc!17596 BalanceConc!17596 BalanceConc!17596 BalanceConc!17598) tuple2!27292)

(assert (=> d!681144 (= lt!854021 (lexTailRecV2!805 thiss!16613 rules!1750 (seqFromList!3097 input!1722) (BalanceConc!17597 Empty!8934) (seqFromList!3097 input!1722) (BalanceConc!17599 Empty!8935)))))

(assert (=> d!681144 (= (lex!1829 thiss!16613 rules!1750 (seqFromList!3097 input!1722)) lt!854021)))

(declare-fun b!2302637 () Bool)

(declare-fun lexList!1130 (LexerInterface!3990 List!27502 List!27500) tuple2!27294)

(assert (=> b!2302637 (= e!1475606 (= (list!10792 (_2!16156 lt!854021)) (_2!16157 (lexList!1130 thiss!16613 rules!1750 (list!10792 (seqFromList!3097 input!1722))))))))

(declare-fun b!2302638 () Bool)

(declare-fun e!1475605 () Bool)

(assert (=> b!2302638 (= e!1475604 e!1475605)))

(declare-fun res!984504 () Bool)

(assert (=> b!2302638 (= res!984504 (< (size!21615 (_2!16156 lt!854021)) (size!21615 (seqFromList!3097 input!1722))))))

(assert (=> b!2302638 (=> (not res!984504) (not e!1475605))))

(declare-fun b!2302639 () Bool)

(declare-fun isEmpty!15656 (BalanceConc!17598) Bool)

(assert (=> b!2302639 (= e!1475605 (not (isEmpty!15656 (_1!16156 lt!854021))))))

(declare-fun b!2302640 () Bool)

(assert (=> b!2302640 (= e!1475604 (= (_2!16156 lt!854021) (seqFromList!3097 input!1722)))))

(declare-fun b!2302641 () Bool)

(declare-fun res!984505 () Bool)

(assert (=> b!2302641 (=> (not res!984505) (not e!1475606))))

(assert (=> b!2302641 (= res!984505 (= (list!10793 (_1!16156 lt!854021)) (_1!16157 (lexList!1130 thiss!16613 rules!1750 (list!10792 (seqFromList!3097 input!1722))))))))

(assert (= (and d!681144 c!365062) b!2302638))

(assert (= (and d!681144 (not c!365062)) b!2302640))

(assert (= (and b!2302638 res!984504) b!2302639))

(assert (= (and d!681144 res!984506) b!2302641))

(assert (= (and b!2302641 res!984505) b!2302637))

(declare-fun m!2729815 () Bool)

(assert (=> b!2302641 m!2729815))

(assert (=> b!2302641 m!2729355))

(declare-fun m!2729817 () Bool)

(assert (=> b!2302641 m!2729817))

(assert (=> b!2302641 m!2729817))

(declare-fun m!2729819 () Bool)

(assert (=> b!2302641 m!2729819))

(declare-fun m!2729821 () Bool)

(assert (=> b!2302639 m!2729821))

(declare-fun m!2729823 () Bool)

(assert (=> d!681144 m!2729823))

(assert (=> d!681144 m!2729355))

(assert (=> d!681144 m!2729355))

(declare-fun m!2729825 () Bool)

(assert (=> d!681144 m!2729825))

(declare-fun m!2729827 () Bool)

(assert (=> b!2302638 m!2729827))

(assert (=> b!2302638 m!2729355))

(declare-fun m!2729829 () Bool)

(assert (=> b!2302638 m!2729829))

(declare-fun m!2729831 () Bool)

(assert (=> b!2302637 m!2729831))

(assert (=> b!2302637 m!2729355))

(assert (=> b!2302637 m!2729817))

(assert (=> b!2302637 m!2729817))

(assert (=> b!2302637 m!2729819))

(assert (=> b!2302182 d!681144))

(declare-fun d!681146 () Bool)

(declare-fun fromListB!1396 (List!27500) BalanceConc!17596)

(assert (=> d!681146 (= (seqFromList!3097 input!1722) (fromListB!1396 input!1722))))

(declare-fun bs!457753 () Bool)

(assert (= bs!457753 d!681146))

(declare-fun m!2729833 () Bool)

(assert (=> bs!457753 m!2729833))

(assert (=> b!2302182 d!681146))

(declare-fun b!2302642 () Bool)

(declare-fun e!1475608 () Bool)

(declare-fun e!1475609 () Bool)

(assert (=> b!2302642 (= e!1475608 e!1475609)))

(declare-fun res!984510 () Bool)

(assert (=> b!2302642 (=> (not res!984510) (not e!1475609))))

(assert (=> b!2302642 (= res!984510 (not ((_ is Nil!27406) input!1722)))))

(declare-fun d!681148 () Bool)

(declare-fun e!1475607 () Bool)

(assert (=> d!681148 e!1475607))

(declare-fun res!984509 () Bool)

(assert (=> d!681148 (=> res!984509 e!1475607)))

(declare-fun lt!854022 () Bool)

(assert (=> d!681148 (= res!984509 (not lt!854022))))

(assert (=> d!681148 (= lt!854022 e!1475608)))

(declare-fun res!984508 () Bool)

(assert (=> d!681148 (=> res!984508 e!1475608)))

(assert (=> d!681148 (= res!984508 ((_ is Nil!27406) otherP!12))))

(assert (=> d!681148 (= (isPrefix!2383 otherP!12 input!1722) lt!854022)))

(declare-fun b!2302643 () Bool)

(declare-fun res!984507 () Bool)

(assert (=> b!2302643 (=> (not res!984507) (not e!1475609))))

(assert (=> b!2302643 (= res!984507 (= (head!5040 otherP!12) (head!5040 input!1722)))))

(declare-fun b!2302644 () Bool)

(assert (=> b!2302644 (= e!1475609 (isPrefix!2383 (tail!3327 otherP!12) (tail!3327 input!1722)))))

(declare-fun b!2302645 () Bool)

(assert (=> b!2302645 (= e!1475607 (>= (size!21616 input!1722) (size!21616 otherP!12)))))

(assert (= (and d!681148 (not res!984508)) b!2302642))

(assert (= (and b!2302642 res!984510) b!2302643))

(assert (= (and b!2302643 res!984507) b!2302644))

(assert (= (and d!681148 (not res!984509)) b!2302645))

(declare-fun m!2729835 () Bool)

(assert (=> b!2302643 m!2729835))

(declare-fun m!2729837 () Bool)

(assert (=> b!2302643 m!2729837))

(declare-fun m!2729839 () Bool)

(assert (=> b!2302644 m!2729839))

(assert (=> b!2302644 m!2729671))

(assert (=> b!2302644 m!2729839))

(assert (=> b!2302644 m!2729671))

(declare-fun m!2729841 () Bool)

(assert (=> b!2302644 m!2729841))

(assert (=> b!2302645 m!2729607))

(assert (=> b!2302645 m!2729401))

(assert (=> b!2302171 d!681148))

(declare-fun b!2302650 () Bool)

(declare-fun e!1475612 () Bool)

(declare-fun tp!730441 () Bool)

(assert (=> b!2302650 (= e!1475612 (and tp_is_empty!10703 tp!730441))))

(assert (=> b!2302170 (= tp!730363 e!1475612)))

(assert (= (and b!2302170 ((_ is Cons!27406) (originalCharacters!5163 (h!32808 tokens!456)))) b!2302650))

(declare-fun e!1475615 () Bool)

(assert (=> b!2302190 (= tp!730358 e!1475615)))

(declare-fun b!2302661 () Bool)

(assert (=> b!2302661 (= e!1475615 tp_is_empty!10703)))

(declare-fun b!2302664 () Bool)

(declare-fun tp!730452 () Bool)

(declare-fun tp!730454 () Bool)

(assert (=> b!2302664 (= e!1475615 (and tp!730452 tp!730454))))

(declare-fun b!2302663 () Bool)

(declare-fun tp!730453 () Bool)

(assert (=> b!2302663 (= e!1475615 tp!730453)))

(declare-fun b!2302662 () Bool)

(declare-fun tp!730455 () Bool)

(declare-fun tp!730456 () Bool)

(assert (=> b!2302662 (= e!1475615 (and tp!730455 tp!730456))))

(assert (= (and b!2302190 ((_ is ElementMatch!6741) (regex!4393 otherR!12))) b!2302661))

(assert (= (and b!2302190 ((_ is Concat!11297) (regex!4393 otherR!12))) b!2302662))

(assert (= (and b!2302190 ((_ is Star!6741) (regex!4393 otherR!12))) b!2302663))

(assert (= (and b!2302190 ((_ is Union!6741) (regex!4393 otherR!12))) b!2302664))

(declare-fun b!2302678 () Bool)

(declare-fun b_free!69525 () Bool)

(declare-fun b_next!70229 () Bool)

(assert (=> b!2302678 (= b_free!69525 (not b_next!70229))))

(declare-fun tp!730467 () Bool)

(declare-fun b_and!183473 () Bool)

(assert (=> b!2302678 (= tp!730467 b_and!183473)))

(declare-fun b_free!69527 () Bool)

(declare-fun b_next!70231 () Bool)

(assert (=> b!2302678 (= b_free!69527 (not b_next!70231))))

(declare-fun t!205970 () Bool)

(declare-fun tb!137687 () Bool)

(assert (=> (and b!2302678 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 (t!205927 tokens!456))))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205970) tb!137687))

(declare-fun result!167860 () Bool)

(assert (= result!167860 result!167802))

(assert (=> b!2302236 t!205970))

(assert (=> d!681016 t!205970))

(declare-fun t!205972 () Bool)

(declare-fun tb!137689 () Bool)

(assert (=> (and b!2302678 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 (t!205927 tokens!456))))) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205972) tb!137689))

(declare-fun result!167862 () Bool)

(assert (= result!167862 result!167822))

(assert (=> d!681110 t!205972))

(declare-fun b_and!183475 () Bool)

(declare-fun tp!730471 () Bool)

(assert (=> b!2302678 (= tp!730471 (and (=> t!205970 result!167860) (=> t!205972 result!167862) b_and!183475))))

(declare-fun e!1475628 () Bool)

(assert (=> b!2302678 (= e!1475628 (and tp!730467 tp!730471))))

(declare-fun tp!730468 () Bool)

(declare-fun b!2302677 () Bool)

(declare-fun e!1475630 () Bool)

(assert (=> b!2302677 (= e!1475630 (and tp!730468 (inv!37035 (tag!4883 (rule!6739 (h!32808 (t!205927 tokens!456))))) (inv!37038 (transformation!4393 (rule!6739 (h!32808 (t!205927 tokens!456))))) e!1475628))))

(declare-fun b!2302676 () Bool)

(declare-fun tp!730469 () Bool)

(declare-fun e!1475631 () Bool)

(assert (=> b!2302676 (= e!1475631 (and (inv!21 (value!139020 (h!32808 (t!205927 tokens!456)))) e!1475630 tp!730469))))

(declare-fun e!1475632 () Bool)

(assert (=> b!2302168 (= tp!730360 e!1475632)))

(declare-fun b!2302675 () Bool)

(declare-fun tp!730470 () Bool)

(assert (=> b!2302675 (= e!1475632 (and (inv!37039 (h!32808 (t!205927 tokens!456))) e!1475631 tp!730470))))

(assert (= b!2302677 b!2302678))

(assert (= b!2302676 b!2302677))

(assert (= b!2302675 b!2302676))

(assert (= (and b!2302168 ((_ is Cons!27407) (t!205927 tokens!456))) b!2302675))

(declare-fun m!2729843 () Bool)

(assert (=> b!2302677 m!2729843))

(declare-fun m!2729845 () Bool)

(assert (=> b!2302677 m!2729845))

(declare-fun m!2729847 () Bool)

(assert (=> b!2302676 m!2729847))

(declare-fun m!2729849 () Bool)

(assert (=> b!2302675 m!2729849))

(declare-fun e!1475634 () Bool)

(assert (=> b!2302179 (= tp!730367 e!1475634)))

(declare-fun b!2302679 () Bool)

(assert (=> b!2302679 (= e!1475634 tp_is_empty!10703)))

(declare-fun b!2302682 () Bool)

(declare-fun tp!730472 () Bool)

(declare-fun tp!730474 () Bool)

(assert (=> b!2302682 (= e!1475634 (and tp!730472 tp!730474))))

(declare-fun b!2302681 () Bool)

(declare-fun tp!730473 () Bool)

(assert (=> b!2302681 (= e!1475634 tp!730473)))

(declare-fun b!2302680 () Bool)

(declare-fun tp!730475 () Bool)

(declare-fun tp!730476 () Bool)

(assert (=> b!2302680 (= e!1475634 (and tp!730475 tp!730476))))

(assert (= (and b!2302179 ((_ is ElementMatch!6741) (regex!4393 r!2363))) b!2302679))

(assert (= (and b!2302179 ((_ is Concat!11297) (regex!4393 r!2363))) b!2302680))

(assert (= (and b!2302179 ((_ is Star!6741) (regex!4393 r!2363))) b!2302681))

(assert (= (and b!2302179 ((_ is Union!6741) (regex!4393 r!2363))) b!2302682))

(declare-fun e!1475635 () Bool)

(assert (=> b!2302188 (= tp!730359 e!1475635)))

(declare-fun b!2302683 () Bool)

(assert (=> b!2302683 (= e!1475635 tp_is_empty!10703)))

(declare-fun b!2302686 () Bool)

(declare-fun tp!730477 () Bool)

(declare-fun tp!730479 () Bool)

(assert (=> b!2302686 (= e!1475635 (and tp!730477 tp!730479))))

(declare-fun b!2302685 () Bool)

(declare-fun tp!730478 () Bool)

(assert (=> b!2302685 (= e!1475635 tp!730478)))

(declare-fun b!2302684 () Bool)

(declare-fun tp!730480 () Bool)

(declare-fun tp!730481 () Bool)

(assert (=> b!2302684 (= e!1475635 (and tp!730480 tp!730481))))

(assert (= (and b!2302188 ((_ is ElementMatch!6741) (regex!4393 (h!32809 rules!1750)))) b!2302683))

(assert (= (and b!2302188 ((_ is Concat!11297) (regex!4393 (h!32809 rules!1750)))) b!2302684))

(assert (= (and b!2302188 ((_ is Star!6741) (regex!4393 (h!32809 rules!1750)))) b!2302685))

(assert (= (and b!2302188 ((_ is Union!6741) (regex!4393 (h!32809 rules!1750)))) b!2302686))

(declare-fun e!1475636 () Bool)

(assert (=> b!2302166 (= tp!730352 e!1475636)))

(declare-fun b!2302687 () Bool)

(assert (=> b!2302687 (= e!1475636 tp_is_empty!10703)))

(declare-fun b!2302690 () Bool)

(declare-fun tp!730482 () Bool)

(declare-fun tp!730484 () Bool)

(assert (=> b!2302690 (= e!1475636 (and tp!730482 tp!730484))))

(declare-fun b!2302689 () Bool)

(declare-fun tp!730483 () Bool)

(assert (=> b!2302689 (= e!1475636 tp!730483)))

(declare-fun b!2302688 () Bool)

(declare-fun tp!730485 () Bool)

(declare-fun tp!730486 () Bool)

(assert (=> b!2302688 (= e!1475636 (and tp!730485 tp!730486))))

(assert (= (and b!2302166 ((_ is ElementMatch!6741) (regex!4393 (rule!6739 (h!32808 tokens!456))))) b!2302687))

(assert (= (and b!2302166 ((_ is Concat!11297) (regex!4393 (rule!6739 (h!32808 tokens!456))))) b!2302688))

(assert (= (and b!2302166 ((_ is Star!6741) (regex!4393 (rule!6739 (h!32808 tokens!456))))) b!2302689))

(assert (= (and b!2302166 ((_ is Union!6741) (regex!4393 (rule!6739 (h!32808 tokens!456))))) b!2302690))

(declare-fun b!2302701 () Bool)

(declare-fun b_free!69529 () Bool)

(declare-fun b_next!70233 () Bool)

(assert (=> b!2302701 (= b_free!69529 (not b_next!70233))))

(declare-fun tp!730496 () Bool)

(declare-fun b_and!183477 () Bool)

(assert (=> b!2302701 (= tp!730496 b_and!183477)))

(declare-fun b_free!69531 () Bool)

(declare-fun b_next!70235 () Bool)

(assert (=> b!2302701 (= b_free!69531 (not b_next!70235))))

(declare-fun tb!137691 () Bool)

(declare-fun t!205974 () Bool)

(assert (=> (and b!2302701 (= (toChars!6062 (transformation!4393 (h!32809 (t!205928 rules!1750)))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456))))) t!205974) tb!137691))

(declare-fun result!167866 () Bool)

(assert (= result!167866 result!167802))

(assert (=> b!2302236 t!205974))

(assert (=> d!681016 t!205974))

(declare-fun tb!137693 () Bool)

(declare-fun t!205976 () Bool)

(assert (=> (and b!2302701 (= (toChars!6062 (transformation!4393 (h!32809 (t!205928 rules!1750)))) (toChars!6062 (transformation!4393 (rule!6739 (head!5038 tokens!456))))) t!205976) tb!137693))

(declare-fun result!167868 () Bool)

(assert (= result!167868 result!167822))

(assert (=> d!681110 t!205976))

(declare-fun b_and!183479 () Bool)

(declare-fun tp!730497 () Bool)

(assert (=> b!2302701 (= tp!730497 (and (=> t!205974 result!167866) (=> t!205976 result!167868) b_and!183479))))

(declare-fun e!1475645 () Bool)

(assert (=> b!2302701 (= e!1475645 (and tp!730496 tp!730497))))

(declare-fun b!2302700 () Bool)

(declare-fun tp!730495 () Bool)

(declare-fun e!1475647 () Bool)

(assert (=> b!2302700 (= e!1475647 (and tp!730495 (inv!37035 (tag!4883 (h!32809 (t!205928 rules!1750)))) (inv!37038 (transformation!4393 (h!32809 (t!205928 rules!1750)))) e!1475645))))

(declare-fun b!2302699 () Bool)

(declare-fun e!1475646 () Bool)

(declare-fun tp!730498 () Bool)

(assert (=> b!2302699 (= e!1475646 (and e!1475647 tp!730498))))

(assert (=> b!2302176 (= tp!730365 e!1475646)))

(assert (= b!2302700 b!2302701))

(assert (= b!2302699 b!2302700))

(assert (= (and b!2302176 ((_ is Cons!27408) (t!205928 rules!1750))) b!2302699))

(declare-fun m!2729851 () Bool)

(assert (=> b!2302700 m!2729851))

(declare-fun m!2729853 () Bool)

(assert (=> b!2302700 m!2729853))

(declare-fun b!2302702 () Bool)

(declare-fun e!1475649 () Bool)

(declare-fun tp!730499 () Bool)

(assert (=> b!2302702 (= e!1475649 (and tp_is_empty!10703 tp!730499))))

(assert (=> b!2302175 (= tp!730364 e!1475649)))

(assert (= (and b!2302175 ((_ is Cons!27406) (t!205926 input!1722))) b!2302702))

(declare-fun b!2302703 () Bool)

(declare-fun e!1475650 () Bool)

(declare-fun tp!730500 () Bool)

(assert (=> b!2302703 (= e!1475650 (and tp_is_empty!10703 tp!730500))))

(assert (=> b!2302193 (= tp!730362 e!1475650)))

(assert (= (and b!2302193 ((_ is Cons!27406) (t!205926 otherP!12))) b!2302703))

(declare-fun b!2302704 () Bool)

(declare-fun e!1475651 () Bool)

(declare-fun tp!730501 () Bool)

(assert (=> b!2302704 (= e!1475651 (and tp_is_empty!10703 tp!730501))))

(assert (=> b!2302192 (= tp!730355 e!1475651)))

(assert (= (and b!2302192 ((_ is Cons!27406) (t!205926 suffix!886))) b!2302704))

(declare-fun b_lambda!73329 () Bool)

(assert (= b_lambda!73313 (or (and b!2302678 b_free!69527 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 (t!205927 tokens!456))))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302701 b_free!69531 (= (toChars!6062 (transformation!4393 (h!32809 (t!205928 rules!1750)))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302194 b_free!69503) (and b!2302173 b_free!69515 (= (toChars!6062 (transformation!4393 r!2363)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302172 b_free!69511 (= (toChars!6062 (transformation!4393 otherR!12)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302191 b_free!69507 (= (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) b_lambda!73329)))

(declare-fun b_lambda!73331 () Bool)

(assert (= b_lambda!73315 (or (and b!2302678 b_free!69527 (= (toChars!6062 (transformation!4393 (rule!6739 (h!32808 (t!205927 tokens!456))))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302701 b_free!69531 (= (toChars!6062 (transformation!4393 (h!32809 (t!205928 rules!1750)))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302194 b_free!69503) (and b!2302173 b_free!69515 (= (toChars!6062 (transformation!4393 r!2363)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302172 b_free!69511 (= (toChars!6062 (transformation!4393 otherR!12)) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) (and b!2302191 b_free!69507 (= (toChars!6062 (transformation!4393 (h!32809 rules!1750))) (toChars!6062 (transformation!4393 (rule!6739 (h!32808 tokens!456)))))) b_lambda!73331)))

(check-sat (not b!2302237) b_and!183405 tp_is_empty!10703 (not b_next!70211) (not d!681138) (not b!2302557) b_and!183445 b_and!183475 (not b!2302639) (not b!2302549) (not b!2302688) (not b_lambda!73329) (not b!2302558) (not b!2302556) (not b!2302449) (not b!2302684) (not d!681010) (not b!2302372) (not d!681142) (not b!2302644) (not d!681004) b_and!183477 (not b!2302699) (not b!2302703) (not b_next!70231) (not d!681086) (not b!2302243) (not b!2302664) (not b!2302374) (not b!2302275) b_and!183413 (not b!2302645) (not b!2302375) (not d!681000) (not b!2302685) (not b_next!70209) (not b_next!70205) (not b!2302371) (not d!681108) (not d!680998) (not b!2302446) (not b_next!70213) (not b!2302704) (not tb!137647) (not b_next!70229) b_and!183479 b_and!183443 (not b!2302700) (not bm!137062) b_and!183441 (not b!2302681) (not d!681096) (not d!681112) (not b!2302230) (not bm!137069) (not b_next!70219) (not b!2302271) (not d!681014) (not d!680996) (not b!2302662) (not d!681084) (not b!2302211) (not b!2302255) (not d!681058) (not d!681146) (not b!2302444) (not d!681008) b_and!183447 (not d!681140) (not d!681110) (not b!2302210) (not b!2302650) (not b!2302370) (not b!2302367) (not d!680986) (not b!2302689) (not b!2302686) (not b!2302677) (not b_next!70217) (not b!2302638) b_and!183473 (not b!2302440) (not d!681100) (not d!681022) (not d!681144) (not b_lambda!73319) (not b!2302680) (not b!2302637) (not b!2302242) (not b!2302225) (not b_next!70233) (not b_lambda!73331) (not b!2302236) (not b!2302369) (not b!2302565) (not b_next!70207) (not d!681134) b_and!183401 (not b!2302213) (not b!2302682) (not b!2302641) (not b!2302261) (not b!2302495) (not d!681104) (not d!681092) (not b!2302702) b_and!183409 (not b!2302448) (not b!2302254) (not d!680976) (not b!2302373) (not d!681088) (not b!2302551) (not d!681068) (not d!681072) (not b!2302676) (not tb!137663) (not b!2302253) (not b!2302690) (not b!2302408) (not b!2302643) (not b_next!70235) (not b!2302663) (not b!2302480) (not b_next!70215) (not b!2302272) (not d!681016) (not b!2302219) (not b!2302553) (not b!2302675))
(check-sat b_and!183477 (not b_next!70231) b_and!183413 (not b_next!70213) b_and!183441 (not b_next!70219) b_and!183447 (not b_next!70217) b_and!183473 b_and!183409 (not b_next!70235) (not b_next!70215) b_and!183405 (not b_next!70211) b_and!183445 b_and!183475 (not b_next!70209) (not b_next!70205) (not b_next!70229) b_and!183479 b_and!183443 (not b_next!70207) (not b_next!70233) b_and!183401)
