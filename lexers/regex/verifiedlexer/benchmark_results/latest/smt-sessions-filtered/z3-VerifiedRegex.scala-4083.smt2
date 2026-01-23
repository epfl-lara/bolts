; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218800 () Bool)

(assert start!218800)

(declare-fun b!2244320 () Bool)

(declare-fun b_free!65325 () Bool)

(declare-fun b_next!66029 () Bool)

(assert (=> b!2244320 (= b_free!65325 (not b_next!66029))))

(declare-fun tp!708198 () Bool)

(declare-fun b_and!175401 () Bool)

(assert (=> b!2244320 (= tp!708198 b_and!175401)))

(declare-fun b_free!65327 () Bool)

(declare-fun b_next!66031 () Bool)

(assert (=> b!2244320 (= b_free!65327 (not b_next!66031))))

(declare-fun tp!708190 () Bool)

(declare-fun b_and!175403 () Bool)

(assert (=> b!2244320 (= tp!708190 b_and!175403)))

(declare-fun b!2244327 () Bool)

(declare-fun b_free!65329 () Bool)

(declare-fun b_next!66033 () Bool)

(assert (=> b!2244327 (= b_free!65329 (not b_next!66033))))

(declare-fun tp!708196 () Bool)

(declare-fun b_and!175405 () Bool)

(assert (=> b!2244327 (= tp!708196 b_and!175405)))

(declare-fun b_free!65331 () Bool)

(declare-fun b_next!66035 () Bool)

(assert (=> b!2244327 (= b_free!65331 (not b_next!66035))))

(declare-fun tp!708205 () Bool)

(declare-fun b_and!175407 () Bool)

(assert (=> b!2244327 (= tp!708205 b_and!175407)))

(declare-fun b!2244312 () Bool)

(declare-fun b_free!65333 () Bool)

(declare-fun b_next!66037 () Bool)

(assert (=> b!2244312 (= b_free!65333 (not b_next!66037))))

(declare-fun tp!708192 () Bool)

(declare-fun b_and!175409 () Bool)

(assert (=> b!2244312 (= tp!708192 b_and!175409)))

(declare-fun b_free!65335 () Bool)

(declare-fun b_next!66039 () Bool)

(assert (=> b!2244312 (= b_free!65335 (not b_next!66039))))

(declare-fun tp!708199 () Bool)

(declare-fun b_and!175411 () Bool)

(assert (=> b!2244312 (= tp!708199 b_and!175411)))

(declare-fun b!2244315 () Bool)

(declare-fun b_free!65337 () Bool)

(declare-fun b_next!66041 () Bool)

(assert (=> b!2244315 (= b_free!65337 (not b_next!66041))))

(declare-fun tp!708188 () Bool)

(declare-fun b_and!175413 () Bool)

(assert (=> b!2244315 (= tp!708188 b_and!175413)))

(declare-fun b_free!65339 () Bool)

(declare-fun b_next!66043 () Bool)

(assert (=> b!2244315 (= b_free!65339 (not b_next!66043))))

(declare-fun tp!708203 () Bool)

(declare-fun b_and!175415 () Bool)

(assert (=> b!2244315 (= tp!708203 b_and!175415)))

(declare-fun b!2244309 () Bool)

(declare-fun res!958873 () Bool)

(declare-fun e!1435599 () Bool)

(assert (=> b!2244309 (=> (not res!958873) (not e!1435599))))

(declare-datatypes ((C!13236 0))(
  ( (C!13237 (val!7666 Int)) )
))
(declare-datatypes ((List!26625 0))(
  ( (Nil!26531) (Cons!26531 (h!31932 C!13236) (t!200227 List!26625)) )
))
(declare-fun otherP!12 () List!26625)

(declare-fun input!1722 () List!26625)

(declare-fun isPrefix!2187 (List!26625 List!26625) Bool)

(assert (=> b!2244309 (= res!958873 (isPrefix!2187 otherP!12 input!1722))))

(declare-fun b!2244310 () Bool)

(declare-fun e!1435603 () Bool)

(declare-fun e!1435588 () Bool)

(assert (=> b!2244310 (= e!1435603 e!1435588)))

(declare-fun res!958877 () Bool)

(assert (=> b!2244310 (=> (not res!958877) (not e!1435588))))

(declare-datatypes ((List!26626 0))(
  ( (Nil!26532) (Cons!26532 (h!31933 (_ BitVec 16)) (t!200228 List!26626)) )
))
(declare-datatypes ((TokenValue!4359 0))(
  ( (FloatLiteralValue!8718 (text!30958 List!26626)) (TokenValueExt!4358 (__x!17778 Int)) (Broken!21795 (value!133408 List!26626)) (Object!4452) (End!4359) (Def!4359) (Underscore!4359) (Match!4359) (Else!4359) (Error!4359) (Case!4359) (If!4359) (Extends!4359) (Abstract!4359) (Class!4359) (Val!4359) (DelimiterValue!8718 (del!4419 List!26626)) (KeywordValue!4365 (value!133409 List!26626)) (CommentValue!8718 (value!133410 List!26626)) (WhitespaceValue!8718 (value!133411 List!26626)) (IndentationValue!4359 (value!133412 List!26626)) (String!28898) (Int32!4359) (Broken!21796 (value!133413 List!26626)) (Boolean!4360) (Unit!39507) (OperatorValue!4362 (op!4419 List!26626)) (IdentifierValue!8718 (value!133414 List!26626)) (IdentifierValue!8719 (value!133415 List!26626)) (WhitespaceValue!8719 (value!133416 List!26626)) (True!8718) (False!8718) (Broken!21797 (value!133417 List!26626)) (Broken!21798 (value!133418 List!26626)) (True!8719) (RightBrace!4359) (RightBracket!4359) (Colon!4359) (Null!4359) (Comma!4359) (LeftBracket!4359) (False!8719) (LeftBrace!4359) (ImaginaryLiteralValue!4359 (text!30959 List!26626)) (StringLiteralValue!13077 (value!133419 List!26626)) (EOFValue!4359 (value!133420 List!26626)) (IdentValue!4359 (value!133421 List!26626)) (DelimiterValue!8719 (value!133422 List!26626)) (DedentValue!4359 (value!133423 List!26626)) (NewLineValue!4359 (value!133424 List!26626)) (IntegerValue!13077 (value!133425 (_ BitVec 32)) (text!30960 List!26626)) (IntegerValue!13078 (value!133426 Int) (text!30961 List!26626)) (Times!4359) (Or!4359) (Equal!4359) (Minus!4359) (Broken!21799 (value!133427 List!26626)) (And!4359) (Div!4359) (LessEqual!4359) (Mod!4359) (Concat!10904) (Not!4359) (Plus!4359) (SpaceValue!4359 (value!133428 List!26626)) (IntegerValue!13079 (value!133429 Int) (text!30962 List!26626)) (StringLiteralValue!13078 (text!30963 List!26626)) (FloatLiteralValue!8719 (text!30964 List!26626)) (BytesLiteralValue!4359 (value!133430 List!26626)) (CommentValue!8719 (value!133431 List!26626)) (StringLiteralValue!13079 (value!133432 List!26626)) (ErrorTokenValue!4359 (msg!4420 List!26626)) )
))
(declare-datatypes ((IArray!17089 0))(
  ( (IArray!17090 (innerList!8602 List!26625)) )
))
(declare-datatypes ((Conc!8542 0))(
  ( (Node!8542 (left!20173 Conc!8542) (right!20503 Conc!8542) (csize!17314 Int) (cheight!8753 Int)) (Leaf!12626 (xs!11484 IArray!17089) (csize!17315 Int)) (Empty!8542) )
))
(declare-datatypes ((BalanceConc!16812 0))(
  ( (BalanceConc!16813 (c!357234 Conc!8542)) )
))
(declare-datatypes ((Regex!6545 0))(
  ( (ElementMatch!6545 (c!357235 C!13236)) (Concat!10905 (regOne!13602 Regex!6545) (regTwo!13602 Regex!6545)) (EmptyExpr!6545) (Star!6545 (reg!6874 Regex!6545)) (EmptyLang!6545) (Union!6545 (regOne!13603 Regex!6545) (regTwo!13603 Regex!6545)) )
))
(declare-datatypes ((String!28899 0))(
  ( (String!28900 (value!133433 String)) )
))
(declare-datatypes ((TokenValueInjection!8258 0))(
  ( (TokenValueInjection!8259 (toValue!5927 Int) (toChars!5786 Int)) )
))
(declare-datatypes ((Rule!8194 0))(
  ( (Rule!8195 (regex!4197 Regex!6545) (tag!4687 String!28899) (isSeparator!4197 Bool) (transformation!4197 TokenValueInjection!8258)) )
))
(declare-datatypes ((Token!7872 0))(
  ( (Token!7873 (value!133434 TokenValue!4359) (rule!6495 Rule!8194) (size!20741 Int) (originalCharacters!4967 List!26625)) )
))
(declare-datatypes ((List!26627 0))(
  ( (Nil!26533) (Cons!26533 (h!31934 Token!7872) (t!200229 List!26627)) )
))
(declare-datatypes ((IArray!17091 0))(
  ( (IArray!17092 (innerList!8603 List!26627)) )
))
(declare-datatypes ((Conc!8543 0))(
  ( (Node!8543 (left!20174 Conc!8543) (right!20504 Conc!8543) (csize!17316 Int) (cheight!8754 Int)) (Leaf!12627 (xs!11485 IArray!17091) (csize!17317 Int)) (Empty!8543) )
))
(declare-datatypes ((BalanceConc!16814 0))(
  ( (BalanceConc!16815 (c!357236 Conc!8543)) )
))
(declare-datatypes ((tuple2!25992 0))(
  ( (tuple2!25993 (_1!15506 BalanceConc!16814) (_2!15506 BalanceConc!16812)) )
))
(declare-fun lt!835113 () tuple2!25992)

(declare-fun tokens!456 () List!26627)

(declare-fun suffix!886 () List!26625)

(declare-datatypes ((tuple2!25994 0))(
  ( (tuple2!25995 (_1!15507 List!26627) (_2!15507 List!26625)) )
))
(declare-fun list!10142 (BalanceConc!16814) List!26627)

(declare-fun list!10143 (BalanceConc!16812) List!26625)

(assert (=> b!2244310 (= res!958877 (= (tuple2!25995 (list!10142 (_1!15506 lt!835113)) (list!10143 (_2!15506 lt!835113))) (tuple2!25995 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3794 0))(
  ( (LexerInterfaceExt!3791 (__x!17779 Int)) (Lexer!3792) )
))
(declare-fun thiss!16613 () LexerInterface!3794)

(declare-datatypes ((List!26628 0))(
  ( (Nil!26534) (Cons!26534 (h!31935 Rule!8194) (t!200230 List!26628)) )
))
(declare-fun rules!1750 () List!26628)

(declare-fun lex!1633 (LexerInterface!3794 List!26628 BalanceConc!16812) tuple2!25992)

(declare-fun seqFromList!2901 (List!26625) BalanceConc!16812)

(assert (=> b!2244310 (= lt!835113 (lex!1633 thiss!16613 rules!1750 (seqFromList!2901 input!1722)))))

(declare-fun b!2244311 () Bool)

(declare-fun res!958876 () Bool)

(assert (=> b!2244311 (=> (not res!958876) (not e!1435599))))

(declare-fun r!2363 () Rule!8194)

(declare-fun otherR!12 () Rule!8194)

(assert (=> b!2244311 (= res!958876 (not (= r!2363 otherR!12)))))

(declare-fun e!1435593 () Bool)

(assert (=> b!2244312 (= e!1435593 (and tp!708192 tp!708199))))

(declare-fun b!2244314 () Bool)

(declare-fun res!958871 () Bool)

(assert (=> b!2244314 (=> (not res!958871) (not e!1435603))))

(declare-fun contains!4544 (List!26628 Rule!8194) Bool)

(assert (=> b!2244314 (= res!958871 (contains!4544 rules!1750 r!2363))))

(declare-fun e!1435590 () Bool)

(assert (=> b!2244315 (= e!1435590 (and tp!708188 tp!708203))))

(declare-fun b!2244316 () Bool)

(declare-fun res!958870 () Bool)

(assert (=> b!2244316 (=> (not res!958870) (not e!1435603))))

(declare-fun rulesInvariant!3296 (LexerInterface!3794 List!26628) Bool)

(assert (=> b!2244316 (= res!958870 (rulesInvariant!3296 thiss!16613 rules!1750))))

(declare-fun b!2244317 () Bool)

(assert (=> b!2244317 (= e!1435588 e!1435599)))

(declare-fun res!958881 () Bool)

(assert (=> b!2244317 (=> (not res!958881) (not e!1435599))))

(declare-fun e!1435586 () Bool)

(assert (=> b!2244317 (= res!958881 e!1435586)))

(declare-fun res!958878 () Bool)

(assert (=> b!2244317 (=> res!958878 e!1435586)))

(declare-fun lt!835114 () Bool)

(assert (=> b!2244317 (= res!958878 lt!835114)))

(declare-fun isEmpty!14935 (List!26627) Bool)

(assert (=> b!2244317 (= lt!835114 (isEmpty!14935 tokens!456))))

(declare-fun b!2244318 () Bool)

(declare-fun res!958874 () Bool)

(assert (=> b!2244318 (=> (not res!958874) (not e!1435603))))

(assert (=> b!2244318 (= res!958874 (contains!4544 rules!1750 otherR!12))))

(declare-fun b!2244319 () Bool)

(assert (=> b!2244319 (= e!1435599 (not (or lt!835114 (not (= tokens!456 Nil!26533)))))))

(declare-fun ruleValid!1289 (LexerInterface!3794 Rule!8194) Bool)

(assert (=> b!2244319 (ruleValid!1289 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39508 0))(
  ( (Unit!39509) )
))
(declare-fun lt!835112 () Unit!39508)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!696 (LexerInterface!3794 Rule!8194 List!26628) Unit!39508)

(assert (=> b!2244319 (= lt!835112 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!696 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1435602 () Bool)

(assert (=> b!2244320 (= e!1435602 (and tp!708198 tp!708190))))

(declare-fun e!1435585 () Bool)

(declare-fun tp!708200 () Bool)

(declare-fun e!1435591 () Bool)

(declare-fun b!2244321 () Bool)

(declare-fun inv!21 (TokenValue!4359) Bool)

(assert (=> b!2244321 (= e!1435591 (and (inv!21 (value!133434 (h!31934 tokens!456))) e!1435585 tp!708200))))

(declare-fun b!2244322 () Bool)

(declare-fun res!958880 () Bool)

(assert (=> b!2244322 (=> (not res!958880) (not e!1435603))))

(declare-fun isEmpty!14936 (List!26628) Bool)

(assert (=> b!2244322 (= res!958880 (not (isEmpty!14936 rules!1750)))))

(declare-fun e!1435587 () Bool)

(declare-fun tp!708189 () Bool)

(declare-fun b!2244323 () Bool)

(declare-fun inv!36057 (String!28899) Bool)

(declare-fun inv!36060 (TokenValueInjection!8258) Bool)

(assert (=> b!2244323 (= e!1435585 (and tp!708189 (inv!36057 (tag!4687 (rule!6495 (h!31934 tokens!456)))) (inv!36060 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) e!1435587))))

(declare-fun res!958879 () Bool)

(assert (=> start!218800 (=> (not res!958879) (not e!1435603))))

(get-info :version)

(assert (=> start!218800 (= res!958879 ((_ is Lexer!3792) thiss!16613))))

(assert (=> start!218800 e!1435603))

(assert (=> start!218800 true))

(declare-fun e!1435589 () Bool)

(assert (=> start!218800 e!1435589))

(declare-fun e!1435598 () Bool)

(assert (=> start!218800 e!1435598))

(declare-fun e!1435604 () Bool)

(assert (=> start!218800 e!1435604))

(declare-fun e!1435595 () Bool)

(assert (=> start!218800 e!1435595))

(declare-fun e!1435600 () Bool)

(assert (=> start!218800 e!1435600))

(declare-fun e!1435607 () Bool)

(assert (=> start!218800 e!1435607))

(declare-fun e!1435592 () Bool)

(assert (=> start!218800 e!1435592))

(declare-fun b!2244313 () Bool)

(declare-fun tp!708201 () Bool)

(declare-fun e!1435601 () Bool)

(assert (=> b!2244313 (= e!1435601 (and tp!708201 (inv!36057 (tag!4687 (h!31935 rules!1750))) (inv!36060 (transformation!4197 (h!31935 rules!1750))) e!1435593))))

(declare-fun b!2244324 () Bool)

(declare-fun res!958875 () Bool)

(assert (=> b!2244324 (=> (not res!958875) (not e!1435599))))

(declare-fun e!1435606 () Bool)

(assert (=> b!2244324 (= res!958875 e!1435606)))

(declare-fun res!958872 () Bool)

(assert (=> b!2244324 (=> res!958872 e!1435606)))

(assert (=> b!2244324 (= res!958872 lt!835114)))

(declare-fun b!2244325 () Bool)

(declare-fun tp!708194 () Bool)

(assert (=> b!2244325 (= e!1435600 (and e!1435601 tp!708194))))

(declare-fun b!2244326 () Bool)

(declare-fun tp_is_empty!10311 () Bool)

(declare-fun tp!708191 () Bool)

(assert (=> b!2244326 (= e!1435604 (and tp_is_empty!10311 tp!708191))))

(assert (=> b!2244327 (= e!1435587 (and tp!708196 tp!708205))))

(declare-fun b!2244328 () Bool)

(declare-fun head!4752 (List!26627) Token!7872)

(assert (=> b!2244328 (= e!1435606 (= (rule!6495 (head!4752 tokens!456)) r!2363))))

(declare-fun b!2244329 () Bool)

(declare-fun tp!708204 () Bool)

(assert (=> b!2244329 (= e!1435598 (and tp!708204 (inv!36057 (tag!4687 otherR!12)) (inv!36060 (transformation!4197 otherR!12)) e!1435602))))

(declare-fun b!2244330 () Bool)

(declare-fun size!20742 (BalanceConc!16812) Int)

(declare-fun charsOf!2585 (Token!7872) BalanceConc!16812)

(declare-fun size!20743 (List!26625) Int)

(assert (=> b!2244330 (= e!1435586 (<= (size!20742 (charsOf!2585 (head!4752 tokens!456))) (size!20743 otherP!12)))))

(declare-fun b!2244331 () Bool)

(declare-fun tp!708193 () Bool)

(assert (=> b!2244331 (= e!1435595 (and tp_is_empty!10311 tp!708193))))

(declare-fun b!2244332 () Bool)

(declare-fun tp!708197 () Bool)

(assert (=> b!2244332 (= e!1435589 (and tp_is_empty!10311 tp!708197))))

(declare-fun b!2244333 () Bool)

(declare-fun tp!708195 () Bool)

(declare-fun inv!36061 (Token!7872) Bool)

(assert (=> b!2244333 (= e!1435592 (and (inv!36061 (h!31934 tokens!456)) e!1435591 tp!708195))))

(declare-fun b!2244334 () Bool)

(declare-fun tp!708202 () Bool)

(assert (=> b!2244334 (= e!1435607 (and tp!708202 (inv!36057 (tag!4687 r!2363)) (inv!36060 (transformation!4197 r!2363)) e!1435590))))

(assert (= (and start!218800 res!958879) b!2244322))

(assert (= (and b!2244322 res!958880) b!2244316))

(assert (= (and b!2244316 res!958870) b!2244314))

(assert (= (and b!2244314 res!958871) b!2244318))

(assert (= (and b!2244318 res!958874) b!2244310))

(assert (= (and b!2244310 res!958877) b!2244317))

(assert (= (and b!2244317 (not res!958878)) b!2244330))

(assert (= (and b!2244317 res!958881) b!2244324))

(assert (= (and b!2244324 (not res!958872)) b!2244328))

(assert (= (and b!2244324 res!958875) b!2244309))

(assert (= (and b!2244309 res!958873) b!2244311))

(assert (= (and b!2244311 res!958876) b!2244319))

(assert (= (and start!218800 ((_ is Cons!26531) input!1722)) b!2244332))

(assert (= b!2244329 b!2244320))

(assert (= start!218800 b!2244329))

(assert (= (and start!218800 ((_ is Cons!26531) suffix!886)) b!2244326))

(assert (= (and start!218800 ((_ is Cons!26531) otherP!12)) b!2244331))

(assert (= b!2244313 b!2244312))

(assert (= b!2244325 b!2244313))

(assert (= (and start!218800 ((_ is Cons!26534) rules!1750)) b!2244325))

(assert (= b!2244334 b!2244315))

(assert (= start!218800 b!2244334))

(assert (= b!2244323 b!2244327))

(assert (= b!2244321 b!2244323))

(assert (= b!2244333 b!2244321))

(assert (= (and start!218800 ((_ is Cons!26533) tokens!456)) b!2244333))

(declare-fun m!2676255 () Bool)

(assert (=> b!2244309 m!2676255))

(declare-fun m!2676257 () Bool)

(assert (=> b!2244314 m!2676257))

(declare-fun m!2676259 () Bool)

(assert (=> b!2244334 m!2676259))

(declare-fun m!2676261 () Bool)

(assert (=> b!2244334 m!2676261))

(declare-fun m!2676263 () Bool)

(assert (=> b!2244310 m!2676263))

(declare-fun m!2676265 () Bool)

(assert (=> b!2244310 m!2676265))

(declare-fun m!2676267 () Bool)

(assert (=> b!2244310 m!2676267))

(assert (=> b!2244310 m!2676267))

(declare-fun m!2676269 () Bool)

(assert (=> b!2244310 m!2676269))

(declare-fun m!2676271 () Bool)

(assert (=> b!2244330 m!2676271))

(assert (=> b!2244330 m!2676271))

(declare-fun m!2676273 () Bool)

(assert (=> b!2244330 m!2676273))

(assert (=> b!2244330 m!2676273))

(declare-fun m!2676275 () Bool)

(assert (=> b!2244330 m!2676275))

(declare-fun m!2676277 () Bool)

(assert (=> b!2244330 m!2676277))

(declare-fun m!2676279 () Bool)

(assert (=> b!2244316 m!2676279))

(declare-fun m!2676281 () Bool)

(assert (=> b!2244319 m!2676281))

(declare-fun m!2676283 () Bool)

(assert (=> b!2244319 m!2676283))

(declare-fun m!2676285 () Bool)

(assert (=> b!2244329 m!2676285))

(declare-fun m!2676287 () Bool)

(assert (=> b!2244329 m!2676287))

(declare-fun m!2676289 () Bool)

(assert (=> b!2244333 m!2676289))

(assert (=> b!2244328 m!2676271))

(declare-fun m!2676291 () Bool)

(assert (=> b!2244317 m!2676291))

(declare-fun m!2676293 () Bool)

(assert (=> b!2244313 m!2676293))

(declare-fun m!2676295 () Bool)

(assert (=> b!2244313 m!2676295))

(declare-fun m!2676297 () Bool)

(assert (=> b!2244321 m!2676297))

(declare-fun m!2676299 () Bool)

(assert (=> b!2244318 m!2676299))

(declare-fun m!2676301 () Bool)

(assert (=> b!2244323 m!2676301))

(declare-fun m!2676303 () Bool)

(assert (=> b!2244323 m!2676303))

(declare-fun m!2676305 () Bool)

(assert (=> b!2244322 m!2676305))

(check-sat (not b!2244322) b_and!175409 b_and!175405 (not b_next!66041) (not b!2244314) (not b_next!66039) (not b!2244334) (not b!2244326) (not b!2244328) (not b!2244310) b_and!175411 b_and!175401 (not b!2244316) (not b_next!66029) b_and!175415 b_and!175407 (not b!2244317) (not b_next!66031) (not b_next!66037) (not b!2244318) (not b!2244323) (not b!2244309) (not b!2244329) (not b_next!66033) (not b!2244331) b_and!175403 (not b!2244319) (not b_next!66043) (not b!2244330) (not b_next!66035) b_and!175413 (not b!2244325) tp_is_empty!10311 (not b!2244332) (not b!2244321) (not b!2244313) (not b!2244333))
(check-sat (not b_next!66037) b_and!175409 b_and!175405 (not b_next!66041) (not b_next!66033) b_and!175403 (not b_next!66039) (not b_next!66043) (not b_next!66035) b_and!175413 b_and!175411 b_and!175401 (not b_next!66029) b_and!175415 b_and!175407 (not b_next!66031))
(get-model)

(declare-fun d!666388 () Bool)

(declare-fun lt!835117 () Int)

(assert (=> d!666388 (= lt!835117 (size!20743 (list!10143 (charsOf!2585 (head!4752 tokens!456)))))))

(declare-fun size!20745 (Conc!8542) Int)

(assert (=> d!666388 (= lt!835117 (size!20745 (c!357234 (charsOf!2585 (head!4752 tokens!456)))))))

(assert (=> d!666388 (= (size!20742 (charsOf!2585 (head!4752 tokens!456))) lt!835117)))

(declare-fun bs!454770 () Bool)

(assert (= bs!454770 d!666388))

(assert (=> bs!454770 m!2676273))

(declare-fun m!2676307 () Bool)

(assert (=> bs!454770 m!2676307))

(assert (=> bs!454770 m!2676307))

(declare-fun m!2676309 () Bool)

(assert (=> bs!454770 m!2676309))

(declare-fun m!2676311 () Bool)

(assert (=> bs!454770 m!2676311))

(assert (=> b!2244330 d!666388))

(declare-fun d!666390 () Bool)

(declare-fun lt!835120 () BalanceConc!16812)

(assert (=> d!666390 (= (list!10143 lt!835120) (originalCharacters!4967 (head!4752 tokens!456)))))

(declare-fun dynLambda!11562 (Int TokenValue!4359) BalanceConc!16812)

(assert (=> d!666390 (= lt!835120 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456)))) (value!133434 (head!4752 tokens!456))))))

(assert (=> d!666390 (= (charsOf!2585 (head!4752 tokens!456)) lt!835120)))

(declare-fun b_lambda!71821 () Bool)

(assert (=> (not b_lambda!71821) (not d!666390)))

(declare-fun t!200232 () Bool)

(declare-fun tb!132943 () Bool)

(assert (=> (and b!2244320 (= (toChars!5786 (transformation!4197 otherR!12)) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200232) tb!132943))

(declare-fun b!2244339 () Bool)

(declare-fun e!1435610 () Bool)

(declare-fun tp!708208 () Bool)

(declare-fun inv!36064 (Conc!8542) Bool)

(assert (=> b!2244339 (= e!1435610 (and (inv!36064 (c!357234 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456)))) (value!133434 (head!4752 tokens!456))))) tp!708208))))

(declare-fun result!162030 () Bool)

(declare-fun inv!36065 (BalanceConc!16812) Bool)

(assert (=> tb!132943 (= result!162030 (and (inv!36065 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456)))) (value!133434 (head!4752 tokens!456)))) e!1435610))))

(assert (= tb!132943 b!2244339))

(declare-fun m!2676313 () Bool)

(assert (=> b!2244339 m!2676313))

(declare-fun m!2676315 () Bool)

(assert (=> tb!132943 m!2676315))

(assert (=> d!666390 t!200232))

(declare-fun b_and!175417 () Bool)

(assert (= b_and!175403 (and (=> t!200232 result!162030) b_and!175417)))

(declare-fun t!200234 () Bool)

(declare-fun tb!132945 () Bool)

(assert (=> (and b!2244327 (= (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200234) tb!132945))

(declare-fun result!162034 () Bool)

(assert (= result!162034 result!162030))

(assert (=> d!666390 t!200234))

(declare-fun b_and!175419 () Bool)

(assert (= b_and!175407 (and (=> t!200234 result!162034) b_and!175419)))

(declare-fun t!200236 () Bool)

(declare-fun tb!132947 () Bool)

(assert (=> (and b!2244312 (= (toChars!5786 (transformation!4197 (h!31935 rules!1750))) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200236) tb!132947))

(declare-fun result!162036 () Bool)

(assert (= result!162036 result!162030))

(assert (=> d!666390 t!200236))

(declare-fun b_and!175421 () Bool)

(assert (= b_and!175411 (and (=> t!200236 result!162036) b_and!175421)))

(declare-fun tb!132949 () Bool)

(declare-fun t!200238 () Bool)

(assert (=> (and b!2244315 (= (toChars!5786 (transformation!4197 r!2363)) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200238) tb!132949))

(declare-fun result!162038 () Bool)

(assert (= result!162038 result!162030))

(assert (=> d!666390 t!200238))

(declare-fun b_and!175423 () Bool)

(assert (= b_and!175415 (and (=> t!200238 result!162038) b_and!175423)))

(declare-fun m!2676317 () Bool)

(assert (=> d!666390 m!2676317))

(declare-fun m!2676319 () Bool)

(assert (=> d!666390 m!2676319))

(assert (=> b!2244330 d!666390))

(declare-fun d!666392 () Bool)

(assert (=> d!666392 (= (head!4752 tokens!456) (h!31934 tokens!456))))

(assert (=> b!2244330 d!666392))

(declare-fun d!666394 () Bool)

(declare-fun lt!835123 () Int)

(assert (=> d!666394 (>= lt!835123 0)))

(declare-fun e!1435613 () Int)

(assert (=> d!666394 (= lt!835123 e!1435613)))

(declare-fun c!357239 () Bool)

(assert (=> d!666394 (= c!357239 ((_ is Nil!26531) otherP!12))))

(assert (=> d!666394 (= (size!20743 otherP!12) lt!835123)))

(declare-fun b!2244344 () Bool)

(assert (=> b!2244344 (= e!1435613 0)))

(declare-fun b!2244345 () Bool)

(assert (=> b!2244345 (= e!1435613 (+ 1 (size!20743 (t!200227 otherP!12))))))

(assert (= (and d!666394 c!357239) b!2244344))

(assert (= (and d!666394 (not c!357239)) b!2244345))

(declare-fun m!2676321 () Bool)

(assert (=> b!2244345 m!2676321))

(assert (=> b!2244330 d!666394))

(declare-fun b!2244368 () Bool)

(declare-fun e!1435630 () Bool)

(declare-fun tail!3237 (List!26625) List!26625)

(assert (=> b!2244368 (= e!1435630 (isPrefix!2187 (tail!3237 otherP!12) (tail!3237 input!1722)))))

(declare-fun b!2244369 () Bool)

(declare-fun e!1435629 () Bool)

(assert (=> b!2244369 (= e!1435629 (>= (size!20743 input!1722) (size!20743 otherP!12)))))

(declare-fun d!666398 () Bool)

(assert (=> d!666398 e!1435629))

(declare-fun res!958910 () Bool)

(assert (=> d!666398 (=> res!958910 e!1435629)))

(declare-fun lt!835129 () Bool)

(assert (=> d!666398 (= res!958910 (not lt!835129))))

(declare-fun e!1435631 () Bool)

(assert (=> d!666398 (= lt!835129 e!1435631)))

(declare-fun res!958911 () Bool)

(assert (=> d!666398 (=> res!958911 e!1435631)))

(assert (=> d!666398 (= res!958911 ((_ is Nil!26531) otherP!12))))

(assert (=> d!666398 (= (isPrefix!2187 otherP!12 input!1722) lt!835129)))

(declare-fun b!2244366 () Bool)

(assert (=> b!2244366 (= e!1435631 e!1435630)))

(declare-fun res!958913 () Bool)

(assert (=> b!2244366 (=> (not res!958913) (not e!1435630))))

(assert (=> b!2244366 (= res!958913 (not ((_ is Nil!26531) input!1722)))))

(declare-fun b!2244367 () Bool)

(declare-fun res!958912 () Bool)

(assert (=> b!2244367 (=> (not res!958912) (not e!1435630))))

(declare-fun head!4754 (List!26625) C!13236)

(assert (=> b!2244367 (= res!958912 (= (head!4754 otherP!12) (head!4754 input!1722)))))

(assert (= (and d!666398 (not res!958911)) b!2244366))

(assert (= (and b!2244366 res!958913) b!2244367))

(assert (= (and b!2244367 res!958912) b!2244368))

(assert (= (and d!666398 (not res!958910)) b!2244369))

(declare-fun m!2676335 () Bool)

(assert (=> b!2244368 m!2676335))

(declare-fun m!2676337 () Bool)

(assert (=> b!2244368 m!2676337))

(assert (=> b!2244368 m!2676335))

(assert (=> b!2244368 m!2676337))

(declare-fun m!2676339 () Bool)

(assert (=> b!2244368 m!2676339))

(declare-fun m!2676341 () Bool)

(assert (=> b!2244369 m!2676341))

(assert (=> b!2244369 m!2676277))

(declare-fun m!2676343 () Bool)

(assert (=> b!2244367 m!2676343))

(declare-fun m!2676345 () Bool)

(assert (=> b!2244367 m!2676345))

(assert (=> b!2244309 d!666398))

(declare-fun d!666402 () Bool)

(declare-fun lt!835132 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3540 (List!26628) (InoxSet Rule!8194))

(assert (=> d!666402 (= lt!835132 (select (content!3540 rules!1750) otherR!12))))

(declare-fun e!1435642 () Bool)

(assert (=> d!666402 (= lt!835132 e!1435642)))

(declare-fun res!958925 () Bool)

(assert (=> d!666402 (=> (not res!958925) (not e!1435642))))

(assert (=> d!666402 (= res!958925 ((_ is Cons!26534) rules!1750))))

(assert (=> d!666402 (= (contains!4544 rules!1750 otherR!12) lt!835132)))

(declare-fun b!2244385 () Bool)

(declare-fun e!1435643 () Bool)

(assert (=> b!2244385 (= e!1435642 e!1435643)))

(declare-fun res!958924 () Bool)

(assert (=> b!2244385 (=> res!958924 e!1435643)))

(assert (=> b!2244385 (= res!958924 (= (h!31935 rules!1750) otherR!12))))

(declare-fun b!2244386 () Bool)

(assert (=> b!2244386 (= e!1435643 (contains!4544 (t!200230 rules!1750) otherR!12))))

(assert (= (and d!666402 res!958925) b!2244385))

(assert (= (and b!2244385 (not res!958924)) b!2244386))

(declare-fun m!2676359 () Bool)

(assert (=> d!666402 m!2676359))

(declare-fun m!2676361 () Bool)

(assert (=> d!666402 m!2676361))

(declare-fun m!2676363 () Bool)

(assert (=> b!2244386 m!2676363))

(assert (=> b!2244318 d!666402))

(declare-fun d!666408 () Bool)

(assert (=> d!666408 (= (inv!36057 (tag!4687 otherR!12)) (= (mod (str.len (value!133433 (tag!4687 otherR!12))) 2) 0))))

(assert (=> b!2244329 d!666408))

(declare-fun d!666412 () Bool)

(declare-fun res!958928 () Bool)

(declare-fun e!1435646 () Bool)

(assert (=> d!666412 (=> (not res!958928) (not e!1435646))))

(declare-fun semiInverseModEq!1696 (Int Int) Bool)

(assert (=> d!666412 (= res!958928 (semiInverseModEq!1696 (toChars!5786 (transformation!4197 otherR!12)) (toValue!5927 (transformation!4197 otherR!12))))))

(assert (=> d!666412 (= (inv!36060 (transformation!4197 otherR!12)) e!1435646)))

(declare-fun b!2244389 () Bool)

(declare-fun equivClasses!1615 (Int Int) Bool)

(assert (=> b!2244389 (= e!1435646 (equivClasses!1615 (toChars!5786 (transformation!4197 otherR!12)) (toValue!5927 (transformation!4197 otherR!12))))))

(assert (= (and d!666412 res!958928) b!2244389))

(declare-fun m!2676369 () Bool)

(assert (=> d!666412 m!2676369))

(declare-fun m!2676371 () Bool)

(assert (=> b!2244389 m!2676371))

(assert (=> b!2244329 d!666412))

(declare-fun d!666416 () Bool)

(declare-fun res!958933 () Bool)

(declare-fun e!1435649 () Bool)

(assert (=> d!666416 (=> (not res!958933) (not e!1435649))))

(declare-fun validRegex!2446 (Regex!6545) Bool)

(assert (=> d!666416 (= res!958933 (validRegex!2446 (regex!4197 r!2363)))))

(assert (=> d!666416 (= (ruleValid!1289 thiss!16613 r!2363) e!1435649)))

(declare-fun b!2244394 () Bool)

(declare-fun res!958934 () Bool)

(assert (=> b!2244394 (=> (not res!958934) (not e!1435649))))

(declare-fun nullable!1794 (Regex!6545) Bool)

(assert (=> b!2244394 (= res!958934 (not (nullable!1794 (regex!4197 r!2363))))))

(declare-fun b!2244395 () Bool)

(assert (=> b!2244395 (= e!1435649 (not (= (tag!4687 r!2363) (String!28900 ""))))))

(assert (= (and d!666416 res!958933) b!2244394))

(assert (= (and b!2244394 res!958934) b!2244395))

(declare-fun m!2676373 () Bool)

(assert (=> d!666416 m!2676373))

(declare-fun m!2676375 () Bool)

(assert (=> b!2244394 m!2676375))

(assert (=> b!2244319 d!666416))

(declare-fun d!666418 () Bool)

(assert (=> d!666418 (ruleValid!1289 thiss!16613 r!2363)))

(declare-fun lt!835135 () Unit!39508)

(declare-fun choose!13153 (LexerInterface!3794 Rule!8194 List!26628) Unit!39508)

(assert (=> d!666418 (= lt!835135 (choose!13153 thiss!16613 r!2363 rules!1750))))

(assert (=> d!666418 (contains!4544 rules!1750 r!2363)))

(assert (=> d!666418 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!696 thiss!16613 r!2363 rules!1750) lt!835135)))

(declare-fun bs!454773 () Bool)

(assert (= bs!454773 d!666418))

(assert (=> bs!454773 m!2676281))

(declare-fun m!2676377 () Bool)

(assert (=> bs!454773 m!2676377))

(assert (=> bs!454773 m!2676257))

(assert (=> b!2244319 d!666418))

(declare-fun d!666420 () Bool)

(assert (=> d!666420 (= (isEmpty!14936 rules!1750) ((_ is Nil!26534) rules!1750))))

(assert (=> b!2244322 d!666420))

(declare-fun d!666422 () Bool)

(declare-fun res!958939 () Bool)

(declare-fun e!1435652 () Bool)

(assert (=> d!666422 (=> (not res!958939) (not e!1435652))))

(declare-fun isEmpty!14939 (List!26625) Bool)

(assert (=> d!666422 (= res!958939 (not (isEmpty!14939 (originalCharacters!4967 (h!31934 tokens!456)))))))

(assert (=> d!666422 (= (inv!36061 (h!31934 tokens!456)) e!1435652)))

(declare-fun b!2244400 () Bool)

(declare-fun res!958940 () Bool)

(assert (=> b!2244400 (=> (not res!958940) (not e!1435652))))

(assert (=> b!2244400 (= res!958940 (= (originalCharacters!4967 (h!31934 tokens!456)) (list!10143 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (value!133434 (h!31934 tokens!456))))))))

(declare-fun b!2244401 () Bool)

(assert (=> b!2244401 (= e!1435652 (= (size!20741 (h!31934 tokens!456)) (size!20743 (originalCharacters!4967 (h!31934 tokens!456)))))))

(assert (= (and d!666422 res!958939) b!2244400))

(assert (= (and b!2244400 res!958940) b!2244401))

(declare-fun b_lambda!71825 () Bool)

(assert (=> (not b_lambda!71825) (not b!2244400)))

(declare-fun tb!132959 () Bool)

(declare-fun t!200248 () Bool)

(assert (=> (and b!2244320 (= (toChars!5786 (transformation!4197 otherR!12)) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200248) tb!132959))

(declare-fun b!2244402 () Bool)

(declare-fun e!1435653 () Bool)

(declare-fun tp!708212 () Bool)

(assert (=> b!2244402 (= e!1435653 (and (inv!36064 (c!357234 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (value!133434 (h!31934 tokens!456))))) tp!708212))))

(declare-fun result!162050 () Bool)

(assert (=> tb!132959 (= result!162050 (and (inv!36065 (dynLambda!11562 (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (value!133434 (h!31934 tokens!456)))) e!1435653))))

(assert (= tb!132959 b!2244402))

(declare-fun m!2676379 () Bool)

(assert (=> b!2244402 m!2676379))

(declare-fun m!2676381 () Bool)

(assert (=> tb!132959 m!2676381))

(assert (=> b!2244400 t!200248))

(declare-fun b_and!175433 () Bool)

(assert (= b_and!175417 (and (=> t!200248 result!162050) b_and!175433)))

(declare-fun t!200250 () Bool)

(declare-fun tb!132961 () Bool)

(assert (=> (and b!2244327 (= (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200250) tb!132961))

(declare-fun result!162052 () Bool)

(assert (= result!162052 result!162050))

(assert (=> b!2244400 t!200250))

(declare-fun b_and!175435 () Bool)

(assert (= b_and!175419 (and (=> t!200250 result!162052) b_and!175435)))

(declare-fun t!200252 () Bool)

(declare-fun tb!132963 () Bool)

(assert (=> (and b!2244312 (= (toChars!5786 (transformation!4197 (h!31935 rules!1750))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200252) tb!132963))

(declare-fun result!162054 () Bool)

(assert (= result!162054 result!162050))

(assert (=> b!2244400 t!200252))

(declare-fun b_and!175437 () Bool)

(assert (= b_and!175421 (and (=> t!200252 result!162054) b_and!175437)))

(declare-fun tb!132965 () Bool)

(declare-fun t!200254 () Bool)

(assert (=> (and b!2244315 (= (toChars!5786 (transformation!4197 r!2363)) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200254) tb!132965))

(declare-fun result!162056 () Bool)

(assert (= result!162056 result!162050))

(assert (=> b!2244400 t!200254))

(declare-fun b_and!175439 () Bool)

(assert (= b_and!175423 (and (=> t!200254 result!162056) b_and!175439)))

(declare-fun m!2676383 () Bool)

(assert (=> d!666422 m!2676383))

(declare-fun m!2676385 () Bool)

(assert (=> b!2244400 m!2676385))

(assert (=> b!2244400 m!2676385))

(declare-fun m!2676387 () Bool)

(assert (=> b!2244400 m!2676387))

(declare-fun m!2676389 () Bool)

(assert (=> b!2244401 m!2676389))

(assert (=> b!2244333 d!666422))

(declare-fun d!666424 () Bool)

(assert (=> d!666424 (= (inv!36057 (tag!4687 (rule!6495 (h!31934 tokens!456)))) (= (mod (str.len (value!133433 (tag!4687 (rule!6495 (h!31934 tokens!456))))) 2) 0))))

(assert (=> b!2244323 d!666424))

(declare-fun d!666426 () Bool)

(declare-fun res!958941 () Bool)

(declare-fun e!1435654 () Bool)

(assert (=> d!666426 (=> (not res!958941) (not e!1435654))))

(assert (=> d!666426 (= res!958941 (semiInverseModEq!1696 (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (toValue!5927 (transformation!4197 (rule!6495 (h!31934 tokens!456))))))))

(assert (=> d!666426 (= (inv!36060 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) e!1435654)))

(declare-fun b!2244403 () Bool)

(assert (=> b!2244403 (= e!1435654 (equivClasses!1615 (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))) (toValue!5927 (transformation!4197 (rule!6495 (h!31934 tokens!456))))))))

(assert (= (and d!666426 res!958941) b!2244403))

(declare-fun m!2676391 () Bool)

(assert (=> d!666426 m!2676391))

(declare-fun m!2676393 () Bool)

(assert (=> b!2244403 m!2676393))

(assert (=> b!2244323 d!666426))

(declare-fun d!666428 () Bool)

(declare-fun list!10146 (Conc!8543) List!26627)

(assert (=> d!666428 (= (list!10142 (_1!15506 lt!835113)) (list!10146 (c!357236 (_1!15506 lt!835113))))))

(declare-fun bs!454774 () Bool)

(assert (= bs!454774 d!666428))

(declare-fun m!2676395 () Bool)

(assert (=> bs!454774 m!2676395))

(assert (=> b!2244310 d!666428))

(declare-fun d!666430 () Bool)

(declare-fun list!10147 (Conc!8542) List!26625)

(assert (=> d!666430 (= (list!10143 (_2!15506 lt!835113)) (list!10147 (c!357234 (_2!15506 lt!835113))))))

(declare-fun bs!454775 () Bool)

(assert (= bs!454775 d!666430))

(declare-fun m!2676397 () Bool)

(assert (=> bs!454775 m!2676397))

(assert (=> b!2244310 d!666430))

(declare-fun b!2244533 () Bool)

(declare-fun e!1435747 () Bool)

(declare-fun lt!835157 () tuple2!25992)

(assert (=> b!2244533 (= e!1435747 (= (_2!15506 lt!835157) (seqFromList!2901 input!1722)))))

(declare-fun b!2244534 () Bool)

(declare-fun e!1435746 () Bool)

(assert (=> b!2244534 (= e!1435747 e!1435746)))

(declare-fun res!958984 () Bool)

(assert (=> b!2244534 (= res!958984 (< (size!20742 (_2!15506 lt!835157)) (size!20742 (seqFromList!2901 input!1722))))))

(assert (=> b!2244534 (=> (not res!958984) (not e!1435746))))

(declare-fun b!2244535 () Bool)

(declare-fun e!1435745 () Bool)

(declare-fun lexList!1040 (LexerInterface!3794 List!26628 List!26625) tuple2!25994)

(assert (=> b!2244535 (= e!1435745 (= (list!10143 (_2!15506 lt!835157)) (_2!15507 (lexList!1040 thiss!16613 rules!1750 (list!10143 (seqFromList!2901 input!1722))))))))

(declare-fun d!666432 () Bool)

(assert (=> d!666432 e!1435745))

(declare-fun res!958983 () Bool)

(assert (=> d!666432 (=> (not res!958983) (not e!1435745))))

(assert (=> d!666432 (= res!958983 e!1435747)))

(declare-fun c!357254 () Bool)

(declare-fun size!20747 (BalanceConc!16814) Int)

(assert (=> d!666432 (= c!357254 (> (size!20747 (_1!15506 lt!835157)) 0))))

(declare-fun lexTailRecV2!715 (LexerInterface!3794 List!26628 BalanceConc!16812 BalanceConc!16812 BalanceConc!16812 BalanceConc!16814) tuple2!25992)

(assert (=> d!666432 (= lt!835157 (lexTailRecV2!715 thiss!16613 rules!1750 (seqFromList!2901 input!1722) (BalanceConc!16813 Empty!8542) (seqFromList!2901 input!1722) (BalanceConc!16815 Empty!8543)))))

(assert (=> d!666432 (= (lex!1633 thiss!16613 rules!1750 (seqFromList!2901 input!1722)) lt!835157)))

(declare-fun b!2244536 () Bool)

(declare-fun res!958985 () Bool)

(assert (=> b!2244536 (=> (not res!958985) (not e!1435745))))

(assert (=> b!2244536 (= res!958985 (= (list!10142 (_1!15506 lt!835157)) (_1!15507 (lexList!1040 thiss!16613 rules!1750 (list!10143 (seqFromList!2901 input!1722))))))))

(declare-fun b!2244537 () Bool)

(declare-fun isEmpty!14940 (BalanceConc!16814) Bool)

(assert (=> b!2244537 (= e!1435746 (not (isEmpty!14940 (_1!15506 lt!835157))))))

(assert (= (and d!666432 c!357254) b!2244534))

(assert (= (and d!666432 (not c!357254)) b!2244533))

(assert (= (and b!2244534 res!958984) b!2244537))

(assert (= (and d!666432 res!958983) b!2244536))

(assert (= (and b!2244536 res!958985) b!2244535))

(declare-fun m!2676489 () Bool)

(assert (=> b!2244536 m!2676489))

(assert (=> b!2244536 m!2676267))

(declare-fun m!2676491 () Bool)

(assert (=> b!2244536 m!2676491))

(assert (=> b!2244536 m!2676491))

(declare-fun m!2676493 () Bool)

(assert (=> b!2244536 m!2676493))

(declare-fun m!2676495 () Bool)

(assert (=> b!2244534 m!2676495))

(assert (=> b!2244534 m!2676267))

(declare-fun m!2676497 () Bool)

(assert (=> b!2244534 m!2676497))

(declare-fun m!2676499 () Bool)

(assert (=> b!2244537 m!2676499))

(declare-fun m!2676501 () Bool)

(assert (=> b!2244535 m!2676501))

(assert (=> b!2244535 m!2676267))

(assert (=> b!2244535 m!2676491))

(assert (=> b!2244535 m!2676491))

(assert (=> b!2244535 m!2676493))

(declare-fun m!2676503 () Bool)

(assert (=> d!666432 m!2676503))

(assert (=> d!666432 m!2676267))

(assert (=> d!666432 m!2676267))

(declare-fun m!2676505 () Bool)

(assert (=> d!666432 m!2676505))

(assert (=> b!2244310 d!666432))

(declare-fun d!666474 () Bool)

(declare-fun fromListB!1306 (List!26625) BalanceConc!16812)

(assert (=> d!666474 (= (seqFromList!2901 input!1722) (fromListB!1306 input!1722))))

(declare-fun bs!454779 () Bool)

(assert (= bs!454779 d!666474))

(declare-fun m!2676507 () Bool)

(assert (=> bs!454779 m!2676507))

(assert (=> b!2244310 d!666474))

(declare-fun b!2244548 () Bool)

(declare-fun res!958988 () Bool)

(declare-fun e!1435755 () Bool)

(assert (=> b!2244548 (=> res!958988 e!1435755)))

(assert (=> b!2244548 (= res!958988 (not ((_ is IntegerValue!13079) (value!133434 (h!31934 tokens!456)))))))

(declare-fun e!1435754 () Bool)

(assert (=> b!2244548 (= e!1435754 e!1435755)))

(declare-fun b!2244549 () Bool)

(declare-fun e!1435756 () Bool)

(assert (=> b!2244549 (= e!1435756 e!1435754)))

(declare-fun c!357260 () Bool)

(assert (=> b!2244549 (= c!357260 ((_ is IntegerValue!13078) (value!133434 (h!31934 tokens!456))))))

(declare-fun d!666476 () Bool)

(declare-fun c!357259 () Bool)

(assert (=> d!666476 (= c!357259 ((_ is IntegerValue!13077) (value!133434 (h!31934 tokens!456))))))

(assert (=> d!666476 (= (inv!21 (value!133434 (h!31934 tokens!456))) e!1435756)))

(declare-fun b!2244550 () Bool)

(declare-fun inv!16 (TokenValue!4359) Bool)

(assert (=> b!2244550 (= e!1435756 (inv!16 (value!133434 (h!31934 tokens!456))))))

(declare-fun b!2244551 () Bool)

(declare-fun inv!15 (TokenValue!4359) Bool)

(assert (=> b!2244551 (= e!1435755 (inv!15 (value!133434 (h!31934 tokens!456))))))

(declare-fun b!2244552 () Bool)

(declare-fun inv!17 (TokenValue!4359) Bool)

(assert (=> b!2244552 (= e!1435754 (inv!17 (value!133434 (h!31934 tokens!456))))))

(assert (= (and d!666476 c!357259) b!2244550))

(assert (= (and d!666476 (not c!357259)) b!2244549))

(assert (= (and b!2244549 c!357260) b!2244552))

(assert (= (and b!2244549 (not c!357260)) b!2244548))

(assert (= (and b!2244548 (not res!958988)) b!2244551))

(declare-fun m!2676509 () Bool)

(assert (=> b!2244550 m!2676509))

(declare-fun m!2676511 () Bool)

(assert (=> b!2244551 m!2676511))

(declare-fun m!2676513 () Bool)

(assert (=> b!2244552 m!2676513))

(assert (=> b!2244321 d!666476))

(declare-fun d!666478 () Bool)

(declare-fun lt!835158 () Bool)

(assert (=> d!666478 (= lt!835158 (select (content!3540 rules!1750) r!2363))))

(declare-fun e!1435757 () Bool)

(assert (=> d!666478 (= lt!835158 e!1435757)))

(declare-fun res!958990 () Bool)

(assert (=> d!666478 (=> (not res!958990) (not e!1435757))))

(assert (=> d!666478 (= res!958990 ((_ is Cons!26534) rules!1750))))

(assert (=> d!666478 (= (contains!4544 rules!1750 r!2363) lt!835158)))

(declare-fun b!2244553 () Bool)

(declare-fun e!1435758 () Bool)

(assert (=> b!2244553 (= e!1435757 e!1435758)))

(declare-fun res!958989 () Bool)

(assert (=> b!2244553 (=> res!958989 e!1435758)))

(assert (=> b!2244553 (= res!958989 (= (h!31935 rules!1750) r!2363))))

(declare-fun b!2244554 () Bool)

(assert (=> b!2244554 (= e!1435758 (contains!4544 (t!200230 rules!1750) r!2363))))

(assert (= (and d!666478 res!958990) b!2244553))

(assert (= (and b!2244553 (not res!958989)) b!2244554))

(assert (=> d!666478 m!2676359))

(declare-fun m!2676515 () Bool)

(assert (=> d!666478 m!2676515))

(declare-fun m!2676517 () Bool)

(assert (=> b!2244554 m!2676517))

(assert (=> b!2244314 d!666478))

(declare-fun d!666480 () Bool)

(assert (=> d!666480 (= (inv!36057 (tag!4687 r!2363)) (= (mod (str.len (value!133433 (tag!4687 r!2363))) 2) 0))))

(assert (=> b!2244334 d!666480))

(declare-fun d!666482 () Bool)

(declare-fun res!958991 () Bool)

(declare-fun e!1435759 () Bool)

(assert (=> d!666482 (=> (not res!958991) (not e!1435759))))

(assert (=> d!666482 (= res!958991 (semiInverseModEq!1696 (toChars!5786 (transformation!4197 r!2363)) (toValue!5927 (transformation!4197 r!2363))))))

(assert (=> d!666482 (= (inv!36060 (transformation!4197 r!2363)) e!1435759)))

(declare-fun b!2244555 () Bool)

(assert (=> b!2244555 (= e!1435759 (equivClasses!1615 (toChars!5786 (transformation!4197 r!2363)) (toValue!5927 (transformation!4197 r!2363))))))

(assert (= (and d!666482 res!958991) b!2244555))

(declare-fun m!2676519 () Bool)

(assert (=> d!666482 m!2676519))

(declare-fun m!2676521 () Bool)

(assert (=> b!2244555 m!2676521))

(assert (=> b!2244334 d!666482))

(declare-fun d!666484 () Bool)

(assert (=> d!666484 (= (inv!36057 (tag!4687 (h!31935 rules!1750))) (= (mod (str.len (value!133433 (tag!4687 (h!31935 rules!1750)))) 2) 0))))

(assert (=> b!2244313 d!666484))

(declare-fun d!666486 () Bool)

(declare-fun res!958992 () Bool)

(declare-fun e!1435760 () Bool)

(assert (=> d!666486 (=> (not res!958992) (not e!1435760))))

(assert (=> d!666486 (= res!958992 (semiInverseModEq!1696 (toChars!5786 (transformation!4197 (h!31935 rules!1750))) (toValue!5927 (transformation!4197 (h!31935 rules!1750)))))))

(assert (=> d!666486 (= (inv!36060 (transformation!4197 (h!31935 rules!1750))) e!1435760)))

(declare-fun b!2244556 () Bool)

(assert (=> b!2244556 (= e!1435760 (equivClasses!1615 (toChars!5786 (transformation!4197 (h!31935 rules!1750))) (toValue!5927 (transformation!4197 (h!31935 rules!1750)))))))

(assert (= (and d!666486 res!958992) b!2244556))

(declare-fun m!2676523 () Bool)

(assert (=> d!666486 m!2676523))

(declare-fun m!2676525 () Bool)

(assert (=> b!2244556 m!2676525))

(assert (=> b!2244313 d!666486))

(declare-fun d!666488 () Bool)

(assert (=> d!666488 (= (isEmpty!14935 tokens!456) ((_ is Nil!26533) tokens!456))))

(assert (=> b!2244317 d!666488))

(assert (=> b!2244328 d!666392))

(declare-fun d!666490 () Bool)

(declare-fun res!958995 () Bool)

(declare-fun e!1435763 () Bool)

(assert (=> d!666490 (=> (not res!958995) (not e!1435763))))

(declare-fun rulesValid!1540 (LexerInterface!3794 List!26628) Bool)

(assert (=> d!666490 (= res!958995 (rulesValid!1540 thiss!16613 rules!1750))))

(assert (=> d!666490 (= (rulesInvariant!3296 thiss!16613 rules!1750) e!1435763)))

(declare-fun b!2244559 () Bool)

(declare-datatypes ((List!26630 0))(
  ( (Nil!26536) (Cons!26536 (h!31937 String!28899) (t!200280 List!26630)) )
))
(declare-fun noDuplicateTag!1538 (LexerInterface!3794 List!26628 List!26630) Bool)

(assert (=> b!2244559 (= e!1435763 (noDuplicateTag!1538 thiss!16613 rules!1750 Nil!26536))))

(assert (= (and d!666490 res!958995) b!2244559))

(declare-fun m!2676527 () Bool)

(assert (=> d!666490 m!2676527))

(declare-fun m!2676529 () Bool)

(assert (=> b!2244559 m!2676529))

(assert (=> b!2244316 d!666490))

(declare-fun b!2244564 () Bool)

(declare-fun e!1435766 () Bool)

(declare-fun tp!708279 () Bool)

(assert (=> b!2244564 (= e!1435766 (and tp_is_empty!10311 tp!708279))))

(assert (=> b!2244331 (= tp!708193 e!1435766)))

(assert (= (and b!2244331 ((_ is Cons!26531) (t!200227 otherP!12))) b!2244564))

(declare-fun e!1435769 () Bool)

(assert (=> b!2244329 (= tp!708204 e!1435769)))

(declare-fun b!2244576 () Bool)

(declare-fun tp!708290 () Bool)

(declare-fun tp!708291 () Bool)

(assert (=> b!2244576 (= e!1435769 (and tp!708290 tp!708291))))

(declare-fun b!2244575 () Bool)

(assert (=> b!2244575 (= e!1435769 tp_is_empty!10311)))

(declare-fun b!2244578 () Bool)

(declare-fun tp!708292 () Bool)

(declare-fun tp!708293 () Bool)

(assert (=> b!2244578 (= e!1435769 (and tp!708292 tp!708293))))

(declare-fun b!2244577 () Bool)

(declare-fun tp!708294 () Bool)

(assert (=> b!2244577 (= e!1435769 tp!708294)))

(assert (= (and b!2244329 ((_ is ElementMatch!6545) (regex!4197 otherR!12))) b!2244575))

(assert (= (and b!2244329 ((_ is Concat!10905) (regex!4197 otherR!12))) b!2244576))

(assert (= (and b!2244329 ((_ is Star!6545) (regex!4197 otherR!12))) b!2244577))

(assert (= (and b!2244329 ((_ is Union!6545) (regex!4197 otherR!12))) b!2244578))

(declare-fun b!2244592 () Bool)

(declare-fun b_free!65349 () Bool)

(declare-fun b_next!66053 () Bool)

(assert (=> b!2244592 (= b_free!65349 (not b_next!66053))))

(declare-fun tp!708309 () Bool)

(declare-fun b_and!175457 () Bool)

(assert (=> b!2244592 (= tp!708309 b_and!175457)))

(declare-fun b_free!65351 () Bool)

(declare-fun b_next!66055 () Bool)

(assert (=> b!2244592 (= b_free!65351 (not b_next!66055))))

(declare-fun t!200273 () Bool)

(declare-fun tb!132983 () Bool)

(assert (=> (and b!2244592 (= (toChars!5786 (transformation!4197 (rule!6495 (h!31934 (t!200229 tokens!456))))) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200273) tb!132983))

(declare-fun result!162088 () Bool)

(assert (= result!162088 result!162030))

(assert (=> d!666390 t!200273))

(declare-fun t!200275 () Bool)

(declare-fun tb!132985 () Bool)

(assert (=> (and b!2244592 (= (toChars!5786 (transformation!4197 (rule!6495 (h!31934 (t!200229 tokens!456))))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200275) tb!132985))

(declare-fun result!162090 () Bool)

(assert (= result!162090 result!162050))

(assert (=> b!2244400 t!200275))

(declare-fun tp!708307 () Bool)

(declare-fun b_and!175459 () Bool)

(assert (=> b!2244592 (= tp!708307 (and (=> t!200273 result!162088) (=> t!200275 result!162090) b_and!175459))))

(declare-fun tp!708306 () Bool)

(declare-fun b!2244589 () Bool)

(declare-fun e!1435787 () Bool)

(declare-fun e!1435783 () Bool)

(assert (=> b!2244589 (= e!1435783 (and (inv!36061 (h!31934 (t!200229 tokens!456))) e!1435787 tp!708306))))

(declare-fun e!1435786 () Bool)

(assert (=> b!2244592 (= e!1435786 (and tp!708309 tp!708307))))

(declare-fun b!2244591 () Bool)

(declare-fun tp!708308 () Bool)

(declare-fun e!1435784 () Bool)

(assert (=> b!2244591 (= e!1435784 (and tp!708308 (inv!36057 (tag!4687 (rule!6495 (h!31934 (t!200229 tokens!456))))) (inv!36060 (transformation!4197 (rule!6495 (h!31934 (t!200229 tokens!456))))) e!1435786))))

(assert (=> b!2244333 (= tp!708195 e!1435783)))

(declare-fun b!2244590 () Bool)

(declare-fun tp!708305 () Bool)

(assert (=> b!2244590 (= e!1435787 (and (inv!21 (value!133434 (h!31934 (t!200229 tokens!456)))) e!1435784 tp!708305))))

(assert (= b!2244591 b!2244592))

(assert (= b!2244590 b!2244591))

(assert (= b!2244589 b!2244590))

(assert (= (and b!2244333 ((_ is Cons!26533) (t!200229 tokens!456))) b!2244589))

(declare-fun m!2676531 () Bool)

(assert (=> b!2244589 m!2676531))

(declare-fun m!2676533 () Bool)

(assert (=> b!2244591 m!2676533))

(declare-fun m!2676535 () Bool)

(assert (=> b!2244591 m!2676535))

(declare-fun m!2676537 () Bool)

(assert (=> b!2244590 m!2676537))

(declare-fun e!1435788 () Bool)

(assert (=> b!2244323 (= tp!708189 e!1435788)))

(declare-fun b!2244594 () Bool)

(declare-fun tp!708310 () Bool)

(declare-fun tp!708311 () Bool)

(assert (=> b!2244594 (= e!1435788 (and tp!708310 tp!708311))))

(declare-fun b!2244593 () Bool)

(assert (=> b!2244593 (= e!1435788 tp_is_empty!10311)))

(declare-fun b!2244596 () Bool)

(declare-fun tp!708312 () Bool)

(declare-fun tp!708313 () Bool)

(assert (=> b!2244596 (= e!1435788 (and tp!708312 tp!708313))))

(declare-fun b!2244595 () Bool)

(declare-fun tp!708314 () Bool)

(assert (=> b!2244595 (= e!1435788 tp!708314)))

(assert (= (and b!2244323 ((_ is ElementMatch!6545) (regex!4197 (rule!6495 (h!31934 tokens!456))))) b!2244593))

(assert (= (and b!2244323 ((_ is Concat!10905) (regex!4197 (rule!6495 (h!31934 tokens!456))))) b!2244594))

(assert (= (and b!2244323 ((_ is Star!6545) (regex!4197 (rule!6495 (h!31934 tokens!456))))) b!2244595))

(assert (= (and b!2244323 ((_ is Union!6545) (regex!4197 (rule!6495 (h!31934 tokens!456))))) b!2244596))

(declare-fun b!2244597 () Bool)

(declare-fun e!1435789 () Bool)

(declare-fun tp!708315 () Bool)

(assert (=> b!2244597 (= e!1435789 (and tp_is_empty!10311 tp!708315))))

(assert (=> b!2244321 (= tp!708200 e!1435789)))

(assert (= (and b!2244321 ((_ is Cons!26531) (originalCharacters!4967 (h!31934 tokens!456)))) b!2244597))

(declare-fun b!2244598 () Bool)

(declare-fun e!1435790 () Bool)

(declare-fun tp!708316 () Bool)

(assert (=> b!2244598 (= e!1435790 (and tp_is_empty!10311 tp!708316))))

(assert (=> b!2244332 (= tp!708197 e!1435790)))

(assert (= (and b!2244332 ((_ is Cons!26531) (t!200227 input!1722))) b!2244598))

(declare-fun b!2244609 () Bool)

(declare-fun b_free!65353 () Bool)

(declare-fun b_next!66057 () Bool)

(assert (=> b!2244609 (= b_free!65353 (not b_next!66057))))

(declare-fun tp!708326 () Bool)

(declare-fun b_and!175461 () Bool)

(assert (=> b!2244609 (= tp!708326 b_and!175461)))

(declare-fun b_free!65355 () Bool)

(declare-fun b_next!66059 () Bool)

(assert (=> b!2244609 (= b_free!65355 (not b_next!66059))))

(declare-fun tb!132987 () Bool)

(declare-fun t!200277 () Bool)

(assert (=> (and b!2244609 (= (toChars!5786 (transformation!4197 (h!31935 (t!200230 rules!1750)))) (toChars!5786 (transformation!4197 (rule!6495 (head!4752 tokens!456))))) t!200277) tb!132987))

(declare-fun result!162094 () Bool)

(assert (= result!162094 result!162030))

(assert (=> d!666390 t!200277))

(declare-fun tb!132989 () Bool)

(declare-fun t!200279 () Bool)

(assert (=> (and b!2244609 (= (toChars!5786 (transformation!4197 (h!31935 (t!200230 rules!1750)))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456))))) t!200279) tb!132989))

(declare-fun result!162096 () Bool)

(assert (= result!162096 result!162050))

(assert (=> b!2244400 t!200279))

(declare-fun tp!708325 () Bool)

(declare-fun b_and!175463 () Bool)

(assert (=> b!2244609 (= tp!708325 (and (=> t!200277 result!162094) (=> t!200279 result!162096) b_and!175463))))

(declare-fun e!1435800 () Bool)

(assert (=> b!2244609 (= e!1435800 (and tp!708326 tp!708325))))

(declare-fun tp!708328 () Bool)

(declare-fun e!1435799 () Bool)

(declare-fun b!2244608 () Bool)

(assert (=> b!2244608 (= e!1435799 (and tp!708328 (inv!36057 (tag!4687 (h!31935 (t!200230 rules!1750)))) (inv!36060 (transformation!4197 (h!31935 (t!200230 rules!1750)))) e!1435800))))

(declare-fun b!2244607 () Bool)

(declare-fun e!1435802 () Bool)

(declare-fun tp!708327 () Bool)

(assert (=> b!2244607 (= e!1435802 (and e!1435799 tp!708327))))

(assert (=> b!2244325 (= tp!708194 e!1435802)))

(assert (= b!2244608 b!2244609))

(assert (= b!2244607 b!2244608))

(assert (= (and b!2244325 ((_ is Cons!26534) (t!200230 rules!1750))) b!2244607))

(declare-fun m!2676539 () Bool)

(assert (=> b!2244608 m!2676539))

(declare-fun m!2676541 () Bool)

(assert (=> b!2244608 m!2676541))

(declare-fun e!1435803 () Bool)

(assert (=> b!2244334 (= tp!708202 e!1435803)))

(declare-fun b!2244611 () Bool)

(declare-fun tp!708329 () Bool)

(declare-fun tp!708330 () Bool)

(assert (=> b!2244611 (= e!1435803 (and tp!708329 tp!708330))))

(declare-fun b!2244610 () Bool)

(assert (=> b!2244610 (= e!1435803 tp_is_empty!10311)))

(declare-fun b!2244613 () Bool)

(declare-fun tp!708331 () Bool)

(declare-fun tp!708332 () Bool)

(assert (=> b!2244613 (= e!1435803 (and tp!708331 tp!708332))))

(declare-fun b!2244612 () Bool)

(declare-fun tp!708333 () Bool)

(assert (=> b!2244612 (= e!1435803 tp!708333)))

(assert (= (and b!2244334 ((_ is ElementMatch!6545) (regex!4197 r!2363))) b!2244610))

(assert (= (and b!2244334 ((_ is Concat!10905) (regex!4197 r!2363))) b!2244611))

(assert (= (and b!2244334 ((_ is Star!6545) (regex!4197 r!2363))) b!2244612))

(assert (= (and b!2244334 ((_ is Union!6545) (regex!4197 r!2363))) b!2244613))

(declare-fun e!1435804 () Bool)

(assert (=> b!2244313 (= tp!708201 e!1435804)))

(declare-fun b!2244615 () Bool)

(declare-fun tp!708334 () Bool)

(declare-fun tp!708335 () Bool)

(assert (=> b!2244615 (= e!1435804 (and tp!708334 tp!708335))))

(declare-fun b!2244614 () Bool)

(assert (=> b!2244614 (= e!1435804 tp_is_empty!10311)))

(declare-fun b!2244617 () Bool)

(declare-fun tp!708336 () Bool)

(declare-fun tp!708337 () Bool)

(assert (=> b!2244617 (= e!1435804 (and tp!708336 tp!708337))))

(declare-fun b!2244616 () Bool)

(declare-fun tp!708338 () Bool)

(assert (=> b!2244616 (= e!1435804 tp!708338)))

(assert (= (and b!2244313 ((_ is ElementMatch!6545) (regex!4197 (h!31935 rules!1750)))) b!2244614))

(assert (= (and b!2244313 ((_ is Concat!10905) (regex!4197 (h!31935 rules!1750)))) b!2244615))

(assert (= (and b!2244313 ((_ is Star!6545) (regex!4197 (h!31935 rules!1750)))) b!2244616))

(assert (= (and b!2244313 ((_ is Union!6545) (regex!4197 (h!31935 rules!1750)))) b!2244617))

(declare-fun b!2244618 () Bool)

(declare-fun e!1435805 () Bool)

(declare-fun tp!708339 () Bool)

(assert (=> b!2244618 (= e!1435805 (and tp_is_empty!10311 tp!708339))))

(assert (=> b!2244326 (= tp!708191 e!1435805)))

(assert (= (and b!2244326 ((_ is Cons!26531) (t!200227 suffix!886))) b!2244618))

(declare-fun b_lambda!71831 () Bool)

(assert (= b_lambda!71825 (or (and b!2244592 b_free!65351 (= (toChars!5786 (transformation!4197 (rule!6495 (h!31934 (t!200229 tokens!456))))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))))) (and b!2244320 b_free!65327 (= (toChars!5786 (transformation!4197 otherR!12)) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))))) (and b!2244315 b_free!65339 (= (toChars!5786 (transformation!4197 r!2363)) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))))) (and b!2244312 b_free!65335 (= (toChars!5786 (transformation!4197 (h!31935 rules!1750))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))))) (and b!2244327 b_free!65331) (and b!2244609 b_free!65355 (= (toChars!5786 (transformation!4197 (h!31935 (t!200230 rules!1750)))) (toChars!5786 (transformation!4197 (rule!6495 (h!31934 tokens!456)))))) b_lambda!71831)))

(check-sat (not b!2244618) (not d!666412) (not b_next!66059) (not d!666388) (not b_next!66037) (not b!2244596) (not b!2244389) (not d!666474) b_and!175409 (not d!666416) (not b!2244607) (not b!2244608) b_and!175405 (not b!2244564) (not b!2244536) (not b_next!66041) (not b!2244401) (not b!2244554) (not b!2244594) (not b_next!66033) (not d!666482) (not d!666418) (not d!666478) (not b!2244576) (not b!2244591) (not b!2244551) (not b!2244550) (not b_next!66039) b_and!175461 (not b!2244403) (not b!2244394) (not b_next!66043) b_and!175437 (not b_next!66055) (not b!2244339) (not b!2244552) (not b!2244400) (not b!2244559) (not b_lambda!71821) (not d!666428) (not d!666390) (not b_next!66035) (not tb!132943) (not b!2244612) (not b_next!66053) (not tb!132959) (not b!2244555) (not b!2244386) (not b!2244556) b_and!175459 b_and!175413 (not b!2244611) tp_is_empty!10311 (not b!2244369) (not b!2244367) (not b!2244597) b_and!175439 (not b!2244613) (not b!2244345) (not d!666432) (not b!2244577) (not b!2244617) b_and!175401 b_and!175457 (not b!2244535) (not d!666430) (not b!2244589) b_and!175433 (not b!2244578) (not b!2244598) (not b_lambda!71831) (not b!2244616) b_and!175435 (not b_next!66029) (not b_next!66057) (not d!666490) (not d!666486) (not b!2244595) (not b!2244615) (not d!666426) (not b!2244537) (not b!2244402) (not d!666422) (not b!2244534) (not b!2244590) (not d!666402) (not b_next!66031) (not b!2244368) b_and!175463)
(check-sat (not b_next!66037) b_and!175409 b_and!175405 (not b_next!66041) (not b_next!66033) (not b_next!66043) (not b_next!66035) (not b_next!66053) b_and!175439 b_and!175401 b_and!175457 b_and!175433 (not b_next!66057) (not b_next!66059) (not b_next!66039) b_and!175461 b_and!175437 (not b_next!66055) b_and!175459 b_and!175413 b_and!175435 (not b_next!66029) (not b_next!66031) b_and!175463)
