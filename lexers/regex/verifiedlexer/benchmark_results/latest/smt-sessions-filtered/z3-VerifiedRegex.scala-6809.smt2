; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358080 () Bool)

(assert start!358080)

(declare-fun b!3827069 () Bool)

(declare-fun b_free!101597 () Bool)

(declare-fun b_next!102301 () Bool)

(assert (=> b!3827069 (= b_free!101597 (not b_next!102301))))

(declare-fun tp!1158455 () Bool)

(declare-fun b_and!284491 () Bool)

(assert (=> b!3827069 (= tp!1158455 b_and!284491)))

(declare-fun b_free!101599 () Bool)

(declare-fun b_next!102303 () Bool)

(assert (=> b!3827069 (= b_free!101599 (not b_next!102303))))

(declare-fun tp!1158453 () Bool)

(declare-fun b_and!284493 () Bool)

(assert (=> b!3827069 (= tp!1158453 b_and!284493)))

(declare-fun b!3827054 () Bool)

(declare-fun e!2363602 () Bool)

(declare-datatypes ((List!40546 0))(
  ( (Nil!40422) (Cons!40422 (h!45842 (_ BitVec 16)) (t!308873 List!40546)) )
))
(declare-datatypes ((TokenValue!6454 0))(
  ( (FloatLiteralValue!12908 (text!45623 List!40546)) (TokenValueExt!6453 (__x!25125 Int)) (Broken!32270 (value!197965 List!40546)) (Object!6577) (End!6454) (Def!6454) (Underscore!6454) (Match!6454) (Else!6454) (Error!6454) (Case!6454) (If!6454) (Extends!6454) (Abstract!6454) (Class!6454) (Val!6454) (DelimiterValue!12908 (del!6514 List!40546)) (KeywordValue!6460 (value!197966 List!40546)) (CommentValue!12908 (value!197967 List!40546)) (WhitespaceValue!12908 (value!197968 List!40546)) (IndentationValue!6454 (value!197969 List!40546)) (String!45951) (Int32!6454) (Broken!32271 (value!197970 List!40546)) (Boolean!6455) (Unit!58191) (OperatorValue!6457 (op!6514 List!40546)) (IdentifierValue!12908 (value!197971 List!40546)) (IdentifierValue!12909 (value!197972 List!40546)) (WhitespaceValue!12909 (value!197973 List!40546)) (True!12908) (False!12908) (Broken!32272 (value!197974 List!40546)) (Broken!32273 (value!197975 List!40546)) (True!12909) (RightBrace!6454) (RightBracket!6454) (Colon!6454) (Null!6454) (Comma!6454) (LeftBracket!6454) (False!12909) (LeftBrace!6454) (ImaginaryLiteralValue!6454 (text!45624 List!40546)) (StringLiteralValue!19362 (value!197976 List!40546)) (EOFValue!6454 (value!197977 List!40546)) (IdentValue!6454 (value!197978 List!40546)) (DelimiterValue!12909 (value!197979 List!40546)) (DedentValue!6454 (value!197980 List!40546)) (NewLineValue!6454 (value!197981 List!40546)) (IntegerValue!19362 (value!197982 (_ BitVec 32)) (text!45625 List!40546)) (IntegerValue!19363 (value!197983 Int) (text!45626 List!40546)) (Times!6454) (Or!6454) (Equal!6454) (Minus!6454) (Broken!32274 (value!197984 List!40546)) (And!6454) (Div!6454) (LessEqual!6454) (Mod!6454) (Concat!17583) (Not!6454) (Plus!6454) (SpaceValue!6454 (value!197985 List!40546)) (IntegerValue!19364 (value!197986 Int) (text!45627 List!40546)) (StringLiteralValue!19363 (text!45628 List!40546)) (FloatLiteralValue!12909 (text!45629 List!40546)) (BytesLiteralValue!6454 (value!197987 List!40546)) (CommentValue!12909 (value!197988 List!40546)) (StringLiteralValue!19364 (value!197989 List!40546)) (ErrorTokenValue!6454 (msg!6515 List!40546)) )
))
(declare-datatypes ((C!22444 0))(
  ( (C!22445 (val!13298 Int)) )
))
(declare-datatypes ((Regex!11129 0))(
  ( (ElementMatch!11129 (c!667179 C!22444)) (Concat!17584 (regOne!22770 Regex!11129) (regTwo!22770 Regex!11129)) (EmptyExpr!11129) (Star!11129 (reg!11458 Regex!11129)) (EmptyLang!11129) (Union!11129 (regOne!22771 Regex!11129) (regTwo!22771 Regex!11129)) )
))
(declare-datatypes ((String!45952 0))(
  ( (String!45953 (value!197990 String)) )
))
(declare-datatypes ((List!40547 0))(
  ( (Nil!40423) (Cons!40423 (h!45843 C!22444) (t!308874 List!40547)) )
))
(declare-datatypes ((IArray!24849 0))(
  ( (IArray!24850 (innerList!12482 List!40547)) )
))
(declare-datatypes ((Conc!12422 0))(
  ( (Node!12422 (left!31275 Conc!12422) (right!31605 Conc!12422) (csize!25074 Int) (cheight!12633 Int)) (Leaf!19232 (xs!15716 IArray!24849) (csize!25075 Int)) (Empty!12422) )
))
(declare-datatypes ((BalanceConc!24438 0))(
  ( (BalanceConc!24439 (c!667180 Conc!12422)) )
))
(declare-datatypes ((TokenValueInjection!12336 0))(
  ( (TokenValueInjection!12337 (toValue!8624 Int) (toChars!8483 Int)) )
))
(declare-datatypes ((Rule!12248 0))(
  ( (Rule!12249 (regex!6224 Regex!11129) (tag!7084 String!45952) (isSeparator!6224 Bool) (transformation!6224 TokenValueInjection!12336)) )
))
(declare-datatypes ((Token!11586 0))(
  ( (Token!11587 (value!197991 TokenValue!6454) (rule!9048 Rule!12248) (size!30466 Int) (originalCharacters!6824 List!40547)) )
))
(declare-datatypes ((List!40548 0))(
  ( (Nil!40424) (Cons!40424 (h!45844 Token!11586) (t!308875 List!40548)) )
))
(declare-datatypes ((IArray!24851 0))(
  ( (IArray!24852 (innerList!12483 List!40548)) )
))
(declare-datatypes ((Conc!12423 0))(
  ( (Node!12423 (left!31276 Conc!12423) (right!31606 Conc!12423) (csize!25076 Int) (cheight!12634 Int)) (Leaf!19233 (xs!15717 IArray!24851) (csize!25077 Int)) (Empty!12423) )
))
(declare-datatypes ((BalanceConc!24440 0))(
  ( (BalanceConc!24441 (c!667181 Conc!12423)) )
))
(declare-fun acc!335 () BalanceConc!24440)

(declare-fun tp!1158458 () Bool)

(declare-fun inv!54484 (Conc!12423) Bool)

(assert (=> b!3827054 (= e!2363602 (and (inv!54484 (c!667181 acc!335)) tp!1158458))))

(declare-fun b!3827055 () Bool)

(declare-fun e!2363597 () Bool)

(declare-fun totalInput!335 () BalanceConc!24438)

(declare-fun tp!1158456 () Bool)

(declare-fun inv!54485 (Conc!12422) Bool)

(assert (=> b!3827055 (= e!2363597 (and (inv!54485 (c!667180 totalInput!335)) tp!1158456))))

(declare-fun e!2363600 () Bool)

(declare-fun b!3827057 () Bool)

(declare-fun e!2363599 () Bool)

(declare-datatypes ((List!40549 0))(
  ( (Nil!40425) (Cons!40425 (h!45845 Rule!12248) (t!308876 List!40549)) )
))
(declare-fun rules!1265 () List!40549)

(declare-fun tp!1158454 () Bool)

(declare-fun inv!54478 (String!45952) Bool)

(declare-fun inv!54486 (TokenValueInjection!12336) Bool)

(assert (=> b!3827057 (= e!2363600 (and tp!1158454 (inv!54478 (tag!7084 (h!45845 rules!1265))) (inv!54486 (transformation!6224 (h!45845 rules!1265))) e!2363599))))

(declare-fun b!3827058 () Bool)

(declare-fun res!1549293 () Bool)

(declare-fun e!2363608 () Bool)

(assert (=> b!3827058 (=> (not res!1549293) (not e!2363608))))

(declare-fun isEmpty!23849 (List!40549) Bool)

(assert (=> b!3827058 (= res!1549293 (not (isEmpty!23849 rules!1265)))))

(declare-fun b!3827059 () Bool)

(declare-fun e!2363605 () Bool)

(assert (=> b!3827059 (= e!2363608 e!2363605)))

(declare-fun res!1549294 () Bool)

(assert (=> b!3827059 (=> (not res!1549294) (not e!2363605))))

(declare-fun lt!1328853 () List!40547)

(declare-fun lt!1328860 () List!40547)

(assert (=> b!3827059 (= res!1549294 (= lt!1328853 lt!1328860))))

(declare-fun lt!1328858 () List!40547)

(declare-fun lt!1328865 () List!40547)

(declare-fun ++!10187 (List!40547 List!40547) List!40547)

(assert (=> b!3827059 (= lt!1328860 (++!10187 lt!1328858 lt!1328865))))

(declare-fun list!15055 (BalanceConc!24438) List!40547)

(assert (=> b!3827059 (= lt!1328853 (list!15055 totalInput!335))))

(declare-fun input!678 () BalanceConc!24438)

(assert (=> b!3827059 (= lt!1328865 (list!15055 input!678))))

(declare-fun treated!13 () BalanceConc!24438)

(assert (=> b!3827059 (= lt!1328858 (list!15055 treated!13))))

(declare-fun b!3827060 () Bool)

(declare-fun e!2363607 () Bool)

(declare-fun tp!1158452 () Bool)

(assert (=> b!3827060 (= e!2363607 (and (inv!54485 (c!667180 input!678)) tp!1158452))))

(declare-fun b!3827061 () Bool)

(declare-fun e!2363609 () Bool)

(declare-fun tp!1158451 () Bool)

(assert (=> b!3827061 (= e!2363609 (and e!2363600 tp!1158451))))

(declare-fun e!2363598 () Bool)

(declare-fun b!3827062 () Bool)

(declare-fun lt!1328859 () List!40548)

(declare-fun lt!1328857 () List!40547)

(declare-fun lt!1328856 () List!40548)

(assert (=> b!3827062 (= e!2363598 (and (= lt!1328859 lt!1328856) (= lt!1328865 lt!1328857)))))

(declare-fun b!3827063 () Bool)

(declare-fun e!2363606 () Bool)

(assert (=> b!3827063 (= e!2363605 e!2363606)))

(declare-fun res!1549301 () Bool)

(assert (=> b!3827063 (=> (not res!1549301) (not e!2363606))))

(declare-fun lt!1328864 () List!40548)

(assert (=> b!3827063 (= res!1549301 (= lt!1328864 lt!1328859))))

(declare-fun list!15056 (BalanceConc!24440) List!40548)

(assert (=> b!3827063 (= lt!1328859 (list!15056 acc!335))))

(declare-datatypes ((tuple2!39622 0))(
  ( (tuple2!39623 (_1!22945 BalanceConc!24440) (_2!22945 BalanceConc!24438)) )
))
(declare-fun lt!1328863 () tuple2!39622)

(assert (=> b!3827063 (= lt!1328864 (list!15056 (_1!22945 lt!1328863)))))

(declare-datatypes ((LexerInterface!5813 0))(
  ( (LexerInterfaceExt!5810 (__x!25126 Int)) (Lexer!5811) )
))
(declare-fun thiss!11876 () LexerInterface!5813)

(declare-fun lexRec!837 (LexerInterface!5813 List!40549 BalanceConc!24438) tuple2!39622)

(assert (=> b!3827063 (= lt!1328863 (lexRec!837 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3827064 () Bool)

(declare-fun e!2363610 () Bool)

(assert (=> b!3827064 (= e!2363610 (not e!2363598))))

(declare-fun res!1549295 () Bool)

(assert (=> b!3827064 (=> res!1549295 e!2363598)))

(declare-fun isSuffix!996 (List!40547 List!40547) Bool)

(assert (=> b!3827064 (= res!1549295 (not (isSuffix!996 lt!1328865 lt!1328853)))))

(assert (=> b!3827064 (isSuffix!996 lt!1328865 lt!1328860)))

(declare-datatypes ((Unit!58192 0))(
  ( (Unit!58193) )
))
(declare-fun lt!1328862 () Unit!58192)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!681 (List!40547 List!40547) Unit!58192)

(assert (=> b!3827064 (= lt!1328862 (lemmaConcatTwoListThenFSndIsSuffix!681 lt!1328858 lt!1328865))))

(declare-fun b!3827065 () Bool)

(declare-fun e!2363601 () Bool)

(assert (=> b!3827065 (= e!2363601 e!2363610)))

(declare-fun res!1549292 () Bool)

(assert (=> b!3827065 (=> (not res!1549292) (not e!2363610))))

(declare-fun lt!1328861 () tuple2!39622)

(assert (=> b!3827065 (= res!1549292 (= lt!1328857 (list!15055 (_2!22945 lt!1328861))))))

(declare-fun lt!1328855 () tuple2!39622)

(assert (=> b!3827065 (= lt!1328857 (list!15055 (_2!22945 lt!1328855)))))

(declare-fun b!3827066 () Bool)

(assert (=> b!3827066 (= e!2363606 e!2363601)))

(declare-fun res!1549297 () Bool)

(assert (=> b!3827066 (=> (not res!1549297) (not e!2363601))))

(declare-fun lt!1328854 () BalanceConc!24440)

(assert (=> b!3827066 (= res!1549297 (= lt!1328856 (list!15056 lt!1328854)))))

(assert (=> b!3827066 (= lt!1328856 (list!15056 (_1!22945 lt!1328855)))))

(declare-fun ++!10188 (BalanceConc!24440 BalanceConc!24440) BalanceConc!24440)

(assert (=> b!3827066 (= lt!1328854 (++!10188 acc!335 (_1!22945 lt!1328861)))))

(assert (=> b!3827066 (= lt!1328861 (lexRec!837 thiss!11876 rules!1265 input!678))))

(assert (=> b!3827066 (= lt!1328855 (lexRec!837 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3827067 () Bool)

(declare-fun res!1549300 () Bool)

(assert (=> b!3827067 (=> (not res!1549300) (not e!2363608))))

(declare-fun rulesInvariant!5156 (LexerInterface!5813 List!40549) Bool)

(assert (=> b!3827067 (= res!1549300 (rulesInvariant!5156 thiss!11876 rules!1265))))

(declare-fun b!3827068 () Bool)

(declare-fun res!1549298 () Bool)

(assert (=> b!3827068 (=> res!1549298 e!2363598)))

(get-info :version)

(declare-datatypes ((tuple2!39624 0))(
  ( (tuple2!39625 (_1!22946 Token!11586) (_2!22946 BalanceConc!24438)) )
))
(declare-datatypes ((Option!8648 0))(
  ( (None!8647) (Some!8647 (v!38923 tuple2!39624)) )
))
(declare-fun maxPrefixZipperSequenceV2!613 (LexerInterface!5813 List!40549 BalanceConc!24438 BalanceConc!24438) Option!8648)

(assert (=> b!3827068 (= res!1549298 ((_ is Some!8647) (maxPrefixZipperSequenceV2!613 thiss!11876 rules!1265 input!678 totalInput!335)))))

(declare-fun res!1549296 () Bool)

(assert (=> start!358080 (=> (not res!1549296) (not e!2363608))))

(assert (=> start!358080 (= res!1549296 ((_ is Lexer!5811) thiss!11876))))

(assert (=> start!358080 e!2363608))

(declare-fun inv!54487 (BalanceConc!24438) Bool)

(assert (=> start!358080 (and (inv!54487 input!678) e!2363607)))

(declare-fun inv!54488 (BalanceConc!24440) Bool)

(assert (=> start!358080 (and (inv!54488 acc!335) e!2363602)))

(declare-fun e!2363604 () Bool)

(assert (=> start!358080 (and (inv!54487 treated!13) e!2363604)))

(assert (=> start!358080 e!2363609))

(assert (=> start!358080 true))

(assert (=> start!358080 (and (inv!54487 totalInput!335) e!2363597)))

(declare-fun b!3827056 () Bool)

(declare-fun res!1549299 () Bool)

(assert (=> b!3827056 (=> (not res!1549299) (not e!2363606))))

(declare-fun isEmpty!23850 (List!40547) Bool)

(assert (=> b!3827056 (= res!1549299 (isEmpty!23850 (list!15055 (_2!22945 lt!1328863))))))

(assert (=> b!3827069 (= e!2363599 (and tp!1158455 tp!1158453))))

(declare-fun b!3827070 () Bool)

(declare-fun tp!1158457 () Bool)

(assert (=> b!3827070 (= e!2363604 (and (inv!54485 (c!667180 treated!13)) tp!1158457))))

(assert (= (and start!358080 res!1549296) b!3827058))

(assert (= (and b!3827058 res!1549293) b!3827067))

(assert (= (and b!3827067 res!1549300) b!3827059))

(assert (= (and b!3827059 res!1549294) b!3827063))

(assert (= (and b!3827063 res!1549301) b!3827056))

(assert (= (and b!3827056 res!1549299) b!3827066))

(assert (= (and b!3827066 res!1549297) b!3827065))

(assert (= (and b!3827065 res!1549292) b!3827064))

(assert (= (and b!3827064 (not res!1549295)) b!3827068))

(assert (= (and b!3827068 (not res!1549298)) b!3827062))

(assert (= start!358080 b!3827060))

(assert (= start!358080 b!3827054))

(assert (= start!358080 b!3827070))

(assert (= b!3827057 b!3827069))

(assert (= b!3827061 b!3827057))

(assert (= (and start!358080 ((_ is Cons!40425) rules!1265)) b!3827061))

(assert (= start!358080 b!3827055))

(declare-fun m!4379185 () Bool)

(assert (=> b!3827065 m!4379185))

(declare-fun m!4379187 () Bool)

(assert (=> b!3827065 m!4379187))

(declare-fun m!4379189 () Bool)

(assert (=> b!3827068 m!4379189))

(declare-fun m!4379191 () Bool)

(assert (=> b!3827054 m!4379191))

(declare-fun m!4379193 () Bool)

(assert (=> b!3827063 m!4379193))

(declare-fun m!4379195 () Bool)

(assert (=> b!3827063 m!4379195))

(declare-fun m!4379197 () Bool)

(assert (=> b!3827063 m!4379197))

(declare-fun m!4379199 () Bool)

(assert (=> b!3827066 m!4379199))

(declare-fun m!4379201 () Bool)

(assert (=> b!3827066 m!4379201))

(declare-fun m!4379203 () Bool)

(assert (=> b!3827066 m!4379203))

(declare-fun m!4379205 () Bool)

(assert (=> b!3827066 m!4379205))

(declare-fun m!4379207 () Bool)

(assert (=> b!3827066 m!4379207))

(declare-fun m!4379209 () Bool)

(assert (=> b!3827064 m!4379209))

(declare-fun m!4379211 () Bool)

(assert (=> b!3827064 m!4379211))

(declare-fun m!4379213 () Bool)

(assert (=> b!3827064 m!4379213))

(declare-fun m!4379215 () Bool)

(assert (=> b!3827055 m!4379215))

(declare-fun m!4379217 () Bool)

(assert (=> b!3827060 m!4379217))

(declare-fun m!4379219 () Bool)

(assert (=> b!3827059 m!4379219))

(declare-fun m!4379221 () Bool)

(assert (=> b!3827059 m!4379221))

(declare-fun m!4379223 () Bool)

(assert (=> b!3827059 m!4379223))

(declare-fun m!4379225 () Bool)

(assert (=> b!3827059 m!4379225))

(declare-fun m!4379227 () Bool)

(assert (=> start!358080 m!4379227))

(declare-fun m!4379229 () Bool)

(assert (=> start!358080 m!4379229))

(declare-fun m!4379231 () Bool)

(assert (=> start!358080 m!4379231))

(declare-fun m!4379233 () Bool)

(assert (=> start!358080 m!4379233))

(declare-fun m!4379235 () Bool)

(assert (=> b!3827067 m!4379235))

(declare-fun m!4379237 () Bool)

(assert (=> b!3827058 m!4379237))

(declare-fun m!4379239 () Bool)

(assert (=> b!3827057 m!4379239))

(declare-fun m!4379241 () Bool)

(assert (=> b!3827057 m!4379241))

(declare-fun m!4379243 () Bool)

(assert (=> b!3827070 m!4379243))

(declare-fun m!4379245 () Bool)

(assert (=> b!3827056 m!4379245))

(assert (=> b!3827056 m!4379245))

(declare-fun m!4379247 () Bool)

(assert (=> b!3827056 m!4379247))

(check-sat (not b!3827066) (not b!3827055) (not b!3827058) b_and!284491 (not b!3827059) (not b!3827056) (not b_next!102303) (not b!3827054) (not b!3827061) (not b!3827068) (not b!3827057) (not b!3827065) (not b!3827064) (not b_next!102301) (not b!3827070) (not b!3827063) (not b!3827060) (not b!3827067) (not start!358080) b_and!284493)
(check-sat b_and!284491 b_and!284493 (not b_next!102301) (not b_next!102303))
(get-model)

(declare-fun d!1135322 () Bool)

(assert (=> d!1135322 (= (inv!54478 (tag!7084 (h!45845 rules!1265))) (= (mod (str.len (value!197990 (tag!7084 (h!45845 rules!1265)))) 2) 0))))

(assert (=> b!3827057 d!1135322))

(declare-fun d!1135324 () Bool)

(declare-fun res!1549311 () Bool)

(declare-fun e!2363619 () Bool)

(assert (=> d!1135324 (=> (not res!1549311) (not e!2363619))))

(declare-fun semiInverseModEq!2671 (Int Int) Bool)

(assert (=> d!1135324 (= res!1549311 (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))))))

(assert (=> d!1135324 (= (inv!54486 (transformation!6224 (h!45845 rules!1265))) e!2363619)))

(declare-fun b!3827082 () Bool)

(declare-fun equivClasses!2570 (Int Int) Bool)

(assert (=> b!3827082 (= e!2363619 (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))))))

(assert (= (and d!1135324 res!1549311) b!3827082))

(declare-fun m!4379255 () Bool)

(assert (=> d!1135324 m!4379255))

(declare-fun m!4379257 () Bool)

(assert (=> b!3827082 m!4379257))

(assert (=> b!3827057 d!1135324))

(declare-fun d!1135326 () Bool)

(assert (=> d!1135326 (= (isEmpty!23850 (list!15055 (_2!22945 lt!1328863))) ((_ is Nil!40423) (list!15055 (_2!22945 lt!1328863))))))

(assert (=> b!3827056 d!1135326))

(declare-fun d!1135328 () Bool)

(declare-fun list!15059 (Conc!12422) List!40547)

(assert (=> d!1135328 (= (list!15055 (_2!22945 lt!1328863)) (list!15059 (c!667180 (_2!22945 lt!1328863))))))

(declare-fun bs!581912 () Bool)

(assert (= bs!581912 d!1135328))

(declare-fun m!4379259 () Bool)

(assert (=> bs!581912 m!4379259))

(assert (=> b!3827056 d!1135328))

(declare-fun d!1135330 () Bool)

(declare-fun res!1549314 () Bool)

(declare-fun e!2363622 () Bool)

(assert (=> d!1135330 (=> (not res!1549314) (not e!2363622))))

(declare-fun rulesValid!2406 (LexerInterface!5813 List!40549) Bool)

(assert (=> d!1135330 (= res!1549314 (rulesValid!2406 thiss!11876 rules!1265))))

(assert (=> d!1135330 (= (rulesInvariant!5156 thiss!11876 rules!1265) e!2363622)))

(declare-fun b!3827085 () Bool)

(declare-datatypes ((List!40551 0))(
  ( (Nil!40427) (Cons!40427 (h!45847 String!45952) (t!308878 List!40551)) )
))
(declare-fun noDuplicateTag!2407 (LexerInterface!5813 List!40549 List!40551) Bool)

(assert (=> b!3827085 (= e!2363622 (noDuplicateTag!2407 thiss!11876 rules!1265 Nil!40427))))

(assert (= (and d!1135330 res!1549314) b!3827085))

(declare-fun m!4379261 () Bool)

(assert (=> d!1135330 m!4379261))

(declare-fun m!4379263 () Bool)

(assert (=> b!3827085 m!4379263))

(assert (=> b!3827067 d!1135330))

(declare-fun d!1135332 () Bool)

(assert (=> d!1135332 (= (isEmpty!23849 rules!1265) ((_ is Nil!40425) rules!1265))))

(assert (=> b!3827058 d!1135332))

(declare-fun b!3827263 () Bool)

(declare-fun e!2363736 () Option!8648)

(declare-fun lt!1328933 () Option!8648)

(declare-fun lt!1328929 () Option!8648)

(assert (=> b!3827263 (= e!2363736 (ite (and ((_ is None!8647) lt!1328933) ((_ is None!8647) lt!1328929)) None!8647 (ite ((_ is None!8647) lt!1328929) lt!1328933 (ite ((_ is None!8647) lt!1328933) lt!1328929 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1328933))) (size!30466 (_1!22946 (v!38923 lt!1328929)))) lt!1328933 lt!1328929)))))))

(declare-fun call!281172 () Option!8648)

(assert (=> b!3827263 (= lt!1328933 call!281172)))

(assert (=> b!3827263 (= lt!1328929 (maxPrefixZipperSequenceV2!613 thiss!11876 (t!308876 rules!1265) input!678 totalInput!335))))

(declare-fun e!2363738 () Bool)

(declare-fun b!3827264 () Bool)

(declare-fun lt!1328935 () Option!8648)

(declare-fun get!13412 (Option!8648) tuple2!39624)

(declare-datatypes ((tuple2!39630 0))(
  ( (tuple2!39631 (_1!22949 Token!11586) (_2!22949 List!40547)) )
))
(declare-datatypes ((Option!8650 0))(
  ( (None!8649) (Some!8649 (v!38925 tuple2!39630)) )
))
(declare-fun get!13413 (Option!8650) tuple2!39630)

(declare-fun maxPrefix!3125 (LexerInterface!5813 List!40549 List!40547) Option!8650)

(assert (=> b!3827264 (= e!2363738 (= (list!15055 (_2!22946 (get!13412 lt!1328935))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3827265 () Bool)

(declare-fun e!2363737 () Bool)

(declare-fun maxPrefixZipper!557 (LexerInterface!5813 List!40549 List!40547) Option!8650)

(assert (=> b!3827265 (= e!2363737 (= (list!15055 (_2!22946 (get!13412 lt!1328935))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3827266 () Bool)

(declare-fun e!2363735 () Bool)

(assert (=> b!3827266 (= e!2363735 e!2363738)))

(declare-fun res!1549394 () Bool)

(assert (=> b!3827266 (=> (not res!1549394) (not e!2363738))))

(assert (=> b!3827266 (= res!1549394 (= (_1!22946 (get!13412 lt!1328935)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3827267 () Bool)

(assert (=> b!3827267 (= e!2363736 call!281172)))

(declare-fun b!3827268 () Bool)

(declare-fun e!2363733 () Bool)

(assert (=> b!3827268 (= e!2363733 e!2363735)))

(declare-fun res!1549396 () Bool)

(assert (=> b!3827268 (=> res!1549396 e!2363735)))

(declare-fun isDefined!6810 (Option!8648) Bool)

(assert (=> b!3827268 (= res!1549396 (not (isDefined!6810 lt!1328935)))))

(declare-fun b!3827269 () Bool)

(declare-fun e!2363734 () Bool)

(assert (=> b!3827269 (= e!2363734 e!2363737)))

(declare-fun res!1549393 () Bool)

(assert (=> b!3827269 (=> (not res!1549393) (not e!2363737))))

(assert (=> b!3827269 (= res!1549393 (= (_1!22946 (get!13412 lt!1328935)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun bm!281167 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!251 (LexerInterface!5813 Rule!12248 BalanceConc!24438 BalanceConc!24438) Option!8648)

(assert (=> bm!281167 (= call!281172 (maxPrefixOneRuleZipperSequenceV2!251 thiss!11876 (h!45845 rules!1265) input!678 totalInput!335))))

(declare-fun b!3827270 () Bool)

(declare-fun res!1549397 () Bool)

(assert (=> b!3827270 (=> (not res!1549397) (not e!2363733))))

(assert (=> b!3827270 (= res!1549397 e!2363734)))

(declare-fun res!1549398 () Bool)

(assert (=> b!3827270 (=> res!1549398 e!2363734)))

(assert (=> b!3827270 (= res!1549398 (not (isDefined!6810 lt!1328935)))))

(declare-fun d!1135334 () Bool)

(assert (=> d!1135334 e!2363733))

(declare-fun res!1549395 () Bool)

(assert (=> d!1135334 (=> (not res!1549395) (not e!2363733))))

(declare-fun isDefined!6811 (Option!8650) Bool)

(assert (=> d!1135334 (= res!1549395 (= (isDefined!6810 lt!1328935) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678)))))))

(assert (=> d!1135334 (= lt!1328935 e!2363736)))

(declare-fun c!667213 () Bool)

(assert (=> d!1135334 (= c!667213 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1328932 () Unit!58192)

(declare-fun lt!1328930 () Unit!58192)

(assert (=> d!1135334 (= lt!1328932 lt!1328930)))

(declare-fun lt!1328931 () List!40547)

(declare-fun lt!1328934 () List!40547)

(declare-fun isPrefix!3333 (List!40547 List!40547) Bool)

(assert (=> d!1135334 (isPrefix!3333 lt!1328931 lt!1328934)))

(declare-fun lemmaIsPrefixRefl!2118 (List!40547 List!40547) Unit!58192)

(assert (=> d!1135334 (= lt!1328930 (lemmaIsPrefixRefl!2118 lt!1328931 lt!1328934))))

(assert (=> d!1135334 (= lt!1328934 (list!15055 input!678))))

(assert (=> d!1135334 (= lt!1328931 (list!15055 input!678))))

(declare-fun rulesValidInductive!2192 (LexerInterface!5813 List!40549) Bool)

(assert (=> d!1135334 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135334 (= (maxPrefixZipperSequenceV2!613 thiss!11876 rules!1265 input!678 totalInput!335) lt!1328935)))

(assert (= (and d!1135334 c!667213) b!3827267))

(assert (= (and d!1135334 (not c!667213)) b!3827263))

(assert (= (or b!3827267 b!3827263) bm!281167))

(assert (= (and d!1135334 res!1549395) b!3827270))

(assert (= (and b!3827270 (not res!1549398)) b!3827269))

(assert (= (and b!3827269 res!1549393) b!3827265))

(assert (= (and b!3827270 res!1549397) b!3827268))

(assert (= (and b!3827268 (not res!1549396)) b!3827266))

(assert (= (and b!3827266 res!1549394) b!3827264))

(assert (=> b!3827264 m!4379223))

(declare-fun m!4379471 () Bool)

(assert (=> b!3827264 m!4379471))

(declare-fun m!4379473 () Bool)

(assert (=> b!3827264 m!4379473))

(assert (=> b!3827264 m!4379471))

(declare-fun m!4379475 () Bool)

(assert (=> b!3827264 m!4379475))

(declare-fun m!4379477 () Bool)

(assert (=> b!3827264 m!4379477))

(assert (=> b!3827264 m!4379223))

(declare-fun m!4379479 () Bool)

(assert (=> b!3827270 m!4379479))

(declare-fun m!4379481 () Bool)

(assert (=> b!3827263 m!4379481))

(declare-fun m!4379483 () Bool)

(assert (=> d!1135334 m!4379483))

(declare-fun m!4379485 () Bool)

(assert (=> d!1135334 m!4379485))

(declare-fun m!4379487 () Bool)

(assert (=> d!1135334 m!4379487))

(declare-fun m!4379489 () Bool)

(assert (=> d!1135334 m!4379489))

(assert (=> d!1135334 m!4379223))

(assert (=> d!1135334 m!4379479))

(assert (=> d!1135334 m!4379223))

(assert (=> d!1135334 m!4379485))

(declare-fun m!4379491 () Bool)

(assert (=> d!1135334 m!4379491))

(assert (=> b!3827265 m!4379223))

(assert (=> b!3827265 m!4379485))

(assert (=> b!3827265 m!4379473))

(assert (=> b!3827265 m!4379485))

(declare-fun m!4379493 () Bool)

(assert (=> b!3827265 m!4379493))

(assert (=> b!3827265 m!4379477))

(assert (=> b!3827265 m!4379223))

(declare-fun m!4379495 () Bool)

(assert (=> bm!281167 m!4379495))

(assert (=> b!3827268 m!4379479))

(assert (=> b!3827266 m!4379473))

(assert (=> b!3827266 m!4379223))

(assert (=> b!3827266 m!4379223))

(assert (=> b!3827266 m!4379471))

(assert (=> b!3827266 m!4379471))

(assert (=> b!3827266 m!4379475))

(assert (=> b!3827269 m!4379473))

(assert (=> b!3827269 m!4379223))

(assert (=> b!3827269 m!4379223))

(assert (=> b!3827269 m!4379485))

(assert (=> b!3827269 m!4379485))

(assert (=> b!3827269 m!4379493))

(assert (=> b!3827068 d!1135334))

(declare-fun d!1135392 () Bool)

(declare-fun c!667216 () Bool)

(assert (=> d!1135392 (= c!667216 ((_ is Node!12423) (c!667181 acc!335)))))

(declare-fun e!2363743 () Bool)

(assert (=> d!1135392 (= (inv!54484 (c!667181 acc!335)) e!2363743)))

(declare-fun b!3827277 () Bool)

(declare-fun inv!54495 (Conc!12423) Bool)

(assert (=> b!3827277 (= e!2363743 (inv!54495 (c!667181 acc!335)))))

(declare-fun b!3827278 () Bool)

(declare-fun e!2363744 () Bool)

(assert (=> b!3827278 (= e!2363743 e!2363744)))

(declare-fun res!1549401 () Bool)

(assert (=> b!3827278 (= res!1549401 (not ((_ is Leaf!19233) (c!667181 acc!335))))))

(assert (=> b!3827278 (=> res!1549401 e!2363744)))

(declare-fun b!3827279 () Bool)

(declare-fun inv!54496 (Conc!12423) Bool)

(assert (=> b!3827279 (= e!2363744 (inv!54496 (c!667181 acc!335)))))

(assert (= (and d!1135392 c!667216) b!3827277))

(assert (= (and d!1135392 (not c!667216)) b!3827278))

(assert (= (and b!3827278 (not res!1549401)) b!3827279))

(declare-fun m!4379497 () Bool)

(assert (=> b!3827277 m!4379497))

(declare-fun m!4379499 () Bool)

(assert (=> b!3827279 m!4379499))

(assert (=> b!3827054 d!1135392))

(declare-fun d!1135394 () Bool)

(assert (=> d!1135394 (= (list!15055 (_2!22945 lt!1328861)) (list!15059 (c!667180 (_2!22945 lt!1328861))))))

(declare-fun bs!581927 () Bool)

(assert (= bs!581927 d!1135394))

(declare-fun m!4379501 () Bool)

(assert (=> bs!581927 m!4379501))

(assert (=> b!3827065 d!1135394))

(declare-fun d!1135396 () Bool)

(assert (=> d!1135396 (= (list!15055 (_2!22945 lt!1328855)) (list!15059 (c!667180 (_2!22945 lt!1328855))))))

(declare-fun bs!581928 () Bool)

(assert (= bs!581928 d!1135396))

(declare-fun m!4379503 () Bool)

(assert (=> bs!581928 m!4379503))

(assert (=> b!3827065 d!1135396))

(declare-fun d!1135398 () Bool)

(declare-fun e!2363747 () Bool)

(assert (=> d!1135398 e!2363747))

(declare-fun res!1549404 () Bool)

(assert (=> d!1135398 (=> res!1549404 e!2363747)))

(declare-fun lt!1328938 () Bool)

(assert (=> d!1135398 (= res!1549404 (not lt!1328938))))

(declare-fun drop!2133 (List!40547 Int) List!40547)

(declare-fun size!30470 (List!40547) Int)

(assert (=> d!1135398 (= lt!1328938 (= lt!1328865 (drop!2133 lt!1328853 (- (size!30470 lt!1328853) (size!30470 lt!1328865)))))))

(assert (=> d!1135398 (= (isSuffix!996 lt!1328865 lt!1328853) lt!1328938)))

(declare-fun b!3827282 () Bool)

(assert (=> b!3827282 (= e!2363747 (>= (size!30470 lt!1328853) (size!30470 lt!1328865)))))

(assert (= (and d!1135398 (not res!1549404)) b!3827282))

(declare-fun m!4379505 () Bool)

(assert (=> d!1135398 m!4379505))

(declare-fun m!4379507 () Bool)

(assert (=> d!1135398 m!4379507))

(declare-fun m!4379509 () Bool)

(assert (=> d!1135398 m!4379509))

(assert (=> b!3827282 m!4379505))

(assert (=> b!3827282 m!4379507))

(assert (=> b!3827064 d!1135398))

(declare-fun d!1135400 () Bool)

(declare-fun e!2363748 () Bool)

(assert (=> d!1135400 e!2363748))

(declare-fun res!1549405 () Bool)

(assert (=> d!1135400 (=> res!1549405 e!2363748)))

(declare-fun lt!1328939 () Bool)

(assert (=> d!1135400 (= res!1549405 (not lt!1328939))))

(assert (=> d!1135400 (= lt!1328939 (= lt!1328865 (drop!2133 lt!1328860 (- (size!30470 lt!1328860) (size!30470 lt!1328865)))))))

(assert (=> d!1135400 (= (isSuffix!996 lt!1328865 lt!1328860) lt!1328939)))

(declare-fun b!3827283 () Bool)

(assert (=> b!3827283 (= e!2363748 (>= (size!30470 lt!1328860) (size!30470 lt!1328865)))))

(assert (= (and d!1135400 (not res!1549405)) b!3827283))

(declare-fun m!4379511 () Bool)

(assert (=> d!1135400 m!4379511))

(assert (=> d!1135400 m!4379507))

(declare-fun m!4379513 () Bool)

(assert (=> d!1135400 m!4379513))

(assert (=> b!3827283 m!4379511))

(assert (=> b!3827283 m!4379507))

(assert (=> b!3827064 d!1135400))

(declare-fun d!1135402 () Bool)

(assert (=> d!1135402 (isSuffix!996 lt!1328865 (++!10187 lt!1328858 lt!1328865))))

(declare-fun lt!1328942 () Unit!58192)

(declare-fun choose!22528 (List!40547 List!40547) Unit!58192)

(assert (=> d!1135402 (= lt!1328942 (choose!22528 lt!1328858 lt!1328865))))

(assert (=> d!1135402 (= (lemmaConcatTwoListThenFSndIsSuffix!681 lt!1328858 lt!1328865) lt!1328942)))

(declare-fun bs!581929 () Bool)

(assert (= bs!581929 d!1135402))

(assert (=> bs!581929 m!4379219))

(assert (=> bs!581929 m!4379219))

(declare-fun m!4379515 () Bool)

(assert (=> bs!581929 m!4379515))

(declare-fun m!4379517 () Bool)

(assert (=> bs!581929 m!4379517))

(assert (=> b!3827064 d!1135402))

(declare-fun b!3827298 () Bool)

(declare-fun e!2363757 () Bool)

(declare-fun lt!1328950 () tuple2!39622)

(assert (=> b!3827298 (= e!2363757 (= (list!15055 (_2!22945 lt!1328950)) (list!15055 totalInput!335)))))

(declare-fun d!1135404 () Bool)

(declare-fun e!2363760 () Bool)

(assert (=> d!1135404 e!2363760))

(declare-fun res!1549414 () Bool)

(assert (=> d!1135404 (=> (not res!1549414) (not e!2363760))))

(assert (=> d!1135404 (= res!1549414 e!2363757)))

(declare-fun c!667222 () Bool)

(declare-fun size!30471 (BalanceConc!24440) Int)

(assert (=> d!1135404 (= c!667222 (> (size!30471 (_1!22945 lt!1328950)) 0))))

(declare-fun e!2363759 () tuple2!39622)

(assert (=> d!1135404 (= lt!1328950 e!2363759)))

(declare-fun c!667221 () Bool)

(declare-fun lt!1328951 () Option!8648)

(assert (=> d!1135404 (= c!667221 ((_ is Some!8647) lt!1328951))))

(declare-fun maxPrefixZipperSequence!1219 (LexerInterface!5813 List!40549 BalanceConc!24438) Option!8648)

(assert (=> d!1135404 (= lt!1328951 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1135404 (= (lexRec!837 thiss!11876 rules!1265 totalInput!335) lt!1328950)))

(declare-fun b!3827299 () Bool)

(declare-fun e!2363758 () Bool)

(declare-fun isEmpty!23852 (BalanceConc!24440) Bool)

(assert (=> b!3827299 (= e!2363758 (not (isEmpty!23852 (_1!22945 lt!1328950))))))

(declare-fun b!3827300 () Bool)

(declare-fun lt!1328949 () tuple2!39622)

(declare-fun prepend!1380 (BalanceConc!24440 Token!11586) BalanceConc!24440)

(assert (=> b!3827300 (= e!2363759 (tuple2!39623 (prepend!1380 (_1!22945 lt!1328949) (_1!22946 (v!38923 lt!1328951))) (_2!22945 lt!1328949)))))

(assert (=> b!3827300 (= lt!1328949 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328951))))))

(declare-fun b!3827301 () Bool)

(assert (=> b!3827301 (= e!2363759 (tuple2!39623 (BalanceConc!24441 Empty!12423) totalInput!335))))

(declare-fun b!3827302 () Bool)

(assert (=> b!3827302 (= e!2363757 e!2363758)))

(declare-fun res!1549412 () Bool)

(declare-fun size!30472 (BalanceConc!24438) Int)

(assert (=> b!3827302 (= res!1549412 (< (size!30472 (_2!22945 lt!1328950)) (size!30472 totalInput!335)))))

(assert (=> b!3827302 (=> (not res!1549412) (not e!2363758))))

(declare-fun b!3827303 () Bool)

(declare-datatypes ((tuple2!39632 0))(
  ( (tuple2!39633 (_1!22950 List!40548) (_2!22950 List!40547)) )
))
(declare-fun lexList!1583 (LexerInterface!5813 List!40549 List!40547) tuple2!39632)

(assert (=> b!3827303 (= e!2363760 (= (list!15055 (_2!22945 lt!1328950)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 totalInput!335)))))))

(declare-fun b!3827304 () Bool)

(declare-fun res!1549413 () Bool)

(assert (=> b!3827304 (=> (not res!1549413) (not e!2363760))))

(assert (=> b!3827304 (= res!1549413 (= (list!15056 (_1!22945 lt!1328950)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 totalInput!335)))))))

(assert (= (and d!1135404 c!667221) b!3827300))

(assert (= (and d!1135404 (not c!667221)) b!3827301))

(assert (= (and d!1135404 c!667222) b!3827302))

(assert (= (and d!1135404 (not c!667222)) b!3827298))

(assert (= (and b!3827302 res!1549412) b!3827299))

(assert (= (and d!1135404 res!1549414) b!3827304))

(assert (= (and b!3827304 res!1549413) b!3827303))

(declare-fun m!4379519 () Bool)

(assert (=> d!1135404 m!4379519))

(declare-fun m!4379521 () Bool)

(assert (=> d!1135404 m!4379521))

(declare-fun m!4379523 () Bool)

(assert (=> b!3827298 m!4379523))

(assert (=> b!3827298 m!4379221))

(declare-fun m!4379525 () Bool)

(assert (=> b!3827300 m!4379525))

(declare-fun m!4379527 () Bool)

(assert (=> b!3827300 m!4379527))

(declare-fun m!4379529 () Bool)

(assert (=> b!3827302 m!4379529))

(declare-fun m!4379531 () Bool)

(assert (=> b!3827302 m!4379531))

(declare-fun m!4379533 () Bool)

(assert (=> b!3827304 m!4379533))

(assert (=> b!3827304 m!4379221))

(assert (=> b!3827304 m!4379221))

(declare-fun m!4379535 () Bool)

(assert (=> b!3827304 m!4379535))

(assert (=> b!3827303 m!4379523))

(assert (=> b!3827303 m!4379221))

(assert (=> b!3827303 m!4379221))

(assert (=> b!3827303 m!4379535))

(declare-fun m!4379537 () Bool)

(assert (=> b!3827299 m!4379537))

(assert (=> b!3827066 d!1135404))

(declare-fun d!1135406 () Bool)

(declare-fun e!2363763 () Bool)

(assert (=> d!1135406 e!2363763))

(declare-fun res!1549426 () Bool)

(assert (=> d!1135406 (=> (not res!1549426) (not e!2363763))))

(declare-fun appendAssocInst!875 (Conc!12423 Conc!12423) Bool)

(assert (=> d!1135406 (= res!1549426 (appendAssocInst!875 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))

(declare-fun lt!1328954 () BalanceConc!24440)

(declare-fun ++!10191 (Conc!12423 Conc!12423) Conc!12423)

(assert (=> d!1135406 (= lt!1328954 (BalanceConc!24441 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))

(assert (=> d!1135406 (= (++!10188 acc!335 (_1!22945 lt!1328861)) lt!1328954)))

(declare-fun b!3827314 () Bool)

(declare-fun res!1549423 () Bool)

(assert (=> b!3827314 (=> (not res!1549423) (not e!2363763))))

(declare-fun height!1816 (Conc!12423) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3827314 (= res!1549423 (<= (height!1816 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) (+ (max!0 (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861)))) 1)))))

(declare-fun b!3827315 () Bool)

(declare-fun res!1549425 () Bool)

(assert (=> b!3827315 (=> (not res!1549425) (not e!2363763))))

(assert (=> b!3827315 (= res!1549425 (>= (height!1816 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) (max!0 (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827313 () Bool)

(declare-fun res!1549424 () Bool)

(assert (=> b!3827313 (=> (not res!1549424) (not e!2363763))))

(declare-fun isBalanced!3601 (Conc!12423) Bool)

(assert (=> b!3827313 (= res!1549424 (isBalanced!3601 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3827316 () Bool)

(declare-fun ++!10192 (List!40548 List!40548) List!40548)

(assert (=> b!3827316 (= e!2363763 (= (list!15056 lt!1328954) (++!10192 (list!15056 acc!335) (list!15056 (_1!22945 lt!1328861)))))))

(assert (= (and d!1135406 res!1549426) b!3827313))

(assert (= (and b!3827313 res!1549424) b!3827314))

(assert (= (and b!3827314 res!1549423) b!3827315))

(assert (= (and b!3827315 res!1549425) b!3827316))

(declare-fun m!4379539 () Bool)

(assert (=> d!1135406 m!4379539))

(declare-fun m!4379541 () Bool)

(assert (=> d!1135406 m!4379541))

(assert (=> b!3827313 m!4379541))

(assert (=> b!3827313 m!4379541))

(declare-fun m!4379543 () Bool)

(assert (=> b!3827313 m!4379543))

(declare-fun m!4379545 () Bool)

(assert (=> b!3827315 m!4379545))

(declare-fun m!4379547 () Bool)

(assert (=> b!3827315 m!4379547))

(declare-fun m!4379549 () Bool)

(assert (=> b!3827315 m!4379549))

(assert (=> b!3827315 m!4379547))

(assert (=> b!3827315 m!4379545))

(assert (=> b!3827315 m!4379541))

(assert (=> b!3827315 m!4379541))

(declare-fun m!4379551 () Bool)

(assert (=> b!3827315 m!4379551))

(declare-fun m!4379553 () Bool)

(assert (=> b!3827316 m!4379553))

(assert (=> b!3827316 m!4379193))

(declare-fun m!4379555 () Bool)

(assert (=> b!3827316 m!4379555))

(assert (=> b!3827316 m!4379193))

(assert (=> b!3827316 m!4379555))

(declare-fun m!4379557 () Bool)

(assert (=> b!3827316 m!4379557))

(assert (=> b!3827314 m!4379545))

(assert (=> b!3827314 m!4379547))

(assert (=> b!3827314 m!4379549))

(assert (=> b!3827314 m!4379547))

(assert (=> b!3827314 m!4379545))

(assert (=> b!3827314 m!4379541))

(assert (=> b!3827314 m!4379541))

(assert (=> b!3827314 m!4379551))

(assert (=> b!3827066 d!1135406))

(declare-fun d!1135408 () Bool)

(declare-fun list!15060 (Conc!12423) List!40548)

(assert (=> d!1135408 (= (list!15056 (_1!22945 lt!1328855)) (list!15060 (c!667181 (_1!22945 lt!1328855))))))

(declare-fun bs!581930 () Bool)

(assert (= bs!581930 d!1135408))

(declare-fun m!4379559 () Bool)

(assert (=> bs!581930 m!4379559))

(assert (=> b!3827066 d!1135408))

(declare-fun d!1135410 () Bool)

(assert (=> d!1135410 (= (list!15056 lt!1328854) (list!15060 (c!667181 lt!1328854)))))

(declare-fun bs!581931 () Bool)

(assert (= bs!581931 d!1135410))

(declare-fun m!4379561 () Bool)

(assert (=> bs!581931 m!4379561))

(assert (=> b!3827066 d!1135410))

(declare-fun b!3827317 () Bool)

(declare-fun e!2363764 () Bool)

(declare-fun lt!1328956 () tuple2!39622)

(assert (=> b!3827317 (= e!2363764 (= (list!15055 (_2!22945 lt!1328956)) (list!15055 input!678)))))

(declare-fun d!1135412 () Bool)

(declare-fun e!2363767 () Bool)

(assert (=> d!1135412 e!2363767))

(declare-fun res!1549429 () Bool)

(assert (=> d!1135412 (=> (not res!1549429) (not e!2363767))))

(assert (=> d!1135412 (= res!1549429 e!2363764)))

(declare-fun c!667227 () Bool)

(assert (=> d!1135412 (= c!667227 (> (size!30471 (_1!22945 lt!1328956)) 0))))

(declare-fun e!2363766 () tuple2!39622)

(assert (=> d!1135412 (= lt!1328956 e!2363766)))

(declare-fun c!667226 () Bool)

(declare-fun lt!1328957 () Option!8648)

(assert (=> d!1135412 (= c!667226 ((_ is Some!8647) lt!1328957))))

(assert (=> d!1135412 (= lt!1328957 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 input!678))))

(assert (=> d!1135412 (= (lexRec!837 thiss!11876 rules!1265 input!678) lt!1328956)))

(declare-fun b!3827318 () Bool)

(declare-fun e!2363765 () Bool)

(assert (=> b!3827318 (= e!2363765 (not (isEmpty!23852 (_1!22945 lt!1328956))))))

(declare-fun b!3827319 () Bool)

(declare-fun lt!1328955 () tuple2!39622)

(assert (=> b!3827319 (= e!2363766 (tuple2!39623 (prepend!1380 (_1!22945 lt!1328955) (_1!22946 (v!38923 lt!1328957))) (_2!22945 lt!1328955)))))

(assert (=> b!3827319 (= lt!1328955 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328957))))))

(declare-fun b!3827320 () Bool)

(assert (=> b!3827320 (= e!2363766 (tuple2!39623 (BalanceConc!24441 Empty!12423) input!678))))

(declare-fun b!3827321 () Bool)

(assert (=> b!3827321 (= e!2363764 e!2363765)))

(declare-fun res!1549427 () Bool)

(assert (=> b!3827321 (= res!1549427 (< (size!30472 (_2!22945 lt!1328956)) (size!30472 input!678)))))

(assert (=> b!3827321 (=> (not res!1549427) (not e!2363765))))

(declare-fun b!3827322 () Bool)

(assert (=> b!3827322 (= e!2363767 (= (list!15055 (_2!22945 lt!1328956)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 input!678)))))))

(declare-fun b!3827323 () Bool)

(declare-fun res!1549428 () Bool)

(assert (=> b!3827323 (=> (not res!1549428) (not e!2363767))))

(assert (=> b!3827323 (= res!1549428 (= (list!15056 (_1!22945 lt!1328956)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 input!678)))))))

(assert (= (and d!1135412 c!667226) b!3827319))

(assert (= (and d!1135412 (not c!667226)) b!3827320))

(assert (= (and d!1135412 c!667227) b!3827321))

(assert (= (and d!1135412 (not c!667227)) b!3827317))

(assert (= (and b!3827321 res!1549427) b!3827318))

(assert (= (and d!1135412 res!1549429) b!3827323))

(assert (= (and b!3827323 res!1549428) b!3827322))

(declare-fun m!4379563 () Bool)

(assert (=> d!1135412 m!4379563))

(declare-fun m!4379565 () Bool)

(assert (=> d!1135412 m!4379565))

(declare-fun m!4379567 () Bool)

(assert (=> b!3827317 m!4379567))

(assert (=> b!3827317 m!4379223))

(declare-fun m!4379569 () Bool)

(assert (=> b!3827319 m!4379569))

(declare-fun m!4379571 () Bool)

(assert (=> b!3827319 m!4379571))

(declare-fun m!4379573 () Bool)

(assert (=> b!3827321 m!4379573))

(declare-fun m!4379575 () Bool)

(assert (=> b!3827321 m!4379575))

(declare-fun m!4379577 () Bool)

(assert (=> b!3827323 m!4379577))

(assert (=> b!3827323 m!4379223))

(assert (=> b!3827323 m!4379223))

(declare-fun m!4379579 () Bool)

(assert (=> b!3827323 m!4379579))

(assert (=> b!3827322 m!4379567))

(assert (=> b!3827322 m!4379223))

(assert (=> b!3827322 m!4379223))

(assert (=> b!3827322 m!4379579))

(declare-fun m!4379581 () Bool)

(assert (=> b!3827318 m!4379581))

(assert (=> b!3827066 d!1135412))

(declare-fun d!1135414 () Bool)

(declare-fun isBalanced!3602 (Conc!12422) Bool)

(assert (=> d!1135414 (= (inv!54487 input!678) (isBalanced!3602 (c!667180 input!678)))))

(declare-fun bs!581932 () Bool)

(assert (= bs!581932 d!1135414))

(declare-fun m!4379583 () Bool)

(assert (=> bs!581932 m!4379583))

(assert (=> start!358080 d!1135414))

(declare-fun d!1135416 () Bool)

(assert (=> d!1135416 (= (inv!54488 acc!335) (isBalanced!3601 (c!667181 acc!335)))))

(declare-fun bs!581933 () Bool)

(assert (= bs!581933 d!1135416))

(declare-fun m!4379585 () Bool)

(assert (=> bs!581933 m!4379585))

(assert (=> start!358080 d!1135416))

(declare-fun d!1135418 () Bool)

(assert (=> d!1135418 (= (inv!54487 treated!13) (isBalanced!3602 (c!667180 treated!13)))))

(declare-fun bs!581934 () Bool)

(assert (= bs!581934 d!1135418))

(declare-fun m!4379587 () Bool)

(assert (=> bs!581934 m!4379587))

(assert (=> start!358080 d!1135418))

(declare-fun d!1135420 () Bool)

(assert (=> d!1135420 (= (inv!54487 totalInput!335) (isBalanced!3602 (c!667180 totalInput!335)))))

(declare-fun bs!581935 () Bool)

(assert (= bs!581935 d!1135420))

(declare-fun m!4379589 () Bool)

(assert (=> bs!581935 m!4379589))

(assert (=> start!358080 d!1135420))

(declare-fun d!1135422 () Bool)

(declare-fun c!667230 () Bool)

(assert (=> d!1135422 (= c!667230 ((_ is Node!12422) (c!667180 totalInput!335)))))

(declare-fun e!2363772 () Bool)

(assert (=> d!1135422 (= (inv!54485 (c!667180 totalInput!335)) e!2363772)))

(declare-fun b!3827330 () Bool)

(declare-fun inv!54497 (Conc!12422) Bool)

(assert (=> b!3827330 (= e!2363772 (inv!54497 (c!667180 totalInput!335)))))

(declare-fun b!3827331 () Bool)

(declare-fun e!2363773 () Bool)

(assert (=> b!3827331 (= e!2363772 e!2363773)))

(declare-fun res!1549432 () Bool)

(assert (=> b!3827331 (= res!1549432 (not ((_ is Leaf!19232) (c!667180 totalInput!335))))))

(assert (=> b!3827331 (=> res!1549432 e!2363773)))

(declare-fun b!3827332 () Bool)

(declare-fun inv!54498 (Conc!12422) Bool)

(assert (=> b!3827332 (= e!2363773 (inv!54498 (c!667180 totalInput!335)))))

(assert (= (and d!1135422 c!667230) b!3827330))

(assert (= (and d!1135422 (not c!667230)) b!3827331))

(assert (= (and b!3827331 (not res!1549432)) b!3827332))

(declare-fun m!4379591 () Bool)

(assert (=> b!3827330 m!4379591))

(declare-fun m!4379593 () Bool)

(assert (=> b!3827332 m!4379593))

(assert (=> b!3827055 d!1135422))

(declare-fun d!1135424 () Bool)

(assert (=> d!1135424 (= (list!15056 acc!335) (list!15060 (c!667181 acc!335)))))

(declare-fun bs!581936 () Bool)

(assert (= bs!581936 d!1135424))

(declare-fun m!4379595 () Bool)

(assert (=> bs!581936 m!4379595))

(assert (=> b!3827063 d!1135424))

(declare-fun d!1135426 () Bool)

(assert (=> d!1135426 (= (list!15056 (_1!22945 lt!1328863)) (list!15060 (c!667181 (_1!22945 lt!1328863))))))

(declare-fun bs!581937 () Bool)

(assert (= bs!581937 d!1135426))

(declare-fun m!4379597 () Bool)

(assert (=> bs!581937 m!4379597))

(assert (=> b!3827063 d!1135426))

(declare-fun b!3827333 () Bool)

(declare-fun e!2363774 () Bool)

(declare-fun lt!1328959 () tuple2!39622)

(assert (=> b!3827333 (= e!2363774 (= (list!15055 (_2!22945 lt!1328959)) (list!15055 treated!13)))))

(declare-fun d!1135428 () Bool)

(declare-fun e!2363777 () Bool)

(assert (=> d!1135428 e!2363777))

(declare-fun res!1549435 () Bool)

(assert (=> d!1135428 (=> (not res!1549435) (not e!2363777))))

(assert (=> d!1135428 (= res!1549435 e!2363774)))

(declare-fun c!667232 () Bool)

(assert (=> d!1135428 (= c!667232 (> (size!30471 (_1!22945 lt!1328959)) 0))))

(declare-fun e!2363776 () tuple2!39622)

(assert (=> d!1135428 (= lt!1328959 e!2363776)))

(declare-fun c!667231 () Bool)

(declare-fun lt!1328960 () Option!8648)

(assert (=> d!1135428 (= c!667231 ((_ is Some!8647) lt!1328960))))

(assert (=> d!1135428 (= lt!1328960 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1135428 (= (lexRec!837 thiss!11876 rules!1265 treated!13) lt!1328959)))

(declare-fun b!3827334 () Bool)

(declare-fun e!2363775 () Bool)

(assert (=> b!3827334 (= e!2363775 (not (isEmpty!23852 (_1!22945 lt!1328959))))))

(declare-fun b!3827335 () Bool)

(declare-fun lt!1328958 () tuple2!39622)

(assert (=> b!3827335 (= e!2363776 (tuple2!39623 (prepend!1380 (_1!22945 lt!1328958) (_1!22946 (v!38923 lt!1328960))) (_2!22945 lt!1328958)))))

(assert (=> b!3827335 (= lt!1328958 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328960))))))

(declare-fun b!3827336 () Bool)

(assert (=> b!3827336 (= e!2363776 (tuple2!39623 (BalanceConc!24441 Empty!12423) treated!13))))

(declare-fun b!3827337 () Bool)

(assert (=> b!3827337 (= e!2363774 e!2363775)))

(declare-fun res!1549433 () Bool)

(assert (=> b!3827337 (= res!1549433 (< (size!30472 (_2!22945 lt!1328959)) (size!30472 treated!13)))))

(assert (=> b!3827337 (=> (not res!1549433) (not e!2363775))))

(declare-fun b!3827338 () Bool)

(assert (=> b!3827338 (= e!2363777 (= (list!15055 (_2!22945 lt!1328959)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 treated!13)))))))

(declare-fun b!3827339 () Bool)

(declare-fun res!1549434 () Bool)

(assert (=> b!3827339 (=> (not res!1549434) (not e!2363777))))

(assert (=> b!3827339 (= res!1549434 (= (list!15056 (_1!22945 lt!1328959)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 treated!13)))))))

(assert (= (and d!1135428 c!667231) b!3827335))

(assert (= (and d!1135428 (not c!667231)) b!3827336))

(assert (= (and d!1135428 c!667232) b!3827337))

(assert (= (and d!1135428 (not c!667232)) b!3827333))

(assert (= (and b!3827337 res!1549433) b!3827334))

(assert (= (and d!1135428 res!1549435) b!3827339))

(assert (= (and b!3827339 res!1549434) b!3827338))

(declare-fun m!4379599 () Bool)

(assert (=> d!1135428 m!4379599))

(declare-fun m!4379601 () Bool)

(assert (=> d!1135428 m!4379601))

(declare-fun m!4379603 () Bool)

(assert (=> b!3827333 m!4379603))

(assert (=> b!3827333 m!4379225))

(declare-fun m!4379605 () Bool)

(assert (=> b!3827335 m!4379605))

(declare-fun m!4379607 () Bool)

(assert (=> b!3827335 m!4379607))

(declare-fun m!4379609 () Bool)

(assert (=> b!3827337 m!4379609))

(declare-fun m!4379611 () Bool)

(assert (=> b!3827337 m!4379611))

(declare-fun m!4379613 () Bool)

(assert (=> b!3827339 m!4379613))

(assert (=> b!3827339 m!4379225))

(assert (=> b!3827339 m!4379225))

(declare-fun m!4379615 () Bool)

(assert (=> b!3827339 m!4379615))

(assert (=> b!3827338 m!4379603))

(assert (=> b!3827338 m!4379225))

(assert (=> b!3827338 m!4379225))

(assert (=> b!3827338 m!4379615))

(declare-fun m!4379617 () Bool)

(assert (=> b!3827334 m!4379617))

(assert (=> b!3827063 d!1135428))

(declare-fun d!1135430 () Bool)

(declare-fun c!667233 () Bool)

(assert (=> d!1135430 (= c!667233 ((_ is Node!12422) (c!667180 treated!13)))))

(declare-fun e!2363778 () Bool)

(assert (=> d!1135430 (= (inv!54485 (c!667180 treated!13)) e!2363778)))

(declare-fun b!3827340 () Bool)

(assert (=> b!3827340 (= e!2363778 (inv!54497 (c!667180 treated!13)))))

(declare-fun b!3827341 () Bool)

(declare-fun e!2363779 () Bool)

(assert (=> b!3827341 (= e!2363778 e!2363779)))

(declare-fun res!1549436 () Bool)

(assert (=> b!3827341 (= res!1549436 (not ((_ is Leaf!19232) (c!667180 treated!13))))))

(assert (=> b!3827341 (=> res!1549436 e!2363779)))

(declare-fun b!3827342 () Bool)

(assert (=> b!3827342 (= e!2363779 (inv!54498 (c!667180 treated!13)))))

(assert (= (and d!1135430 c!667233) b!3827340))

(assert (= (and d!1135430 (not c!667233)) b!3827341))

(assert (= (and b!3827341 (not res!1549436)) b!3827342))

(declare-fun m!4379619 () Bool)

(assert (=> b!3827340 m!4379619))

(declare-fun m!4379621 () Bool)

(assert (=> b!3827342 m!4379621))

(assert (=> b!3827070 d!1135430))

(declare-fun b!3827351 () Bool)

(declare-fun e!2363784 () List!40547)

(assert (=> b!3827351 (= e!2363784 lt!1328865)))

(declare-fun b!3827352 () Bool)

(assert (=> b!3827352 (= e!2363784 (Cons!40423 (h!45843 lt!1328858) (++!10187 (t!308874 lt!1328858) lt!1328865)))))

(declare-fun b!3827353 () Bool)

(declare-fun res!1549442 () Bool)

(declare-fun e!2363785 () Bool)

(assert (=> b!3827353 (=> (not res!1549442) (not e!2363785))))

(declare-fun lt!1328963 () List!40547)

(assert (=> b!3827353 (= res!1549442 (= (size!30470 lt!1328963) (+ (size!30470 lt!1328858) (size!30470 lt!1328865))))))

(declare-fun b!3827354 () Bool)

(assert (=> b!3827354 (= e!2363785 (or (not (= lt!1328865 Nil!40423)) (= lt!1328963 lt!1328858)))))

(declare-fun d!1135432 () Bool)

(assert (=> d!1135432 e!2363785))

(declare-fun res!1549441 () Bool)

(assert (=> d!1135432 (=> (not res!1549441) (not e!2363785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5990 (List!40547) (InoxSet C!22444))

(assert (=> d!1135432 (= res!1549441 (= (content!5990 lt!1328963) ((_ map or) (content!5990 lt!1328858) (content!5990 lt!1328865))))))

(assert (=> d!1135432 (= lt!1328963 e!2363784)))

(declare-fun c!667236 () Bool)

(assert (=> d!1135432 (= c!667236 ((_ is Nil!40423) lt!1328858))))

(assert (=> d!1135432 (= (++!10187 lt!1328858 lt!1328865) lt!1328963)))

(assert (= (and d!1135432 c!667236) b!3827351))

(assert (= (and d!1135432 (not c!667236)) b!3827352))

(assert (= (and d!1135432 res!1549441) b!3827353))

(assert (= (and b!3827353 res!1549442) b!3827354))

(declare-fun m!4379623 () Bool)

(assert (=> b!3827352 m!4379623))

(declare-fun m!4379625 () Bool)

(assert (=> b!3827353 m!4379625))

(declare-fun m!4379627 () Bool)

(assert (=> b!3827353 m!4379627))

(assert (=> b!3827353 m!4379507))

(declare-fun m!4379629 () Bool)

(assert (=> d!1135432 m!4379629))

(declare-fun m!4379631 () Bool)

(assert (=> d!1135432 m!4379631))

(declare-fun m!4379633 () Bool)

(assert (=> d!1135432 m!4379633))

(assert (=> b!3827059 d!1135432))

(declare-fun d!1135434 () Bool)

(assert (=> d!1135434 (= (list!15055 totalInput!335) (list!15059 (c!667180 totalInput!335)))))

(declare-fun bs!581938 () Bool)

(assert (= bs!581938 d!1135434))

(declare-fun m!4379635 () Bool)

(assert (=> bs!581938 m!4379635))

(assert (=> b!3827059 d!1135434))

(declare-fun d!1135436 () Bool)

(assert (=> d!1135436 (= (list!15055 input!678) (list!15059 (c!667180 input!678)))))

(declare-fun bs!581939 () Bool)

(assert (= bs!581939 d!1135436))

(declare-fun m!4379637 () Bool)

(assert (=> bs!581939 m!4379637))

(assert (=> b!3827059 d!1135436))

(declare-fun d!1135438 () Bool)

(assert (=> d!1135438 (= (list!15055 treated!13) (list!15059 (c!667180 treated!13)))))

(declare-fun bs!581940 () Bool)

(assert (= bs!581940 d!1135438))

(declare-fun m!4379639 () Bool)

(assert (=> bs!581940 m!4379639))

(assert (=> b!3827059 d!1135438))

(declare-fun d!1135440 () Bool)

(declare-fun c!667237 () Bool)

(assert (=> d!1135440 (= c!667237 ((_ is Node!12422) (c!667180 input!678)))))

(declare-fun e!2363786 () Bool)

(assert (=> d!1135440 (= (inv!54485 (c!667180 input!678)) e!2363786)))

(declare-fun b!3827355 () Bool)

(assert (=> b!3827355 (= e!2363786 (inv!54497 (c!667180 input!678)))))

(declare-fun b!3827356 () Bool)

(declare-fun e!2363787 () Bool)

(assert (=> b!3827356 (= e!2363786 e!2363787)))

(declare-fun res!1549443 () Bool)

(assert (=> b!3827356 (= res!1549443 (not ((_ is Leaf!19232) (c!667180 input!678))))))

(assert (=> b!3827356 (=> res!1549443 e!2363787)))

(declare-fun b!3827357 () Bool)

(assert (=> b!3827357 (= e!2363787 (inv!54498 (c!667180 input!678)))))

(assert (= (and d!1135440 c!667237) b!3827355))

(assert (= (and d!1135440 (not c!667237)) b!3827356))

(assert (= (and b!3827356 (not res!1549443)) b!3827357))

(declare-fun m!4379641 () Bool)

(assert (=> b!3827355 m!4379641))

(declare-fun m!4379643 () Bool)

(assert (=> b!3827357 m!4379643))

(assert (=> b!3827060 d!1135440))

(declare-fun e!2363790 () Bool)

(assert (=> b!3827057 (= tp!1158454 e!2363790)))

(declare-fun b!3827369 () Bool)

(declare-fun tp!1158521 () Bool)

(declare-fun tp!1158522 () Bool)

(assert (=> b!3827369 (= e!2363790 (and tp!1158521 tp!1158522))))

(declare-fun b!3827368 () Bool)

(declare-fun tp_is_empty!19209 () Bool)

(assert (=> b!3827368 (= e!2363790 tp_is_empty!19209)))

(declare-fun b!3827371 () Bool)

(declare-fun tp!1158520 () Bool)

(declare-fun tp!1158524 () Bool)

(assert (=> b!3827371 (= e!2363790 (and tp!1158520 tp!1158524))))

(declare-fun b!3827370 () Bool)

(declare-fun tp!1158523 () Bool)

(assert (=> b!3827370 (= e!2363790 tp!1158523)))

(assert (= (and b!3827057 ((_ is ElementMatch!11129) (regex!6224 (h!45845 rules!1265)))) b!3827368))

(assert (= (and b!3827057 ((_ is Concat!17584) (regex!6224 (h!45845 rules!1265)))) b!3827369))

(assert (= (and b!3827057 ((_ is Star!11129) (regex!6224 (h!45845 rules!1265)))) b!3827370))

(assert (= (and b!3827057 ((_ is Union!11129) (regex!6224 (h!45845 rules!1265)))) b!3827371))

(declare-fun tp!1158531 () Bool)

(declare-fun b!3827380 () Bool)

(declare-fun e!2363796 () Bool)

(declare-fun tp!1158533 () Bool)

(assert (=> b!3827380 (= e!2363796 (and (inv!54484 (left!31276 (c!667181 acc!335))) tp!1158533 (inv!54484 (right!31606 (c!667181 acc!335))) tp!1158531))))

(declare-fun b!3827382 () Bool)

(declare-fun e!2363795 () Bool)

(declare-fun tp!1158532 () Bool)

(assert (=> b!3827382 (= e!2363795 tp!1158532)))

(declare-fun b!3827381 () Bool)

(declare-fun inv!54499 (IArray!24851) Bool)

(assert (=> b!3827381 (= e!2363796 (and (inv!54499 (xs!15717 (c!667181 acc!335))) e!2363795))))

(assert (=> b!3827054 (= tp!1158458 (and (inv!54484 (c!667181 acc!335)) e!2363796))))

(assert (= (and b!3827054 ((_ is Node!12423) (c!667181 acc!335))) b!3827380))

(assert (= b!3827381 b!3827382))

(assert (= (and b!3827054 ((_ is Leaf!19233) (c!667181 acc!335))) b!3827381))

(declare-fun m!4379645 () Bool)

(assert (=> b!3827380 m!4379645))

(declare-fun m!4379647 () Bool)

(assert (=> b!3827380 m!4379647))

(declare-fun m!4379649 () Bool)

(assert (=> b!3827381 m!4379649))

(assert (=> b!3827054 m!4379191))

(declare-fun tp!1158541 () Bool)

(declare-fun tp!1158540 () Bool)

(declare-fun e!2363802 () Bool)

(declare-fun b!3827391 () Bool)

(assert (=> b!3827391 (= e!2363802 (and (inv!54485 (left!31275 (c!667180 treated!13))) tp!1158541 (inv!54485 (right!31605 (c!667180 treated!13))) tp!1158540))))

(declare-fun b!3827393 () Bool)

(declare-fun e!2363801 () Bool)

(declare-fun tp!1158542 () Bool)

(assert (=> b!3827393 (= e!2363801 tp!1158542)))

(declare-fun b!3827392 () Bool)

(declare-fun inv!54500 (IArray!24849) Bool)

(assert (=> b!3827392 (= e!2363802 (and (inv!54500 (xs!15716 (c!667180 treated!13))) e!2363801))))

(assert (=> b!3827070 (= tp!1158457 (and (inv!54485 (c!667180 treated!13)) e!2363802))))

(assert (= (and b!3827070 ((_ is Node!12422) (c!667180 treated!13))) b!3827391))

(assert (= b!3827392 b!3827393))

(assert (= (and b!3827070 ((_ is Leaf!19232) (c!667180 treated!13))) b!3827392))

(declare-fun m!4379651 () Bool)

(assert (=> b!3827391 m!4379651))

(declare-fun m!4379653 () Bool)

(assert (=> b!3827391 m!4379653))

(declare-fun m!4379655 () Bool)

(assert (=> b!3827392 m!4379655))

(assert (=> b!3827070 m!4379243))

(declare-fun b!3827404 () Bool)

(declare-fun b_free!101605 () Bool)

(declare-fun b_next!102309 () Bool)

(assert (=> b!3827404 (= b_free!101605 (not b_next!102309))))

(declare-fun tp!1158553 () Bool)

(declare-fun b_and!284499 () Bool)

(assert (=> b!3827404 (= tp!1158553 b_and!284499)))

(declare-fun b_free!101607 () Bool)

(declare-fun b_next!102311 () Bool)

(assert (=> b!3827404 (= b_free!101607 (not b_next!102311))))

(declare-fun tp!1158552 () Bool)

(declare-fun b_and!284501 () Bool)

(assert (=> b!3827404 (= tp!1158552 b_and!284501)))

(declare-fun e!2363814 () Bool)

(assert (=> b!3827404 (= e!2363814 (and tp!1158553 tp!1158552))))

(declare-fun b!3827403 () Bool)

(declare-fun tp!1158551 () Bool)

(declare-fun e!2363811 () Bool)

(assert (=> b!3827403 (= e!2363811 (and tp!1158551 (inv!54478 (tag!7084 (h!45845 (t!308876 rules!1265)))) (inv!54486 (transformation!6224 (h!45845 (t!308876 rules!1265)))) e!2363814))))

(declare-fun b!3827402 () Bool)

(declare-fun e!2363813 () Bool)

(declare-fun tp!1158554 () Bool)

(assert (=> b!3827402 (= e!2363813 (and e!2363811 tp!1158554))))

(assert (=> b!3827061 (= tp!1158451 e!2363813)))

(assert (= b!3827403 b!3827404))

(assert (= b!3827402 b!3827403))

(assert (= (and b!3827061 ((_ is Cons!40425) (t!308876 rules!1265))) b!3827402))

(declare-fun m!4379657 () Bool)

(assert (=> b!3827403 m!4379657))

(declare-fun m!4379659 () Bool)

(assert (=> b!3827403 m!4379659))

(declare-fun e!2363816 () Bool)

(declare-fun tp!1158556 () Bool)

(declare-fun b!3827405 () Bool)

(declare-fun tp!1158555 () Bool)

(assert (=> b!3827405 (= e!2363816 (and (inv!54485 (left!31275 (c!667180 input!678))) tp!1158556 (inv!54485 (right!31605 (c!667180 input!678))) tp!1158555))))

(declare-fun b!3827407 () Bool)

(declare-fun e!2363815 () Bool)

(declare-fun tp!1158557 () Bool)

(assert (=> b!3827407 (= e!2363815 tp!1158557)))

(declare-fun b!3827406 () Bool)

(assert (=> b!3827406 (= e!2363816 (and (inv!54500 (xs!15716 (c!667180 input!678))) e!2363815))))

(assert (=> b!3827060 (= tp!1158452 (and (inv!54485 (c!667180 input!678)) e!2363816))))

(assert (= (and b!3827060 ((_ is Node!12422) (c!667180 input!678))) b!3827405))

(assert (= b!3827406 b!3827407))

(assert (= (and b!3827060 ((_ is Leaf!19232) (c!667180 input!678))) b!3827406))

(declare-fun m!4379661 () Bool)

(assert (=> b!3827405 m!4379661))

(declare-fun m!4379663 () Bool)

(assert (=> b!3827405 m!4379663))

(declare-fun m!4379665 () Bool)

(assert (=> b!3827406 m!4379665))

(assert (=> b!3827060 m!4379217))

(declare-fun tp!1158558 () Bool)

(declare-fun tp!1158559 () Bool)

(declare-fun e!2363818 () Bool)

(declare-fun b!3827408 () Bool)

(assert (=> b!3827408 (= e!2363818 (and (inv!54485 (left!31275 (c!667180 totalInput!335))) tp!1158559 (inv!54485 (right!31605 (c!667180 totalInput!335))) tp!1158558))))

(declare-fun b!3827410 () Bool)

(declare-fun e!2363817 () Bool)

(declare-fun tp!1158560 () Bool)

(assert (=> b!3827410 (= e!2363817 tp!1158560)))

(declare-fun b!3827409 () Bool)

(assert (=> b!3827409 (= e!2363818 (and (inv!54500 (xs!15716 (c!667180 totalInput!335))) e!2363817))))

(assert (=> b!3827055 (= tp!1158456 (and (inv!54485 (c!667180 totalInput!335)) e!2363818))))

(assert (= (and b!3827055 ((_ is Node!12422) (c!667180 totalInput!335))) b!3827408))

(assert (= b!3827409 b!3827410))

(assert (= (and b!3827055 ((_ is Leaf!19232) (c!667180 totalInput!335))) b!3827409))

(declare-fun m!4379667 () Bool)

(assert (=> b!3827408 m!4379667))

(declare-fun m!4379669 () Bool)

(assert (=> b!3827408 m!4379669))

(declare-fun m!4379671 () Bool)

(assert (=> b!3827409 m!4379671))

(assert (=> b!3827055 m!4379215))

(check-sat (not b!3827085) (not b!3827409) (not d!1135400) (not b!3827402) (not b!3827333) (not d!1135414) (not b!3827318) (not d!1135416) (not b!3827406) (not d!1135330) (not b!3827408) (not b!3827283) (not b!3827342) (not b!3827314) (not d!1135412) (not b!3827391) (not b!3827269) (not b!3827055) (not d!1135434) (not b!3827371) (not b!3827302) (not d!1135406) (not b!3827393) (not b!3827300) (not d!1135402) (not d!1135328) (not b!3827264) (not b!3827277) (not d!1135418) b_and!284491 (not d!1135424) (not b_next!102309) (not b!3827323) (not d!1135334) (not b!3827352) (not b!3827070) (not d!1135408) (not b!3827330) (not d!1135410) (not b!3827381) (not b!3827304) (not b!3827303) b_and!284499 (not b!3827392) (not d!1135420) (not b!3827299) (not b!3827335) (not b_next!102311) (not b!3827270) (not b!3827332) b_and!284501 (not d!1135426) (not b!3827060) (not b!3827405) (not b_next!102303) (not b!3827353) (not b!3827340) (not bm!281167) tp_is_empty!19209 (not b!3827370) (not b!3827054) (not b!3827334) (not b!3827315) (not d!1135324) (not b!3827339) (not d!1135394) (not d!1135404) (not b!3827265) (not b!3827369) (not b!3827279) (not b!3827338) (not d!1135398) (not d!1135432) (not b!3827321) (not b!3827282) (not b!3827355) (not b!3827407) (not b!3827316) (not b!3827337) (not b!3827266) (not b!3827357) (not b!3827319) (not b!3827313) b_and!284493 (not d!1135428) (not b!3827380) (not b!3827082) (not b!3827263) (not b!3827382) (not b!3827298) (not b!3827410) (not b!3827322) (not d!1135396) (not d!1135438) (not b!3827268) (not b!3827403) (not d!1135436) (not b_next!102301) (not b!3827317))
(check-sat b_and!284491 (not b_next!102309) b_and!284499 (not b_next!102311) b_and!284501 (not b_next!102303) b_and!284493 (not b_next!102301))
(get-model)

(declare-fun b!3827603 () Bool)

(declare-fun e!2363927 () Bool)

(declare-fun e!2363925 () Bool)

(assert (=> b!3827603 (= e!2363927 e!2363925)))

(declare-fun res!1549570 () Bool)

(assert (=> b!3827603 (=> (not res!1549570) (not e!2363925))))

(declare-fun appendAssoc!285 (List!40548 List!40548 List!40548) Bool)

(assert (=> b!3827603 (= res!1549570 (appendAssoc!285 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3827604 () Bool)

(declare-fun e!2363930 () Bool)

(declare-fun e!2363928 () Bool)

(assert (=> b!3827604 (= e!2363930 e!2363928)))

(declare-fun res!1549565 () Bool)

(assert (=> b!3827604 (=> (not res!1549565) (not e!2363928))))

(assert (=> b!3827604 (= res!1549565 (appendAssoc!285 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827605 () Bool)

(declare-fun e!2363932 () Bool)

(assert (=> b!3827605 (= e!2363932 e!2363930)))

(declare-fun res!1549564 () Bool)

(assert (=> b!3827605 (=> res!1549564 e!2363930)))

(assert (=> b!3827605 (= res!1549564 (not ((_ is Node!12423) (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3827606 () Bool)

(declare-fun e!2363931 () Bool)

(assert (=> b!3827606 (= e!2363931 (appendAssoc!285 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827607 () Bool)

(declare-fun e!2363929 () Bool)

(declare-fun e!2363924 () Bool)

(assert (=> b!3827607 (= e!2363929 e!2363924)))

(declare-fun res!1549569 () Bool)

(assert (=> b!3827607 (=> (not res!1549569) (not e!2363924))))

(assert (=> b!3827607 (= res!1549569 (appendAssoc!285 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (right!31606 (c!667181 acc!335))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3827609 () Bool)

(assert (=> b!3827609 (= e!2363925 (appendAssoc!285 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827610 () Bool)

(declare-fun e!2363926 () Bool)

(assert (=> b!3827610 (= e!2363926 e!2363931)))

(declare-fun res!1549566 () Bool)

(assert (=> b!3827610 (=> (not res!1549566) (not e!2363931))))

(assert (=> b!3827610 (= res!1549566 (appendAssoc!285 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3827611 () Bool)

(assert (=> b!3827611 (= e!2363924 e!2363927)))

(declare-fun res!1549571 () Bool)

(assert (=> b!3827611 (=> res!1549571 e!2363927)))

(assert (=> b!3827611 (= res!1549571 (not ((_ is Node!12423) (right!31606 (c!667181 acc!335)))))))

(declare-fun d!1135498 () Bool)

(assert (=> d!1135498 e!2363932))

(declare-fun res!1549568 () Bool)

(assert (=> d!1135498 (=> (not res!1549568) (not e!2363932))))

(assert (=> d!1135498 (= res!1549568 e!2363929)))

(declare-fun res!1549572 () Bool)

(assert (=> d!1135498 (=> res!1549572 e!2363929)))

(assert (=> d!1135498 (= res!1549572 (not ((_ is Node!12423) (c!667181 acc!335))))))

(assert (=> d!1135498 (= (appendAssocInst!875 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))) true)))

(declare-fun b!3827608 () Bool)

(assert (=> b!3827608 (= e!2363928 e!2363926)))

(declare-fun res!1549567 () Bool)

(assert (=> b!3827608 (=> res!1549567 e!2363926)))

(assert (=> b!3827608 (= res!1549567 (not ((_ is Node!12423) (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(assert (= (and d!1135498 (not res!1549572)) b!3827607))

(assert (= (and b!3827607 res!1549569) b!3827611))

(assert (= (and b!3827611 (not res!1549571)) b!3827603))

(assert (= (and b!3827603 res!1549570) b!3827609))

(assert (= (and d!1135498 res!1549568) b!3827605))

(assert (= (and b!3827605 (not res!1549564)) b!3827604))

(assert (= (and b!3827604 res!1549565) b!3827608))

(assert (= (and b!3827608 (not res!1549567)) b!3827610))

(assert (= (and b!3827610 res!1549566) b!3827606))

(declare-fun m!4379847 () Bool)

(assert (=> b!3827609 m!4379847))

(declare-fun m!4379849 () Bool)

(assert (=> b!3827609 m!4379849))

(declare-fun m!4379851 () Bool)

(assert (=> b!3827609 m!4379851))

(declare-fun m!4379853 () Bool)

(assert (=> b!3827609 m!4379853))

(declare-fun m!4379855 () Bool)

(assert (=> b!3827609 m!4379855))

(assert (=> b!3827609 m!4379849))

(declare-fun m!4379857 () Bool)

(assert (=> b!3827609 m!4379857))

(assert (=> b!3827609 m!4379847))

(assert (=> b!3827609 m!4379853))

(assert (=> b!3827609 m!4379857))

(assert (=> b!3827609 m!4379851))

(assert (=> b!3827603 m!4379851))

(assert (=> b!3827603 m!4379857))

(assert (=> b!3827603 m!4379847))

(assert (=> b!3827603 m!4379851))

(assert (=> b!3827603 m!4379857))

(assert (=> b!3827603 m!4379847))

(declare-fun m!4379859 () Bool)

(assert (=> b!3827603 m!4379859))

(assert (=> b!3827607 m!4379849))

(declare-fun m!4379861 () Bool)

(assert (=> b!3827607 m!4379861))

(assert (=> b!3827607 m!4379847))

(assert (=> b!3827607 m!4379849))

(assert (=> b!3827607 m!4379861))

(assert (=> b!3827607 m!4379847))

(declare-fun m!4379863 () Bool)

(assert (=> b!3827607 m!4379863))

(declare-fun m!4379865 () Bool)

(assert (=> b!3827606 m!4379865))

(declare-fun m!4379867 () Bool)

(assert (=> b!3827606 m!4379867))

(assert (=> b!3827606 m!4379595))

(declare-fun m!4379869 () Bool)

(assert (=> b!3827606 m!4379869))

(assert (=> b!3827606 m!4379595))

(assert (=> b!3827606 m!4379869))

(declare-fun m!4379871 () Bool)

(assert (=> b!3827606 m!4379871))

(assert (=> b!3827606 m!4379871))

(assert (=> b!3827606 m!4379867))

(assert (=> b!3827606 m!4379865))

(declare-fun m!4379873 () Bool)

(assert (=> b!3827606 m!4379873))

(assert (=> b!3827604 m!4379595))

(declare-fun m!4379875 () Bool)

(assert (=> b!3827604 m!4379875))

(assert (=> b!3827604 m!4379865))

(assert (=> b!3827604 m!4379595))

(assert (=> b!3827604 m!4379875))

(assert (=> b!3827604 m!4379865))

(declare-fun m!4379877 () Bool)

(assert (=> b!3827604 m!4379877))

(assert (=> b!3827610 m!4379595))

(assert (=> b!3827610 m!4379869))

(assert (=> b!3827610 m!4379867))

(assert (=> b!3827610 m!4379595))

(assert (=> b!3827610 m!4379869))

(assert (=> b!3827610 m!4379867))

(declare-fun m!4379879 () Bool)

(assert (=> b!3827610 m!4379879))

(assert (=> d!1135406 d!1135498))

(declare-fun b!3827674 () Bool)

(declare-fun e!2363970 () Conc!12423)

(declare-fun call!281224 () Conc!12423)

(assert (=> b!3827674 (= e!2363970 call!281224)))

(declare-fun b!3827675 () Bool)

(declare-fun e!2363969 () Conc!12423)

(assert (=> b!3827675 (= e!2363969 e!2363970)))

(declare-fun lt!1329043 () Conc!12423)

(declare-fun call!281226 () Conc!12423)

(assert (=> b!3827675 (= lt!1329043 call!281226)))

(declare-fun c!667306 () Bool)

(declare-fun call!281221 () Int)

(declare-fun call!281227 () Int)

(assert (=> b!3827675 (= c!667306 (= call!281221 (- call!281227 3)))))

(declare-fun b!3827676 () Bool)

(declare-fun res!1549591 () Bool)

(declare-fun e!2363968 () Bool)

(assert (=> b!3827676 (=> (not res!1549591) (not e!2363968))))

(declare-fun lt!1329040 () Conc!12423)

(assert (=> b!3827676 (= res!1549591 (isBalanced!3601 lt!1329040))))

(declare-fun b!3827677 () Bool)

(declare-fun res!1549589 () Bool)

(assert (=> b!3827677 (=> (not res!1549589) (not e!2363968))))

(assert (=> b!3827677 (= res!1549589 (<= (height!1816 lt!1329040) (+ (max!0 (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861)))) 1)))))

(declare-fun call!281217 () Int)

(declare-fun bm!281212 () Bool)

(declare-fun c!667310 () Bool)

(assert (=> bm!281212 (= call!281217 (height!1816 (ite c!667310 (right!31606 (c!667181 acc!335)) (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827678 () Bool)

(declare-fun call!281231 () Conc!12423)

(assert (=> b!3827678 (= e!2363969 call!281231)))

(declare-fun bm!281213 () Bool)

(assert (=> bm!281213 (= call!281224 call!281231)))

(declare-fun bm!281214 () Bool)

(declare-fun call!281222 () Conc!12423)

(declare-fun call!281218 () Conc!12423)

(assert (=> bm!281214 (= call!281222 call!281218)))

(declare-fun b!3827679 () Bool)

(declare-fun e!2363963 () Conc!12423)

(declare-fun call!281232 () Conc!12423)

(assert (=> b!3827679 (= e!2363963 call!281232)))

(declare-fun b!3827680 () Bool)

(declare-fun e!2363965 () Conc!12423)

(declare-fun e!2363967 () Conc!12423)

(assert (=> b!3827680 (= e!2363965 e!2363967)))

(declare-fun lt!1329042 () Conc!12423)

(declare-fun call!281223 () Conc!12423)

(assert (=> b!3827680 (= lt!1329042 call!281223)))

(declare-fun c!667308 () Bool)

(assert (=> b!3827680 (= c!667308 (= call!281227 (- call!281221 3)))))

(declare-fun b!3827681 () Bool)

(declare-fun e!2363966 () Conc!12423)

(assert (=> b!3827681 (= e!2363963 e!2363966)))

(declare-fun lt!1329041 () Int)

(assert (=> b!3827681 (= c!667310 (< lt!1329041 (- 1)))))

(declare-fun b!3827682 () Bool)

(declare-fun c!667307 () Bool)

(declare-fun call!281219 () Int)

(assert (=> b!3827682 (= c!667307 (>= call!281219 call!281217))))

(assert (=> b!3827682 (= e!2363966 e!2363965)))

(declare-fun call!281220 () Conc!12423)

(declare-fun bm!281215 () Bool)

(declare-fun <>!360 (Conc!12423 Conc!12423) Conc!12423)

(assert (=> bm!281215 (= call!281218 (<>!360 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3827683 () Bool)

(declare-fun c!667309 () Bool)

(assert (=> b!3827683 (= c!667309 (and (<= (- 1) lt!1329041) (<= lt!1329041 1)))))

(assert (=> b!3827683 (= lt!1329041 (- (height!1816 (c!667181 (_1!22945 lt!1328861))) (height!1816 (c!667181 acc!335))))))

(declare-fun e!2363972 () Conc!12423)

(assert (=> b!3827683 (= e!2363972 e!2363963)))

(declare-fun bm!281216 () Bool)

(declare-fun call!281230 () Conc!12423)

(assert (=> bm!281216 (= call!281230 call!281218)))

(declare-fun b!3827684 () Bool)

(assert (=> b!3827684 (= e!2363967 call!281230)))

(declare-fun b!3827685 () Bool)

(assert (=> b!3827685 (= e!2363967 call!281230)))

(declare-fun b!3827686 () Bool)

(declare-fun e!2363971 () Conc!12423)

(assert (=> b!3827686 (= e!2363971 e!2363972)))

(declare-fun c!667312 () Bool)

(assert (=> b!3827686 (= c!667312 (= (c!667181 (_1!22945 lt!1328861)) Empty!12423))))

(declare-fun bm!281217 () Bool)

(declare-fun call!281225 () Conc!12423)

(assert (=> bm!281217 (= call!281231 call!281225)))

(declare-fun b!3827687 () Bool)

(declare-fun res!1549592 () Bool)

(assert (=> b!3827687 (=> (not res!1549592) (not e!2363968))))

(assert (=> b!3827687 (= res!1549592 (>= (height!1816 lt!1329040) (max!0 (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun d!1135502 () Bool)

(assert (=> d!1135502 e!2363968))

(declare-fun res!1549590 () Bool)

(assert (=> d!1135502 (=> (not res!1549590) (not e!2363968))))

(assert (=> d!1135502 (= res!1549590 (appendAssocInst!875 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))

(assert (=> d!1135502 (= lt!1329040 e!2363971)))

(declare-fun c!667305 () Bool)

(assert (=> d!1135502 (= c!667305 (= (c!667181 acc!335) Empty!12423))))

(declare-fun e!2363964 () Bool)

(assert (=> d!1135502 e!2363964))

(declare-fun res!1549593 () Bool)

(assert (=> d!1135502 (=> (not res!1549593) (not e!2363964))))

(assert (=> d!1135502 (= res!1549593 (isBalanced!3601 (c!667181 acc!335)))))

(assert (=> d!1135502 (= (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))) lt!1329040)))

(declare-fun b!3827688 () Bool)

(assert (=> b!3827688 (= e!2363971 (c!667181 (_1!22945 lt!1328861)))))

(declare-fun bm!281218 () Bool)

(assert (=> bm!281218 (= call!281227 (height!1816 (ite c!667310 lt!1329042 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun bm!281219 () Bool)

(declare-fun call!281229 () Conc!12423)

(assert (=> bm!281219 (= call!281226 call!281229)))

(declare-fun bm!281220 () Bool)

(declare-fun call!281228 () Conc!12423)

(assert (=> bm!281220 (= call!281220 call!281228)))

(declare-fun b!3827689 () Bool)

(assert (=> b!3827689 (= e!2363968 (= (list!15060 lt!1329040) (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun bm!281221 () Bool)

(assert (=> bm!281221 (= call!281225 call!281232)))

(declare-fun b!3827690 () Bool)

(assert (=> b!3827690 (= e!2363965 call!281228)))

(declare-fun b!3827691 () Bool)

(assert (=> b!3827691 (= e!2363964 (isBalanced!3601 (c!667181 (_1!22945 lt!1328861))))))

(declare-fun c!667311 () Bool)

(declare-fun bm!281222 () Bool)

(assert (=> bm!281222 (= call!281229 (++!10191 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun bm!281223 () Bool)

(assert (=> bm!281223 (= call!281221 (height!1816 (ite c!667310 (c!667181 acc!335) lt!1329043)))))

(declare-fun b!3827692 () Bool)

(assert (=> b!3827692 (= c!667311 (>= call!281217 call!281219))))

(assert (=> b!3827692 (= e!2363966 e!2363969)))

(declare-fun bm!281224 () Bool)

(assert (=> bm!281224 (= call!281232 (<>!360 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043)))) (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222)))))))

(declare-fun bm!281225 () Bool)

(assert (=> bm!281225 (= call!281228 call!281225)))

(declare-fun b!3827693 () Bool)

(assert (=> b!3827693 (= e!2363972 (c!667181 acc!335))))

(declare-fun bm!281226 () Bool)

(assert (=> bm!281226 (= call!281219 (height!1816 (ite c!667310 (left!31276 (c!667181 acc!335)) (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3827694 () Bool)

(assert (=> b!3827694 (= e!2363970 call!281224)))

(declare-fun bm!281227 () Bool)

(assert (=> bm!281227 (= call!281223 call!281229)))

(assert (= (and d!1135502 res!1549593) b!3827691))

(assert (= (and d!1135502 c!667305) b!3827688))

(assert (= (and d!1135502 (not c!667305)) b!3827686))

(assert (= (and b!3827686 c!667312) b!3827693))

(assert (= (and b!3827686 (not c!667312)) b!3827683))

(assert (= (and b!3827683 c!667309) b!3827679))

(assert (= (and b!3827683 (not c!667309)) b!3827681))

(assert (= (and b!3827681 c!667310) b!3827682))

(assert (= (and b!3827681 (not c!667310)) b!3827692))

(assert (= (and b!3827682 c!667307) b!3827690))

(assert (= (and b!3827682 (not c!667307)) b!3827680))

(assert (= (and b!3827680 c!667308) b!3827685))

(assert (= (and b!3827680 (not c!667308)) b!3827684))

(assert (= (or b!3827685 b!3827684) bm!281220))

(assert (= (or b!3827685 b!3827684) bm!281216))

(assert (= (or b!3827690 b!3827680) bm!281227))

(assert (= (or b!3827690 bm!281220) bm!281225))

(assert (= (and b!3827692 c!667311) b!3827678))

(assert (= (and b!3827692 (not c!667311)) b!3827675))

(assert (= (and b!3827675 c!667306) b!3827674))

(assert (= (and b!3827675 (not c!667306)) b!3827694))

(assert (= (or b!3827674 b!3827694) bm!281214))

(assert (= (or b!3827674 b!3827694) bm!281213))

(assert (= (or b!3827678 b!3827675) bm!281219))

(assert (= (or b!3827678 bm!281213) bm!281217))

(assert (= (or b!3827682 b!3827692) bm!281226))

(assert (= (or bm!281227 bm!281219) bm!281222))

(assert (= (or b!3827682 b!3827692) bm!281212))

(assert (= (or b!3827680 b!3827675) bm!281218))

(assert (= (or bm!281216 bm!281214) bm!281215))

(assert (= (or bm!281225 bm!281217) bm!281221))

(assert (= (or b!3827680 b!3827675) bm!281223))

(assert (= (or b!3827679 bm!281221) bm!281224))

(assert (= (and d!1135502 res!1549590) b!3827676))

(assert (= (and b!3827676 res!1549591) b!3827677))

(assert (= (and b!3827677 res!1549589) b!3827687))

(assert (= (and b!3827687 res!1549592) b!3827689))

(declare-fun m!4379911 () Bool)

(assert (=> b!3827691 m!4379911))

(declare-fun m!4379913 () Bool)

(assert (=> b!3827689 m!4379913))

(assert (=> b!3827689 m!4379595))

(assert (=> b!3827689 m!4379847))

(assert (=> b!3827689 m!4379595))

(assert (=> b!3827689 m!4379847))

(declare-fun m!4379915 () Bool)

(assert (=> b!3827689 m!4379915))

(declare-fun m!4379917 () Bool)

(assert (=> bm!281212 m!4379917))

(declare-fun m!4379919 () Bool)

(assert (=> b!3827687 m!4379919))

(assert (=> b!3827687 m!4379545))

(assert (=> b!3827687 m!4379547))

(assert (=> b!3827687 m!4379545))

(assert (=> b!3827687 m!4379547))

(assert (=> b!3827687 m!4379549))

(declare-fun m!4379921 () Bool)

(assert (=> bm!281218 m!4379921))

(declare-fun m!4379923 () Bool)

(assert (=> bm!281226 m!4379923))

(assert (=> b!3827677 m!4379919))

(assert (=> b!3827677 m!4379545))

(assert (=> b!3827677 m!4379547))

(assert (=> b!3827677 m!4379545))

(assert (=> b!3827677 m!4379547))

(assert (=> b!3827677 m!4379549))

(declare-fun m!4379925 () Bool)

(assert (=> b!3827676 m!4379925))

(declare-fun m!4379927 () Bool)

(assert (=> bm!281223 m!4379927))

(assert (=> b!3827683 m!4379547))

(assert (=> b!3827683 m!4379545))

(assert (=> d!1135502 m!4379539))

(assert (=> d!1135502 m!4379585))

(declare-fun m!4379929 () Bool)

(assert (=> bm!281215 m!4379929))

(declare-fun m!4379931 () Bool)

(assert (=> bm!281224 m!4379931))

(declare-fun m!4379933 () Bool)

(assert (=> bm!281222 m!4379933))

(assert (=> d!1135406 d!1135502))

(declare-fun d!1135514 () Bool)

(assert (=> d!1135514 (= (get!13412 lt!1328935) (v!38923 lt!1328935))))

(assert (=> b!3827264 d!1135514))

(declare-fun b!3827713 () Bool)

(declare-fun res!1549609 () Bool)

(declare-fun e!2363979 () Bool)

(assert (=> b!3827713 (=> (not res!1549609) (not e!2363979))))

(declare-fun lt!1329054 () Option!8650)

(declare-fun apply!9479 (TokenValueInjection!12336 BalanceConc!24438) TokenValue!6454)

(declare-fun seqFromList!4507 (List!40547) BalanceConc!24438)

(assert (=> b!3827713 (= res!1549609 (= (value!197991 (_1!22949 (get!13413 lt!1329054))) (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054)))))))))

(declare-fun b!3827714 () Bool)

(declare-fun contains!8206 (List!40549 Rule!12248) Bool)

(assert (=> b!3827714 (= e!2363979 (contains!8206 rules!1265 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))

(declare-fun b!3827715 () Bool)

(declare-fun res!1549614 () Bool)

(assert (=> b!3827715 (=> (not res!1549614) (not e!2363979))))

(declare-fun charsOf!4062 (Token!11586) BalanceConc!24438)

(assert (=> b!3827715 (= res!1549614 (= (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))) (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054)))))))

(declare-fun call!281235 () Option!8650)

(declare-fun bm!281230 () Bool)

(declare-fun maxPrefixOneRule!2223 (LexerInterface!5813 Rule!12248 List!40547) Option!8650)

(assert (=> bm!281230 (= call!281235 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))

(declare-fun b!3827716 () Bool)

(declare-fun res!1549611 () Bool)

(assert (=> b!3827716 (=> (not res!1549611) (not e!2363979))))

(declare-fun matchR!5322 (Regex!11129 List!40547) Bool)

(assert (=> b!3827716 (= res!1549611 (matchR!5322 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun d!1135516 () Bool)

(declare-fun e!2363981 () Bool)

(assert (=> d!1135516 e!2363981))

(declare-fun res!1549612 () Bool)

(assert (=> d!1135516 (=> res!1549612 e!2363981)))

(declare-fun isEmpty!23857 (Option!8650) Bool)

(assert (=> d!1135516 (= res!1549612 (isEmpty!23857 lt!1329054))))

(declare-fun e!2363980 () Option!8650)

(assert (=> d!1135516 (= lt!1329054 e!2363980)))

(declare-fun c!667315 () Bool)

(assert (=> d!1135516 (= c!667315 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329058 () Unit!58192)

(declare-fun lt!1329056 () Unit!58192)

(assert (=> d!1135516 (= lt!1329058 lt!1329056)))

(assert (=> d!1135516 (isPrefix!3333 (list!15055 input!678) (list!15055 input!678))))

(assert (=> d!1135516 (= lt!1329056 (lemmaIsPrefixRefl!2118 (list!15055 input!678) (list!15055 input!678)))))

(assert (=> d!1135516 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135516 (= (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678)) lt!1329054)))

(declare-fun b!3827717 () Bool)

(declare-fun lt!1329057 () Option!8650)

(declare-fun lt!1329055 () Option!8650)

(assert (=> b!3827717 (= e!2363980 (ite (and ((_ is None!8649) lt!1329057) ((_ is None!8649) lt!1329055)) None!8649 (ite ((_ is None!8649) lt!1329055) lt!1329057 (ite ((_ is None!8649) lt!1329057) lt!1329055 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1329057))) (size!30466 (_1!22949 (v!38925 lt!1329055)))) lt!1329057 lt!1329055)))))))

(assert (=> b!3827717 (= lt!1329057 call!281235)))

(assert (=> b!3827717 (= lt!1329055 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))

(declare-fun b!3827718 () Bool)

(assert (=> b!3827718 (= e!2363981 e!2363979)))

(declare-fun res!1549608 () Bool)

(assert (=> b!3827718 (=> (not res!1549608) (not e!2363979))))

(assert (=> b!3827718 (= res!1549608 (isDefined!6811 lt!1329054))))

(declare-fun b!3827719 () Bool)

(declare-fun res!1549610 () Bool)

(assert (=> b!3827719 (=> (not res!1549610) (not e!2363979))))

(assert (=> b!3827719 (= res!1549610 (< (size!30470 (_2!22949 (get!13413 lt!1329054))) (size!30470 (list!15055 input!678))))))

(declare-fun b!3827720 () Bool)

(assert (=> b!3827720 (= e!2363980 call!281235)))

(declare-fun b!3827721 () Bool)

(declare-fun res!1549613 () Bool)

(assert (=> b!3827721 (=> (not res!1549613) (not e!2363979))))

(assert (=> b!3827721 (= res!1549613 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))) (_2!22949 (get!13413 lt!1329054))) (list!15055 input!678)))))

(assert (= (and d!1135516 c!667315) b!3827720))

(assert (= (and d!1135516 (not c!667315)) b!3827717))

(assert (= (or b!3827720 b!3827717) bm!281230))

(assert (= (and d!1135516 (not res!1549612)) b!3827718))

(assert (= (and b!3827718 res!1549608) b!3827715))

(assert (= (and b!3827715 res!1549614) b!3827719))

(assert (= (and b!3827719 res!1549610) b!3827721))

(assert (= (and b!3827721 res!1549613) b!3827713))

(assert (= (and b!3827713 res!1549609) b!3827716))

(assert (= (and b!3827716 res!1549611) b!3827714))

(declare-fun m!4379935 () Bool)

(assert (=> b!3827715 m!4379935))

(declare-fun m!4379937 () Bool)

(assert (=> b!3827715 m!4379937))

(assert (=> b!3827715 m!4379937))

(declare-fun m!4379939 () Bool)

(assert (=> b!3827715 m!4379939))

(assert (=> bm!281230 m!4379223))

(declare-fun m!4379941 () Bool)

(assert (=> bm!281230 m!4379941))

(declare-fun m!4379943 () Bool)

(assert (=> b!3827718 m!4379943))

(assert (=> b!3827717 m!4379223))

(declare-fun m!4379945 () Bool)

(assert (=> b!3827717 m!4379945))

(assert (=> b!3827714 m!4379935))

(declare-fun m!4379947 () Bool)

(assert (=> b!3827714 m!4379947))

(declare-fun m!4379949 () Bool)

(assert (=> d!1135516 m!4379949))

(assert (=> d!1135516 m!4379223))

(assert (=> d!1135516 m!4379223))

(declare-fun m!4379951 () Bool)

(assert (=> d!1135516 m!4379951))

(assert (=> d!1135516 m!4379223))

(assert (=> d!1135516 m!4379223))

(declare-fun m!4379953 () Bool)

(assert (=> d!1135516 m!4379953))

(assert (=> d!1135516 m!4379483))

(assert (=> b!3827716 m!4379935))

(assert (=> b!3827716 m!4379937))

(assert (=> b!3827716 m!4379937))

(assert (=> b!3827716 m!4379939))

(assert (=> b!3827716 m!4379939))

(declare-fun m!4379955 () Bool)

(assert (=> b!3827716 m!4379955))

(assert (=> b!3827719 m!4379935))

(declare-fun m!4379957 () Bool)

(assert (=> b!3827719 m!4379957))

(assert (=> b!3827719 m!4379223))

(declare-fun m!4379959 () Bool)

(assert (=> b!3827719 m!4379959))

(assert (=> b!3827713 m!4379935))

(declare-fun m!4379961 () Bool)

(assert (=> b!3827713 m!4379961))

(assert (=> b!3827713 m!4379961))

(declare-fun m!4379963 () Bool)

(assert (=> b!3827713 m!4379963))

(assert (=> b!3827721 m!4379935))

(assert (=> b!3827721 m!4379937))

(assert (=> b!3827721 m!4379937))

(assert (=> b!3827721 m!4379939))

(assert (=> b!3827721 m!4379939))

(declare-fun m!4379965 () Bool)

(assert (=> b!3827721 m!4379965))

(assert (=> b!3827264 d!1135516))

(declare-fun d!1135518 () Bool)

(assert (=> d!1135518 (= (list!15055 (_2!22946 (get!13412 lt!1328935))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1328935)))))))

(declare-fun bs!581949 () Bool)

(assert (= bs!581949 d!1135518))

(declare-fun m!4379967 () Bool)

(assert (=> bs!581949 m!4379967))

(assert (=> b!3827264 d!1135518))

(assert (=> b!3827264 d!1135436))

(declare-fun d!1135520 () Bool)

(assert (=> d!1135520 (= (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))) (v!38925 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))))))

(assert (=> b!3827264 d!1135520))

(declare-fun d!1135522 () Bool)

(assert (=> d!1135522 (= (list!15055 (_2!22945 lt!1328956)) (list!15059 (c!667180 (_2!22945 lt!1328956))))))

(declare-fun bs!581950 () Bool)

(assert (= bs!581950 d!1135522))

(declare-fun m!4379969 () Bool)

(assert (=> bs!581950 m!4379969))

(assert (=> b!3827317 d!1135522))

(assert (=> b!3827317 d!1135436))

(assert (=> b!3827054 d!1135392))

(declare-fun b!3827730 () Bool)

(declare-fun e!2363986 () List!40547)

(assert (=> b!3827730 (= e!2363986 Nil!40423)))

(declare-fun b!3827731 () Bool)

(declare-fun e!2363987 () List!40547)

(assert (=> b!3827731 (= e!2363986 e!2363987)))

(declare-fun c!667321 () Bool)

(assert (=> b!3827731 (= c!667321 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328855))))))

(declare-fun b!3827732 () Bool)

(declare-fun list!15063 (IArray!24849) List!40547)

(assert (=> b!3827732 (= e!2363987 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328855)))))))

(declare-fun b!3827733 () Bool)

(assert (=> b!3827733 (= e!2363987 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855))))))))

(declare-fun d!1135524 () Bool)

(declare-fun c!667320 () Bool)

(assert (=> d!1135524 (= c!667320 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328855))))))

(assert (=> d!1135524 (= (list!15059 (c!667180 (_2!22945 lt!1328855))) e!2363986)))

(assert (= (and d!1135524 c!667320) b!3827730))

(assert (= (and d!1135524 (not c!667320)) b!3827731))

(assert (= (and b!3827731 c!667321) b!3827732))

(assert (= (and b!3827731 (not c!667321)) b!3827733))

(declare-fun m!4379971 () Bool)

(assert (=> b!3827732 m!4379971))

(declare-fun m!4379973 () Bool)

(assert (=> b!3827733 m!4379973))

(declare-fun m!4379975 () Bool)

(assert (=> b!3827733 m!4379975))

(assert (=> b!3827733 m!4379973))

(assert (=> b!3827733 m!4379975))

(declare-fun m!4379977 () Bool)

(assert (=> b!3827733 m!4379977))

(assert (=> d!1135396 d!1135524))

(declare-fun d!1135526 () Bool)

(declare-fun res!1549619 () Bool)

(declare-fun e!2363990 () Bool)

(assert (=> d!1135526 (=> (not res!1549619) (not e!2363990))))

(assert (=> d!1135526 (= res!1549619 (<= (size!30470 (list!15063 (xs!15716 (c!667180 totalInput!335)))) 512))))

(assert (=> d!1135526 (= (inv!54498 (c!667180 totalInput!335)) e!2363990)))

(declare-fun b!3827738 () Bool)

(declare-fun res!1549620 () Bool)

(assert (=> b!3827738 (=> (not res!1549620) (not e!2363990))))

(assert (=> b!3827738 (= res!1549620 (= (csize!25075 (c!667180 totalInput!335)) (size!30470 (list!15063 (xs!15716 (c!667180 totalInput!335))))))))

(declare-fun b!3827739 () Bool)

(assert (=> b!3827739 (= e!2363990 (and (> (csize!25075 (c!667180 totalInput!335)) 0) (<= (csize!25075 (c!667180 totalInput!335)) 512)))))

(assert (= (and d!1135526 res!1549619) b!3827738))

(assert (= (and b!3827738 res!1549620) b!3827739))

(declare-fun m!4379979 () Bool)

(assert (=> d!1135526 m!4379979))

(assert (=> d!1135526 m!4379979))

(declare-fun m!4379981 () Bool)

(assert (=> d!1135526 m!4379981))

(assert (=> b!3827738 m!4379979))

(assert (=> b!3827738 m!4379979))

(assert (=> b!3827738 m!4379981))

(assert (=> b!3827332 d!1135526))

(declare-fun d!1135528 () Bool)

(assert (=> d!1135528 (= (list!15055 (_2!22945 lt!1328950)) (list!15059 (c!667180 (_2!22945 lt!1328950))))))

(declare-fun bs!581951 () Bool)

(assert (= bs!581951 d!1135528))

(declare-fun m!4379983 () Bool)

(assert (=> bs!581951 m!4379983))

(assert (=> b!3827303 d!1135528))

(declare-fun b!3827750 () Bool)

(declare-fun e!2363997 () Bool)

(declare-fun e!2363998 () Bool)

(assert (=> b!3827750 (= e!2363997 e!2363998)))

(declare-fun res!1549623 () Bool)

(declare-fun lt!1329067 () tuple2!39632)

(assert (=> b!3827750 (= res!1549623 (< (size!30470 (_2!22950 lt!1329067)) (size!30470 (list!15055 totalInput!335))))))

(assert (=> b!3827750 (=> (not res!1549623) (not e!2363998))))

(declare-fun b!3827751 () Bool)

(declare-fun e!2363999 () tuple2!39632)

(assert (=> b!3827751 (= e!2363999 (tuple2!39633 Nil!40424 (list!15055 totalInput!335)))))

(declare-fun b!3827752 () Bool)

(assert (=> b!3827752 (= e!2363997 (= (_2!22950 lt!1329067) (list!15055 totalInput!335)))))

(declare-fun b!3827753 () Bool)

(declare-fun isEmpty!23858 (List!40548) Bool)

(assert (=> b!3827753 (= e!2363998 (not (isEmpty!23858 (_1!22950 lt!1329067))))))

(declare-fun b!3827754 () Bool)

(declare-fun lt!1329066 () Option!8650)

(declare-fun lt!1329065 () tuple2!39632)

(assert (=> b!3827754 (= e!2363999 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329066)) (_1!22950 lt!1329065)) (_2!22950 lt!1329065)))))

(assert (=> b!3827754 (= lt!1329065 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329066))))))

(declare-fun d!1135530 () Bool)

(assert (=> d!1135530 e!2363997))

(declare-fun c!667326 () Bool)

(declare-fun size!30476 (List!40548) Int)

(assert (=> d!1135530 (= c!667326 (> (size!30476 (_1!22950 lt!1329067)) 0))))

(assert (=> d!1135530 (= lt!1329067 e!2363999)))

(declare-fun c!667327 () Bool)

(assert (=> d!1135530 (= c!667327 ((_ is Some!8649) lt!1329066))))

(assert (=> d!1135530 (= lt!1329066 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335)))))

(assert (=> d!1135530 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 totalInput!335)) lt!1329067)))

(assert (= (and d!1135530 c!667327) b!3827754))

(assert (= (and d!1135530 (not c!667327)) b!3827751))

(assert (= (and d!1135530 c!667326) b!3827750))

(assert (= (and d!1135530 (not c!667326)) b!3827752))

(assert (= (and b!3827750 res!1549623) b!3827753))

(declare-fun m!4379985 () Bool)

(assert (=> b!3827750 m!4379985))

(assert (=> b!3827750 m!4379221))

(declare-fun m!4379987 () Bool)

(assert (=> b!3827750 m!4379987))

(declare-fun m!4379989 () Bool)

(assert (=> b!3827753 m!4379989))

(declare-fun m!4379991 () Bool)

(assert (=> b!3827754 m!4379991))

(declare-fun m!4379993 () Bool)

(assert (=> d!1135530 m!4379993))

(assert (=> d!1135530 m!4379221))

(declare-fun m!4379995 () Bool)

(assert (=> d!1135530 m!4379995))

(assert (=> b!3827303 d!1135530))

(assert (=> b!3827303 d!1135434))

(declare-fun d!1135532 () Bool)

(declare-fun res!1549630 () Bool)

(declare-fun e!2364002 () Bool)

(assert (=> d!1135532 (=> (not res!1549630) (not e!2364002))))

(declare-fun size!30477 (Conc!12423) Int)

(assert (=> d!1135532 (= res!1549630 (= (csize!25076 (c!667181 acc!335)) (+ (size!30477 (left!31276 (c!667181 acc!335))) (size!30477 (right!31606 (c!667181 acc!335))))))))

(assert (=> d!1135532 (= (inv!54495 (c!667181 acc!335)) e!2364002)))

(declare-fun b!3827761 () Bool)

(declare-fun res!1549631 () Bool)

(assert (=> b!3827761 (=> (not res!1549631) (not e!2364002))))

(assert (=> b!3827761 (= res!1549631 (and (not (= (left!31276 (c!667181 acc!335)) Empty!12423)) (not (= (right!31606 (c!667181 acc!335)) Empty!12423))))))

(declare-fun b!3827762 () Bool)

(declare-fun res!1549632 () Bool)

(assert (=> b!3827762 (=> (not res!1549632) (not e!2364002))))

(assert (=> b!3827762 (= res!1549632 (= (cheight!12634 (c!667181 acc!335)) (+ (max!0 (height!1816 (left!31276 (c!667181 acc!335))) (height!1816 (right!31606 (c!667181 acc!335)))) 1)))))

(declare-fun b!3827763 () Bool)

(assert (=> b!3827763 (= e!2364002 (<= 0 (cheight!12634 (c!667181 acc!335))))))

(assert (= (and d!1135532 res!1549630) b!3827761))

(assert (= (and b!3827761 res!1549631) b!3827762))

(assert (= (and b!3827762 res!1549632) b!3827763))

(declare-fun m!4379997 () Bool)

(assert (=> d!1135532 m!4379997))

(declare-fun m!4379999 () Bool)

(assert (=> d!1135532 m!4379999))

(declare-fun m!4380001 () Bool)

(assert (=> b!3827762 m!4380001))

(declare-fun m!4380003 () Bool)

(assert (=> b!3827762 m!4380003))

(assert (=> b!3827762 m!4380001))

(assert (=> b!3827762 m!4380003))

(declare-fun m!4380005 () Bool)

(assert (=> b!3827762 m!4380005))

(assert (=> b!3827277 d!1135532))

(declare-fun d!1135534 () Bool)

(declare-fun lt!1329070 () Int)

(assert (=> d!1135534 (= lt!1329070 (size!30470 (list!15055 (_2!22945 lt!1328956))))))

(declare-fun size!30478 (Conc!12422) Int)

(assert (=> d!1135534 (= lt!1329070 (size!30478 (c!667180 (_2!22945 lt!1328956))))))

(assert (=> d!1135534 (= (size!30472 (_2!22945 lt!1328956)) lt!1329070)))

(declare-fun bs!581952 () Bool)

(assert (= bs!581952 d!1135534))

(assert (=> bs!581952 m!4379567))

(assert (=> bs!581952 m!4379567))

(declare-fun m!4380007 () Bool)

(assert (=> bs!581952 m!4380007))

(declare-fun m!4380009 () Bool)

(assert (=> bs!581952 m!4380009))

(assert (=> b!3827321 d!1135534))

(declare-fun d!1135536 () Bool)

(declare-fun lt!1329071 () Int)

(assert (=> d!1135536 (= lt!1329071 (size!30470 (list!15055 input!678)))))

(assert (=> d!1135536 (= lt!1329071 (size!30478 (c!667180 input!678)))))

(assert (=> d!1135536 (= (size!30472 input!678) lt!1329071)))

(declare-fun bs!581953 () Bool)

(assert (= bs!581953 d!1135536))

(assert (=> bs!581953 m!4379223))

(assert (=> bs!581953 m!4379223))

(assert (=> bs!581953 m!4379959))

(declare-fun m!4380011 () Bool)

(assert (=> bs!581953 m!4380011))

(assert (=> b!3827321 d!1135536))

(declare-fun d!1135538 () Bool)

(assert (=> d!1135538 (= (list!15055 (_2!22945 lt!1328959)) (list!15059 (c!667180 (_2!22945 lt!1328959))))))

(declare-fun bs!581954 () Bool)

(assert (= bs!581954 d!1135538))

(declare-fun m!4380013 () Bool)

(assert (=> bs!581954 m!4380013))

(assert (=> b!3827333 d!1135538))

(assert (=> b!3827333 d!1135438))

(declare-fun b!3827983 () Bool)

(declare-fun e!2364121 () Bool)

(assert (=> b!3827983 (= e!2364121 true)))

(declare-fun b!3827982 () Bool)

(declare-fun e!2364120 () Bool)

(assert (=> b!3827982 (= e!2364120 e!2364121)))

(declare-fun b!3827975 () Bool)

(assert (=> b!3827975 e!2364120))

(assert (= b!3827982 b!3827983))

(assert (= b!3827975 b!3827982))

(declare-fun lambda!125925 () Int)

(declare-fun order!22089 () Int)

(declare-fun order!22087 () Int)

(declare-fun dynLambda!17506 (Int Int) Int)

(declare-fun dynLambda!17507 (Int Int) Int)

(assert (=> b!3827983 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125925))))

(declare-fun order!22091 () Int)

(declare-fun dynLambda!17508 (Int Int) Int)

(assert (=> b!3827983 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125925))))

(declare-fun d!1135540 () Bool)

(declare-fun e!2364112 () Bool)

(assert (=> d!1135540 e!2364112))

(declare-fun res!1549733 () Bool)

(assert (=> d!1135540 (=> (not res!1549733) (not e!2364112))))

(declare-fun lt!1329167 () Option!8648)

(assert (=> d!1135540 (= res!1549733 (= (isDefined!6810 lt!1329167) (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))))

(declare-fun e!2364113 () Option!8648)

(assert (=> d!1135540 (= lt!1329167 e!2364113)))

(declare-fun c!667379 () Bool)

(declare-datatypes ((tuple2!39634 0))(
  ( (tuple2!39635 (_1!22951 BalanceConc!24438) (_2!22951 BalanceConc!24438)) )
))
(declare-fun lt!1329164 () tuple2!39634)

(declare-fun isEmpty!23860 (BalanceConc!24438) Bool)

(assert (=> d!1135540 (= c!667379 (isEmpty!23860 (_1!22951 lt!1329164)))))

(declare-fun findLongestMatchWithZipperSequenceV2!113 (Regex!11129 BalanceConc!24438 BalanceConc!24438) tuple2!39634)

(assert (=> d!1135540 (= lt!1329164 (findLongestMatchWithZipperSequenceV2!113 (regex!6224 (h!45845 rules!1265)) input!678 totalInput!335))))

(declare-fun ruleValid!2185 (LexerInterface!5813 Rule!12248) Bool)

(assert (=> d!1135540 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1135540 (= (maxPrefixOneRuleZipperSequenceV2!251 thiss!11876 (h!45845 rules!1265) input!678 totalInput!335) lt!1329167)))

(declare-fun b!3827970 () Bool)

(declare-fun e!2364115 () Bool)

(declare-fun e!2364114 () Bool)

(assert (=> b!3827970 (= e!2364115 e!2364114)))

(declare-fun res!1549734 () Bool)

(assert (=> b!3827970 (=> (not res!1549734) (not e!2364114))))

(assert (=> b!3827970 (= res!1549734 (= (_1!22946 (get!13412 lt!1329167)) (_1!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3827971 () Bool)

(assert (=> b!3827971 (= e!2364113 None!8647)))

(declare-fun b!3827972 () Bool)

(declare-fun e!2364111 () Bool)

(declare-fun lt!1329166 () List!40547)

(declare-datatypes ((tuple2!39636 0))(
  ( (tuple2!39637 (_1!22952 List!40547) (_2!22952 List!40547)) )
))
(declare-fun findLongestMatchInner!1145 (Regex!11129 List!40547 Int List!40547 List!40547 Int) tuple2!39636)

(assert (=> b!3827972 (= e!2364111 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(declare-fun b!3827973 () Bool)

(assert (=> b!3827973 (= e!2364112 e!2364115)))

(declare-fun res!1549732 () Bool)

(assert (=> b!3827973 (=> res!1549732 e!2364115)))

(assert (=> b!3827973 (= res!1549732 (not (isDefined!6810 lt!1329167)))))

(declare-fun b!3827974 () Bool)

(assert (=> b!3827974 (= e!2364114 (= (list!15055 (_2!22946 (get!13412 lt!1329167))) (_2!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))))))))

(assert (=> b!3827975 (= e!2364113 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329164)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329164)) (list!15055 (_1!22951 lt!1329164))) (_2!22951 lt!1329164))))))

(assert (=> b!3827975 (= lt!1329166 (list!15055 input!678))))

(declare-fun lt!1329163 () Unit!58192)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1118 (Regex!11129 List!40547) Unit!58192)

(assert (=> b!3827975 (= lt!1329163 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) lt!1329166))))

(declare-fun res!1549731 () Bool)

(assert (=> b!3827975 (= res!1549731 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(assert (=> b!3827975 (=> res!1549731 e!2364111)))

(assert (=> b!3827975 e!2364111))

(declare-fun lt!1329169 () Unit!58192)

(assert (=> b!3827975 (= lt!1329169 lt!1329163)))

(declare-fun lt!1329162 () Unit!58192)

(declare-fun lemmaInv!866 (TokenValueInjection!12336) Unit!58192)

(assert (=> b!3827975 (= lt!1329162 (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))))))

(declare-fun lt!1329160 () Unit!58192)

(declare-fun ForallOf!777 (Int BalanceConc!24438) Unit!58192)

(assert (=> b!3827975 (= lt!1329160 (ForallOf!777 lambda!125925 (_1!22951 lt!1329164)))))

(declare-fun lt!1329161 () Unit!58192)

(assert (=> b!3827975 (= lt!1329161 (ForallOf!777 lambda!125925 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(declare-fun lt!1329165 () Option!8648)

(assert (=> b!3827975 (= lt!1329165 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329164)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329164)) (list!15055 (_1!22951 lt!1329164))) (_2!22951 lt!1329164))))))

(declare-fun lt!1329168 () Unit!58192)

(declare-fun lemmaEqSameImage!1050 (TokenValueInjection!12336 BalanceConc!24438 BalanceConc!24438) Unit!58192)

(assert (=> b!3827975 (= lt!1329168 (lemmaEqSameImage!1050 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329164) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(assert (= (and d!1135540 c!667379) b!3827971))

(assert (= (and d!1135540 (not c!667379)) b!3827975))

(assert (= (and b!3827975 (not res!1549731)) b!3827972))

(assert (= (and d!1135540 res!1549733) b!3827973))

(assert (= (and b!3827973 (not res!1549732)) b!3827970))

(assert (= (and b!3827970 res!1549734) b!3827974))

(declare-fun m!4380267 () Bool)

(assert (=> b!3827975 m!4380267))

(declare-fun m!4380269 () Bool)

(assert (=> b!3827975 m!4380269))

(declare-fun m!4380271 () Bool)

(assert (=> b!3827975 m!4380271))

(declare-fun m!4380273 () Bool)

(assert (=> b!3827975 m!4380273))

(declare-fun m!4380275 () Bool)

(assert (=> b!3827975 m!4380275))

(declare-fun m!4380277 () Bool)

(assert (=> b!3827975 m!4380277))

(declare-fun m!4380279 () Bool)

(assert (=> b!3827975 m!4380279))

(declare-fun m!4380281 () Bool)

(assert (=> b!3827975 m!4380281))

(assert (=> b!3827975 m!4379223))

(declare-fun m!4380283 () Bool)

(assert (=> b!3827975 m!4380283))

(assert (=> b!3827975 m!4380267))

(assert (=> b!3827975 m!4380275))

(declare-fun m!4380285 () Bool)

(assert (=> b!3827975 m!4380285))

(declare-fun m!4380287 () Bool)

(assert (=> b!3827975 m!4380287))

(declare-fun m!4380289 () Bool)

(assert (=> b!3827975 m!4380289))

(assert (=> b!3827975 m!4380269))

(assert (=> b!3827975 m!4380289))

(assert (=> b!3827975 m!4380269))

(declare-fun m!4380291 () Bool)

(assert (=> b!3827975 m!4380291))

(declare-fun m!4380293 () Bool)

(assert (=> b!3827970 m!4380293))

(assert (=> b!3827970 m!4379223))

(assert (=> b!3827970 m!4379223))

(assert (=> b!3827970 m!4379941))

(assert (=> b!3827970 m!4379941))

(declare-fun m!4380295 () Bool)

(assert (=> b!3827970 m!4380295))

(assert (=> b!3827974 m!4379223))

(declare-fun m!4380297 () Bool)

(assert (=> b!3827974 m!4380297))

(assert (=> b!3827974 m!4379941))

(assert (=> b!3827974 m!4380295))

(assert (=> b!3827974 m!4380293))

(assert (=> b!3827974 m!4379223))

(assert (=> b!3827974 m!4379941))

(declare-fun m!4380299 () Bool)

(assert (=> b!3827973 m!4380299))

(assert (=> b!3827972 m!4380267))

(assert (=> b!3827972 m!4380275))

(assert (=> b!3827972 m!4380267))

(assert (=> b!3827972 m!4380275))

(assert (=> b!3827972 m!4380285))

(declare-fun m!4380301 () Bool)

(assert (=> b!3827972 m!4380301))

(assert (=> d!1135540 m!4379223))

(assert (=> d!1135540 m!4379941))

(declare-fun m!4380303 () Bool)

(assert (=> d!1135540 m!4380303))

(declare-fun m!4380305 () Bool)

(assert (=> d!1135540 m!4380305))

(declare-fun m!4380307 () Bool)

(assert (=> d!1135540 m!4380307))

(assert (=> d!1135540 m!4379223))

(assert (=> d!1135540 m!4379941))

(declare-fun m!4380309 () Bool)

(assert (=> d!1135540 m!4380309))

(assert (=> d!1135540 m!4380299))

(assert (=> bm!281167 d!1135540))

(declare-fun d!1135624 () Bool)

(declare-fun res!1549741 () Bool)

(declare-fun e!2364128 () Bool)

(assert (=> d!1135624 (=> (not res!1549741) (not e!2364128))))

(declare-fun list!15064 (IArray!24851) List!40548)

(assert (=> d!1135624 (= res!1549741 (<= (size!30476 (list!15064 (xs!15717 (c!667181 acc!335)))) 512))))

(assert (=> d!1135624 (= (inv!54496 (c!667181 acc!335)) e!2364128)))

(declare-fun b!3827994 () Bool)

(declare-fun res!1549742 () Bool)

(assert (=> b!3827994 (=> (not res!1549742) (not e!2364128))))

(assert (=> b!3827994 (= res!1549742 (= (csize!25077 (c!667181 acc!335)) (size!30476 (list!15064 (xs!15717 (c!667181 acc!335))))))))

(declare-fun b!3827995 () Bool)

(assert (=> b!3827995 (= e!2364128 (and (> (csize!25077 (c!667181 acc!335)) 0) (<= (csize!25077 (c!667181 acc!335)) 512)))))

(assert (= (and d!1135624 res!1549741) b!3827994))

(assert (= (and b!3827994 res!1549742) b!3827995))

(declare-fun m!4380311 () Bool)

(assert (=> d!1135624 m!4380311))

(assert (=> d!1135624 m!4380311))

(declare-fun m!4380313 () Bool)

(assert (=> d!1135624 m!4380313))

(assert (=> b!3827994 m!4380311))

(assert (=> b!3827994 m!4380311))

(assert (=> b!3827994 m!4380313))

(assert (=> b!3827279 d!1135624))

(declare-fun d!1135626 () Bool)

(assert (=> d!1135626 (= (list!15056 (_1!22945 lt!1328956)) (list!15060 (c!667181 (_1!22945 lt!1328956))))))

(declare-fun bs!581969 () Bool)

(assert (= bs!581969 d!1135626))

(declare-fun m!4380315 () Bool)

(assert (=> bs!581969 m!4380315))

(assert (=> b!3827323 d!1135626))

(declare-fun b!3827996 () Bool)

(declare-fun e!2364129 () Bool)

(declare-fun e!2364130 () Bool)

(assert (=> b!3827996 (= e!2364129 e!2364130)))

(declare-fun res!1549743 () Bool)

(declare-fun lt!1329188 () tuple2!39632)

(assert (=> b!3827996 (= res!1549743 (< (size!30470 (_2!22950 lt!1329188)) (size!30470 (list!15055 input!678))))))

(assert (=> b!3827996 (=> (not res!1549743) (not e!2364130))))

(declare-fun b!3827997 () Bool)

(declare-fun e!2364131 () tuple2!39632)

(assert (=> b!3827997 (= e!2364131 (tuple2!39633 Nil!40424 (list!15055 input!678)))))

(declare-fun b!3827998 () Bool)

(assert (=> b!3827998 (= e!2364129 (= (_2!22950 lt!1329188) (list!15055 input!678)))))

(declare-fun b!3827999 () Bool)

(assert (=> b!3827999 (= e!2364130 (not (isEmpty!23858 (_1!22950 lt!1329188))))))

(declare-fun b!3828000 () Bool)

(declare-fun lt!1329187 () Option!8650)

(declare-fun lt!1329186 () tuple2!39632)

(assert (=> b!3828000 (= e!2364131 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329187)) (_1!22950 lt!1329186)) (_2!22950 lt!1329186)))))

(assert (=> b!3828000 (= lt!1329186 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329187))))))

(declare-fun d!1135628 () Bool)

(assert (=> d!1135628 e!2364129))

(declare-fun c!667382 () Bool)

(assert (=> d!1135628 (= c!667382 (> (size!30476 (_1!22950 lt!1329188)) 0))))

(assert (=> d!1135628 (= lt!1329188 e!2364131)))

(declare-fun c!667383 () Bool)

(assert (=> d!1135628 (= c!667383 ((_ is Some!8649) lt!1329187))))

(assert (=> d!1135628 (= lt!1329187 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678)))))

(assert (=> d!1135628 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 input!678)) lt!1329188)))

(assert (= (and d!1135628 c!667383) b!3828000))

(assert (= (and d!1135628 (not c!667383)) b!3827997))

(assert (= (and d!1135628 c!667382) b!3827996))

(assert (= (and d!1135628 (not c!667382)) b!3827998))

(assert (= (and b!3827996 res!1549743) b!3827999))

(declare-fun m!4380317 () Bool)

(assert (=> b!3827996 m!4380317))

(assert (=> b!3827996 m!4379223))

(assert (=> b!3827996 m!4379959))

(declare-fun m!4380319 () Bool)

(assert (=> b!3827999 m!4380319))

(declare-fun m!4380321 () Bool)

(assert (=> b!3828000 m!4380321))

(declare-fun m!4380323 () Bool)

(assert (=> d!1135628 m!4380323))

(assert (=> d!1135628 m!4379223))

(assert (=> d!1135628 m!4379471))

(assert (=> b!3827323 d!1135628))

(assert (=> b!3827323 d!1135436))

(declare-fun d!1135630 () Bool)

(declare-fun e!2364140 () Bool)

(assert (=> d!1135630 e!2364140))

(declare-fun res!1549752 () Bool)

(assert (=> d!1135630 (=> (not res!1549752) (not e!2364140))))

(declare-fun prepend!1382 (Conc!12423 Token!11586) Conc!12423)

(assert (=> d!1135630 (= res!1549752 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))))))

(declare-fun lt!1329195 () BalanceConc!24440)

(assert (=> d!1135630 (= lt!1329195 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))))))

(assert (=> d!1135630 (= (prepend!1380 (_1!22945 lt!1328958) (_1!22946 (v!38923 lt!1328960))) lt!1329195)))

(declare-fun b!3828009 () Bool)

(assert (=> b!3828009 (= e!2364140 (= (list!15056 lt!1329195) (Cons!40424 (_1!22946 (v!38923 lt!1328960)) (list!15056 (_1!22945 lt!1328958)))))))

(assert (= (and d!1135630 res!1549752) b!3828009))

(declare-fun m!4380325 () Bool)

(assert (=> d!1135630 m!4380325))

(assert (=> d!1135630 m!4380325))

(declare-fun m!4380327 () Bool)

(assert (=> d!1135630 m!4380327))

(declare-fun m!4380329 () Bool)

(assert (=> b!3828009 m!4380329))

(declare-fun m!4380331 () Bool)

(assert (=> b!3828009 m!4380331))

(assert (=> b!3827335 d!1135630))

(declare-fun b!3828010 () Bool)

(declare-fun e!2364141 () Bool)

(declare-fun lt!1329197 () tuple2!39622)

(assert (=> b!3828010 (= e!2364141 (= (list!15055 (_2!22945 lt!1329197)) (list!15055 (_2!22946 (v!38923 lt!1328960)))))))

(declare-fun d!1135632 () Bool)

(declare-fun e!2364144 () Bool)

(assert (=> d!1135632 e!2364144))

(declare-fun res!1549755 () Bool)

(assert (=> d!1135632 (=> (not res!1549755) (not e!2364144))))

(assert (=> d!1135632 (= res!1549755 e!2364141)))

(declare-fun c!667386 () Bool)

(assert (=> d!1135632 (= c!667386 (> (size!30471 (_1!22945 lt!1329197)) 0))))

(declare-fun e!2364143 () tuple2!39622)

(assert (=> d!1135632 (= lt!1329197 e!2364143)))

(declare-fun c!667385 () Bool)

(declare-fun lt!1329198 () Option!8648)

(assert (=> d!1135632 (= c!667385 ((_ is Some!8647) lt!1329198))))

(assert (=> d!1135632 (= lt!1329198 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328960))))))

(assert (=> d!1135632 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328960))) lt!1329197)))

(declare-fun b!3828011 () Bool)

(declare-fun e!2364142 () Bool)

(assert (=> b!3828011 (= e!2364142 (not (isEmpty!23852 (_1!22945 lt!1329197))))))

(declare-fun b!3828012 () Bool)

(declare-fun lt!1329196 () tuple2!39622)

(assert (=> b!3828012 (= e!2364143 (tuple2!39623 (prepend!1380 (_1!22945 lt!1329196) (_1!22946 (v!38923 lt!1329198))) (_2!22945 lt!1329196)))))

(assert (=> b!3828012 (= lt!1329196 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329198))))))

(declare-fun b!3828013 () Bool)

(assert (=> b!3828013 (= e!2364143 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1328960))))))

(declare-fun b!3828014 () Bool)

(assert (=> b!3828014 (= e!2364141 e!2364142)))

(declare-fun res!1549753 () Bool)

(assert (=> b!3828014 (= res!1549753 (< (size!30472 (_2!22945 lt!1329197)) (size!30472 (_2!22946 (v!38923 lt!1328960)))))))

(assert (=> b!3828014 (=> (not res!1549753) (not e!2364142))))

(declare-fun b!3828015 () Bool)

(assert (=> b!3828015 (= e!2364144 (= (list!15055 (_2!22945 lt!1329197)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))))

(declare-fun b!3828016 () Bool)

(declare-fun res!1549754 () Bool)

(assert (=> b!3828016 (=> (not res!1549754) (not e!2364144))))

(assert (=> b!3828016 (= res!1549754 (= (list!15056 (_1!22945 lt!1329197)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))))

(assert (= (and d!1135632 c!667385) b!3828012))

(assert (= (and d!1135632 (not c!667385)) b!3828013))

(assert (= (and d!1135632 c!667386) b!3828014))

(assert (= (and d!1135632 (not c!667386)) b!3828010))

(assert (= (and b!3828014 res!1549753) b!3828011))

(assert (= (and d!1135632 res!1549755) b!3828016))

(assert (= (and b!3828016 res!1549754) b!3828015))

(declare-fun m!4380333 () Bool)

(assert (=> d!1135632 m!4380333))

(declare-fun m!4380335 () Bool)

(assert (=> d!1135632 m!4380335))

(declare-fun m!4380337 () Bool)

(assert (=> b!3828010 m!4380337))

(declare-fun m!4380339 () Bool)

(assert (=> b!3828010 m!4380339))

(declare-fun m!4380341 () Bool)

(assert (=> b!3828012 m!4380341))

(declare-fun m!4380343 () Bool)

(assert (=> b!3828012 m!4380343))

(declare-fun m!4380345 () Bool)

(assert (=> b!3828014 m!4380345))

(declare-fun m!4380347 () Bool)

(assert (=> b!3828014 m!4380347))

(declare-fun m!4380349 () Bool)

(assert (=> b!3828016 m!4380349))

(assert (=> b!3828016 m!4380339))

(assert (=> b!3828016 m!4380339))

(declare-fun m!4380351 () Bool)

(assert (=> b!3828016 m!4380351))

(assert (=> b!3828015 m!4380337))

(assert (=> b!3828015 m!4380339))

(assert (=> b!3828015 m!4380339))

(assert (=> b!3828015 m!4380351))

(declare-fun m!4380353 () Bool)

(assert (=> b!3828011 m!4380353))

(assert (=> b!3827335 d!1135632))

(assert (=> b!3827266 d!1135514))

(assert (=> b!3827266 d!1135520))

(assert (=> b!3827266 d!1135516))

(assert (=> b!3827266 d!1135436))

(declare-fun d!1135634 () Bool)

(declare-fun e!2364145 () Bool)

(assert (=> d!1135634 e!2364145))

(declare-fun res!1549756 () Bool)

(assert (=> d!1135634 (=> (not res!1549756) (not e!2364145))))

(assert (=> d!1135634 (= res!1549756 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))))))

(declare-fun lt!1329199 () BalanceConc!24440)

(assert (=> d!1135634 (= lt!1329199 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))))))

(assert (=> d!1135634 (= (prepend!1380 (_1!22945 lt!1328955) (_1!22946 (v!38923 lt!1328957))) lt!1329199)))

(declare-fun b!3828017 () Bool)

(assert (=> b!3828017 (= e!2364145 (= (list!15056 lt!1329199) (Cons!40424 (_1!22946 (v!38923 lt!1328957)) (list!15056 (_1!22945 lt!1328955)))))))

(assert (= (and d!1135634 res!1549756) b!3828017))

(declare-fun m!4380355 () Bool)

(assert (=> d!1135634 m!4380355))

(assert (=> d!1135634 m!4380355))

(declare-fun m!4380357 () Bool)

(assert (=> d!1135634 m!4380357))

(declare-fun m!4380359 () Bool)

(assert (=> b!3828017 m!4380359))

(declare-fun m!4380361 () Bool)

(assert (=> b!3828017 m!4380361))

(assert (=> b!3827319 d!1135634))

(declare-fun b!3828018 () Bool)

(declare-fun e!2364146 () Bool)

(declare-fun lt!1329201 () tuple2!39622)

(assert (=> b!3828018 (= e!2364146 (= (list!15055 (_2!22945 lt!1329201)) (list!15055 (_2!22946 (v!38923 lt!1328957)))))))

(declare-fun d!1135636 () Bool)

(declare-fun e!2364149 () Bool)

(assert (=> d!1135636 e!2364149))

(declare-fun res!1549759 () Bool)

(assert (=> d!1135636 (=> (not res!1549759) (not e!2364149))))

(assert (=> d!1135636 (= res!1549759 e!2364146)))

(declare-fun c!667388 () Bool)

(assert (=> d!1135636 (= c!667388 (> (size!30471 (_1!22945 lt!1329201)) 0))))

(declare-fun e!2364148 () tuple2!39622)

(assert (=> d!1135636 (= lt!1329201 e!2364148)))

(declare-fun c!667387 () Bool)

(declare-fun lt!1329202 () Option!8648)

(assert (=> d!1135636 (= c!667387 ((_ is Some!8647) lt!1329202))))

(assert (=> d!1135636 (= lt!1329202 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328957))))))

(assert (=> d!1135636 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328957))) lt!1329201)))

(declare-fun b!3828019 () Bool)

(declare-fun e!2364147 () Bool)

(assert (=> b!3828019 (= e!2364147 (not (isEmpty!23852 (_1!22945 lt!1329201))))))

(declare-fun b!3828020 () Bool)

(declare-fun lt!1329200 () tuple2!39622)

(assert (=> b!3828020 (= e!2364148 (tuple2!39623 (prepend!1380 (_1!22945 lt!1329200) (_1!22946 (v!38923 lt!1329202))) (_2!22945 lt!1329200)))))

(assert (=> b!3828020 (= lt!1329200 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329202))))))

(declare-fun b!3828021 () Bool)

(assert (=> b!3828021 (= e!2364148 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1328957))))))

(declare-fun b!3828022 () Bool)

(assert (=> b!3828022 (= e!2364146 e!2364147)))

(declare-fun res!1549757 () Bool)

(assert (=> b!3828022 (= res!1549757 (< (size!30472 (_2!22945 lt!1329201)) (size!30472 (_2!22946 (v!38923 lt!1328957)))))))

(assert (=> b!3828022 (=> (not res!1549757) (not e!2364147))))

(declare-fun b!3828023 () Bool)

(assert (=> b!3828023 (= e!2364149 (= (list!15055 (_2!22945 lt!1329201)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))))

(declare-fun b!3828024 () Bool)

(declare-fun res!1549758 () Bool)

(assert (=> b!3828024 (=> (not res!1549758) (not e!2364149))))

(assert (=> b!3828024 (= res!1549758 (= (list!15056 (_1!22945 lt!1329201)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))))

(assert (= (and d!1135636 c!667387) b!3828020))

(assert (= (and d!1135636 (not c!667387)) b!3828021))

(assert (= (and d!1135636 c!667388) b!3828022))

(assert (= (and d!1135636 (not c!667388)) b!3828018))

(assert (= (and b!3828022 res!1549757) b!3828019))

(assert (= (and d!1135636 res!1549759) b!3828024))

(assert (= (and b!3828024 res!1549758) b!3828023))

(declare-fun m!4380363 () Bool)

(assert (=> d!1135636 m!4380363))

(declare-fun m!4380365 () Bool)

(assert (=> d!1135636 m!4380365))

(declare-fun m!4380367 () Bool)

(assert (=> b!3828018 m!4380367))

(declare-fun m!4380369 () Bool)

(assert (=> b!3828018 m!4380369))

(declare-fun m!4380371 () Bool)

(assert (=> b!3828020 m!4380371))

(declare-fun m!4380373 () Bool)

(assert (=> b!3828020 m!4380373))

(declare-fun m!4380375 () Bool)

(assert (=> b!3828022 m!4380375))

(declare-fun m!4380377 () Bool)

(assert (=> b!3828022 m!4380377))

(declare-fun m!4380379 () Bool)

(assert (=> b!3828024 m!4380379))

(assert (=> b!3828024 m!4380369))

(assert (=> b!3828024 m!4380369))

(declare-fun m!4380381 () Bool)

(assert (=> b!3828024 m!4380381))

(assert (=> b!3828023 m!4380367))

(assert (=> b!3828023 m!4380369))

(assert (=> b!3828023 m!4380369))

(assert (=> b!3828023 m!4380381))

(declare-fun m!4380383 () Bool)

(assert (=> b!3828019 m!4380383))

(assert (=> b!3827319 d!1135636))

(declare-fun b!3828048 () Bool)

(declare-fun e!2364165 () List!40548)

(declare-fun e!2364166 () List!40548)

(assert (=> b!3828048 (= e!2364165 e!2364166)))

(declare-fun c!667395 () Bool)

(assert (=> b!3828048 (= c!667395 ((_ is Leaf!19233) (c!667181 acc!335)))))

(declare-fun b!3828050 () Bool)

(assert (=> b!3828050 (= e!2364166 (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (right!31606 (c!667181 acc!335)))))))

(declare-fun d!1135638 () Bool)

(declare-fun c!667394 () Bool)

(assert (=> d!1135638 (= c!667394 ((_ is Empty!12423) (c!667181 acc!335)))))

(assert (=> d!1135638 (= (list!15060 (c!667181 acc!335)) e!2364165)))

(declare-fun b!3828049 () Bool)

(assert (=> b!3828049 (= e!2364166 (list!15064 (xs!15717 (c!667181 acc!335))))))

(declare-fun b!3828047 () Bool)

(assert (=> b!3828047 (= e!2364165 Nil!40424)))

(assert (= (and d!1135638 c!667394) b!3828047))

(assert (= (and d!1135638 (not c!667394)) b!3828048))

(assert (= (and b!3828048 c!667395) b!3828049))

(assert (= (and b!3828048 (not c!667395)) b!3828050))

(assert (=> b!3828050 m!4379849))

(assert (=> b!3828050 m!4379861))

(assert (=> b!3828050 m!4379849))

(assert (=> b!3828050 m!4379861))

(declare-fun m!4380385 () Bool)

(assert (=> b!3828050 m!4380385))

(assert (=> b!3828049 m!4380311))

(assert (=> d!1135424 d!1135638))

(assert (=> b!3827060 d!1135440))

(declare-fun d!1135640 () Bool)

(declare-fun res!1549778 () Bool)

(declare-fun e!2364172 () Bool)

(assert (=> d!1135640 (=> res!1549778 e!2364172)))

(assert (=> d!1135640 (= res!1549778 (not ((_ is Node!12422) (c!667180 treated!13))))))

(assert (=> d!1135640 (= (isBalanced!3602 (c!667180 treated!13)) e!2364172)))

(declare-fun b!3828063 () Bool)

(declare-fun res!1549780 () Bool)

(declare-fun e!2364171 () Bool)

(assert (=> b!3828063 (=> (not res!1549780) (not e!2364171))))

(assert (=> b!3828063 (= res!1549780 (isBalanced!3602 (right!31605 (c!667180 treated!13))))))

(declare-fun b!3828064 () Bool)

(assert (=> b!3828064 (= e!2364172 e!2364171)))

(declare-fun res!1549779 () Bool)

(assert (=> b!3828064 (=> (not res!1549779) (not e!2364171))))

(declare-fun height!1818 (Conc!12422) Int)

(assert (=> b!3828064 (= res!1549779 (<= (- 1) (- (height!1818 (left!31275 (c!667180 treated!13))) (height!1818 (right!31605 (c!667180 treated!13))))))))

(declare-fun b!3828065 () Bool)

(declare-fun isEmpty!23861 (Conc!12422) Bool)

(assert (=> b!3828065 (= e!2364171 (not (isEmpty!23861 (right!31605 (c!667180 treated!13)))))))

(declare-fun b!3828066 () Bool)

(declare-fun res!1549777 () Bool)

(assert (=> b!3828066 (=> (not res!1549777) (not e!2364171))))

(assert (=> b!3828066 (= res!1549777 (<= (- (height!1818 (left!31275 (c!667180 treated!13))) (height!1818 (right!31605 (c!667180 treated!13)))) 1))))

(declare-fun b!3828067 () Bool)

(declare-fun res!1549781 () Bool)

(assert (=> b!3828067 (=> (not res!1549781) (not e!2364171))))

(assert (=> b!3828067 (= res!1549781 (not (isEmpty!23861 (left!31275 (c!667180 treated!13)))))))

(declare-fun b!3828068 () Bool)

(declare-fun res!1549776 () Bool)

(assert (=> b!3828068 (=> (not res!1549776) (not e!2364171))))

(assert (=> b!3828068 (= res!1549776 (isBalanced!3602 (left!31275 (c!667180 treated!13))))))

(assert (= (and d!1135640 (not res!1549778)) b!3828064))

(assert (= (and b!3828064 res!1549779) b!3828066))

(assert (= (and b!3828066 res!1549777) b!3828068))

(assert (= (and b!3828068 res!1549776) b!3828063))

(assert (= (and b!3828063 res!1549780) b!3828067))

(assert (= (and b!3828067 res!1549781) b!3828065))

(declare-fun m!4380431 () Bool)

(assert (=> b!3828066 m!4380431))

(declare-fun m!4380433 () Bool)

(assert (=> b!3828066 m!4380433))

(declare-fun m!4380435 () Bool)

(assert (=> b!3828065 m!4380435))

(declare-fun m!4380437 () Bool)

(assert (=> b!3828067 m!4380437))

(declare-fun m!4380439 () Bool)

(assert (=> b!3828063 m!4380439))

(assert (=> b!3828064 m!4380431))

(assert (=> b!3828064 m!4380433))

(declare-fun m!4380441 () Bool)

(assert (=> b!3828068 m!4380441))

(assert (=> d!1135418 d!1135640))

(declare-fun d!1135644 () Bool)

(declare-fun isEmpty!23862 (Option!8648) Bool)

(assert (=> d!1135644 (= (isDefined!6810 lt!1328935) (not (isEmpty!23862 lt!1328935)))))

(declare-fun bs!581971 () Bool)

(assert (= bs!581971 d!1135644))

(declare-fun m!4380443 () Bool)

(assert (=> bs!581971 m!4380443))

(assert (=> b!3827268 d!1135644))

(assert (=> b!3827338 d!1135538))

(declare-fun b!3828069 () Bool)

(declare-fun e!2364173 () Bool)

(declare-fun e!2364174 () Bool)

(assert (=> b!3828069 (= e!2364173 e!2364174)))

(declare-fun res!1549782 () Bool)

(declare-fun lt!1329215 () tuple2!39632)

(assert (=> b!3828069 (= res!1549782 (< (size!30470 (_2!22950 lt!1329215)) (size!30470 (list!15055 treated!13))))))

(assert (=> b!3828069 (=> (not res!1549782) (not e!2364174))))

(declare-fun b!3828070 () Bool)

(declare-fun e!2364175 () tuple2!39632)

(assert (=> b!3828070 (= e!2364175 (tuple2!39633 Nil!40424 (list!15055 treated!13)))))

(declare-fun b!3828071 () Bool)

(assert (=> b!3828071 (= e!2364173 (= (_2!22950 lt!1329215) (list!15055 treated!13)))))

(declare-fun b!3828072 () Bool)

(assert (=> b!3828072 (= e!2364174 (not (isEmpty!23858 (_1!22950 lt!1329215))))))

(declare-fun b!3828073 () Bool)

(declare-fun lt!1329214 () Option!8650)

(declare-fun lt!1329213 () tuple2!39632)

(assert (=> b!3828073 (= e!2364175 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329214)) (_1!22950 lt!1329213)) (_2!22950 lt!1329213)))))

(assert (=> b!3828073 (= lt!1329213 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329214))))))

(declare-fun d!1135646 () Bool)

(assert (=> d!1135646 e!2364173))

(declare-fun c!667396 () Bool)

(assert (=> d!1135646 (= c!667396 (> (size!30476 (_1!22950 lt!1329215)) 0))))

(assert (=> d!1135646 (= lt!1329215 e!2364175)))

(declare-fun c!667397 () Bool)

(assert (=> d!1135646 (= c!667397 ((_ is Some!8649) lt!1329214))))

(assert (=> d!1135646 (= lt!1329214 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13)))))

(assert (=> d!1135646 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 treated!13)) lt!1329215)))

(assert (= (and d!1135646 c!667397) b!3828073))

(assert (= (and d!1135646 (not c!667397)) b!3828070))

(assert (= (and d!1135646 c!667396) b!3828069))

(assert (= (and d!1135646 (not c!667396)) b!3828071))

(assert (= (and b!3828069 res!1549782) b!3828072))

(declare-fun m!4380445 () Bool)

(assert (=> b!3828069 m!4380445))

(assert (=> b!3828069 m!4379225))

(declare-fun m!4380447 () Bool)

(assert (=> b!3828069 m!4380447))

(declare-fun m!4380449 () Bool)

(assert (=> b!3828072 m!4380449))

(declare-fun m!4380451 () Bool)

(assert (=> b!3828073 m!4380451))

(declare-fun m!4380453 () Bool)

(assert (=> d!1135646 m!4380453))

(assert (=> d!1135646 m!4379225))

(declare-fun m!4380455 () Bool)

(assert (=> d!1135646 m!4380455))

(assert (=> b!3827338 d!1135646))

(assert (=> b!3827338 d!1135438))

(declare-fun d!1135648 () Bool)

(declare-fun res!1549787 () Bool)

(declare-fun e!2364180 () Bool)

(assert (=> d!1135648 (=> (not res!1549787) (not e!2364180))))

(assert (=> d!1135648 (= res!1549787 (<= (size!30470 (list!15063 (xs!15716 (c!667180 input!678)))) 512))))

(assert (=> d!1135648 (= (inv!54498 (c!667180 input!678)) e!2364180)))

(declare-fun b!3828076 () Bool)

(declare-fun res!1549788 () Bool)

(assert (=> b!3828076 (=> (not res!1549788) (not e!2364180))))

(assert (=> b!3828076 (= res!1549788 (= (csize!25075 (c!667180 input!678)) (size!30470 (list!15063 (xs!15716 (c!667180 input!678))))))))

(declare-fun b!3828077 () Bool)

(assert (=> b!3828077 (= e!2364180 (and (> (csize!25075 (c!667180 input!678)) 0) (<= (csize!25075 (c!667180 input!678)) 512)))))

(assert (= (and d!1135648 res!1549787) b!3828076))

(assert (= (and b!3828076 res!1549788) b!3828077))

(declare-fun m!4380457 () Bool)

(assert (=> d!1135648 m!4380457))

(assert (=> d!1135648 m!4380457))

(declare-fun m!4380459 () Bool)

(assert (=> d!1135648 m!4380459))

(assert (=> b!3828076 m!4380457))

(assert (=> b!3828076 m!4380457))

(assert (=> b!3828076 m!4380459))

(assert (=> b!3827357 d!1135648))

(declare-fun d!1135650 () Bool)

(assert (=> d!1135650 true))

(declare-fun order!22093 () Int)

(declare-fun lambda!125933 () Int)

(declare-fun dynLambda!17510 (Int Int) Int)

(assert (=> d!1135650 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17510 order!22093 lambda!125933))))

(declare-fun Forall2!1022 (Int) Bool)

(assert (=> d!1135650 (= (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (Forall2!1022 lambda!125933))))

(declare-fun bs!581972 () Bool)

(assert (= bs!581972 d!1135650))

(declare-fun m!4380461 () Bool)

(assert (=> bs!581972 m!4380461))

(assert (=> b!3827082 d!1135650))

(declare-fun d!1135652 () Bool)

(assert (=> d!1135652 (= (inv!54500 (xs!15716 (c!667180 treated!13))) (<= (size!30470 (innerList!12482 (xs!15716 (c!667180 treated!13)))) 2147483647))))

(declare-fun bs!581973 () Bool)

(assert (= bs!581973 d!1135652))

(declare-fun m!4380463 () Bool)

(assert (=> bs!581973 m!4380463))

(assert (=> b!3827392 d!1135652))

(declare-fun d!1135654 () Bool)

(declare-fun c!667398 () Bool)

(assert (=> d!1135654 (= c!667398 ((_ is Node!12422) (left!31275 (c!667180 totalInput!335))))))

(declare-fun e!2364206 () Bool)

(assert (=> d!1135654 (= (inv!54485 (left!31275 (c!667180 totalInput!335))) e!2364206)))

(declare-fun b!3828107 () Bool)

(assert (=> b!3828107 (= e!2364206 (inv!54497 (left!31275 (c!667180 totalInput!335))))))

(declare-fun b!3828108 () Bool)

(declare-fun e!2364207 () Bool)

(assert (=> b!3828108 (= e!2364206 e!2364207)))

(declare-fun res!1549814 () Bool)

(assert (=> b!3828108 (= res!1549814 (not ((_ is Leaf!19232) (left!31275 (c!667180 totalInput!335)))))))

(assert (=> b!3828108 (=> res!1549814 e!2364207)))

(declare-fun b!3828109 () Bool)

(assert (=> b!3828109 (= e!2364207 (inv!54498 (left!31275 (c!667180 totalInput!335))))))

(assert (= (and d!1135654 c!667398) b!3828107))

(assert (= (and d!1135654 (not c!667398)) b!3828108))

(assert (= (and b!3828108 (not res!1549814)) b!3828109))

(declare-fun m!4380465 () Bool)

(assert (=> b!3828107 m!4380465))

(declare-fun m!4380467 () Bool)

(assert (=> b!3828109 m!4380467))

(assert (=> b!3827408 d!1135654))

(declare-fun d!1135656 () Bool)

(declare-fun c!667399 () Bool)

(assert (=> d!1135656 (= c!667399 ((_ is Node!12422) (right!31605 (c!667180 totalInput!335))))))

(declare-fun e!2364208 () Bool)

(assert (=> d!1135656 (= (inv!54485 (right!31605 (c!667180 totalInput!335))) e!2364208)))

(declare-fun b!3828110 () Bool)

(assert (=> b!3828110 (= e!2364208 (inv!54497 (right!31605 (c!667180 totalInput!335))))))

(declare-fun b!3828111 () Bool)

(declare-fun e!2364209 () Bool)

(assert (=> b!3828111 (= e!2364208 e!2364209)))

(declare-fun res!1549815 () Bool)

(assert (=> b!3828111 (= res!1549815 (not ((_ is Leaf!19232) (right!31605 (c!667180 totalInput!335)))))))

(assert (=> b!3828111 (=> res!1549815 e!2364209)))

(declare-fun b!3828112 () Bool)

(assert (=> b!3828112 (= e!2364209 (inv!54498 (right!31605 (c!667180 totalInput!335))))))

(assert (= (and d!1135656 c!667399) b!3828110))

(assert (= (and d!1135656 (not c!667399)) b!3828111))

(assert (= (and b!3828111 (not res!1549815)) b!3828112))

(declare-fun m!4380469 () Bool)

(assert (=> b!3828110 m!4380469))

(declare-fun m!4380471 () Bool)

(assert (=> b!3828112 m!4380471))

(assert (=> b!3827408 d!1135656))

(declare-fun d!1135658 () Bool)

(declare-fun res!1549818 () Bool)

(declare-fun e!2364211 () Bool)

(assert (=> d!1135658 (=> res!1549818 e!2364211)))

(assert (=> d!1135658 (= res!1549818 (not ((_ is Node!12422) (c!667180 input!678))))))

(assert (=> d!1135658 (= (isBalanced!3602 (c!667180 input!678)) e!2364211)))

(declare-fun b!3828113 () Bool)

(declare-fun res!1549820 () Bool)

(declare-fun e!2364210 () Bool)

(assert (=> b!3828113 (=> (not res!1549820) (not e!2364210))))

(assert (=> b!3828113 (= res!1549820 (isBalanced!3602 (right!31605 (c!667180 input!678))))))

(declare-fun b!3828114 () Bool)

(assert (=> b!3828114 (= e!2364211 e!2364210)))

(declare-fun res!1549819 () Bool)

(assert (=> b!3828114 (=> (not res!1549819) (not e!2364210))))

(assert (=> b!3828114 (= res!1549819 (<= (- 1) (- (height!1818 (left!31275 (c!667180 input!678))) (height!1818 (right!31605 (c!667180 input!678))))))))

(declare-fun b!3828115 () Bool)

(assert (=> b!3828115 (= e!2364210 (not (isEmpty!23861 (right!31605 (c!667180 input!678)))))))

(declare-fun b!3828116 () Bool)

(declare-fun res!1549817 () Bool)

(assert (=> b!3828116 (=> (not res!1549817) (not e!2364210))))

(assert (=> b!3828116 (= res!1549817 (<= (- (height!1818 (left!31275 (c!667180 input!678))) (height!1818 (right!31605 (c!667180 input!678)))) 1))))

(declare-fun b!3828117 () Bool)

(declare-fun res!1549821 () Bool)

(assert (=> b!3828117 (=> (not res!1549821) (not e!2364210))))

(assert (=> b!3828117 (= res!1549821 (not (isEmpty!23861 (left!31275 (c!667180 input!678)))))))

(declare-fun b!3828118 () Bool)

(declare-fun res!1549816 () Bool)

(assert (=> b!3828118 (=> (not res!1549816) (not e!2364210))))

(assert (=> b!3828118 (= res!1549816 (isBalanced!3602 (left!31275 (c!667180 input!678))))))

(assert (= (and d!1135658 (not res!1549818)) b!3828114))

(assert (= (and b!3828114 res!1549819) b!3828116))

(assert (= (and b!3828116 res!1549817) b!3828118))

(assert (= (and b!3828118 res!1549816) b!3828113))

(assert (= (and b!3828113 res!1549820) b!3828117))

(assert (= (and b!3828117 res!1549821) b!3828115))

(declare-fun m!4380473 () Bool)

(assert (=> b!3828116 m!4380473))

(declare-fun m!4380475 () Bool)

(assert (=> b!3828116 m!4380475))

(declare-fun m!4380477 () Bool)

(assert (=> b!3828115 m!4380477))

(declare-fun m!4380479 () Bool)

(assert (=> b!3828117 m!4380479))

(declare-fun m!4380481 () Bool)

(assert (=> b!3828113 m!4380481))

(assert (=> b!3828114 m!4380473))

(assert (=> b!3828114 m!4380475))

(declare-fun m!4380483 () Bool)

(assert (=> b!3828118 m!4380483))

(assert (=> d!1135414 d!1135658))

(declare-fun d!1135660 () Bool)

(assert (=> d!1135660 true))

(declare-fun lt!1329219 () Bool)

(assert (=> d!1135660 (= lt!1329219 (rulesValidInductive!2192 thiss!11876 rules!1265))))

(declare-fun lambda!125936 () Int)

(declare-fun forall!8265 (List!40549 Int) Bool)

(assert (=> d!1135660 (= lt!1329219 (forall!8265 rules!1265 lambda!125936))))

(assert (=> d!1135660 (= (rulesValid!2406 thiss!11876 rules!1265) lt!1329219)))

(declare-fun bs!581974 () Bool)

(assert (= bs!581974 d!1135660))

(assert (=> bs!581974 m!4379483))

(declare-fun m!4380521 () Bool)

(assert (=> bs!581974 m!4380521))

(assert (=> d!1135330 d!1135660))

(declare-fun b!3828133 () Bool)

(declare-fun e!2364218 () List!40548)

(declare-fun e!2364219 () List!40548)

(assert (=> b!3828133 (= e!2364218 e!2364219)))

(declare-fun c!667405 () Bool)

(assert (=> b!3828133 (= c!667405 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328863))))))

(declare-fun b!3828135 () Bool)

(assert (=> b!3828135 (= e!2364219 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863))))))))

(declare-fun d!1135666 () Bool)

(declare-fun c!667404 () Bool)

(assert (=> d!1135666 (= c!667404 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328863))))))

(assert (=> d!1135666 (= (list!15060 (c!667181 (_1!22945 lt!1328863))) e!2364218)))

(declare-fun b!3828134 () Bool)

(assert (=> b!3828134 (= e!2364219 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328863)))))))

(declare-fun b!3828132 () Bool)

(assert (=> b!3828132 (= e!2364218 Nil!40424)))

(assert (= (and d!1135666 c!667404) b!3828132))

(assert (= (and d!1135666 (not c!667404)) b!3828133))

(assert (= (and b!3828133 c!667405) b!3828134))

(assert (= (and b!3828133 (not c!667405)) b!3828135))

(declare-fun m!4380527 () Bool)

(assert (=> b!3828135 m!4380527))

(declare-fun m!4380529 () Bool)

(assert (=> b!3828135 m!4380529))

(assert (=> b!3828135 m!4380527))

(assert (=> b!3828135 m!4380529))

(declare-fun m!4380531 () Bool)

(assert (=> b!3828135 m!4380531))

(declare-fun m!4380533 () Bool)

(assert (=> b!3828134 m!4380533))

(assert (=> d!1135426 d!1135666))

(declare-fun d!1135672 () Bool)

(declare-fun res!1549841 () Bool)

(declare-fun e!2364233 () Bool)

(assert (=> d!1135672 (=> (not res!1549841) (not e!2364233))))

(assert (=> d!1135672 (= res!1549841 (= (csize!25074 (c!667180 input!678)) (+ (size!30478 (left!31275 (c!667180 input!678))) (size!30478 (right!31605 (c!667180 input!678))))))))

(assert (=> d!1135672 (= (inv!54497 (c!667180 input!678)) e!2364233)))

(declare-fun b!3828156 () Bool)

(declare-fun res!1549842 () Bool)

(assert (=> b!3828156 (=> (not res!1549842) (not e!2364233))))

(assert (=> b!3828156 (= res!1549842 (and (not (= (left!31275 (c!667180 input!678)) Empty!12422)) (not (= (right!31605 (c!667180 input!678)) Empty!12422))))))

(declare-fun b!3828157 () Bool)

(declare-fun res!1549843 () Bool)

(assert (=> b!3828157 (=> (not res!1549843) (not e!2364233))))

(assert (=> b!3828157 (= res!1549843 (= (cheight!12633 (c!667180 input!678)) (+ (max!0 (height!1818 (left!31275 (c!667180 input!678))) (height!1818 (right!31605 (c!667180 input!678)))) 1)))))

(declare-fun b!3828158 () Bool)

(assert (=> b!3828158 (= e!2364233 (<= 0 (cheight!12633 (c!667180 input!678))))))

(assert (= (and d!1135672 res!1549841) b!3828156))

(assert (= (and b!3828156 res!1549842) b!3828157))

(assert (= (and b!3828157 res!1549843) b!3828158))

(declare-fun m!4380547 () Bool)

(assert (=> d!1135672 m!4380547))

(declare-fun m!4380551 () Bool)

(assert (=> d!1135672 m!4380551))

(assert (=> b!3828157 m!4380473))

(assert (=> b!3828157 m!4380475))

(assert (=> b!3828157 m!4380473))

(assert (=> b!3828157 m!4380475))

(declare-fun m!4380559 () Bool)

(assert (=> b!3828157 m!4380559))

(assert (=> b!3827355 d!1135672))

(declare-fun d!1135678 () Bool)

(declare-fun res!1549846 () Bool)

(declare-fun e!2364235 () Bool)

(assert (=> d!1135678 (=> res!1549846 e!2364235)))

(assert (=> d!1135678 (= res!1549846 (not ((_ is Node!12422) (c!667180 totalInput!335))))))

(assert (=> d!1135678 (= (isBalanced!3602 (c!667180 totalInput!335)) e!2364235)))

(declare-fun b!3828159 () Bool)

(declare-fun res!1549848 () Bool)

(declare-fun e!2364234 () Bool)

(assert (=> b!3828159 (=> (not res!1549848) (not e!2364234))))

(assert (=> b!3828159 (= res!1549848 (isBalanced!3602 (right!31605 (c!667180 totalInput!335))))))

(declare-fun b!3828160 () Bool)

(assert (=> b!3828160 (= e!2364235 e!2364234)))

(declare-fun res!1549847 () Bool)

(assert (=> b!3828160 (=> (not res!1549847) (not e!2364234))))

(assert (=> b!3828160 (= res!1549847 (<= (- 1) (- (height!1818 (left!31275 (c!667180 totalInput!335))) (height!1818 (right!31605 (c!667180 totalInput!335))))))))

(declare-fun b!3828161 () Bool)

(assert (=> b!3828161 (= e!2364234 (not (isEmpty!23861 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun b!3828162 () Bool)

(declare-fun res!1549845 () Bool)

(assert (=> b!3828162 (=> (not res!1549845) (not e!2364234))))

(assert (=> b!3828162 (= res!1549845 (<= (- (height!1818 (left!31275 (c!667180 totalInput!335))) (height!1818 (right!31605 (c!667180 totalInput!335)))) 1))))

(declare-fun b!3828163 () Bool)

(declare-fun res!1549849 () Bool)

(assert (=> b!3828163 (=> (not res!1549849) (not e!2364234))))

(assert (=> b!3828163 (= res!1549849 (not (isEmpty!23861 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun b!3828164 () Bool)

(declare-fun res!1549844 () Bool)

(assert (=> b!3828164 (=> (not res!1549844) (not e!2364234))))

(assert (=> b!3828164 (= res!1549844 (isBalanced!3602 (left!31275 (c!667180 totalInput!335))))))

(assert (= (and d!1135678 (not res!1549846)) b!3828160))

(assert (= (and b!3828160 res!1549847) b!3828162))

(assert (= (and b!3828162 res!1549845) b!3828164))

(assert (= (and b!3828164 res!1549844) b!3828159))

(assert (= (and b!3828159 res!1549848) b!3828163))

(assert (= (and b!3828163 res!1549849) b!3828161))

(declare-fun m!4380577 () Bool)

(assert (=> b!3828162 m!4380577))

(declare-fun m!4380579 () Bool)

(assert (=> b!3828162 m!4380579))

(declare-fun m!4380581 () Bool)

(assert (=> b!3828161 m!4380581))

(declare-fun m!4380583 () Bool)

(assert (=> b!3828163 m!4380583))

(declare-fun m!4380585 () Bool)

(assert (=> b!3828159 m!4380585))

(assert (=> b!3828160 m!4380577))

(assert (=> b!3828160 m!4380579))

(declare-fun m!4380587 () Bool)

(assert (=> b!3828164 m!4380587))

(assert (=> d!1135420 d!1135678))

(declare-fun d!1135684 () Bool)

(declare-fun lt!1329226 () Bool)

(assert (=> d!1135684 (= lt!1329226 (isEmpty!23858 (list!15056 (_1!22945 lt!1328950))))))

(declare-fun isEmpty!23863 (Conc!12423) Bool)

(assert (=> d!1135684 (= lt!1329226 (isEmpty!23863 (c!667181 (_1!22945 lt!1328950))))))

(assert (=> d!1135684 (= (isEmpty!23852 (_1!22945 lt!1328950)) lt!1329226)))

(declare-fun bs!581977 () Bool)

(assert (= bs!581977 d!1135684))

(assert (=> bs!581977 m!4379533))

(assert (=> bs!581977 m!4379533))

(declare-fun m!4380599 () Bool)

(assert (=> bs!581977 m!4380599))

(declare-fun m!4380601 () Bool)

(assert (=> bs!581977 m!4380601))

(assert (=> b!3827299 d!1135684))

(declare-fun d!1135692 () Bool)

(assert (=> d!1135692 (= (inv!54500 (xs!15716 (c!667180 input!678))) (<= (size!30470 (innerList!12482 (xs!15716 (c!667180 input!678)))) 2147483647))))

(declare-fun bs!581978 () Bool)

(assert (= bs!581978 d!1135692))

(declare-fun m!4380605 () Bool)

(assert (=> bs!581978 m!4380605))

(assert (=> b!3827406 d!1135692))

(declare-fun d!1135696 () Bool)

(declare-fun res!1549851 () Bool)

(declare-fun e!2364244 () Bool)

(assert (=> d!1135696 (=> (not res!1549851) (not e!2364244))))

(assert (=> d!1135696 (= res!1549851 (= (csize!25074 (c!667180 totalInput!335)) (+ (size!30478 (left!31275 (c!667180 totalInput!335))) (size!30478 (right!31605 (c!667180 totalInput!335))))))))

(assert (=> d!1135696 (= (inv!54497 (c!667180 totalInput!335)) e!2364244)))

(declare-fun b!3828179 () Bool)

(declare-fun res!1549852 () Bool)

(assert (=> b!3828179 (=> (not res!1549852) (not e!2364244))))

(assert (=> b!3828179 (= res!1549852 (and (not (= (left!31275 (c!667180 totalInput!335)) Empty!12422)) (not (= (right!31605 (c!667180 totalInput!335)) Empty!12422))))))

(declare-fun b!3828181 () Bool)

(declare-fun res!1549854 () Bool)

(assert (=> b!3828181 (=> (not res!1549854) (not e!2364244))))

(assert (=> b!3828181 (= res!1549854 (= (cheight!12633 (c!667180 totalInput!335)) (+ (max!0 (height!1818 (left!31275 (c!667180 totalInput!335))) (height!1818 (right!31605 (c!667180 totalInput!335)))) 1)))))

(declare-fun b!3828183 () Bool)

(assert (=> b!3828183 (= e!2364244 (<= 0 (cheight!12633 (c!667180 totalInput!335))))))

(assert (= (and d!1135696 res!1549851) b!3828179))

(assert (= (and b!3828179 res!1549852) b!3828181))

(assert (= (and b!3828181 res!1549854) b!3828183))

(declare-fun m!4380613 () Bool)

(assert (=> d!1135696 m!4380613))

(declare-fun m!4380615 () Bool)

(assert (=> d!1135696 m!4380615))

(assert (=> b!3828181 m!4380577))

(assert (=> b!3828181 m!4380579))

(assert (=> b!3828181 m!4380577))

(assert (=> b!3828181 m!4380579))

(declare-fun m!4380621 () Bool)

(assert (=> b!3828181 m!4380621))

(assert (=> b!3827330 d!1135696))

(declare-fun d!1135702 () Bool)

(assert (=> d!1135702 (= (list!15056 lt!1328954) (list!15060 (c!667181 lt!1328954)))))

(declare-fun bs!581981 () Bool)

(assert (= bs!581981 d!1135702))

(declare-fun m!4380625 () Bool)

(assert (=> bs!581981 m!4380625))

(assert (=> b!3827316 d!1135702))

(declare-fun b!3828210 () Bool)

(declare-fun res!1549871 () Bool)

(declare-fun e!2364261 () Bool)

(assert (=> b!3828210 (=> (not res!1549871) (not e!2364261))))

(declare-fun lt!1329235 () List!40548)

(assert (=> b!3828210 (= res!1549871 (= (size!30476 lt!1329235) (+ (size!30476 (list!15056 acc!335)) (size!30476 (list!15056 (_1!22945 lt!1328861))))))))

(declare-fun b!3828211 () Bool)

(assert (=> b!3828211 (= e!2364261 (or (not (= (list!15056 (_1!22945 lt!1328861)) Nil!40424)) (= lt!1329235 (list!15056 acc!335))))))

(declare-fun b!3828209 () Bool)

(declare-fun e!2364260 () List!40548)

(assert (=> b!3828209 (= e!2364260 (Cons!40424 (h!45844 (list!15056 acc!335)) (++!10192 (t!308875 (list!15056 acc!335)) (list!15056 (_1!22945 lt!1328861)))))))

(declare-fun b!3828208 () Bool)

(assert (=> b!3828208 (= e!2364260 (list!15056 (_1!22945 lt!1328861)))))

(declare-fun d!1135706 () Bool)

(assert (=> d!1135706 e!2364261))

(declare-fun res!1549872 () Bool)

(assert (=> d!1135706 (=> (not res!1549872) (not e!2364261))))

(declare-fun content!5992 (List!40548) (InoxSet Token!11586))

(assert (=> d!1135706 (= res!1549872 (= (content!5992 lt!1329235) ((_ map or) (content!5992 (list!15056 acc!335)) (content!5992 (list!15056 (_1!22945 lt!1328861))))))))

(assert (=> d!1135706 (= lt!1329235 e!2364260)))

(declare-fun c!667419 () Bool)

(assert (=> d!1135706 (= c!667419 ((_ is Nil!40424) (list!15056 acc!335)))))

(assert (=> d!1135706 (= (++!10192 (list!15056 acc!335) (list!15056 (_1!22945 lt!1328861))) lt!1329235)))

(assert (= (and d!1135706 c!667419) b!3828208))

(assert (= (and d!1135706 (not c!667419)) b!3828209))

(assert (= (and d!1135706 res!1549872) b!3828210))

(assert (= (and b!3828210 res!1549871) b!3828211))

(declare-fun m!4380653 () Bool)

(assert (=> b!3828210 m!4380653))

(assert (=> b!3828210 m!4379193))

(declare-fun m!4380655 () Bool)

(assert (=> b!3828210 m!4380655))

(assert (=> b!3828210 m!4379555))

(declare-fun m!4380657 () Bool)

(assert (=> b!3828210 m!4380657))

(assert (=> b!3828209 m!4379555))

(declare-fun m!4380659 () Bool)

(assert (=> b!3828209 m!4380659))

(declare-fun m!4380661 () Bool)

(assert (=> d!1135706 m!4380661))

(assert (=> d!1135706 m!4379193))

(declare-fun m!4380663 () Bool)

(assert (=> d!1135706 m!4380663))

(assert (=> d!1135706 m!4379555))

(declare-fun m!4380665 () Bool)

(assert (=> d!1135706 m!4380665))

(assert (=> b!3827316 d!1135706))

(assert (=> b!3827316 d!1135424))

(declare-fun d!1135718 () Bool)

(assert (=> d!1135718 (= (list!15056 (_1!22945 lt!1328861)) (list!15060 (c!667181 (_1!22945 lt!1328861))))))

(declare-fun bs!581984 () Bool)

(assert (= bs!581984 d!1135718))

(assert (=> bs!581984 m!4379847))

(assert (=> b!3827316 d!1135718))

(declare-fun d!1135720 () Bool)

(assert (=> d!1135720 (= (inv!54499 (xs!15717 (c!667181 acc!335))) (<= (size!30476 (innerList!12483 (xs!15717 (c!667181 acc!335)))) 2147483647))))

(declare-fun bs!581986 () Bool)

(assert (= bs!581986 d!1135720))

(declare-fun m!4380669 () Bool)

(assert (=> bs!581986 m!4380669))

(assert (=> b!3827381 d!1135720))

(declare-fun d!1135724 () Bool)

(declare-fun lt!1329242 () Int)

(assert (=> d!1135724 (= lt!1329242 (size!30476 (list!15056 (_1!22945 lt!1328950))))))

(assert (=> d!1135724 (= lt!1329242 (size!30477 (c!667181 (_1!22945 lt!1328950))))))

(assert (=> d!1135724 (= (size!30471 (_1!22945 lt!1328950)) lt!1329242)))

(declare-fun bs!581988 () Bool)

(assert (= bs!581988 d!1135724))

(assert (=> bs!581988 m!4379533))

(assert (=> bs!581988 m!4379533))

(declare-fun m!4380673 () Bool)

(assert (=> bs!581988 m!4380673))

(declare-fun m!4380675 () Bool)

(assert (=> bs!581988 m!4380675))

(assert (=> d!1135404 d!1135724))

(declare-fun b!3828336 () Bool)

(declare-fun lt!1329268 () Option!8648)

(declare-fun e!2364347 () Bool)

(assert (=> b!3828336 (= e!2364347 (= (list!15055 (_2!22946 (get!13412 lt!1329268))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335))))))))

(declare-fun b!3828337 () Bool)

(declare-fun e!2364345 () Bool)

(declare-fun e!2364348 () Bool)

(assert (=> b!3828337 (= e!2364345 e!2364348)))

(declare-fun res!1549909 () Bool)

(assert (=> b!3828337 (=> res!1549909 e!2364348)))

(assert (=> b!3828337 (= res!1549909 (not (isDefined!6810 lt!1329268)))))

(declare-fun b!3828338 () Bool)

(declare-fun res!1549911 () Bool)

(assert (=> b!3828338 (=> (not res!1549911) (not e!2364345))))

(declare-fun e!2364350 () Bool)

(assert (=> b!3828338 (= res!1549911 e!2364350)))

(declare-fun res!1549910 () Bool)

(assert (=> b!3828338 (=> res!1549910 e!2364350)))

(assert (=> b!3828338 (= res!1549910 (not (isDefined!6810 lt!1329268)))))

(declare-fun b!3828339 () Bool)

(declare-fun e!2364346 () Option!8648)

(declare-fun call!281290 () Option!8648)

(assert (=> b!3828339 (= e!2364346 call!281290)))

(declare-fun d!1135728 () Bool)

(assert (=> d!1135728 e!2364345))

(declare-fun res!1549914 () Bool)

(assert (=> d!1135728 (=> (not res!1549914) (not e!2364345))))

(assert (=> d!1135728 (= res!1549914 (= (isDefined!6810 lt!1329268) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335)))))))

(assert (=> d!1135728 (= lt!1329268 e!2364346)))

(declare-fun c!667428 () Bool)

(assert (=> d!1135728 (= c!667428 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329267 () Unit!58192)

(declare-fun lt!1329269 () Unit!58192)

(assert (=> d!1135728 (= lt!1329267 lt!1329269)))

(declare-fun lt!1329266 () List!40547)

(declare-fun lt!1329270 () List!40547)

(assert (=> d!1135728 (isPrefix!3333 lt!1329266 lt!1329270)))

(assert (=> d!1135728 (= lt!1329269 (lemmaIsPrefixRefl!2118 lt!1329266 lt!1329270))))

(assert (=> d!1135728 (= lt!1329270 (list!15055 totalInput!335))))

(assert (=> d!1135728 (= lt!1329266 (list!15055 totalInput!335))))

(assert (=> d!1135728 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135728 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 totalInput!335) lt!1329268)))

(declare-fun bm!281285 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!572 (LexerInterface!5813 Rule!12248 BalanceConc!24438) Option!8648)

(assert (=> bm!281285 (= call!281290 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) totalInput!335))))

(declare-fun b!3828340 () Bool)

(assert (=> b!3828340 (= e!2364348 e!2364347)))

(declare-fun res!1549912 () Bool)

(assert (=> b!3828340 (=> (not res!1549912) (not e!2364347))))

(assert (=> b!3828340 (= res!1549912 (= (_1!22946 (get!13412 lt!1329268)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335))))))))

(declare-fun b!3828341 () Bool)

(declare-fun lt!1329271 () Option!8648)

(declare-fun lt!1329265 () Option!8648)

(assert (=> b!3828341 (= e!2364346 (ite (and ((_ is None!8647) lt!1329271) ((_ is None!8647) lt!1329265)) None!8647 (ite ((_ is None!8647) lt!1329265) lt!1329271 (ite ((_ is None!8647) lt!1329271) lt!1329265 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1329271))) (size!30466 (_1!22946 (v!38923 lt!1329265)))) lt!1329271 lt!1329265)))))))

(assert (=> b!3828341 (= lt!1329271 call!281290)))

(assert (=> b!3828341 (= lt!1329265 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) totalInput!335))))

(declare-fun e!2364349 () Bool)

(declare-fun b!3828342 () Bool)

(assert (=> b!3828342 (= e!2364349 (= (list!15055 (_2!22946 (get!13412 lt!1329268))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335))))))))

(declare-fun b!3828343 () Bool)

(assert (=> b!3828343 (= e!2364350 e!2364349)))

(declare-fun res!1549913 () Bool)

(assert (=> b!3828343 (=> (not res!1549913) (not e!2364349))))

(assert (=> b!3828343 (= res!1549913 (= (_1!22946 (get!13412 lt!1329268)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335))))))))

(assert (= (and d!1135728 c!667428) b!3828339))

(assert (= (and d!1135728 (not c!667428)) b!3828341))

(assert (= (or b!3828339 b!3828341) bm!281285))

(assert (= (and d!1135728 res!1549914) b!3828338))

(assert (= (and b!3828338 (not res!1549910)) b!3828343))

(assert (= (and b!3828343 res!1549913) b!3828342))

(assert (= (and b!3828338 res!1549911) b!3828337))

(assert (= (and b!3828337 (not res!1549909)) b!3828340))

(assert (= (and b!3828340 res!1549912) b!3828336))

(declare-fun m!4380811 () Bool)

(assert (=> b!3828338 m!4380811))

(declare-fun m!4380813 () Bool)

(assert (=> d!1135728 m!4380813))

(assert (=> d!1135728 m!4379221))

(declare-fun m!4380815 () Bool)

(assert (=> d!1135728 m!4380815))

(assert (=> d!1135728 m!4379483))

(assert (=> d!1135728 m!4379221))

(declare-fun m!4380817 () Bool)

(assert (=> d!1135728 m!4380817))

(assert (=> d!1135728 m!4380815))

(declare-fun m!4380819 () Bool)

(assert (=> d!1135728 m!4380819))

(assert (=> d!1135728 m!4380811))

(declare-fun m!4380821 () Bool)

(assert (=> b!3828340 m!4380821))

(assert (=> b!3828340 m!4379221))

(assert (=> b!3828340 m!4379221))

(assert (=> b!3828340 m!4379995))

(assert (=> b!3828340 m!4379995))

(declare-fun m!4380823 () Bool)

(assert (=> b!3828340 m!4380823))

(assert (=> b!3828342 m!4380815))

(declare-fun m!4380825 () Bool)

(assert (=> b!3828342 m!4380825))

(assert (=> b!3828342 m!4380821))

(assert (=> b!3828342 m!4379221))

(assert (=> b!3828342 m!4380815))

(assert (=> b!3828342 m!4379221))

(declare-fun m!4380827 () Bool)

(assert (=> b!3828342 m!4380827))

(declare-fun m!4380829 () Bool)

(assert (=> bm!281285 m!4380829))

(assert (=> b!3828337 m!4380811))

(assert (=> b!3828343 m!4380821))

(assert (=> b!3828343 m!4379221))

(assert (=> b!3828343 m!4379221))

(assert (=> b!3828343 m!4380815))

(assert (=> b!3828343 m!4380815))

(assert (=> b!3828343 m!4380825))

(declare-fun m!4380831 () Bool)

(assert (=> b!3828341 m!4380831))

(assert (=> b!3828336 m!4379995))

(assert (=> b!3828336 m!4380823))

(assert (=> b!3828336 m!4379221))

(assert (=> b!3828336 m!4379995))

(assert (=> b!3828336 m!4380821))

(assert (=> b!3828336 m!4379221))

(assert (=> b!3828336 m!4380827))

(assert (=> d!1135404 d!1135728))

(declare-fun b!3828344 () Bool)

(declare-fun e!2364351 () List!40547)

(assert (=> b!3828344 (= e!2364351 Nil!40423)))

(declare-fun b!3828345 () Bool)

(declare-fun e!2364352 () List!40547)

(assert (=> b!3828345 (= e!2364351 e!2364352)))

(declare-fun c!667430 () Bool)

(assert (=> b!3828345 (= c!667430 ((_ is Leaf!19232) (c!667180 input!678)))))

(declare-fun b!3828346 () Bool)

(assert (=> b!3828346 (= e!2364352 (list!15063 (xs!15716 (c!667180 input!678))))))

(declare-fun b!3828347 () Bool)

(assert (=> b!3828347 (= e!2364352 (++!10187 (list!15059 (left!31275 (c!667180 input!678))) (list!15059 (right!31605 (c!667180 input!678)))))))

(declare-fun d!1135746 () Bool)

(declare-fun c!667429 () Bool)

(assert (=> d!1135746 (= c!667429 ((_ is Empty!12422) (c!667180 input!678)))))

(assert (=> d!1135746 (= (list!15059 (c!667180 input!678)) e!2364351)))

(assert (= (and d!1135746 c!667429) b!3828344))

(assert (= (and d!1135746 (not c!667429)) b!3828345))

(assert (= (and b!3828345 c!667430) b!3828346))

(assert (= (and b!3828345 (not c!667430)) b!3828347))

(assert (=> b!3828346 m!4380457))

(declare-fun m!4380833 () Bool)

(assert (=> b!3828347 m!4380833))

(declare-fun m!4380835 () Bool)

(assert (=> b!3828347 m!4380835))

(assert (=> b!3828347 m!4380833))

(assert (=> b!3828347 m!4380835))

(declare-fun m!4380837 () Bool)

(assert (=> b!3828347 m!4380837))

(assert (=> d!1135436 d!1135746))

(declare-fun d!1135748 () Bool)

(assert (=> d!1135748 (= (height!1816 (c!667181 (_1!22945 lt!1328861))) (ite ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328861))) 0 (ite ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328861))) 1 (cheight!12634 (c!667181 (_1!22945 lt!1328861))))))))

(assert (=> b!3827314 d!1135748))

(declare-fun d!1135750 () Bool)

(assert (=> d!1135750 (= (max!0 (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861)))) (ite (< (height!1816 (c!667181 acc!335)) (height!1816 (c!667181 (_1!22945 lt!1328861)))) (height!1816 (c!667181 (_1!22945 lt!1328861))) (height!1816 (c!667181 acc!335))))))

(assert (=> b!3827314 d!1135750))

(assert (=> b!3827314 d!1135502))

(declare-fun d!1135752 () Bool)

(assert (=> d!1135752 (= (height!1816 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) (ite ((_ is Empty!12423) (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) 0 (ite ((_ is Leaf!19233) (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) 1 (cheight!12634 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> b!3827314 d!1135752))

(declare-fun d!1135754 () Bool)

(assert (=> d!1135754 (= (height!1816 (c!667181 acc!335)) (ite ((_ is Empty!12423) (c!667181 acc!335)) 0 (ite ((_ is Leaf!19233) (c!667181 acc!335)) 1 (cheight!12634 (c!667181 acc!335)))))))

(assert (=> b!3827314 d!1135754))

(declare-fun b!3828348 () Bool)

(declare-fun e!2364353 () List!40547)

(assert (=> b!3828348 (= e!2364353 lt!1328865)))

(declare-fun b!3828349 () Bool)

(assert (=> b!3828349 (= e!2364353 (Cons!40423 (h!45843 (t!308874 lt!1328858)) (++!10187 (t!308874 (t!308874 lt!1328858)) lt!1328865)))))

(declare-fun b!3828350 () Bool)

(declare-fun res!1549916 () Bool)

(declare-fun e!2364354 () Bool)

(assert (=> b!3828350 (=> (not res!1549916) (not e!2364354))))

(declare-fun lt!1329272 () List!40547)

(assert (=> b!3828350 (= res!1549916 (= (size!30470 lt!1329272) (+ (size!30470 (t!308874 lt!1328858)) (size!30470 lt!1328865))))))

(declare-fun b!3828351 () Bool)

(assert (=> b!3828351 (= e!2364354 (or (not (= lt!1328865 Nil!40423)) (= lt!1329272 (t!308874 lt!1328858))))))

(declare-fun d!1135756 () Bool)

(assert (=> d!1135756 e!2364354))

(declare-fun res!1549915 () Bool)

(assert (=> d!1135756 (=> (not res!1549915) (not e!2364354))))

(assert (=> d!1135756 (= res!1549915 (= (content!5990 lt!1329272) ((_ map or) (content!5990 (t!308874 lt!1328858)) (content!5990 lt!1328865))))))

(assert (=> d!1135756 (= lt!1329272 e!2364353)))

(declare-fun c!667431 () Bool)

(assert (=> d!1135756 (= c!667431 ((_ is Nil!40423) (t!308874 lt!1328858)))))

(assert (=> d!1135756 (= (++!10187 (t!308874 lt!1328858) lt!1328865) lt!1329272)))

(assert (= (and d!1135756 c!667431) b!3828348))

(assert (= (and d!1135756 (not c!667431)) b!3828349))

(assert (= (and d!1135756 res!1549915) b!3828350))

(assert (= (and b!3828350 res!1549916) b!3828351))

(declare-fun m!4380839 () Bool)

(assert (=> b!3828349 m!4380839))

(declare-fun m!4380841 () Bool)

(assert (=> b!3828350 m!4380841))

(declare-fun m!4380843 () Bool)

(assert (=> b!3828350 m!4380843))

(assert (=> b!3828350 m!4379507))

(declare-fun m!4380845 () Bool)

(assert (=> d!1135756 m!4380845))

(declare-fun m!4380847 () Bool)

(assert (=> d!1135756 m!4380847))

(assert (=> d!1135756 m!4379633))

(assert (=> b!3827352 d!1135756))

(declare-fun d!1135758 () Bool)

(declare-fun lt!1329275 () Int)

(assert (=> d!1135758 (>= lt!1329275 0)))

(declare-fun e!2364357 () Int)

(assert (=> d!1135758 (= lt!1329275 e!2364357)))

(declare-fun c!667434 () Bool)

(assert (=> d!1135758 (= c!667434 ((_ is Nil!40423) lt!1328853))))

(assert (=> d!1135758 (= (size!30470 lt!1328853) lt!1329275)))

(declare-fun b!3828356 () Bool)

(assert (=> b!3828356 (= e!2364357 0)))

(declare-fun b!3828357 () Bool)

(assert (=> b!3828357 (= e!2364357 (+ 1 (size!30470 (t!308874 lt!1328853))))))

(assert (= (and d!1135758 c!667434) b!3828356))

(assert (= (and d!1135758 (not c!667434)) b!3828357))

(declare-fun m!4380849 () Bool)

(assert (=> b!3828357 m!4380849))

(assert (=> b!3827282 d!1135758))

(declare-fun d!1135760 () Bool)

(declare-fun lt!1329276 () Int)

(assert (=> d!1135760 (>= lt!1329276 0)))

(declare-fun e!2364358 () Int)

(assert (=> d!1135760 (= lt!1329276 e!2364358)))

(declare-fun c!667435 () Bool)

(assert (=> d!1135760 (= c!667435 ((_ is Nil!40423) lt!1328865))))

(assert (=> d!1135760 (= (size!30470 lt!1328865) lt!1329276)))

(declare-fun b!3828358 () Bool)

(assert (=> b!3828358 (= e!2364358 0)))

(declare-fun b!3828359 () Bool)

(assert (=> b!3828359 (= e!2364358 (+ 1 (size!30470 (t!308874 lt!1328865))))))

(assert (= (and d!1135760 c!667435) b!3828358))

(assert (= (and d!1135760 (not c!667435)) b!3828359))

(declare-fun m!4380851 () Bool)

(assert (=> b!3828359 m!4380851))

(assert (=> b!3827282 d!1135760))

(declare-fun d!1135762 () Bool)

(assert (=> d!1135762 (= (list!15056 (_1!22945 lt!1328950)) (list!15060 (c!667181 (_1!22945 lt!1328950))))))

(declare-fun bs!581992 () Bool)

(assert (= bs!581992 d!1135762))

(declare-fun m!4380853 () Bool)

(assert (=> bs!581992 m!4380853))

(assert (=> b!3827304 d!1135762))

(assert (=> b!3827304 d!1135530))

(assert (=> b!3827304 d!1135434))

(declare-fun d!1135764 () Bool)

(declare-fun res!1549921 () Bool)

(declare-fun e!2364363 () Bool)

(assert (=> d!1135764 (=> res!1549921 e!2364363)))

(assert (=> d!1135764 (= res!1549921 ((_ is Nil!40425) rules!1265))))

(assert (=> d!1135764 (= (noDuplicateTag!2407 thiss!11876 rules!1265 Nil!40427) e!2364363)))

(declare-fun b!3828364 () Bool)

(declare-fun e!2364364 () Bool)

(assert (=> b!3828364 (= e!2364363 e!2364364)))

(declare-fun res!1549922 () Bool)

(assert (=> b!3828364 (=> (not res!1549922) (not e!2364364))))

(declare-fun contains!8207 (List!40551 String!45952) Bool)

(assert (=> b!3828364 (= res!1549922 (not (contains!8207 Nil!40427 (tag!7084 (h!45845 rules!1265)))))))

(declare-fun b!3828365 () Bool)

(assert (=> b!3828365 (= e!2364364 (noDuplicateTag!2407 thiss!11876 (t!308876 rules!1265) (Cons!40427 (tag!7084 (h!45845 rules!1265)) Nil!40427)))))

(assert (= (and d!1135764 (not res!1549921)) b!3828364))

(assert (= (and b!3828364 res!1549922) b!3828365))

(declare-fun m!4380855 () Bool)

(assert (=> b!3828364 m!4380855))

(declare-fun m!4380857 () Bool)

(assert (=> b!3828365 m!4380857))

(assert (=> b!3827085 d!1135764))

(declare-fun b!3828366 () Bool)

(declare-fun e!2364365 () List!40547)

(assert (=> b!3828366 (= e!2364365 Nil!40423)))

(declare-fun b!3828367 () Bool)

(declare-fun e!2364366 () List!40547)

(assert (=> b!3828367 (= e!2364365 e!2364366)))

(declare-fun c!667437 () Bool)

(assert (=> b!3828367 (= c!667437 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328863))))))

(declare-fun b!3828368 () Bool)

(assert (=> b!3828368 (= e!2364366 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328863)))))))

(declare-fun b!3828369 () Bool)

(assert (=> b!3828369 (= e!2364366 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863))))))))

(declare-fun d!1135766 () Bool)

(declare-fun c!667436 () Bool)

(assert (=> d!1135766 (= c!667436 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328863))))))

(assert (=> d!1135766 (= (list!15059 (c!667180 (_2!22945 lt!1328863))) e!2364365)))

(assert (= (and d!1135766 c!667436) b!3828366))

(assert (= (and d!1135766 (not c!667436)) b!3828367))

(assert (= (and b!3828367 c!667437) b!3828368))

(assert (= (and b!3828367 (not c!667437)) b!3828369))

(declare-fun m!4380859 () Bool)

(assert (=> b!3828368 m!4380859))

(declare-fun m!4380861 () Bool)

(assert (=> b!3828369 m!4380861))

(declare-fun m!4380863 () Bool)

(assert (=> b!3828369 m!4380863))

(assert (=> b!3828369 m!4380861))

(assert (=> b!3828369 m!4380863))

(declare-fun m!4380865 () Bool)

(assert (=> b!3828369 m!4380865))

(assert (=> d!1135328 d!1135766))

(assert (=> b!3827265 d!1135436))

(assert (=> b!3827265 d!1135518))

(declare-fun d!1135768 () Bool)

(assert (=> d!1135768 (= (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))) (v!38925 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))))))

(assert (=> b!3827265 d!1135768))

(assert (=> b!3827265 d!1135514))

(declare-fun lt!1329291 () Option!8650)

(declare-fun d!1135770 () Bool)

(assert (=> d!1135770 (= lt!1329291 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678)))))

(declare-fun e!2364369 () Option!8650)

(assert (=> d!1135770 (= lt!1329291 e!2364369)))

(declare-fun c!667440 () Bool)

(assert (=> d!1135770 (= c!667440 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329290 () Unit!58192)

(declare-fun lt!1329287 () Unit!58192)

(assert (=> d!1135770 (= lt!1329290 lt!1329287)))

(assert (=> d!1135770 (isPrefix!3333 (list!15055 input!678) (list!15055 input!678))))

(assert (=> d!1135770 (= lt!1329287 (lemmaIsPrefixRefl!2118 (list!15055 input!678) (list!15055 input!678)))))

(assert (=> d!1135770 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135770 (= (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678)) lt!1329291)))

(declare-fun bm!281288 () Bool)

(declare-fun call!281293 () Option!8650)

(declare-fun maxPrefixOneRuleZipper!219 (LexerInterface!5813 Rule!12248 List!40547) Option!8650)

(assert (=> bm!281288 (= call!281293 (maxPrefixOneRuleZipper!219 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))

(declare-fun b!3828374 () Bool)

(assert (=> b!3828374 (= e!2364369 call!281293)))

(declare-fun b!3828375 () Bool)

(declare-fun lt!1329289 () Option!8650)

(declare-fun lt!1329288 () Option!8650)

(assert (=> b!3828375 (= e!2364369 (ite (and ((_ is None!8649) lt!1329289) ((_ is None!8649) lt!1329288)) None!8649 (ite ((_ is None!8649) lt!1329288) lt!1329289 (ite ((_ is None!8649) lt!1329289) lt!1329288 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1329289))) (size!30466 (_1!22949 (v!38925 lt!1329288)))) lt!1329289 lt!1329288)))))))

(assert (=> b!3828375 (= lt!1329289 call!281293)))

(assert (=> b!3828375 (= lt!1329288 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))

(assert (= (and d!1135770 c!667440) b!3828374))

(assert (= (and d!1135770 (not c!667440)) b!3828375))

(assert (= (or b!3828374 b!3828375) bm!281288))

(assert (=> d!1135770 m!4379223))

(assert (=> d!1135770 m!4379471))

(assert (=> d!1135770 m!4379223))

(assert (=> d!1135770 m!4379223))

(assert (=> d!1135770 m!4379951))

(assert (=> d!1135770 m!4379223))

(assert (=> d!1135770 m!4379223))

(assert (=> d!1135770 m!4379953))

(assert (=> d!1135770 m!4379483))

(assert (=> bm!281288 m!4379223))

(declare-fun m!4380867 () Bool)

(assert (=> bm!281288 m!4380867))

(assert (=> b!3828375 m!4379223))

(declare-fun m!4380869 () Bool)

(assert (=> b!3828375 m!4380869))

(assert (=> b!3827265 d!1135770))

(declare-fun b!3828394 () Bool)

(declare-fun e!2364384 () Int)

(assert (=> b!3828394 (= e!2364384 0)))

(declare-fun d!1135772 () Bool)

(declare-fun e!2364381 () Bool)

(assert (=> d!1135772 e!2364381))

(declare-fun res!1549925 () Bool)

(assert (=> d!1135772 (=> (not res!1549925) (not e!2364381))))

(declare-fun lt!1329294 () List!40547)

(assert (=> d!1135772 (= res!1549925 (= ((_ map implies) (content!5990 lt!1329294) (content!5990 lt!1328853)) ((as const (InoxSet C!22444)) true)))))

(declare-fun e!2364383 () List!40547)

(assert (=> d!1135772 (= lt!1329294 e!2364383)))

(declare-fun c!667449 () Bool)

(assert (=> d!1135772 (= c!667449 ((_ is Nil!40423) lt!1328853))))

(assert (=> d!1135772 (= (drop!2133 lt!1328853 (- (size!30470 lt!1328853) (size!30470 lt!1328865))) lt!1329294)))

(declare-fun b!3828395 () Bool)

(declare-fun e!2364382 () Int)

(assert (=> b!3828395 (= e!2364381 (= (size!30470 lt!1329294) e!2364382))))

(declare-fun c!667452 () Bool)

(assert (=> b!3828395 (= c!667452 (<= (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 0))))

(declare-fun b!3828396 () Bool)

(assert (=> b!3828396 (= e!2364382 e!2364384)))

(declare-fun c!667451 () Bool)

(declare-fun call!281296 () Int)

(assert (=> b!3828396 (= c!667451 (>= (- (size!30470 lt!1328853) (size!30470 lt!1328865)) call!281296))))

(declare-fun b!3828397 () Bool)

(assert (=> b!3828397 (= e!2364384 (- call!281296 (- (size!30470 lt!1328853) (size!30470 lt!1328865))))))

(declare-fun b!3828398 () Bool)

(assert (=> b!3828398 (= e!2364383 Nil!40423)))

(declare-fun b!3828399 () Bool)

(assert (=> b!3828399 (= e!2364382 call!281296)))

(declare-fun b!3828400 () Bool)

(declare-fun e!2364380 () List!40547)

(assert (=> b!3828400 (= e!2364380 lt!1328853)))

(declare-fun bm!281291 () Bool)

(assert (=> bm!281291 (= call!281296 (size!30470 lt!1328853))))

(declare-fun b!3828401 () Bool)

(assert (=> b!3828401 (= e!2364380 (drop!2133 (t!308874 lt!1328853) (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1)))))

(declare-fun b!3828402 () Bool)

(assert (=> b!3828402 (= e!2364383 e!2364380)))

(declare-fun c!667450 () Bool)

(assert (=> b!3828402 (= c!667450 (<= (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 0))))

(assert (= (and d!1135772 c!667449) b!3828398))

(assert (= (and d!1135772 (not c!667449)) b!3828402))

(assert (= (and b!3828402 c!667450) b!3828400))

(assert (= (and b!3828402 (not c!667450)) b!3828401))

(assert (= (and d!1135772 res!1549925) b!3828395))

(assert (= (and b!3828395 c!667452) b!3828399))

(assert (= (and b!3828395 (not c!667452)) b!3828396))

(assert (= (and b!3828396 c!667451) b!3828394))

(assert (= (and b!3828396 (not c!667451)) b!3828397))

(assert (= (or b!3828399 b!3828396 b!3828397) bm!281291))

(declare-fun m!4380871 () Bool)

(assert (=> d!1135772 m!4380871))

(declare-fun m!4380873 () Bool)

(assert (=> d!1135772 m!4380873))

(declare-fun m!4380875 () Bool)

(assert (=> b!3828395 m!4380875))

(assert (=> bm!281291 m!4379505))

(declare-fun m!4380877 () Bool)

(assert (=> b!3828401 m!4380877))

(assert (=> d!1135398 d!1135772))

(assert (=> d!1135398 d!1135758))

(assert (=> d!1135398 d!1135760))

(declare-fun d!1135774 () Bool)

(declare-fun lt!1329295 () Bool)

(assert (=> d!1135774 (= lt!1329295 (isEmpty!23858 (list!15056 (_1!22945 lt!1328956))))))

(assert (=> d!1135774 (= lt!1329295 (isEmpty!23863 (c!667181 (_1!22945 lt!1328956))))))

(assert (=> d!1135774 (= (isEmpty!23852 (_1!22945 lt!1328956)) lt!1329295)))

(declare-fun bs!581993 () Bool)

(assert (= bs!581993 d!1135774))

(assert (=> bs!581993 m!4379577))

(assert (=> bs!581993 m!4379577))

(declare-fun m!4380879 () Bool)

(assert (=> bs!581993 m!4380879))

(declare-fun m!4380881 () Bool)

(assert (=> bs!581993 m!4380881))

(assert (=> b!3827318 d!1135774))

(declare-fun d!1135776 () Bool)

(declare-fun e!2364385 () Bool)

(assert (=> d!1135776 e!2364385))

(declare-fun res!1549926 () Bool)

(assert (=> d!1135776 (=> res!1549926 e!2364385)))

(declare-fun lt!1329296 () Bool)

(assert (=> d!1135776 (= res!1549926 (not lt!1329296))))

(assert (=> d!1135776 (= lt!1329296 (= lt!1328865 (drop!2133 (++!10187 lt!1328858 lt!1328865) (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)))))))

(assert (=> d!1135776 (= (isSuffix!996 lt!1328865 (++!10187 lt!1328858 lt!1328865)) lt!1329296)))

(declare-fun b!3828403 () Bool)

(assert (=> b!3828403 (= e!2364385 (>= (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)))))

(assert (= (and d!1135776 (not res!1549926)) b!3828403))

(assert (=> d!1135776 m!4379219))

(declare-fun m!4380883 () Bool)

(assert (=> d!1135776 m!4380883))

(assert (=> d!1135776 m!4379507))

(assert (=> d!1135776 m!4379219))

(declare-fun m!4380885 () Bool)

(assert (=> d!1135776 m!4380885))

(assert (=> b!3828403 m!4379219))

(assert (=> b!3828403 m!4380883))

(assert (=> b!3828403 m!4379507))

(assert (=> d!1135402 d!1135776))

(assert (=> d!1135402 d!1135432))

(declare-fun d!1135778 () Bool)

(assert (=> d!1135778 (isSuffix!996 lt!1328865 (++!10187 lt!1328858 lt!1328865))))

(assert (=> d!1135778 true))

(declare-fun _$47!940 () Unit!58192)

(assert (=> d!1135778 (= (choose!22528 lt!1328858 lt!1328865) _$47!940)))

(declare-fun bs!581994 () Bool)

(assert (= bs!581994 d!1135778))

(assert (=> bs!581994 m!4379219))

(assert (=> bs!581994 m!4379219))

(assert (=> bs!581994 m!4379515))

(assert (=> d!1135402 d!1135778))

(declare-fun d!1135780 () Bool)

(declare-fun res!1549927 () Bool)

(declare-fun e!2364386 () Bool)

(assert (=> d!1135780 (=> (not res!1549927) (not e!2364386))))

(assert (=> d!1135780 (= res!1549927 (<= (size!30470 (list!15063 (xs!15716 (c!667180 treated!13)))) 512))))

(assert (=> d!1135780 (= (inv!54498 (c!667180 treated!13)) e!2364386)))

(declare-fun b!3828404 () Bool)

(declare-fun res!1549928 () Bool)

(assert (=> b!3828404 (=> (not res!1549928) (not e!2364386))))

(assert (=> b!3828404 (= res!1549928 (= (csize!25075 (c!667180 treated!13)) (size!30470 (list!15063 (xs!15716 (c!667180 treated!13))))))))

(declare-fun b!3828405 () Bool)

(assert (=> b!3828405 (= e!2364386 (and (> (csize!25075 (c!667180 treated!13)) 0) (<= (csize!25075 (c!667180 treated!13)) 512)))))

(assert (= (and d!1135780 res!1549927) b!3828404))

(assert (= (and b!3828404 res!1549928) b!3828405))

(declare-fun m!4380887 () Bool)

(assert (=> d!1135780 m!4380887))

(assert (=> d!1135780 m!4380887))

(declare-fun m!4380889 () Bool)

(assert (=> d!1135780 m!4380889))

(assert (=> b!3828404 m!4380887))

(assert (=> b!3828404 m!4380887))

(assert (=> b!3828404 m!4380889))

(assert (=> b!3827342 d!1135780))

(declare-fun d!1135782 () Bool)

(declare-fun lt!1329297 () Int)

(assert (=> d!1135782 (= lt!1329297 (size!30470 (list!15055 (_2!22945 lt!1328950))))))

(assert (=> d!1135782 (= lt!1329297 (size!30478 (c!667180 (_2!22945 lt!1328950))))))

(assert (=> d!1135782 (= (size!30472 (_2!22945 lt!1328950)) lt!1329297)))

(declare-fun bs!581995 () Bool)

(assert (= bs!581995 d!1135782))

(assert (=> bs!581995 m!4379523))

(assert (=> bs!581995 m!4379523))

(declare-fun m!4380891 () Bool)

(assert (=> bs!581995 m!4380891))

(declare-fun m!4380893 () Bool)

(assert (=> bs!581995 m!4380893))

(assert (=> b!3827302 d!1135782))

(declare-fun d!1135784 () Bool)

(declare-fun lt!1329298 () Int)

(assert (=> d!1135784 (= lt!1329298 (size!30470 (list!15055 totalInput!335)))))

(assert (=> d!1135784 (= lt!1329298 (size!30478 (c!667180 totalInput!335)))))

(assert (=> d!1135784 (= (size!30472 totalInput!335) lt!1329298)))

(declare-fun bs!581996 () Bool)

(assert (= bs!581996 d!1135784))

(assert (=> bs!581996 m!4379221))

(assert (=> bs!581996 m!4379221))

(assert (=> bs!581996 m!4379987))

(declare-fun m!4380895 () Bool)

(assert (=> bs!581996 m!4380895))

(assert (=> b!3827302 d!1135784))

(declare-fun b!3828406 () Bool)

(declare-fun e!2364387 () List!40547)

(assert (=> b!3828406 (= e!2364387 Nil!40423)))

(declare-fun b!3828407 () Bool)

(declare-fun e!2364388 () List!40547)

(assert (=> b!3828407 (= e!2364387 e!2364388)))

(declare-fun c!667454 () Bool)

(assert (=> b!3828407 (= c!667454 ((_ is Leaf!19232) (c!667180 treated!13)))))

(declare-fun b!3828408 () Bool)

(assert (=> b!3828408 (= e!2364388 (list!15063 (xs!15716 (c!667180 treated!13))))))

(declare-fun b!3828409 () Bool)

(assert (=> b!3828409 (= e!2364388 (++!10187 (list!15059 (left!31275 (c!667180 treated!13))) (list!15059 (right!31605 (c!667180 treated!13)))))))

(declare-fun d!1135786 () Bool)

(declare-fun c!667453 () Bool)

(assert (=> d!1135786 (= c!667453 ((_ is Empty!12422) (c!667180 treated!13)))))

(assert (=> d!1135786 (= (list!15059 (c!667180 treated!13)) e!2364387)))

(assert (= (and d!1135786 c!667453) b!3828406))

(assert (= (and d!1135786 (not c!667453)) b!3828407))

(assert (= (and b!3828407 c!667454) b!3828408))

(assert (= (and b!3828407 (not c!667454)) b!3828409))

(assert (=> b!3828408 m!4380887))

(declare-fun m!4380897 () Bool)

(assert (=> b!3828409 m!4380897))

(declare-fun m!4380899 () Bool)

(assert (=> b!3828409 m!4380899))

(assert (=> b!3828409 m!4380897))

(assert (=> b!3828409 m!4380899))

(declare-fun m!4380901 () Bool)

(assert (=> b!3828409 m!4380901))

(assert (=> d!1135438 d!1135786))

(declare-fun bs!581997 () Bool)

(declare-fun d!1135788 () Bool)

(assert (= bs!581997 (and d!1135788 b!3827975)))

(declare-fun lambda!125942 () Int)

(assert (=> bs!581997 (= lambda!125942 lambda!125925)))

(assert (=> d!1135788 true))

(assert (=> d!1135788 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125942))))

(assert (=> d!1135788 true))

(assert (=> d!1135788 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125942))))

(declare-fun Forall!1424 (Int) Bool)

(assert (=> d!1135788 (= (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (Forall!1424 lambda!125942))))

(declare-fun bs!581998 () Bool)

(assert (= bs!581998 d!1135788))

(declare-fun m!4380903 () Bool)

(assert (=> bs!581998 m!4380903))

(assert (=> d!1135324 d!1135788))

(declare-fun b!3828414 () Bool)

(declare-fun e!2364392 () Option!8648)

(declare-fun lt!1329303 () Option!8648)

(declare-fun lt!1329299 () Option!8648)

(assert (=> b!3828414 (= e!2364392 (ite (and ((_ is None!8647) lt!1329303) ((_ is None!8647) lt!1329299)) None!8647 (ite ((_ is None!8647) lt!1329299) lt!1329303 (ite ((_ is None!8647) lt!1329303) lt!1329299 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1329303))) (size!30466 (_1!22946 (v!38923 lt!1329299)))) lt!1329303 lt!1329299)))))))

(declare-fun call!281297 () Option!8648)

(assert (=> b!3828414 (= lt!1329303 call!281297)))

(assert (=> b!3828414 (= lt!1329299 (maxPrefixZipperSequenceV2!613 thiss!11876 (t!308876 (t!308876 rules!1265)) input!678 totalInput!335))))

(declare-fun b!3828415 () Bool)

(declare-fun e!2364394 () Bool)

(declare-fun lt!1329305 () Option!8648)

(assert (=> b!3828415 (= e!2364394 (= (list!15055 (_2!22946 (get!13412 lt!1329305))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3828416 () Bool)

(declare-fun e!2364393 () Bool)

(assert (=> b!3828416 (= e!2364393 (= (list!15055 (_2!22946 (get!13412 lt!1329305))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3828417 () Bool)

(declare-fun e!2364391 () Bool)

(assert (=> b!3828417 (= e!2364391 e!2364394)))

(declare-fun res!1549930 () Bool)

(assert (=> b!3828417 (=> (not res!1549930) (not e!2364394))))

(assert (=> b!3828417 (= res!1549930 (= (_1!22946 (get!13412 lt!1329305)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3828418 () Bool)

(assert (=> b!3828418 (= e!2364392 call!281297)))

(declare-fun b!3828419 () Bool)

(declare-fun e!2364389 () Bool)

(assert (=> b!3828419 (= e!2364389 e!2364391)))

(declare-fun res!1549932 () Bool)

(assert (=> b!3828419 (=> res!1549932 e!2364391)))

(assert (=> b!3828419 (= res!1549932 (not (isDefined!6810 lt!1329305)))))

(declare-fun b!3828420 () Bool)

(declare-fun e!2364390 () Bool)

(assert (=> b!3828420 (= e!2364390 e!2364393)))

(declare-fun res!1549929 () Bool)

(assert (=> b!3828420 (=> (not res!1549929) (not e!2364393))))

(assert (=> b!3828420 (= res!1549929 (= (_1!22946 (get!13412 lt!1329305)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun bm!281292 () Bool)

(assert (=> bm!281292 (= call!281297 (maxPrefixOneRuleZipperSequenceV2!251 thiss!11876 (h!45845 (t!308876 rules!1265)) input!678 totalInput!335))))

(declare-fun b!3828421 () Bool)

(declare-fun res!1549933 () Bool)

(assert (=> b!3828421 (=> (not res!1549933) (not e!2364389))))

(assert (=> b!3828421 (= res!1549933 e!2364390)))

(declare-fun res!1549934 () Bool)

(assert (=> b!3828421 (=> res!1549934 e!2364390)))

(assert (=> b!3828421 (= res!1549934 (not (isDefined!6810 lt!1329305)))))

(declare-fun d!1135790 () Bool)

(assert (=> d!1135790 e!2364389))

(declare-fun res!1549931 () Bool)

(assert (=> d!1135790 (=> (not res!1549931) (not e!2364389))))

(assert (=> d!1135790 (= res!1549931 (= (isDefined!6810 lt!1329305) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))))

(assert (=> d!1135790 (= lt!1329305 e!2364392)))

(declare-fun c!667455 () Bool)

(assert (=> d!1135790 (= c!667455 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1329302 () Unit!58192)

(declare-fun lt!1329300 () Unit!58192)

(assert (=> d!1135790 (= lt!1329302 lt!1329300)))

(declare-fun lt!1329301 () List!40547)

(declare-fun lt!1329304 () List!40547)

(assert (=> d!1135790 (isPrefix!3333 lt!1329301 lt!1329304)))

(assert (=> d!1135790 (= lt!1329300 (lemmaIsPrefixRefl!2118 lt!1329301 lt!1329304))))

(assert (=> d!1135790 (= lt!1329304 (list!15055 input!678))))

(assert (=> d!1135790 (= lt!1329301 (list!15055 input!678))))

(assert (=> d!1135790 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1135790 (= (maxPrefixZipperSequenceV2!613 thiss!11876 (t!308876 rules!1265) input!678 totalInput!335) lt!1329305)))

(assert (= (and d!1135790 c!667455) b!3828418))

(assert (= (and d!1135790 (not c!667455)) b!3828414))

(assert (= (or b!3828418 b!3828414) bm!281292))

(assert (= (and d!1135790 res!1549931) b!3828421))

(assert (= (and b!3828421 (not res!1549934)) b!3828420))

(assert (= (and b!3828420 res!1549929) b!3828416))

(assert (= (and b!3828421 res!1549933) b!3828419))

(assert (= (and b!3828419 (not res!1549932)) b!3828417))

(assert (= (and b!3828417 res!1549930) b!3828415))

(assert (=> b!3828415 m!4379223))

(assert (=> b!3828415 m!4379945))

(declare-fun m!4380905 () Bool)

(assert (=> b!3828415 m!4380905))

(assert (=> b!3828415 m!4379945))

(declare-fun m!4380907 () Bool)

(assert (=> b!3828415 m!4380907))

(declare-fun m!4380909 () Bool)

(assert (=> b!3828415 m!4380909))

(assert (=> b!3828415 m!4379223))

(declare-fun m!4380911 () Bool)

(assert (=> b!3828421 m!4380911))

(declare-fun m!4380913 () Bool)

(assert (=> b!3828414 m!4380913))

(declare-fun m!4380915 () Bool)

(assert (=> d!1135790 m!4380915))

(assert (=> d!1135790 m!4380869))

(declare-fun m!4380917 () Bool)

(assert (=> d!1135790 m!4380917))

(declare-fun m!4380919 () Bool)

(assert (=> d!1135790 m!4380919))

(assert (=> d!1135790 m!4379223))

(assert (=> d!1135790 m!4380911))

(assert (=> d!1135790 m!4379223))

(assert (=> d!1135790 m!4380869))

(declare-fun m!4380921 () Bool)

(assert (=> d!1135790 m!4380921))

(assert (=> b!3828416 m!4379223))

(assert (=> b!3828416 m!4380869))

(assert (=> b!3828416 m!4380905))

(assert (=> b!3828416 m!4380869))

(declare-fun m!4380923 () Bool)

(assert (=> b!3828416 m!4380923))

(assert (=> b!3828416 m!4380909))

(assert (=> b!3828416 m!4379223))

(declare-fun m!4380925 () Bool)

(assert (=> bm!281292 m!4380925))

(assert (=> b!3828419 m!4380911))

(assert (=> b!3828417 m!4380905))

(assert (=> b!3828417 m!4379223))

(assert (=> b!3828417 m!4379223))

(assert (=> b!3828417 m!4379945))

(assert (=> b!3828417 m!4379945))

(assert (=> b!3828417 m!4380907))

(assert (=> b!3828420 m!4380905))

(assert (=> b!3828420 m!4379223))

(assert (=> b!3828420 m!4379223))

(assert (=> b!3828420 m!4380869))

(assert (=> b!3828420 m!4380869))

(assert (=> b!3828420 m!4380923))

(assert (=> b!3827263 d!1135790))

(assert (=> b!3827055 d!1135422))

(assert (=> b!3827269 d!1135514))

(assert (=> b!3827269 d!1135768))

(assert (=> b!3827269 d!1135770))

(assert (=> b!3827269 d!1135436))

(assert (=> b!3827322 d!1135522))

(assert (=> b!3827322 d!1135628))

(assert (=> b!3827322 d!1135436))

(declare-fun d!1135792 () Bool)

(declare-fun lt!1329306 () Bool)

(assert (=> d!1135792 (= lt!1329306 (isEmpty!23858 (list!15056 (_1!22945 lt!1328959))))))

(assert (=> d!1135792 (= lt!1329306 (isEmpty!23863 (c!667181 (_1!22945 lt!1328959))))))

(assert (=> d!1135792 (= (isEmpty!23852 (_1!22945 lt!1328959)) lt!1329306)))

(declare-fun bs!581999 () Bool)

(assert (= bs!581999 d!1135792))

(assert (=> bs!581999 m!4379613))

(assert (=> bs!581999 m!4379613))

(declare-fun m!4380927 () Bool)

(assert (=> bs!581999 m!4380927))

(declare-fun m!4380929 () Bool)

(assert (=> bs!581999 m!4380929))

(assert (=> b!3827334 d!1135792))

(assert (=> b!3827270 d!1135644))

(declare-fun d!1135794 () Bool)

(declare-fun c!667458 () Bool)

(assert (=> d!1135794 (= c!667458 ((_ is Nil!40423) lt!1328963))))

(declare-fun e!2364397 () (InoxSet C!22444))

(assert (=> d!1135794 (= (content!5990 lt!1328963) e!2364397)))

(declare-fun b!3828426 () Bool)

(assert (=> b!3828426 (= e!2364397 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3828427 () Bool)

(assert (=> b!3828427 (= e!2364397 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1328963) true) (content!5990 (t!308874 lt!1328963))))))

(assert (= (and d!1135794 c!667458) b!3828426))

(assert (= (and d!1135794 (not c!667458)) b!3828427))

(declare-fun m!4380931 () Bool)

(assert (=> b!3828427 m!4380931))

(declare-fun m!4380933 () Bool)

(assert (=> b!3828427 m!4380933))

(assert (=> d!1135432 d!1135794))

(declare-fun d!1135796 () Bool)

(declare-fun c!667459 () Bool)

(assert (=> d!1135796 (= c!667459 ((_ is Nil!40423) lt!1328858))))

(declare-fun e!2364398 () (InoxSet C!22444))

(assert (=> d!1135796 (= (content!5990 lt!1328858) e!2364398)))

(declare-fun b!3828428 () Bool)

(assert (=> b!3828428 (= e!2364398 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3828429 () Bool)

(assert (=> b!3828429 (= e!2364398 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1328858) true) (content!5990 (t!308874 lt!1328858))))))

(assert (= (and d!1135796 c!667459) b!3828428))

(assert (= (and d!1135796 (not c!667459)) b!3828429))

(declare-fun m!4380935 () Bool)

(assert (=> b!3828429 m!4380935))

(assert (=> b!3828429 m!4380847))

(assert (=> d!1135432 d!1135796))

(declare-fun d!1135798 () Bool)

(declare-fun c!667460 () Bool)

(assert (=> d!1135798 (= c!667460 ((_ is Nil!40423) lt!1328865))))

(declare-fun e!2364399 () (InoxSet C!22444))

(assert (=> d!1135798 (= (content!5990 lt!1328865) e!2364399)))

(declare-fun b!3828430 () Bool)

(assert (=> b!3828430 (= e!2364399 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3828431 () Bool)

(assert (=> b!3828431 (= e!2364399 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1328865) true) (content!5990 (t!308874 lt!1328865))))))

(assert (= (and d!1135798 c!667460) b!3828430))

(assert (= (and d!1135798 (not c!667460)) b!3828431))

(declare-fun m!4380937 () Bool)

(assert (=> b!3828431 m!4380937))

(declare-fun m!4380939 () Bool)

(assert (=> b!3828431 m!4380939))

(assert (=> d!1135432 d!1135798))

(declare-fun b!3828433 () Bool)

(declare-fun e!2364400 () List!40548)

(declare-fun e!2364401 () List!40548)

(assert (=> b!3828433 (= e!2364400 e!2364401)))

(declare-fun c!667462 () Bool)

(assert (=> b!3828433 (= c!667462 ((_ is Leaf!19233) (c!667181 lt!1328854)))))

(declare-fun b!3828435 () Bool)

(assert (=> b!3828435 (= e!2364401 (++!10192 (list!15060 (left!31276 (c!667181 lt!1328854))) (list!15060 (right!31606 (c!667181 lt!1328854)))))))

(declare-fun d!1135800 () Bool)

(declare-fun c!667461 () Bool)

(assert (=> d!1135800 (= c!667461 ((_ is Empty!12423) (c!667181 lt!1328854)))))

(assert (=> d!1135800 (= (list!15060 (c!667181 lt!1328854)) e!2364400)))

(declare-fun b!3828434 () Bool)

(assert (=> b!3828434 (= e!2364401 (list!15064 (xs!15717 (c!667181 lt!1328854))))))

(declare-fun b!3828432 () Bool)

(assert (=> b!3828432 (= e!2364400 Nil!40424)))

(assert (= (and d!1135800 c!667461) b!3828432))

(assert (= (and d!1135800 (not c!667461)) b!3828433))

(assert (= (and b!3828433 c!667462) b!3828434))

(assert (= (and b!3828433 (not c!667462)) b!3828435))

(declare-fun m!4380941 () Bool)

(assert (=> b!3828435 m!4380941))

(declare-fun m!4380943 () Bool)

(assert (=> b!3828435 m!4380943))

(assert (=> b!3828435 m!4380941))

(assert (=> b!3828435 m!4380943))

(declare-fun m!4380945 () Bool)

(assert (=> b!3828435 m!4380945))

(declare-fun m!4380947 () Bool)

(assert (=> b!3828434 m!4380947))

(assert (=> d!1135410 d!1135800))

(declare-fun bs!582000 () Bool)

(declare-fun d!1135802 () Bool)

(assert (= bs!582000 (and d!1135802 d!1135660)))

(declare-fun lambda!125945 () Int)

(assert (=> bs!582000 (= lambda!125945 lambda!125936)))

(assert (=> d!1135802 true))

(declare-fun lt!1329309 () Bool)

(assert (=> d!1135802 (= lt!1329309 (forall!8265 rules!1265 lambda!125945))))

(declare-fun e!2364407 () Bool)

(assert (=> d!1135802 (= lt!1329309 e!2364407)))

(declare-fun res!1549940 () Bool)

(assert (=> d!1135802 (=> res!1549940 e!2364407)))

(assert (=> d!1135802 (= res!1549940 (not ((_ is Cons!40425) rules!1265)))))

(assert (=> d!1135802 (= (rulesValidInductive!2192 thiss!11876 rules!1265) lt!1329309)))

(declare-fun b!3828440 () Bool)

(declare-fun e!2364406 () Bool)

(assert (=> b!3828440 (= e!2364407 e!2364406)))

(declare-fun res!1549939 () Bool)

(assert (=> b!3828440 (=> (not res!1549939) (not e!2364406))))

(assert (=> b!3828440 (= res!1549939 (ruleValid!2185 thiss!11876 (h!45845 rules!1265)))))

(declare-fun b!3828441 () Bool)

(assert (=> b!3828441 (= e!2364406 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265)))))

(assert (= (and d!1135802 (not res!1549940)) b!3828440))

(assert (= (and b!3828440 res!1549939) b!3828441))

(declare-fun m!4380949 () Bool)

(assert (=> d!1135802 m!4380949))

(assert (=> b!3828440 m!4380305))

(assert (=> b!3828441 m!4380915))

(assert (=> d!1135334 d!1135802))

(assert (=> d!1135334 d!1135770))

(declare-fun d!1135804 () Bool)

(assert (=> d!1135804 (isPrefix!3333 lt!1328931 lt!1328934)))

(declare-fun lt!1329312 () Unit!58192)

(declare-fun choose!22530 (List!40547 List!40547) Unit!58192)

(assert (=> d!1135804 (= lt!1329312 (choose!22530 lt!1328931 lt!1328934))))

(assert (=> d!1135804 (= (lemmaIsPrefixRefl!2118 lt!1328931 lt!1328934) lt!1329312)))

(declare-fun bs!582001 () Bool)

(assert (= bs!582001 d!1135804))

(assert (=> bs!582001 m!4379489))

(declare-fun m!4380951 () Bool)

(assert (=> bs!582001 m!4380951))

(assert (=> d!1135334 d!1135804))

(assert (=> d!1135334 d!1135644))

(assert (=> d!1135334 d!1135436))

(declare-fun b!3828452 () Bool)

(declare-fun e!2364414 () Bool)

(declare-fun tail!5795 (List!40547) List!40547)

(assert (=> b!3828452 (= e!2364414 (isPrefix!3333 (tail!5795 lt!1328931) (tail!5795 lt!1328934)))))

(declare-fun b!3828450 () Bool)

(declare-fun e!2364416 () Bool)

(assert (=> b!3828450 (= e!2364416 e!2364414)))

(declare-fun res!1549950 () Bool)

(assert (=> b!3828450 (=> (not res!1549950) (not e!2364414))))

(assert (=> b!3828450 (= res!1549950 (not ((_ is Nil!40423) lt!1328934)))))

(declare-fun b!3828451 () Bool)

(declare-fun res!1549952 () Bool)

(assert (=> b!3828451 (=> (not res!1549952) (not e!2364414))))

(declare-fun head!8068 (List!40547) C!22444)

(assert (=> b!3828451 (= res!1549952 (= (head!8068 lt!1328931) (head!8068 lt!1328934)))))

(declare-fun d!1135806 () Bool)

(declare-fun e!2364415 () Bool)

(assert (=> d!1135806 e!2364415))

(declare-fun res!1549949 () Bool)

(assert (=> d!1135806 (=> res!1549949 e!2364415)))

(declare-fun lt!1329315 () Bool)

(assert (=> d!1135806 (= res!1549949 (not lt!1329315))))

(assert (=> d!1135806 (= lt!1329315 e!2364416)))

(declare-fun res!1549951 () Bool)

(assert (=> d!1135806 (=> res!1549951 e!2364416)))

(assert (=> d!1135806 (= res!1549951 ((_ is Nil!40423) lt!1328931))))

(assert (=> d!1135806 (= (isPrefix!3333 lt!1328931 lt!1328934) lt!1329315)))

(declare-fun b!3828453 () Bool)

(assert (=> b!3828453 (= e!2364415 (>= (size!30470 lt!1328934) (size!30470 lt!1328931)))))

(assert (= (and d!1135806 (not res!1549951)) b!3828450))

(assert (= (and b!3828450 res!1549950) b!3828451))

(assert (= (and b!3828451 res!1549952) b!3828452))

(assert (= (and d!1135806 (not res!1549949)) b!3828453))

(declare-fun m!4380953 () Bool)

(assert (=> b!3828452 m!4380953))

(declare-fun m!4380955 () Bool)

(assert (=> b!3828452 m!4380955))

(assert (=> b!3828452 m!4380953))

(assert (=> b!3828452 m!4380955))

(declare-fun m!4380957 () Bool)

(assert (=> b!3828452 m!4380957))

(declare-fun m!4380959 () Bool)

(assert (=> b!3828451 m!4380959))

(declare-fun m!4380961 () Bool)

(assert (=> b!3828451 m!4380961))

(declare-fun m!4380963 () Bool)

(assert (=> b!3828453 m!4380963))

(declare-fun m!4380965 () Bool)

(assert (=> b!3828453 m!4380965))

(assert (=> d!1135334 d!1135806))

(declare-fun d!1135808 () Bool)

(assert (=> d!1135808 (= (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))) (not (isEmpty!23857 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678)))))))

(declare-fun bs!582002 () Bool)

(assert (= bs!582002 d!1135808))

(assert (=> bs!582002 m!4379485))

(declare-fun m!4380967 () Bool)

(assert (=> bs!582002 m!4380967))

(assert (=> d!1135334 d!1135808))

(declare-fun d!1135810 () Bool)

(assert (=> d!1135810 (= (list!15056 (_1!22945 lt!1328959)) (list!15060 (c!667181 (_1!22945 lt!1328959))))))

(declare-fun bs!582003 () Bool)

(assert (= bs!582003 d!1135810))

(declare-fun m!4380969 () Bool)

(assert (=> bs!582003 m!4380969))

(assert (=> b!3827339 d!1135810))

(assert (=> b!3827339 d!1135646))

(assert (=> b!3827339 d!1135438))

(declare-fun d!1135812 () Bool)

(declare-fun lt!1329316 () Int)

(assert (=> d!1135812 (>= lt!1329316 0)))

(declare-fun e!2364417 () Int)

(assert (=> d!1135812 (= lt!1329316 e!2364417)))

(declare-fun c!667463 () Bool)

(assert (=> d!1135812 (= c!667463 ((_ is Nil!40423) lt!1328860))))

(assert (=> d!1135812 (= (size!30470 lt!1328860) lt!1329316)))

(declare-fun b!3828454 () Bool)

(assert (=> b!3828454 (= e!2364417 0)))

(declare-fun b!3828455 () Bool)

(assert (=> b!3828455 (= e!2364417 (+ 1 (size!30470 (t!308874 lt!1328860))))))

(assert (= (and d!1135812 c!667463) b!3828454))

(assert (= (and d!1135812 (not c!667463)) b!3828455))

(declare-fun m!4380971 () Bool)

(assert (=> b!3828455 m!4380971))

(assert (=> b!3827283 d!1135812))

(assert (=> b!3827283 d!1135760))

(declare-fun b!3828456 () Bool)

(declare-fun e!2364422 () Int)

(assert (=> b!3828456 (= e!2364422 0)))

(declare-fun d!1135814 () Bool)

(declare-fun e!2364419 () Bool)

(assert (=> d!1135814 e!2364419))

(declare-fun res!1549953 () Bool)

(assert (=> d!1135814 (=> (not res!1549953) (not e!2364419))))

(declare-fun lt!1329317 () List!40547)

(assert (=> d!1135814 (= res!1549953 (= ((_ map implies) (content!5990 lt!1329317) (content!5990 lt!1328860)) ((as const (InoxSet C!22444)) true)))))

(declare-fun e!2364421 () List!40547)

(assert (=> d!1135814 (= lt!1329317 e!2364421)))

(declare-fun c!667464 () Bool)

(assert (=> d!1135814 (= c!667464 ((_ is Nil!40423) lt!1328860))))

(assert (=> d!1135814 (= (drop!2133 lt!1328860 (- (size!30470 lt!1328860) (size!30470 lt!1328865))) lt!1329317)))

(declare-fun b!3828457 () Bool)

(declare-fun e!2364420 () Int)

(assert (=> b!3828457 (= e!2364419 (= (size!30470 lt!1329317) e!2364420))))

(declare-fun c!667467 () Bool)

(assert (=> b!3828457 (= c!667467 (<= (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 0))))

(declare-fun b!3828458 () Bool)

(assert (=> b!3828458 (= e!2364420 e!2364422)))

(declare-fun c!667466 () Bool)

(declare-fun call!281298 () Int)

(assert (=> b!3828458 (= c!667466 (>= (- (size!30470 lt!1328860) (size!30470 lt!1328865)) call!281298))))

(declare-fun b!3828459 () Bool)

(assert (=> b!3828459 (= e!2364422 (- call!281298 (- (size!30470 lt!1328860) (size!30470 lt!1328865))))))

(declare-fun b!3828460 () Bool)

(assert (=> b!3828460 (= e!2364421 Nil!40423)))

(declare-fun b!3828461 () Bool)

(assert (=> b!3828461 (= e!2364420 call!281298)))

(declare-fun b!3828462 () Bool)

(declare-fun e!2364418 () List!40547)

(assert (=> b!3828462 (= e!2364418 lt!1328860)))

(declare-fun bm!281293 () Bool)

(assert (=> bm!281293 (= call!281298 (size!30470 lt!1328860))))

(declare-fun b!3828463 () Bool)

(assert (=> b!3828463 (= e!2364418 (drop!2133 (t!308874 lt!1328860) (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1)))))

(declare-fun b!3828464 () Bool)

(assert (=> b!3828464 (= e!2364421 e!2364418)))

(declare-fun c!667465 () Bool)

(assert (=> b!3828464 (= c!667465 (<= (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 0))))

(assert (= (and d!1135814 c!667464) b!3828460))

(assert (= (and d!1135814 (not c!667464)) b!3828464))

(assert (= (and b!3828464 c!667465) b!3828462))

(assert (= (and b!3828464 (not c!667465)) b!3828463))

(assert (= (and d!1135814 res!1549953) b!3828457))

(assert (= (and b!3828457 c!667467) b!3828461))

(assert (= (and b!3828457 (not c!667467)) b!3828458))

(assert (= (and b!3828458 c!667466) b!3828456))

(assert (= (and b!3828458 (not c!667466)) b!3828459))

(assert (= (or b!3828461 b!3828458 b!3828459) bm!281293))

(declare-fun m!4380973 () Bool)

(assert (=> d!1135814 m!4380973))

(declare-fun m!4380975 () Bool)

(assert (=> d!1135814 m!4380975))

(declare-fun m!4380977 () Bool)

(assert (=> b!3828457 m!4380977))

(assert (=> bm!281293 m!4379511))

(declare-fun m!4380979 () Bool)

(assert (=> b!3828463 m!4380979))

(assert (=> d!1135400 d!1135814))

(assert (=> d!1135400 d!1135812))

(assert (=> d!1135400 d!1135760))

(declare-fun d!1135816 () Bool)

(assert (=> d!1135816 (= (inv!54500 (xs!15716 (c!667180 totalInput!335))) (<= (size!30470 (innerList!12482 (xs!15716 (c!667180 totalInput!335)))) 2147483647))))

(declare-fun bs!582004 () Bool)

(assert (= bs!582004 d!1135816))

(declare-fun m!4380981 () Bool)

(assert (=> bs!582004 m!4380981))

(assert (=> b!3827409 d!1135816))

(declare-fun d!1135818 () Bool)

(declare-fun lt!1329318 () Int)

(assert (=> d!1135818 (= lt!1329318 (size!30476 (list!15056 (_1!22945 lt!1328956))))))

(assert (=> d!1135818 (= lt!1329318 (size!30477 (c!667181 (_1!22945 lt!1328956))))))

(assert (=> d!1135818 (= (size!30471 (_1!22945 lt!1328956)) lt!1329318)))

(declare-fun bs!582005 () Bool)

(assert (= bs!582005 d!1135818))

(assert (=> bs!582005 m!4379577))

(assert (=> bs!582005 m!4379577))

(declare-fun m!4380983 () Bool)

(assert (=> bs!582005 m!4380983))

(declare-fun m!4380985 () Bool)

(assert (=> bs!582005 m!4380985))

(assert (=> d!1135412 d!1135818))

(declare-fun e!2364425 () Bool)

(declare-fun b!3828465 () Bool)

(declare-fun lt!1329322 () Option!8648)

(assert (=> b!3828465 (= e!2364425 (= (list!15055 (_2!22946 (get!13412 lt!1329322))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3828466 () Bool)

(declare-fun e!2364423 () Bool)

(declare-fun e!2364426 () Bool)

(assert (=> b!3828466 (= e!2364423 e!2364426)))

(declare-fun res!1549954 () Bool)

(assert (=> b!3828466 (=> res!1549954 e!2364426)))

(assert (=> b!3828466 (= res!1549954 (not (isDefined!6810 lt!1329322)))))

(declare-fun b!3828467 () Bool)

(declare-fun res!1549956 () Bool)

(assert (=> b!3828467 (=> (not res!1549956) (not e!2364423))))

(declare-fun e!2364428 () Bool)

(assert (=> b!3828467 (= res!1549956 e!2364428)))

(declare-fun res!1549955 () Bool)

(assert (=> b!3828467 (=> res!1549955 e!2364428)))

(assert (=> b!3828467 (= res!1549955 (not (isDefined!6810 lt!1329322)))))

(declare-fun b!3828468 () Bool)

(declare-fun e!2364424 () Option!8648)

(declare-fun call!281299 () Option!8648)

(assert (=> b!3828468 (= e!2364424 call!281299)))

(declare-fun d!1135820 () Bool)

(assert (=> d!1135820 e!2364423))

(declare-fun res!1549959 () Bool)

(assert (=> d!1135820 (=> (not res!1549959) (not e!2364423))))

(assert (=> d!1135820 (= res!1549959 (= (isDefined!6810 lt!1329322) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678)))))))

(assert (=> d!1135820 (= lt!1329322 e!2364424)))

(declare-fun c!667468 () Bool)

(assert (=> d!1135820 (= c!667468 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329321 () Unit!58192)

(declare-fun lt!1329323 () Unit!58192)

(assert (=> d!1135820 (= lt!1329321 lt!1329323)))

(declare-fun lt!1329320 () List!40547)

(declare-fun lt!1329324 () List!40547)

(assert (=> d!1135820 (isPrefix!3333 lt!1329320 lt!1329324)))

(assert (=> d!1135820 (= lt!1329323 (lemmaIsPrefixRefl!2118 lt!1329320 lt!1329324))))

(assert (=> d!1135820 (= lt!1329324 (list!15055 input!678))))

(assert (=> d!1135820 (= lt!1329320 (list!15055 input!678))))

(assert (=> d!1135820 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135820 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 input!678) lt!1329322)))

(declare-fun bm!281294 () Bool)

(assert (=> bm!281294 (= call!281299 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) input!678))))

(declare-fun b!3828469 () Bool)

(assert (=> b!3828469 (= e!2364426 e!2364425)))

(declare-fun res!1549957 () Bool)

(assert (=> b!3828469 (=> (not res!1549957) (not e!2364425))))

(assert (=> b!3828469 (= res!1549957 (= (_1!22946 (get!13412 lt!1329322)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3828470 () Bool)

(declare-fun lt!1329325 () Option!8648)

(declare-fun lt!1329319 () Option!8648)

(assert (=> b!3828470 (= e!2364424 (ite (and ((_ is None!8647) lt!1329325) ((_ is None!8647) lt!1329319)) None!8647 (ite ((_ is None!8647) lt!1329319) lt!1329325 (ite ((_ is None!8647) lt!1329325) lt!1329319 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1329325))) (size!30466 (_1!22946 (v!38923 lt!1329319)))) lt!1329325 lt!1329319)))))))

(assert (=> b!3828470 (= lt!1329325 call!281299)))

(assert (=> b!3828470 (= lt!1329319 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) input!678))))

(declare-fun b!3828471 () Bool)

(declare-fun e!2364427 () Bool)

(assert (=> b!3828471 (= e!2364427 (= (list!15055 (_2!22946 (get!13412 lt!1329322))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))))))))

(declare-fun b!3828472 () Bool)

(assert (=> b!3828472 (= e!2364428 e!2364427)))

(declare-fun res!1549958 () Bool)

(assert (=> b!3828472 (=> (not res!1549958) (not e!2364427))))

(assert (=> b!3828472 (= res!1549958 (= (_1!22946 (get!13412 lt!1329322)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))))))))

(assert (= (and d!1135820 c!667468) b!3828468))

(assert (= (and d!1135820 (not c!667468)) b!3828470))

(assert (= (or b!3828468 b!3828470) bm!281294))

(assert (= (and d!1135820 res!1549959) b!3828467))

(assert (= (and b!3828467 (not res!1549955)) b!3828472))

(assert (= (and b!3828472 res!1549958) b!3828471))

(assert (= (and b!3828467 res!1549956) b!3828466))

(assert (= (and b!3828466 (not res!1549954)) b!3828469))

(assert (= (and b!3828469 res!1549957) b!3828465))

(declare-fun m!4380987 () Bool)

(assert (=> b!3828467 m!4380987))

(declare-fun m!4380989 () Bool)

(assert (=> d!1135820 m!4380989))

(assert (=> d!1135820 m!4379223))

(assert (=> d!1135820 m!4379485))

(assert (=> d!1135820 m!4379483))

(assert (=> d!1135820 m!4379223))

(declare-fun m!4380991 () Bool)

(assert (=> d!1135820 m!4380991))

(assert (=> d!1135820 m!4379485))

(assert (=> d!1135820 m!4379487))

(assert (=> d!1135820 m!4380987))

(declare-fun m!4380993 () Bool)

(assert (=> b!3828469 m!4380993))

(assert (=> b!3828469 m!4379223))

(assert (=> b!3828469 m!4379223))

(assert (=> b!3828469 m!4379471))

(assert (=> b!3828469 m!4379471))

(assert (=> b!3828469 m!4379475))

(assert (=> b!3828471 m!4379485))

(assert (=> b!3828471 m!4379493))

(assert (=> b!3828471 m!4380993))

(assert (=> b!3828471 m!4379223))

(assert (=> b!3828471 m!4379485))

(assert (=> b!3828471 m!4379223))

(declare-fun m!4380995 () Bool)

(assert (=> b!3828471 m!4380995))

(declare-fun m!4380997 () Bool)

(assert (=> bm!281294 m!4380997))

(assert (=> b!3828466 m!4380987))

(assert (=> b!3828472 m!4380993))

(assert (=> b!3828472 m!4379223))

(assert (=> b!3828472 m!4379223))

(assert (=> b!3828472 m!4379485))

(assert (=> b!3828472 m!4379485))

(assert (=> b!3828472 m!4379493))

(declare-fun m!4380999 () Bool)

(assert (=> b!3828470 m!4380999))

(assert (=> b!3828465 m!4379471))

(assert (=> b!3828465 m!4379475))

(assert (=> b!3828465 m!4379223))

(assert (=> b!3828465 m!4379471))

(assert (=> b!3828465 m!4380993))

(assert (=> b!3828465 m!4379223))

(assert (=> b!3828465 m!4380995))

(assert (=> d!1135412 d!1135820))

(declare-fun d!1135822 () Bool)

(declare-fun lt!1329326 () Int)

(assert (=> d!1135822 (= lt!1329326 (size!30470 (list!15055 (_2!22945 lt!1328959))))))

(assert (=> d!1135822 (= lt!1329326 (size!30478 (c!667180 (_2!22945 lt!1328959))))))

(assert (=> d!1135822 (= (size!30472 (_2!22945 lt!1328959)) lt!1329326)))

(declare-fun bs!582006 () Bool)

(assert (= bs!582006 d!1135822))

(assert (=> bs!582006 m!4379603))

(assert (=> bs!582006 m!4379603))

(declare-fun m!4381001 () Bool)

(assert (=> bs!582006 m!4381001))

(declare-fun m!4381003 () Bool)

(assert (=> bs!582006 m!4381003))

(assert (=> b!3827337 d!1135822))

(declare-fun d!1135824 () Bool)

(declare-fun lt!1329327 () Int)

(assert (=> d!1135824 (= lt!1329327 (size!30470 (list!15055 treated!13)))))

(assert (=> d!1135824 (= lt!1329327 (size!30478 (c!667180 treated!13)))))

(assert (=> d!1135824 (= (size!30472 treated!13) lt!1329327)))

(declare-fun bs!582007 () Bool)

(assert (= bs!582007 d!1135824))

(assert (=> bs!582007 m!4379225))

(assert (=> bs!582007 m!4379225))

(assert (=> bs!582007 m!4380447))

(declare-fun m!4381005 () Bool)

(assert (=> bs!582007 m!4381005))

(assert (=> b!3827337 d!1135824))

(declare-fun d!1135826 () Bool)

(declare-fun c!667469 () Bool)

(assert (=> d!1135826 (= c!667469 ((_ is Node!12422) (left!31275 (c!667180 treated!13))))))

(declare-fun e!2364429 () Bool)

(assert (=> d!1135826 (= (inv!54485 (left!31275 (c!667180 treated!13))) e!2364429)))

(declare-fun b!3828473 () Bool)

(assert (=> b!3828473 (= e!2364429 (inv!54497 (left!31275 (c!667180 treated!13))))))

(declare-fun b!3828474 () Bool)

(declare-fun e!2364430 () Bool)

(assert (=> b!3828474 (= e!2364429 e!2364430)))

(declare-fun res!1549960 () Bool)

(assert (=> b!3828474 (= res!1549960 (not ((_ is Leaf!19232) (left!31275 (c!667180 treated!13)))))))

(assert (=> b!3828474 (=> res!1549960 e!2364430)))

(declare-fun b!3828475 () Bool)

(assert (=> b!3828475 (= e!2364430 (inv!54498 (left!31275 (c!667180 treated!13))))))

(assert (= (and d!1135826 c!667469) b!3828473))

(assert (= (and d!1135826 (not c!667469)) b!3828474))

(assert (= (and b!3828474 (not res!1549960)) b!3828475))

(declare-fun m!4381007 () Bool)

(assert (=> b!3828473 m!4381007))

(declare-fun m!4381009 () Bool)

(assert (=> b!3828475 m!4381009))

(assert (=> b!3827391 d!1135826))

(declare-fun d!1135828 () Bool)

(declare-fun c!667470 () Bool)

(assert (=> d!1135828 (= c!667470 ((_ is Node!12422) (right!31605 (c!667180 treated!13))))))

(declare-fun e!2364431 () Bool)

(assert (=> d!1135828 (= (inv!54485 (right!31605 (c!667180 treated!13))) e!2364431)))

(declare-fun b!3828476 () Bool)

(assert (=> b!3828476 (= e!2364431 (inv!54497 (right!31605 (c!667180 treated!13))))))

(declare-fun b!3828477 () Bool)

(declare-fun e!2364432 () Bool)

(assert (=> b!3828477 (= e!2364431 e!2364432)))

(declare-fun res!1549961 () Bool)

(assert (=> b!3828477 (= res!1549961 (not ((_ is Leaf!19232) (right!31605 (c!667180 treated!13)))))))

(assert (=> b!3828477 (=> res!1549961 e!2364432)))

(declare-fun b!3828478 () Bool)

(assert (=> b!3828478 (= e!2364432 (inv!54498 (right!31605 (c!667180 treated!13))))))

(assert (= (and d!1135828 c!667470) b!3828476))

(assert (= (and d!1135828 (not c!667470)) b!3828477))

(assert (= (and b!3828477 (not res!1549961)) b!3828478))

(declare-fun m!4381011 () Bool)

(assert (=> b!3828476 m!4381011))

(declare-fun m!4381013 () Bool)

(assert (=> b!3828478 m!4381013))

(assert (=> b!3827391 d!1135828))

(declare-fun b!3828479 () Bool)

(declare-fun e!2364433 () List!40547)

(assert (=> b!3828479 (= e!2364433 Nil!40423)))

(declare-fun b!3828480 () Bool)

(declare-fun e!2364434 () List!40547)

(assert (=> b!3828480 (= e!2364433 e!2364434)))

(declare-fun c!667472 () Bool)

(assert (=> b!3828480 (= c!667472 ((_ is Leaf!19232) (c!667180 totalInput!335)))))

(declare-fun b!3828481 () Bool)

(assert (=> b!3828481 (= e!2364434 (list!15063 (xs!15716 (c!667180 totalInput!335))))))

(declare-fun b!3828482 () Bool)

(assert (=> b!3828482 (= e!2364434 (++!10187 (list!15059 (left!31275 (c!667180 totalInput!335))) (list!15059 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun d!1135830 () Bool)

(declare-fun c!667471 () Bool)

(assert (=> d!1135830 (= c!667471 ((_ is Empty!12422) (c!667180 totalInput!335)))))

(assert (=> d!1135830 (= (list!15059 (c!667180 totalInput!335)) e!2364433)))

(assert (= (and d!1135830 c!667471) b!3828479))

(assert (= (and d!1135830 (not c!667471)) b!3828480))

(assert (= (and b!3828480 c!667472) b!3828481))

(assert (= (and b!3828480 (not c!667472)) b!3828482))

(assert (=> b!3828481 m!4379979))

(declare-fun m!4381015 () Bool)

(assert (=> b!3828482 m!4381015))

(declare-fun m!4381017 () Bool)

(assert (=> b!3828482 m!4381017))

(assert (=> b!3828482 m!4381015))

(assert (=> b!3828482 m!4381017))

(declare-fun m!4381019 () Bool)

(assert (=> b!3828482 m!4381019))

(assert (=> d!1135434 d!1135830))

(assert (=> b!3827315 d!1135748))

(assert (=> b!3827315 d!1135750))

(assert (=> b!3827315 d!1135502))

(assert (=> b!3827315 d!1135752))

(assert (=> b!3827315 d!1135754))

(declare-fun d!1135832 () Bool)

(declare-fun lt!1329328 () Int)

(assert (=> d!1135832 (>= lt!1329328 0)))

(declare-fun e!2364435 () Int)

(assert (=> d!1135832 (= lt!1329328 e!2364435)))

(declare-fun c!667473 () Bool)

(assert (=> d!1135832 (= c!667473 ((_ is Nil!40423) lt!1328963))))

(assert (=> d!1135832 (= (size!30470 lt!1328963) lt!1329328)))

(declare-fun b!3828483 () Bool)

(assert (=> b!3828483 (= e!2364435 0)))

(declare-fun b!3828484 () Bool)

(assert (=> b!3828484 (= e!2364435 (+ 1 (size!30470 (t!308874 lt!1328963))))))

(assert (= (and d!1135832 c!667473) b!3828483))

(assert (= (and d!1135832 (not c!667473)) b!3828484))

(declare-fun m!4381021 () Bool)

(assert (=> b!3828484 m!4381021))

(assert (=> b!3827353 d!1135832))

(declare-fun d!1135834 () Bool)

(declare-fun lt!1329329 () Int)

(assert (=> d!1135834 (>= lt!1329329 0)))

(declare-fun e!2364436 () Int)

(assert (=> d!1135834 (= lt!1329329 e!2364436)))

(declare-fun c!667474 () Bool)

(assert (=> d!1135834 (= c!667474 ((_ is Nil!40423) lt!1328858))))

(assert (=> d!1135834 (= (size!30470 lt!1328858) lt!1329329)))

(declare-fun b!3828485 () Bool)

(assert (=> b!3828485 (= e!2364436 0)))

(declare-fun b!3828486 () Bool)

(assert (=> b!3828486 (= e!2364436 (+ 1 (size!30470 (t!308874 lt!1328858))))))

(assert (= (and d!1135834 c!667474) b!3828485))

(assert (= (and d!1135834 (not c!667474)) b!3828486))

(assert (=> b!3828486 m!4380843))

(assert (=> b!3827353 d!1135834))

(assert (=> b!3827353 d!1135760))

(declare-fun d!1135836 () Bool)

(declare-fun c!667475 () Bool)

(assert (=> d!1135836 (= c!667475 ((_ is Node!12423) (left!31276 (c!667181 acc!335))))))

(declare-fun e!2364437 () Bool)

(assert (=> d!1135836 (= (inv!54484 (left!31276 (c!667181 acc!335))) e!2364437)))

(declare-fun b!3828487 () Bool)

(assert (=> b!3828487 (= e!2364437 (inv!54495 (left!31276 (c!667181 acc!335))))))

(declare-fun b!3828488 () Bool)

(declare-fun e!2364438 () Bool)

(assert (=> b!3828488 (= e!2364437 e!2364438)))

(declare-fun res!1549962 () Bool)

(assert (=> b!3828488 (= res!1549962 (not ((_ is Leaf!19233) (left!31276 (c!667181 acc!335)))))))

(assert (=> b!3828488 (=> res!1549962 e!2364438)))

(declare-fun b!3828489 () Bool)

(assert (=> b!3828489 (= e!2364438 (inv!54496 (left!31276 (c!667181 acc!335))))))

(assert (= (and d!1135836 c!667475) b!3828487))

(assert (= (and d!1135836 (not c!667475)) b!3828488))

(assert (= (and b!3828488 (not res!1549962)) b!3828489))

(declare-fun m!4381023 () Bool)

(assert (=> b!3828487 m!4381023))

(declare-fun m!4381025 () Bool)

(assert (=> b!3828489 m!4381025))

(assert (=> b!3827380 d!1135836))

(declare-fun d!1135838 () Bool)

(declare-fun c!667476 () Bool)

(assert (=> d!1135838 (= c!667476 ((_ is Node!12423) (right!31606 (c!667181 acc!335))))))

(declare-fun e!2364439 () Bool)

(assert (=> d!1135838 (= (inv!54484 (right!31606 (c!667181 acc!335))) e!2364439)))

(declare-fun b!3828490 () Bool)

(assert (=> b!3828490 (= e!2364439 (inv!54495 (right!31606 (c!667181 acc!335))))))

(declare-fun b!3828491 () Bool)

(declare-fun e!2364440 () Bool)

(assert (=> b!3828491 (= e!2364439 e!2364440)))

(declare-fun res!1549963 () Bool)

(assert (=> b!3828491 (= res!1549963 (not ((_ is Leaf!19233) (right!31606 (c!667181 acc!335)))))))

(assert (=> b!3828491 (=> res!1549963 e!2364440)))

(declare-fun b!3828492 () Bool)

(assert (=> b!3828492 (= e!2364440 (inv!54496 (right!31606 (c!667181 acc!335))))))

(assert (= (and d!1135838 c!667476) b!3828490))

(assert (= (and d!1135838 (not c!667476)) b!3828491))

(assert (= (and b!3828491 (not res!1549963)) b!3828492))

(declare-fun m!4381027 () Bool)

(assert (=> b!3828490 m!4381027))

(declare-fun m!4381029 () Bool)

(assert (=> b!3828492 m!4381029))

(assert (=> b!3827380 d!1135838))

(declare-fun b!3828505 () Bool)

(declare-fun res!1549978 () Bool)

(declare-fun e!2364446 () Bool)

(assert (=> b!3828505 (=> (not res!1549978) (not e!2364446))))

(assert (=> b!3828505 (= res!1549978 (isBalanced!3601 (left!31276 (c!667181 acc!335))))))

(declare-fun b!3828506 () Bool)

(declare-fun res!1549981 () Bool)

(assert (=> b!3828506 (=> (not res!1549981) (not e!2364446))))

(assert (=> b!3828506 (= res!1549981 (<= (- (height!1816 (left!31276 (c!667181 acc!335))) (height!1816 (right!31606 (c!667181 acc!335)))) 1))))

(declare-fun b!3828507 () Bool)

(declare-fun res!1549977 () Bool)

(assert (=> b!3828507 (=> (not res!1549977) (not e!2364446))))

(assert (=> b!3828507 (= res!1549977 (isBalanced!3601 (right!31606 (c!667181 acc!335))))))

(declare-fun b!3828508 () Bool)

(declare-fun e!2364445 () Bool)

(assert (=> b!3828508 (= e!2364445 e!2364446)))

(declare-fun res!1549980 () Bool)

(assert (=> b!3828508 (=> (not res!1549980) (not e!2364446))))

(assert (=> b!3828508 (= res!1549980 (<= (- 1) (- (height!1816 (left!31276 (c!667181 acc!335))) (height!1816 (right!31606 (c!667181 acc!335))))))))

(declare-fun d!1135840 () Bool)

(declare-fun res!1549976 () Bool)

(assert (=> d!1135840 (=> res!1549976 e!2364445)))

(assert (=> d!1135840 (= res!1549976 (not ((_ is Node!12423) (c!667181 acc!335))))))

(assert (=> d!1135840 (= (isBalanced!3601 (c!667181 acc!335)) e!2364445)))

(declare-fun b!3828509 () Bool)

(declare-fun res!1549979 () Bool)

(assert (=> b!3828509 (=> (not res!1549979) (not e!2364446))))

(assert (=> b!3828509 (= res!1549979 (not (isEmpty!23863 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3828510 () Bool)

(assert (=> b!3828510 (= e!2364446 (not (isEmpty!23863 (right!31606 (c!667181 acc!335)))))))

(assert (= (and d!1135840 (not res!1549976)) b!3828508))

(assert (= (and b!3828508 res!1549980) b!3828506))

(assert (= (and b!3828506 res!1549981) b!3828505))

(assert (= (and b!3828505 res!1549978) b!3828507))

(assert (= (and b!3828507 res!1549977) b!3828509))

(assert (= (and b!3828509 res!1549979) b!3828510))

(declare-fun m!4381031 () Bool)

(assert (=> b!3828507 m!4381031))

(declare-fun m!4381033 () Bool)

(assert (=> b!3828505 m!4381033))

(declare-fun m!4381035 () Bool)

(assert (=> b!3828510 m!4381035))

(declare-fun m!4381037 () Bool)

(assert (=> b!3828509 m!4381037))

(assert (=> b!3828506 m!4380001))

(assert (=> b!3828506 m!4380003))

(assert (=> b!3828508 m!4380001))

(assert (=> b!3828508 m!4380003))

(assert (=> d!1135416 d!1135840))

(declare-fun d!1135842 () Bool)

(declare-fun res!1549982 () Bool)

(declare-fun e!2364447 () Bool)

(assert (=> d!1135842 (=> (not res!1549982) (not e!2364447))))

(assert (=> d!1135842 (= res!1549982 (= (csize!25074 (c!667180 treated!13)) (+ (size!30478 (left!31275 (c!667180 treated!13))) (size!30478 (right!31605 (c!667180 treated!13))))))))

(assert (=> d!1135842 (= (inv!54497 (c!667180 treated!13)) e!2364447)))

(declare-fun b!3828511 () Bool)

(declare-fun res!1549983 () Bool)

(assert (=> b!3828511 (=> (not res!1549983) (not e!2364447))))

(assert (=> b!3828511 (= res!1549983 (and (not (= (left!31275 (c!667180 treated!13)) Empty!12422)) (not (= (right!31605 (c!667180 treated!13)) Empty!12422))))))

(declare-fun b!3828512 () Bool)

(declare-fun res!1549984 () Bool)

(assert (=> b!3828512 (=> (not res!1549984) (not e!2364447))))

(assert (=> b!3828512 (= res!1549984 (= (cheight!12633 (c!667180 treated!13)) (+ (max!0 (height!1818 (left!31275 (c!667180 treated!13))) (height!1818 (right!31605 (c!667180 treated!13)))) 1)))))

(declare-fun b!3828513 () Bool)

(assert (=> b!3828513 (= e!2364447 (<= 0 (cheight!12633 (c!667180 treated!13))))))

(assert (= (and d!1135842 res!1549982) b!3828511))

(assert (= (and b!3828511 res!1549983) b!3828512))

(assert (= (and b!3828512 res!1549984) b!3828513))

(declare-fun m!4381039 () Bool)

(assert (=> d!1135842 m!4381039))

(declare-fun m!4381041 () Bool)

(assert (=> d!1135842 m!4381041))

(assert (=> b!3828512 m!4380431))

(assert (=> b!3828512 m!4380433))

(assert (=> b!3828512 m!4380431))

(assert (=> b!3828512 m!4380433))

(declare-fun m!4381043 () Bool)

(assert (=> b!3828512 m!4381043))

(assert (=> b!3827340 d!1135842))

(declare-fun d!1135844 () Bool)

(declare-fun e!2364448 () Bool)

(assert (=> d!1135844 e!2364448))

(declare-fun res!1549985 () Bool)

(assert (=> d!1135844 (=> (not res!1549985) (not e!2364448))))

(assert (=> d!1135844 (= res!1549985 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))))))

(declare-fun lt!1329330 () BalanceConc!24440)

(assert (=> d!1135844 (= lt!1329330 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))))))

(assert (=> d!1135844 (= (prepend!1380 (_1!22945 lt!1328949) (_1!22946 (v!38923 lt!1328951))) lt!1329330)))

(declare-fun b!3828514 () Bool)

(assert (=> b!3828514 (= e!2364448 (= (list!15056 lt!1329330) (Cons!40424 (_1!22946 (v!38923 lt!1328951)) (list!15056 (_1!22945 lt!1328949)))))))

(assert (= (and d!1135844 res!1549985) b!3828514))

(declare-fun m!4381045 () Bool)

(assert (=> d!1135844 m!4381045))

(assert (=> d!1135844 m!4381045))

(declare-fun m!4381047 () Bool)

(assert (=> d!1135844 m!4381047))

(declare-fun m!4381049 () Bool)

(assert (=> b!3828514 m!4381049))

(declare-fun m!4381051 () Bool)

(assert (=> b!3828514 m!4381051))

(assert (=> b!3827300 d!1135844))

(declare-fun b!3828515 () Bool)

(declare-fun e!2364449 () Bool)

(declare-fun lt!1329332 () tuple2!39622)

(assert (=> b!3828515 (= e!2364449 (= (list!15055 (_2!22945 lt!1329332)) (list!15055 (_2!22946 (v!38923 lt!1328951)))))))

(declare-fun d!1135846 () Bool)

(declare-fun e!2364452 () Bool)

(assert (=> d!1135846 e!2364452))

(declare-fun res!1549988 () Bool)

(assert (=> d!1135846 (=> (not res!1549988) (not e!2364452))))

(assert (=> d!1135846 (= res!1549988 e!2364449)))

(declare-fun c!667478 () Bool)

(assert (=> d!1135846 (= c!667478 (> (size!30471 (_1!22945 lt!1329332)) 0))))

(declare-fun e!2364451 () tuple2!39622)

(assert (=> d!1135846 (= lt!1329332 e!2364451)))

(declare-fun c!667477 () Bool)

(declare-fun lt!1329333 () Option!8648)

(assert (=> d!1135846 (= c!667477 ((_ is Some!8647) lt!1329333))))

(assert (=> d!1135846 (= lt!1329333 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328951))))))

(assert (=> d!1135846 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328951))) lt!1329332)))

(declare-fun b!3828516 () Bool)

(declare-fun e!2364450 () Bool)

(assert (=> b!3828516 (= e!2364450 (not (isEmpty!23852 (_1!22945 lt!1329332))))))

(declare-fun b!3828517 () Bool)

(declare-fun lt!1329331 () tuple2!39622)

(assert (=> b!3828517 (= e!2364451 (tuple2!39623 (prepend!1380 (_1!22945 lt!1329331) (_1!22946 (v!38923 lt!1329333))) (_2!22945 lt!1329331)))))

(assert (=> b!3828517 (= lt!1329331 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329333))))))

(declare-fun b!3828518 () Bool)

(assert (=> b!3828518 (= e!2364451 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1328951))))))

(declare-fun b!3828519 () Bool)

(assert (=> b!3828519 (= e!2364449 e!2364450)))

(declare-fun res!1549986 () Bool)

(assert (=> b!3828519 (= res!1549986 (< (size!30472 (_2!22945 lt!1329332)) (size!30472 (_2!22946 (v!38923 lt!1328951)))))))

(assert (=> b!3828519 (=> (not res!1549986) (not e!2364450))))

(declare-fun b!3828520 () Bool)

(assert (=> b!3828520 (= e!2364452 (= (list!15055 (_2!22945 lt!1329332)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))))

(declare-fun b!3828521 () Bool)

(declare-fun res!1549987 () Bool)

(assert (=> b!3828521 (=> (not res!1549987) (not e!2364452))))

(assert (=> b!3828521 (= res!1549987 (= (list!15056 (_1!22945 lt!1329332)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))))

(assert (= (and d!1135846 c!667477) b!3828517))

(assert (= (and d!1135846 (not c!667477)) b!3828518))

(assert (= (and d!1135846 c!667478) b!3828519))

(assert (= (and d!1135846 (not c!667478)) b!3828515))

(assert (= (and b!3828519 res!1549986) b!3828516))

(assert (= (and d!1135846 res!1549988) b!3828521))

(assert (= (and b!3828521 res!1549987) b!3828520))

(declare-fun m!4381053 () Bool)

(assert (=> d!1135846 m!4381053))

(declare-fun m!4381055 () Bool)

(assert (=> d!1135846 m!4381055))

(declare-fun m!4381057 () Bool)

(assert (=> b!3828515 m!4381057))

(declare-fun m!4381059 () Bool)

(assert (=> b!3828515 m!4381059))

(declare-fun m!4381061 () Bool)

(assert (=> b!3828517 m!4381061))

(declare-fun m!4381063 () Bool)

(assert (=> b!3828517 m!4381063))

(declare-fun m!4381065 () Bool)

(assert (=> b!3828519 m!4381065))

(declare-fun m!4381067 () Bool)

(assert (=> b!3828519 m!4381067))

(declare-fun m!4381069 () Bool)

(assert (=> b!3828521 m!4381069))

(assert (=> b!3828521 m!4381059))

(assert (=> b!3828521 m!4381059))

(declare-fun m!4381071 () Bool)

(assert (=> b!3828521 m!4381071))

(assert (=> b!3828520 m!4381057))

(assert (=> b!3828520 m!4381059))

(assert (=> b!3828520 m!4381059))

(assert (=> b!3828520 m!4381071))

(declare-fun m!4381073 () Bool)

(assert (=> b!3828516 m!4381073))

(assert (=> b!3827300 d!1135846))

(declare-fun b!3828523 () Bool)

(declare-fun e!2364453 () List!40548)

(declare-fun e!2364454 () List!40548)

(assert (=> b!3828523 (= e!2364453 e!2364454)))

(declare-fun c!667480 () Bool)

(assert (=> b!3828523 (= c!667480 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328855))))))

(declare-fun b!3828525 () Bool)

(assert (=> b!3828525 (= e!2364454 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855))))))))

(declare-fun d!1135848 () Bool)

(declare-fun c!667479 () Bool)

(assert (=> d!1135848 (= c!667479 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328855))))))

(assert (=> d!1135848 (= (list!15060 (c!667181 (_1!22945 lt!1328855))) e!2364453)))

(declare-fun b!3828524 () Bool)

(assert (=> b!3828524 (= e!2364454 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328855)))))))

(declare-fun b!3828522 () Bool)

(assert (=> b!3828522 (= e!2364453 Nil!40424)))

(assert (= (and d!1135848 c!667479) b!3828522))

(assert (= (and d!1135848 (not c!667479)) b!3828523))

(assert (= (and b!3828523 c!667480) b!3828524))

(assert (= (and b!3828523 (not c!667480)) b!3828525))

(declare-fun m!4381075 () Bool)

(assert (=> b!3828525 m!4381075))

(declare-fun m!4381077 () Bool)

(assert (=> b!3828525 m!4381077))

(assert (=> b!3828525 m!4381075))

(assert (=> b!3828525 m!4381077))

(declare-fun m!4381079 () Bool)

(assert (=> b!3828525 m!4381079))

(declare-fun m!4381081 () Bool)

(assert (=> b!3828524 m!4381081))

(assert (=> d!1135408 d!1135848))

(assert (=> b!3827070 d!1135430))

(declare-fun b!3828526 () Bool)

(declare-fun e!2364455 () List!40547)

(assert (=> b!3828526 (= e!2364455 Nil!40423)))

(declare-fun b!3828527 () Bool)

(declare-fun e!2364456 () List!40547)

(assert (=> b!3828527 (= e!2364455 e!2364456)))

(declare-fun c!667482 () Bool)

(assert (=> b!3828527 (= c!667482 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328861))))))

(declare-fun b!3828528 () Bool)

(assert (=> b!3828528 (= e!2364456 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328861)))))))

(declare-fun b!3828529 () Bool)

(assert (=> b!3828529 (= e!2364456 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861))))))))

(declare-fun d!1135850 () Bool)

(declare-fun c!667481 () Bool)

(assert (=> d!1135850 (= c!667481 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328861))))))

(assert (=> d!1135850 (= (list!15059 (c!667180 (_2!22945 lt!1328861))) e!2364455)))

(assert (= (and d!1135850 c!667481) b!3828526))

(assert (= (and d!1135850 (not c!667481)) b!3828527))

(assert (= (and b!3828527 c!667482) b!3828528))

(assert (= (and b!3828527 (not c!667482)) b!3828529))

(declare-fun m!4381083 () Bool)

(assert (=> b!3828528 m!4381083))

(declare-fun m!4381085 () Bool)

(assert (=> b!3828529 m!4381085))

(declare-fun m!4381087 () Bool)

(assert (=> b!3828529 m!4381087))

(assert (=> b!3828529 m!4381085))

(assert (=> b!3828529 m!4381087))

(declare-fun m!4381089 () Bool)

(assert (=> b!3828529 m!4381089))

(assert (=> d!1135394 d!1135850))

(declare-fun d!1135852 () Bool)

(assert (=> d!1135852 (= (inv!54478 (tag!7084 (h!45845 (t!308876 rules!1265)))) (= (mod (str.len (value!197990 (tag!7084 (h!45845 (t!308876 rules!1265))))) 2) 0))))

(assert (=> b!3827403 d!1135852))

(declare-fun d!1135854 () Bool)

(declare-fun res!1549989 () Bool)

(declare-fun e!2364457 () Bool)

(assert (=> d!1135854 (=> (not res!1549989) (not e!2364457))))

(assert (=> d!1135854 (= res!1549989 (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))))))

(assert (=> d!1135854 (= (inv!54486 (transformation!6224 (h!45845 (t!308876 rules!1265)))) e!2364457)))

(declare-fun b!3828530 () Bool)

(assert (=> b!3828530 (= e!2364457 (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))))))

(assert (= (and d!1135854 res!1549989) b!3828530))

(declare-fun m!4381091 () Bool)

(assert (=> d!1135854 m!4381091))

(declare-fun m!4381093 () Bool)

(assert (=> b!3828530 m!4381093))

(assert (=> b!3827403 d!1135854))

(declare-fun b!3828531 () Bool)

(declare-fun res!1549992 () Bool)

(declare-fun e!2364459 () Bool)

(assert (=> b!3828531 (=> (not res!1549992) (not e!2364459))))

(assert (=> b!3828531 (= res!1549992 (isBalanced!3601 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3828532 () Bool)

(declare-fun res!1549995 () Bool)

(assert (=> b!3828532 (=> (not res!1549995) (not e!2364459))))

(assert (=> b!3828532 (= res!1549995 (<= (- (height!1816 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) (height!1816 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))) 1))))

(declare-fun b!3828533 () Bool)

(declare-fun res!1549991 () Bool)

(assert (=> b!3828533 (=> (not res!1549991) (not e!2364459))))

(assert (=> b!3828533 (= res!1549991 (isBalanced!3601 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3828534 () Bool)

(declare-fun e!2364458 () Bool)

(assert (=> b!3828534 (= e!2364458 e!2364459)))

(declare-fun res!1549994 () Bool)

(assert (=> b!3828534 (=> (not res!1549994) (not e!2364459))))

(assert (=> b!3828534 (= res!1549994 (<= (- 1) (- (height!1816 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) (height!1816 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun d!1135856 () Bool)

(declare-fun res!1549990 () Bool)

(assert (=> d!1135856 (=> res!1549990 e!2364458)))

(assert (=> d!1135856 (= res!1549990 (not ((_ is Node!12423) (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))

(assert (=> d!1135856 (= (isBalanced!3601 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))) e!2364458)))

(declare-fun b!3828535 () Bool)

(declare-fun res!1549993 () Bool)

(assert (=> b!3828535 (=> (not res!1549993) (not e!2364459))))

(assert (=> b!3828535 (= res!1549993 (not (isEmpty!23863 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3828536 () Bool)

(assert (=> b!3828536 (= e!2364459 (not (isEmpty!23863 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (= (and d!1135856 (not res!1549990)) b!3828534))

(assert (= (and b!3828534 res!1549994) b!3828532))

(assert (= (and b!3828532 res!1549995) b!3828531))

(assert (= (and b!3828531 res!1549992) b!3828533))

(assert (= (and b!3828533 res!1549991) b!3828535))

(assert (= (and b!3828535 res!1549993) b!3828536))

(declare-fun m!4381095 () Bool)

(assert (=> b!3828533 m!4381095))

(declare-fun m!4381097 () Bool)

(assert (=> b!3828531 m!4381097))

(declare-fun m!4381099 () Bool)

(assert (=> b!3828536 m!4381099))

(declare-fun m!4381101 () Bool)

(assert (=> b!3828535 m!4381101))

(declare-fun m!4381103 () Bool)

(assert (=> b!3828532 m!4381103))

(declare-fun m!4381105 () Bool)

(assert (=> b!3828532 m!4381105))

(assert (=> b!3828534 m!4381103))

(assert (=> b!3828534 m!4381105))

(assert (=> b!3827313 d!1135856))

(assert (=> b!3827313 d!1135502))

(declare-fun d!1135858 () Bool)

(declare-fun lt!1329334 () Int)

(assert (=> d!1135858 (= lt!1329334 (size!30476 (list!15056 (_1!22945 lt!1328959))))))

(assert (=> d!1135858 (= lt!1329334 (size!30477 (c!667181 (_1!22945 lt!1328959))))))

(assert (=> d!1135858 (= (size!30471 (_1!22945 lt!1328959)) lt!1329334)))

(declare-fun bs!582008 () Bool)

(assert (= bs!582008 d!1135858))

(assert (=> bs!582008 m!4379613))

(assert (=> bs!582008 m!4379613))

(declare-fun m!4381107 () Bool)

(assert (=> bs!582008 m!4381107))

(declare-fun m!4381109 () Bool)

(assert (=> bs!582008 m!4381109))

(assert (=> d!1135428 d!1135858))

(declare-fun b!3828537 () Bool)

(declare-fun lt!1329338 () Option!8648)

(declare-fun e!2364462 () Bool)

(assert (=> b!3828537 (= e!2364462 (= (list!15055 (_2!22946 (get!13412 lt!1329338))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13))))))))

(declare-fun b!3828538 () Bool)

(declare-fun e!2364460 () Bool)

(declare-fun e!2364463 () Bool)

(assert (=> b!3828538 (= e!2364460 e!2364463)))

(declare-fun res!1549996 () Bool)

(assert (=> b!3828538 (=> res!1549996 e!2364463)))

(assert (=> b!3828538 (= res!1549996 (not (isDefined!6810 lt!1329338)))))

(declare-fun b!3828539 () Bool)

(declare-fun res!1549998 () Bool)

(assert (=> b!3828539 (=> (not res!1549998) (not e!2364460))))

(declare-fun e!2364465 () Bool)

(assert (=> b!3828539 (= res!1549998 e!2364465)))

(declare-fun res!1549997 () Bool)

(assert (=> b!3828539 (=> res!1549997 e!2364465)))

(assert (=> b!3828539 (= res!1549997 (not (isDefined!6810 lt!1329338)))))

(declare-fun b!3828540 () Bool)

(declare-fun e!2364461 () Option!8648)

(declare-fun call!281300 () Option!8648)

(assert (=> b!3828540 (= e!2364461 call!281300)))

(declare-fun d!1135860 () Bool)

(assert (=> d!1135860 e!2364460))

(declare-fun res!1550001 () Bool)

(assert (=> d!1135860 (=> (not res!1550001) (not e!2364460))))

(assert (=> d!1135860 (= res!1550001 (= (isDefined!6810 lt!1329338) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13)))))))

(assert (=> d!1135860 (= lt!1329338 e!2364461)))

(declare-fun c!667483 () Bool)

(assert (=> d!1135860 (= c!667483 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329337 () Unit!58192)

(declare-fun lt!1329339 () Unit!58192)

(assert (=> d!1135860 (= lt!1329337 lt!1329339)))

(declare-fun lt!1329336 () List!40547)

(declare-fun lt!1329340 () List!40547)

(assert (=> d!1135860 (isPrefix!3333 lt!1329336 lt!1329340)))

(assert (=> d!1135860 (= lt!1329339 (lemmaIsPrefixRefl!2118 lt!1329336 lt!1329340))))

(assert (=> d!1135860 (= lt!1329340 (list!15055 treated!13))))

(assert (=> d!1135860 (= lt!1329336 (list!15055 treated!13))))

(assert (=> d!1135860 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1135860 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 treated!13) lt!1329338)))

(declare-fun bm!281295 () Bool)

(assert (=> bm!281295 (= call!281300 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) treated!13))))

(declare-fun b!3828541 () Bool)

(assert (=> b!3828541 (= e!2364463 e!2364462)))

(declare-fun res!1549999 () Bool)

(assert (=> b!3828541 (=> (not res!1549999) (not e!2364462))))

(assert (=> b!3828541 (= res!1549999 (= (_1!22946 (get!13412 lt!1329338)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13))))))))

(declare-fun b!3828542 () Bool)

(declare-fun lt!1329341 () Option!8648)

(declare-fun lt!1329335 () Option!8648)

(assert (=> b!3828542 (= e!2364461 (ite (and ((_ is None!8647) lt!1329341) ((_ is None!8647) lt!1329335)) None!8647 (ite ((_ is None!8647) lt!1329335) lt!1329341 (ite ((_ is None!8647) lt!1329341) lt!1329335 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1329341))) (size!30466 (_1!22946 (v!38923 lt!1329335)))) lt!1329341 lt!1329335)))))))

(assert (=> b!3828542 (= lt!1329341 call!281300)))

(assert (=> b!3828542 (= lt!1329335 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) treated!13))))

(declare-fun b!3828543 () Bool)

(declare-fun e!2364464 () Bool)

(assert (=> b!3828543 (= e!2364464 (= (list!15055 (_2!22946 (get!13412 lt!1329338))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13))))))))

(declare-fun b!3828544 () Bool)

(assert (=> b!3828544 (= e!2364465 e!2364464)))

(declare-fun res!1550000 () Bool)

(assert (=> b!3828544 (=> (not res!1550000) (not e!2364464))))

(assert (=> b!3828544 (= res!1550000 (= (_1!22946 (get!13412 lt!1329338)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13))))))))

(assert (= (and d!1135860 c!667483) b!3828540))

(assert (= (and d!1135860 (not c!667483)) b!3828542))

(assert (= (or b!3828540 b!3828542) bm!281295))

(assert (= (and d!1135860 res!1550001) b!3828539))

(assert (= (and b!3828539 (not res!1549997)) b!3828544))

(assert (= (and b!3828544 res!1550000) b!3828543))

(assert (= (and b!3828539 res!1549998) b!3828538))

(assert (= (and b!3828538 (not res!1549996)) b!3828541))

(assert (= (and b!3828541 res!1549999) b!3828537))

(declare-fun m!4381111 () Bool)

(assert (=> b!3828539 m!4381111))

(declare-fun m!4381113 () Bool)

(assert (=> d!1135860 m!4381113))

(assert (=> d!1135860 m!4379225))

(declare-fun m!4381115 () Bool)

(assert (=> d!1135860 m!4381115))

(assert (=> d!1135860 m!4379483))

(assert (=> d!1135860 m!4379225))

(declare-fun m!4381117 () Bool)

(assert (=> d!1135860 m!4381117))

(assert (=> d!1135860 m!4381115))

(declare-fun m!4381119 () Bool)

(assert (=> d!1135860 m!4381119))

(assert (=> d!1135860 m!4381111))

(declare-fun m!4381121 () Bool)

(assert (=> b!3828541 m!4381121))

(assert (=> b!3828541 m!4379225))

(assert (=> b!3828541 m!4379225))

(assert (=> b!3828541 m!4380455))

(assert (=> b!3828541 m!4380455))

(declare-fun m!4381123 () Bool)

(assert (=> b!3828541 m!4381123))

(assert (=> b!3828543 m!4381115))

(declare-fun m!4381125 () Bool)

(assert (=> b!3828543 m!4381125))

(assert (=> b!3828543 m!4381121))

(assert (=> b!3828543 m!4379225))

(assert (=> b!3828543 m!4381115))

(assert (=> b!3828543 m!4379225))

(declare-fun m!4381127 () Bool)

(assert (=> b!3828543 m!4381127))

(declare-fun m!4381129 () Bool)

(assert (=> bm!281295 m!4381129))

(assert (=> b!3828538 m!4381111))

(assert (=> b!3828544 m!4381121))

(assert (=> b!3828544 m!4379225))

(assert (=> b!3828544 m!4379225))

(assert (=> b!3828544 m!4381115))

(assert (=> b!3828544 m!4381115))

(assert (=> b!3828544 m!4381125))

(declare-fun m!4381131 () Bool)

(assert (=> b!3828542 m!4381131))

(assert (=> b!3828537 m!4380455))

(assert (=> b!3828537 m!4381123))

(assert (=> b!3828537 m!4379225))

(assert (=> b!3828537 m!4380455))

(assert (=> b!3828537 m!4381121))

(assert (=> b!3828537 m!4379225))

(assert (=> b!3828537 m!4381127))

(assert (=> d!1135428 d!1135860))

(declare-fun d!1135862 () Bool)

(declare-fun c!667484 () Bool)

(assert (=> d!1135862 (= c!667484 ((_ is Node!12422) (left!31275 (c!667180 input!678))))))

(declare-fun e!2364466 () Bool)

(assert (=> d!1135862 (= (inv!54485 (left!31275 (c!667180 input!678))) e!2364466)))

(declare-fun b!3828545 () Bool)

(assert (=> b!3828545 (= e!2364466 (inv!54497 (left!31275 (c!667180 input!678))))))

(declare-fun b!3828546 () Bool)

(declare-fun e!2364467 () Bool)

(assert (=> b!3828546 (= e!2364466 e!2364467)))

(declare-fun res!1550002 () Bool)

(assert (=> b!3828546 (= res!1550002 (not ((_ is Leaf!19232) (left!31275 (c!667180 input!678)))))))

(assert (=> b!3828546 (=> res!1550002 e!2364467)))

(declare-fun b!3828547 () Bool)

(assert (=> b!3828547 (= e!2364467 (inv!54498 (left!31275 (c!667180 input!678))))))

(assert (= (and d!1135862 c!667484) b!3828545))

(assert (= (and d!1135862 (not c!667484)) b!3828546))

(assert (= (and b!3828546 (not res!1550002)) b!3828547))

(declare-fun m!4381133 () Bool)

(assert (=> b!3828545 m!4381133))

(declare-fun m!4381135 () Bool)

(assert (=> b!3828547 m!4381135))

(assert (=> b!3827405 d!1135862))

(declare-fun d!1135864 () Bool)

(declare-fun c!667485 () Bool)

(assert (=> d!1135864 (= c!667485 ((_ is Node!12422) (right!31605 (c!667180 input!678))))))

(declare-fun e!2364468 () Bool)

(assert (=> d!1135864 (= (inv!54485 (right!31605 (c!667180 input!678))) e!2364468)))

(declare-fun b!3828548 () Bool)

(assert (=> b!3828548 (= e!2364468 (inv!54497 (right!31605 (c!667180 input!678))))))

(declare-fun b!3828549 () Bool)

(declare-fun e!2364469 () Bool)

(assert (=> b!3828549 (= e!2364468 e!2364469)))

(declare-fun res!1550003 () Bool)

(assert (=> b!3828549 (= res!1550003 (not ((_ is Leaf!19232) (right!31605 (c!667180 input!678)))))))

(assert (=> b!3828549 (=> res!1550003 e!2364469)))

(declare-fun b!3828550 () Bool)

(assert (=> b!3828550 (= e!2364469 (inv!54498 (right!31605 (c!667180 input!678))))))

(assert (= (and d!1135864 c!667485) b!3828548))

(assert (= (and d!1135864 (not c!667485)) b!3828549))

(assert (= (and b!3828549 (not res!1550003)) b!3828550))

(declare-fun m!4381137 () Bool)

(assert (=> b!3828548 m!4381137))

(declare-fun m!4381139 () Bool)

(assert (=> b!3828550 m!4381139))

(assert (=> b!3827405 d!1135864))

(assert (=> b!3827298 d!1135528))

(assert (=> b!3827298 d!1135434))

(declare-fun b!3828555 () Bool)

(declare-fun e!2364472 () Bool)

(declare-fun tp!1158641 () Bool)

(assert (=> b!3828555 (= e!2364472 (and tp_is_empty!19209 tp!1158641))))

(assert (=> b!3827393 (= tp!1158542 e!2364472)))

(assert (= (and b!3827393 ((_ is Cons!40423) (innerList!12482 (xs!15716 (c!667180 treated!13))))) b!3828555))

(declare-fun b!3828558 () Bool)

(declare-fun b_free!101617 () Bool)

(declare-fun b_next!102321 () Bool)

(assert (=> b!3828558 (= b_free!101617 (not b_next!102321))))

(declare-fun tp!1158644 () Bool)

(declare-fun b_and!284511 () Bool)

(assert (=> b!3828558 (= tp!1158644 b_and!284511)))

(declare-fun b_free!101619 () Bool)

(declare-fun b_next!102323 () Bool)

(assert (=> b!3828558 (= b_free!101619 (not b_next!102323))))

(declare-fun tp!1158643 () Bool)

(declare-fun b_and!284513 () Bool)

(assert (=> b!3828558 (= tp!1158643 b_and!284513)))

(declare-fun e!2364476 () Bool)

(assert (=> b!3828558 (= e!2364476 (and tp!1158644 tp!1158643))))

(declare-fun b!3828557 () Bool)

(declare-fun e!2364473 () Bool)

(declare-fun tp!1158642 () Bool)

(assert (=> b!3828557 (= e!2364473 (and tp!1158642 (inv!54478 (tag!7084 (h!45845 (t!308876 (t!308876 rules!1265))))) (inv!54486 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) e!2364476))))

(declare-fun b!3828556 () Bool)

(declare-fun e!2364475 () Bool)

(declare-fun tp!1158645 () Bool)

(assert (=> b!3828556 (= e!2364475 (and e!2364473 tp!1158645))))

(assert (=> b!3827402 (= tp!1158554 e!2364475)))

(assert (= b!3828557 b!3828558))

(assert (= b!3828556 b!3828557))

(assert (= (and b!3827402 ((_ is Cons!40425) (t!308876 (t!308876 rules!1265)))) b!3828556))

(declare-fun m!4381141 () Bool)

(assert (=> b!3828557 m!4381141))

(declare-fun m!4381143 () Bool)

(assert (=> b!3828557 m!4381143))

(declare-fun e!2364478 () Bool)

(declare-fun tp!1158646 () Bool)

(declare-fun tp!1158647 () Bool)

(declare-fun b!3828559 () Bool)

(assert (=> b!3828559 (= e!2364478 (and (inv!54485 (left!31275 (left!31275 (c!667180 totalInput!335)))) tp!1158647 (inv!54485 (right!31605 (left!31275 (c!667180 totalInput!335)))) tp!1158646))))

(declare-fun b!3828561 () Bool)

(declare-fun e!2364477 () Bool)

(declare-fun tp!1158648 () Bool)

(assert (=> b!3828561 (= e!2364477 tp!1158648)))

(declare-fun b!3828560 () Bool)

(assert (=> b!3828560 (= e!2364478 (and (inv!54500 (xs!15716 (left!31275 (c!667180 totalInput!335)))) e!2364477))))

(assert (=> b!3827408 (= tp!1158559 (and (inv!54485 (left!31275 (c!667180 totalInput!335))) e!2364478))))

(assert (= (and b!3827408 ((_ is Node!12422) (left!31275 (c!667180 totalInput!335)))) b!3828559))

(assert (= b!3828560 b!3828561))

(assert (= (and b!3827408 ((_ is Leaf!19232) (left!31275 (c!667180 totalInput!335)))) b!3828560))

(declare-fun m!4381145 () Bool)

(assert (=> b!3828559 m!4381145))

(declare-fun m!4381147 () Bool)

(assert (=> b!3828559 m!4381147))

(declare-fun m!4381149 () Bool)

(assert (=> b!3828560 m!4381149))

(assert (=> b!3827408 m!4379667))

(declare-fun b!3828562 () Bool)

(declare-fun e!2364480 () Bool)

(declare-fun tp!1158650 () Bool)

(declare-fun tp!1158649 () Bool)

(assert (=> b!3828562 (= e!2364480 (and (inv!54485 (left!31275 (right!31605 (c!667180 totalInput!335)))) tp!1158650 (inv!54485 (right!31605 (right!31605 (c!667180 totalInput!335)))) tp!1158649))))

(declare-fun b!3828564 () Bool)

(declare-fun e!2364479 () Bool)

(declare-fun tp!1158651 () Bool)

(assert (=> b!3828564 (= e!2364479 tp!1158651)))

(declare-fun b!3828563 () Bool)

(assert (=> b!3828563 (= e!2364480 (and (inv!54500 (xs!15716 (right!31605 (c!667180 totalInput!335)))) e!2364479))))

(assert (=> b!3827408 (= tp!1158558 (and (inv!54485 (right!31605 (c!667180 totalInput!335))) e!2364480))))

(assert (= (and b!3827408 ((_ is Node!12422) (right!31605 (c!667180 totalInput!335)))) b!3828562))

(assert (= b!3828563 b!3828564))

(assert (= (and b!3827408 ((_ is Leaf!19232) (right!31605 (c!667180 totalInput!335)))) b!3828563))

(declare-fun m!4381151 () Bool)

(assert (=> b!3828562 m!4381151))

(declare-fun m!4381153 () Bool)

(assert (=> b!3828562 m!4381153))

(declare-fun m!4381155 () Bool)

(assert (=> b!3828563 m!4381155))

(assert (=> b!3827408 m!4379669))

(declare-fun e!2364481 () Bool)

(assert (=> b!3827369 (= tp!1158521 e!2364481)))

(declare-fun b!3828566 () Bool)

(declare-fun tp!1158653 () Bool)

(declare-fun tp!1158654 () Bool)

(assert (=> b!3828566 (= e!2364481 (and tp!1158653 tp!1158654))))

(declare-fun b!3828565 () Bool)

(assert (=> b!3828565 (= e!2364481 tp_is_empty!19209)))

(declare-fun b!3828568 () Bool)

(declare-fun tp!1158652 () Bool)

(declare-fun tp!1158656 () Bool)

(assert (=> b!3828568 (= e!2364481 (and tp!1158652 tp!1158656))))

(declare-fun b!3828567 () Bool)

(declare-fun tp!1158655 () Bool)

(assert (=> b!3828567 (= e!2364481 tp!1158655)))

(assert (= (and b!3827369 ((_ is ElementMatch!11129) (regOne!22770 (regex!6224 (h!45845 rules!1265))))) b!3828565))

(assert (= (and b!3827369 ((_ is Concat!17584) (regOne!22770 (regex!6224 (h!45845 rules!1265))))) b!3828566))

(assert (= (and b!3827369 ((_ is Star!11129) (regOne!22770 (regex!6224 (h!45845 rules!1265))))) b!3828567))

(assert (= (and b!3827369 ((_ is Union!11129) (regOne!22770 (regex!6224 (h!45845 rules!1265))))) b!3828568))

(declare-fun e!2364482 () Bool)

(assert (=> b!3827369 (= tp!1158522 e!2364482)))

(declare-fun b!3828570 () Bool)

(declare-fun tp!1158658 () Bool)

(declare-fun tp!1158659 () Bool)

(assert (=> b!3828570 (= e!2364482 (and tp!1158658 tp!1158659))))

(declare-fun b!3828569 () Bool)

(assert (=> b!3828569 (= e!2364482 tp_is_empty!19209)))

(declare-fun b!3828572 () Bool)

(declare-fun tp!1158657 () Bool)

(declare-fun tp!1158661 () Bool)

(assert (=> b!3828572 (= e!2364482 (and tp!1158657 tp!1158661))))

(declare-fun b!3828571 () Bool)

(declare-fun tp!1158660 () Bool)

(assert (=> b!3828571 (= e!2364482 tp!1158660)))

(assert (= (and b!3827369 ((_ is ElementMatch!11129) (regTwo!22770 (regex!6224 (h!45845 rules!1265))))) b!3828569))

(assert (= (and b!3827369 ((_ is Concat!17584) (regTwo!22770 (regex!6224 (h!45845 rules!1265))))) b!3828570))

(assert (= (and b!3827369 ((_ is Star!11129) (regTwo!22770 (regex!6224 (h!45845 rules!1265))))) b!3828571))

(assert (= (and b!3827369 ((_ is Union!11129) (regTwo!22770 (regex!6224 (h!45845 rules!1265))))) b!3828572))

(declare-fun b!3828586 () Bool)

(declare-fun b_free!101621 () Bool)

(declare-fun b_next!102325 () Bool)

(assert (=> b!3828586 (= b_free!101621 (not b_next!102325))))

(declare-fun tp!1158675 () Bool)

(declare-fun b_and!284515 () Bool)

(assert (=> b!3828586 (= tp!1158675 b_and!284515)))

(declare-fun b_free!101623 () Bool)

(declare-fun b_next!102327 () Bool)

(assert (=> b!3828586 (= b_free!101623 (not b_next!102327))))

(declare-fun tp!1158676 () Bool)

(declare-fun b_and!284517 () Bool)

(assert (=> b!3828586 (= tp!1158676 b_and!284517)))

(declare-fun tp!1158674 () Bool)

(declare-fun e!2364497 () Bool)

(declare-fun e!2364499 () Bool)

(declare-fun b!3828583 () Bool)

(declare-fun inv!54502 (Token!11586) Bool)

(assert (=> b!3828583 (= e!2364497 (and (inv!54502 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))) e!2364499 tp!1158674))))

(declare-fun tp!1158672 () Bool)

(declare-fun b!3828585 () Bool)

(declare-fun e!2364498 () Bool)

(declare-fun e!2364496 () Bool)

(assert (=> b!3828585 (= e!2364496 (and tp!1158672 (inv!54478 (tag!7084 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (inv!54486 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) e!2364498))))

(assert (=> b!3828586 (= e!2364498 (and tp!1158675 tp!1158676))))

(declare-fun b!3828584 () Bool)

(declare-fun tp!1158673 () Bool)

(declare-fun inv!21 (TokenValue!6454) Bool)

(assert (=> b!3828584 (= e!2364499 (and (inv!21 (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))) e!2364496 tp!1158673))))

(assert (=> b!3827382 (= tp!1158532 e!2364497)))

(assert (= b!3828585 b!3828586))

(assert (= b!3828584 b!3828585))

(assert (= b!3828583 b!3828584))

(assert (= (and b!3827382 ((_ is Cons!40424) (innerList!12483 (xs!15717 (c!667181 acc!335))))) b!3828583))

(declare-fun m!4381157 () Bool)

(assert (=> b!3828583 m!4381157))

(declare-fun m!4381159 () Bool)

(assert (=> b!3828585 m!4381159))

(declare-fun m!4381161 () Bool)

(assert (=> b!3828585 m!4381161))

(declare-fun m!4381163 () Bool)

(assert (=> b!3828584 m!4381163))

(declare-fun e!2364501 () Bool)

(assert (=> b!3827370 (= tp!1158523 e!2364501)))

(declare-fun b!3828588 () Bool)

(declare-fun tp!1158678 () Bool)

(declare-fun tp!1158679 () Bool)

(assert (=> b!3828588 (= e!2364501 (and tp!1158678 tp!1158679))))

(declare-fun b!3828587 () Bool)

(assert (=> b!3828587 (= e!2364501 tp_is_empty!19209)))

(declare-fun b!3828590 () Bool)

(declare-fun tp!1158677 () Bool)

(declare-fun tp!1158681 () Bool)

(assert (=> b!3828590 (= e!2364501 (and tp!1158677 tp!1158681))))

(declare-fun b!3828589 () Bool)

(declare-fun tp!1158680 () Bool)

(assert (=> b!3828589 (= e!2364501 tp!1158680)))

(assert (= (and b!3827370 ((_ is ElementMatch!11129) (reg!11458 (regex!6224 (h!45845 rules!1265))))) b!3828587))

(assert (= (and b!3827370 ((_ is Concat!17584) (reg!11458 (regex!6224 (h!45845 rules!1265))))) b!3828588))

(assert (= (and b!3827370 ((_ is Star!11129) (reg!11458 (regex!6224 (h!45845 rules!1265))))) b!3828589))

(assert (= (and b!3827370 ((_ is Union!11129) (reg!11458 (regex!6224 (h!45845 rules!1265))))) b!3828590))

(declare-fun b!3828591 () Bool)

(declare-fun e!2364502 () Bool)

(declare-fun tp!1158682 () Bool)

(assert (=> b!3828591 (= e!2364502 (and tp_is_empty!19209 tp!1158682))))

(assert (=> b!3827410 (= tp!1158560 e!2364502)))

(assert (= (and b!3827410 ((_ is Cons!40423) (innerList!12482 (xs!15716 (c!667180 totalInput!335))))) b!3828591))

(declare-fun e!2364503 () Bool)

(assert (=> b!3827371 (= tp!1158520 e!2364503)))

(declare-fun b!3828593 () Bool)

(declare-fun tp!1158684 () Bool)

(declare-fun tp!1158685 () Bool)

(assert (=> b!3828593 (= e!2364503 (and tp!1158684 tp!1158685))))

(declare-fun b!3828592 () Bool)

(assert (=> b!3828592 (= e!2364503 tp_is_empty!19209)))

(declare-fun b!3828595 () Bool)

(declare-fun tp!1158683 () Bool)

(declare-fun tp!1158687 () Bool)

(assert (=> b!3828595 (= e!2364503 (and tp!1158683 tp!1158687))))

(declare-fun b!3828594 () Bool)

(declare-fun tp!1158686 () Bool)

(assert (=> b!3828594 (= e!2364503 tp!1158686)))

(assert (= (and b!3827371 ((_ is ElementMatch!11129) (regOne!22771 (regex!6224 (h!45845 rules!1265))))) b!3828592))

(assert (= (and b!3827371 ((_ is Concat!17584) (regOne!22771 (regex!6224 (h!45845 rules!1265))))) b!3828593))

(assert (= (and b!3827371 ((_ is Star!11129) (regOne!22771 (regex!6224 (h!45845 rules!1265))))) b!3828594))

(assert (= (and b!3827371 ((_ is Union!11129) (regOne!22771 (regex!6224 (h!45845 rules!1265))))) b!3828595))

(declare-fun e!2364504 () Bool)

(assert (=> b!3827371 (= tp!1158524 e!2364504)))

(declare-fun b!3828597 () Bool)

(declare-fun tp!1158689 () Bool)

(declare-fun tp!1158690 () Bool)

(assert (=> b!3828597 (= e!2364504 (and tp!1158689 tp!1158690))))

(declare-fun b!3828596 () Bool)

(assert (=> b!3828596 (= e!2364504 tp_is_empty!19209)))

(declare-fun b!3828599 () Bool)

(declare-fun tp!1158688 () Bool)

(declare-fun tp!1158692 () Bool)

(assert (=> b!3828599 (= e!2364504 (and tp!1158688 tp!1158692))))

(declare-fun b!3828598 () Bool)

(declare-fun tp!1158691 () Bool)

(assert (=> b!3828598 (= e!2364504 tp!1158691)))

(assert (= (and b!3827371 ((_ is ElementMatch!11129) (regTwo!22771 (regex!6224 (h!45845 rules!1265))))) b!3828596))

(assert (= (and b!3827371 ((_ is Concat!17584) (regTwo!22771 (regex!6224 (h!45845 rules!1265))))) b!3828597))

(assert (= (and b!3827371 ((_ is Star!11129) (regTwo!22771 (regex!6224 (h!45845 rules!1265))))) b!3828598))

(assert (= (and b!3827371 ((_ is Union!11129) (regTwo!22771 (regex!6224 (h!45845 rules!1265))))) b!3828599))

(declare-fun b!3828600 () Bool)

(declare-fun tp!1158693 () Bool)

(declare-fun e!2364506 () Bool)

(declare-fun tp!1158694 () Bool)

(assert (=> b!3828600 (= e!2364506 (and (inv!54485 (left!31275 (left!31275 (c!667180 treated!13)))) tp!1158694 (inv!54485 (right!31605 (left!31275 (c!667180 treated!13)))) tp!1158693))))

(declare-fun b!3828602 () Bool)

(declare-fun e!2364505 () Bool)

(declare-fun tp!1158695 () Bool)

(assert (=> b!3828602 (= e!2364505 tp!1158695)))

(declare-fun b!3828601 () Bool)

(assert (=> b!3828601 (= e!2364506 (and (inv!54500 (xs!15716 (left!31275 (c!667180 treated!13)))) e!2364505))))

(assert (=> b!3827391 (= tp!1158541 (and (inv!54485 (left!31275 (c!667180 treated!13))) e!2364506))))

(assert (= (and b!3827391 ((_ is Node!12422) (left!31275 (c!667180 treated!13)))) b!3828600))

(assert (= b!3828601 b!3828602))

(assert (= (and b!3827391 ((_ is Leaf!19232) (left!31275 (c!667180 treated!13)))) b!3828601))

(declare-fun m!4381165 () Bool)

(assert (=> b!3828600 m!4381165))

(declare-fun m!4381167 () Bool)

(assert (=> b!3828600 m!4381167))

(declare-fun m!4381169 () Bool)

(assert (=> b!3828601 m!4381169))

(assert (=> b!3827391 m!4379651))

(declare-fun tp!1158697 () Bool)

(declare-fun tp!1158696 () Bool)

(declare-fun e!2364508 () Bool)

(declare-fun b!3828603 () Bool)

(assert (=> b!3828603 (= e!2364508 (and (inv!54485 (left!31275 (right!31605 (c!667180 treated!13)))) tp!1158697 (inv!54485 (right!31605 (right!31605 (c!667180 treated!13)))) tp!1158696))))

(declare-fun b!3828605 () Bool)

(declare-fun e!2364507 () Bool)

(declare-fun tp!1158698 () Bool)

(assert (=> b!3828605 (= e!2364507 tp!1158698)))

(declare-fun b!3828604 () Bool)

(assert (=> b!3828604 (= e!2364508 (and (inv!54500 (xs!15716 (right!31605 (c!667180 treated!13)))) e!2364507))))

(assert (=> b!3827391 (= tp!1158540 (and (inv!54485 (right!31605 (c!667180 treated!13))) e!2364508))))

(assert (= (and b!3827391 ((_ is Node!12422) (right!31605 (c!667180 treated!13)))) b!3828603))

(assert (= b!3828604 b!3828605))

(assert (= (and b!3827391 ((_ is Leaf!19232) (right!31605 (c!667180 treated!13)))) b!3828604))

(declare-fun m!4381171 () Bool)

(assert (=> b!3828603 m!4381171))

(declare-fun m!4381173 () Bool)

(assert (=> b!3828603 m!4381173))

(declare-fun m!4381175 () Bool)

(assert (=> b!3828604 m!4381175))

(assert (=> b!3827391 m!4379653))

(declare-fun b!3828606 () Bool)

(declare-fun e!2364510 () Bool)

(declare-fun tp!1158701 () Bool)

(declare-fun tp!1158699 () Bool)

(assert (=> b!3828606 (= e!2364510 (and (inv!54484 (left!31276 (left!31276 (c!667181 acc!335)))) tp!1158701 (inv!54484 (right!31606 (left!31276 (c!667181 acc!335)))) tp!1158699))))

(declare-fun b!3828608 () Bool)

(declare-fun e!2364509 () Bool)

(declare-fun tp!1158700 () Bool)

(assert (=> b!3828608 (= e!2364509 tp!1158700)))

(declare-fun b!3828607 () Bool)

(assert (=> b!3828607 (= e!2364510 (and (inv!54499 (xs!15717 (left!31276 (c!667181 acc!335)))) e!2364509))))

(assert (=> b!3827380 (= tp!1158533 (and (inv!54484 (left!31276 (c!667181 acc!335))) e!2364510))))

(assert (= (and b!3827380 ((_ is Node!12423) (left!31276 (c!667181 acc!335)))) b!3828606))

(assert (= b!3828607 b!3828608))

(assert (= (and b!3827380 ((_ is Leaf!19233) (left!31276 (c!667181 acc!335)))) b!3828607))

(declare-fun m!4381177 () Bool)

(assert (=> b!3828606 m!4381177))

(declare-fun m!4381179 () Bool)

(assert (=> b!3828606 m!4381179))

(declare-fun m!4381181 () Bool)

(assert (=> b!3828607 m!4381181))

(assert (=> b!3827380 m!4379645))

(declare-fun tp!1158702 () Bool)

(declare-fun tp!1158704 () Bool)

(declare-fun e!2364512 () Bool)

(declare-fun b!3828609 () Bool)

(assert (=> b!3828609 (= e!2364512 (and (inv!54484 (left!31276 (right!31606 (c!667181 acc!335)))) tp!1158704 (inv!54484 (right!31606 (right!31606 (c!667181 acc!335)))) tp!1158702))))

(declare-fun b!3828611 () Bool)

(declare-fun e!2364511 () Bool)

(declare-fun tp!1158703 () Bool)

(assert (=> b!3828611 (= e!2364511 tp!1158703)))

(declare-fun b!3828610 () Bool)

(assert (=> b!3828610 (= e!2364512 (and (inv!54499 (xs!15717 (right!31606 (c!667181 acc!335)))) e!2364511))))

(assert (=> b!3827380 (= tp!1158531 (and (inv!54484 (right!31606 (c!667181 acc!335))) e!2364512))))

(assert (= (and b!3827380 ((_ is Node!12423) (right!31606 (c!667181 acc!335)))) b!3828609))

(assert (= b!3828610 b!3828611))

(assert (= (and b!3827380 ((_ is Leaf!19233) (right!31606 (c!667181 acc!335)))) b!3828610))

(declare-fun m!4381183 () Bool)

(assert (=> b!3828609 m!4381183))

(declare-fun m!4381185 () Bool)

(assert (=> b!3828609 m!4381185))

(declare-fun m!4381187 () Bool)

(assert (=> b!3828610 m!4381187))

(assert (=> b!3827380 m!4379647))

(declare-fun b!3828612 () Bool)

(declare-fun e!2364513 () Bool)

(declare-fun tp!1158705 () Bool)

(assert (=> b!3828612 (= e!2364513 (and tp_is_empty!19209 tp!1158705))))

(assert (=> b!3827407 (= tp!1158557 e!2364513)))

(assert (= (and b!3827407 ((_ is Cons!40423) (innerList!12482 (xs!15716 (c!667180 input!678))))) b!3828612))

(declare-fun e!2364514 () Bool)

(assert (=> b!3827403 (= tp!1158551 e!2364514)))

(declare-fun b!3828614 () Bool)

(declare-fun tp!1158707 () Bool)

(declare-fun tp!1158708 () Bool)

(assert (=> b!3828614 (= e!2364514 (and tp!1158707 tp!1158708))))

(declare-fun b!3828613 () Bool)

(assert (=> b!3828613 (= e!2364514 tp_is_empty!19209)))

(declare-fun b!3828616 () Bool)

(declare-fun tp!1158706 () Bool)

(declare-fun tp!1158710 () Bool)

(assert (=> b!3828616 (= e!2364514 (and tp!1158706 tp!1158710))))

(declare-fun b!3828615 () Bool)

(declare-fun tp!1158709 () Bool)

(assert (=> b!3828615 (= e!2364514 tp!1158709)))

(assert (= (and b!3827403 ((_ is ElementMatch!11129) (regex!6224 (h!45845 (t!308876 rules!1265))))) b!3828613))

(assert (= (and b!3827403 ((_ is Concat!17584) (regex!6224 (h!45845 (t!308876 rules!1265))))) b!3828614))

(assert (= (and b!3827403 ((_ is Star!11129) (regex!6224 (h!45845 (t!308876 rules!1265))))) b!3828615))

(assert (= (and b!3827403 ((_ is Union!11129) (regex!6224 (h!45845 (t!308876 rules!1265))))) b!3828616))

(declare-fun tp!1158712 () Bool)

(declare-fun tp!1158711 () Bool)

(declare-fun e!2364516 () Bool)

(declare-fun b!3828617 () Bool)

(assert (=> b!3828617 (= e!2364516 (and (inv!54485 (left!31275 (left!31275 (c!667180 input!678)))) tp!1158712 (inv!54485 (right!31605 (left!31275 (c!667180 input!678)))) tp!1158711))))

(declare-fun b!3828619 () Bool)

(declare-fun e!2364515 () Bool)

(declare-fun tp!1158713 () Bool)

(assert (=> b!3828619 (= e!2364515 tp!1158713)))

(declare-fun b!3828618 () Bool)

(assert (=> b!3828618 (= e!2364516 (and (inv!54500 (xs!15716 (left!31275 (c!667180 input!678)))) e!2364515))))

(assert (=> b!3827405 (= tp!1158556 (and (inv!54485 (left!31275 (c!667180 input!678))) e!2364516))))

(assert (= (and b!3827405 ((_ is Node!12422) (left!31275 (c!667180 input!678)))) b!3828617))

(assert (= b!3828618 b!3828619))

(assert (= (and b!3827405 ((_ is Leaf!19232) (left!31275 (c!667180 input!678)))) b!3828618))

(declare-fun m!4381189 () Bool)

(assert (=> b!3828617 m!4381189))

(declare-fun m!4381191 () Bool)

(assert (=> b!3828617 m!4381191))

(declare-fun m!4381193 () Bool)

(assert (=> b!3828618 m!4381193))

(assert (=> b!3827405 m!4379661))

(declare-fun tp!1158715 () Bool)

(declare-fun b!3828620 () Bool)

(declare-fun e!2364518 () Bool)

(declare-fun tp!1158714 () Bool)

(assert (=> b!3828620 (= e!2364518 (and (inv!54485 (left!31275 (right!31605 (c!667180 input!678)))) tp!1158715 (inv!54485 (right!31605 (right!31605 (c!667180 input!678)))) tp!1158714))))

(declare-fun b!3828622 () Bool)

(declare-fun e!2364517 () Bool)

(declare-fun tp!1158716 () Bool)

(assert (=> b!3828622 (= e!2364517 tp!1158716)))

(declare-fun b!3828621 () Bool)

(assert (=> b!3828621 (= e!2364518 (and (inv!54500 (xs!15716 (right!31605 (c!667180 input!678)))) e!2364517))))

(assert (=> b!3827405 (= tp!1158555 (and (inv!54485 (right!31605 (c!667180 input!678))) e!2364518))))

(assert (= (and b!3827405 ((_ is Node!12422) (right!31605 (c!667180 input!678)))) b!3828620))

(assert (= b!3828621 b!3828622))

(assert (= (and b!3827405 ((_ is Leaf!19232) (right!31605 (c!667180 input!678)))) b!3828621))

(declare-fun m!4381195 () Bool)

(assert (=> b!3828620 m!4381195))

(declare-fun m!4381197 () Bool)

(assert (=> b!3828620 m!4381197))

(declare-fun m!4381199 () Bool)

(assert (=> b!3828621 m!4381199))

(assert (=> b!3827405 m!4379663))

(check-sat (not b!3828556) (not d!1135646) (not b!3828421) (not b!3828536) (not d!1135540) (not d!1135784) (not b!3828117) (not b_next!102327) (not b!3827408) (not b!3828595) (not b_next!102321) (not d!1135724) (not d!1135702) (not d!1135816) (not b!3828537) (not b!3828112) (not d!1135636) (not b!3828395) (not d!1135756) (not b!3828548) (not d!1135528) (not d!1135522) (not bm!281295) (not b!3828590) (not b!3827391) (not b!3828568) (not b!3828567) (not b!3828620) (not d!1135822) (not d!1135720) (not b!3828073) (not b!3828543) (not b!3828109) (not b!3828404) (not b!3828415) (not b!3828072) (not b!3828346) (not b!3828014) (not b!3828588) (not d!1135810) (not b!3828368) (not b!3828337) (not b!3828435) (not b!3828541) (not b!3828163) (not b!3828457) (not b!3827750) (not b!3828107) (not b!3828519) (not b!3828024) (not b!3828478) (not b!3827753) (not b!3828533) (not b_next!102323) (not bm!281285) (not b!3828181) (not b!3828525) (not b!3827975) b_and!284491 (not b_next!102309) (not b!3828512) (not b!3828564) (not bm!281226) (not b!3828617) (not b!3828601) (not bm!281294) (not b!3828561) (not b!3828455) (not b!3828338) (not d!1135792) (not d!1135706) (not b!3828019) (not b!3828530) (not b!3828134) (not b!3828467) (not b!3828557) (not b!3827606) (not b!3828621) (not b!3828559) (not b!3828618) (not b!3828069) (not b!3827604) (not d!1135842) (not b!3828611) (not d!1135778) (not b!3828209) (not d!1135804) (not b!3828481) (not b!3828602) (not b!3828065) (not b!3828347) (not d!1135728) (not d!1135672) (not b!3828615) (not d!1135634) (not b!3827972) (not d!1135824) (not b!3828020) (not b!3828562) (not b!3828340) (not b!3828544) (not b!3828011) (not b!3828484) (not b!3828597) (not b!3828535) (not b!3828000) (not b!3828022) (not b!3828606) b_and!284499 (not d!1135788) (not b!3827719) (not b!3828542) (not b!3827713) (not d!1135808) (not d!1135684) (not b!3828157) (not b!3828162) (not b!3828451) (not d!1135814) (not b!3828161) (not d!1135650) (not b!3828471) (not b!3828604) (not b!3828408) (not d!1135534) (not d!1135802) (not bm!281215) (not b!3828414) (not b_next!102311) (not b!3828375) (not d!1135770) (not d!1135644) (not b!3828023) (not b!3828364) b_and!284501 b_and!284513 (not b!3827715) (not b!3828589) (not b!3827754) (not b!3828516) (not d!1135632) (not d!1135776) (not b!3828605) (not d!1135538) (not b!3827714) (not b!3828524) (not b!3828591) (not b!3828607) (not d!1135648) (not b!3828076) (not bm!281223) (not b!3828342) (not b!3827718) (not b!3828420) (not b!3828135) (not d!1135846) (not b!3827610) (not b!3828570) (not b!3828419) (not b!3827405) (not b!3828566) (not b!3827732) (not b!3828487) (not b!3828463) (not b_next!102303) (not b!3828403) (not d!1135626) (not d!1135692) (not b!3828539) (not b_next!102325) (not b!3828608) (not d!1135532) (not b!3828113) (not b!3828593) (not b!3828622) (not b!3828064) (not b!3828063) tp_is_empty!19209 (not b!3828600) (not b!3828510) (not d!1135530) (not b!3828018) (not b!3828550) (not b!3827676) (not b!3827994) (not b!3828365) (not b!3828049) (not b!3828118) (not d!1135782) (not b!3828369) (not b!3828490) (not b!3828416) (not b!3828529) (not b!3828571) (not b!3828010) (not b!3828594) (not d!1135820) (not b!3827677) (not b!3828417) (not b!3828409) (not d!1135844) (not b!3828164) (not b!3827691) (not b!3828614) (not d!1135860) (not b!3828357) (not b!3828612) (not b!3828210) (not b!3828465) (not b!3828545) (not b!3828584) (not bm!281212) (not b!3828560) (not b!3828585) (not b!3828534) (not b!3828521) (not bm!281291) (not b!3828012) (not bm!281224) (not b!3828509) (not b!3828475) (not b!3828505) (not b!3828009) (not b!3828619) (not d!1135718) (not d!1135652) (not b!3828114) (not d!1135518) (not b!3828349) b_and!284511 (not bm!281230) (not b!3828466) (not b!3828429) (not b!3828067) (not d!1135854) (not d!1135526) (not b!3828609) (not bm!281288) (not b!3828486) (not b!3827687) (not b!3828492) (not d!1135624) (not b!3828531) (not d!1135502) (not b!3828547) (not b!3828068) (not b!3828017) (not d!1135780) (not b!3828598) (not b!3828115) (not b!3828434) (not b!3828507) (not b!3827733) (not b!3828110) (not d!1135858) (not d!1135630) (not b!3828431) (not d!1135536) (not d!1135762) (not b!3828515) (not b!3828572) (not b!3827738) (not b!3828350) (not b!3828506) (not b!3828016) (not b!3828359) (not b!3827996) (not b!3827717) b_and!284517 (not b!3828616) (not b!3827762) b_and!284493 (not b!3827970) (not b!3828482) (not b!3828473) (not b!3828160) (not b!3828489) (not b!3827380) (not b!3828508) (not b!3828583) (not d!1135660) (not b!3828452) (not b!3828453) b_and!284515 (not b!3828517) (not b!3828532) (not b!3828472) (not b!3827721) (not b!3827603) (not b!3828470) (not d!1135790) (not b!3828159) (not b!3828343) (not b!3828341) (not b!3827974) (not b!3827999) (not d!1135772) (not b!3828476) (not bm!281292) (not b!3828440) (not b!3828514) (not b!3827716) (not b!3828603) (not b!3828441) (not bm!281222) (not b!3828538) (not b!3827973) (not b!3827607) (not d!1135696) (not d!1135774) (not b!3828610) (not b!3828563) (not b!3828555) (not b!3828015) (not b!3828528) (not b!3828520) (not b!3827683) (not bm!281218) (not b!3828401) (not bm!281293) (not b!3828469) (not b_next!102301) (not b!3827609) (not b!3828050) (not b!3828599) (not b!3827689) (not b!3828427) (not d!1135818) (not b!3828066) (not b!3828116) (not d!1135628) (not b!3828336) (not d!1135516))
(check-sat (not b_next!102323) b_and!284491 (not b_next!102309) b_and!284499 (not b_next!102311) b_and!284511 b_and!284515 (not b_next!102301) (not b_next!102321) (not b_next!102327) b_and!284501 b_and!284513 (not b_next!102303) (not b_next!102325) b_and!284517 b_and!284493)
(get-model)

(declare-fun d!1136632 () Bool)

(assert (=> d!1136632 (= (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328863)))) (innerList!12483 (xs!15717 (c!667181 (_1!22945 lt!1328863)))))))

(assert (=> b!3828134 d!1136632))

(declare-fun b!3829827 () Bool)

(declare-fun e!2365174 () List!40548)

(declare-fun e!2365175 () List!40548)

(assert (=> b!3829827 (= e!2365174 e!2365175)))

(declare-fun c!667761 () Bool)

(assert (=> b!3829827 (= c!667761 ((_ is Leaf!19233) (c!667181 lt!1328954)))))

(declare-fun b!3829829 () Bool)

(assert (=> b!3829829 (= e!2365175 (++!10192 (list!15060 (left!31276 (c!667181 lt!1328954))) (list!15060 (right!31606 (c!667181 lt!1328954)))))))

(declare-fun d!1136634 () Bool)

(declare-fun c!667760 () Bool)

(assert (=> d!1136634 (= c!667760 ((_ is Empty!12423) (c!667181 lt!1328954)))))

(assert (=> d!1136634 (= (list!15060 (c!667181 lt!1328954)) e!2365174)))

(declare-fun b!3829828 () Bool)

(assert (=> b!3829828 (= e!2365175 (list!15064 (xs!15717 (c!667181 lt!1328954))))))

(declare-fun b!3829826 () Bool)

(assert (=> b!3829826 (= e!2365174 Nil!40424)))

(assert (= (and d!1136634 c!667760) b!3829826))

(assert (= (and d!1136634 (not c!667760)) b!3829827))

(assert (= (and b!3829827 c!667761) b!3829828))

(assert (= (and b!3829827 (not c!667761)) b!3829829))

(declare-fun m!4383479 () Bool)

(assert (=> b!3829829 m!4383479))

(declare-fun m!4383481 () Bool)

(assert (=> b!3829829 m!4383481))

(assert (=> b!3829829 m!4383479))

(assert (=> b!3829829 m!4383481))

(declare-fun m!4383483 () Bool)

(assert (=> b!3829829 m!4383483))

(declare-fun m!4383485 () Bool)

(assert (=> b!3829828 m!4383485))

(assert (=> d!1135702 d!1136634))

(declare-fun d!1136636 () Bool)

(declare-fun lt!1329804 () Int)

(assert (=> d!1136636 (>= lt!1329804 0)))

(declare-fun e!2365178 () Int)

(assert (=> d!1136636 (= lt!1329804 e!2365178)))

(declare-fun c!667764 () Bool)

(assert (=> d!1136636 (= c!667764 ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328959))))))

(assert (=> d!1136636 (= (size!30476 (list!15056 (_1!22945 lt!1328959))) lt!1329804)))

(declare-fun b!3829834 () Bool)

(assert (=> b!3829834 (= e!2365178 0)))

(declare-fun b!3829835 () Bool)

(assert (=> b!3829835 (= e!2365178 (+ 1 (size!30476 (t!308875 (list!15056 (_1!22945 lt!1328959))))))))

(assert (= (and d!1136636 c!667764) b!3829834))

(assert (= (and d!1136636 (not c!667764)) b!3829835))

(declare-fun m!4383487 () Bool)

(assert (=> b!3829835 m!4383487))

(assert (=> d!1135858 d!1136636))

(assert (=> d!1135858 d!1135810))

(declare-fun d!1136638 () Bool)

(declare-fun lt!1329807 () Int)

(assert (=> d!1136638 (= lt!1329807 (size!30476 (list!15060 (c!667181 (_1!22945 lt!1328959)))))))

(assert (=> d!1136638 (= lt!1329807 (ite ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328959))) 0 (ite ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328959))) (csize!25077 (c!667181 (_1!22945 lt!1328959))) (csize!25076 (c!667181 (_1!22945 lt!1328959))))))))

(assert (=> d!1136638 (= (size!30477 (c!667181 (_1!22945 lt!1328959))) lt!1329807)))

(declare-fun bs!582137 () Bool)

(assert (= bs!582137 d!1136638))

(assert (=> bs!582137 m!4380969))

(assert (=> bs!582137 m!4380969))

(declare-fun m!4383489 () Bool)

(assert (=> bs!582137 m!4383489))

(assert (=> d!1135858 d!1136638))

(declare-fun d!1136640 () Bool)

(declare-fun res!1550482 () Bool)

(declare-fun e!2365179 () Bool)

(assert (=> d!1136640 (=> (not res!1550482) (not e!2365179))))

(assert (=> d!1136640 (= res!1550482 (<= (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 totalInput!335))))) 512))))

(assert (=> d!1136640 (= (inv!54498 (left!31275 (c!667180 totalInput!335))) e!2365179)))

(declare-fun b!3829836 () Bool)

(declare-fun res!1550483 () Bool)

(assert (=> b!3829836 (=> (not res!1550483) (not e!2365179))))

(assert (=> b!3829836 (= res!1550483 (= (csize!25075 (left!31275 (c!667180 totalInput!335))) (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 totalInput!335)))))))))

(declare-fun b!3829837 () Bool)

(assert (=> b!3829837 (= e!2365179 (and (> (csize!25075 (left!31275 (c!667180 totalInput!335))) 0) (<= (csize!25075 (left!31275 (c!667180 totalInput!335))) 512)))))

(assert (= (and d!1136640 res!1550482) b!3829836))

(assert (= (and b!3829836 res!1550483) b!3829837))

(declare-fun m!4383491 () Bool)

(assert (=> d!1136640 m!4383491))

(assert (=> d!1136640 m!4383491))

(declare-fun m!4383493 () Bool)

(assert (=> d!1136640 m!4383493))

(assert (=> b!3829836 m!4383491))

(assert (=> b!3829836 m!4383491))

(assert (=> b!3829836 m!4383493))

(assert (=> b!3828109 d!1136640))

(declare-fun d!1136642 () Bool)

(assert (=> d!1136642 (= (list!15055 (_2!22946 (get!13412 lt!1329322))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1329322)))))))

(declare-fun bs!582138 () Bool)

(assert (= bs!582138 d!1136642))

(declare-fun m!4383495 () Bool)

(assert (=> bs!582138 m!4383495))

(assert (=> b!3828471 d!1136642))

(assert (=> b!3828471 d!1135770))

(assert (=> b!3828471 d!1135436))

(declare-fun d!1136644 () Bool)

(assert (=> d!1136644 (= (get!13412 lt!1329322) (v!38923 lt!1329322))))

(assert (=> b!3828471 d!1136644))

(assert (=> b!3828471 d!1135768))

(declare-fun d!1136646 () Bool)

(declare-fun lt!1329808 () Int)

(assert (=> d!1136646 (>= lt!1329808 0)))

(declare-fun e!2365180 () Int)

(assert (=> d!1136646 (= lt!1329808 e!2365180)))

(declare-fun c!667765 () Bool)

(assert (=> d!1136646 (= c!667765 ((_ is Nil!40423) (innerList!12482 (xs!15716 (c!667180 treated!13)))))))

(assert (=> d!1136646 (= (size!30470 (innerList!12482 (xs!15716 (c!667180 treated!13)))) lt!1329808)))

(declare-fun b!3829838 () Bool)

(assert (=> b!3829838 (= e!2365180 0)))

(declare-fun b!3829839 () Bool)

(assert (=> b!3829839 (= e!2365180 (+ 1 (size!30470 (t!308874 (innerList!12482 (xs!15716 (c!667180 treated!13)))))))))

(assert (= (and d!1136646 c!667765) b!3829838))

(assert (= (and d!1136646 (not c!667765)) b!3829839))

(declare-fun m!4383497 () Bool)

(assert (=> b!3829839 m!4383497))

(assert (=> d!1135652 d!1136646))

(declare-fun bm!281396 () Bool)

(declare-fun call!281402 () List!40548)

(assert (=> bm!281396 (= call!281402 (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3829844 () Bool)

(declare-fun e!2365183 () Bool)

(declare-fun call!281403 () List!40548)

(declare-fun call!281401 () List!40548)

(assert (=> b!3829844 (= e!2365183 (= call!281403 call!281401))))

(declare-fun d!1136648 () Bool)

(assert (=> d!1136648 e!2365183))

(declare-fun c!667768 () Bool)

(assert (=> d!1136648 (= c!667768 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1136648 (= (appendAssoc!285 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (right!31606 (c!667181 acc!335))) (list!15060 (c!667181 (_1!22945 lt!1328861)))) true)))

(declare-fun bm!281397 () Bool)

(declare-fun call!281404 () List!40548)

(assert (=> bm!281397 (= call!281401 (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) call!281404))))

(declare-fun bm!281398 () Bool)

(assert (=> bm!281398 (= call!281404 (++!10192 (list!15060 (right!31606 (c!667181 acc!335))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3829845 () Bool)

(assert (=> b!3829845 (= e!2365183 (= call!281403 call!281401))))

(declare-fun lt!1329811 () Bool)

(assert (=> b!3829845 (= lt!1329811 (appendAssoc!285 (t!308875 (list!15060 (left!31276 (c!667181 acc!335)))) (list!15060 (right!31606 (c!667181 acc!335))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun bm!281399 () Bool)

(assert (=> bm!281399 (= call!281403 (++!10192 call!281402 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(assert (= (and d!1136648 c!667768) b!3829844))

(assert (= (and d!1136648 (not c!667768)) b!3829845))

(assert (= (or b!3829844 b!3829845) bm!281396))

(assert (= (or b!3829844 b!3829845) bm!281398))

(assert (= (or b!3829844 b!3829845) bm!281399))

(assert (= (or b!3829844 b!3829845) bm!281397))

(assert (=> b!3829845 m!4379861))

(assert (=> b!3829845 m!4379847))

(declare-fun m!4383499 () Bool)

(assert (=> b!3829845 m!4383499))

(assert (=> bm!281396 m!4379849))

(assert (=> bm!281396 m!4379861))

(assert (=> bm!281396 m!4380385))

(assert (=> bm!281399 m!4379847))

(declare-fun m!4383501 () Bool)

(assert (=> bm!281399 m!4383501))

(assert (=> bm!281397 m!4379849))

(declare-fun m!4383503 () Bool)

(assert (=> bm!281397 m!4383503))

(assert (=> bm!281398 m!4379861))

(assert (=> bm!281398 m!4379847))

(declare-fun m!4383505 () Bool)

(assert (=> bm!281398 m!4383505))

(assert (=> b!3827607 d!1136648))

(declare-fun b!3829847 () Bool)

(declare-fun e!2365184 () List!40548)

(declare-fun e!2365185 () List!40548)

(assert (=> b!3829847 (= e!2365184 e!2365185)))

(declare-fun c!667770 () Bool)

(assert (=> b!3829847 (= c!667770 ((_ is Leaf!19233) (left!31276 (c!667181 acc!335))))))

(declare-fun b!3829849 () Bool)

(assert (=> b!3829849 (= e!2365185 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 acc!335)))) (list!15060 (right!31606 (left!31276 (c!667181 acc!335))))))))

(declare-fun d!1136650 () Bool)

(declare-fun c!667769 () Bool)

(assert (=> d!1136650 (= c!667769 ((_ is Empty!12423) (left!31276 (c!667181 acc!335))))))

(assert (=> d!1136650 (= (list!15060 (left!31276 (c!667181 acc!335))) e!2365184)))

(declare-fun b!3829848 () Bool)

(assert (=> b!3829848 (= e!2365185 (list!15064 (xs!15717 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3829846 () Bool)

(assert (=> b!3829846 (= e!2365184 Nil!40424)))

(assert (= (and d!1136650 c!667769) b!3829846))

(assert (= (and d!1136650 (not c!667769)) b!3829847))

(assert (= (and b!3829847 c!667770) b!3829848))

(assert (= (and b!3829847 (not c!667770)) b!3829849))

(declare-fun m!4383507 () Bool)

(assert (=> b!3829849 m!4383507))

(declare-fun m!4383509 () Bool)

(assert (=> b!3829849 m!4383509))

(assert (=> b!3829849 m!4383507))

(assert (=> b!3829849 m!4383509))

(declare-fun m!4383511 () Bool)

(assert (=> b!3829849 m!4383511))

(declare-fun m!4383513 () Bool)

(assert (=> b!3829848 m!4383513))

(assert (=> b!3827607 d!1136650))

(declare-fun b!3829851 () Bool)

(declare-fun e!2365186 () List!40548)

(declare-fun e!2365187 () List!40548)

(assert (=> b!3829851 (= e!2365186 e!2365187)))

(declare-fun c!667772 () Bool)

(assert (=> b!3829851 (= c!667772 ((_ is Leaf!19233) (right!31606 (c!667181 acc!335))))))

(declare-fun b!3829853 () Bool)

(assert (=> b!3829853 (= e!2365187 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))))))

(declare-fun d!1136652 () Bool)

(declare-fun c!667771 () Bool)

(assert (=> d!1136652 (= c!667771 ((_ is Empty!12423) (right!31606 (c!667181 acc!335))))))

(assert (=> d!1136652 (= (list!15060 (right!31606 (c!667181 acc!335))) e!2365186)))

(declare-fun b!3829852 () Bool)

(assert (=> b!3829852 (= e!2365187 (list!15064 (xs!15717 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3829850 () Bool)

(assert (=> b!3829850 (= e!2365186 Nil!40424)))

(assert (= (and d!1136652 c!667771) b!3829850))

(assert (= (and d!1136652 (not c!667771)) b!3829851))

(assert (= (and b!3829851 c!667772) b!3829852))

(assert (= (and b!3829851 (not c!667772)) b!3829853))

(assert (=> b!3829853 m!4379851))

(assert (=> b!3829853 m!4379857))

(assert (=> b!3829853 m!4379851))

(assert (=> b!3829853 m!4379857))

(declare-fun m!4383515 () Bool)

(assert (=> b!3829853 m!4383515))

(declare-fun m!4383517 () Bool)

(assert (=> b!3829852 m!4383517))

(assert (=> b!3827607 d!1136652))

(declare-fun b!3829855 () Bool)

(declare-fun e!2365188 () List!40548)

(declare-fun e!2365189 () List!40548)

(assert (=> b!3829855 (= e!2365188 e!2365189)))

(declare-fun c!667774 () Bool)

(assert (=> b!3829855 (= c!667774 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328861))))))

(declare-fun b!3829857 () Bool)

(assert (=> b!3829857 (= e!2365189 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun d!1136654 () Bool)

(declare-fun c!667773 () Bool)

(assert (=> d!1136654 (= c!667773 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328861))))))

(assert (=> d!1136654 (= (list!15060 (c!667181 (_1!22945 lt!1328861))) e!2365188)))

(declare-fun b!3829856 () Bool)

(assert (=> b!3829856 (= e!2365189 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3829854 () Bool)

(assert (=> b!3829854 (= e!2365188 Nil!40424)))

(assert (= (and d!1136654 c!667773) b!3829854))

(assert (= (and d!1136654 (not c!667773)) b!3829855))

(assert (= (and b!3829855 c!667774) b!3829856))

(assert (= (and b!3829855 (not c!667774)) b!3829857))

(assert (=> b!3829857 m!4379875))

(assert (=> b!3829857 m!4379865))

(assert (=> b!3829857 m!4379875))

(assert (=> b!3829857 m!4379865))

(declare-fun m!4383519 () Bool)

(assert (=> b!3829857 m!4383519))

(declare-fun m!4383521 () Bool)

(assert (=> b!3829856 m!4383521))

(assert (=> b!3827607 d!1136654))

(declare-fun b!3829858 () Bool)

(declare-fun e!2365190 () List!40547)

(assert (=> b!3829858 (= e!2365190 (list!15059 (right!31605 (c!667180 treated!13))))))

(declare-fun b!3829859 () Bool)

(assert (=> b!3829859 (= e!2365190 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 treated!13)))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 treated!13)))) (list!15059 (right!31605 (c!667180 treated!13))))))))

(declare-fun b!3829860 () Bool)

(declare-fun res!1550485 () Bool)

(declare-fun e!2365191 () Bool)

(assert (=> b!3829860 (=> (not res!1550485) (not e!2365191))))

(declare-fun lt!1329812 () List!40547)

(assert (=> b!3829860 (= res!1550485 (= (size!30470 lt!1329812) (+ (size!30470 (list!15059 (left!31275 (c!667180 treated!13)))) (size!30470 (list!15059 (right!31605 (c!667180 treated!13)))))))))

(declare-fun b!3829861 () Bool)

(assert (=> b!3829861 (= e!2365191 (or (not (= (list!15059 (right!31605 (c!667180 treated!13))) Nil!40423)) (= lt!1329812 (list!15059 (left!31275 (c!667180 treated!13))))))))

(declare-fun d!1136656 () Bool)

(assert (=> d!1136656 e!2365191))

(declare-fun res!1550484 () Bool)

(assert (=> d!1136656 (=> (not res!1550484) (not e!2365191))))

(assert (=> d!1136656 (= res!1550484 (= (content!5990 lt!1329812) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 treated!13)))) (content!5990 (list!15059 (right!31605 (c!667180 treated!13)))))))))

(assert (=> d!1136656 (= lt!1329812 e!2365190)))

(declare-fun c!667775 () Bool)

(assert (=> d!1136656 (= c!667775 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 treated!13)))))))

(assert (=> d!1136656 (= (++!10187 (list!15059 (left!31275 (c!667180 treated!13))) (list!15059 (right!31605 (c!667180 treated!13)))) lt!1329812)))

(assert (= (and d!1136656 c!667775) b!3829858))

(assert (= (and d!1136656 (not c!667775)) b!3829859))

(assert (= (and d!1136656 res!1550484) b!3829860))

(assert (= (and b!3829860 res!1550485) b!3829861))

(assert (=> b!3829859 m!4380899))

(declare-fun m!4383523 () Bool)

(assert (=> b!3829859 m!4383523))

(declare-fun m!4383525 () Bool)

(assert (=> b!3829860 m!4383525))

(assert (=> b!3829860 m!4380897))

(declare-fun m!4383527 () Bool)

(assert (=> b!3829860 m!4383527))

(assert (=> b!3829860 m!4380899))

(declare-fun m!4383529 () Bool)

(assert (=> b!3829860 m!4383529))

(declare-fun m!4383531 () Bool)

(assert (=> d!1136656 m!4383531))

(assert (=> d!1136656 m!4380897))

(declare-fun m!4383533 () Bool)

(assert (=> d!1136656 m!4383533))

(assert (=> d!1136656 m!4380899))

(declare-fun m!4383535 () Bool)

(assert (=> d!1136656 m!4383535))

(assert (=> b!3828409 d!1136656))

(declare-fun b!3829862 () Bool)

(declare-fun e!2365192 () List!40547)

(assert (=> b!3829862 (= e!2365192 Nil!40423)))

(declare-fun b!3829863 () Bool)

(declare-fun e!2365193 () List!40547)

(assert (=> b!3829863 (= e!2365192 e!2365193)))

(declare-fun c!667777 () Bool)

(assert (=> b!3829863 (= c!667777 ((_ is Leaf!19232) (left!31275 (c!667180 treated!13))))))

(declare-fun b!3829864 () Bool)

(assert (=> b!3829864 (= e!2365193 (list!15063 (xs!15716 (left!31275 (c!667180 treated!13)))))))

(declare-fun b!3829865 () Bool)

(assert (=> b!3829865 (= e!2365193 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 treated!13)))) (list!15059 (right!31605 (left!31275 (c!667180 treated!13))))))))

(declare-fun d!1136658 () Bool)

(declare-fun c!667776 () Bool)

(assert (=> d!1136658 (= c!667776 ((_ is Empty!12422) (left!31275 (c!667180 treated!13))))))

(assert (=> d!1136658 (= (list!15059 (left!31275 (c!667180 treated!13))) e!2365192)))

(assert (= (and d!1136658 c!667776) b!3829862))

(assert (= (and d!1136658 (not c!667776)) b!3829863))

(assert (= (and b!3829863 c!667777) b!3829864))

(assert (= (and b!3829863 (not c!667777)) b!3829865))

(declare-fun m!4383537 () Bool)

(assert (=> b!3829864 m!4383537))

(declare-fun m!4383539 () Bool)

(assert (=> b!3829865 m!4383539))

(declare-fun m!4383541 () Bool)

(assert (=> b!3829865 m!4383541))

(assert (=> b!3829865 m!4383539))

(assert (=> b!3829865 m!4383541))

(declare-fun m!4383543 () Bool)

(assert (=> b!3829865 m!4383543))

(assert (=> b!3828409 d!1136658))

(declare-fun b!3829866 () Bool)

(declare-fun e!2365194 () List!40547)

(assert (=> b!3829866 (= e!2365194 Nil!40423)))

(declare-fun b!3829867 () Bool)

(declare-fun e!2365195 () List!40547)

(assert (=> b!3829867 (= e!2365194 e!2365195)))

(declare-fun c!667779 () Bool)

(assert (=> b!3829867 (= c!667779 ((_ is Leaf!19232) (right!31605 (c!667180 treated!13))))))

(declare-fun b!3829868 () Bool)

(assert (=> b!3829868 (= e!2365195 (list!15063 (xs!15716 (right!31605 (c!667180 treated!13)))))))

(declare-fun b!3829869 () Bool)

(assert (=> b!3829869 (= e!2365195 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 treated!13)))) (list!15059 (right!31605 (right!31605 (c!667180 treated!13))))))))

(declare-fun d!1136660 () Bool)

(declare-fun c!667778 () Bool)

(assert (=> d!1136660 (= c!667778 ((_ is Empty!12422) (right!31605 (c!667180 treated!13))))))

(assert (=> d!1136660 (= (list!15059 (right!31605 (c!667180 treated!13))) e!2365194)))

(assert (= (and d!1136660 c!667778) b!3829866))

(assert (= (and d!1136660 (not c!667778)) b!3829867))

(assert (= (and b!3829867 c!667779) b!3829868))

(assert (= (and b!3829867 (not c!667779)) b!3829869))

(declare-fun m!4383545 () Bool)

(assert (=> b!3829868 m!4383545))

(declare-fun m!4383547 () Bool)

(assert (=> b!3829869 m!4383547))

(declare-fun m!4383549 () Bool)

(assert (=> b!3829869 m!4383549))

(assert (=> b!3829869 m!4383547))

(assert (=> b!3829869 m!4383549))

(declare-fun m!4383551 () Bool)

(assert (=> b!3829869 m!4383551))

(assert (=> b!3828409 d!1136660))

(declare-fun d!1136662 () Bool)

(declare-fun lt!1329813 () Int)

(assert (=> d!1136662 (>= lt!1329813 0)))

(declare-fun e!2365196 () Int)

(assert (=> d!1136662 (= lt!1329813 e!2365196)))

(declare-fun c!667780 () Bool)

(assert (=> d!1136662 (= c!667780 ((_ is Nil!40423) (innerList!12482 (xs!15716 (c!667180 totalInput!335)))))))

(assert (=> d!1136662 (= (size!30470 (innerList!12482 (xs!15716 (c!667180 totalInput!335)))) lt!1329813)))

(declare-fun b!3829870 () Bool)

(assert (=> b!3829870 (= e!2365196 0)))

(declare-fun b!3829871 () Bool)

(assert (=> b!3829871 (= e!2365196 (+ 1 (size!30470 (t!308874 (innerList!12482 (xs!15716 (c!667180 totalInput!335)))))))))

(assert (= (and d!1136662 c!667780) b!3829870))

(assert (= (and d!1136662 (not c!667780)) b!3829871))

(declare-fun m!4383553 () Bool)

(assert (=> b!3829871 m!4383553))

(assert (=> d!1135816 d!1136662))

(declare-fun d!1136664 () Bool)

(assert (=> d!1136664 (= (isEmpty!23858 (_1!22950 lt!1329215)) ((_ is Nil!40424) (_1!22950 lt!1329215)))))

(assert (=> b!3828072 d!1136664))

(declare-fun d!1136666 () Bool)

(declare-fun res!1550486 () Bool)

(declare-fun e!2365197 () Bool)

(assert (=> d!1136666 (=> (not res!1550486) (not e!2365197))))

(assert (=> d!1136666 (= res!1550486 (<= (size!30476 (list!15064 (xs!15717 (right!31606 (c!667181 acc!335))))) 512))))

(assert (=> d!1136666 (= (inv!54496 (right!31606 (c!667181 acc!335))) e!2365197)))

(declare-fun b!3829872 () Bool)

(declare-fun res!1550487 () Bool)

(assert (=> b!3829872 (=> (not res!1550487) (not e!2365197))))

(assert (=> b!3829872 (= res!1550487 (= (csize!25077 (right!31606 (c!667181 acc!335))) (size!30476 (list!15064 (xs!15717 (right!31606 (c!667181 acc!335)))))))))

(declare-fun b!3829873 () Bool)

(assert (=> b!3829873 (= e!2365197 (and (> (csize!25077 (right!31606 (c!667181 acc!335))) 0) (<= (csize!25077 (right!31606 (c!667181 acc!335))) 512)))))

(assert (= (and d!1136666 res!1550486) b!3829872))

(assert (= (and b!3829872 res!1550487) b!3829873))

(assert (=> d!1136666 m!4383517))

(assert (=> d!1136666 m!4383517))

(declare-fun m!4383555 () Bool)

(assert (=> d!1136666 m!4383555))

(assert (=> b!3829872 m!4383517))

(assert (=> b!3829872 m!4383517))

(assert (=> b!3829872 m!4383555))

(assert (=> b!3828492 d!1136666))

(declare-fun d!1136668 () Bool)

(declare-fun res!1550488 () Bool)

(declare-fun e!2365198 () Bool)

(assert (=> d!1136668 (=> (not res!1550488) (not e!2365198))))

(assert (=> d!1136668 (= res!1550488 (= (csize!25074 (left!31275 (c!667180 input!678))) (+ (size!30478 (left!31275 (left!31275 (c!667180 input!678)))) (size!30478 (right!31605 (left!31275 (c!667180 input!678)))))))))

(assert (=> d!1136668 (= (inv!54497 (left!31275 (c!667180 input!678))) e!2365198)))

(declare-fun b!3829874 () Bool)

(declare-fun res!1550489 () Bool)

(assert (=> b!3829874 (=> (not res!1550489) (not e!2365198))))

(assert (=> b!3829874 (= res!1550489 (and (not (= (left!31275 (left!31275 (c!667180 input!678))) Empty!12422)) (not (= (right!31605 (left!31275 (c!667180 input!678))) Empty!12422))))))

(declare-fun b!3829875 () Bool)

(declare-fun res!1550490 () Bool)

(assert (=> b!3829875 (=> (not res!1550490) (not e!2365198))))

(assert (=> b!3829875 (= res!1550490 (= (cheight!12633 (left!31275 (c!667180 input!678))) (+ (max!0 (height!1818 (left!31275 (left!31275 (c!667180 input!678)))) (height!1818 (right!31605 (left!31275 (c!667180 input!678))))) 1)))))

(declare-fun b!3829876 () Bool)

(assert (=> b!3829876 (= e!2365198 (<= 0 (cheight!12633 (left!31275 (c!667180 input!678)))))))

(assert (= (and d!1136668 res!1550488) b!3829874))

(assert (= (and b!3829874 res!1550489) b!3829875))

(assert (= (and b!3829875 res!1550490) b!3829876))

(declare-fun m!4383557 () Bool)

(assert (=> d!1136668 m!4383557))

(declare-fun m!4383559 () Bool)

(assert (=> d!1136668 m!4383559))

(declare-fun m!4383561 () Bool)

(assert (=> b!3829875 m!4383561))

(declare-fun m!4383563 () Bool)

(assert (=> b!3829875 m!4383563))

(assert (=> b!3829875 m!4383561))

(assert (=> b!3829875 m!4383563))

(declare-fun m!4383565 () Bool)

(assert (=> b!3829875 m!4383565))

(assert (=> b!3828545 d!1136668))

(declare-fun d!1136670 () Bool)

(declare-fun lt!1329814 () Int)

(assert (=> d!1136670 (>= lt!1329814 0)))

(declare-fun e!2365199 () Int)

(assert (=> d!1136670 (= lt!1329814 e!2365199)))

(declare-fun c!667781 () Bool)

(assert (=> d!1136670 (= c!667781 ((_ is Nil!40423) (list!15055 treated!13)))))

(assert (=> d!1136670 (= (size!30470 (list!15055 treated!13)) lt!1329814)))

(declare-fun b!3829877 () Bool)

(assert (=> b!3829877 (= e!2365199 0)))

(declare-fun b!3829878 () Bool)

(assert (=> b!3829878 (= e!2365199 (+ 1 (size!30470 (t!308874 (list!15055 treated!13)))))))

(assert (= (and d!1136670 c!667781) b!3829877))

(assert (= (and d!1136670 (not c!667781)) b!3829878))

(declare-fun m!4383567 () Bool)

(assert (=> b!3829878 m!4383567))

(assert (=> d!1135824 d!1136670))

(assert (=> d!1135824 d!1135438))

(declare-fun d!1136672 () Bool)

(declare-fun lt!1329817 () Int)

(assert (=> d!1136672 (= lt!1329817 (size!30470 (list!15059 (c!667180 treated!13))))))

(assert (=> d!1136672 (= lt!1329817 (ite ((_ is Empty!12422) (c!667180 treated!13)) 0 (ite ((_ is Leaf!19232) (c!667180 treated!13)) (csize!25075 (c!667180 treated!13)) (csize!25074 (c!667180 treated!13)))))))

(assert (=> d!1136672 (= (size!30478 (c!667180 treated!13)) lt!1329817)))

(declare-fun bs!582139 () Bool)

(assert (= bs!582139 d!1136672))

(assert (=> bs!582139 m!4379639))

(assert (=> bs!582139 m!4379639))

(declare-fun m!4383569 () Bool)

(assert (=> bs!582139 m!4383569))

(assert (=> d!1135824 d!1136672))

(declare-fun d!1136674 () Bool)

(assert (=> d!1136674 (= (height!1818 (left!31275 (c!667180 totalInput!335))) (ite ((_ is Empty!12422) (left!31275 (c!667180 totalInput!335))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 totalInput!335))) 1 (cheight!12633 (left!31275 (c!667180 totalInput!335))))))))

(assert (=> b!3828160 d!1136674))

(declare-fun d!1136676 () Bool)

(assert (=> d!1136676 (= (height!1818 (right!31605 (c!667180 totalInput!335))) (ite ((_ is Empty!12422) (right!31605 (c!667180 totalInput!335))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 totalInput!335))) 1 (cheight!12633 (right!31605 (c!667180 totalInput!335))))))))

(assert (=> b!3828160 d!1136676))

(declare-fun b!3829881 () Bool)

(declare-fun res!1550491 () Bool)

(declare-fun e!2365201 () Bool)

(assert (=> b!3829881 (=> (not res!1550491) (not e!2365201))))

(declare-fun lt!1329818 () List!40548)

(assert (=> b!3829881 (= res!1550491 (= (size!30476 lt!1329818) (+ (size!30476 (list!15060 (left!31276 (c!667181 lt!1328854)))) (size!30476 (list!15060 (right!31606 (c!667181 lt!1328854)))))))))

(declare-fun b!3829882 () Bool)

(assert (=> b!3829882 (= e!2365201 (or (not (= (list!15060 (right!31606 (c!667181 lt!1328854))) Nil!40424)) (= lt!1329818 (list!15060 (left!31276 (c!667181 lt!1328854))))))))

(declare-fun b!3829880 () Bool)

(declare-fun e!2365200 () List!40548)

(assert (=> b!3829880 (= e!2365200 (Cons!40424 (h!45844 (list!15060 (left!31276 (c!667181 lt!1328854)))) (++!10192 (t!308875 (list!15060 (left!31276 (c!667181 lt!1328854)))) (list!15060 (right!31606 (c!667181 lt!1328854))))))))

(declare-fun b!3829879 () Bool)

(assert (=> b!3829879 (= e!2365200 (list!15060 (right!31606 (c!667181 lt!1328854))))))

(declare-fun d!1136678 () Bool)

(assert (=> d!1136678 e!2365201))

(declare-fun res!1550492 () Bool)

(assert (=> d!1136678 (=> (not res!1550492) (not e!2365201))))

(assert (=> d!1136678 (= res!1550492 (= (content!5992 lt!1329818) ((_ map or) (content!5992 (list!15060 (left!31276 (c!667181 lt!1328854)))) (content!5992 (list!15060 (right!31606 (c!667181 lt!1328854)))))))))

(assert (=> d!1136678 (= lt!1329818 e!2365200)))

(declare-fun c!667782 () Bool)

(assert (=> d!1136678 (= c!667782 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 lt!1328854)))))))

(assert (=> d!1136678 (= (++!10192 (list!15060 (left!31276 (c!667181 lt!1328854))) (list!15060 (right!31606 (c!667181 lt!1328854)))) lt!1329818)))

(assert (= (and d!1136678 c!667782) b!3829879))

(assert (= (and d!1136678 (not c!667782)) b!3829880))

(assert (= (and d!1136678 res!1550492) b!3829881))

(assert (= (and b!3829881 res!1550491) b!3829882))

(declare-fun m!4383571 () Bool)

(assert (=> b!3829881 m!4383571))

(assert (=> b!3829881 m!4380941))

(declare-fun m!4383573 () Bool)

(assert (=> b!3829881 m!4383573))

(assert (=> b!3829881 m!4380943))

(declare-fun m!4383575 () Bool)

(assert (=> b!3829881 m!4383575))

(assert (=> b!3829880 m!4380943))

(declare-fun m!4383577 () Bool)

(assert (=> b!3829880 m!4383577))

(declare-fun m!4383579 () Bool)

(assert (=> d!1136678 m!4383579))

(assert (=> d!1136678 m!4380941))

(declare-fun m!4383581 () Bool)

(assert (=> d!1136678 m!4383581))

(assert (=> d!1136678 m!4380943))

(declare-fun m!4383583 () Bool)

(assert (=> d!1136678 m!4383583))

(assert (=> b!3828435 d!1136678))

(declare-fun b!3829884 () Bool)

(declare-fun e!2365202 () List!40548)

(declare-fun e!2365203 () List!40548)

(assert (=> b!3829884 (= e!2365202 e!2365203)))

(declare-fun c!667784 () Bool)

(assert (=> b!3829884 (= c!667784 ((_ is Leaf!19233) (left!31276 (c!667181 lt!1328854))))))

(declare-fun b!3829886 () Bool)

(assert (=> b!3829886 (= e!2365203 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 lt!1328854)))) (list!15060 (right!31606 (left!31276 (c!667181 lt!1328854))))))))

(declare-fun d!1136680 () Bool)

(declare-fun c!667783 () Bool)

(assert (=> d!1136680 (= c!667783 ((_ is Empty!12423) (left!31276 (c!667181 lt!1328854))))))

(assert (=> d!1136680 (= (list!15060 (left!31276 (c!667181 lt!1328854))) e!2365202)))

(declare-fun b!3829885 () Bool)

(assert (=> b!3829885 (= e!2365203 (list!15064 (xs!15717 (left!31276 (c!667181 lt!1328854)))))))

(declare-fun b!3829883 () Bool)

(assert (=> b!3829883 (= e!2365202 Nil!40424)))

(assert (= (and d!1136680 c!667783) b!3829883))

(assert (= (and d!1136680 (not c!667783)) b!3829884))

(assert (= (and b!3829884 c!667784) b!3829885))

(assert (= (and b!3829884 (not c!667784)) b!3829886))

(declare-fun m!4383585 () Bool)

(assert (=> b!3829886 m!4383585))

(declare-fun m!4383587 () Bool)

(assert (=> b!3829886 m!4383587))

(assert (=> b!3829886 m!4383585))

(assert (=> b!3829886 m!4383587))

(declare-fun m!4383589 () Bool)

(assert (=> b!3829886 m!4383589))

(declare-fun m!4383591 () Bool)

(assert (=> b!3829885 m!4383591))

(assert (=> b!3828435 d!1136680))

(declare-fun b!3829888 () Bool)

(declare-fun e!2365204 () List!40548)

(declare-fun e!2365205 () List!40548)

(assert (=> b!3829888 (= e!2365204 e!2365205)))

(declare-fun c!667786 () Bool)

(assert (=> b!3829888 (= c!667786 ((_ is Leaf!19233) (right!31606 (c!667181 lt!1328854))))))

(declare-fun b!3829890 () Bool)

(assert (=> b!3829890 (= e!2365205 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 lt!1328854)))) (list!15060 (right!31606 (right!31606 (c!667181 lt!1328854))))))))

(declare-fun d!1136682 () Bool)

(declare-fun c!667785 () Bool)

(assert (=> d!1136682 (= c!667785 ((_ is Empty!12423) (right!31606 (c!667181 lt!1328854))))))

(assert (=> d!1136682 (= (list!15060 (right!31606 (c!667181 lt!1328854))) e!2365204)))

(declare-fun b!3829889 () Bool)

(assert (=> b!3829889 (= e!2365205 (list!15064 (xs!15717 (right!31606 (c!667181 lt!1328854)))))))

(declare-fun b!3829887 () Bool)

(assert (=> b!3829887 (= e!2365204 Nil!40424)))

(assert (= (and d!1136682 c!667785) b!3829887))

(assert (= (and d!1136682 (not c!667785)) b!3829888))

(assert (= (and b!3829888 c!667786) b!3829889))

(assert (= (and b!3829888 (not c!667786)) b!3829890))

(declare-fun m!4383593 () Bool)

(assert (=> b!3829890 m!4383593))

(declare-fun m!4383595 () Bool)

(assert (=> b!3829890 m!4383595))

(assert (=> b!3829890 m!4383593))

(assert (=> b!3829890 m!4383595))

(declare-fun m!4383597 () Bool)

(assert (=> b!3829890 m!4383597))

(declare-fun m!4383599 () Bool)

(assert (=> b!3829889 m!4383599))

(assert (=> b!3828435 d!1136682))

(declare-fun b!3829891 () Bool)

(declare-fun res!1550495 () Bool)

(declare-fun e!2365207 () Bool)

(assert (=> b!3829891 (=> (not res!1550495) (not e!2365207))))

(assert (=> b!3829891 (= res!1550495 (isBalanced!3601 (left!31276 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3829892 () Bool)

(declare-fun res!1550498 () Bool)

(assert (=> b!3829892 (=> (not res!1550498) (not e!2365207))))

(assert (=> b!3829892 (= res!1550498 (<= (- (height!1816 (left!31276 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))) (height!1816 (right!31606 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))) 1))))

(declare-fun b!3829893 () Bool)

(declare-fun res!1550494 () Bool)

(assert (=> b!3829893 (=> (not res!1550494) (not e!2365207))))

(assert (=> b!3829893 (= res!1550494 (isBalanced!3601 (right!31606 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3829894 () Bool)

(declare-fun e!2365206 () Bool)

(assert (=> b!3829894 (= e!2365206 e!2365207)))

(declare-fun res!1550497 () Bool)

(assert (=> b!3829894 (=> (not res!1550497) (not e!2365207))))

(assert (=> b!3829894 (= res!1550497 (<= (- 1) (- (height!1816 (left!31276 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))) (height!1816 (right!31606 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))))

(declare-fun d!1136684 () Bool)

(declare-fun res!1550493 () Bool)

(assert (=> d!1136684 (=> res!1550493 e!2365206)))

(assert (=> d!1136684 (= res!1550493 (not ((_ is Node!12423) (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1136684 (= (isBalanced!3601 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) e!2365206)))

(declare-fun b!3829895 () Bool)

(declare-fun res!1550496 () Bool)

(assert (=> b!3829895 (=> (not res!1550496) (not e!2365207))))

(assert (=> b!3829895 (= res!1550496 (not (isEmpty!23863 (left!31276 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun b!3829896 () Bool)

(assert (=> b!3829896 (= e!2365207 (not (isEmpty!23863 (right!31606 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(assert (= (and d!1136684 (not res!1550493)) b!3829894))

(assert (= (and b!3829894 res!1550497) b!3829892))

(assert (= (and b!3829892 res!1550498) b!3829891))

(assert (= (and b!3829891 res!1550495) b!3829893))

(assert (= (and b!3829893 res!1550494) b!3829895))

(assert (= (and b!3829895 res!1550496) b!3829896))

(declare-fun m!4383601 () Bool)

(assert (=> b!3829893 m!4383601))

(declare-fun m!4383603 () Bool)

(assert (=> b!3829891 m!4383603))

(declare-fun m!4383605 () Bool)

(assert (=> b!3829896 m!4383605))

(declare-fun m!4383607 () Bool)

(assert (=> b!3829895 m!4383607))

(declare-fun m!4383609 () Bool)

(assert (=> b!3829892 m!4383609))

(declare-fun m!4383611 () Bool)

(assert (=> b!3829892 m!4383611))

(assert (=> b!3829894 m!4383609))

(assert (=> b!3829894 m!4383611))

(assert (=> b!3828533 d!1136684))

(declare-fun d!1136686 () Bool)

(declare-fun c!667787 () Bool)

(assert (=> d!1136686 (= c!667787 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 input!678)))))))

(declare-fun e!2365208 () Bool)

(assert (=> d!1136686 (= (inv!54485 (left!31275 (right!31605 (c!667180 input!678)))) e!2365208)))

(declare-fun b!3829897 () Bool)

(assert (=> b!3829897 (= e!2365208 (inv!54497 (left!31275 (right!31605 (c!667180 input!678)))))))

(declare-fun b!3829898 () Bool)

(declare-fun e!2365209 () Bool)

(assert (=> b!3829898 (= e!2365208 e!2365209)))

(declare-fun res!1550499 () Bool)

(assert (=> b!3829898 (= res!1550499 (not ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 input!678))))))))

(assert (=> b!3829898 (=> res!1550499 e!2365209)))

(declare-fun b!3829899 () Bool)

(assert (=> b!3829899 (= e!2365209 (inv!54498 (left!31275 (right!31605 (c!667180 input!678)))))))

(assert (= (and d!1136686 c!667787) b!3829897))

(assert (= (and d!1136686 (not c!667787)) b!3829898))

(assert (= (and b!3829898 (not res!1550499)) b!3829899))

(declare-fun m!4383613 () Bool)

(assert (=> b!3829897 m!4383613))

(declare-fun m!4383615 () Bool)

(assert (=> b!3829899 m!4383615))

(assert (=> b!3828620 d!1136686))

(declare-fun d!1136688 () Bool)

(declare-fun c!667788 () Bool)

(assert (=> d!1136688 (= c!667788 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 input!678)))))))

(declare-fun e!2365210 () Bool)

(assert (=> d!1136688 (= (inv!54485 (right!31605 (right!31605 (c!667180 input!678)))) e!2365210)))

(declare-fun b!3829900 () Bool)

(assert (=> b!3829900 (= e!2365210 (inv!54497 (right!31605 (right!31605 (c!667180 input!678)))))))

(declare-fun b!3829901 () Bool)

(declare-fun e!2365211 () Bool)

(assert (=> b!3829901 (= e!2365210 e!2365211)))

(declare-fun res!1550500 () Bool)

(assert (=> b!3829901 (= res!1550500 (not ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 input!678))))))))

(assert (=> b!3829901 (=> res!1550500 e!2365211)))

(declare-fun b!3829902 () Bool)

(assert (=> b!3829902 (= e!2365211 (inv!54498 (right!31605 (right!31605 (c!667180 input!678)))))))

(assert (= (and d!1136688 c!667788) b!3829900))

(assert (= (and d!1136688 (not c!667788)) b!3829901))

(assert (= (and b!3829901 (not res!1550500)) b!3829902))

(declare-fun m!4383617 () Bool)

(assert (=> b!3829900 m!4383617))

(declare-fun m!4383619 () Bool)

(assert (=> b!3829902 m!4383619))

(assert (=> b!3828620 d!1136688))

(declare-fun d!1136690 () Bool)

(assert (=> d!1136690 (= (list!15055 (_2!22945 lt!1329332)) (list!15059 (c!667180 (_2!22945 lt!1329332))))))

(declare-fun bs!582140 () Bool)

(assert (= bs!582140 d!1136690))

(declare-fun m!4383621 () Bool)

(assert (=> bs!582140 m!4383621))

(assert (=> b!3828520 d!1136690))

(declare-fun b!3829903 () Bool)

(declare-fun e!2365212 () Bool)

(declare-fun e!2365213 () Bool)

(assert (=> b!3829903 (= e!2365212 e!2365213)))

(declare-fun res!1550501 () Bool)

(declare-fun lt!1329821 () tuple2!39632)

(assert (=> b!3829903 (= res!1550501 (< (size!30470 (_2!22950 lt!1329821)) (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328951))))))))

(assert (=> b!3829903 (=> (not res!1550501) (not e!2365213))))

(declare-fun b!3829904 () Bool)

(declare-fun e!2365214 () tuple2!39632)

(assert (=> b!3829904 (= e!2365214 (tuple2!39633 Nil!40424 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))

(declare-fun b!3829905 () Bool)

(assert (=> b!3829905 (= e!2365212 (= (_2!22950 lt!1329821) (list!15055 (_2!22946 (v!38923 lt!1328951)))))))

(declare-fun b!3829906 () Bool)

(assert (=> b!3829906 (= e!2365213 (not (isEmpty!23858 (_1!22950 lt!1329821))))))

(declare-fun b!3829907 () Bool)

(declare-fun lt!1329820 () Option!8650)

(declare-fun lt!1329819 () tuple2!39632)

(assert (=> b!3829907 (= e!2365214 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329820)) (_1!22950 lt!1329819)) (_2!22950 lt!1329819)))))

(assert (=> b!3829907 (= lt!1329819 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329820))))))

(declare-fun d!1136692 () Bool)

(assert (=> d!1136692 e!2365212))

(declare-fun c!667789 () Bool)

(assert (=> d!1136692 (= c!667789 (> (size!30476 (_1!22950 lt!1329821)) 0))))

(assert (=> d!1136692 (= lt!1329821 e!2365214)))

(declare-fun c!667790 () Bool)

(assert (=> d!1136692 (= c!667790 ((_ is Some!8649) lt!1329820))))

(assert (=> d!1136692 (= lt!1329820 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))

(assert (=> d!1136692 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951)))) lt!1329821)))

(assert (= (and d!1136692 c!667790) b!3829907))

(assert (= (and d!1136692 (not c!667790)) b!3829904))

(assert (= (and d!1136692 c!667789) b!3829903))

(assert (= (and d!1136692 (not c!667789)) b!3829905))

(assert (= (and b!3829903 res!1550501) b!3829906))

(declare-fun m!4383623 () Bool)

(assert (=> b!3829903 m!4383623))

(assert (=> b!3829903 m!4381059))

(declare-fun m!4383625 () Bool)

(assert (=> b!3829903 m!4383625))

(declare-fun m!4383627 () Bool)

(assert (=> b!3829906 m!4383627))

(declare-fun m!4383629 () Bool)

(assert (=> b!3829907 m!4383629))

(declare-fun m!4383631 () Bool)

(assert (=> d!1136692 m!4383631))

(assert (=> d!1136692 m!4381059))

(declare-fun m!4383633 () Bool)

(assert (=> d!1136692 m!4383633))

(assert (=> b!3828520 d!1136692))

(declare-fun d!1136694 () Bool)

(assert (=> d!1136694 (= (list!15055 (_2!22946 (v!38923 lt!1328951))) (list!15059 (c!667180 (_2!22946 (v!38923 lt!1328951)))))))

(declare-fun bs!582141 () Bool)

(assert (= bs!582141 d!1136694))

(declare-fun m!4383635 () Bool)

(assert (=> bs!582141 m!4383635))

(assert (=> b!3828520 d!1136694))

(declare-fun d!1136696 () Bool)

(declare-fun c!667791 () Bool)

(assert (=> d!1136696 (= c!667791 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun e!2365215 () Bool)

(assert (=> d!1136696 (= (inv!54485 (left!31275 (left!31275 (c!667180 totalInput!335)))) e!2365215)))

(declare-fun b!3829908 () Bool)

(assert (=> b!3829908 (= e!2365215 (inv!54497 (left!31275 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun b!3829909 () Bool)

(declare-fun e!2365216 () Bool)

(assert (=> b!3829909 (= e!2365215 e!2365216)))

(declare-fun res!1550502 () Bool)

(assert (=> b!3829909 (= res!1550502 (not ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 totalInput!335))))))))

(assert (=> b!3829909 (=> res!1550502 e!2365216)))

(declare-fun b!3829910 () Bool)

(assert (=> b!3829910 (= e!2365216 (inv!54498 (left!31275 (left!31275 (c!667180 totalInput!335)))))))

(assert (= (and d!1136696 c!667791) b!3829908))

(assert (= (and d!1136696 (not c!667791)) b!3829909))

(assert (= (and b!3829909 (not res!1550502)) b!3829910))

(declare-fun m!4383637 () Bool)

(assert (=> b!3829908 m!4383637))

(declare-fun m!4383639 () Bool)

(assert (=> b!3829910 m!4383639))

(assert (=> b!3828559 d!1136696))

(declare-fun d!1136698 () Bool)

(declare-fun c!667792 () Bool)

(assert (=> d!1136698 (= c!667792 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun e!2365217 () Bool)

(assert (=> d!1136698 (= (inv!54485 (right!31605 (left!31275 (c!667180 totalInput!335)))) e!2365217)))

(declare-fun b!3829911 () Bool)

(assert (=> b!3829911 (= e!2365217 (inv!54497 (right!31605 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun b!3829912 () Bool)

(declare-fun e!2365218 () Bool)

(assert (=> b!3829912 (= e!2365217 e!2365218)))

(declare-fun res!1550503 () Bool)

(assert (=> b!3829912 (= res!1550503 (not ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 totalInput!335))))))))

(assert (=> b!3829912 (=> res!1550503 e!2365218)))

(declare-fun b!3829913 () Bool)

(assert (=> b!3829913 (= e!2365218 (inv!54498 (right!31605 (left!31275 (c!667180 totalInput!335)))))))

(assert (= (and d!1136698 c!667792) b!3829911))

(assert (= (and d!1136698 (not c!667792)) b!3829912))

(assert (= (and b!3829912 (not res!1550503)) b!3829913))

(declare-fun m!4383641 () Bool)

(assert (=> b!3829911 m!4383641))

(declare-fun m!4383643 () Bool)

(assert (=> b!3829913 m!4383643))

(assert (=> b!3828559 d!1136698))

(assert (=> d!1135860 d!1135802))

(declare-fun d!1136700 () Bool)

(assert (=> d!1136700 (= (isDefined!6810 lt!1329338) (not (isEmpty!23862 lt!1329338)))))

(declare-fun bs!582142 () Bool)

(assert (= bs!582142 d!1136700))

(declare-fun m!4383645 () Bool)

(assert (=> bs!582142 m!4383645))

(assert (=> d!1135860 d!1136700))

(declare-fun d!1136702 () Bool)

(declare-fun lt!1329826 () Option!8650)

(assert (=> d!1136702 (= lt!1329826 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13)))))

(declare-fun e!2365219 () Option!8650)

(assert (=> d!1136702 (= lt!1329826 e!2365219)))

(declare-fun c!667793 () Bool)

(assert (=> d!1136702 (= c!667793 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1329825 () Unit!58192)

(declare-fun lt!1329822 () Unit!58192)

(assert (=> d!1136702 (= lt!1329825 lt!1329822)))

(assert (=> d!1136702 (isPrefix!3333 (list!15055 treated!13) (list!15055 treated!13))))

(assert (=> d!1136702 (= lt!1329822 (lemmaIsPrefixRefl!2118 (list!15055 treated!13) (list!15055 treated!13)))))

(assert (=> d!1136702 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1136702 (= (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13)) lt!1329826)))

(declare-fun call!281405 () Option!8650)

(declare-fun bm!281400 () Bool)

(assert (=> bm!281400 (= call!281405 (maxPrefixOneRuleZipper!219 thiss!11876 (h!45845 rules!1265) (list!15055 treated!13)))))

(declare-fun b!3829914 () Bool)

(assert (=> b!3829914 (= e!2365219 call!281405)))

(declare-fun b!3829915 () Bool)

(declare-fun lt!1329824 () Option!8650)

(declare-fun lt!1329823 () Option!8650)

(assert (=> b!3829915 (= e!2365219 (ite (and ((_ is None!8649) lt!1329824) ((_ is None!8649) lt!1329823)) None!8649 (ite ((_ is None!8649) lt!1329823) lt!1329824 (ite ((_ is None!8649) lt!1329824) lt!1329823 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1329824))) (size!30466 (_1!22949 (v!38925 lt!1329823)))) lt!1329824 lt!1329823)))))))

(assert (=> b!3829915 (= lt!1329824 call!281405)))

(assert (=> b!3829915 (= lt!1329823 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13)))))

(assert (= (and d!1136702 c!667793) b!3829914))

(assert (= (and d!1136702 (not c!667793)) b!3829915))

(assert (= (or b!3829914 b!3829915) bm!281400))

(assert (=> d!1136702 m!4379225))

(assert (=> d!1136702 m!4380455))

(assert (=> d!1136702 m!4379225))

(assert (=> d!1136702 m!4379225))

(declare-fun m!4383647 () Bool)

(assert (=> d!1136702 m!4383647))

(assert (=> d!1136702 m!4379225))

(assert (=> d!1136702 m!4379225))

(declare-fun m!4383649 () Bool)

(assert (=> d!1136702 m!4383649))

(assert (=> d!1136702 m!4379483))

(assert (=> bm!281400 m!4379225))

(declare-fun m!4383651 () Bool)

(assert (=> bm!281400 m!4383651))

(assert (=> b!3829915 m!4379225))

(declare-fun m!4383653 () Bool)

(assert (=> b!3829915 m!4383653))

(assert (=> d!1135860 d!1136702))

(declare-fun d!1136704 () Bool)

(assert (=> d!1136704 (= (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13))) (not (isEmpty!23857 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13)))))))

(declare-fun bs!582143 () Bool)

(assert (= bs!582143 d!1136704))

(assert (=> bs!582143 m!4381115))

(declare-fun m!4383655 () Bool)

(assert (=> bs!582143 m!4383655))

(assert (=> d!1135860 d!1136704))

(declare-fun b!3829918 () Bool)

(declare-fun e!2365220 () Bool)

(assert (=> b!3829918 (= e!2365220 (isPrefix!3333 (tail!5795 lt!1329336) (tail!5795 lt!1329340)))))

(declare-fun b!3829916 () Bool)

(declare-fun e!2365222 () Bool)

(assert (=> b!3829916 (= e!2365222 e!2365220)))

(declare-fun res!1550505 () Bool)

(assert (=> b!3829916 (=> (not res!1550505) (not e!2365220))))

(assert (=> b!3829916 (= res!1550505 (not ((_ is Nil!40423) lt!1329340)))))

(declare-fun b!3829917 () Bool)

(declare-fun res!1550507 () Bool)

(assert (=> b!3829917 (=> (not res!1550507) (not e!2365220))))

(assert (=> b!3829917 (= res!1550507 (= (head!8068 lt!1329336) (head!8068 lt!1329340)))))

(declare-fun d!1136706 () Bool)

(declare-fun e!2365221 () Bool)

(assert (=> d!1136706 e!2365221))

(declare-fun res!1550504 () Bool)

(assert (=> d!1136706 (=> res!1550504 e!2365221)))

(declare-fun lt!1329827 () Bool)

(assert (=> d!1136706 (= res!1550504 (not lt!1329827))))

(assert (=> d!1136706 (= lt!1329827 e!2365222)))

(declare-fun res!1550506 () Bool)

(assert (=> d!1136706 (=> res!1550506 e!2365222)))

(assert (=> d!1136706 (= res!1550506 ((_ is Nil!40423) lt!1329336))))

(assert (=> d!1136706 (= (isPrefix!3333 lt!1329336 lt!1329340) lt!1329827)))

(declare-fun b!3829919 () Bool)

(assert (=> b!3829919 (= e!2365221 (>= (size!30470 lt!1329340) (size!30470 lt!1329336)))))

(assert (= (and d!1136706 (not res!1550506)) b!3829916))

(assert (= (and b!3829916 res!1550505) b!3829917))

(assert (= (and b!3829917 res!1550507) b!3829918))

(assert (= (and d!1136706 (not res!1550504)) b!3829919))

(declare-fun m!4383657 () Bool)

(assert (=> b!3829918 m!4383657))

(declare-fun m!4383659 () Bool)

(assert (=> b!3829918 m!4383659))

(assert (=> b!3829918 m!4383657))

(assert (=> b!3829918 m!4383659))

(declare-fun m!4383661 () Bool)

(assert (=> b!3829918 m!4383661))

(declare-fun m!4383663 () Bool)

(assert (=> b!3829917 m!4383663))

(declare-fun m!4383665 () Bool)

(assert (=> b!3829917 m!4383665))

(declare-fun m!4383667 () Bool)

(assert (=> b!3829919 m!4383667))

(declare-fun m!4383669 () Bool)

(assert (=> b!3829919 m!4383669))

(assert (=> d!1135860 d!1136706))

(declare-fun d!1136708 () Bool)

(assert (=> d!1136708 (isPrefix!3333 lt!1329336 lt!1329340)))

(declare-fun lt!1329828 () Unit!58192)

(assert (=> d!1136708 (= lt!1329828 (choose!22530 lt!1329336 lt!1329340))))

(assert (=> d!1136708 (= (lemmaIsPrefixRefl!2118 lt!1329336 lt!1329340) lt!1329828)))

(declare-fun bs!582144 () Bool)

(assert (= bs!582144 d!1136708))

(assert (=> bs!582144 m!4381117))

(declare-fun m!4383671 () Bool)

(assert (=> bs!582144 m!4383671))

(assert (=> d!1135860 d!1136708))

(assert (=> d!1135860 d!1135438))

(declare-fun d!1136710 () Bool)

(assert (=> d!1136710 (= (list!15056 (_1!22945 lt!1329201)) (list!15060 (c!667181 (_1!22945 lt!1329201))))))

(declare-fun bs!582145 () Bool)

(assert (= bs!582145 d!1136710))

(declare-fun m!4383673 () Bool)

(assert (=> bs!582145 m!4383673))

(assert (=> b!3828024 d!1136710))

(declare-fun b!3829920 () Bool)

(declare-fun e!2365223 () Bool)

(declare-fun e!2365224 () Bool)

(assert (=> b!3829920 (= e!2365223 e!2365224)))

(declare-fun res!1550508 () Bool)

(declare-fun lt!1329831 () tuple2!39632)

(assert (=> b!3829920 (= res!1550508 (< (size!30470 (_2!22950 lt!1329831)) (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328957))))))))

(assert (=> b!3829920 (=> (not res!1550508) (not e!2365224))))

(declare-fun b!3829921 () Bool)

(declare-fun e!2365225 () tuple2!39632)

(assert (=> b!3829921 (= e!2365225 (tuple2!39633 Nil!40424 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))

(declare-fun b!3829922 () Bool)

(assert (=> b!3829922 (= e!2365223 (= (_2!22950 lt!1329831) (list!15055 (_2!22946 (v!38923 lt!1328957)))))))

(declare-fun b!3829923 () Bool)

(assert (=> b!3829923 (= e!2365224 (not (isEmpty!23858 (_1!22950 lt!1329831))))))

(declare-fun b!3829924 () Bool)

(declare-fun lt!1329830 () Option!8650)

(declare-fun lt!1329829 () tuple2!39632)

(assert (=> b!3829924 (= e!2365225 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329830)) (_1!22950 lt!1329829)) (_2!22950 lt!1329829)))))

(assert (=> b!3829924 (= lt!1329829 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329830))))))

(declare-fun d!1136712 () Bool)

(assert (=> d!1136712 e!2365223))

(declare-fun c!667794 () Bool)

(assert (=> d!1136712 (= c!667794 (> (size!30476 (_1!22950 lt!1329831)) 0))))

(assert (=> d!1136712 (= lt!1329831 e!2365225)))

(declare-fun c!667795 () Bool)

(assert (=> d!1136712 (= c!667795 ((_ is Some!8649) lt!1329830))))

(assert (=> d!1136712 (= lt!1329830 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))

(assert (=> d!1136712 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957)))) lt!1329831)))

(assert (= (and d!1136712 c!667795) b!3829924))

(assert (= (and d!1136712 (not c!667795)) b!3829921))

(assert (= (and d!1136712 c!667794) b!3829920))

(assert (= (and d!1136712 (not c!667794)) b!3829922))

(assert (= (and b!3829920 res!1550508) b!3829923))

(declare-fun m!4383675 () Bool)

(assert (=> b!3829920 m!4383675))

(assert (=> b!3829920 m!4380369))

(declare-fun m!4383677 () Bool)

(assert (=> b!3829920 m!4383677))

(declare-fun m!4383679 () Bool)

(assert (=> b!3829923 m!4383679))

(declare-fun m!4383681 () Bool)

(assert (=> b!3829924 m!4383681))

(declare-fun m!4383683 () Bool)

(assert (=> d!1136712 m!4383683))

(assert (=> d!1136712 m!4380369))

(declare-fun m!4383685 () Bool)

(assert (=> d!1136712 m!4383685))

(assert (=> b!3828024 d!1136712))

(declare-fun d!1136714 () Bool)

(assert (=> d!1136714 (= (list!15055 (_2!22946 (v!38923 lt!1328957))) (list!15059 (c!667180 (_2!22946 (v!38923 lt!1328957)))))))

(declare-fun bs!582146 () Bool)

(assert (= bs!582146 d!1136714))

(declare-fun m!4383687 () Bool)

(assert (=> bs!582146 m!4383687))

(assert (=> b!3828024 d!1136714))

(declare-fun d!1136716 () Bool)

(declare-fun c!667796 () Bool)

(assert (=> d!1136716 (= c!667796 ((_ is Nil!40423) lt!1329294))))

(declare-fun e!2365226 () (InoxSet C!22444))

(assert (=> d!1136716 (= (content!5990 lt!1329294) e!2365226)))

(declare-fun b!3829925 () Bool)

(assert (=> b!3829925 (= e!2365226 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3829926 () Bool)

(assert (=> b!3829926 (= e!2365226 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1329294) true) (content!5990 (t!308874 lt!1329294))))))

(assert (= (and d!1136716 c!667796) b!3829925))

(assert (= (and d!1136716 (not c!667796)) b!3829926))

(declare-fun m!4383689 () Bool)

(assert (=> b!3829926 m!4383689))

(declare-fun m!4383691 () Bool)

(assert (=> b!3829926 m!4383691))

(assert (=> d!1135772 d!1136716))

(declare-fun d!1136718 () Bool)

(declare-fun c!667797 () Bool)

(assert (=> d!1136718 (= c!667797 ((_ is Nil!40423) lt!1328853))))

(declare-fun e!2365227 () (InoxSet C!22444))

(assert (=> d!1136718 (= (content!5990 lt!1328853) e!2365227)))

(declare-fun b!3829927 () Bool)

(assert (=> b!3829927 (= e!2365227 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3829928 () Bool)

(assert (=> b!3829928 (= e!2365227 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1328853) true) (content!5990 (t!308874 lt!1328853))))))

(assert (= (and d!1136718 c!667797) b!3829927))

(assert (= (and d!1136718 (not c!667797)) b!3829928))

(declare-fun m!4383693 () Bool)

(assert (=> b!3829928 m!4383693))

(declare-fun m!4383695 () Bool)

(assert (=> b!3829928 m!4383695))

(assert (=> d!1135772 d!1136718))

(declare-fun bs!582147 () Bool)

(declare-fun d!1136720 () Bool)

(assert (= bs!582147 (and d!1136720 d!1135650)))

(declare-fun lambda!125960 () Int)

(assert (=> bs!582147 (= (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (= lambda!125960 lambda!125933))))

(assert (=> d!1136720 true))

(assert (=> d!1136720 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (dynLambda!17510 order!22093 lambda!125960))))

(assert (=> d!1136720 (= (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (Forall2!1022 lambda!125960))))

(declare-fun bs!582148 () Bool)

(assert (= bs!582148 d!1136720))

(declare-fun m!4383697 () Bool)

(assert (=> bs!582148 m!4383697))

(assert (=> b!3828530 d!1136720))

(declare-fun d!1136722 () Bool)

(declare-fun lt!1329832 () Int)

(assert (=> d!1136722 (= lt!1329832 (size!30476 (list!15060 (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1136722 (= lt!1329832 (ite ((_ is Empty!12423) (left!31276 (c!667181 acc!335))) 0 (ite ((_ is Leaf!19233) (left!31276 (c!667181 acc!335))) (csize!25077 (left!31276 (c!667181 acc!335))) (csize!25076 (left!31276 (c!667181 acc!335))))))))

(assert (=> d!1136722 (= (size!30477 (left!31276 (c!667181 acc!335))) lt!1329832)))

(declare-fun bs!582149 () Bool)

(assert (= bs!582149 d!1136722))

(assert (=> bs!582149 m!4379849))

(assert (=> bs!582149 m!4379849))

(declare-fun m!4383699 () Bool)

(assert (=> bs!582149 m!4383699))

(assert (=> d!1135532 d!1136722))

(declare-fun d!1136724 () Bool)

(declare-fun lt!1329833 () Int)

(assert (=> d!1136724 (= lt!1329833 (size!30476 (list!15060 (right!31606 (c!667181 acc!335)))))))

(assert (=> d!1136724 (= lt!1329833 (ite ((_ is Empty!12423) (right!31606 (c!667181 acc!335))) 0 (ite ((_ is Leaf!19233) (right!31606 (c!667181 acc!335))) (csize!25077 (right!31606 (c!667181 acc!335))) (csize!25076 (right!31606 (c!667181 acc!335))))))))

(assert (=> d!1136724 (= (size!30477 (right!31606 (c!667181 acc!335))) lt!1329833)))

(declare-fun bs!582150 () Bool)

(assert (= bs!582150 d!1136724))

(assert (=> bs!582150 m!4379861))

(assert (=> bs!582150 m!4379861))

(declare-fun m!4383701 () Bool)

(assert (=> bs!582150 m!4383701))

(assert (=> d!1135532 d!1136724))

(declare-fun d!1136726 () Bool)

(declare-fun lt!1329836 () Bool)

(assert (=> d!1136726 (= lt!1329836 (isEmpty!23858 (list!15060 (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1136726 (= lt!1329836 (= (size!30477 (left!31276 (c!667181 acc!335))) 0))))

(assert (=> d!1136726 (= (isEmpty!23863 (left!31276 (c!667181 acc!335))) lt!1329836)))

(declare-fun bs!582151 () Bool)

(assert (= bs!582151 d!1136726))

(assert (=> bs!582151 m!4379849))

(assert (=> bs!582151 m!4379849))

(declare-fun m!4383703 () Bool)

(assert (=> bs!582151 m!4383703))

(assert (=> bs!582151 m!4379997))

(assert (=> b!3828509 d!1136726))

(assert (=> bm!281291 d!1135758))

(declare-fun bs!582152 () Bool)

(declare-fun b!3829941 () Bool)

(assert (= bs!582152 (and b!3829941 b!3827975)))

(declare-fun lambda!125965 () Int)

(assert (=> bs!582152 (= lambda!125965 lambda!125925)))

(declare-fun bs!582153 () Bool)

(assert (= bs!582153 (and b!3829941 d!1135788)))

(assert (=> bs!582153 (= lambda!125965 lambda!125942)))

(declare-fun b!3829948 () Bool)

(declare-fun e!2365244 () Bool)

(assert (=> b!3829948 (= e!2365244 true)))

(declare-fun b!3829947 () Bool)

(declare-fun e!2365243 () Bool)

(assert (=> b!3829947 (= e!2365243 e!2365244)))

(assert (=> b!3829941 e!2365243))

(assert (= b!3829947 b!3829948))

(assert (= b!3829941 b!3829947))

(assert (=> b!3829948 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125965))))

(assert (=> b!3829948 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125965))))

(declare-fun b!3829942 () Bool)

(declare-fun e!2365239 () Bool)

(declare-fun e!2365241 () Bool)

(assert (=> b!3829942 (= e!2365239 e!2365241)))

(declare-fun res!1550520 () Bool)

(assert (=> b!3829942 (=> res!1550520 e!2365241)))

(declare-fun lt!1329861 () Option!8648)

(assert (=> b!3829942 (= res!1550520 (not (isDefined!6810 lt!1329861)))))

(declare-fun b!3829943 () Bool)

(declare-fun e!2365240 () Bool)

(assert (=> b!3829943 (= e!2365241 e!2365240)))

(declare-fun res!1550518 () Bool)

(assert (=> b!3829943 (=> (not res!1550518) (not e!2365240))))

(assert (=> b!3829943 (= res!1550518 (= (_1!22946 (get!13412 lt!1329861)) (_1!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 treated!13))))))))

(declare-fun b!3829944 () Bool)

(declare-fun e!2365238 () Option!8648)

(assert (=> b!3829944 (= e!2365238 None!8647)))

(declare-fun d!1136728 () Bool)

(assert (=> d!1136728 e!2365239))

(declare-fun res!1550519 () Bool)

(assert (=> d!1136728 (=> (not res!1550519) (not e!2365239))))

(assert (=> d!1136728 (= res!1550519 (= (isDefined!6810 lt!1329861) (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 treated!13)))))))

(assert (=> d!1136728 (= lt!1329861 e!2365238)))

(declare-fun c!667800 () Bool)

(declare-fun lt!1329859 () tuple2!39634)

(assert (=> d!1136728 (= c!667800 (isEmpty!23860 (_1!22951 lt!1329859)))))

(declare-fun findLongestMatchWithZipperSequence!231 (Regex!11129 BalanceConc!24438) tuple2!39634)

(assert (=> d!1136728 (= lt!1329859 (findLongestMatchWithZipperSequence!231 (regex!6224 (h!45845 rules!1265)) treated!13))))

(assert (=> d!1136728 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1136728 (= (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) treated!13) lt!1329861)))

(assert (=> b!3829941 (= e!2365238 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329859)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329859)) (list!15055 (_1!22951 lt!1329859))) (_2!22951 lt!1329859))))))

(declare-fun lt!1329858 () List!40547)

(assert (=> b!3829941 (= lt!1329858 (list!15055 treated!13))))

(declare-fun lt!1329862 () Unit!58192)

(assert (=> b!3829941 (= lt!1329862 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) lt!1329858))))

(declare-fun res!1550517 () Bool)

(assert (=> b!3829941 (= res!1550517 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329858 lt!1329858 (size!30470 lt!1329858)))))))

(declare-fun e!2365242 () Bool)

(assert (=> b!3829941 (=> res!1550517 e!2365242)))

(assert (=> b!3829941 e!2365242))

(declare-fun lt!1329863 () Unit!58192)

(assert (=> b!3829941 (= lt!1329863 lt!1329862)))

(declare-fun lt!1329860 () Unit!58192)

(assert (=> b!3829941 (= lt!1329860 (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))))))

(declare-fun lt!1329857 () Unit!58192)

(assert (=> b!3829941 (= lt!1329857 (ForallOf!777 lambda!125965 (_1!22951 lt!1329859)))))

(declare-fun lt!1329866 () Unit!58192)

(assert (=> b!3829941 (= lt!1329866 (ForallOf!777 lambda!125965 (seqFromList!4507 (list!15055 (_1!22951 lt!1329859)))))))

(declare-fun lt!1329865 () Option!8648)

(assert (=> b!3829941 (= lt!1329865 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329859)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329859)) (list!15055 (_1!22951 lt!1329859))) (_2!22951 lt!1329859))))))

(declare-fun lt!1329864 () Unit!58192)

(assert (=> b!3829941 (= lt!1329864 (lemmaEqSameImage!1050 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329859) (seqFromList!4507 (list!15055 (_1!22951 lt!1329859)))))))

(declare-fun b!3829945 () Bool)

(assert (=> b!3829945 (= e!2365240 (= (list!15055 (_2!22946 (get!13412 lt!1329861))) (_2!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 treated!13))))))))

(declare-fun b!3829946 () Bool)

(assert (=> b!3829946 (= e!2365242 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329858 lt!1329858 (size!30470 lt!1329858)))))))

(assert (= (and d!1136728 c!667800) b!3829944))

(assert (= (and d!1136728 (not c!667800)) b!3829941))

(assert (= (and b!3829941 (not res!1550517)) b!3829946))

(assert (= (and d!1136728 res!1550519) b!3829942))

(assert (= (and b!3829942 (not res!1550520)) b!3829943))

(assert (= (and b!3829943 res!1550518) b!3829945))

(declare-fun m!4383705 () Bool)

(assert (=> b!3829945 m!4383705))

(assert (=> b!3829945 m!4379225))

(declare-fun m!4383707 () Bool)

(assert (=> b!3829945 m!4383707))

(declare-fun m!4383709 () Bool)

(assert (=> b!3829945 m!4383709))

(assert (=> b!3829945 m!4383707))

(declare-fun m!4383711 () Bool)

(assert (=> b!3829945 m!4383711))

(assert (=> b!3829945 m!4379225))

(assert (=> b!3829946 m!4380267))

(declare-fun m!4383713 () Bool)

(assert (=> b!3829946 m!4383713))

(assert (=> b!3829946 m!4380267))

(assert (=> b!3829946 m!4383713))

(declare-fun m!4383715 () Bool)

(assert (=> b!3829946 m!4383715))

(declare-fun m!4383717 () Bool)

(assert (=> b!3829946 m!4383717))

(assert (=> d!1136728 m!4380305))

(assert (=> d!1136728 m!4379225))

(assert (=> d!1136728 m!4383707))

(assert (=> d!1136728 m!4383707))

(declare-fun m!4383719 () Bool)

(assert (=> d!1136728 m!4383719))

(declare-fun m!4383721 () Bool)

(assert (=> d!1136728 m!4383721))

(declare-fun m!4383723 () Bool)

(assert (=> d!1136728 m!4383723))

(declare-fun m!4383725 () Bool)

(assert (=> d!1136728 m!4383725))

(assert (=> d!1136728 m!4379225))

(assert (=> b!3829943 m!4383709))

(assert (=> b!3829943 m!4379225))

(assert (=> b!3829943 m!4379225))

(assert (=> b!3829943 m!4383707))

(assert (=> b!3829943 m!4383707))

(assert (=> b!3829943 m!4383711))

(assert (=> b!3829942 m!4383721))

(assert (=> b!3829941 m!4380267))

(declare-fun m!4383727 () Bool)

(assert (=> b!3829941 m!4383727))

(declare-fun m!4383729 () Bool)

(assert (=> b!3829941 m!4383729))

(declare-fun m!4383731 () Bool)

(assert (=> b!3829941 m!4383731))

(declare-fun m!4383733 () Bool)

(assert (=> b!3829941 m!4383733))

(declare-fun m!4383735 () Bool)

(assert (=> b!3829941 m!4383735))

(declare-fun m!4383737 () Bool)

(assert (=> b!3829941 m!4383737))

(assert (=> b!3829941 m!4380267))

(assert (=> b!3829941 m!4383713))

(assert (=> b!3829941 m!4383715))

(assert (=> b!3829941 m!4383737))

(assert (=> b!3829941 m!4383731))

(assert (=> b!3829941 m!4383713))

(declare-fun m!4383739 () Bool)

(assert (=> b!3829941 m!4383739))

(assert (=> b!3829941 m!4383731))

(declare-fun m!4383741 () Bool)

(assert (=> b!3829941 m!4383741))

(assert (=> b!3829941 m!4379225))

(assert (=> b!3829941 m!4380281))

(declare-fun m!4383743 () Bool)

(assert (=> b!3829941 m!4383743))

(assert (=> bm!281295 d!1136728))

(declare-fun b!3829949 () Bool)

(declare-fun res!1550523 () Bool)

(declare-fun e!2365246 () Bool)

(assert (=> b!3829949 (=> (not res!1550523) (not e!2365246))))

(assert (=> b!3829949 (= res!1550523 (isBalanced!3601 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))))))

(declare-fun b!3829950 () Bool)

(declare-fun res!1550526 () Bool)

(assert (=> b!3829950 (=> (not res!1550526) (not e!2365246))))

(assert (=> b!3829950 (= res!1550526 (<= (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))))) 1))))

(declare-fun b!3829951 () Bool)

(declare-fun res!1550522 () Bool)

(assert (=> b!3829951 (=> (not res!1550522) (not e!2365246))))

(assert (=> b!3829951 (= res!1550522 (isBalanced!3601 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))))))

(declare-fun b!3829952 () Bool)

(declare-fun e!2365245 () Bool)

(assert (=> b!3829952 (= e!2365245 e!2365246)))

(declare-fun res!1550525 () Bool)

(assert (=> b!3829952 (=> (not res!1550525) (not e!2365246))))

(assert (=> b!3829952 (= res!1550525 (<= (- 1) (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))))))))

(declare-fun d!1136730 () Bool)

(declare-fun res!1550521 () Bool)

(assert (=> d!1136730 (=> res!1550521 e!2365245)))

(assert (=> d!1136730 (= res!1550521 (not ((_ is Node!12423) (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))))))))

(assert (=> d!1136730 (= (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))) e!2365245)))

(declare-fun b!3829953 () Bool)

(declare-fun res!1550524 () Bool)

(assert (=> b!3829953 (=> (not res!1550524) (not e!2365246))))

(assert (=> b!3829953 (= res!1550524 (not (isEmpty!23863 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))))))))

(declare-fun b!3829954 () Bool)

(assert (=> b!3829954 (= e!2365246 (not (isEmpty!23863 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960)))))))))

(assert (= (and d!1136730 (not res!1550521)) b!3829952))

(assert (= (and b!3829952 res!1550525) b!3829950))

(assert (= (and b!3829950 res!1550526) b!3829949))

(assert (= (and b!3829949 res!1550523) b!3829951))

(assert (= (and b!3829951 res!1550522) b!3829953))

(assert (= (and b!3829953 res!1550524) b!3829954))

(declare-fun m!4383745 () Bool)

(assert (=> b!3829951 m!4383745))

(declare-fun m!4383747 () Bool)

(assert (=> b!3829949 m!4383747))

(declare-fun m!4383749 () Bool)

(assert (=> b!3829954 m!4383749))

(declare-fun m!4383751 () Bool)

(assert (=> b!3829953 m!4383751))

(declare-fun m!4383753 () Bool)

(assert (=> b!3829950 m!4383753))

(declare-fun m!4383755 () Bool)

(assert (=> b!3829950 m!4383755))

(assert (=> b!3829952 m!4383753))

(assert (=> b!3829952 m!4383755))

(assert (=> d!1135630 d!1136730))

(declare-fun d!1136732 () Bool)

(declare-fun e!2365249 () Bool)

(assert (=> d!1136732 e!2365249))

(declare-fun res!1550529 () Bool)

(assert (=> d!1136732 (=> (not res!1550529) (not e!2365249))))

(declare-fun lt!1329869 () Conc!12423)

(assert (=> d!1136732 (= res!1550529 (isBalanced!3601 lt!1329869))))

(declare-fun fill!201 (Int Token!11586) IArray!24851)

(assert (=> d!1136732 (= lt!1329869 (++!10191 (Leaf!19233 (fill!201 1 (_1!22946 (v!38923 lt!1328960))) 1) (c!667181 (_1!22945 lt!1328958))))))

(assert (=> d!1136732 (isBalanced!3601 (c!667181 (_1!22945 lt!1328958)))))

(assert (=> d!1136732 (= (prepend!1382 (c!667181 (_1!22945 lt!1328958)) (_1!22946 (v!38923 lt!1328960))) lt!1329869)))

(declare-fun b!3829957 () Bool)

(assert (=> b!3829957 (= e!2365249 (= (list!15060 lt!1329869) (Cons!40424 (_1!22946 (v!38923 lt!1328960)) (list!15060 (c!667181 (_1!22945 lt!1328958))))))))

(assert (= (and d!1136732 res!1550529) b!3829957))

(declare-fun m!4383757 () Bool)

(assert (=> d!1136732 m!4383757))

(declare-fun m!4383759 () Bool)

(assert (=> d!1136732 m!4383759))

(declare-fun m!4383761 () Bool)

(assert (=> d!1136732 m!4383761))

(declare-fun m!4383763 () Bool)

(assert (=> d!1136732 m!4383763))

(declare-fun m!4383765 () Bool)

(assert (=> b!3829957 m!4383765))

(declare-fun m!4383767 () Bool)

(assert (=> b!3829957 m!4383767))

(assert (=> d!1135630 d!1136732))

(declare-fun b!3829958 () Bool)

(declare-fun e!2365250 () List!40547)

(assert (=> b!3829958 (= e!2365250 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861)))))))

(declare-fun b!3829959 () Bool)

(assert (=> b!3829959 (= e!2365250 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861))))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861))))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861)))))))))

(declare-fun b!3829960 () Bool)

(declare-fun res!1550531 () Bool)

(declare-fun e!2365251 () Bool)

(assert (=> b!3829960 (=> (not res!1550531) (not e!2365251))))

(declare-fun lt!1329870 () List!40547)

(assert (=> b!3829960 (= res!1550531 (= (size!30470 lt!1329870) (+ (size!30470 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861))))) (size!30470 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861))))))))))

(declare-fun b!3829961 () Bool)

(assert (=> b!3829961 (= e!2365251 (or (not (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861)))) Nil!40423)) (= lt!1329870 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861)))))))))

(declare-fun d!1136734 () Bool)

(assert (=> d!1136734 e!2365251))

(declare-fun res!1550530 () Bool)

(assert (=> d!1136734 (=> (not res!1550530) (not e!2365251))))

(assert (=> d!1136734 (= res!1550530 (= (content!5990 lt!1329870) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861))))) (content!5990 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861))))))))))

(assert (=> d!1136734 (= lt!1329870 e!2365250)))

(declare-fun c!667801 () Bool)

(assert (=> d!1136734 (= c!667801 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861))))))))

(assert (=> d!1136734 (= (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861))))) lt!1329870)))

(assert (= (and d!1136734 c!667801) b!3829958))

(assert (= (and d!1136734 (not c!667801)) b!3829959))

(assert (= (and d!1136734 res!1550530) b!3829960))

(assert (= (and b!3829960 res!1550531) b!3829961))

(assert (=> b!3829959 m!4381087))

(declare-fun m!4383769 () Bool)

(assert (=> b!3829959 m!4383769))

(declare-fun m!4383771 () Bool)

(assert (=> b!3829960 m!4383771))

(assert (=> b!3829960 m!4381085))

(declare-fun m!4383773 () Bool)

(assert (=> b!3829960 m!4383773))

(assert (=> b!3829960 m!4381087))

(declare-fun m!4383775 () Bool)

(assert (=> b!3829960 m!4383775))

(declare-fun m!4383777 () Bool)

(assert (=> d!1136734 m!4383777))

(assert (=> d!1136734 m!4381085))

(declare-fun m!4383779 () Bool)

(assert (=> d!1136734 m!4383779))

(assert (=> d!1136734 m!4381087))

(declare-fun m!4383781 () Bool)

(assert (=> d!1136734 m!4383781))

(assert (=> b!3828529 d!1136734))

(declare-fun b!3829962 () Bool)

(declare-fun e!2365252 () List!40547)

(assert (=> b!3829962 (= e!2365252 Nil!40423)))

(declare-fun b!3829963 () Bool)

(declare-fun e!2365253 () List!40547)

(assert (=> b!3829963 (= e!2365252 e!2365253)))

(declare-fun c!667803 () Bool)

(assert (=> b!3829963 (= c!667803 ((_ is Leaf!19232) (left!31275 (c!667180 (_2!22945 lt!1328861)))))))

(declare-fun b!3829964 () Bool)

(assert (=> b!3829964 (= e!2365253 (list!15063 (xs!15716 (left!31275 (c!667180 (_2!22945 lt!1328861))))))))

(declare-fun b!3829965 () Bool)

(assert (=> b!3829965 (= e!2365253 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 (_2!22945 lt!1328861))))) (list!15059 (right!31605 (left!31275 (c!667180 (_2!22945 lt!1328861)))))))))

(declare-fun d!1136736 () Bool)

(declare-fun c!667802 () Bool)

(assert (=> d!1136736 (= c!667802 ((_ is Empty!12422) (left!31275 (c!667180 (_2!22945 lt!1328861)))))))

(assert (=> d!1136736 (= (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328861)))) e!2365252)))

(assert (= (and d!1136736 c!667802) b!3829962))

(assert (= (and d!1136736 (not c!667802)) b!3829963))

(assert (= (and b!3829963 c!667803) b!3829964))

(assert (= (and b!3829963 (not c!667803)) b!3829965))

(declare-fun m!4383783 () Bool)

(assert (=> b!3829964 m!4383783))

(declare-fun m!4383785 () Bool)

(assert (=> b!3829965 m!4383785))

(declare-fun m!4383787 () Bool)

(assert (=> b!3829965 m!4383787))

(assert (=> b!3829965 m!4383785))

(assert (=> b!3829965 m!4383787))

(declare-fun m!4383789 () Bool)

(assert (=> b!3829965 m!4383789))

(assert (=> b!3828529 d!1136736))

(declare-fun b!3829966 () Bool)

(declare-fun e!2365254 () List!40547)

(assert (=> b!3829966 (= e!2365254 Nil!40423)))

(declare-fun b!3829967 () Bool)

(declare-fun e!2365255 () List!40547)

(assert (=> b!3829967 (= e!2365254 e!2365255)))

(declare-fun c!667805 () Bool)

(assert (=> b!3829967 (= c!667805 ((_ is Leaf!19232) (right!31605 (c!667180 (_2!22945 lt!1328861)))))))

(declare-fun b!3829968 () Bool)

(assert (=> b!3829968 (= e!2365255 (list!15063 (xs!15716 (right!31605 (c!667180 (_2!22945 lt!1328861))))))))

(declare-fun b!3829969 () Bool)

(assert (=> b!3829969 (= e!2365255 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 (_2!22945 lt!1328861))))) (list!15059 (right!31605 (right!31605 (c!667180 (_2!22945 lt!1328861)))))))))

(declare-fun d!1136738 () Bool)

(declare-fun c!667804 () Bool)

(assert (=> d!1136738 (= c!667804 ((_ is Empty!12422) (right!31605 (c!667180 (_2!22945 lt!1328861)))))))

(assert (=> d!1136738 (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328861)))) e!2365254)))

(assert (= (and d!1136738 c!667804) b!3829966))

(assert (= (and d!1136738 (not c!667804)) b!3829967))

(assert (= (and b!3829967 c!667805) b!3829968))

(assert (= (and b!3829967 (not c!667805)) b!3829969))

(declare-fun m!4383791 () Bool)

(assert (=> b!3829968 m!4383791))

(declare-fun m!4383793 () Bool)

(assert (=> b!3829969 m!4383793))

(declare-fun m!4383795 () Bool)

(assert (=> b!3829969 m!4383795))

(assert (=> b!3829969 m!4383793))

(assert (=> b!3829969 m!4383795))

(declare-fun m!4383797 () Bool)

(assert (=> b!3829969 m!4383797))

(assert (=> b!3828529 d!1136738))

(declare-fun d!1136740 () Bool)

(assert (=> d!1136740 (= (get!13413 lt!1329054) (v!38925 lt!1329054))))

(assert (=> b!3827713 d!1136740))

(declare-fun d!1136742 () Bool)

(declare-fun dynLambda!17514 (Int BalanceConc!24438) TokenValue!6454)

(assert (=> d!1136742 (= (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054))))) (dynLambda!17514 (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun b_lambda!112007 () Bool)

(assert (=> (not b_lambda!112007) (not d!1136742)))

(declare-fun tb!219789 () Bool)

(declare-fun t!309013 () Bool)

(assert (=> (and b!3827069 (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309013) tb!219789))

(declare-fun result!267918 () Bool)

(assert (=> tb!219789 (= result!267918 (inv!21 (dynLambda!17514 (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054)))))))))

(declare-fun m!4383799 () Bool)

(assert (=> tb!219789 m!4383799))

(assert (=> d!1136742 t!309013))

(declare-fun b_and!284647 () Bool)

(assert (= b_and!284491 (and (=> t!309013 result!267918) b_and!284647)))

(declare-fun t!309015 () Bool)

(declare-fun tb!219791 () Bool)

(assert (=> (and b!3827404 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309015) tb!219791))

(declare-fun result!267922 () Bool)

(assert (= result!267922 result!267918))

(assert (=> d!1136742 t!309015))

(declare-fun b_and!284649 () Bool)

(assert (= b_and!284499 (and (=> t!309015 result!267922) b_and!284649)))

(declare-fun t!309017 () Bool)

(declare-fun tb!219793 () Bool)

(assert (=> (and b!3828558 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309017) tb!219793))

(declare-fun result!267924 () Bool)

(assert (= result!267924 result!267918))

(assert (=> d!1136742 t!309017))

(declare-fun b_and!284651 () Bool)

(assert (= b_and!284511 (and (=> t!309017 result!267924) b_and!284651)))

(declare-fun tb!219795 () Bool)

(declare-fun t!309019 () Bool)

(assert (=> (and b!3828586 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309019) tb!219795))

(declare-fun result!267926 () Bool)

(assert (= result!267926 result!267918))

(assert (=> d!1136742 t!309019))

(declare-fun b_and!284653 () Bool)

(assert (= b_and!284515 (and (=> t!309019 result!267926) b_and!284653)))

(assert (=> d!1136742 m!4379961))

(declare-fun m!4383801 () Bool)

(assert (=> d!1136742 m!4383801))

(assert (=> b!3827713 d!1136742))

(declare-fun d!1136744 () Bool)

(declare-fun fromListB!2083 (List!40547) BalanceConc!24438)

(assert (=> d!1136744 (= (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054)))) (fromListB!2083 (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054)))))))

(declare-fun bs!582154 () Bool)

(assert (= bs!582154 d!1136744))

(declare-fun m!4383803 () Bool)

(assert (=> bs!582154 m!4383803))

(assert (=> b!3827713 d!1136744))

(declare-fun d!1136746 () Bool)

(assert (=> d!1136746 (= (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328855)))) (innerList!12482 (xs!15716 (c!667180 (_2!22945 lt!1328855)))))))

(assert (=> b!3827732 d!1136746))

(declare-fun d!1136748 () Bool)

(assert (=> d!1136748 (= (list!15055 (_2!22945 lt!1329197)) (list!15059 (c!667180 (_2!22945 lt!1329197))))))

(declare-fun bs!582155 () Bool)

(assert (= bs!582155 d!1136748))

(declare-fun m!4383805 () Bool)

(assert (=> bs!582155 m!4383805))

(assert (=> b!3828015 d!1136748))

(declare-fun b!3829972 () Bool)

(declare-fun e!2365259 () Bool)

(declare-fun e!2365260 () Bool)

(assert (=> b!3829972 (= e!2365259 e!2365260)))

(declare-fun res!1550532 () Bool)

(declare-fun lt!1329873 () tuple2!39632)

(assert (=> b!3829972 (= res!1550532 (< (size!30470 (_2!22950 lt!1329873)) (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328960))))))))

(assert (=> b!3829972 (=> (not res!1550532) (not e!2365260))))

(declare-fun b!3829973 () Bool)

(declare-fun e!2365261 () tuple2!39632)

(assert (=> b!3829973 (= e!2365261 (tuple2!39633 Nil!40424 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))

(declare-fun b!3829974 () Bool)

(assert (=> b!3829974 (= e!2365259 (= (_2!22950 lt!1329873) (list!15055 (_2!22946 (v!38923 lt!1328960)))))))

(declare-fun b!3829975 () Bool)

(assert (=> b!3829975 (= e!2365260 (not (isEmpty!23858 (_1!22950 lt!1329873))))))

(declare-fun b!3829976 () Bool)

(declare-fun lt!1329872 () Option!8650)

(declare-fun lt!1329871 () tuple2!39632)

(assert (=> b!3829976 (= e!2365261 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329872)) (_1!22950 lt!1329871)) (_2!22950 lt!1329871)))))

(assert (=> b!3829976 (= lt!1329871 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329872))))))

(declare-fun d!1136750 () Bool)

(assert (=> d!1136750 e!2365259))

(declare-fun c!667806 () Bool)

(assert (=> d!1136750 (= c!667806 (> (size!30476 (_1!22950 lt!1329873)) 0))))

(assert (=> d!1136750 (= lt!1329873 e!2365261)))

(declare-fun c!667807 () Bool)

(assert (=> d!1136750 (= c!667807 ((_ is Some!8649) lt!1329872))))

(assert (=> d!1136750 (= lt!1329872 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))

(assert (=> d!1136750 (= (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960)))) lt!1329873)))

(assert (= (and d!1136750 c!667807) b!3829976))

(assert (= (and d!1136750 (not c!667807)) b!3829973))

(assert (= (and d!1136750 c!667806) b!3829972))

(assert (= (and d!1136750 (not c!667806)) b!3829974))

(assert (= (and b!3829972 res!1550532) b!3829975))

(declare-fun m!4383807 () Bool)

(assert (=> b!3829972 m!4383807))

(assert (=> b!3829972 m!4380339))

(declare-fun m!4383809 () Bool)

(assert (=> b!3829972 m!4383809))

(declare-fun m!4383811 () Bool)

(assert (=> b!3829975 m!4383811))

(declare-fun m!4383813 () Bool)

(assert (=> b!3829976 m!4383813))

(declare-fun m!4383815 () Bool)

(assert (=> d!1136750 m!4383815))

(assert (=> d!1136750 m!4380339))

(declare-fun m!4383817 () Bool)

(assert (=> d!1136750 m!4383817))

(assert (=> b!3828015 d!1136750))

(declare-fun d!1136752 () Bool)

(assert (=> d!1136752 (= (list!15055 (_2!22946 (v!38923 lt!1328960))) (list!15059 (c!667180 (_2!22946 (v!38923 lt!1328960)))))))

(declare-fun bs!582156 () Bool)

(assert (= bs!582156 d!1136752))

(declare-fun m!4383819 () Bool)

(assert (=> bs!582156 m!4383819))

(assert (=> b!3828015 d!1136752))

(declare-fun b!3830005 () Bool)

(declare-fun e!2365281 () Bool)

(declare-fun e!2365280 () Bool)

(assert (=> b!3830005 (= e!2365281 e!2365280)))

(declare-fun c!667816 () Bool)

(assert (=> b!3830005 (= c!667816 ((_ is EmptyLang!11129) (regex!6224 (h!45845 rules!1265))))))

(declare-fun b!3830006 () Bool)

(declare-fun lt!1329876 () Bool)

(assert (=> b!3830006 (= e!2365280 (not lt!1329876))))

(declare-fun bm!281403 () Bool)

(declare-fun call!281408 () Bool)

(assert (=> bm!281403 (= call!281408 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(declare-fun b!3830007 () Bool)

(declare-fun e!2365279 () Bool)

(assert (=> b!3830007 (= e!2365279 (= (head!8068 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))) (c!667179 (regex!6224 (h!45845 rules!1265)))))))

(declare-fun b!3830008 () Bool)

(declare-fun e!2365282 () Bool)

(assert (=> b!3830008 (= e!2365282 (not (= (head!8068 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))) (c!667179 (regex!6224 (h!45845 rules!1265))))))))

(declare-fun b!3830009 () Bool)

(declare-fun res!1550555 () Bool)

(assert (=> b!3830009 (=> (not res!1550555) (not e!2365279))))

(assert (=> b!3830009 (= res!1550555 (not call!281408))))

(declare-fun b!3830010 () Bool)

(declare-fun e!2365277 () Bool)

(declare-fun e!2365278 () Bool)

(assert (=> b!3830010 (= e!2365277 e!2365278)))

(declare-fun res!1550552 () Bool)

(assert (=> b!3830010 (=> (not res!1550552) (not e!2365278))))

(assert (=> b!3830010 (= res!1550552 (not lt!1329876))))

(declare-fun d!1136754 () Bool)

(assert (=> d!1136754 e!2365281))

(declare-fun c!667815 () Bool)

(assert (=> d!1136754 (= c!667815 ((_ is EmptyExpr!11129) (regex!6224 (h!45845 rules!1265))))))

(declare-fun e!2365276 () Bool)

(assert (=> d!1136754 (= lt!1329876 e!2365276)))

(declare-fun c!667814 () Bool)

(assert (=> d!1136754 (= c!667814 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(declare-fun validRegex!5070 (Regex!11129) Bool)

(assert (=> d!1136754 (validRegex!5070 (regex!6224 (h!45845 rules!1265)))))

(assert (=> d!1136754 (= (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))) lt!1329876)))

(declare-fun b!3830011 () Bool)

(declare-fun res!1550554 () Bool)

(assert (=> b!3830011 (=> (not res!1550554) (not e!2365279))))

(assert (=> b!3830011 (= res!1550554 (isEmpty!23850 (tail!5795 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166))))))))

(declare-fun b!3830012 () Bool)

(declare-fun nullable!3871 (Regex!11129) Bool)

(assert (=> b!3830012 (= e!2365276 (nullable!3871 (regex!6224 (h!45845 rules!1265))))))

(declare-fun b!3830013 () Bool)

(declare-fun res!1550556 () Bool)

(assert (=> b!3830013 (=> res!1550556 e!2365282)))

(assert (=> b!3830013 (= res!1550556 (not (isEmpty!23850 (tail!5795 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))))

(declare-fun b!3830014 () Bool)

(assert (=> b!3830014 (= e!2365278 e!2365282)))

(declare-fun res!1550553 () Bool)

(assert (=> b!3830014 (=> res!1550553 e!2365282)))

(assert (=> b!3830014 (= res!1550553 call!281408)))

(declare-fun b!3830015 () Bool)

(declare-fun res!1550549 () Bool)

(assert (=> b!3830015 (=> res!1550549 e!2365277)))

(assert (=> b!3830015 (= res!1550549 (not ((_ is ElementMatch!11129) (regex!6224 (h!45845 rules!1265)))))))

(assert (=> b!3830015 (= e!2365280 e!2365277)))

(declare-fun b!3830016 () Bool)

(assert (=> b!3830016 (= e!2365281 (= lt!1329876 call!281408))))

(declare-fun b!3830017 () Bool)

(declare-fun res!1550550 () Bool)

(assert (=> b!3830017 (=> res!1550550 e!2365277)))

(assert (=> b!3830017 (= res!1550550 e!2365279)))

(declare-fun res!1550551 () Bool)

(assert (=> b!3830017 (=> (not res!1550551) (not e!2365279))))

(assert (=> b!3830017 (= res!1550551 lt!1329876)))

(declare-fun b!3830018 () Bool)

(declare-fun derivativeStep!3390 (Regex!11129 C!22444) Regex!11129)

(assert (=> b!3830018 (= e!2365276 (matchR!5322 (derivativeStep!3390 (regex!6224 (h!45845 rules!1265)) (head!8068 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166))))) (tail!5795 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166))))))))

(assert (= (and d!1136754 c!667814) b!3830012))

(assert (= (and d!1136754 (not c!667814)) b!3830018))

(assert (= (and d!1136754 c!667815) b!3830016))

(assert (= (and d!1136754 (not c!667815)) b!3830005))

(assert (= (and b!3830005 c!667816) b!3830006))

(assert (= (and b!3830005 (not c!667816)) b!3830015))

(assert (= (and b!3830015 (not res!1550549)) b!3830017))

(assert (= (and b!3830017 res!1550551) b!3830009))

(assert (= (and b!3830009 res!1550555) b!3830011))

(assert (= (and b!3830011 res!1550554) b!3830007))

(assert (= (and b!3830017 (not res!1550550)) b!3830010))

(assert (= (and b!3830010 res!1550552) b!3830014))

(assert (= (and b!3830014 (not res!1550553)) b!3830013))

(assert (= (and b!3830013 (not res!1550556)) b!3830008))

(assert (= (or b!3830016 b!3830009 b!3830014) bm!281403))

(declare-fun m!4383821 () Bool)

(assert (=> b!3830018 m!4383821))

(assert (=> b!3830018 m!4383821))

(declare-fun m!4383823 () Bool)

(assert (=> b!3830018 m!4383823))

(declare-fun m!4383825 () Bool)

(assert (=> b!3830018 m!4383825))

(assert (=> b!3830018 m!4383823))

(assert (=> b!3830018 m!4383825))

(declare-fun m!4383827 () Bool)

(assert (=> b!3830018 m!4383827))

(assert (=> b!3830008 m!4383821))

(assert (=> b!3830007 m!4383821))

(assert (=> b!3830013 m!4383825))

(assert (=> b!3830013 m!4383825))

(declare-fun m!4383829 () Bool)

(assert (=> b!3830013 m!4383829))

(declare-fun m!4383831 () Bool)

(assert (=> b!3830012 m!4383831))

(assert (=> b!3830011 m!4383825))

(assert (=> b!3830011 m!4383825))

(assert (=> b!3830011 m!4383829))

(assert (=> d!1136754 m!4380287))

(declare-fun m!4383833 () Bool)

(assert (=> d!1136754 m!4383833))

(assert (=> bm!281403 m!4380287))

(assert (=> b!3827972 d!1136754))

(declare-fun bm!281420 () Bool)

(declare-fun call!281431 () Unit!58192)

(assert (=> bm!281420 (= call!281431 (lemmaIsPrefixRefl!2118 lt!1329166 lt!1329166))))

(declare-fun b!3830047 () Bool)

(declare-fun e!2365305 () tuple2!39636)

(assert (=> b!3830047 (= e!2365305 (tuple2!39637 Nil!40423 lt!1329166))))

(declare-fun b!3830048 () Bool)

(declare-fun e!2365306 () Unit!58192)

(declare-fun Unit!58194 () Unit!58192)

(assert (=> b!3830048 (= e!2365306 Unit!58194)))

(declare-fun b!3830049 () Bool)

(declare-fun e!2365304 () Bool)

(declare-fun e!2365301 () Bool)

(assert (=> b!3830049 (= e!2365304 e!2365301)))

(declare-fun res!1550562 () Bool)

(assert (=> b!3830049 (=> res!1550562 e!2365301)))

(declare-fun lt!1329951 () tuple2!39636)

(assert (=> b!3830049 (= res!1550562 (isEmpty!23850 (_1!22952 lt!1329951)))))

(declare-fun b!3830050 () Bool)

(assert (=> b!3830050 (= e!2365301 (>= (size!30470 (_1!22952 lt!1329951)) (size!30470 Nil!40423)))))

(declare-fun b!3830051 () Bool)

(declare-fun e!2365302 () tuple2!39636)

(assert (=> b!3830051 (= e!2365302 (tuple2!39637 Nil!40423 lt!1329166))))

(declare-fun d!1136756 () Bool)

(assert (=> d!1136756 e!2365304))

(declare-fun res!1550561 () Bool)

(assert (=> d!1136756 (=> (not res!1550561) (not e!2365304))))

(assert (=> d!1136756 (= res!1550561 (= (++!10187 (_1!22952 lt!1329951) (_2!22952 lt!1329951)) lt!1329166))))

(assert (=> d!1136756 (= lt!1329951 e!2365302)))

(declare-fun c!667829 () Bool)

(declare-fun lostCause!969 (Regex!11129) Bool)

(assert (=> d!1136756 (= c!667829 (lostCause!969 (regex!6224 (h!45845 rules!1265))))))

(declare-fun lt!1329944 () Unit!58192)

(declare-fun Unit!58195 () Unit!58192)

(assert (=> d!1136756 (= lt!1329944 Unit!58195)))

(declare-fun getSuffix!1793 (List!40547 List!40547) List!40547)

(assert (=> d!1136756 (= (getSuffix!1793 lt!1329166 Nil!40423) lt!1329166)))

(declare-fun lt!1329937 () Unit!58192)

(declare-fun lt!1329948 () Unit!58192)

(assert (=> d!1136756 (= lt!1329937 lt!1329948)))

(declare-fun lt!1329958 () List!40547)

(assert (=> d!1136756 (= lt!1329166 lt!1329958)))

(declare-fun lemmaSamePrefixThenSameSuffix!1561 (List!40547 List!40547 List!40547 List!40547 List!40547) Unit!58192)

(assert (=> d!1136756 (= lt!1329948 (lemmaSamePrefixThenSameSuffix!1561 Nil!40423 lt!1329166 Nil!40423 lt!1329958 lt!1329166))))

(assert (=> d!1136756 (= lt!1329958 (getSuffix!1793 lt!1329166 Nil!40423))))

(declare-fun lt!1329946 () Unit!58192)

(declare-fun lt!1329954 () Unit!58192)

(assert (=> d!1136756 (= lt!1329946 lt!1329954)))

(assert (=> d!1136756 (isPrefix!3333 Nil!40423 (++!10187 Nil!40423 lt!1329166))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2197 (List!40547 List!40547) Unit!58192)

(assert (=> d!1136756 (= lt!1329954 (lemmaConcatTwoListThenFirstIsPrefix!2197 Nil!40423 lt!1329166))))

(assert (=> d!1136756 (validRegex!5070 (regex!6224 (h!45845 rules!1265)))))

(assert (=> d!1136756 (= (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)) lt!1329951)))

(declare-fun bm!281421 () Bool)

(declare-fun call!281425 () C!22444)

(assert (=> bm!281421 (= call!281425 (head!8068 lt!1329166))))

(declare-fun bm!281422 () Bool)

(declare-fun call!281432 () Bool)

(assert (=> bm!281422 (= call!281432 (nullable!3871 (regex!6224 (h!45845 rules!1265))))))

(declare-fun b!3830052 () Bool)

(declare-fun lt!1329955 () tuple2!39636)

(assert (=> b!3830052 (= e!2365305 lt!1329955)))

(declare-fun b!3830053 () Bool)

(declare-fun c!667830 () Bool)

(assert (=> b!3830053 (= c!667830 call!281432)))

(declare-fun lt!1329947 () Unit!58192)

(declare-fun lt!1329959 () Unit!58192)

(assert (=> b!3830053 (= lt!1329947 lt!1329959)))

(declare-fun lt!1329941 () C!22444)

(declare-fun lt!1329960 () List!40547)

(assert (=> b!3830053 (= (++!10187 (++!10187 Nil!40423 (Cons!40423 lt!1329941 Nil!40423)) lt!1329960) lt!1329166)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1213 (List!40547 C!22444 List!40547 List!40547) Unit!58192)

(assert (=> b!3830053 (= lt!1329959 (lemmaMoveElementToOtherListKeepsConcatEq!1213 Nil!40423 lt!1329941 lt!1329960 lt!1329166))))

(assert (=> b!3830053 (= lt!1329960 (tail!5795 lt!1329166))))

(assert (=> b!3830053 (= lt!1329941 (head!8068 lt!1329166))))

(declare-fun lt!1329949 () Unit!58192)

(declare-fun lt!1329940 () Unit!58192)

(assert (=> b!3830053 (= lt!1329949 lt!1329940)))

(assert (=> b!3830053 (isPrefix!3333 (++!10187 Nil!40423 (Cons!40423 (head!8068 (getSuffix!1793 lt!1329166 Nil!40423)) Nil!40423)) lt!1329166)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!595 (List!40547 List!40547) Unit!58192)

(assert (=> b!3830053 (= lt!1329940 (lemmaAddHeadSuffixToPrefixStillPrefix!595 Nil!40423 lt!1329166))))

(declare-fun lt!1329956 () Unit!58192)

(declare-fun lt!1329943 () Unit!58192)

(assert (=> b!3830053 (= lt!1329956 lt!1329943)))

(assert (=> b!3830053 (= lt!1329943 (lemmaAddHeadSuffixToPrefixStillPrefix!595 Nil!40423 lt!1329166))))

(declare-fun lt!1329939 () List!40547)

(assert (=> b!3830053 (= lt!1329939 (++!10187 Nil!40423 (Cons!40423 (head!8068 lt!1329166) Nil!40423)))))

(declare-fun lt!1329938 () Unit!58192)

(assert (=> b!3830053 (= lt!1329938 e!2365306)))

(declare-fun c!667833 () Bool)

(assert (=> b!3830053 (= c!667833 (= (size!30470 Nil!40423) (size!30470 lt!1329166)))))

(declare-fun lt!1329936 () Unit!58192)

(declare-fun lt!1329950 () Unit!58192)

(assert (=> b!3830053 (= lt!1329936 lt!1329950)))

(assert (=> b!3830053 (<= (size!30470 Nil!40423) (size!30470 lt!1329166))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!403 (List!40547 List!40547) Unit!58192)

(assert (=> b!3830053 (= lt!1329950 (lemmaIsPrefixThenSmallerEqSize!403 Nil!40423 lt!1329166))))

(declare-fun e!2365299 () tuple2!39636)

(declare-fun e!2365303 () tuple2!39636)

(assert (=> b!3830053 (= e!2365299 e!2365303)))

(declare-fun bm!281423 () Bool)

(declare-fun call!281429 () Bool)

(assert (=> bm!281423 (= call!281429 (isPrefix!3333 lt!1329166 lt!1329166))))

(declare-fun b!3830054 () Bool)

(declare-fun Unit!58196 () Unit!58192)

(assert (=> b!3830054 (= e!2365306 Unit!58196)))

(declare-fun lt!1329952 () Unit!58192)

(assert (=> b!3830054 (= lt!1329952 call!281431)))

(assert (=> b!3830054 call!281429))

(declare-fun lt!1329942 () Unit!58192)

(assert (=> b!3830054 (= lt!1329942 lt!1329952)))

(declare-fun lt!1329934 () Unit!58192)

(declare-fun call!281428 () Unit!58192)

(assert (=> b!3830054 (= lt!1329934 call!281428)))

(assert (=> b!3830054 (= lt!1329166 Nil!40423)))

(declare-fun lt!1329953 () Unit!58192)

(assert (=> b!3830054 (= lt!1329953 lt!1329934)))

(assert (=> b!3830054 false))

(declare-fun b!3830055 () Bool)

(declare-fun call!281427 () tuple2!39636)

(assert (=> b!3830055 (= e!2365303 call!281427)))

(declare-fun b!3830056 () Bool)

(declare-fun c!667832 () Bool)

(assert (=> b!3830056 (= c!667832 call!281432)))

(declare-fun lt!1329945 () Unit!58192)

(declare-fun lt!1329933 () Unit!58192)

(assert (=> b!3830056 (= lt!1329945 lt!1329933)))

(assert (=> b!3830056 (= lt!1329166 Nil!40423)))

(assert (=> b!3830056 (= lt!1329933 call!281428)))

(declare-fun lt!1329935 () Unit!58192)

(declare-fun lt!1329957 () Unit!58192)

(assert (=> b!3830056 (= lt!1329935 lt!1329957)))

(assert (=> b!3830056 call!281429))

(assert (=> b!3830056 (= lt!1329957 call!281431)))

(declare-fun e!2365300 () tuple2!39636)

(assert (=> b!3830056 (= e!2365299 e!2365300)))

(declare-fun bm!281424 () Bool)

(declare-fun call!281430 () List!40547)

(assert (=> bm!281424 (= call!281430 (tail!5795 lt!1329166))))

(declare-fun b!3830057 () Bool)

(assert (=> b!3830057 (= e!2365302 e!2365299)))

(declare-fun c!667831 () Bool)

(assert (=> b!3830057 (= c!667831 (= (size!30470 Nil!40423) (size!30470 lt!1329166)))))

(declare-fun b!3830058 () Bool)

(assert (=> b!3830058 (= e!2365300 (tuple2!39637 Nil!40423 Nil!40423))))

(declare-fun bm!281425 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!696 (List!40547 List!40547 List!40547) Unit!58192)

(assert (=> bm!281425 (= call!281428 (lemmaIsPrefixSameLengthThenSameList!696 lt!1329166 Nil!40423 lt!1329166))))

(declare-fun bm!281426 () Bool)

(declare-fun call!281426 () Regex!11129)

(assert (=> bm!281426 (= call!281426 (derivativeStep!3390 (regex!6224 (h!45845 rules!1265)) call!281425))))

(declare-fun b!3830059 () Bool)

(assert (=> b!3830059 (= e!2365300 (tuple2!39637 Nil!40423 lt!1329166))))

(declare-fun bm!281427 () Bool)

(assert (=> bm!281427 (= call!281427 (findLongestMatchInner!1145 call!281426 lt!1329939 (+ (size!30470 Nil!40423) 1) call!281430 lt!1329166 (size!30470 lt!1329166)))))

(declare-fun b!3830060 () Bool)

(assert (=> b!3830060 (= e!2365303 e!2365305)))

(assert (=> b!3830060 (= lt!1329955 call!281427)))

(declare-fun c!667834 () Bool)

(assert (=> b!3830060 (= c!667834 (isEmpty!23850 (_1!22952 lt!1329955)))))

(assert (= (and d!1136756 c!667829) b!3830051))

(assert (= (and d!1136756 (not c!667829)) b!3830057))

(assert (= (and b!3830057 c!667831) b!3830056))

(assert (= (and b!3830057 (not c!667831)) b!3830053))

(assert (= (and b!3830056 c!667832) b!3830058))

(assert (= (and b!3830056 (not c!667832)) b!3830059))

(assert (= (and b!3830053 c!667833) b!3830054))

(assert (= (and b!3830053 (not c!667833)) b!3830048))

(assert (= (and b!3830053 c!667830) b!3830060))

(assert (= (and b!3830053 (not c!667830)) b!3830055))

(assert (= (and b!3830060 c!667834) b!3830047))

(assert (= (and b!3830060 (not c!667834)) b!3830052))

(assert (= (or b!3830060 b!3830055) bm!281421))

(assert (= (or b!3830060 b!3830055) bm!281424))

(assert (= (or b!3830060 b!3830055) bm!281426))

(assert (= (or b!3830060 b!3830055) bm!281427))

(assert (= (or b!3830056 b!3830054) bm!281425))

(assert (= (or b!3830056 b!3830054) bm!281423))

(assert (= (or b!3830056 b!3830053) bm!281422))

(assert (= (or b!3830056 b!3830054) bm!281420))

(assert (= (and d!1136756 res!1550561) b!3830049))

(assert (= (and b!3830049 (not res!1550562)) b!3830050))

(declare-fun m!4383835 () Bool)

(assert (=> b!3830050 m!4383835))

(assert (=> b!3830050 m!4380267))

(declare-fun m!4383837 () Bool)

(assert (=> bm!281426 m!4383837))

(declare-fun m!4383839 () Bool)

(assert (=> b!3830060 m!4383839))

(assert (=> bm!281422 m!4383831))

(declare-fun m!4383841 () Bool)

(assert (=> bm!281420 m!4383841))

(declare-fun m!4383843 () Bool)

(assert (=> bm!281421 m!4383843))

(declare-fun m!4383845 () Bool)

(assert (=> bm!281424 m!4383845))

(declare-fun m!4383847 () Bool)

(assert (=> bm!281425 m!4383847))

(declare-fun m!4383849 () Bool)

(assert (=> b!3830049 m!4383849))

(declare-fun m!4383851 () Bool)

(assert (=> d!1136756 m!4383851))

(declare-fun m!4383853 () Bool)

(assert (=> d!1136756 m!4383853))

(declare-fun m!4383855 () Bool)

(assert (=> d!1136756 m!4383855))

(declare-fun m!4383857 () Bool)

(assert (=> d!1136756 m!4383857))

(declare-fun m!4383859 () Bool)

(assert (=> d!1136756 m!4383859))

(declare-fun m!4383861 () Bool)

(assert (=> d!1136756 m!4383861))

(assert (=> d!1136756 m!4383857))

(declare-fun m!4383863 () Bool)

(assert (=> d!1136756 m!4383863))

(assert (=> d!1136756 m!4383833))

(declare-fun m!4383865 () Bool)

(assert (=> b!3830053 m!4383865))

(assert (=> b!3830053 m!4383855))

(declare-fun m!4383867 () Bool)

(assert (=> b!3830053 m!4383867))

(assert (=> b!3830053 m!4383855))

(declare-fun m!4383869 () Bool)

(assert (=> b!3830053 m!4383869))

(assert (=> b!3830053 m!4380267))

(declare-fun m!4383871 () Bool)

(assert (=> b!3830053 m!4383871))

(assert (=> b!3830053 m!4380275))

(declare-fun m!4383873 () Bool)

(assert (=> b!3830053 m!4383873))

(assert (=> b!3830053 m!4383845))

(declare-fun m!4383875 () Bool)

(assert (=> b!3830053 m!4383875))

(assert (=> b!3830053 m!4383843))

(assert (=> b!3830053 m!4383869))

(declare-fun m!4383877 () Bool)

(assert (=> b!3830053 m!4383877))

(declare-fun m!4383879 () Bool)

(assert (=> b!3830053 m!4383879))

(assert (=> b!3830053 m!4383871))

(declare-fun m!4383881 () Bool)

(assert (=> b!3830053 m!4383881))

(assert (=> bm!281427 m!4380275))

(declare-fun m!4383883 () Bool)

(assert (=> bm!281427 m!4383883))

(declare-fun m!4383885 () Bool)

(assert (=> bm!281423 m!4383885))

(assert (=> b!3827972 d!1136756))

(declare-fun d!1136758 () Bool)

(declare-fun lt!1329961 () Int)

(assert (=> d!1136758 (>= lt!1329961 0)))

(declare-fun e!2365307 () Int)

(assert (=> d!1136758 (= lt!1329961 e!2365307)))

(declare-fun c!667835 () Bool)

(assert (=> d!1136758 (= c!667835 ((_ is Nil!40423) Nil!40423))))

(assert (=> d!1136758 (= (size!30470 Nil!40423) lt!1329961)))

(declare-fun b!3830061 () Bool)

(assert (=> b!3830061 (= e!2365307 0)))

(declare-fun b!3830062 () Bool)

(assert (=> b!3830062 (= e!2365307 (+ 1 (size!30470 (t!308874 Nil!40423))))))

(assert (= (and d!1136758 c!667835) b!3830061))

(assert (= (and d!1136758 (not c!667835)) b!3830062))

(declare-fun m!4383887 () Bool)

(assert (=> b!3830062 m!4383887))

(assert (=> b!3827972 d!1136758))

(declare-fun d!1136760 () Bool)

(declare-fun lt!1329962 () Int)

(assert (=> d!1136760 (>= lt!1329962 0)))

(declare-fun e!2365308 () Int)

(assert (=> d!1136760 (= lt!1329962 e!2365308)))

(declare-fun c!667836 () Bool)

(assert (=> d!1136760 (= c!667836 ((_ is Nil!40423) lt!1329166))))

(assert (=> d!1136760 (= (size!30470 lt!1329166) lt!1329962)))

(declare-fun b!3830063 () Bool)

(assert (=> b!3830063 (= e!2365308 0)))

(declare-fun b!3830064 () Bool)

(assert (=> b!3830064 (= e!2365308 (+ 1 (size!30470 (t!308874 lt!1329166))))))

(assert (= (and d!1136760 c!667836) b!3830063))

(assert (= (and d!1136760 (not c!667836)) b!3830064))

(declare-fun m!4383889 () Bool)

(assert (=> b!3830064 m!4383889))

(assert (=> b!3827972 d!1136760))

(declare-fun b!3830065 () Bool)

(declare-fun res!1550565 () Bool)

(declare-fun e!2365310 () Bool)

(assert (=> b!3830065 (=> (not res!1550565) (not e!2365310))))

(assert (=> b!3830065 (= res!1550565 (isBalanced!3601 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))))))

(declare-fun b!3830066 () Bool)

(declare-fun res!1550568 () Bool)

(assert (=> b!3830066 (=> (not res!1550568) (not e!2365310))))

(assert (=> b!3830066 (= res!1550568 (<= (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))))) 1))))

(declare-fun b!3830067 () Bool)

(declare-fun res!1550564 () Bool)

(assert (=> b!3830067 (=> (not res!1550564) (not e!2365310))))

(assert (=> b!3830067 (= res!1550564 (isBalanced!3601 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))))))

(declare-fun b!3830068 () Bool)

(declare-fun e!2365309 () Bool)

(assert (=> b!3830068 (= e!2365309 e!2365310)))

(declare-fun res!1550567 () Bool)

(assert (=> b!3830068 (=> (not res!1550567) (not e!2365310))))

(assert (=> b!3830068 (= res!1550567 (<= (- 1) (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))))))))

(declare-fun d!1136762 () Bool)

(declare-fun res!1550563 () Bool)

(assert (=> d!1136762 (=> res!1550563 e!2365309)))

(assert (=> d!1136762 (= res!1550563 (not ((_ is Node!12423) (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))))))))

(assert (=> d!1136762 (= (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))) e!2365309)))

(declare-fun b!3830069 () Bool)

(declare-fun res!1550566 () Bool)

(assert (=> b!3830069 (=> (not res!1550566) (not e!2365310))))

(assert (=> b!3830069 (= res!1550566 (not (isEmpty!23863 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))))))))

(declare-fun b!3830070 () Bool)

(assert (=> b!3830070 (= e!2365310 (not (isEmpty!23863 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957)))))))))

(assert (= (and d!1136762 (not res!1550563)) b!3830068))

(assert (= (and b!3830068 res!1550567) b!3830066))

(assert (= (and b!3830066 res!1550568) b!3830065))

(assert (= (and b!3830065 res!1550565) b!3830067))

(assert (= (and b!3830067 res!1550564) b!3830069))

(assert (= (and b!3830069 res!1550566) b!3830070))

(declare-fun m!4383891 () Bool)

(assert (=> b!3830067 m!4383891))

(declare-fun m!4383893 () Bool)

(assert (=> b!3830065 m!4383893))

(declare-fun m!4383895 () Bool)

(assert (=> b!3830070 m!4383895))

(declare-fun m!4383897 () Bool)

(assert (=> b!3830069 m!4383897))

(declare-fun m!4383899 () Bool)

(assert (=> b!3830066 m!4383899))

(declare-fun m!4383901 () Bool)

(assert (=> b!3830066 m!4383901))

(assert (=> b!3830068 m!4383899))

(assert (=> b!3830068 m!4383901))

(assert (=> d!1135634 d!1136762))

(declare-fun d!1136764 () Bool)

(declare-fun e!2365311 () Bool)

(assert (=> d!1136764 e!2365311))

(declare-fun res!1550569 () Bool)

(assert (=> d!1136764 (=> (not res!1550569) (not e!2365311))))

(declare-fun lt!1329963 () Conc!12423)

(assert (=> d!1136764 (= res!1550569 (isBalanced!3601 lt!1329963))))

(assert (=> d!1136764 (= lt!1329963 (++!10191 (Leaf!19233 (fill!201 1 (_1!22946 (v!38923 lt!1328957))) 1) (c!667181 (_1!22945 lt!1328955))))))

(assert (=> d!1136764 (isBalanced!3601 (c!667181 (_1!22945 lt!1328955)))))

(assert (=> d!1136764 (= (prepend!1382 (c!667181 (_1!22945 lt!1328955)) (_1!22946 (v!38923 lt!1328957))) lt!1329963)))

(declare-fun b!3830071 () Bool)

(assert (=> b!3830071 (= e!2365311 (= (list!15060 lt!1329963) (Cons!40424 (_1!22946 (v!38923 lt!1328957)) (list!15060 (c!667181 (_1!22945 lt!1328955))))))))

(assert (= (and d!1136764 res!1550569) b!3830071))

(declare-fun m!4383903 () Bool)

(assert (=> d!1136764 m!4383903))

(declare-fun m!4383905 () Bool)

(assert (=> d!1136764 m!4383905))

(declare-fun m!4383907 () Bool)

(assert (=> d!1136764 m!4383907))

(declare-fun m!4383909 () Bool)

(assert (=> d!1136764 m!4383909))

(declare-fun m!4383911 () Bool)

(assert (=> b!3830071 m!4383911))

(declare-fun m!4383913 () Bool)

(assert (=> b!3830071 m!4383913))

(assert (=> d!1135634 d!1136764))

(declare-fun d!1136766 () Bool)

(declare-fun lt!1329964 () Int)

(assert (=> d!1136766 (>= lt!1329964 0)))

(declare-fun e!2365312 () Int)

(assert (=> d!1136766 (= lt!1329964 e!2365312)))

(declare-fun c!667837 () Bool)

(assert (=> d!1136766 (= c!667837 ((_ is Nil!40423) (list!15055 (_2!22945 lt!1328959))))))

(assert (=> d!1136766 (= (size!30470 (list!15055 (_2!22945 lt!1328959))) lt!1329964)))

(declare-fun b!3830072 () Bool)

(assert (=> b!3830072 (= e!2365312 0)))

(declare-fun b!3830073 () Bool)

(assert (=> b!3830073 (= e!2365312 (+ 1 (size!30470 (t!308874 (list!15055 (_2!22945 lt!1328959))))))))

(assert (= (and d!1136766 c!667837) b!3830072))

(assert (= (and d!1136766 (not c!667837)) b!3830073))

(declare-fun m!4383915 () Bool)

(assert (=> b!3830073 m!4383915))

(assert (=> d!1135822 d!1136766))

(assert (=> d!1135822 d!1135538))

(declare-fun d!1136768 () Bool)

(declare-fun lt!1329965 () Int)

(assert (=> d!1136768 (= lt!1329965 (size!30470 (list!15059 (c!667180 (_2!22945 lt!1328959)))))))

(assert (=> d!1136768 (= lt!1329965 (ite ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328959))) 0 (ite ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328959))) (csize!25075 (c!667180 (_2!22945 lt!1328959))) (csize!25074 (c!667180 (_2!22945 lt!1328959))))))))

(assert (=> d!1136768 (= (size!30478 (c!667180 (_2!22945 lt!1328959))) lt!1329965)))

(declare-fun bs!582157 () Bool)

(assert (= bs!582157 d!1136768))

(assert (=> bs!582157 m!4380013))

(assert (=> bs!582157 m!4380013))

(declare-fun m!4383917 () Bool)

(assert (=> bs!582157 m!4383917))

(assert (=> d!1135822 d!1136768))

(declare-fun d!1136770 () Bool)

(declare-fun lt!1329966 () Int)

(assert (=> d!1136770 (>= lt!1329966 0)))

(declare-fun e!2365313 () Int)

(assert (=> d!1136770 (= lt!1329966 e!2365313)))

(declare-fun c!667838 () Bool)

(assert (=> d!1136770 (= c!667838 ((_ is Nil!40424) (list!15064 (xs!15717 (c!667181 acc!335)))))))

(assert (=> d!1136770 (= (size!30476 (list!15064 (xs!15717 (c!667181 acc!335)))) lt!1329966)))

(declare-fun b!3830074 () Bool)

(assert (=> b!3830074 (= e!2365313 0)))

(declare-fun b!3830075 () Bool)

(assert (=> b!3830075 (= e!2365313 (+ 1 (size!30476 (t!308875 (list!15064 (xs!15717 (c!667181 acc!335)))))))))

(assert (= (and d!1136770 c!667838) b!3830074))

(assert (= (and d!1136770 (not c!667838)) b!3830075))

(declare-fun m!4383919 () Bool)

(assert (=> b!3830075 m!4383919))

(assert (=> d!1135624 d!1136770))

(declare-fun d!1136772 () Bool)

(assert (=> d!1136772 (= (list!15064 (xs!15717 (c!667181 acc!335))) (innerList!12483 (xs!15717 (c!667181 acc!335))))))

(assert (=> d!1135624 d!1136772))

(declare-fun d!1136774 () Bool)

(declare-fun lt!1329969 () Bool)

(declare-fun content!5994 (List!40551) (InoxSet String!45952))

(assert (=> d!1136774 (= lt!1329969 (select (content!5994 Nil!40427) (tag!7084 (h!45845 rules!1265))))))

(declare-fun e!2365319 () Bool)

(assert (=> d!1136774 (= lt!1329969 e!2365319)))

(declare-fun res!1550574 () Bool)

(assert (=> d!1136774 (=> (not res!1550574) (not e!2365319))))

(assert (=> d!1136774 (= res!1550574 ((_ is Cons!40427) Nil!40427))))

(assert (=> d!1136774 (= (contains!8207 Nil!40427 (tag!7084 (h!45845 rules!1265))) lt!1329969)))

(declare-fun b!3830080 () Bool)

(declare-fun e!2365318 () Bool)

(assert (=> b!3830080 (= e!2365319 e!2365318)))

(declare-fun res!1550575 () Bool)

(assert (=> b!3830080 (=> res!1550575 e!2365318)))

(assert (=> b!3830080 (= res!1550575 (= (h!45847 Nil!40427) (tag!7084 (h!45845 rules!1265))))))

(declare-fun b!3830081 () Bool)

(assert (=> b!3830081 (= e!2365318 (contains!8207 (t!308878 Nil!40427) (tag!7084 (h!45845 rules!1265))))))

(assert (= (and d!1136774 res!1550574) b!3830080))

(assert (= (and b!3830080 (not res!1550575)) b!3830081))

(declare-fun m!4383921 () Bool)

(assert (=> d!1136774 m!4383921))

(declare-fun m!4383923 () Bool)

(assert (=> d!1136774 m!4383923))

(declare-fun m!4383925 () Bool)

(assert (=> b!3830081 m!4383925))

(assert (=> b!3828364 d!1136774))

(declare-fun b!3830083 () Bool)

(declare-fun e!2365320 () List!40548)

(declare-fun e!2365321 () List!40548)

(assert (=> b!3830083 (= e!2365320 e!2365321)))

(declare-fun c!667840 () Bool)

(assert (=> b!3830083 (= c!667840 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328956))))))

(declare-fun b!3830085 () Bool)

(assert (=> b!3830085 (= e!2365321 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328956)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328956))))))))

(declare-fun d!1136776 () Bool)

(declare-fun c!667839 () Bool)

(assert (=> d!1136776 (= c!667839 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328956))))))

(assert (=> d!1136776 (= (list!15060 (c!667181 (_1!22945 lt!1328956))) e!2365320)))

(declare-fun b!3830084 () Bool)

(assert (=> b!3830084 (= e!2365321 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328956)))))))

(declare-fun b!3830082 () Bool)

(assert (=> b!3830082 (= e!2365320 Nil!40424)))

(assert (= (and d!1136776 c!667839) b!3830082))

(assert (= (and d!1136776 (not c!667839)) b!3830083))

(assert (= (and b!3830083 c!667840) b!3830084))

(assert (= (and b!3830083 (not c!667840)) b!3830085))

(declare-fun m!4383927 () Bool)

(assert (=> b!3830085 m!4383927))

(declare-fun m!4383929 () Bool)

(assert (=> b!3830085 m!4383929))

(assert (=> b!3830085 m!4383927))

(assert (=> b!3830085 m!4383929))

(declare-fun m!4383931 () Bool)

(assert (=> b!3830085 m!4383931))

(declare-fun m!4383933 () Bool)

(assert (=> b!3830084 m!4383933))

(assert (=> d!1135626 d!1136776))

(declare-fun d!1136778 () Bool)

(declare-fun lt!1329970 () Int)

(assert (=> d!1136778 (>= lt!1329970 0)))

(declare-fun e!2365322 () Int)

(assert (=> d!1136778 (= lt!1329970 e!2365322)))

(declare-fun c!667841 () Bool)

(assert (=> d!1136778 (= c!667841 ((_ is Nil!40423) (t!308874 lt!1328853)))))

(assert (=> d!1136778 (= (size!30470 (t!308874 lt!1328853)) lt!1329970)))

(declare-fun b!3830086 () Bool)

(assert (=> b!3830086 (= e!2365322 0)))

(declare-fun b!3830087 () Bool)

(assert (=> b!3830087 (= e!2365322 (+ 1 (size!30470 (t!308874 (t!308874 lt!1328853)))))))

(assert (= (and d!1136778 c!667841) b!3830086))

(assert (= (and d!1136778 (not c!667841)) b!3830087))

(declare-fun m!4383935 () Bool)

(assert (=> b!3830087 m!4383935))

(assert (=> b!3828357 d!1136778))

(declare-fun d!1136780 () Bool)

(declare-fun res!1550576 () Bool)

(declare-fun e!2365323 () Bool)

(assert (=> d!1136780 (=> res!1550576 e!2365323)))

(assert (=> d!1136780 (= res!1550576 ((_ is Nil!40425) (t!308876 rules!1265)))))

(assert (=> d!1136780 (= (noDuplicateTag!2407 thiss!11876 (t!308876 rules!1265) (Cons!40427 (tag!7084 (h!45845 rules!1265)) Nil!40427)) e!2365323)))

(declare-fun b!3830088 () Bool)

(declare-fun e!2365324 () Bool)

(assert (=> b!3830088 (= e!2365323 e!2365324)))

(declare-fun res!1550577 () Bool)

(assert (=> b!3830088 (=> (not res!1550577) (not e!2365324))))

(assert (=> b!3830088 (= res!1550577 (not (contains!8207 (Cons!40427 (tag!7084 (h!45845 rules!1265)) Nil!40427) (tag!7084 (h!45845 (t!308876 rules!1265))))))))

(declare-fun b!3830089 () Bool)

(assert (=> b!3830089 (= e!2365324 (noDuplicateTag!2407 thiss!11876 (t!308876 (t!308876 rules!1265)) (Cons!40427 (tag!7084 (h!45845 (t!308876 rules!1265))) (Cons!40427 (tag!7084 (h!45845 rules!1265)) Nil!40427))))))

(assert (= (and d!1136780 (not res!1550576)) b!3830088))

(assert (= (and b!3830088 res!1550577) b!3830089))

(declare-fun m!4383937 () Bool)

(assert (=> b!3830088 m!4383937))

(declare-fun m!4383939 () Bool)

(assert (=> b!3830089 m!4383939))

(assert (=> b!3828365 d!1136780))

(declare-fun d!1136782 () Bool)

(assert (=> d!1136782 (= (isEmpty!23858 (list!15056 (_1!22945 lt!1328950))) ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328950))))))

(assert (=> d!1135684 d!1136782))

(assert (=> d!1135684 d!1135762))

(declare-fun d!1136784 () Bool)

(declare-fun lt!1329971 () Bool)

(assert (=> d!1136784 (= lt!1329971 (isEmpty!23858 (list!15060 (c!667181 (_1!22945 lt!1328950)))))))

(assert (=> d!1136784 (= lt!1329971 (= (size!30477 (c!667181 (_1!22945 lt!1328950))) 0))))

(assert (=> d!1136784 (= (isEmpty!23863 (c!667181 (_1!22945 lt!1328950))) lt!1329971)))

(declare-fun bs!582158 () Bool)

(assert (= bs!582158 d!1136784))

(assert (=> bs!582158 m!4380853))

(assert (=> bs!582158 m!4380853))

(declare-fun m!4383941 () Bool)

(assert (=> bs!582158 m!4383941))

(assert (=> bs!582158 m!4380675))

(assert (=> d!1135684 d!1136784))

(declare-fun d!1136786 () Bool)

(assert (=> d!1136786 (= (isDefined!6810 lt!1329167) (not (isEmpty!23862 lt!1329167)))))

(declare-fun bs!582159 () Bool)

(assert (= bs!582159 d!1136786))

(declare-fun m!4383943 () Bool)

(assert (=> bs!582159 m!4383943))

(assert (=> b!3827973 d!1136786))

(declare-fun d!1136788 () Bool)

(assert (=> d!1136788 (= (height!1816 lt!1329040) (ite ((_ is Empty!12423) lt!1329040) 0 (ite ((_ is Leaf!19233) lt!1329040) 1 (cheight!12634 lt!1329040))))))

(assert (=> b!3827687 d!1136788))

(assert (=> b!3827687 d!1135750))

(assert (=> b!3827687 d!1135754))

(assert (=> b!3827687 d!1135748))

(declare-fun b!3830090 () Bool)

(declare-fun res!1550580 () Bool)

(declare-fun e!2365326 () Bool)

(assert (=> b!3830090 (=> (not res!1550580) (not e!2365326))))

(assert (=> b!3830090 (= res!1550580 (isBalanced!3601 (left!31276 lt!1329040)))))

(declare-fun b!3830091 () Bool)

(declare-fun res!1550583 () Bool)

(assert (=> b!3830091 (=> (not res!1550583) (not e!2365326))))

(assert (=> b!3830091 (= res!1550583 (<= (- (height!1816 (left!31276 lt!1329040)) (height!1816 (right!31606 lt!1329040))) 1))))

(declare-fun b!3830092 () Bool)

(declare-fun res!1550579 () Bool)

(assert (=> b!3830092 (=> (not res!1550579) (not e!2365326))))

(assert (=> b!3830092 (= res!1550579 (isBalanced!3601 (right!31606 lt!1329040)))))

(declare-fun b!3830093 () Bool)

(declare-fun e!2365325 () Bool)

(assert (=> b!3830093 (= e!2365325 e!2365326)))

(declare-fun res!1550582 () Bool)

(assert (=> b!3830093 (=> (not res!1550582) (not e!2365326))))

(assert (=> b!3830093 (= res!1550582 (<= (- 1) (- (height!1816 (left!31276 lt!1329040)) (height!1816 (right!31606 lt!1329040)))))))

(declare-fun d!1136790 () Bool)

(declare-fun res!1550578 () Bool)

(assert (=> d!1136790 (=> res!1550578 e!2365325)))

(assert (=> d!1136790 (= res!1550578 (not ((_ is Node!12423) lt!1329040)))))

(assert (=> d!1136790 (= (isBalanced!3601 lt!1329040) e!2365325)))

(declare-fun b!3830094 () Bool)

(declare-fun res!1550581 () Bool)

(assert (=> b!3830094 (=> (not res!1550581) (not e!2365326))))

(assert (=> b!3830094 (= res!1550581 (not (isEmpty!23863 (left!31276 lt!1329040))))))

(declare-fun b!3830095 () Bool)

(assert (=> b!3830095 (= e!2365326 (not (isEmpty!23863 (right!31606 lt!1329040))))))

(assert (= (and d!1136790 (not res!1550578)) b!3830093))

(assert (= (and b!3830093 res!1550582) b!3830091))

(assert (= (and b!3830091 res!1550583) b!3830090))

(assert (= (and b!3830090 res!1550580) b!3830092))

(assert (= (and b!3830092 res!1550579) b!3830094))

(assert (= (and b!3830094 res!1550581) b!3830095))

(declare-fun m!4383945 () Bool)

(assert (=> b!3830092 m!4383945))

(declare-fun m!4383947 () Bool)

(assert (=> b!3830090 m!4383947))

(declare-fun m!4383949 () Bool)

(assert (=> b!3830095 m!4383949))

(declare-fun m!4383951 () Bool)

(assert (=> b!3830094 m!4383951))

(declare-fun m!4383953 () Bool)

(assert (=> b!3830091 m!4383953))

(declare-fun m!4383955 () Bool)

(assert (=> b!3830091 m!4383955))

(assert (=> b!3830093 m!4383953))

(assert (=> b!3830093 m!4383955))

(assert (=> b!3827676 d!1136790))

(declare-fun d!1136792 () Bool)

(declare-fun lt!1329976 () Option!8650)

(assert (=> d!1136792 (= lt!1329976 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))

(declare-fun e!2365327 () Option!8650)

(assert (=> d!1136792 (= lt!1329976 e!2365327)))

(declare-fun c!667842 () Bool)

(assert (=> d!1136792 (= c!667842 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1329975 () Unit!58192)

(declare-fun lt!1329972 () Unit!58192)

(assert (=> d!1136792 (= lt!1329975 lt!1329972)))

(assert (=> d!1136792 (isPrefix!3333 (list!15055 input!678) (list!15055 input!678))))

(assert (=> d!1136792 (= lt!1329972 (lemmaIsPrefixRefl!2118 (list!15055 input!678) (list!15055 input!678)))))

(assert (=> d!1136792 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1136792 (= (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)) lt!1329976)))

(declare-fun bm!281428 () Bool)

(declare-fun call!281433 () Option!8650)

(assert (=> bm!281428 (= call!281433 (maxPrefixOneRuleZipper!219 thiss!11876 (h!45845 (t!308876 rules!1265)) (list!15055 input!678)))))

(declare-fun b!3830096 () Bool)

(assert (=> b!3830096 (= e!2365327 call!281433)))

(declare-fun b!3830097 () Bool)

(declare-fun lt!1329974 () Option!8650)

(declare-fun lt!1329973 () Option!8650)

(assert (=> b!3830097 (= e!2365327 (ite (and ((_ is None!8649) lt!1329974) ((_ is None!8649) lt!1329973)) None!8649 (ite ((_ is None!8649) lt!1329973) lt!1329974 (ite ((_ is None!8649) lt!1329974) lt!1329973 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1329974))) (size!30466 (_1!22949 (v!38925 lt!1329973)))) lt!1329974 lt!1329973)))))))

(assert (=> b!3830097 (= lt!1329974 call!281433)))

(assert (=> b!3830097 (= lt!1329973 (maxPrefixZipper!557 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678)))))

(assert (= (and d!1136792 c!667842) b!3830096))

(assert (= (and d!1136792 (not c!667842)) b!3830097))

(assert (= (or b!3830096 b!3830097) bm!281428))

(assert (=> d!1136792 m!4379223))

(assert (=> d!1136792 m!4379945))

(assert (=> d!1136792 m!4379223))

(assert (=> d!1136792 m!4379223))

(assert (=> d!1136792 m!4379951))

(assert (=> d!1136792 m!4379223))

(assert (=> d!1136792 m!4379223))

(assert (=> d!1136792 m!4379953))

(assert (=> d!1136792 m!4380915))

(assert (=> bm!281428 m!4379223))

(declare-fun m!4383957 () Bool)

(assert (=> bm!281428 m!4383957))

(assert (=> b!3830097 m!4379223))

(declare-fun m!4383959 () Bool)

(assert (=> b!3830097 m!4383959))

(assert (=> b!3828375 d!1136792))

(assert (=> b!3828472 d!1136644))

(assert (=> b!3828472 d!1135768))

(assert (=> b!3828472 d!1135770))

(assert (=> b!3828472 d!1135436))

(declare-fun b!3830100 () Bool)

(declare-fun res!1550584 () Bool)

(declare-fun e!2365329 () Bool)

(assert (=> b!3830100 (=> (not res!1550584) (not e!2365329))))

(declare-fun lt!1329977 () List!40548)

(assert (=> b!3830100 (= res!1550584 (= (size!30476 lt!1329977) (+ (size!30476 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863))))) (size!30476 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863))))))))))

(declare-fun b!3830101 () Bool)

(assert (=> b!3830101 (= e!2365329 (or (not (= (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863)))) Nil!40424)) (= lt!1329977 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863)))))))))

(declare-fun b!3830099 () Bool)

(declare-fun e!2365328 () List!40548)

(assert (=> b!3830099 (= e!2365328 (Cons!40424 (h!45844 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863))))) (++!10192 (t!308875 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863)))))))))

(declare-fun b!3830098 () Bool)

(assert (=> b!3830098 (= e!2365328 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863)))))))

(declare-fun d!1136794 () Bool)

(assert (=> d!1136794 e!2365329))

(declare-fun res!1550585 () Bool)

(assert (=> d!1136794 (=> (not res!1550585) (not e!2365329))))

(assert (=> d!1136794 (= res!1550585 (= (content!5992 lt!1329977) ((_ map or) (content!5992 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863))))) (content!5992 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863))))))))))

(assert (=> d!1136794 (= lt!1329977 e!2365328)))

(declare-fun c!667843 () Bool)

(assert (=> d!1136794 (= c!667843 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863))))))))

(assert (=> d!1136794 (= (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863))))) lt!1329977)))

(assert (= (and d!1136794 c!667843) b!3830098))

(assert (= (and d!1136794 (not c!667843)) b!3830099))

(assert (= (and d!1136794 res!1550585) b!3830100))

(assert (= (and b!3830100 res!1550584) b!3830101))

(declare-fun m!4383961 () Bool)

(assert (=> b!3830100 m!4383961))

(assert (=> b!3830100 m!4380527))

(declare-fun m!4383963 () Bool)

(assert (=> b!3830100 m!4383963))

(assert (=> b!3830100 m!4380529))

(declare-fun m!4383965 () Bool)

(assert (=> b!3830100 m!4383965))

(assert (=> b!3830099 m!4380529))

(declare-fun m!4383967 () Bool)

(assert (=> b!3830099 m!4383967))

(declare-fun m!4383969 () Bool)

(assert (=> d!1136794 m!4383969))

(assert (=> d!1136794 m!4380527))

(declare-fun m!4383971 () Bool)

(assert (=> d!1136794 m!4383971))

(assert (=> d!1136794 m!4380529))

(declare-fun m!4383973 () Bool)

(assert (=> d!1136794 m!4383973))

(assert (=> b!3828135 d!1136794))

(declare-fun b!3830103 () Bool)

(declare-fun e!2365330 () List!40548)

(declare-fun e!2365331 () List!40548)

(assert (=> b!3830103 (= e!2365330 e!2365331)))

(declare-fun c!667845 () Bool)

(assert (=> b!3830103 (= c!667845 ((_ is Leaf!19233) (left!31276 (c!667181 (_1!22945 lt!1328863)))))))

(declare-fun b!3830105 () Bool)

(assert (=> b!3830105 (= e!2365331 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328863))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328863)))))))))

(declare-fun d!1136796 () Bool)

(declare-fun c!667844 () Bool)

(assert (=> d!1136796 (= c!667844 ((_ is Empty!12423) (left!31276 (c!667181 (_1!22945 lt!1328863)))))))

(assert (=> d!1136796 (= (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328863)))) e!2365330)))

(declare-fun b!3830104 () Bool)

(assert (=> b!3830104 (= e!2365331 (list!15064 (xs!15717 (left!31276 (c!667181 (_1!22945 lt!1328863))))))))

(declare-fun b!3830102 () Bool)

(assert (=> b!3830102 (= e!2365330 Nil!40424)))

(assert (= (and d!1136796 c!667844) b!3830102))

(assert (= (and d!1136796 (not c!667844)) b!3830103))

(assert (= (and b!3830103 c!667845) b!3830104))

(assert (= (and b!3830103 (not c!667845)) b!3830105))

(declare-fun m!4383975 () Bool)

(assert (=> b!3830105 m!4383975))

(declare-fun m!4383977 () Bool)

(assert (=> b!3830105 m!4383977))

(assert (=> b!3830105 m!4383975))

(assert (=> b!3830105 m!4383977))

(declare-fun m!4383979 () Bool)

(assert (=> b!3830105 m!4383979))

(declare-fun m!4383981 () Bool)

(assert (=> b!3830104 m!4383981))

(assert (=> b!3828135 d!1136796))

(declare-fun b!3830107 () Bool)

(declare-fun e!2365332 () List!40548)

(declare-fun e!2365333 () List!40548)

(assert (=> b!3830107 (= e!2365332 e!2365333)))

(declare-fun c!667847 () Bool)

(assert (=> b!3830107 (= c!667847 ((_ is Leaf!19233) (right!31606 (c!667181 (_1!22945 lt!1328863)))))))

(declare-fun b!3830109 () Bool)

(assert (=> b!3830109 (= e!2365333 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 (_1!22945 lt!1328863))))) (list!15060 (right!31606 (right!31606 (c!667181 (_1!22945 lt!1328863)))))))))

(declare-fun d!1136798 () Bool)

(declare-fun c!667846 () Bool)

(assert (=> d!1136798 (= c!667846 ((_ is Empty!12423) (right!31606 (c!667181 (_1!22945 lt!1328863)))))))

(assert (=> d!1136798 (= (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328863)))) e!2365332)))

(declare-fun b!3830108 () Bool)

(assert (=> b!3830108 (= e!2365333 (list!15064 (xs!15717 (right!31606 (c!667181 (_1!22945 lt!1328863))))))))

(declare-fun b!3830106 () Bool)

(assert (=> b!3830106 (= e!2365332 Nil!40424)))

(assert (= (and d!1136798 c!667846) b!3830106))

(assert (= (and d!1136798 (not c!667846)) b!3830107))

(assert (= (and b!3830107 c!667847) b!3830108))

(assert (= (and b!3830107 (not c!667847)) b!3830109))

(declare-fun m!4383983 () Bool)

(assert (=> b!3830109 m!4383983))

(declare-fun m!4383985 () Bool)

(assert (=> b!3830109 m!4383985))

(assert (=> b!3830109 m!4383983))

(assert (=> b!3830109 m!4383985))

(declare-fun m!4383987 () Bool)

(assert (=> b!3830109 m!4383987))

(declare-fun m!4383989 () Bool)

(assert (=> b!3830108 m!4383989))

(assert (=> b!3828135 d!1136798))

(declare-fun b!3830110 () Bool)

(declare-fun e!2365334 () Bool)

(declare-fun e!2365335 () Bool)

(assert (=> b!3830110 (= e!2365334 e!2365335)))

(declare-fun res!1550586 () Bool)

(declare-fun lt!1329980 () tuple2!39632)

(assert (=> b!3830110 (= res!1550586 (< (size!30470 (_2!22950 lt!1329980)) (size!30470 (_2!22949 (v!38925 lt!1329214)))))))

(assert (=> b!3830110 (=> (not res!1550586) (not e!2365335))))

(declare-fun b!3830111 () Bool)

(declare-fun e!2365336 () tuple2!39632)

(assert (=> b!3830111 (= e!2365336 (tuple2!39633 Nil!40424 (_2!22949 (v!38925 lt!1329214))))))

(declare-fun b!3830112 () Bool)

(assert (=> b!3830112 (= e!2365334 (= (_2!22950 lt!1329980) (_2!22949 (v!38925 lt!1329214))))))

(declare-fun b!3830113 () Bool)

(assert (=> b!3830113 (= e!2365335 (not (isEmpty!23858 (_1!22950 lt!1329980))))))

(declare-fun b!3830114 () Bool)

(declare-fun lt!1329979 () Option!8650)

(declare-fun lt!1329978 () tuple2!39632)

(assert (=> b!3830114 (= e!2365336 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1329979)) (_1!22950 lt!1329978)) (_2!22950 lt!1329978)))))

(assert (=> b!3830114 (= lt!1329978 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329979))))))

(declare-fun d!1136800 () Bool)

(assert (=> d!1136800 e!2365334))

(declare-fun c!667848 () Bool)

(assert (=> d!1136800 (= c!667848 (> (size!30476 (_1!22950 lt!1329980)) 0))))

(assert (=> d!1136800 (= lt!1329980 e!2365336)))

(declare-fun c!667849 () Bool)

(assert (=> d!1136800 (= c!667849 ((_ is Some!8649) lt!1329979))))

(assert (=> d!1136800 (= lt!1329979 (maxPrefix!3125 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329214))))))

(assert (=> d!1136800 (= (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329214))) lt!1329980)))

(assert (= (and d!1136800 c!667849) b!3830114))

(assert (= (and d!1136800 (not c!667849)) b!3830111))

(assert (= (and d!1136800 c!667848) b!3830110))

(assert (= (and d!1136800 (not c!667848)) b!3830112))

(assert (= (and b!3830110 res!1550586) b!3830113))

(declare-fun m!4383991 () Bool)

(assert (=> b!3830110 m!4383991))

(declare-fun m!4383993 () Bool)

(assert (=> b!3830110 m!4383993))

(declare-fun m!4383995 () Bool)

(assert (=> b!3830113 m!4383995))

(declare-fun m!4383997 () Bool)

(assert (=> b!3830114 m!4383997))

(declare-fun m!4383999 () Bool)

(assert (=> d!1136800 m!4383999))

(declare-fun m!4384001 () Bool)

(assert (=> d!1136800 m!4384001))

(assert (=> b!3828073 d!1136800))

(declare-fun d!1136802 () Bool)

(assert (=> d!1136802 (= (height!1816 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) (ite ((_ is Empty!12423) (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 0 (ite ((_ is Leaf!19233) (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 1 (cheight!12634 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> b!3828534 d!1136802))

(declare-fun d!1136804 () Bool)

(assert (=> d!1136804 (= (height!1816 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) (ite ((_ is Empty!12423) (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 0 (ite ((_ is Leaf!19233) (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 1 (cheight!12634 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> b!3828534 d!1136804))

(declare-fun d!1136806 () Bool)

(assert (=> d!1136806 (= (isDefined!6810 lt!1329305) (not (isEmpty!23862 lt!1329305)))))

(declare-fun bs!582160 () Bool)

(assert (= bs!582160 d!1136806))

(declare-fun m!4384003 () Bool)

(assert (=> bs!582160 m!4384003))

(assert (=> b!3828419 d!1136806))

(declare-fun d!1136808 () Bool)

(assert (=> d!1136808 (= (list!15056 (_1!22945 lt!1329332)) (list!15060 (c!667181 (_1!22945 lt!1329332))))))

(declare-fun bs!582161 () Bool)

(assert (= bs!582161 d!1136808))

(declare-fun m!4384005 () Bool)

(assert (=> bs!582161 m!4384005))

(assert (=> b!3828521 d!1136808))

(assert (=> b!3828521 d!1136692))

(assert (=> b!3828521 d!1136694))

(declare-fun b!3830115 () Bool)

(declare-fun e!2365337 () List!40547)

(assert (=> b!3830115 (= e!2365337 (_2!22949 (get!13413 lt!1329054)))))

(declare-fun b!3830116 () Bool)

(assert (=> b!3830116 (= e!2365337 (Cons!40423 (h!45843 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (++!10187 (t!308874 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (_2!22949 (get!13413 lt!1329054)))))))

(declare-fun b!3830117 () Bool)

(declare-fun res!1550588 () Bool)

(declare-fun e!2365338 () Bool)

(assert (=> b!3830117 (=> (not res!1550588) (not e!2365338))))

(declare-fun lt!1329981 () List!40547)

(assert (=> b!3830117 (= res!1550588 (= (size!30470 lt!1329981) (+ (size!30470 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (size!30470 (_2!22949 (get!13413 lt!1329054))))))))

(declare-fun b!3830118 () Bool)

(assert (=> b!3830118 (= e!2365338 (or (not (= (_2!22949 (get!13413 lt!1329054)) Nil!40423)) (= lt!1329981 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))))))))

(declare-fun d!1136810 () Bool)

(assert (=> d!1136810 e!2365338))

(declare-fun res!1550587 () Bool)

(assert (=> d!1136810 (=> (not res!1550587) (not e!2365338))))

(assert (=> d!1136810 (= res!1550587 (= (content!5990 lt!1329981) ((_ map or) (content!5990 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (content!5990 (_2!22949 (get!13413 lt!1329054))))))))

(assert (=> d!1136810 (= lt!1329981 e!2365337)))

(declare-fun c!667850 () Bool)

(assert (=> d!1136810 (= c!667850 ((_ is Nil!40423) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))

(assert (=> d!1136810 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))) (_2!22949 (get!13413 lt!1329054))) lt!1329981)))

(assert (= (and d!1136810 c!667850) b!3830115))

(assert (= (and d!1136810 (not c!667850)) b!3830116))

(assert (= (and d!1136810 res!1550587) b!3830117))

(assert (= (and b!3830117 res!1550588) b!3830118))

(declare-fun m!4384007 () Bool)

(assert (=> b!3830116 m!4384007))

(declare-fun m!4384009 () Bool)

(assert (=> b!3830117 m!4384009))

(assert (=> b!3830117 m!4379939))

(declare-fun m!4384011 () Bool)

(assert (=> b!3830117 m!4384011))

(assert (=> b!3830117 m!4379957))

(declare-fun m!4384013 () Bool)

(assert (=> d!1136810 m!4384013))

(assert (=> d!1136810 m!4379939))

(declare-fun m!4384015 () Bool)

(assert (=> d!1136810 m!4384015))

(declare-fun m!4384017 () Bool)

(assert (=> d!1136810 m!4384017))

(assert (=> b!3827721 d!1136810))

(declare-fun d!1136812 () Bool)

(assert (=> d!1136812 (= (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))) (list!15059 (c!667180 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun bs!582162 () Bool)

(assert (= bs!582162 d!1136812))

(declare-fun m!4384019 () Bool)

(assert (=> bs!582162 m!4384019))

(assert (=> b!3827721 d!1136812))

(declare-fun d!1136814 () Bool)

(declare-fun lt!1329984 () BalanceConc!24438)

(assert (=> d!1136814 (= (list!15055 lt!1329984) (originalCharacters!6824 (_1!22949 (get!13413 lt!1329054))))))

(declare-fun dynLambda!17515 (Int TokenValue!6454) BalanceConc!24438)

(assert (=> d!1136814 (= lt!1329984 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))) (value!197991 (_1!22949 (get!13413 lt!1329054)))))))

(assert (=> d!1136814 (= (charsOf!4062 (_1!22949 (get!13413 lt!1329054))) lt!1329984)))

(declare-fun b_lambda!112009 () Bool)

(assert (=> (not b_lambda!112009) (not d!1136814)))

(declare-fun t!309021 () Bool)

(declare-fun tb!219797 () Bool)

(assert (=> (and b!3827069 (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309021) tb!219797))

(declare-fun b!3830123 () Bool)

(declare-fun e!2365341 () Bool)

(declare-fun tp!1158962 () Bool)

(assert (=> b!3830123 (= e!2365341 (and (inv!54485 (c!667180 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))) (value!197991 (_1!22949 (get!13413 lt!1329054)))))) tp!1158962))))

(declare-fun result!267928 () Bool)

(assert (=> tb!219797 (= result!267928 (and (inv!54487 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))) (value!197991 (_1!22949 (get!13413 lt!1329054))))) e!2365341))))

(assert (= tb!219797 b!3830123))

(declare-fun m!4384021 () Bool)

(assert (=> b!3830123 m!4384021))

(declare-fun m!4384023 () Bool)

(assert (=> tb!219797 m!4384023))

(assert (=> d!1136814 t!309021))

(declare-fun b_and!284655 () Bool)

(assert (= b_and!284493 (and (=> t!309021 result!267928) b_and!284655)))

(declare-fun t!309023 () Bool)

(declare-fun tb!219799 () Bool)

(assert (=> (and b!3827404 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309023) tb!219799))

(declare-fun result!267932 () Bool)

(assert (= result!267932 result!267928))

(assert (=> d!1136814 t!309023))

(declare-fun b_and!284657 () Bool)

(assert (= b_and!284501 (and (=> t!309023 result!267932) b_and!284657)))

(declare-fun tb!219801 () Bool)

(declare-fun t!309025 () Bool)

(assert (=> (and b!3828558 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309025) tb!219801))

(declare-fun result!267934 () Bool)

(assert (= result!267934 result!267928))

(assert (=> d!1136814 t!309025))

(declare-fun b_and!284659 () Bool)

(assert (= b_and!284513 (and (=> t!309025 result!267934) b_and!284659)))

(declare-fun tb!219803 () Bool)

(declare-fun t!309027 () Bool)

(assert (=> (and b!3828586 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309027) tb!219803))

(declare-fun result!267936 () Bool)

(assert (= result!267936 result!267928))

(assert (=> d!1136814 t!309027))

(declare-fun b_and!284661 () Bool)

(assert (= b_and!284517 (and (=> t!309027 result!267936) b_and!284661)))

(declare-fun m!4384025 () Bool)

(assert (=> d!1136814 m!4384025))

(declare-fun m!4384027 () Bool)

(assert (=> d!1136814 m!4384027))

(assert (=> b!3827721 d!1136814))

(assert (=> b!3827721 d!1136740))

(declare-fun bs!582163 () Bool)

(declare-fun b!3830124 () Bool)

(assert (= bs!582163 (and b!3830124 b!3827975)))

(declare-fun lambda!125966 () Int)

(assert (=> bs!582163 (= lambda!125966 lambda!125925)))

(declare-fun bs!582164 () Bool)

(assert (= bs!582164 (and b!3830124 d!1135788)))

(assert (=> bs!582164 (= lambda!125966 lambda!125942)))

(declare-fun bs!582165 () Bool)

(assert (= bs!582165 (and b!3830124 b!3829941)))

(assert (=> bs!582165 (= lambda!125966 lambda!125965)))

(declare-fun b!3830131 () Bool)

(declare-fun e!2365348 () Bool)

(assert (=> b!3830131 (= e!2365348 true)))

(declare-fun b!3830130 () Bool)

(declare-fun e!2365347 () Bool)

(assert (=> b!3830130 (= e!2365347 e!2365348)))

(assert (=> b!3830124 e!2365347))

(assert (= b!3830130 b!3830131))

(assert (= b!3830124 b!3830130))

(assert (=> b!3830131 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125966))))

(assert (=> b!3830131 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125966))))

(declare-fun b!3830125 () Bool)

(declare-fun e!2365343 () Bool)

(declare-fun e!2365345 () Bool)

(assert (=> b!3830125 (= e!2365343 e!2365345)))

(declare-fun res!1550592 () Bool)

(assert (=> b!3830125 (=> res!1550592 e!2365345)))

(declare-fun lt!1329989 () Option!8648)

(assert (=> b!3830125 (= res!1550592 (not (isDefined!6810 lt!1329989)))))

(declare-fun b!3830126 () Bool)

(declare-fun e!2365344 () Bool)

(assert (=> b!3830126 (= e!2365345 e!2365344)))

(declare-fun res!1550590 () Bool)

(assert (=> b!3830126 (=> (not res!1550590) (not e!2365344))))

(assert (=> b!3830126 (= res!1550590 (= (_1!22946 (get!13412 lt!1329989)) (_1!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 totalInput!335))))))))

(declare-fun b!3830127 () Bool)

(declare-fun e!2365342 () Option!8648)

(assert (=> b!3830127 (= e!2365342 None!8647)))

(declare-fun d!1136816 () Bool)

(assert (=> d!1136816 e!2365343))

(declare-fun res!1550591 () Bool)

(assert (=> d!1136816 (=> (not res!1550591) (not e!2365343))))

(assert (=> d!1136816 (= res!1550591 (= (isDefined!6810 lt!1329989) (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 totalInput!335)))))))

(assert (=> d!1136816 (= lt!1329989 e!2365342)))

(declare-fun c!667851 () Bool)

(declare-fun lt!1329987 () tuple2!39634)

(assert (=> d!1136816 (= c!667851 (isEmpty!23860 (_1!22951 lt!1329987)))))

(assert (=> d!1136816 (= lt!1329987 (findLongestMatchWithZipperSequence!231 (regex!6224 (h!45845 rules!1265)) totalInput!335))))

(assert (=> d!1136816 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1136816 (= (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) totalInput!335) lt!1329989)))

(assert (=> b!3830124 (= e!2365342 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329987)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329987)) (list!15055 (_1!22951 lt!1329987))) (_2!22951 lt!1329987))))))

(declare-fun lt!1329986 () List!40547)

(assert (=> b!3830124 (= lt!1329986 (list!15055 totalInput!335))))

(declare-fun lt!1329990 () Unit!58192)

(assert (=> b!3830124 (= lt!1329990 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) lt!1329986))))

(declare-fun res!1550589 () Bool)

(assert (=> b!3830124 (= res!1550589 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329986 lt!1329986 (size!30470 lt!1329986)))))))

(declare-fun e!2365346 () Bool)

(assert (=> b!3830124 (=> res!1550589 e!2365346)))

(assert (=> b!3830124 e!2365346))

(declare-fun lt!1329991 () Unit!58192)

(assert (=> b!3830124 (= lt!1329991 lt!1329990)))

(declare-fun lt!1329988 () Unit!58192)

(assert (=> b!3830124 (= lt!1329988 (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))))))

(declare-fun lt!1329985 () Unit!58192)

(assert (=> b!3830124 (= lt!1329985 (ForallOf!777 lambda!125966 (_1!22951 lt!1329987)))))

(declare-fun lt!1329994 () Unit!58192)

(assert (=> b!3830124 (= lt!1329994 (ForallOf!777 lambda!125966 (seqFromList!4507 (list!15055 (_1!22951 lt!1329987)))))))

(declare-fun lt!1329993 () Option!8648)

(assert (=> b!3830124 (= lt!1329993 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329987)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1329987)) (list!15055 (_1!22951 lt!1329987))) (_2!22951 lt!1329987))))))

(declare-fun lt!1329992 () Unit!58192)

(assert (=> b!3830124 (= lt!1329992 (lemmaEqSameImage!1050 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329987) (seqFromList!4507 (list!15055 (_1!22951 lt!1329987)))))))

(declare-fun b!3830128 () Bool)

(assert (=> b!3830128 (= e!2365344 (= (list!15055 (_2!22946 (get!13412 lt!1329989))) (_2!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 totalInput!335))))))))

(declare-fun b!3830129 () Bool)

(assert (=> b!3830129 (= e!2365346 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329986 lt!1329986 (size!30470 lt!1329986)))))))

(assert (= (and d!1136816 c!667851) b!3830127))

(assert (= (and d!1136816 (not c!667851)) b!3830124))

(assert (= (and b!3830124 (not res!1550589)) b!3830129))

(assert (= (and d!1136816 res!1550591) b!3830125))

(assert (= (and b!3830125 (not res!1550592)) b!3830126))

(assert (= (and b!3830126 res!1550590) b!3830128))

(declare-fun m!4384029 () Bool)

(assert (=> b!3830128 m!4384029))

(assert (=> b!3830128 m!4379221))

(declare-fun m!4384031 () Bool)

(assert (=> b!3830128 m!4384031))

(declare-fun m!4384033 () Bool)

(assert (=> b!3830128 m!4384033))

(assert (=> b!3830128 m!4384031))

(declare-fun m!4384035 () Bool)

(assert (=> b!3830128 m!4384035))

(assert (=> b!3830128 m!4379221))

(assert (=> b!3830129 m!4380267))

(declare-fun m!4384037 () Bool)

(assert (=> b!3830129 m!4384037))

(assert (=> b!3830129 m!4380267))

(assert (=> b!3830129 m!4384037))

(declare-fun m!4384039 () Bool)

(assert (=> b!3830129 m!4384039))

(declare-fun m!4384041 () Bool)

(assert (=> b!3830129 m!4384041))

(assert (=> d!1136816 m!4380305))

(assert (=> d!1136816 m!4379221))

(assert (=> d!1136816 m!4384031))

(assert (=> d!1136816 m!4384031))

(declare-fun m!4384043 () Bool)

(assert (=> d!1136816 m!4384043))

(declare-fun m!4384045 () Bool)

(assert (=> d!1136816 m!4384045))

(declare-fun m!4384047 () Bool)

(assert (=> d!1136816 m!4384047))

(declare-fun m!4384049 () Bool)

(assert (=> d!1136816 m!4384049))

(assert (=> d!1136816 m!4379221))

(assert (=> b!3830126 m!4384033))

(assert (=> b!3830126 m!4379221))

(assert (=> b!3830126 m!4379221))

(assert (=> b!3830126 m!4384031))

(assert (=> b!3830126 m!4384031))

(assert (=> b!3830126 m!4384035))

(assert (=> b!3830125 m!4384045))

(assert (=> b!3830124 m!4380267))

(declare-fun m!4384051 () Bool)

(assert (=> b!3830124 m!4384051))

(declare-fun m!4384053 () Bool)

(assert (=> b!3830124 m!4384053))

(declare-fun m!4384055 () Bool)

(assert (=> b!3830124 m!4384055))

(declare-fun m!4384057 () Bool)

(assert (=> b!3830124 m!4384057))

(declare-fun m!4384059 () Bool)

(assert (=> b!3830124 m!4384059))

(declare-fun m!4384061 () Bool)

(assert (=> b!3830124 m!4384061))

(assert (=> b!3830124 m!4380267))

(assert (=> b!3830124 m!4384037))

(assert (=> b!3830124 m!4384039))

(assert (=> b!3830124 m!4384061))

(assert (=> b!3830124 m!4384055))

(assert (=> b!3830124 m!4384037))

(declare-fun m!4384063 () Bool)

(assert (=> b!3830124 m!4384063))

(assert (=> b!3830124 m!4384055))

(declare-fun m!4384065 () Bool)

(assert (=> b!3830124 m!4384065))

(assert (=> b!3830124 m!4379221))

(assert (=> b!3830124 m!4380281))

(declare-fun m!4384067 () Bool)

(assert (=> b!3830124 m!4384067))

(assert (=> bm!281285 d!1136816))

(declare-fun d!1136818 () Bool)

(declare-fun c!667852 () Bool)

(assert (=> d!1136818 (= c!667852 ((_ is Node!12423) (left!31276 (right!31606 (c!667181 acc!335)))))))

(declare-fun e!2365349 () Bool)

(assert (=> d!1136818 (= (inv!54484 (left!31276 (right!31606 (c!667181 acc!335)))) e!2365349)))

(declare-fun b!3830132 () Bool)

(assert (=> b!3830132 (= e!2365349 (inv!54495 (left!31276 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830133 () Bool)

(declare-fun e!2365350 () Bool)

(assert (=> b!3830133 (= e!2365349 e!2365350)))

(declare-fun res!1550593 () Bool)

(assert (=> b!3830133 (= res!1550593 (not ((_ is Leaf!19233) (left!31276 (right!31606 (c!667181 acc!335))))))))

(assert (=> b!3830133 (=> res!1550593 e!2365350)))

(declare-fun b!3830134 () Bool)

(assert (=> b!3830134 (= e!2365350 (inv!54496 (left!31276 (right!31606 (c!667181 acc!335)))))))

(assert (= (and d!1136818 c!667852) b!3830132))

(assert (= (and d!1136818 (not c!667852)) b!3830133))

(assert (= (and b!3830133 (not res!1550593)) b!3830134))

(declare-fun m!4384069 () Bool)

(assert (=> b!3830132 m!4384069))

(declare-fun m!4384071 () Bool)

(assert (=> b!3830134 m!4384071))

(assert (=> b!3828609 d!1136818))

(declare-fun d!1136820 () Bool)

(declare-fun c!667853 () Bool)

(assert (=> d!1136820 (= c!667853 ((_ is Node!12423) (right!31606 (right!31606 (c!667181 acc!335)))))))

(declare-fun e!2365351 () Bool)

(assert (=> d!1136820 (= (inv!54484 (right!31606 (right!31606 (c!667181 acc!335)))) e!2365351)))

(declare-fun b!3830135 () Bool)

(assert (=> b!3830135 (= e!2365351 (inv!54495 (right!31606 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830136 () Bool)

(declare-fun e!2365352 () Bool)

(assert (=> b!3830136 (= e!2365351 e!2365352)))

(declare-fun res!1550594 () Bool)

(assert (=> b!3830136 (= res!1550594 (not ((_ is Leaf!19233) (right!31606 (right!31606 (c!667181 acc!335))))))))

(assert (=> b!3830136 (=> res!1550594 e!2365352)))

(declare-fun b!3830137 () Bool)

(assert (=> b!3830137 (= e!2365352 (inv!54496 (right!31606 (right!31606 (c!667181 acc!335)))))))

(assert (= (and d!1136820 c!667853) b!3830135))

(assert (= (and d!1136820 (not c!667853)) b!3830136))

(assert (= (and b!3830136 (not res!1550594)) b!3830137))

(declare-fun m!4384073 () Bool)

(assert (=> b!3830135 m!4384073))

(declare-fun m!4384075 () Bool)

(assert (=> b!3830137 m!4384075))

(assert (=> b!3828609 d!1136820))

(declare-fun d!1136822 () Bool)

(assert (=> d!1136822 (= (max!0 (height!1818 (left!31275 (c!667180 treated!13))) (height!1818 (right!31605 (c!667180 treated!13)))) (ite (< (height!1818 (left!31275 (c!667180 treated!13))) (height!1818 (right!31605 (c!667180 treated!13)))) (height!1818 (right!31605 (c!667180 treated!13))) (height!1818 (left!31275 (c!667180 treated!13)))))))

(assert (=> b!3828512 d!1136822))

(declare-fun d!1136824 () Bool)

(assert (=> d!1136824 (= (height!1818 (left!31275 (c!667180 treated!13))) (ite ((_ is Empty!12422) (left!31275 (c!667180 treated!13))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 treated!13))) 1 (cheight!12633 (left!31275 (c!667180 treated!13))))))))

(assert (=> b!3828512 d!1136824))

(declare-fun d!1136826 () Bool)

(assert (=> d!1136826 (= (height!1818 (right!31605 (c!667180 treated!13))) (ite ((_ is Empty!12422) (right!31605 (c!667180 treated!13))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 treated!13))) 1 (cheight!12633 (right!31605 (c!667180 treated!13))))))))

(assert (=> b!3828512 d!1136826))

(declare-fun d!1136828 () Bool)

(assert (=> d!1136828 (= (inv!54500 (xs!15716 (left!31275 (c!667180 totalInput!335)))) (<= (size!30470 (innerList!12482 (xs!15716 (left!31275 (c!667180 totalInput!335))))) 2147483647))))

(declare-fun bs!582166 () Bool)

(assert (= bs!582166 d!1136828))

(declare-fun m!4384077 () Bool)

(assert (=> bs!582166 m!4384077))

(assert (=> b!3828560 d!1136828))

(declare-fun d!1136830 () Bool)

(assert (=> d!1136830 (= (inv!54500 (xs!15716 (right!31605 (c!667180 input!678)))) (<= (size!30470 (innerList!12482 (xs!15716 (right!31605 (c!667180 input!678))))) 2147483647))))

(declare-fun bs!582167 () Bool)

(assert (= bs!582167 d!1136830))

(declare-fun m!4384079 () Bool)

(assert (=> bs!582167 m!4384079))

(assert (=> b!3828621 d!1136830))

(declare-fun d!1136832 () Bool)

(declare-fun res!1550595 () Bool)

(declare-fun e!2365353 () Bool)

(assert (=> d!1136832 (=> (not res!1550595) (not e!2365353))))

(assert (=> d!1136832 (= res!1550595 (<= (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 treated!13))))) 512))))

(assert (=> d!1136832 (= (inv!54498 (right!31605 (c!667180 treated!13))) e!2365353)))

(declare-fun b!3830138 () Bool)

(declare-fun res!1550596 () Bool)

(assert (=> b!3830138 (=> (not res!1550596) (not e!2365353))))

(assert (=> b!3830138 (= res!1550596 (= (csize!25075 (right!31605 (c!667180 treated!13))) (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 treated!13)))))))))

(declare-fun b!3830139 () Bool)

(assert (=> b!3830139 (= e!2365353 (and (> (csize!25075 (right!31605 (c!667180 treated!13))) 0) (<= (csize!25075 (right!31605 (c!667180 treated!13))) 512)))))

(assert (= (and d!1136832 res!1550595) b!3830138))

(assert (= (and b!3830138 res!1550596) b!3830139))

(assert (=> d!1136832 m!4383545))

(assert (=> d!1136832 m!4383545))

(declare-fun m!4384081 () Bool)

(assert (=> d!1136832 m!4384081))

(assert (=> b!3830138 m!4383545))

(assert (=> b!3830138 m!4383545))

(assert (=> b!3830138 m!4384081))

(assert (=> b!3828478 d!1136832))

(declare-fun d!1136834 () Bool)

(declare-fun lt!1329997 () Bool)

(assert (=> d!1136834 (= lt!1329997 (isEmpty!23850 (list!15059 (right!31605 (c!667180 totalInput!335)))))))

(assert (=> d!1136834 (= lt!1329997 (= (size!30478 (right!31605 (c!667180 totalInput!335))) 0))))

(assert (=> d!1136834 (= (isEmpty!23861 (right!31605 (c!667180 totalInput!335))) lt!1329997)))

(declare-fun bs!582168 () Bool)

(assert (= bs!582168 d!1136834))

(assert (=> bs!582168 m!4381017))

(assert (=> bs!582168 m!4381017))

(declare-fun m!4384083 () Bool)

(assert (=> bs!582168 m!4384083))

(assert (=> bs!582168 m!4380615))

(assert (=> b!3828161 d!1136834))

(declare-fun b!3830140 () Bool)

(declare-fun res!1550599 () Bool)

(declare-fun e!2365355 () Bool)

(assert (=> b!3830140 (=> (not res!1550599) (not e!2365355))))

(assert (=> b!3830140 (= res!1550599 (isBalanced!3601 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3830141 () Bool)

(declare-fun res!1550602 () Bool)

(assert (=> b!3830141 (=> (not res!1550602) (not e!2365355))))

(assert (=> b!3830141 (= res!1550602 (<= (- (height!1816 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (height!1816 (right!31606 (c!667181 (_1!22945 lt!1328861))))) 1))))

(declare-fun b!3830142 () Bool)

(declare-fun res!1550598 () Bool)

(assert (=> b!3830142 (=> (not res!1550598) (not e!2365355))))

(assert (=> b!3830142 (= res!1550598 (isBalanced!3601 (right!31606 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3830143 () Bool)

(declare-fun e!2365354 () Bool)

(assert (=> b!3830143 (= e!2365354 e!2365355)))

(declare-fun res!1550601 () Bool)

(assert (=> b!3830143 (=> (not res!1550601) (not e!2365355))))

(assert (=> b!3830143 (= res!1550601 (<= (- 1) (- (height!1816 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (height!1816 (right!31606 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun d!1136836 () Bool)

(declare-fun res!1550597 () Bool)

(assert (=> d!1136836 (=> res!1550597 e!2365354)))

(assert (=> d!1136836 (= res!1550597 (not ((_ is Node!12423) (c!667181 (_1!22945 lt!1328861)))))))

(assert (=> d!1136836 (= (isBalanced!3601 (c!667181 (_1!22945 lt!1328861))) e!2365354)))

(declare-fun b!3830144 () Bool)

(declare-fun res!1550600 () Bool)

(assert (=> b!3830144 (=> (not res!1550600) (not e!2365355))))

(assert (=> b!3830144 (= res!1550600 (not (isEmpty!23863 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830145 () Bool)

(assert (=> b!3830145 (= e!2365355 (not (isEmpty!23863 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(assert (= (and d!1136836 (not res!1550597)) b!3830143))

(assert (= (and b!3830143 res!1550601) b!3830141))

(assert (= (and b!3830141 res!1550602) b!3830140))

(assert (= (and b!3830140 res!1550599) b!3830142))

(assert (= (and b!3830142 res!1550598) b!3830144))

(assert (= (and b!3830144 res!1550600) b!3830145))

(declare-fun m!4384085 () Bool)

(assert (=> b!3830142 m!4384085))

(declare-fun m!4384087 () Bool)

(assert (=> b!3830140 m!4384087))

(declare-fun m!4384089 () Bool)

(assert (=> b!3830145 m!4384089))

(declare-fun m!4384091 () Bool)

(assert (=> b!3830144 m!4384091))

(declare-fun m!4384093 () Bool)

(assert (=> b!3830141 m!4384093))

(declare-fun m!4384095 () Bool)

(assert (=> b!3830141 m!4384095))

(assert (=> b!3830143 m!4384093))

(assert (=> b!3830143 m!4384095))

(assert (=> b!3827691 d!1136836))

(declare-fun d!1136838 () Bool)

(declare-fun c!667854 () Bool)

(assert (=> d!1136838 (= c!667854 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 treated!13)))))))

(declare-fun e!2365356 () Bool)

(assert (=> d!1136838 (= (inv!54485 (left!31275 (left!31275 (c!667180 treated!13)))) e!2365356)))

(declare-fun b!3830146 () Bool)

(assert (=> b!3830146 (= e!2365356 (inv!54497 (left!31275 (left!31275 (c!667180 treated!13)))))))

(declare-fun b!3830147 () Bool)

(declare-fun e!2365357 () Bool)

(assert (=> b!3830147 (= e!2365356 e!2365357)))

(declare-fun res!1550603 () Bool)

(assert (=> b!3830147 (= res!1550603 (not ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 treated!13))))))))

(assert (=> b!3830147 (=> res!1550603 e!2365357)))

(declare-fun b!3830148 () Bool)

(assert (=> b!3830148 (= e!2365357 (inv!54498 (left!31275 (left!31275 (c!667180 treated!13)))))))

(assert (= (and d!1136838 c!667854) b!3830146))

(assert (= (and d!1136838 (not c!667854)) b!3830147))

(assert (= (and b!3830147 (not res!1550603)) b!3830148))

(declare-fun m!4384097 () Bool)

(assert (=> b!3830146 m!4384097))

(declare-fun m!4384099 () Bool)

(assert (=> b!3830148 m!4384099))

(assert (=> b!3828600 d!1136838))

(declare-fun d!1136840 () Bool)

(declare-fun c!667855 () Bool)

(assert (=> d!1136840 (= c!667855 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 treated!13)))))))

(declare-fun e!2365358 () Bool)

(assert (=> d!1136840 (= (inv!54485 (right!31605 (left!31275 (c!667180 treated!13)))) e!2365358)))

(declare-fun b!3830149 () Bool)

(assert (=> b!3830149 (= e!2365358 (inv!54497 (right!31605 (left!31275 (c!667180 treated!13)))))))

(declare-fun b!3830150 () Bool)

(declare-fun e!2365359 () Bool)

(assert (=> b!3830150 (= e!2365358 e!2365359)))

(declare-fun res!1550604 () Bool)

(assert (=> b!3830150 (= res!1550604 (not ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 treated!13))))))))

(assert (=> b!3830150 (=> res!1550604 e!2365359)))

(declare-fun b!3830151 () Bool)

(assert (=> b!3830151 (= e!2365359 (inv!54498 (right!31605 (left!31275 (c!667180 treated!13)))))))

(assert (= (and d!1136840 c!667855) b!3830149))

(assert (= (and d!1136840 (not c!667855)) b!3830150))

(assert (= (and b!3830150 (not res!1550604)) b!3830151))

(declare-fun m!4384101 () Bool)

(assert (=> b!3830149 m!4384101))

(declare-fun m!4384103 () Bool)

(assert (=> b!3830151 m!4384103))

(assert (=> b!3828600 d!1136840))

(declare-fun d!1136842 () Bool)

(assert (=> d!1136842 (= (inv!54500 (xs!15716 (left!31275 (c!667180 treated!13)))) (<= (size!30470 (innerList!12482 (xs!15716 (left!31275 (c!667180 treated!13))))) 2147483647))))

(declare-fun bs!582169 () Bool)

(assert (= bs!582169 d!1136842))

(declare-fun m!4384105 () Bool)

(assert (=> bs!582169 m!4384105))

(assert (=> b!3828601 d!1136842))

(declare-fun d!1136844 () Bool)

(declare-fun res!1550605 () Bool)

(declare-fun e!2365360 () Bool)

(assert (=> d!1136844 (=> (not res!1550605) (not e!2365360))))

(assert (=> d!1136844 (= res!1550605 (= (csize!25076 (left!31276 (c!667181 acc!335))) (+ (size!30477 (left!31276 (left!31276 (c!667181 acc!335)))) (size!30477 (right!31606 (left!31276 (c!667181 acc!335)))))))))

(assert (=> d!1136844 (= (inv!54495 (left!31276 (c!667181 acc!335))) e!2365360)))

(declare-fun b!3830152 () Bool)

(declare-fun res!1550606 () Bool)

(assert (=> b!3830152 (=> (not res!1550606) (not e!2365360))))

(assert (=> b!3830152 (= res!1550606 (and (not (= (left!31276 (left!31276 (c!667181 acc!335))) Empty!12423)) (not (= (right!31606 (left!31276 (c!667181 acc!335))) Empty!12423))))))

(declare-fun b!3830153 () Bool)

(declare-fun res!1550607 () Bool)

(assert (=> b!3830153 (=> (not res!1550607) (not e!2365360))))

(assert (=> b!3830153 (= res!1550607 (= (cheight!12634 (left!31276 (c!667181 acc!335))) (+ (max!0 (height!1816 (left!31276 (left!31276 (c!667181 acc!335)))) (height!1816 (right!31606 (left!31276 (c!667181 acc!335))))) 1)))))

(declare-fun b!3830154 () Bool)

(assert (=> b!3830154 (= e!2365360 (<= 0 (cheight!12634 (left!31276 (c!667181 acc!335)))))))

(assert (= (and d!1136844 res!1550605) b!3830152))

(assert (= (and b!3830152 res!1550606) b!3830153))

(assert (= (and b!3830153 res!1550607) b!3830154))

(declare-fun m!4384107 () Bool)

(assert (=> d!1136844 m!4384107))

(declare-fun m!4384109 () Bool)

(assert (=> d!1136844 m!4384109))

(declare-fun m!4384111 () Bool)

(assert (=> b!3830153 m!4384111))

(declare-fun m!4384113 () Bool)

(assert (=> b!3830153 m!4384113))

(assert (=> b!3830153 m!4384111))

(assert (=> b!3830153 m!4384113))

(declare-fun m!4384115 () Bool)

(assert (=> b!3830153 m!4384115))

(assert (=> b!3828487 d!1136844))

(declare-fun d!1136846 () Bool)

(declare-fun lt!1329998 () Bool)

(assert (=> d!1136846 (= lt!1329998 (isEmpty!23858 (list!15060 (right!31606 (c!667181 acc!335)))))))

(assert (=> d!1136846 (= lt!1329998 (= (size!30477 (right!31606 (c!667181 acc!335))) 0))))

(assert (=> d!1136846 (= (isEmpty!23863 (right!31606 (c!667181 acc!335))) lt!1329998)))

(declare-fun bs!582170 () Bool)

(assert (= bs!582170 d!1136846))

(assert (=> bs!582170 m!4379861))

(assert (=> bs!582170 m!4379861))

(declare-fun m!4384117 () Bool)

(assert (=> bs!582170 m!4384117))

(assert (=> bs!582170 m!4379999))

(assert (=> b!3828510 d!1136846))

(declare-fun d!1136848 () Bool)

(declare-fun c!667856 () Bool)

(assert (=> d!1136848 (= c!667856 ((_ is Nil!40423) lt!1329317))))

(declare-fun e!2365361 () (InoxSet C!22444))

(assert (=> d!1136848 (= (content!5990 lt!1329317) e!2365361)))

(declare-fun b!3830155 () Bool)

(assert (=> b!3830155 (= e!2365361 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830156 () Bool)

(assert (=> b!3830156 (= e!2365361 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1329317) true) (content!5990 (t!308874 lt!1329317))))))

(assert (= (and d!1136848 c!667856) b!3830155))

(assert (= (and d!1136848 (not c!667856)) b!3830156))

(declare-fun m!4384119 () Bool)

(assert (=> b!3830156 m!4384119))

(declare-fun m!4384121 () Bool)

(assert (=> b!3830156 m!4384121))

(assert (=> d!1135814 d!1136848))

(declare-fun d!1136850 () Bool)

(declare-fun c!667857 () Bool)

(assert (=> d!1136850 (= c!667857 ((_ is Nil!40423) lt!1328860))))

(declare-fun e!2365362 () (InoxSet C!22444))

(assert (=> d!1136850 (= (content!5990 lt!1328860) e!2365362)))

(declare-fun b!3830157 () Bool)

(assert (=> b!3830157 (= e!2365362 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830158 () Bool)

(assert (=> b!3830158 (= e!2365362 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1328860) true) (content!5990 (t!308874 lt!1328860))))))

(assert (= (and d!1136850 c!667857) b!3830157))

(assert (= (and d!1136850 (not c!667857)) b!3830158))

(declare-fun m!4384123 () Bool)

(assert (=> b!3830158 m!4384123))

(declare-fun m!4384125 () Bool)

(assert (=> b!3830158 m!4384125))

(assert (=> d!1135814 d!1136850))

(declare-fun d!1136852 () Bool)

(declare-fun res!1550612 () Bool)

(declare-fun e!2365367 () Bool)

(assert (=> d!1136852 (=> res!1550612 e!2365367)))

(assert (=> d!1136852 (= res!1550612 ((_ is Nil!40425) rules!1265))))

(assert (=> d!1136852 (= (forall!8265 rules!1265 lambda!125945) e!2365367)))

(declare-fun b!3830163 () Bool)

(declare-fun e!2365368 () Bool)

(assert (=> b!3830163 (= e!2365367 e!2365368)))

(declare-fun res!1550613 () Bool)

(assert (=> b!3830163 (=> (not res!1550613) (not e!2365368))))

(declare-fun dynLambda!17516 (Int Rule!12248) Bool)

(assert (=> b!3830163 (= res!1550613 (dynLambda!17516 lambda!125945 (h!45845 rules!1265)))))

(declare-fun b!3830164 () Bool)

(assert (=> b!3830164 (= e!2365368 (forall!8265 (t!308876 rules!1265) lambda!125945))))

(assert (= (and d!1136852 (not res!1550612)) b!3830163))

(assert (= (and b!3830163 res!1550613) b!3830164))

(declare-fun b_lambda!112011 () Bool)

(assert (=> (not b_lambda!112011) (not b!3830163)))

(declare-fun m!4384127 () Bool)

(assert (=> b!3830163 m!4384127))

(declare-fun m!4384129 () Bool)

(assert (=> b!3830164 m!4384129))

(assert (=> d!1135802 d!1136852))

(declare-fun b!3830165 () Bool)

(declare-fun e!2365373 () Int)

(assert (=> b!3830165 (= e!2365373 0)))

(declare-fun d!1136854 () Bool)

(declare-fun e!2365370 () Bool)

(assert (=> d!1136854 e!2365370))

(declare-fun res!1550614 () Bool)

(assert (=> d!1136854 (=> (not res!1550614) (not e!2365370))))

(declare-fun lt!1329999 () List!40547)

(assert (=> d!1136854 (= res!1550614 (= ((_ map implies) (content!5990 lt!1329999) (content!5990 (t!308874 lt!1328853))) ((as const (InoxSet C!22444)) true)))))

(declare-fun e!2365372 () List!40547)

(assert (=> d!1136854 (= lt!1329999 e!2365372)))

(declare-fun c!667858 () Bool)

(assert (=> d!1136854 (= c!667858 ((_ is Nil!40423) (t!308874 lt!1328853)))))

(assert (=> d!1136854 (= (drop!2133 (t!308874 lt!1328853) (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1)) lt!1329999)))

(declare-fun b!3830166 () Bool)

(declare-fun e!2365371 () Int)

(assert (=> b!3830166 (= e!2365370 (= (size!30470 lt!1329999) e!2365371))))

(declare-fun c!667861 () Bool)

(assert (=> b!3830166 (= c!667861 (<= (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1) 0))))

(declare-fun b!3830167 () Bool)

(assert (=> b!3830167 (= e!2365371 e!2365373)))

(declare-fun c!667860 () Bool)

(declare-fun call!281434 () Int)

(assert (=> b!3830167 (= c!667860 (>= (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1) call!281434))))

(declare-fun b!3830168 () Bool)

(assert (=> b!3830168 (= e!2365373 (- call!281434 (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1)))))

(declare-fun b!3830169 () Bool)

(assert (=> b!3830169 (= e!2365372 Nil!40423)))

(declare-fun b!3830170 () Bool)

(assert (=> b!3830170 (= e!2365371 call!281434)))

(declare-fun b!3830171 () Bool)

(declare-fun e!2365369 () List!40547)

(assert (=> b!3830171 (= e!2365369 (t!308874 lt!1328853))))

(declare-fun bm!281429 () Bool)

(assert (=> bm!281429 (= call!281434 (size!30470 (t!308874 lt!1328853)))))

(declare-fun b!3830172 () Bool)

(assert (=> b!3830172 (= e!2365369 (drop!2133 (t!308874 (t!308874 lt!1328853)) (- (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1) 1)))))

(declare-fun b!3830173 () Bool)

(assert (=> b!3830173 (= e!2365372 e!2365369)))

(declare-fun c!667859 () Bool)

(assert (=> b!3830173 (= c!667859 (<= (- (- (size!30470 lt!1328853) (size!30470 lt!1328865)) 1) 0))))

(assert (= (and d!1136854 c!667858) b!3830169))

(assert (= (and d!1136854 (not c!667858)) b!3830173))

(assert (= (and b!3830173 c!667859) b!3830171))

(assert (= (and b!3830173 (not c!667859)) b!3830172))

(assert (= (and d!1136854 res!1550614) b!3830166))

(assert (= (and b!3830166 c!667861) b!3830170))

(assert (= (and b!3830166 (not c!667861)) b!3830167))

(assert (= (and b!3830167 c!667860) b!3830165))

(assert (= (and b!3830167 (not c!667860)) b!3830168))

(assert (= (or b!3830170 b!3830167 b!3830168) bm!281429))

(declare-fun m!4384131 () Bool)

(assert (=> d!1136854 m!4384131))

(assert (=> d!1136854 m!4383695))

(declare-fun m!4384133 () Bool)

(assert (=> b!3830166 m!4384133))

(assert (=> bm!281429 m!4380849))

(declare-fun m!4384135 () Bool)

(assert (=> b!3830172 m!4384135))

(assert (=> b!3828401 d!1136854))

(declare-fun d!1136856 () Bool)

(assert (=> d!1136856 (= (get!13412 lt!1329338) (v!38923 lt!1329338))))

(assert (=> b!3828541 d!1136856))

(declare-fun d!1136858 () Bool)

(assert (=> d!1136858 (= (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13))) (v!38925 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13))))))

(assert (=> b!3828541 d!1136858))

(declare-fun b!3830174 () Bool)

(declare-fun res!1550616 () Bool)

(declare-fun e!2365374 () Bool)

(assert (=> b!3830174 (=> (not res!1550616) (not e!2365374))))

(declare-fun lt!1330000 () Option!8650)

(assert (=> b!3830174 (= res!1550616 (= (value!197991 (_1!22949 (get!13413 lt!1330000))) (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1330000)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1330000)))))))))

(declare-fun b!3830175 () Bool)

(assert (=> b!3830175 (= e!2365374 (contains!8206 rules!1265 (rule!9048 (_1!22949 (get!13413 lt!1330000)))))))

(declare-fun b!3830176 () Bool)

(declare-fun res!1550621 () Bool)

(assert (=> b!3830176 (=> (not res!1550621) (not e!2365374))))

(assert (=> b!3830176 (= res!1550621 (= (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330000)))) (originalCharacters!6824 (_1!22949 (get!13413 lt!1330000)))))))

(declare-fun bm!281430 () Bool)

(declare-fun call!281435 () Option!8650)

(assert (=> bm!281430 (= call!281435 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 treated!13)))))

(declare-fun b!3830177 () Bool)

(declare-fun res!1550618 () Bool)

(assert (=> b!3830177 (=> (not res!1550618) (not e!2365374))))

(assert (=> b!3830177 (= res!1550618 (matchR!5322 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1330000)))) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330000))))))))

(declare-fun d!1136860 () Bool)

(declare-fun e!2365376 () Bool)

(assert (=> d!1136860 e!2365376))

(declare-fun res!1550619 () Bool)

(assert (=> d!1136860 (=> res!1550619 e!2365376)))

(assert (=> d!1136860 (= res!1550619 (isEmpty!23857 lt!1330000))))

(declare-fun e!2365375 () Option!8650)

(assert (=> d!1136860 (= lt!1330000 e!2365375)))

(declare-fun c!667862 () Bool)

(assert (=> d!1136860 (= c!667862 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330004 () Unit!58192)

(declare-fun lt!1330002 () Unit!58192)

(assert (=> d!1136860 (= lt!1330004 lt!1330002)))

(assert (=> d!1136860 (isPrefix!3333 (list!15055 treated!13) (list!15055 treated!13))))

(assert (=> d!1136860 (= lt!1330002 (lemmaIsPrefixRefl!2118 (list!15055 treated!13) (list!15055 treated!13)))))

(assert (=> d!1136860 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1136860 (= (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 treated!13)) lt!1330000)))

(declare-fun b!3830178 () Bool)

(declare-fun lt!1330003 () Option!8650)

(declare-fun lt!1330001 () Option!8650)

(assert (=> b!3830178 (= e!2365375 (ite (and ((_ is None!8649) lt!1330003) ((_ is None!8649) lt!1330001)) None!8649 (ite ((_ is None!8649) lt!1330001) lt!1330003 (ite ((_ is None!8649) lt!1330003) lt!1330001 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1330003))) (size!30466 (_1!22949 (v!38925 lt!1330001)))) lt!1330003 lt!1330001)))))))

(assert (=> b!3830178 (= lt!1330003 call!281435)))

(assert (=> b!3830178 (= lt!1330001 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13)))))

(declare-fun b!3830179 () Bool)

(assert (=> b!3830179 (= e!2365376 e!2365374)))

(declare-fun res!1550615 () Bool)

(assert (=> b!3830179 (=> (not res!1550615) (not e!2365374))))

(assert (=> b!3830179 (= res!1550615 (isDefined!6811 lt!1330000))))

(declare-fun b!3830180 () Bool)

(declare-fun res!1550617 () Bool)

(assert (=> b!3830180 (=> (not res!1550617) (not e!2365374))))

(assert (=> b!3830180 (= res!1550617 (< (size!30470 (_2!22949 (get!13413 lt!1330000))) (size!30470 (list!15055 treated!13))))))

(declare-fun b!3830181 () Bool)

(assert (=> b!3830181 (= e!2365375 call!281435)))

(declare-fun b!3830182 () Bool)

(declare-fun res!1550620 () Bool)

(assert (=> b!3830182 (=> (not res!1550620) (not e!2365374))))

(assert (=> b!3830182 (= res!1550620 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330000)))) (_2!22949 (get!13413 lt!1330000))) (list!15055 treated!13)))))

(assert (= (and d!1136860 c!667862) b!3830181))

(assert (= (and d!1136860 (not c!667862)) b!3830178))

(assert (= (or b!3830181 b!3830178) bm!281430))

(assert (= (and d!1136860 (not res!1550619)) b!3830179))

(assert (= (and b!3830179 res!1550615) b!3830176))

(assert (= (and b!3830176 res!1550621) b!3830180))

(assert (= (and b!3830180 res!1550617) b!3830182))

(assert (= (and b!3830182 res!1550620) b!3830174))

(assert (= (and b!3830174 res!1550616) b!3830177))

(assert (= (and b!3830177 res!1550618) b!3830175))

(declare-fun m!4384137 () Bool)

(assert (=> b!3830176 m!4384137))

(declare-fun m!4384139 () Bool)

(assert (=> b!3830176 m!4384139))

(assert (=> b!3830176 m!4384139))

(declare-fun m!4384141 () Bool)

(assert (=> b!3830176 m!4384141))

(assert (=> bm!281430 m!4379225))

(assert (=> bm!281430 m!4383707))

(declare-fun m!4384143 () Bool)

(assert (=> b!3830179 m!4384143))

(assert (=> b!3830178 m!4379225))

(declare-fun m!4384145 () Bool)

(assert (=> b!3830178 m!4384145))

(assert (=> b!3830175 m!4384137))

(declare-fun m!4384147 () Bool)

(assert (=> b!3830175 m!4384147))

(declare-fun m!4384149 () Bool)

(assert (=> d!1136860 m!4384149))

(assert (=> d!1136860 m!4379225))

(assert (=> d!1136860 m!4379225))

(assert (=> d!1136860 m!4383647))

(assert (=> d!1136860 m!4379225))

(assert (=> d!1136860 m!4379225))

(assert (=> d!1136860 m!4383649))

(assert (=> d!1136860 m!4379483))

(assert (=> b!3830177 m!4384137))

(assert (=> b!3830177 m!4384139))

(assert (=> b!3830177 m!4384139))

(assert (=> b!3830177 m!4384141))

(assert (=> b!3830177 m!4384141))

(declare-fun m!4384151 () Bool)

(assert (=> b!3830177 m!4384151))

(assert (=> b!3830180 m!4384137))

(declare-fun m!4384153 () Bool)

(assert (=> b!3830180 m!4384153))

(assert (=> b!3830180 m!4379225))

(assert (=> b!3830180 m!4380447))

(assert (=> b!3830174 m!4384137))

(declare-fun m!4384155 () Bool)

(assert (=> b!3830174 m!4384155))

(assert (=> b!3830174 m!4384155))

(declare-fun m!4384157 () Bool)

(assert (=> b!3830174 m!4384157))

(assert (=> b!3830182 m!4384137))

(assert (=> b!3830182 m!4384139))

(assert (=> b!3830182 m!4384139))

(assert (=> b!3830182 m!4384141))

(assert (=> b!3830182 m!4384141))

(declare-fun m!4384159 () Bool)

(assert (=> b!3830182 m!4384159))

(assert (=> b!3828541 d!1136860))

(assert (=> b!3828541 d!1135438))

(declare-fun b!3830183 () Bool)

(declare-fun e!2365377 () List!40547)

(assert (=> b!3830183 (= e!2365377 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855)))))))

(declare-fun b!3830184 () Bool)

(assert (=> b!3830184 (= e!2365377 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855))))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855))))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855)))))))))

(declare-fun b!3830185 () Bool)

(declare-fun res!1550623 () Bool)

(declare-fun e!2365378 () Bool)

(assert (=> b!3830185 (=> (not res!1550623) (not e!2365378))))

(declare-fun lt!1330005 () List!40547)

(assert (=> b!3830185 (= res!1550623 (= (size!30470 lt!1330005) (+ (size!30470 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855))))) (size!30470 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855))))))))))

(declare-fun b!3830186 () Bool)

(assert (=> b!3830186 (= e!2365378 (or (not (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855)))) Nil!40423)) (= lt!1330005 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855)))))))))

(declare-fun d!1136862 () Bool)

(assert (=> d!1136862 e!2365378))

(declare-fun res!1550622 () Bool)

(assert (=> d!1136862 (=> (not res!1550622) (not e!2365378))))

(assert (=> d!1136862 (= res!1550622 (= (content!5990 lt!1330005) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855))))) (content!5990 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855))))))))))

(assert (=> d!1136862 (= lt!1330005 e!2365377)))

(declare-fun c!667863 () Bool)

(assert (=> d!1136862 (= c!667863 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855))))))))

(assert (=> d!1136862 (= (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855))))) lt!1330005)))

(assert (= (and d!1136862 c!667863) b!3830183))

(assert (= (and d!1136862 (not c!667863)) b!3830184))

(assert (= (and d!1136862 res!1550622) b!3830185))

(assert (= (and b!3830185 res!1550623) b!3830186))

(assert (=> b!3830184 m!4379975))

(declare-fun m!4384161 () Bool)

(assert (=> b!3830184 m!4384161))

(declare-fun m!4384163 () Bool)

(assert (=> b!3830185 m!4384163))

(assert (=> b!3830185 m!4379973))

(declare-fun m!4384165 () Bool)

(assert (=> b!3830185 m!4384165))

(assert (=> b!3830185 m!4379975))

(declare-fun m!4384167 () Bool)

(assert (=> b!3830185 m!4384167))

(declare-fun m!4384169 () Bool)

(assert (=> d!1136862 m!4384169))

(assert (=> d!1136862 m!4379973))

(declare-fun m!4384171 () Bool)

(assert (=> d!1136862 m!4384171))

(assert (=> d!1136862 m!4379975))

(declare-fun m!4384173 () Bool)

(assert (=> d!1136862 m!4384173))

(assert (=> b!3827733 d!1136862))

(declare-fun b!3830187 () Bool)

(declare-fun e!2365379 () List!40547)

(assert (=> b!3830187 (= e!2365379 Nil!40423)))

(declare-fun b!3830188 () Bool)

(declare-fun e!2365380 () List!40547)

(assert (=> b!3830188 (= e!2365379 e!2365380)))

(declare-fun c!667865 () Bool)

(assert (=> b!3830188 (= c!667865 ((_ is Leaf!19232) (left!31275 (c!667180 (_2!22945 lt!1328855)))))))

(declare-fun b!3830189 () Bool)

(assert (=> b!3830189 (= e!2365380 (list!15063 (xs!15716 (left!31275 (c!667180 (_2!22945 lt!1328855))))))))

(declare-fun b!3830190 () Bool)

(assert (=> b!3830190 (= e!2365380 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 (_2!22945 lt!1328855))))) (list!15059 (right!31605 (left!31275 (c!667180 (_2!22945 lt!1328855)))))))))

(declare-fun d!1136864 () Bool)

(declare-fun c!667864 () Bool)

(assert (=> d!1136864 (= c!667864 ((_ is Empty!12422) (left!31275 (c!667180 (_2!22945 lt!1328855)))))))

(assert (=> d!1136864 (= (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328855)))) e!2365379)))

(assert (= (and d!1136864 c!667864) b!3830187))

(assert (= (and d!1136864 (not c!667864)) b!3830188))

(assert (= (and b!3830188 c!667865) b!3830189))

(assert (= (and b!3830188 (not c!667865)) b!3830190))

(declare-fun m!4384175 () Bool)

(assert (=> b!3830189 m!4384175))

(declare-fun m!4384177 () Bool)

(assert (=> b!3830190 m!4384177))

(declare-fun m!4384179 () Bool)

(assert (=> b!3830190 m!4384179))

(assert (=> b!3830190 m!4384177))

(assert (=> b!3830190 m!4384179))

(declare-fun m!4384181 () Bool)

(assert (=> b!3830190 m!4384181))

(assert (=> b!3827733 d!1136864))

(declare-fun b!3830191 () Bool)

(declare-fun e!2365381 () List!40547)

(assert (=> b!3830191 (= e!2365381 Nil!40423)))

(declare-fun b!3830192 () Bool)

(declare-fun e!2365382 () List!40547)

(assert (=> b!3830192 (= e!2365381 e!2365382)))

(declare-fun c!667867 () Bool)

(assert (=> b!3830192 (= c!667867 ((_ is Leaf!19232) (right!31605 (c!667180 (_2!22945 lt!1328855)))))))

(declare-fun b!3830193 () Bool)

(assert (=> b!3830193 (= e!2365382 (list!15063 (xs!15716 (right!31605 (c!667180 (_2!22945 lt!1328855))))))))

(declare-fun b!3830194 () Bool)

(assert (=> b!3830194 (= e!2365382 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 (_2!22945 lt!1328855))))) (list!15059 (right!31605 (right!31605 (c!667180 (_2!22945 lt!1328855)))))))))

(declare-fun d!1136866 () Bool)

(declare-fun c!667866 () Bool)

(assert (=> d!1136866 (= c!667866 ((_ is Empty!12422) (right!31605 (c!667180 (_2!22945 lt!1328855)))))))

(assert (=> d!1136866 (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328855)))) e!2365381)))

(assert (= (and d!1136866 c!667866) b!3830191))

(assert (= (and d!1136866 (not c!667866)) b!3830192))

(assert (= (and b!3830192 c!667867) b!3830193))

(assert (= (and b!3830192 (not c!667867)) b!3830194))

(declare-fun m!4384183 () Bool)

(assert (=> b!3830193 m!4384183))

(declare-fun m!4384185 () Bool)

(assert (=> b!3830194 m!4384185))

(declare-fun m!4384187 () Bool)

(assert (=> b!3830194 m!4384187))

(assert (=> b!3830194 m!4384185))

(assert (=> b!3830194 m!4384187))

(declare-fun m!4384189 () Bool)

(assert (=> b!3830194 m!4384189))

(assert (=> b!3827733 d!1136866))

(declare-fun d!1136868 () Bool)

(assert (=> d!1136868 (= (list!15056 (_1!22945 lt!1329197)) (list!15060 (c!667181 (_1!22945 lt!1329197))))))

(declare-fun bs!582171 () Bool)

(assert (= bs!582171 d!1136868))

(declare-fun m!4384191 () Bool)

(assert (=> bs!582171 m!4384191))

(assert (=> b!3828016 d!1136868))

(assert (=> b!3828016 d!1136750))

(assert (=> b!3828016 d!1136752))

(assert (=> b!3828465 d!1136642))

(assert (=> b!3828465 d!1135516))

(assert (=> b!3828465 d!1136644))

(assert (=> b!3828465 d!1135436))

(assert (=> b!3828465 d!1135520))

(declare-fun d!1136870 () Bool)

(declare-fun c!667868 () Bool)

(assert (=> d!1136870 (= c!667868 ((_ is Nil!40423) (t!308874 lt!1328963)))))

(declare-fun e!2365383 () (InoxSet C!22444))

(assert (=> d!1136870 (= (content!5990 (t!308874 lt!1328963)) e!2365383)))

(declare-fun b!3830195 () Bool)

(assert (=> b!3830195 (= e!2365383 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830196 () Bool)

(assert (=> b!3830196 (= e!2365383 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 (t!308874 lt!1328963)) true) (content!5990 (t!308874 (t!308874 lt!1328963)))))))

(assert (= (and d!1136870 c!667868) b!3830195))

(assert (= (and d!1136870 (not c!667868)) b!3830196))

(declare-fun m!4384193 () Bool)

(assert (=> b!3830196 m!4384193))

(declare-fun m!4384195 () Bool)

(assert (=> b!3830196 m!4384195))

(assert (=> b!3828427 d!1136870))

(declare-fun d!1136872 () Bool)

(declare-fun lt!1330006 () Int)

(assert (=> d!1136872 (>= lt!1330006 0)))

(declare-fun e!2365384 () Int)

(assert (=> d!1136872 (= lt!1330006 e!2365384)))

(declare-fun c!667869 () Bool)

(assert (=> d!1136872 (= c!667869 ((_ is Nil!40423) (innerList!12482 (xs!15716 (c!667180 input!678)))))))

(assert (=> d!1136872 (= (size!30470 (innerList!12482 (xs!15716 (c!667180 input!678)))) lt!1330006)))

(declare-fun b!3830197 () Bool)

(assert (=> b!3830197 (= e!2365384 0)))

(declare-fun b!3830198 () Bool)

(assert (=> b!3830198 (= e!2365384 (+ 1 (size!30470 (t!308874 (innerList!12482 (xs!15716 (c!667180 input!678)))))))))

(assert (= (and d!1136872 c!667869) b!3830197))

(assert (= (and d!1136872 (not c!667869)) b!3830198))

(declare-fun m!4384197 () Bool)

(assert (=> b!3830198 m!4384197))

(assert (=> d!1135692 d!1136872))

(declare-fun b!3830199 () Bool)

(declare-fun res!1550626 () Bool)

(declare-fun e!2365386 () Bool)

(assert (=> b!3830199 (=> (not res!1550626) (not e!2365386))))

(assert (=> b!3830199 (= res!1550626 (isBalanced!3601 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))))))

(declare-fun b!3830200 () Bool)

(declare-fun res!1550629 () Bool)

(assert (=> b!3830200 (=> (not res!1550629) (not e!2365386))))

(assert (=> b!3830200 (= res!1550629 (<= (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))))) 1))))

(declare-fun b!3830201 () Bool)

(declare-fun res!1550625 () Bool)

(assert (=> b!3830201 (=> (not res!1550625) (not e!2365386))))

(assert (=> b!3830201 (= res!1550625 (isBalanced!3601 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))))))

(declare-fun b!3830202 () Bool)

(declare-fun e!2365385 () Bool)

(assert (=> b!3830202 (= e!2365385 e!2365386)))

(declare-fun res!1550628 () Bool)

(assert (=> b!3830202 (=> (not res!1550628) (not e!2365386))))

(assert (=> b!3830202 (= res!1550628 (<= (- 1) (- (height!1816 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))) (height!1816 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))))))))

(declare-fun d!1136874 () Bool)

(declare-fun res!1550624 () Bool)

(assert (=> d!1136874 (=> res!1550624 e!2365385)))

(assert (=> d!1136874 (= res!1550624 (not ((_ is Node!12423) (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))))))))

(assert (=> d!1136874 (= (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))) e!2365385)))

(declare-fun b!3830203 () Bool)

(declare-fun res!1550627 () Bool)

(assert (=> b!3830203 (=> (not res!1550627) (not e!2365386))))

(assert (=> b!3830203 (= res!1550627 (not (isEmpty!23863 (left!31276 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))))))))

(declare-fun b!3830204 () Bool)

(assert (=> b!3830204 (= e!2365386 (not (isEmpty!23863 (right!31606 (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951)))))))))

(assert (= (and d!1136874 (not res!1550624)) b!3830202))

(assert (= (and b!3830202 res!1550628) b!3830200))

(assert (= (and b!3830200 res!1550629) b!3830199))

(assert (= (and b!3830199 res!1550626) b!3830201))

(assert (= (and b!3830201 res!1550625) b!3830203))

(assert (= (and b!3830203 res!1550627) b!3830204))

(declare-fun m!4384199 () Bool)

(assert (=> b!3830201 m!4384199))

(declare-fun m!4384201 () Bool)

(assert (=> b!3830199 m!4384201))

(declare-fun m!4384203 () Bool)

(assert (=> b!3830204 m!4384203))

(declare-fun m!4384205 () Bool)

(assert (=> b!3830203 m!4384205))

(declare-fun m!4384207 () Bool)

(assert (=> b!3830200 m!4384207))

(declare-fun m!4384209 () Bool)

(assert (=> b!3830200 m!4384209))

(assert (=> b!3830202 m!4384207))

(assert (=> b!3830202 m!4384209))

(assert (=> d!1135844 d!1136874))

(declare-fun d!1136876 () Bool)

(declare-fun e!2365387 () Bool)

(assert (=> d!1136876 e!2365387))

(declare-fun res!1550630 () Bool)

(assert (=> d!1136876 (=> (not res!1550630) (not e!2365387))))

(declare-fun lt!1330007 () Conc!12423)

(assert (=> d!1136876 (= res!1550630 (isBalanced!3601 lt!1330007))))

(assert (=> d!1136876 (= lt!1330007 (++!10191 (Leaf!19233 (fill!201 1 (_1!22946 (v!38923 lt!1328951))) 1) (c!667181 (_1!22945 lt!1328949))))))

(assert (=> d!1136876 (isBalanced!3601 (c!667181 (_1!22945 lt!1328949)))))

(assert (=> d!1136876 (= (prepend!1382 (c!667181 (_1!22945 lt!1328949)) (_1!22946 (v!38923 lt!1328951))) lt!1330007)))

(declare-fun b!3830205 () Bool)

(assert (=> b!3830205 (= e!2365387 (= (list!15060 lt!1330007) (Cons!40424 (_1!22946 (v!38923 lt!1328951)) (list!15060 (c!667181 (_1!22945 lt!1328949))))))))

(assert (= (and d!1136876 res!1550630) b!3830205))

(declare-fun m!4384211 () Bool)

(assert (=> d!1136876 m!4384211))

(declare-fun m!4384213 () Bool)

(assert (=> d!1136876 m!4384213))

(declare-fun m!4384215 () Bool)

(assert (=> d!1136876 m!4384215))

(declare-fun m!4384217 () Bool)

(assert (=> d!1136876 m!4384217))

(declare-fun m!4384219 () Bool)

(assert (=> b!3830205 m!4384219))

(declare-fun m!4384221 () Bool)

(assert (=> b!3830205 m!4384221))

(assert (=> d!1135844 d!1136876))

(declare-fun d!1136878 () Bool)

(declare-fun choose!22532 (Int) Bool)

(assert (=> d!1136878 (= (Forall2!1022 lambda!125933) (choose!22532 lambda!125933))))

(declare-fun bs!582172 () Bool)

(assert (= bs!582172 d!1136878))

(declare-fun m!4384223 () Bool)

(assert (=> bs!582172 m!4384223))

(assert (=> d!1135650 d!1136878))

(declare-fun d!1136880 () Bool)

(declare-fun lt!1330010 () Bool)

(declare-fun content!5995 (List!40549) (InoxSet Rule!12248))

(assert (=> d!1136880 (= lt!1330010 (select (content!5995 rules!1265) (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))

(declare-fun e!2365393 () Bool)

(assert (=> d!1136880 (= lt!1330010 e!2365393)))

(declare-fun res!1550635 () Bool)

(assert (=> d!1136880 (=> (not res!1550635) (not e!2365393))))

(assert (=> d!1136880 (= res!1550635 ((_ is Cons!40425) rules!1265))))

(assert (=> d!1136880 (= (contains!8206 rules!1265 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) lt!1330010)))

(declare-fun b!3830210 () Bool)

(declare-fun e!2365392 () Bool)

(assert (=> b!3830210 (= e!2365393 e!2365392)))

(declare-fun res!1550636 () Bool)

(assert (=> b!3830210 (=> res!1550636 e!2365392)))

(assert (=> b!3830210 (= res!1550636 (= (h!45845 rules!1265) (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))

(declare-fun b!3830211 () Bool)

(assert (=> b!3830211 (= e!2365392 (contains!8206 (t!308876 rules!1265) (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))

(assert (= (and d!1136880 res!1550635) b!3830210))

(assert (= (and b!3830210 (not res!1550636)) b!3830211))

(declare-fun m!4384225 () Bool)

(assert (=> d!1136880 m!4384225))

(declare-fun m!4384227 () Bool)

(assert (=> d!1136880 m!4384227))

(declare-fun m!4384229 () Bool)

(assert (=> b!3830211 m!4384229))

(assert (=> b!3827714 d!1136880))

(assert (=> b!3827714 d!1136740))

(declare-fun d!1136882 () Bool)

(declare-fun lt!1330011 () Int)

(assert (=> d!1136882 (= lt!1330011 (size!30470 (list!15059 (left!31275 (c!667180 input!678)))))))

(assert (=> d!1136882 (= lt!1330011 (ite ((_ is Empty!12422) (left!31275 (c!667180 input!678))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 input!678))) (csize!25075 (left!31275 (c!667180 input!678))) (csize!25074 (left!31275 (c!667180 input!678))))))))

(assert (=> d!1136882 (= (size!30478 (left!31275 (c!667180 input!678))) lt!1330011)))

(declare-fun bs!582173 () Bool)

(assert (= bs!582173 d!1136882))

(assert (=> bs!582173 m!4380833))

(assert (=> bs!582173 m!4380833))

(declare-fun m!4384231 () Bool)

(assert (=> bs!582173 m!4384231))

(assert (=> d!1135672 d!1136882))

(declare-fun d!1136884 () Bool)

(declare-fun lt!1330012 () Int)

(assert (=> d!1136884 (= lt!1330012 (size!30470 (list!15059 (right!31605 (c!667180 input!678)))))))

(assert (=> d!1136884 (= lt!1330012 (ite ((_ is Empty!12422) (right!31605 (c!667180 input!678))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 input!678))) (csize!25075 (right!31605 (c!667180 input!678))) (csize!25074 (right!31605 (c!667180 input!678))))))))

(assert (=> d!1136884 (= (size!30478 (right!31605 (c!667180 input!678))) lt!1330012)))

(declare-fun bs!582174 () Bool)

(assert (= bs!582174 d!1136884))

(assert (=> bs!582174 m!4380835))

(assert (=> bs!582174 m!4380835))

(declare-fun m!4384233 () Bool)

(assert (=> bs!582174 m!4384233))

(assert (=> d!1135672 d!1136884))

(declare-fun b!3830212 () Bool)

(declare-fun e!2365394 () List!40547)

(assert (=> b!3830212 (= e!2365394 Nil!40423)))

(declare-fun b!3830213 () Bool)

(declare-fun e!2365395 () List!40547)

(assert (=> b!3830213 (= e!2365394 e!2365395)))

(declare-fun c!667871 () Bool)

(assert (=> b!3830213 (= c!667871 ((_ is Leaf!19232) (c!667180 (_2!22946 (get!13412 lt!1328935)))))))

(declare-fun b!3830214 () Bool)

(assert (=> b!3830214 (= e!2365395 (list!15063 (xs!15716 (c!667180 (_2!22946 (get!13412 lt!1328935))))))))

(declare-fun b!3830215 () Bool)

(assert (=> b!3830215 (= e!2365395 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22946 (get!13412 lt!1328935))))) (list!15059 (right!31605 (c!667180 (_2!22946 (get!13412 lt!1328935)))))))))

(declare-fun d!1136886 () Bool)

(declare-fun c!667870 () Bool)

(assert (=> d!1136886 (= c!667870 ((_ is Empty!12422) (c!667180 (_2!22946 (get!13412 lt!1328935)))))))

(assert (=> d!1136886 (= (list!15059 (c!667180 (_2!22946 (get!13412 lt!1328935)))) e!2365394)))

(assert (= (and d!1136886 c!667870) b!3830212))

(assert (= (and d!1136886 (not c!667870)) b!3830213))

(assert (= (and b!3830213 c!667871) b!3830214))

(assert (= (and b!3830213 (not c!667871)) b!3830215))

(declare-fun m!4384235 () Bool)

(assert (=> b!3830214 m!4384235))

(declare-fun m!4384237 () Bool)

(assert (=> b!3830215 m!4384237))

(declare-fun m!4384239 () Bool)

(assert (=> b!3830215 m!4384239))

(assert (=> b!3830215 m!4384237))

(assert (=> b!3830215 m!4384239))

(declare-fun m!4384241 () Bool)

(assert (=> b!3830215 m!4384241))

(assert (=> d!1135518 d!1136886))

(declare-fun d!1136888 () Bool)

(declare-fun c!667872 () Bool)

(assert (=> d!1136888 (= c!667872 ((_ is Nil!40423) lt!1329272))))

(declare-fun e!2365396 () (InoxSet C!22444))

(assert (=> d!1136888 (= (content!5990 lt!1329272) e!2365396)))

(declare-fun b!3830216 () Bool)

(assert (=> b!3830216 (= e!2365396 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830217 () Bool)

(assert (=> b!3830217 (= e!2365396 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 lt!1329272) true) (content!5990 (t!308874 lt!1329272))))))

(assert (= (and d!1136888 c!667872) b!3830216))

(assert (= (and d!1136888 (not c!667872)) b!3830217))

(declare-fun m!4384243 () Bool)

(assert (=> b!3830217 m!4384243))

(declare-fun m!4384245 () Bool)

(assert (=> b!3830217 m!4384245))

(assert (=> d!1135756 d!1136888))

(declare-fun d!1136890 () Bool)

(declare-fun c!667873 () Bool)

(assert (=> d!1136890 (= c!667873 ((_ is Nil!40423) (t!308874 lt!1328858)))))

(declare-fun e!2365397 () (InoxSet C!22444))

(assert (=> d!1136890 (= (content!5990 (t!308874 lt!1328858)) e!2365397)))

(declare-fun b!3830218 () Bool)

(assert (=> b!3830218 (= e!2365397 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830219 () Bool)

(assert (=> b!3830219 (= e!2365397 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 (t!308874 lt!1328858)) true) (content!5990 (t!308874 (t!308874 lt!1328858)))))))

(assert (= (and d!1136890 c!667873) b!3830218))

(assert (= (and d!1136890 (not c!667873)) b!3830219))

(declare-fun m!4384247 () Bool)

(assert (=> b!3830219 m!4384247))

(declare-fun m!4384249 () Bool)

(assert (=> b!3830219 m!4384249))

(assert (=> d!1135756 d!1136890))

(assert (=> d!1135756 d!1135798))

(declare-fun d!1136892 () Bool)

(assert (=> d!1136892 (= (get!13412 lt!1329167) (v!38923 lt!1329167))))

(assert (=> b!3827974 d!1136892))

(declare-fun b!3830238 () Bool)

(declare-fun res!1550654 () Bool)

(declare-fun e!2365407 () Bool)

(assert (=> b!3830238 (=> (not res!1550654) (not e!2365407))))

(declare-fun lt!1330027 () Option!8650)

(assert (=> b!3830238 (= res!1550654 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330027)))) (_2!22949 (get!13413 lt!1330027))) (list!15055 input!678)))))

(declare-fun b!3830239 () Bool)

(declare-fun e!2365408 () Bool)

(assert (=> b!3830239 (= e!2365408 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) (list!15055 input!678) (list!15055 input!678) (size!30470 (list!15055 input!678))))))))

(declare-fun b!3830240 () Bool)

(declare-fun e!2365409 () Option!8650)

(assert (=> b!3830240 (= e!2365409 None!8649)))

(declare-fun b!3830241 () Bool)

(declare-fun res!1550651 () Bool)

(assert (=> b!3830241 (=> (not res!1550651) (not e!2365407))))

(assert (=> b!3830241 (= res!1550651 (< (size!30470 (_2!22949 (get!13413 lt!1330027))) (size!30470 (list!15055 input!678))))))

(declare-fun b!3830242 () Bool)

(declare-fun lt!1330026 () tuple2!39636)

(assert (=> b!3830242 (= e!2365409 (Some!8649 (tuple2!39631 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (seqFromList!4507 (_1!22952 lt!1330026))) (h!45845 rules!1265) (size!30472 (seqFromList!4507 (_1!22952 lt!1330026))) (_1!22952 lt!1330026)) (_2!22952 lt!1330026))))))

(declare-fun lt!1330023 () Unit!58192)

(assert (=> b!3830242 (= lt!1330023 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) (list!15055 input!678)))))

(declare-fun res!1550656 () Bool)

(assert (=> b!3830242 (= res!1550656 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) (list!15055 input!678) (list!15055 input!678) (size!30470 (list!15055 input!678))))))))

(assert (=> b!3830242 (=> res!1550656 e!2365408)))

(assert (=> b!3830242 e!2365408))

(declare-fun lt!1330025 () Unit!58192)

(assert (=> b!3830242 (= lt!1330025 lt!1330023)))

(declare-fun lt!1330024 () Unit!58192)

(declare-fun lemmaSemiInverse!1649 (TokenValueInjection!12336 BalanceConc!24438) Unit!58192)

(assert (=> b!3830242 (= lt!1330024 (lemmaSemiInverse!1649 (transformation!6224 (h!45845 rules!1265)) (seqFromList!4507 (_1!22952 lt!1330026))))))

(declare-fun b!3830243 () Bool)

(declare-fun e!2365406 () Bool)

(assert (=> b!3830243 (= e!2365406 e!2365407)))

(declare-fun res!1550657 () Bool)

(assert (=> b!3830243 (=> (not res!1550657) (not e!2365407))))

(assert (=> b!3830243 (= res!1550657 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330027))))))))

(declare-fun b!3830244 () Bool)

(assert (=> b!3830244 (= e!2365407 (= (size!30466 (_1!22949 (get!13413 lt!1330027))) (size!30470 (originalCharacters!6824 (_1!22949 (get!13413 lt!1330027))))))))

(declare-fun b!3830245 () Bool)

(declare-fun res!1550652 () Bool)

(assert (=> b!3830245 (=> (not res!1550652) (not e!2365407))))

(assert (=> b!3830245 (= res!1550652 (= (rule!9048 (_1!22949 (get!13413 lt!1330027))) (h!45845 rules!1265)))))

(declare-fun d!1136894 () Bool)

(assert (=> d!1136894 e!2365406))

(declare-fun res!1550653 () Bool)

(assert (=> d!1136894 (=> res!1550653 e!2365406)))

(assert (=> d!1136894 (= res!1550653 (isEmpty!23857 lt!1330027))))

(assert (=> d!1136894 (= lt!1330027 e!2365409)))

(declare-fun c!667876 () Bool)

(assert (=> d!1136894 (= c!667876 (isEmpty!23850 (_1!22952 lt!1330026)))))

(declare-fun findLongestMatch!1058 (Regex!11129 List!40547) tuple2!39636)

(assert (=> d!1136894 (= lt!1330026 (findLongestMatch!1058 (regex!6224 (h!45845 rules!1265)) (list!15055 input!678)))))

(assert (=> d!1136894 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1136894 (= (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)) lt!1330027)))

(declare-fun b!3830246 () Bool)

(declare-fun res!1550655 () Bool)

(assert (=> b!3830246 (=> (not res!1550655) (not e!2365407))))

(assert (=> b!3830246 (= res!1550655 (= (value!197991 (_1!22949 (get!13413 lt!1330027))) (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1330027)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1330027)))))))))

(assert (= (and d!1136894 c!667876) b!3830240))

(assert (= (and d!1136894 (not c!667876)) b!3830242))

(assert (= (and b!3830242 (not res!1550656)) b!3830239))

(assert (= (and d!1136894 (not res!1550653)) b!3830243))

(assert (= (and b!3830243 res!1550657) b!3830238))

(assert (= (and b!3830238 res!1550654) b!3830241))

(assert (= (and b!3830241 res!1550651) b!3830245))

(assert (= (and b!3830245 res!1550652) b!3830246))

(assert (= (and b!3830246 res!1550655) b!3830244))

(assert (=> b!3830239 m!4380267))

(assert (=> b!3830239 m!4379223))

(assert (=> b!3830239 m!4379959))

(assert (=> b!3830239 m!4380267))

(assert (=> b!3830239 m!4379223))

(assert (=> b!3830239 m!4379223))

(assert (=> b!3830239 m!4379959))

(declare-fun m!4384251 () Bool)

(assert (=> b!3830239 m!4384251))

(declare-fun m!4384253 () Bool)

(assert (=> b!3830239 m!4384253))

(declare-fun m!4384255 () Bool)

(assert (=> b!3830238 m!4384255))

(declare-fun m!4384257 () Bool)

(assert (=> b!3830238 m!4384257))

(assert (=> b!3830238 m!4384257))

(declare-fun m!4384259 () Bool)

(assert (=> b!3830238 m!4384259))

(assert (=> b!3830238 m!4384259))

(declare-fun m!4384261 () Bool)

(assert (=> b!3830238 m!4384261))

(declare-fun m!4384263 () Bool)

(assert (=> d!1136894 m!4384263))

(declare-fun m!4384265 () Bool)

(assert (=> d!1136894 m!4384265))

(assert (=> d!1136894 m!4379223))

(declare-fun m!4384267 () Bool)

(assert (=> d!1136894 m!4384267))

(assert (=> d!1136894 m!4380305))

(assert (=> b!3830246 m!4384255))

(declare-fun m!4384269 () Bool)

(assert (=> b!3830246 m!4384269))

(assert (=> b!3830246 m!4384269))

(declare-fun m!4384271 () Bool)

(assert (=> b!3830246 m!4384271))

(assert (=> b!3830243 m!4384255))

(assert (=> b!3830243 m!4384257))

(assert (=> b!3830243 m!4384257))

(assert (=> b!3830243 m!4384259))

(assert (=> b!3830243 m!4384259))

(declare-fun m!4384273 () Bool)

(assert (=> b!3830243 m!4384273))

(assert (=> b!3830241 m!4384255))

(declare-fun m!4384275 () Bool)

(assert (=> b!3830241 m!4384275))

(assert (=> b!3830241 m!4379223))

(assert (=> b!3830241 m!4379959))

(assert (=> b!3830242 m!4380267))

(declare-fun m!4384277 () Bool)

(assert (=> b!3830242 m!4384277))

(assert (=> b!3830242 m!4379223))

(declare-fun m!4384279 () Bool)

(assert (=> b!3830242 m!4384279))

(declare-fun m!4384281 () Bool)

(assert (=> b!3830242 m!4384281))

(assert (=> b!3830242 m!4384277))

(declare-fun m!4384283 () Bool)

(assert (=> b!3830242 m!4384283))

(assert (=> b!3830242 m!4379223))

(assert (=> b!3830242 m!4379959))

(assert (=> b!3830242 m!4380267))

(assert (=> b!3830242 m!4379223))

(assert (=> b!3830242 m!4379223))

(assert (=> b!3830242 m!4379959))

(assert (=> b!3830242 m!4384251))

(assert (=> b!3830242 m!4384277))

(declare-fun m!4384285 () Bool)

(assert (=> b!3830242 m!4384285))

(assert (=> b!3830242 m!4384277))

(declare-fun m!4384287 () Bool)

(assert (=> b!3830242 m!4384287))

(assert (=> b!3830244 m!4384255))

(declare-fun m!4384289 () Bool)

(assert (=> b!3830244 m!4384289))

(assert (=> b!3830245 m!4384255))

(assert (=> b!3827974 d!1136894))

(assert (=> b!3827974 d!1135436))

(declare-fun d!1136896 () Bool)

(assert (=> d!1136896 (= (list!15055 (_2!22946 (get!13412 lt!1329167))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1329167)))))))

(declare-fun bs!582175 () Bool)

(assert (= bs!582175 d!1136896))

(declare-fun m!4384291 () Bool)

(assert (=> bs!582175 m!4384291))

(assert (=> b!3827974 d!1136896))

(declare-fun d!1136898 () Bool)

(assert (=> d!1136898 (= (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))) (v!38925 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))))))

(assert (=> b!3827974 d!1136898))

(declare-fun d!1136900 () Bool)

(assert (=> d!1136900 (= (list!15055 (_2!22945 lt!1329201)) (list!15059 (c!667180 (_2!22945 lt!1329201))))))

(declare-fun bs!582176 () Bool)

(assert (= bs!582176 d!1136900))

(declare-fun m!4384293 () Bool)

(assert (=> bs!582176 m!4384293))

(assert (=> b!3828018 d!1136900))

(assert (=> b!3828018 d!1136714))

(declare-fun d!1136902 () Bool)

(declare-fun lt!1330028 () Int)

(assert (=> d!1136902 (>= lt!1330028 0)))

(declare-fun e!2365410 () Int)

(assert (=> d!1136902 (= lt!1330028 e!2365410)))

(declare-fun c!667877 () Bool)

(assert (=> d!1136902 (= c!667877 ((_ is Nil!40424) (innerList!12483 (xs!15717 (c!667181 acc!335)))))))

(assert (=> d!1136902 (= (size!30476 (innerList!12483 (xs!15717 (c!667181 acc!335)))) lt!1330028)))

(declare-fun b!3830247 () Bool)

(assert (=> b!3830247 (= e!2365410 0)))

(declare-fun b!3830248 () Bool)

(assert (=> b!3830248 (= e!2365410 (+ 1 (size!30476 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(assert (= (and d!1136902 c!667877) b!3830247))

(assert (= (and d!1136902 (not c!667877)) b!3830248))

(declare-fun m!4384295 () Bool)

(assert (=> b!3830248 m!4384295))

(assert (=> d!1135720 d!1136902))

(assert (=> d!1135770 d!1135516))

(declare-fun b!3830251 () Bool)

(declare-fun e!2365411 () Bool)

(assert (=> b!3830251 (= e!2365411 (isPrefix!3333 (tail!5795 (list!15055 input!678)) (tail!5795 (list!15055 input!678))))))

(declare-fun b!3830249 () Bool)

(declare-fun e!2365413 () Bool)

(assert (=> b!3830249 (= e!2365413 e!2365411)))

(declare-fun res!1550659 () Bool)

(assert (=> b!3830249 (=> (not res!1550659) (not e!2365411))))

(assert (=> b!3830249 (= res!1550659 (not ((_ is Nil!40423) (list!15055 input!678))))))

(declare-fun b!3830250 () Bool)

(declare-fun res!1550661 () Bool)

(assert (=> b!3830250 (=> (not res!1550661) (not e!2365411))))

(assert (=> b!3830250 (= res!1550661 (= (head!8068 (list!15055 input!678)) (head!8068 (list!15055 input!678))))))

(declare-fun d!1136904 () Bool)

(declare-fun e!2365412 () Bool)

(assert (=> d!1136904 e!2365412))

(declare-fun res!1550658 () Bool)

(assert (=> d!1136904 (=> res!1550658 e!2365412)))

(declare-fun lt!1330029 () Bool)

(assert (=> d!1136904 (= res!1550658 (not lt!1330029))))

(assert (=> d!1136904 (= lt!1330029 e!2365413)))

(declare-fun res!1550660 () Bool)

(assert (=> d!1136904 (=> res!1550660 e!2365413)))

(assert (=> d!1136904 (= res!1550660 ((_ is Nil!40423) (list!15055 input!678)))))

(assert (=> d!1136904 (= (isPrefix!3333 (list!15055 input!678) (list!15055 input!678)) lt!1330029)))

(declare-fun b!3830252 () Bool)

(assert (=> b!3830252 (= e!2365412 (>= (size!30470 (list!15055 input!678)) (size!30470 (list!15055 input!678))))))

(assert (= (and d!1136904 (not res!1550660)) b!3830249))

(assert (= (and b!3830249 res!1550659) b!3830250))

(assert (= (and b!3830250 res!1550661) b!3830251))

(assert (= (and d!1136904 (not res!1550658)) b!3830252))

(assert (=> b!3830251 m!4379223))

(declare-fun m!4384297 () Bool)

(assert (=> b!3830251 m!4384297))

(assert (=> b!3830251 m!4379223))

(assert (=> b!3830251 m!4384297))

(assert (=> b!3830251 m!4384297))

(assert (=> b!3830251 m!4384297))

(declare-fun m!4384299 () Bool)

(assert (=> b!3830251 m!4384299))

(assert (=> b!3830250 m!4379223))

(declare-fun m!4384301 () Bool)

(assert (=> b!3830250 m!4384301))

(assert (=> b!3830250 m!4379223))

(assert (=> b!3830250 m!4384301))

(assert (=> b!3830252 m!4379223))

(assert (=> b!3830252 m!4379959))

(assert (=> b!3830252 m!4379223))

(assert (=> b!3830252 m!4379959))

(assert (=> d!1135770 d!1136904))

(declare-fun d!1136906 () Bool)

(assert (=> d!1136906 (isPrefix!3333 (list!15055 input!678) (list!15055 input!678))))

(declare-fun lt!1330030 () Unit!58192)

(assert (=> d!1136906 (= lt!1330030 (choose!22530 (list!15055 input!678) (list!15055 input!678)))))

(assert (=> d!1136906 (= (lemmaIsPrefixRefl!2118 (list!15055 input!678) (list!15055 input!678)) lt!1330030)))

(declare-fun bs!582177 () Bool)

(assert (= bs!582177 d!1136906))

(assert (=> bs!582177 m!4379223))

(assert (=> bs!582177 m!4379223))

(assert (=> bs!582177 m!4379951))

(assert (=> bs!582177 m!4379223))

(assert (=> bs!582177 m!4379223))

(declare-fun m!4384303 () Bool)

(assert (=> bs!582177 m!4384303))

(assert (=> d!1135770 d!1136906))

(assert (=> d!1135770 d!1135802))

(declare-fun lt!1330045 () Option!8650)

(declare-fun d!1136908 () Bool)

(assert (=> d!1136908 (= lt!1330045 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))

(declare-fun e!2365419 () Option!8650)

(assert (=> d!1136908 (= lt!1330045 e!2365419)))

(declare-fun c!667880 () Bool)

(declare-fun lt!1330047 () tuple2!39636)

(assert (=> d!1136908 (= c!667880 (isEmpty!23850 (_1!22952 lt!1330047)))))

(declare-fun findLongestMatchWithZipper!63 (Regex!11129 List!40547) tuple2!39636)

(assert (=> d!1136908 (= lt!1330047 (findLongestMatchWithZipper!63 (regex!6224 (h!45845 rules!1265)) (list!15055 input!678)))))

(assert (=> d!1136908 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1136908 (= (maxPrefixOneRuleZipper!219 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)) lt!1330045)))

(declare-fun b!3830259 () Bool)

(assert (=> b!3830259 (= e!2365419 None!8649)))

(declare-fun b!3830260 () Bool)

(assert (=> b!3830260 (= e!2365419 (Some!8649 (tuple2!39631 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (seqFromList!4507 (_1!22952 lt!1330047))) (h!45845 rules!1265) (size!30470 (_1!22952 lt!1330047)) (_1!22952 lt!1330047)) (_2!22952 lt!1330047))))))

(declare-fun lt!1330043 () Unit!58192)

(assert (=> b!3830260 (= lt!1330043 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) (list!15055 input!678)))))

(declare-fun res!1550664 () Bool)

(assert (=> b!3830260 (= res!1550664 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) (list!15055 input!678) (list!15055 input!678) (size!30470 (list!15055 input!678))))))))

(declare-fun e!2365418 () Bool)

(assert (=> b!3830260 (=> res!1550664 e!2365418)))

(assert (=> b!3830260 e!2365418))

(declare-fun lt!1330048 () Unit!58192)

(assert (=> b!3830260 (= lt!1330048 lt!1330043)))

(declare-fun lt!1330046 () Unit!58192)

(assert (=> b!3830260 (= lt!1330046 (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))))))

(declare-fun lt!1330044 () Unit!58192)

(assert (=> b!3830260 (= lt!1330044 (lemmaSemiInverse!1649 (transformation!6224 (h!45845 rules!1265)) (seqFromList!4507 (_1!22952 lt!1330047))))))

(declare-fun b!3830261 () Bool)

(assert (=> b!3830261 (= e!2365418 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) (list!15055 input!678) (list!15055 input!678) (size!30470 (list!15055 input!678))))))))

(assert (= (and d!1136908 c!667880) b!3830259))

(assert (= (and d!1136908 (not c!667880)) b!3830260))

(assert (= (and b!3830260 (not res!1550664)) b!3830261))

(assert (=> d!1136908 m!4379223))

(assert (=> d!1136908 m!4379941))

(declare-fun m!4384305 () Bool)

(assert (=> d!1136908 m!4384305))

(assert (=> d!1136908 m!4379223))

(declare-fun m!4384307 () Bool)

(assert (=> d!1136908 m!4384307))

(assert (=> d!1136908 m!4380305))

(assert (=> b!3830260 m!4380267))

(assert (=> b!3830260 m!4379223))

(assert (=> b!3830260 m!4384279))

(declare-fun m!4384309 () Bool)

(assert (=> b!3830260 m!4384309))

(assert (=> b!3830260 m!4384281))

(assert (=> b!3830260 m!4380281))

(declare-fun m!4384311 () Bool)

(assert (=> b!3830260 m!4384311))

(declare-fun m!4384313 () Bool)

(assert (=> b!3830260 m!4384313))

(assert (=> b!3830260 m!4384311))

(assert (=> b!3830260 m!4384311))

(declare-fun m!4384315 () Bool)

(assert (=> b!3830260 m!4384315))

(assert (=> b!3830260 m!4380267))

(assert (=> b!3830260 m!4379223))

(assert (=> b!3830260 m!4379223))

(assert (=> b!3830260 m!4379959))

(assert (=> b!3830260 m!4384251))

(assert (=> b!3830260 m!4379223))

(assert (=> b!3830260 m!4379959))

(assert (=> b!3830261 m!4380267))

(assert (=> b!3830261 m!4379223))

(assert (=> b!3830261 m!4379959))

(assert (=> b!3830261 m!4380267))

(assert (=> b!3830261 m!4379223))

(assert (=> b!3830261 m!4379223))

(assert (=> b!3830261 m!4379959))

(assert (=> b!3830261 m!4384251))

(assert (=> b!3830261 m!4384253))

(assert (=> bm!281288 d!1136908))

(declare-fun d!1136910 () Bool)

(assert (=> d!1136910 (= (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))) (not (isEmpty!23857 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))))

(declare-fun bs!582178 () Bool)

(assert (= bs!582178 d!1136910))

(assert (=> bs!582178 m!4379941))

(declare-fun m!4384317 () Bool)

(assert (=> bs!582178 m!4384317))

(assert (=> d!1135540 d!1136910))

(assert (=> d!1135540 d!1136894))

(assert (=> d!1135540 d!1135436))

(declare-fun d!1136912 () Bool)

(declare-fun res!1550669 () Bool)

(declare-fun e!2365422 () Bool)

(assert (=> d!1136912 (=> (not res!1550669) (not e!2365422))))

(assert (=> d!1136912 (= res!1550669 (validRegex!5070 (regex!6224 (h!45845 rules!1265))))))

(assert (=> d!1136912 (= (ruleValid!2185 thiss!11876 (h!45845 rules!1265)) e!2365422)))

(declare-fun b!3830266 () Bool)

(declare-fun res!1550670 () Bool)

(assert (=> b!3830266 (=> (not res!1550670) (not e!2365422))))

(assert (=> b!3830266 (= res!1550670 (not (nullable!3871 (regex!6224 (h!45845 rules!1265)))))))

(declare-fun b!3830267 () Bool)

(assert (=> b!3830267 (= e!2365422 (not (= (tag!7084 (h!45845 rules!1265)) (String!45953 ""))))))

(assert (= (and d!1136912 res!1550669) b!3830266))

(assert (= (and b!3830266 res!1550670) b!3830267))

(assert (=> d!1136912 m!4383833))

(assert (=> b!3830266 m!4383831))

(assert (=> d!1135540 d!1136912))

(assert (=> d!1135540 d!1136786))

(declare-fun d!1136914 () Bool)

(declare-fun lt!1330051 () Bool)

(assert (=> d!1136914 (= lt!1330051 (isEmpty!23850 (list!15055 (_1!22951 lt!1329164))))))

(assert (=> d!1136914 (= lt!1330051 (isEmpty!23861 (c!667180 (_1!22951 lt!1329164))))))

(assert (=> d!1136914 (= (isEmpty!23860 (_1!22951 lt!1329164)) lt!1330051)))

(declare-fun bs!582179 () Bool)

(assert (= bs!582179 d!1136914))

(assert (=> bs!582179 m!4380289))

(assert (=> bs!582179 m!4380289))

(declare-fun m!4384319 () Bool)

(assert (=> bs!582179 m!4384319))

(declare-fun m!4384321 () Bool)

(assert (=> bs!582179 m!4384321))

(assert (=> d!1135540 d!1136914))

(declare-fun d!1136916 () Bool)

(declare-fun lt!1330054 () tuple2!39634)

(assert (=> d!1136916 (= (tuple2!39637 (list!15055 (_1!22951 lt!1330054)) (list!15055 (_2!22951 lt!1330054))) (findLongestMatch!1058 (regex!6224 (h!45845 rules!1265)) (list!15055 input!678)))))

(declare-fun choose!22533 (Regex!11129 BalanceConc!24438 BalanceConc!24438) tuple2!39634)

(assert (=> d!1136916 (= lt!1330054 (choose!22533 (regex!6224 (h!45845 rules!1265)) input!678 totalInput!335))))

(assert (=> d!1136916 (validRegex!5070 (regex!6224 (h!45845 rules!1265)))))

(assert (=> d!1136916 (= (findLongestMatchWithZipperSequenceV2!113 (regex!6224 (h!45845 rules!1265)) input!678 totalInput!335) lt!1330054)))

(declare-fun bs!582180 () Bool)

(assert (= bs!582180 d!1136916))

(assert (=> bs!582180 m!4383833))

(declare-fun m!4384323 () Bool)

(assert (=> bs!582180 m!4384323))

(declare-fun m!4384325 () Bool)

(assert (=> bs!582180 m!4384325))

(assert (=> bs!582180 m!4379223))

(declare-fun m!4384327 () Bool)

(assert (=> bs!582180 m!4384327))

(assert (=> bs!582180 m!4379223))

(assert (=> bs!582180 m!4384267))

(assert (=> d!1135540 d!1136916))

(declare-fun d!1136918 () Bool)

(declare-fun res!1550671 () Bool)

(declare-fun e!2365423 () Bool)

(assert (=> d!1136918 (=> (not res!1550671) (not e!2365423))))

(assert (=> d!1136918 (= res!1550671 (<= (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 input!678))))) 512))))

(assert (=> d!1136918 (= (inv!54498 (left!31275 (c!667180 input!678))) e!2365423)))

(declare-fun b!3830268 () Bool)

(declare-fun res!1550672 () Bool)

(assert (=> b!3830268 (=> (not res!1550672) (not e!2365423))))

(assert (=> b!3830268 (= res!1550672 (= (csize!25075 (left!31275 (c!667180 input!678))) (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 input!678)))))))))

(declare-fun b!3830269 () Bool)

(assert (=> b!3830269 (= e!2365423 (and (> (csize!25075 (left!31275 (c!667180 input!678))) 0) (<= (csize!25075 (left!31275 (c!667180 input!678))) 512)))))

(assert (= (and d!1136918 res!1550671) b!3830268))

(assert (= (and b!3830268 res!1550672) b!3830269))

(declare-fun m!4384329 () Bool)

(assert (=> d!1136918 m!4384329))

(assert (=> d!1136918 m!4384329))

(declare-fun m!4384331 () Bool)

(assert (=> d!1136918 m!4384331))

(assert (=> b!3830268 m!4384329))

(assert (=> b!3830268 m!4384329))

(assert (=> b!3830268 m!4384331))

(assert (=> b!3828547 d!1136918))

(declare-fun bm!281431 () Bool)

(declare-fun call!281437 () List!40548)

(assert (=> bm!281431 (= call!281437 (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (left!31276 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830270 () Bool)

(declare-fun e!2365424 () Bool)

(declare-fun call!281438 () List!40548)

(declare-fun call!281436 () List!40548)

(assert (=> b!3830270 (= e!2365424 (= call!281438 call!281436))))

(declare-fun d!1136920 () Bool)

(assert (=> d!1136920 e!2365424))

(declare-fun c!667881 () Bool)

(assert (=> d!1136920 (= c!667881 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1136920 (= (appendAssoc!285 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861))))) true)))

(declare-fun bm!281432 () Bool)

(declare-fun call!281439 () List!40548)

(assert (=> bm!281432 (= call!281436 (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) call!281439))))

(declare-fun bm!281433 () Bool)

(assert (=> bm!281433 (= call!281439 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830271 () Bool)

(assert (=> b!3830271 (= e!2365424 (= call!281438 call!281436))))

(declare-fun lt!1330055 () Bool)

(assert (=> b!3830271 (= lt!1330055 (appendAssoc!285 (t!308875 (list!15060 (left!31276 (c!667181 acc!335)))) (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun bm!281434 () Bool)

(assert (=> bm!281434 (= call!281438 (++!10192 call!281437 (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(assert (= (and d!1136920 c!667881) b!3830270))

(assert (= (and d!1136920 (not c!667881)) b!3830271))

(assert (= (or b!3830270 b!3830271) bm!281431))

(assert (= (or b!3830270 b!3830271) bm!281433))

(assert (= (or b!3830270 b!3830271) bm!281434))

(assert (= (or b!3830270 b!3830271) bm!281432))

(assert (=> b!3830271 m!4379851))

(assert (=> b!3830271 m!4379853))

(declare-fun m!4384333 () Bool)

(assert (=> b!3830271 m!4384333))

(assert (=> bm!281431 m!4379849))

(assert (=> bm!281431 m!4379851))

(declare-fun m!4384335 () Bool)

(assert (=> bm!281431 m!4384335))

(assert (=> bm!281434 m!4379853))

(declare-fun m!4384337 () Bool)

(assert (=> bm!281434 m!4384337))

(assert (=> bm!281432 m!4379849))

(declare-fun m!4384339 () Bool)

(assert (=> bm!281432 m!4384339))

(assert (=> bm!281433 m!4379851))

(assert (=> bm!281433 m!4379853))

(declare-fun m!4384341 () Bool)

(assert (=> bm!281433 m!4384341))

(assert (=> b!3827609 d!1136920))

(assert (=> b!3827609 d!1136650))

(declare-fun b!3830273 () Bool)

(declare-fun e!2365425 () List!40548)

(declare-fun e!2365426 () List!40548)

(assert (=> b!3830273 (= e!2365425 e!2365426)))

(declare-fun c!667883 () Bool)

(assert (=> b!3830273 (= c!667883 ((_ is Leaf!19233) (left!31276 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830275 () Bool)

(assert (=> b!3830275 (= e!2365426 (++!10192 (list!15060 (left!31276 (left!31276 (right!31606 (c!667181 acc!335))))) (list!15060 (right!31606 (left!31276 (right!31606 (c!667181 acc!335)))))))))

(declare-fun d!1136922 () Bool)

(declare-fun c!667882 () Bool)

(assert (=> d!1136922 (= c!667882 ((_ is Empty!12423) (left!31276 (right!31606 (c!667181 acc!335)))))))

(assert (=> d!1136922 (= (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) e!2365425)))

(declare-fun b!3830274 () Bool)

(assert (=> b!3830274 (= e!2365426 (list!15064 (xs!15717 (left!31276 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830272 () Bool)

(assert (=> b!3830272 (= e!2365425 Nil!40424)))

(assert (= (and d!1136922 c!667882) b!3830272))

(assert (= (and d!1136922 (not c!667882)) b!3830273))

(assert (= (and b!3830273 c!667883) b!3830274))

(assert (= (and b!3830273 (not c!667883)) b!3830275))

(declare-fun m!4384343 () Bool)

(assert (=> b!3830275 m!4384343))

(declare-fun m!4384345 () Bool)

(assert (=> b!3830275 m!4384345))

(assert (=> b!3830275 m!4384343))

(assert (=> b!3830275 m!4384345))

(declare-fun m!4384347 () Bool)

(assert (=> b!3830275 m!4384347))

(declare-fun m!4384349 () Bool)

(assert (=> b!3830274 m!4384349))

(assert (=> b!3827609 d!1136922))

(assert (=> b!3827609 d!1136654))

(declare-fun b!3830278 () Bool)

(declare-fun res!1550673 () Bool)

(declare-fun e!2365428 () Bool)

(assert (=> b!3830278 (=> (not res!1550673) (not e!2365428))))

(declare-fun lt!1330056 () List!40548)

(assert (=> b!3830278 (= res!1550673 (= (size!30476 lt!1330056) (+ (size!30476 (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))) (size!30476 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830279 () Bool)

(assert (=> b!3830279 (= e!2365428 (or (not (= (list!15060 (c!667181 (_1!22945 lt!1328861))) Nil!40424)) (= lt!1330056 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))))))))

(declare-fun b!3830277 () Bool)

(declare-fun e!2365427 () List!40548)

(assert (=> b!3830277 (= e!2365427 (Cons!40424 (h!45844 (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))) (++!10192 (t!308875 (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830276 () Bool)

(assert (=> b!3830276 (= e!2365427 (list!15060 (c!667181 (_1!22945 lt!1328861))))))

(declare-fun d!1136924 () Bool)

(assert (=> d!1136924 e!2365428))

(declare-fun res!1550674 () Bool)

(assert (=> d!1136924 (=> (not res!1550674) (not e!2365428))))

(assert (=> d!1136924 (= res!1550674 (= (content!5992 lt!1330056) ((_ map or) (content!5992 (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))) (content!5992 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1136924 (= lt!1330056 e!2365427)))

(declare-fun c!667884 () Bool)

(assert (=> d!1136924 (= c!667884 ((_ is Nil!40424) (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))))))

(assert (=> d!1136924 (= (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861)))) lt!1330056)))

(assert (= (and d!1136924 c!667884) b!3830276))

(assert (= (and d!1136924 (not c!667884)) b!3830277))

(assert (= (and d!1136924 res!1550674) b!3830278))

(assert (= (and b!3830278 res!1550673) b!3830279))

(declare-fun m!4384351 () Bool)

(assert (=> b!3830278 m!4384351))

(assert (=> b!3830278 m!4379857))

(declare-fun m!4384353 () Bool)

(assert (=> b!3830278 m!4384353))

(assert (=> b!3830278 m!4379847))

(declare-fun m!4384355 () Bool)

(assert (=> b!3830278 m!4384355))

(assert (=> b!3830277 m!4379847))

(declare-fun m!4384357 () Bool)

(assert (=> b!3830277 m!4384357))

(declare-fun m!4384359 () Bool)

(assert (=> d!1136924 m!4384359))

(assert (=> d!1136924 m!4379857))

(declare-fun m!4384361 () Bool)

(assert (=> d!1136924 m!4384361))

(assert (=> d!1136924 m!4379847))

(declare-fun m!4384363 () Bool)

(assert (=> d!1136924 m!4384363))

(assert (=> b!3827609 d!1136924))

(declare-fun b!3830281 () Bool)

(declare-fun e!2365429 () List!40548)

(declare-fun e!2365430 () List!40548)

(assert (=> b!3830281 (= e!2365429 e!2365430)))

(declare-fun c!667886 () Bool)

(assert (=> b!3830281 (= c!667886 ((_ is Leaf!19233) (right!31606 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830283 () Bool)

(assert (=> b!3830283 (= e!2365430 (++!10192 (list!15060 (left!31276 (right!31606 (right!31606 (c!667181 acc!335))))) (list!15060 (right!31606 (right!31606 (right!31606 (c!667181 acc!335)))))))))

(declare-fun d!1136926 () Bool)

(declare-fun c!667885 () Bool)

(assert (=> d!1136926 (= c!667885 ((_ is Empty!12423) (right!31606 (right!31606 (c!667181 acc!335)))))))

(assert (=> d!1136926 (= (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) e!2365429)))

(declare-fun b!3830282 () Bool)

(assert (=> b!3830282 (= e!2365430 (list!15064 (xs!15717 (right!31606 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830280 () Bool)

(assert (=> b!3830280 (= e!2365429 Nil!40424)))

(assert (= (and d!1136926 c!667885) b!3830280))

(assert (= (and d!1136926 (not c!667885)) b!3830281))

(assert (= (and b!3830281 c!667886) b!3830282))

(assert (= (and b!3830281 (not c!667886)) b!3830283))

(declare-fun m!4384365 () Bool)

(assert (=> b!3830283 m!4384365))

(declare-fun m!4384367 () Bool)

(assert (=> b!3830283 m!4384367))

(assert (=> b!3830283 m!4384365))

(assert (=> b!3830283 m!4384367))

(declare-fun m!4384369 () Bool)

(assert (=> b!3830283 m!4384369))

(declare-fun m!4384371 () Bool)

(assert (=> b!3830282 m!4384371))

(assert (=> b!3827609 d!1136926))

(declare-fun d!1136928 () Bool)

(assert (=> d!1136928 (= (get!13412 lt!1329268) (v!38923 lt!1329268))))

(assert (=> b!3828340 d!1136928))

(declare-fun d!1136930 () Bool)

(assert (=> d!1136930 (= (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335))) (v!38925 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335))))))

(assert (=> b!3828340 d!1136930))

(declare-fun b!3830284 () Bool)

(declare-fun res!1550676 () Bool)

(declare-fun e!2365431 () Bool)

(assert (=> b!3830284 (=> (not res!1550676) (not e!2365431))))

(declare-fun lt!1330057 () Option!8650)

(assert (=> b!3830284 (= res!1550676 (= (value!197991 (_1!22949 (get!13413 lt!1330057))) (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1330057)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1330057)))))))))

(declare-fun b!3830285 () Bool)

(assert (=> b!3830285 (= e!2365431 (contains!8206 rules!1265 (rule!9048 (_1!22949 (get!13413 lt!1330057)))))))

(declare-fun b!3830286 () Bool)

(declare-fun res!1550681 () Bool)

(assert (=> b!3830286 (=> (not res!1550681) (not e!2365431))))

(assert (=> b!3830286 (= res!1550681 (= (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330057)))) (originalCharacters!6824 (_1!22949 (get!13413 lt!1330057)))))))

(declare-fun call!281440 () Option!8650)

(declare-fun bm!281435 () Bool)

(assert (=> bm!281435 (= call!281440 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 totalInput!335)))))

(declare-fun b!3830287 () Bool)

(declare-fun res!1550678 () Bool)

(assert (=> b!3830287 (=> (not res!1550678) (not e!2365431))))

(assert (=> b!3830287 (= res!1550678 (matchR!5322 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1330057)))) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330057))))))))

(declare-fun d!1136932 () Bool)

(declare-fun e!2365433 () Bool)

(assert (=> d!1136932 e!2365433))

(declare-fun res!1550679 () Bool)

(assert (=> d!1136932 (=> res!1550679 e!2365433)))

(assert (=> d!1136932 (= res!1550679 (isEmpty!23857 lt!1330057))))

(declare-fun e!2365432 () Option!8650)

(assert (=> d!1136932 (= lt!1330057 e!2365432)))

(declare-fun c!667887 () Bool)

(assert (=> d!1136932 (= c!667887 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330061 () Unit!58192)

(declare-fun lt!1330059 () Unit!58192)

(assert (=> d!1136932 (= lt!1330061 lt!1330059)))

(assert (=> d!1136932 (isPrefix!3333 (list!15055 totalInput!335) (list!15055 totalInput!335))))

(assert (=> d!1136932 (= lt!1330059 (lemmaIsPrefixRefl!2118 (list!15055 totalInput!335) (list!15055 totalInput!335)))))

(assert (=> d!1136932 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1136932 (= (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335)) lt!1330057)))

(declare-fun b!3830288 () Bool)

(declare-fun lt!1330060 () Option!8650)

(declare-fun lt!1330058 () Option!8650)

(assert (=> b!3830288 (= e!2365432 (ite (and ((_ is None!8649) lt!1330060) ((_ is None!8649) lt!1330058)) None!8649 (ite ((_ is None!8649) lt!1330058) lt!1330060 (ite ((_ is None!8649) lt!1330060) lt!1330058 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1330060))) (size!30466 (_1!22949 (v!38925 lt!1330058)))) lt!1330060 lt!1330058)))))))

(assert (=> b!3830288 (= lt!1330060 call!281440)))

(assert (=> b!3830288 (= lt!1330058 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335)))))

(declare-fun b!3830289 () Bool)

(assert (=> b!3830289 (= e!2365433 e!2365431)))

(declare-fun res!1550675 () Bool)

(assert (=> b!3830289 (=> (not res!1550675) (not e!2365431))))

(assert (=> b!3830289 (= res!1550675 (isDefined!6811 lt!1330057))))

(declare-fun b!3830290 () Bool)

(declare-fun res!1550677 () Bool)

(assert (=> b!3830290 (=> (not res!1550677) (not e!2365431))))

(assert (=> b!3830290 (= res!1550677 (< (size!30470 (_2!22949 (get!13413 lt!1330057))) (size!30470 (list!15055 totalInput!335))))))

(declare-fun b!3830291 () Bool)

(assert (=> b!3830291 (= e!2365432 call!281440)))

(declare-fun b!3830292 () Bool)

(declare-fun res!1550680 () Bool)

(assert (=> b!3830292 (=> (not res!1550680) (not e!2365431))))

(assert (=> b!3830292 (= res!1550680 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330057)))) (_2!22949 (get!13413 lt!1330057))) (list!15055 totalInput!335)))))

(assert (= (and d!1136932 c!667887) b!3830291))

(assert (= (and d!1136932 (not c!667887)) b!3830288))

(assert (= (or b!3830291 b!3830288) bm!281435))

(assert (= (and d!1136932 (not res!1550679)) b!3830289))

(assert (= (and b!3830289 res!1550675) b!3830286))

(assert (= (and b!3830286 res!1550681) b!3830290))

(assert (= (and b!3830290 res!1550677) b!3830292))

(assert (= (and b!3830292 res!1550680) b!3830284))

(assert (= (and b!3830284 res!1550676) b!3830287))

(assert (= (and b!3830287 res!1550678) b!3830285))

(declare-fun m!4384373 () Bool)

(assert (=> b!3830286 m!4384373))

(declare-fun m!4384375 () Bool)

(assert (=> b!3830286 m!4384375))

(assert (=> b!3830286 m!4384375))

(declare-fun m!4384377 () Bool)

(assert (=> b!3830286 m!4384377))

(assert (=> bm!281435 m!4379221))

(assert (=> bm!281435 m!4384031))

(declare-fun m!4384379 () Bool)

(assert (=> b!3830289 m!4384379))

(assert (=> b!3830288 m!4379221))

(declare-fun m!4384381 () Bool)

(assert (=> b!3830288 m!4384381))

(assert (=> b!3830285 m!4384373))

(declare-fun m!4384383 () Bool)

(assert (=> b!3830285 m!4384383))

(declare-fun m!4384385 () Bool)

(assert (=> d!1136932 m!4384385))

(assert (=> d!1136932 m!4379221))

(assert (=> d!1136932 m!4379221))

(declare-fun m!4384387 () Bool)

(assert (=> d!1136932 m!4384387))

(assert (=> d!1136932 m!4379221))

(assert (=> d!1136932 m!4379221))

(declare-fun m!4384389 () Bool)

(assert (=> d!1136932 m!4384389))

(assert (=> d!1136932 m!4379483))

(assert (=> b!3830287 m!4384373))

(assert (=> b!3830287 m!4384375))

(assert (=> b!3830287 m!4384375))

(assert (=> b!3830287 m!4384377))

(assert (=> b!3830287 m!4384377))

(declare-fun m!4384391 () Bool)

(assert (=> b!3830287 m!4384391))

(assert (=> b!3830290 m!4384373))

(declare-fun m!4384393 () Bool)

(assert (=> b!3830290 m!4384393))

(assert (=> b!3830290 m!4379221))

(assert (=> b!3830290 m!4379987))

(assert (=> b!3830284 m!4384373))

(declare-fun m!4384395 () Bool)

(assert (=> b!3830284 m!4384395))

(assert (=> b!3830284 m!4384395))

(declare-fun m!4384397 () Bool)

(assert (=> b!3830284 m!4384397))

(assert (=> b!3830292 m!4384373))

(assert (=> b!3830292 m!4384375))

(assert (=> b!3830292 m!4384375))

(assert (=> b!3830292 m!4384377))

(assert (=> b!3830292 m!4384377))

(declare-fun m!4384399 () Bool)

(assert (=> b!3830292 m!4384399))

(assert (=> b!3828340 d!1136932))

(assert (=> b!3828340 d!1135434))

(declare-fun d!1136934 () Bool)

(assert (=> d!1136934 (= (inv!54478 (tag!7084 (h!45845 (t!308876 (t!308876 rules!1265))))) (= (mod (str.len (value!197990 (tag!7084 (h!45845 (t!308876 (t!308876 rules!1265)))))) 2) 0))))

(assert (=> b!3828557 d!1136934))

(declare-fun d!1136936 () Bool)

(declare-fun res!1550682 () Bool)

(declare-fun e!2365434 () Bool)

(assert (=> d!1136936 (=> (not res!1550682) (not e!2365434))))

(assert (=> d!1136936 (= res!1550682 (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))))))

(assert (=> d!1136936 (= (inv!54486 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) e!2365434)))

(declare-fun b!3830293 () Bool)

(assert (=> b!3830293 (= e!2365434 (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))))))

(assert (= (and d!1136936 res!1550682) b!3830293))

(declare-fun m!4384401 () Bool)

(assert (=> d!1136936 m!4384401))

(declare-fun m!4384403 () Bool)

(assert (=> b!3830293 m!4384403))

(assert (=> b!3828557 d!1136936))

(declare-fun d!1136938 () Bool)

(declare-fun res!1550685 () Bool)

(declare-fun e!2365436 () Bool)

(assert (=> d!1136938 (=> res!1550685 e!2365436)))

(assert (=> d!1136938 (= res!1550685 (not ((_ is Node!12422) (right!31605 (c!667180 treated!13)))))))

(assert (=> d!1136938 (= (isBalanced!3602 (right!31605 (c!667180 treated!13))) e!2365436)))

(declare-fun b!3830294 () Bool)

(declare-fun res!1550687 () Bool)

(declare-fun e!2365435 () Bool)

(assert (=> b!3830294 (=> (not res!1550687) (not e!2365435))))

(assert (=> b!3830294 (= res!1550687 (isBalanced!3602 (right!31605 (right!31605 (c!667180 treated!13)))))))

(declare-fun b!3830295 () Bool)

(assert (=> b!3830295 (= e!2365436 e!2365435)))

(declare-fun res!1550686 () Bool)

(assert (=> b!3830295 (=> (not res!1550686) (not e!2365435))))

(assert (=> b!3830295 (= res!1550686 (<= (- 1) (- (height!1818 (left!31275 (right!31605 (c!667180 treated!13)))) (height!1818 (right!31605 (right!31605 (c!667180 treated!13)))))))))

(declare-fun b!3830296 () Bool)

(assert (=> b!3830296 (= e!2365435 (not (isEmpty!23861 (right!31605 (right!31605 (c!667180 treated!13))))))))

(declare-fun b!3830297 () Bool)

(declare-fun res!1550684 () Bool)

(assert (=> b!3830297 (=> (not res!1550684) (not e!2365435))))

(assert (=> b!3830297 (= res!1550684 (<= (- (height!1818 (left!31275 (right!31605 (c!667180 treated!13)))) (height!1818 (right!31605 (right!31605 (c!667180 treated!13))))) 1))))

(declare-fun b!3830298 () Bool)

(declare-fun res!1550688 () Bool)

(assert (=> b!3830298 (=> (not res!1550688) (not e!2365435))))

(assert (=> b!3830298 (= res!1550688 (not (isEmpty!23861 (left!31275 (right!31605 (c!667180 treated!13))))))))

(declare-fun b!3830299 () Bool)

(declare-fun res!1550683 () Bool)

(assert (=> b!3830299 (=> (not res!1550683) (not e!2365435))))

(assert (=> b!3830299 (= res!1550683 (isBalanced!3602 (left!31275 (right!31605 (c!667180 treated!13)))))))

(assert (= (and d!1136938 (not res!1550685)) b!3830295))

(assert (= (and b!3830295 res!1550686) b!3830297))

(assert (= (and b!3830297 res!1550684) b!3830299))

(assert (= (and b!3830299 res!1550683) b!3830294))

(assert (= (and b!3830294 res!1550687) b!3830298))

(assert (= (and b!3830298 res!1550688) b!3830296))

(declare-fun m!4384405 () Bool)

(assert (=> b!3830297 m!4384405))

(declare-fun m!4384407 () Bool)

(assert (=> b!3830297 m!4384407))

(declare-fun m!4384409 () Bool)

(assert (=> b!3830296 m!4384409))

(declare-fun m!4384411 () Bool)

(assert (=> b!3830298 m!4384411))

(declare-fun m!4384413 () Bool)

(assert (=> b!3830294 m!4384413))

(assert (=> b!3830295 m!4384405))

(assert (=> b!3830295 m!4384407))

(declare-fun m!4384415 () Bool)

(assert (=> b!3830299 m!4384415))

(assert (=> b!3828063 d!1136938))

(declare-fun d!1136940 () Bool)

(declare-fun lt!1330062 () Bool)

(assert (=> d!1136940 (= lt!1330062 (isEmpty!23858 (list!15060 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1136940 (= lt!1330062 (= (size!30477 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 0))))

(assert (=> d!1136940 (= (isEmpty!23863 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) lt!1330062)))

(declare-fun bs!582181 () Bool)

(assert (= bs!582181 d!1136940))

(declare-fun m!4384417 () Bool)

(assert (=> bs!582181 m!4384417))

(assert (=> bs!582181 m!4384417))

(declare-fun m!4384419 () Bool)

(assert (=> bs!582181 m!4384419))

(declare-fun m!4384421 () Bool)

(assert (=> bs!582181 m!4384421))

(assert (=> b!3828535 d!1136940))

(assert (=> b!3827677 d!1136788))

(assert (=> b!3827677 d!1135750))

(assert (=> b!3827677 d!1135754))

(assert (=> b!3827677 d!1135748))

(assert (=> b!3828162 d!1136674))

(assert (=> b!3828162 d!1136676))

(declare-fun d!1136942 () Bool)

(assert (=> d!1136942 (= (get!13412 lt!1329305) (v!38923 lt!1329305))))

(assert (=> b!3828420 d!1136942))

(declare-fun d!1136944 () Bool)

(assert (=> d!1136944 (= (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))) (v!38925 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))

(assert (=> b!3828420 d!1136944))

(assert (=> b!3828420 d!1136792))

(assert (=> b!3828420 d!1135436))

(declare-fun b!3830300 () Bool)

(declare-fun e!2365437 () List!40547)

(assert (=> b!3830300 (= e!2365437 Nil!40423)))

(declare-fun b!3830301 () Bool)

(declare-fun e!2365438 () List!40547)

(assert (=> b!3830301 (= e!2365437 e!2365438)))

(declare-fun c!667889 () Bool)

(assert (=> b!3830301 (= c!667889 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328950))))))

(declare-fun b!3830302 () Bool)

(assert (=> b!3830302 (= e!2365438 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328950)))))))

(declare-fun b!3830303 () Bool)

(assert (=> b!3830303 (= e!2365438 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328950)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328950))))))))

(declare-fun d!1136946 () Bool)

(declare-fun c!667888 () Bool)

(assert (=> d!1136946 (= c!667888 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328950))))))

(assert (=> d!1136946 (= (list!15059 (c!667180 (_2!22945 lt!1328950))) e!2365437)))

(assert (= (and d!1136946 c!667888) b!3830300))

(assert (= (and d!1136946 (not c!667888)) b!3830301))

(assert (= (and b!3830301 c!667889) b!3830302))

(assert (= (and b!3830301 (not c!667889)) b!3830303))

(declare-fun m!4384423 () Bool)

(assert (=> b!3830302 m!4384423))

(declare-fun m!4384425 () Bool)

(assert (=> b!3830303 m!4384425))

(declare-fun m!4384427 () Bool)

(assert (=> b!3830303 m!4384427))

(assert (=> b!3830303 m!4384425))

(assert (=> b!3830303 m!4384427))

(declare-fun m!4384429 () Bool)

(assert (=> b!3830303 m!4384429))

(assert (=> d!1135528 d!1136946))

(declare-fun b!3830304 () Bool)

(declare-fun e!2365446 () Conc!12423)

(declare-fun call!281448 () Conc!12423)

(assert (=> b!3830304 (= e!2365446 call!281448)))

(declare-fun b!3830305 () Bool)

(declare-fun e!2365445 () Conc!12423)

(assert (=> b!3830305 (= e!2365445 e!2365446)))

(declare-fun lt!1330066 () Conc!12423)

(declare-fun call!281450 () Conc!12423)

(assert (=> b!3830305 (= lt!1330066 call!281450)))

(declare-fun c!667891 () Bool)

(declare-fun call!281445 () Int)

(declare-fun call!281451 () Int)

(assert (=> b!3830305 (= c!667891 (= call!281445 (- call!281451 3)))))

(declare-fun b!3830306 () Bool)

(declare-fun res!1550691 () Bool)

(declare-fun e!2365444 () Bool)

(assert (=> b!3830306 (=> (not res!1550691) (not e!2365444))))

(declare-fun lt!1330063 () Conc!12423)

(assert (=> b!3830306 (= res!1550691 (isBalanced!3601 lt!1330063))))

(declare-fun b!3830307 () Bool)

(declare-fun res!1550689 () Bool)

(assert (=> b!3830307 (=> (not res!1550689) (not e!2365444))))

(assert (=> b!3830307 (= res!1550689 (<= (height!1816 lt!1330063) (+ (max!0 (height!1816 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (height!1816 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))) 1)))))

(declare-fun call!281441 () Int)

(declare-fun c!667895 () Bool)

(declare-fun bm!281436 () Bool)

(assert (=> bm!281436 (= call!281441 (height!1816 (ite c!667895 (right!31606 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (right!31606 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))))

(declare-fun b!3830308 () Bool)

(declare-fun call!281455 () Conc!12423)

(assert (=> b!3830308 (= e!2365445 call!281455)))

(declare-fun bm!281437 () Bool)

(assert (=> bm!281437 (= call!281448 call!281455)))

(declare-fun bm!281438 () Bool)

(declare-fun call!281446 () Conc!12423)

(declare-fun call!281442 () Conc!12423)

(assert (=> bm!281438 (= call!281446 call!281442)))

(declare-fun b!3830309 () Bool)

(declare-fun e!2365439 () Conc!12423)

(declare-fun call!281456 () Conc!12423)

(assert (=> b!3830309 (= e!2365439 call!281456)))

(declare-fun b!3830310 () Bool)

(declare-fun e!2365441 () Conc!12423)

(declare-fun e!2365443 () Conc!12423)

(assert (=> b!3830310 (= e!2365441 e!2365443)))

(declare-fun lt!1330065 () Conc!12423)

(declare-fun call!281447 () Conc!12423)

(assert (=> b!3830310 (= lt!1330065 call!281447)))

(declare-fun c!667893 () Bool)

(assert (=> b!3830310 (= c!667893 (= call!281451 (- call!281445 3)))))

(declare-fun b!3830311 () Bool)

(declare-fun e!2365442 () Conc!12423)

(assert (=> b!3830311 (= e!2365439 e!2365442)))

(declare-fun lt!1330064 () Int)

(assert (=> b!3830311 (= c!667895 (< lt!1330064 (- 1)))))

(declare-fun b!3830312 () Bool)

(declare-fun c!667892 () Bool)

(declare-fun call!281443 () Int)

(assert (=> b!3830312 (= c!667892 (>= call!281443 call!281441))))

(assert (=> b!3830312 (= e!2365442 e!2365441)))

(declare-fun call!281444 () Conc!12423)

(declare-fun bm!281439 () Bool)

(assert (=> bm!281439 (= call!281442 (<>!360 (ite c!667895 (ite c!667893 (left!31276 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) call!281444) (ite c!667891 lt!1330066 (right!31606 (left!31276 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))) (ite c!667895 (ite c!667893 call!281444 lt!1330065) (ite c!667891 (right!31606 (left!31276 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))) (right!31606 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))))))

(declare-fun b!3830313 () Bool)

(declare-fun c!667894 () Bool)

(assert (=> b!3830313 (= c!667894 (and (<= (- 1) lt!1330064) (<= lt!1330064 1)))))

(assert (=> b!3830313 (= lt!1330064 (- (height!1816 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (height!1816 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)))))))

(declare-fun e!2365448 () Conc!12423)

(assert (=> b!3830313 (= e!2365448 e!2365439)))

(declare-fun bm!281440 () Bool)

(declare-fun call!281454 () Conc!12423)

(assert (=> bm!281440 (= call!281454 call!281442)))

(declare-fun b!3830314 () Bool)

(assert (=> b!3830314 (= e!2365443 call!281454)))

(declare-fun b!3830315 () Bool)

(assert (=> b!3830315 (= e!2365443 call!281454)))

(declare-fun b!3830316 () Bool)

(declare-fun e!2365447 () Conc!12423)

(assert (=> b!3830316 (= e!2365447 e!2365448)))

(declare-fun c!667897 () Bool)

(assert (=> b!3830316 (= c!667897 (= (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) Empty!12423))))

(declare-fun bm!281441 () Bool)

(declare-fun call!281449 () Conc!12423)

(assert (=> bm!281441 (= call!281455 call!281449)))

(declare-fun b!3830317 () Bool)

(declare-fun res!1550692 () Bool)

(assert (=> b!3830317 (=> (not res!1550692) (not e!2365444))))

(assert (=> b!3830317 (= res!1550692 (>= (height!1816 lt!1330063) (max!0 (height!1816 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (height!1816 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))))

(declare-fun d!1136948 () Bool)

(assert (=> d!1136948 e!2365444))

(declare-fun res!1550690 () Bool)

(assert (=> d!1136948 (=> (not res!1550690) (not e!2365444))))

(assert (=> d!1136948 (= res!1550690 (appendAssocInst!875 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> d!1136948 (= lt!1330063 e!2365447)))

(declare-fun c!667890 () Bool)

(assert (=> d!1136948 (= c!667890 (= (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) Empty!12423))))

(declare-fun e!2365440 () Bool)

(assert (=> d!1136948 e!2365440))

(declare-fun res!1550693 () Bool)

(assert (=> d!1136948 (=> (not res!1550693) (not e!2365440))))

(assert (=> d!1136948 (= res!1550693 (isBalanced!3601 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))))))

(assert (=> d!1136948 (= (++!10191 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) lt!1330063)))

(declare-fun b!3830318 () Bool)

(assert (=> b!3830318 (= e!2365447 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun bm!281442 () Bool)

(assert (=> bm!281442 (= call!281451 (height!1816 (ite c!667895 lt!1330065 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))))

(declare-fun bm!281443 () Bool)

(declare-fun call!281453 () Conc!12423)

(assert (=> bm!281443 (= call!281450 call!281453)))

(declare-fun bm!281444 () Bool)

(declare-fun call!281452 () Conc!12423)

(assert (=> bm!281444 (= call!281444 call!281452)))

(declare-fun b!3830319 () Bool)

(assert (=> b!3830319 (= e!2365444 (= (list!15060 lt!1330063) (++!10192 (list!15060 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (list!15060 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))))

(declare-fun bm!281445 () Bool)

(assert (=> bm!281445 (= call!281449 call!281456)))

(declare-fun b!3830320 () Bool)

(assert (=> b!3830320 (= e!2365441 call!281452)))

(declare-fun b!3830321 () Bool)

(assert (=> b!3830321 (= e!2365440 (isBalanced!3601 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun bm!281446 () Bool)

(declare-fun c!667896 () Bool)

(assert (=> bm!281446 (= call!281453 (++!10191 (ite c!667895 (ite c!667892 (right!31606 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (right!31606 (right!31606 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))))) (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (ite c!667895 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (ite c!667896 (left!31276 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (left!31276 (left!31276 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))))))

(declare-fun bm!281447 () Bool)

(assert (=> bm!281447 (= call!281445 (height!1816 (ite c!667895 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) lt!1330066)))))

(declare-fun b!3830322 () Bool)

(assert (=> b!3830322 (= c!667896 (>= call!281441 call!281443))))

(assert (=> b!3830322 (= e!2365442 e!2365445)))

(declare-fun bm!281448 () Bool)

(assert (=> bm!281448 (= call!281456 (<>!360 (ite c!667894 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)) (ite c!667895 (ite c!667892 (left!31276 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (ite c!667893 (left!31276 (right!31606 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)))) (left!31276 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))))) (ite c!667896 call!281450 (ite c!667891 call!281446 lt!1330066)))) (ite c!667894 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (ite c!667895 (ite c!667892 call!281447 (ite c!667893 lt!1330065 (left!31276 (right!31606 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)))))) (ite (or c!667896 c!667891) (right!31606 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) call!281446)))))))

(declare-fun bm!281449 () Bool)

(assert (=> bm!281449 (= call!281452 call!281449)))

(declare-fun b!3830323 () Bool)

(assert (=> b!3830323 (= e!2365448 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335)))))

(declare-fun bm!281450 () Bool)

(assert (=> bm!281450 (= call!281443 (height!1816 (ite c!667895 (left!31276 (ite c!667310 (ite c!667307 (right!31606 (c!667181 acc!335)) (right!31606 (right!31606 (c!667181 acc!335)))) (c!667181 acc!335))) (left!31276 (ite c!667310 (c!667181 (_1!22945 lt!1328861)) (ite c!667311 (left!31276 (c!667181 (_1!22945 lt!1328861))) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))))

(declare-fun b!3830324 () Bool)

(assert (=> b!3830324 (= e!2365446 call!281448)))

(declare-fun bm!281451 () Bool)

(assert (=> bm!281451 (= call!281447 call!281453)))

(assert (= (and d!1136948 res!1550693) b!3830321))

(assert (= (and d!1136948 c!667890) b!3830318))

(assert (= (and d!1136948 (not c!667890)) b!3830316))

(assert (= (and b!3830316 c!667897) b!3830323))

(assert (= (and b!3830316 (not c!667897)) b!3830313))

(assert (= (and b!3830313 c!667894) b!3830309))

(assert (= (and b!3830313 (not c!667894)) b!3830311))

(assert (= (and b!3830311 c!667895) b!3830312))

(assert (= (and b!3830311 (not c!667895)) b!3830322))

(assert (= (and b!3830312 c!667892) b!3830320))

(assert (= (and b!3830312 (not c!667892)) b!3830310))

(assert (= (and b!3830310 c!667893) b!3830315))

(assert (= (and b!3830310 (not c!667893)) b!3830314))

(assert (= (or b!3830315 b!3830314) bm!281444))

(assert (= (or b!3830315 b!3830314) bm!281440))

(assert (= (or b!3830320 b!3830310) bm!281451))

(assert (= (or b!3830320 bm!281444) bm!281449))

(assert (= (and b!3830322 c!667896) b!3830308))

(assert (= (and b!3830322 (not c!667896)) b!3830305))

(assert (= (and b!3830305 c!667891) b!3830304))

(assert (= (and b!3830305 (not c!667891)) b!3830324))

(assert (= (or b!3830304 b!3830324) bm!281438))

(assert (= (or b!3830304 b!3830324) bm!281437))

(assert (= (or b!3830308 b!3830305) bm!281443))

(assert (= (or b!3830308 bm!281437) bm!281441))

(assert (= (or b!3830312 b!3830322) bm!281450))

(assert (= (or bm!281451 bm!281443) bm!281446))

(assert (= (or b!3830312 b!3830322) bm!281436))

(assert (= (or b!3830310 b!3830305) bm!281442))

(assert (= (or bm!281440 bm!281438) bm!281439))

(assert (= (or bm!281449 bm!281441) bm!281445))

(assert (= (or b!3830310 b!3830305) bm!281447))

(assert (= (or b!3830309 bm!281445) bm!281448))

(assert (= (and d!1136948 res!1550690) b!3830306))

(assert (= (and b!3830306 res!1550691) b!3830307))

(assert (= (and b!3830307 res!1550689) b!3830317))

(assert (= (and b!3830317 res!1550692) b!3830319))

(declare-fun m!4384431 () Bool)

(assert (=> b!3830321 m!4384431))

(declare-fun m!4384433 () Bool)

(assert (=> b!3830319 m!4384433))

(declare-fun m!4384435 () Bool)

(assert (=> b!3830319 m!4384435))

(declare-fun m!4384437 () Bool)

(assert (=> b!3830319 m!4384437))

(assert (=> b!3830319 m!4384435))

(assert (=> b!3830319 m!4384437))

(declare-fun m!4384439 () Bool)

(assert (=> b!3830319 m!4384439))

(declare-fun m!4384441 () Bool)

(assert (=> bm!281436 m!4384441))

(declare-fun m!4384443 () Bool)

(assert (=> b!3830317 m!4384443))

(declare-fun m!4384445 () Bool)

(assert (=> b!3830317 m!4384445))

(declare-fun m!4384447 () Bool)

(assert (=> b!3830317 m!4384447))

(assert (=> b!3830317 m!4384445))

(assert (=> b!3830317 m!4384447))

(declare-fun m!4384449 () Bool)

(assert (=> b!3830317 m!4384449))

(declare-fun m!4384451 () Bool)

(assert (=> bm!281442 m!4384451))

(declare-fun m!4384453 () Bool)

(assert (=> bm!281450 m!4384453))

(assert (=> b!3830307 m!4384443))

(assert (=> b!3830307 m!4384445))

(assert (=> b!3830307 m!4384447))

(assert (=> b!3830307 m!4384445))

(assert (=> b!3830307 m!4384447))

(assert (=> b!3830307 m!4384449))

(declare-fun m!4384455 () Bool)

(assert (=> b!3830306 m!4384455))

(declare-fun m!4384457 () Bool)

(assert (=> bm!281447 m!4384457))

(assert (=> b!3830313 m!4384447))

(assert (=> b!3830313 m!4384445))

(declare-fun m!4384459 () Bool)

(assert (=> d!1136948 m!4384459))

(declare-fun m!4384461 () Bool)

(assert (=> d!1136948 m!4384461))

(declare-fun m!4384463 () Bool)

(assert (=> bm!281439 m!4384463))

(declare-fun m!4384465 () Bool)

(assert (=> bm!281448 m!4384465))

(declare-fun m!4384467 () Bool)

(assert (=> bm!281446 m!4384467))

(assert (=> bm!281222 d!1136948))

(declare-fun b!3830325 () Bool)

(declare-fun e!2365449 () List!40547)

(assert (=> b!3830325 (= e!2365449 lt!1328865)))

(declare-fun b!3830326 () Bool)

(assert (=> b!3830326 (= e!2365449 (Cons!40423 (h!45843 (t!308874 (t!308874 lt!1328858))) (++!10187 (t!308874 (t!308874 (t!308874 lt!1328858))) lt!1328865)))))

(declare-fun b!3830327 () Bool)

(declare-fun res!1550695 () Bool)

(declare-fun e!2365450 () Bool)

(assert (=> b!3830327 (=> (not res!1550695) (not e!2365450))))

(declare-fun lt!1330067 () List!40547)

(assert (=> b!3830327 (= res!1550695 (= (size!30470 lt!1330067) (+ (size!30470 (t!308874 (t!308874 lt!1328858))) (size!30470 lt!1328865))))))

(declare-fun b!3830328 () Bool)

(assert (=> b!3830328 (= e!2365450 (or (not (= lt!1328865 Nil!40423)) (= lt!1330067 (t!308874 (t!308874 lt!1328858)))))))

(declare-fun d!1136950 () Bool)

(assert (=> d!1136950 e!2365450))

(declare-fun res!1550694 () Bool)

(assert (=> d!1136950 (=> (not res!1550694) (not e!2365450))))

(assert (=> d!1136950 (= res!1550694 (= (content!5990 lt!1330067) ((_ map or) (content!5990 (t!308874 (t!308874 lt!1328858))) (content!5990 lt!1328865))))))

(assert (=> d!1136950 (= lt!1330067 e!2365449)))

(declare-fun c!667898 () Bool)

(assert (=> d!1136950 (= c!667898 ((_ is Nil!40423) (t!308874 (t!308874 lt!1328858))))))

(assert (=> d!1136950 (= (++!10187 (t!308874 (t!308874 lt!1328858)) lt!1328865) lt!1330067)))

(assert (= (and d!1136950 c!667898) b!3830325))

(assert (= (and d!1136950 (not c!667898)) b!3830326))

(assert (= (and d!1136950 res!1550694) b!3830327))

(assert (= (and b!3830327 res!1550695) b!3830328))

(declare-fun m!4384469 () Bool)

(assert (=> b!3830326 m!4384469))

(declare-fun m!4384471 () Bool)

(assert (=> b!3830327 m!4384471))

(declare-fun m!4384473 () Bool)

(assert (=> b!3830327 m!4384473))

(assert (=> b!3830327 m!4379507))

(declare-fun m!4384475 () Bool)

(assert (=> d!1136950 m!4384475))

(assert (=> d!1136950 m!4384249))

(assert (=> d!1136950 m!4379633))

(assert (=> b!3828349 d!1136950))

(declare-fun d!1136952 () Bool)

(assert (=> d!1136952 (= (inv!54499 (xs!15717 (right!31606 (c!667181 acc!335)))) (<= (size!30476 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335))))) 2147483647))))

(declare-fun bs!582182 () Bool)

(assert (= bs!582182 d!1136952))

(declare-fun m!4384477 () Bool)

(assert (=> bs!582182 m!4384477))

(assert (=> b!3828610 d!1136952))

(declare-fun d!1136954 () Bool)

(declare-fun lt!1330068 () Int)

(assert (=> d!1136954 (>= lt!1330068 0)))

(declare-fun e!2365451 () Int)

(assert (=> d!1136954 (= lt!1330068 e!2365451)))

(declare-fun c!667899 () Bool)

(assert (=> d!1136954 (= c!667899 ((_ is Nil!40423) (t!308874 lt!1328865)))))

(assert (=> d!1136954 (= (size!30470 (t!308874 lt!1328865)) lt!1330068)))

(declare-fun b!3830329 () Bool)

(assert (=> b!3830329 (= e!2365451 0)))

(declare-fun b!3830330 () Bool)

(assert (=> b!3830330 (= e!2365451 (+ 1 (size!30470 (t!308874 (t!308874 lt!1328865)))))))

(assert (= (and d!1136954 c!667899) b!3830329))

(assert (= (and d!1136954 (not c!667899)) b!3830330))

(declare-fun m!4384479 () Bool)

(assert (=> b!3830330 m!4384479))

(assert (=> b!3828359 d!1136954))

(declare-fun d!1136956 () Bool)

(declare-fun c!667902 () Bool)

(assert (=> d!1136956 (= c!667902 ((_ is Nil!40424) lt!1329235))))

(declare-fun e!2365454 () (InoxSet Token!11586))

(assert (=> d!1136956 (= (content!5992 lt!1329235) e!2365454)))

(declare-fun b!3830335 () Bool)

(assert (=> b!3830335 (= e!2365454 ((as const (Array Token!11586 Bool)) false))))

(declare-fun b!3830336 () Bool)

(assert (=> b!3830336 (= e!2365454 ((_ map or) (store ((as const (Array Token!11586 Bool)) false) (h!45844 lt!1329235) true) (content!5992 (t!308875 lt!1329235))))))

(assert (= (and d!1136956 c!667902) b!3830335))

(assert (= (and d!1136956 (not c!667902)) b!3830336))

(declare-fun m!4384481 () Bool)

(assert (=> b!3830336 m!4384481))

(declare-fun m!4384483 () Bool)

(assert (=> b!3830336 m!4384483))

(assert (=> d!1135706 d!1136956))

(declare-fun d!1136958 () Bool)

(declare-fun c!667903 () Bool)

(assert (=> d!1136958 (= c!667903 ((_ is Nil!40424) (list!15056 acc!335)))))

(declare-fun e!2365455 () (InoxSet Token!11586))

(assert (=> d!1136958 (= (content!5992 (list!15056 acc!335)) e!2365455)))

(declare-fun b!3830337 () Bool)

(assert (=> b!3830337 (= e!2365455 ((as const (Array Token!11586 Bool)) false))))

(declare-fun b!3830338 () Bool)

(assert (=> b!3830338 (= e!2365455 ((_ map or) (store ((as const (Array Token!11586 Bool)) false) (h!45844 (list!15056 acc!335)) true) (content!5992 (t!308875 (list!15056 acc!335)))))))

(assert (= (and d!1136958 c!667903) b!3830337))

(assert (= (and d!1136958 (not c!667903)) b!3830338))

(declare-fun m!4384485 () Bool)

(assert (=> b!3830338 m!4384485))

(declare-fun m!4384487 () Bool)

(assert (=> b!3830338 m!4384487))

(assert (=> d!1135706 d!1136958))

(declare-fun d!1136960 () Bool)

(declare-fun c!667904 () Bool)

(assert (=> d!1136960 (= c!667904 ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328861))))))

(declare-fun e!2365456 () (InoxSet Token!11586))

(assert (=> d!1136960 (= (content!5992 (list!15056 (_1!22945 lt!1328861))) e!2365456)))

(declare-fun b!3830339 () Bool)

(assert (=> b!3830339 (= e!2365456 ((as const (Array Token!11586 Bool)) false))))

(declare-fun b!3830340 () Bool)

(assert (=> b!3830340 (= e!2365456 ((_ map or) (store ((as const (Array Token!11586 Bool)) false) (h!45844 (list!15056 (_1!22945 lt!1328861))) true) (content!5992 (t!308875 (list!15056 (_1!22945 lt!1328861))))))))

(assert (= (and d!1136960 c!667904) b!3830339))

(assert (= (and d!1136960 (not c!667904)) b!3830340))

(declare-fun m!4384489 () Bool)

(assert (=> b!3830340 m!4384489))

(declare-fun m!4384491 () Bool)

(assert (=> b!3830340 m!4384491))

(assert (=> d!1135706 d!1136960))

(declare-fun d!1136962 () Bool)

(declare-fun lt!1330069 () Int)

(assert (=> d!1136962 (>= lt!1330069 0)))

(declare-fun e!2365457 () Int)

(assert (=> d!1136962 (= lt!1330069 e!2365457)))

(declare-fun c!667905 () Bool)

(assert (=> d!1136962 (= c!667905 ((_ is Nil!40423) lt!1329272))))

(assert (=> d!1136962 (= (size!30470 lt!1329272) lt!1330069)))

(declare-fun b!3830341 () Bool)

(assert (=> b!3830341 (= e!2365457 0)))

(declare-fun b!3830342 () Bool)

(assert (=> b!3830342 (= e!2365457 (+ 1 (size!30470 (t!308874 lt!1329272))))))

(assert (= (and d!1136962 c!667905) b!3830341))

(assert (= (and d!1136962 (not c!667905)) b!3830342))

(declare-fun m!4384493 () Bool)

(assert (=> b!3830342 m!4384493))

(assert (=> b!3828350 d!1136962))

(declare-fun d!1136964 () Bool)

(declare-fun lt!1330070 () Int)

(assert (=> d!1136964 (>= lt!1330070 0)))

(declare-fun e!2365458 () Int)

(assert (=> d!1136964 (= lt!1330070 e!2365458)))

(declare-fun c!667906 () Bool)

(assert (=> d!1136964 (= c!667906 ((_ is Nil!40423) (t!308874 lt!1328858)))))

(assert (=> d!1136964 (= (size!30470 (t!308874 lt!1328858)) lt!1330070)))

(declare-fun b!3830343 () Bool)

(assert (=> b!3830343 (= e!2365458 0)))

(declare-fun b!3830344 () Bool)

(assert (=> b!3830344 (= e!2365458 (+ 1 (size!30470 (t!308874 (t!308874 lt!1328858)))))))

(assert (= (and d!1136964 c!667906) b!3830343))

(assert (= (and d!1136964 (not c!667906)) b!3830344))

(assert (=> b!3830344 m!4384473))

(assert (=> b!3828350 d!1136964))

(assert (=> b!3828350 d!1135760))

(declare-fun d!1136966 () Bool)

(declare-fun lt!1330071 () Int)

(assert (=> d!1136966 (>= lt!1330071 0)))

(declare-fun e!2365459 () Int)

(assert (=> d!1136966 (= lt!1330071 e!2365459)))

(declare-fun c!667907 () Bool)

(assert (=> d!1136966 (= c!667907 ((_ is Nil!40423) (list!15055 totalInput!335)))))

(assert (=> d!1136966 (= (size!30470 (list!15055 totalInput!335)) lt!1330071)))

(declare-fun b!3830345 () Bool)

(assert (=> b!3830345 (= e!2365459 0)))

(declare-fun b!3830346 () Bool)

(assert (=> b!3830346 (= e!2365459 (+ 1 (size!30470 (t!308874 (list!15055 totalInput!335)))))))

(assert (= (and d!1136966 c!667907) b!3830345))

(assert (= (and d!1136966 (not c!667907)) b!3830346))

(declare-fun m!4384495 () Bool)

(assert (=> b!3830346 m!4384495))

(assert (=> d!1135784 d!1136966))

(assert (=> d!1135784 d!1135434))

(declare-fun d!1136968 () Bool)

(declare-fun lt!1330072 () Int)

(assert (=> d!1136968 (= lt!1330072 (size!30470 (list!15059 (c!667180 totalInput!335))))))

(assert (=> d!1136968 (= lt!1330072 (ite ((_ is Empty!12422) (c!667180 totalInput!335)) 0 (ite ((_ is Leaf!19232) (c!667180 totalInput!335)) (csize!25075 (c!667180 totalInput!335)) (csize!25074 (c!667180 totalInput!335)))))))

(assert (=> d!1136968 (= (size!30478 (c!667180 totalInput!335)) lt!1330072)))

(declare-fun bs!582183 () Bool)

(assert (= bs!582183 d!1136968))

(assert (=> bs!582183 m!4379635))

(assert (=> bs!582183 m!4379635))

(declare-fun m!4384497 () Bool)

(assert (=> bs!582183 m!4384497))

(assert (=> d!1135784 d!1136968))

(declare-fun d!1136970 () Bool)

(declare-fun res!1550696 () Bool)

(declare-fun e!2365460 () Bool)

(assert (=> d!1136970 (=> (not res!1550696) (not e!2365460))))

(assert (=> d!1136970 (= res!1550696 (= (csize!25074 (right!31605 (c!667180 totalInput!335))) (+ (size!30478 (left!31275 (right!31605 (c!667180 totalInput!335)))) (size!30478 (right!31605 (right!31605 (c!667180 totalInput!335)))))))))

(assert (=> d!1136970 (= (inv!54497 (right!31605 (c!667180 totalInput!335))) e!2365460)))

(declare-fun b!3830347 () Bool)

(declare-fun res!1550697 () Bool)

(assert (=> b!3830347 (=> (not res!1550697) (not e!2365460))))

(assert (=> b!3830347 (= res!1550697 (and (not (= (left!31275 (right!31605 (c!667180 totalInput!335))) Empty!12422)) (not (= (right!31605 (right!31605 (c!667180 totalInput!335))) Empty!12422))))))

(declare-fun b!3830348 () Bool)

(declare-fun res!1550698 () Bool)

(assert (=> b!3830348 (=> (not res!1550698) (not e!2365460))))

(assert (=> b!3830348 (= res!1550698 (= (cheight!12633 (right!31605 (c!667180 totalInput!335))) (+ (max!0 (height!1818 (left!31275 (right!31605 (c!667180 totalInput!335)))) (height!1818 (right!31605 (right!31605 (c!667180 totalInput!335))))) 1)))))

(declare-fun b!3830349 () Bool)

(assert (=> b!3830349 (= e!2365460 (<= 0 (cheight!12633 (right!31605 (c!667180 totalInput!335)))))))

(assert (= (and d!1136970 res!1550696) b!3830347))

(assert (= (and b!3830347 res!1550697) b!3830348))

(assert (= (and b!3830348 res!1550698) b!3830349))

(declare-fun m!4384499 () Bool)

(assert (=> d!1136970 m!4384499))

(declare-fun m!4384501 () Bool)

(assert (=> d!1136970 m!4384501))

(declare-fun m!4384503 () Bool)

(assert (=> b!3830348 m!4384503))

(declare-fun m!4384505 () Bool)

(assert (=> b!3830348 m!4384505))

(assert (=> b!3830348 m!4384503))

(assert (=> b!3830348 m!4384505))

(declare-fun m!4384507 () Bool)

(assert (=> b!3830348 m!4384507))

(assert (=> b!3828110 d!1136970))

(declare-fun d!1136972 () Bool)

(declare-fun lt!1330073 () Bool)

(assert (=> d!1136972 (= lt!1330073 (isEmpty!23850 (list!15059 (left!31275 (c!667180 totalInput!335)))))))

(assert (=> d!1136972 (= lt!1330073 (= (size!30478 (left!31275 (c!667180 totalInput!335))) 0))))

(assert (=> d!1136972 (= (isEmpty!23861 (left!31275 (c!667180 totalInput!335))) lt!1330073)))

(declare-fun bs!582184 () Bool)

(assert (= bs!582184 d!1136972))

(assert (=> bs!582184 m!4381015))

(assert (=> bs!582184 m!4381015))

(declare-fun m!4384509 () Bool)

(assert (=> bs!582184 m!4384509))

(assert (=> bs!582184 m!4380613))

(assert (=> b!3828163 d!1136972))

(declare-fun d!1136974 () Bool)

(declare-fun c!667908 () Bool)

(assert (=> d!1136974 (= c!667908 ((_ is Nil!40423) (t!308874 lt!1328865)))))

(declare-fun e!2365461 () (InoxSet C!22444))

(assert (=> d!1136974 (= (content!5990 (t!308874 lt!1328865)) e!2365461)))

(declare-fun b!3830350 () Bool)

(assert (=> b!3830350 (= e!2365461 ((as const (Array C!22444 Bool)) false))))

(declare-fun b!3830351 () Bool)

(assert (=> b!3830351 (= e!2365461 ((_ map or) (store ((as const (Array C!22444 Bool)) false) (h!45843 (t!308874 lt!1328865)) true) (content!5990 (t!308874 (t!308874 lt!1328865)))))))

(assert (= (and d!1136974 c!667908) b!3830350))

(assert (= (and d!1136974 (not c!667908)) b!3830351))

(declare-fun m!4384511 () Bool)

(assert (=> b!3830351 m!4384511))

(declare-fun m!4384513 () Bool)

(assert (=> b!3830351 m!4384513))

(assert (=> b!3828431 d!1136974))

(assert (=> d!1135502 d!1135498))

(assert (=> d!1135502 d!1135840))

(declare-fun b!3830363 () Bool)

(declare-fun e!2365466 () Conc!12423)

(assert (=> b!3830363 (= e!2365466 (Node!12423 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))) (+ (size!30477 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (size!30477 (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))))) (+ (max!0 (height!1816 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (height!1816 (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))))) 1)))))

(declare-fun d!1136976 () Bool)

(declare-fun lt!1330076 () Conc!12423)

(assert (=> d!1136976 (= (list!15060 lt!1330076) (++!10192 (list!15060 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (list!15060 (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun e!2365467 () Conc!12423)

(assert (=> d!1136976 (= lt!1330076 e!2365467)))

(declare-fun c!667913 () Bool)

(assert (=> d!1136976 (= c!667913 (= (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) Empty!12423))))

(assert (=> d!1136976 (= (<>!360 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861)))))) lt!1330076)))

(declare-fun b!3830360 () Bool)

(assert (=> b!3830360 (= e!2365467 (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830362 () Bool)

(assert (=> b!3830362 (= e!2365466 (ite c!667310 (ite c!667308 (left!31276 (c!667181 acc!335)) call!281220) (ite c!667306 lt!1329043 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830361 () Bool)

(assert (=> b!3830361 (= e!2365467 e!2365466)))

(declare-fun c!667914 () Bool)

(assert (=> b!3830361 (= c!667914 (= (ite c!667310 (ite c!667308 call!281220 lt!1329042) (ite c!667306 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (right!31606 (c!667181 (_1!22945 lt!1328861))))) Empty!12423))))

(assert (= (and d!1136976 c!667913) b!3830360))

(assert (= (and d!1136976 (not c!667913)) b!3830361))

(assert (= (and b!3830361 c!667914) b!3830362))

(assert (= (and b!3830361 (not c!667914)) b!3830363))

(declare-fun m!4384515 () Bool)

(assert (=> b!3830363 m!4384515))

(declare-fun m!4384517 () Bool)

(assert (=> b!3830363 m!4384517))

(declare-fun m!4384519 () Bool)

(assert (=> b!3830363 m!4384519))

(declare-fun m!4384521 () Bool)

(assert (=> b!3830363 m!4384521))

(declare-fun m!4384523 () Bool)

(assert (=> b!3830363 m!4384523))

(assert (=> b!3830363 m!4384519))

(assert (=> b!3830363 m!4384521))

(declare-fun m!4384525 () Bool)

(assert (=> d!1136976 m!4384525))

(declare-fun m!4384527 () Bool)

(assert (=> d!1136976 m!4384527))

(declare-fun m!4384529 () Bool)

(assert (=> d!1136976 m!4384529))

(assert (=> d!1136976 m!4384527))

(assert (=> d!1136976 m!4384529))

(declare-fun m!4384531 () Bool)

(assert (=> d!1136976 m!4384531))

(assert (=> bm!281215 d!1136976))

(declare-fun lt!1330080 () Option!8648)

(declare-fun b!3830364 () Bool)

(declare-fun e!2365470 () Bool)

(assert (=> b!3830364 (= e!2365470 (= (list!15055 (_2!22946 (get!13412 lt!1330080))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13))))))))

(declare-fun b!3830365 () Bool)

(declare-fun e!2365468 () Bool)

(declare-fun e!2365471 () Bool)

(assert (=> b!3830365 (= e!2365468 e!2365471)))

(declare-fun res!1550699 () Bool)

(assert (=> b!3830365 (=> res!1550699 e!2365471)))

(assert (=> b!3830365 (= res!1550699 (not (isDefined!6810 lt!1330080)))))

(declare-fun b!3830366 () Bool)

(declare-fun res!1550701 () Bool)

(assert (=> b!3830366 (=> (not res!1550701) (not e!2365468))))

(declare-fun e!2365473 () Bool)

(assert (=> b!3830366 (= res!1550701 e!2365473)))

(declare-fun res!1550700 () Bool)

(assert (=> b!3830366 (=> res!1550700 e!2365473)))

(assert (=> b!3830366 (= res!1550700 (not (isDefined!6810 lt!1330080)))))

(declare-fun b!3830367 () Bool)

(declare-fun e!2365469 () Option!8648)

(declare-fun call!281457 () Option!8648)

(assert (=> b!3830367 (= e!2365469 call!281457)))

(declare-fun d!1136978 () Bool)

(assert (=> d!1136978 e!2365468))

(declare-fun res!1550704 () Bool)

(assert (=> d!1136978 (=> (not res!1550704) (not e!2365468))))

(assert (=> d!1136978 (= res!1550704 (= (isDefined!6810 lt!1330080) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13)))))))

(assert (=> d!1136978 (= lt!1330080 e!2365469)))

(declare-fun c!667915 () Bool)

(assert (=> d!1136978 (= c!667915 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1330079 () Unit!58192)

(declare-fun lt!1330081 () Unit!58192)

(assert (=> d!1136978 (= lt!1330079 lt!1330081)))

(declare-fun lt!1330078 () List!40547)

(declare-fun lt!1330082 () List!40547)

(assert (=> d!1136978 (isPrefix!3333 lt!1330078 lt!1330082)))

(assert (=> d!1136978 (= lt!1330081 (lemmaIsPrefixRefl!2118 lt!1330078 lt!1330082))))

(assert (=> d!1136978 (= lt!1330082 (list!15055 treated!13))))

(assert (=> d!1136978 (= lt!1330078 (list!15055 treated!13))))

(assert (=> d!1136978 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1136978 (= (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) treated!13) lt!1330080)))

(declare-fun bm!281452 () Bool)

(assert (=> bm!281452 (= call!281457 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 (t!308876 rules!1265)) treated!13))))

(declare-fun b!3830368 () Bool)

(assert (=> b!3830368 (= e!2365471 e!2365470)))

(declare-fun res!1550702 () Bool)

(assert (=> b!3830368 (=> (not res!1550702) (not e!2365470))))

(assert (=> b!3830368 (= res!1550702 (= (_1!22946 (get!13412 lt!1330080)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13))))))))

(declare-fun b!3830369 () Bool)

(declare-fun lt!1330083 () Option!8648)

(declare-fun lt!1330077 () Option!8648)

(assert (=> b!3830369 (= e!2365469 (ite (and ((_ is None!8647) lt!1330083) ((_ is None!8647) lt!1330077)) None!8647 (ite ((_ is None!8647) lt!1330077) lt!1330083 (ite ((_ is None!8647) lt!1330083) lt!1330077 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330083))) (size!30466 (_1!22946 (v!38923 lt!1330077)))) lt!1330083 lt!1330077)))))))

(assert (=> b!3830369 (= lt!1330083 call!281457)))

(assert (=> b!3830369 (= lt!1330077 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 (t!308876 rules!1265)) treated!13))))

(declare-fun b!3830370 () Bool)

(declare-fun e!2365472 () Bool)

(assert (=> b!3830370 (= e!2365472 (= (list!15055 (_2!22946 (get!13412 lt!1330080))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13))))))))

(declare-fun b!3830371 () Bool)

(assert (=> b!3830371 (= e!2365473 e!2365472)))

(declare-fun res!1550703 () Bool)

(assert (=> b!3830371 (=> (not res!1550703) (not e!2365472))))

(assert (=> b!3830371 (= res!1550703 (= (_1!22946 (get!13412 lt!1330080)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 treated!13))))))))

(assert (= (and d!1136978 c!667915) b!3830367))

(assert (= (and d!1136978 (not c!667915)) b!3830369))

(assert (= (or b!3830367 b!3830369) bm!281452))

(assert (= (and d!1136978 res!1550704) b!3830366))

(assert (= (and b!3830366 (not res!1550700)) b!3830371))

(assert (= (and b!3830371 res!1550703) b!3830370))

(assert (= (and b!3830366 res!1550701) b!3830365))

(assert (= (and b!3830365 (not res!1550699)) b!3830368))

(assert (= (and b!3830368 res!1550702) b!3830364))

(declare-fun m!4384533 () Bool)

(assert (=> b!3830366 m!4384533))

(declare-fun m!4384535 () Bool)

(assert (=> d!1136978 m!4384535))

(assert (=> d!1136978 m!4379225))

(assert (=> d!1136978 m!4383653))

(assert (=> d!1136978 m!4380915))

(assert (=> d!1136978 m!4379225))

(declare-fun m!4384537 () Bool)

(assert (=> d!1136978 m!4384537))

(assert (=> d!1136978 m!4383653))

(declare-fun m!4384539 () Bool)

(assert (=> d!1136978 m!4384539))

(assert (=> d!1136978 m!4384533))

(declare-fun m!4384541 () Bool)

(assert (=> b!3830368 m!4384541))

(assert (=> b!3830368 m!4379225))

(assert (=> b!3830368 m!4379225))

(assert (=> b!3830368 m!4384145))

(assert (=> b!3830368 m!4384145))

(declare-fun m!4384543 () Bool)

(assert (=> b!3830368 m!4384543))

(assert (=> b!3830370 m!4383653))

(declare-fun m!4384545 () Bool)

(assert (=> b!3830370 m!4384545))

(assert (=> b!3830370 m!4384541))

(assert (=> b!3830370 m!4379225))

(assert (=> b!3830370 m!4383653))

(assert (=> b!3830370 m!4379225))

(declare-fun m!4384547 () Bool)

(assert (=> b!3830370 m!4384547))

(declare-fun m!4384549 () Bool)

(assert (=> bm!281452 m!4384549))

(assert (=> b!3830365 m!4384533))

(assert (=> b!3830371 m!4384541))

(assert (=> b!3830371 m!4379225))

(assert (=> b!3830371 m!4379225))

(assert (=> b!3830371 m!4383653))

(assert (=> b!3830371 m!4383653))

(assert (=> b!3830371 m!4384545))

(declare-fun m!4384551 () Bool)

(assert (=> b!3830369 m!4384551))

(assert (=> b!3830364 m!4384145))

(assert (=> b!3830364 m!4384543))

(assert (=> b!3830364 m!4379225))

(assert (=> b!3830364 m!4384145))

(assert (=> b!3830364 m!4384541))

(assert (=> b!3830364 m!4379225))

(assert (=> b!3830364 m!4384547))

(assert (=> b!3828542 d!1136978))

(declare-fun d!1136980 () Bool)

(declare-fun c!667916 () Bool)

(assert (=> d!1136980 (= c!667916 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 input!678)))))))

(declare-fun e!2365474 () Bool)

(assert (=> d!1136980 (= (inv!54485 (left!31275 (left!31275 (c!667180 input!678)))) e!2365474)))

(declare-fun b!3830372 () Bool)

(assert (=> b!3830372 (= e!2365474 (inv!54497 (left!31275 (left!31275 (c!667180 input!678)))))))

(declare-fun b!3830373 () Bool)

(declare-fun e!2365475 () Bool)

(assert (=> b!3830373 (= e!2365474 e!2365475)))

(declare-fun res!1550705 () Bool)

(assert (=> b!3830373 (= res!1550705 (not ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 input!678))))))))

(assert (=> b!3830373 (=> res!1550705 e!2365475)))

(declare-fun b!3830374 () Bool)

(assert (=> b!3830374 (= e!2365475 (inv!54498 (left!31275 (left!31275 (c!667180 input!678)))))))

(assert (= (and d!1136980 c!667916) b!3830372))

(assert (= (and d!1136980 (not c!667916)) b!3830373))

(assert (= (and b!3830373 (not res!1550705)) b!3830374))

(declare-fun m!4384553 () Bool)

(assert (=> b!3830372 m!4384553))

(declare-fun m!4384555 () Bool)

(assert (=> b!3830374 m!4384555))

(assert (=> b!3828617 d!1136980))

(declare-fun d!1136982 () Bool)

(declare-fun c!667917 () Bool)

(assert (=> d!1136982 (= c!667917 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 input!678)))))))

(declare-fun e!2365476 () Bool)

(assert (=> d!1136982 (= (inv!54485 (right!31605 (left!31275 (c!667180 input!678)))) e!2365476)))

(declare-fun b!3830375 () Bool)

(assert (=> b!3830375 (= e!2365476 (inv!54497 (right!31605 (left!31275 (c!667180 input!678)))))))

(declare-fun b!3830376 () Bool)

(declare-fun e!2365477 () Bool)

(assert (=> b!3830376 (= e!2365476 e!2365477)))

(declare-fun res!1550706 () Bool)

(assert (=> b!3830376 (= res!1550706 (not ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 input!678))))))))

(assert (=> b!3830376 (=> res!1550706 e!2365477)))

(declare-fun b!3830377 () Bool)

(assert (=> b!3830377 (= e!2365477 (inv!54498 (right!31605 (left!31275 (c!667180 input!678)))))))

(assert (= (and d!1136982 c!667917) b!3830375))

(assert (= (and d!1136982 (not c!667917)) b!3830376))

(assert (= (and b!3830376 (not res!1550706)) b!3830377))

(declare-fun m!4384557 () Bool)

(assert (=> b!3830375 m!4384557))

(declare-fun m!4384559 () Bool)

(assert (=> b!3830377 m!4384559))

(assert (=> b!3828617 d!1136982))

(declare-fun d!1136984 () Bool)

(declare-fun res!1550707 () Bool)

(declare-fun e!2365478 () Bool)

(assert (=> d!1136984 (=> (not res!1550707) (not e!2365478))))

(assert (=> d!1136984 (= res!1550707 (= (csize!25074 (left!31275 (c!667180 treated!13))) (+ (size!30478 (left!31275 (left!31275 (c!667180 treated!13)))) (size!30478 (right!31605 (left!31275 (c!667180 treated!13)))))))))

(assert (=> d!1136984 (= (inv!54497 (left!31275 (c!667180 treated!13))) e!2365478)))

(declare-fun b!3830378 () Bool)

(declare-fun res!1550708 () Bool)

(assert (=> b!3830378 (=> (not res!1550708) (not e!2365478))))

(assert (=> b!3830378 (= res!1550708 (and (not (= (left!31275 (left!31275 (c!667180 treated!13))) Empty!12422)) (not (= (right!31605 (left!31275 (c!667180 treated!13))) Empty!12422))))))

(declare-fun b!3830379 () Bool)

(declare-fun res!1550709 () Bool)

(assert (=> b!3830379 (=> (not res!1550709) (not e!2365478))))

(assert (=> b!3830379 (= res!1550709 (= (cheight!12633 (left!31275 (c!667180 treated!13))) (+ (max!0 (height!1818 (left!31275 (left!31275 (c!667180 treated!13)))) (height!1818 (right!31605 (left!31275 (c!667180 treated!13))))) 1)))))

(declare-fun b!3830380 () Bool)

(assert (=> b!3830380 (= e!2365478 (<= 0 (cheight!12633 (left!31275 (c!667180 treated!13)))))))

(assert (= (and d!1136984 res!1550707) b!3830378))

(assert (= (and b!3830378 res!1550708) b!3830379))

(assert (= (and b!3830379 res!1550709) b!3830380))

(declare-fun m!4384561 () Bool)

(assert (=> d!1136984 m!4384561))

(declare-fun m!4384563 () Bool)

(assert (=> d!1136984 m!4384563))

(declare-fun m!4384565 () Bool)

(assert (=> b!3830379 m!4384565))

(declare-fun m!4384567 () Bool)

(assert (=> b!3830379 m!4384567))

(assert (=> b!3830379 m!4384565))

(assert (=> b!3830379 m!4384567))

(declare-fun m!4384569 () Bool)

(assert (=> b!3830379 m!4384569))

(assert (=> b!3828473 d!1136984))

(declare-fun d!1136986 () Bool)

(assert (=> d!1136986 (= (isEmpty!23858 (_1!22950 lt!1329067)) ((_ is Nil!40424) (_1!22950 lt!1329067)))))

(assert (=> b!3827753 d!1136986))

(declare-fun d!1136988 () Bool)

(declare-fun lt!1330084 () Int)

(assert (=> d!1136988 (>= lt!1330084 0)))

(declare-fun e!2365479 () Int)

(assert (=> d!1136988 (= lt!1330084 e!2365479)))

(declare-fun c!667918 () Bool)

(assert (=> d!1136988 (= c!667918 ((_ is Nil!40423) (t!308874 lt!1328963)))))

(assert (=> d!1136988 (= (size!30470 (t!308874 lt!1328963)) lt!1330084)))

(declare-fun b!3830381 () Bool)

(assert (=> b!3830381 (= e!2365479 0)))

(declare-fun b!3830382 () Bool)

(assert (=> b!3830382 (= e!2365479 (+ 1 (size!30470 (t!308874 (t!308874 lt!1328963)))))))

(assert (= (and d!1136988 c!667918) b!3830381))

(assert (= (and d!1136988 (not c!667918)) b!3830382))

(declare-fun m!4384571 () Bool)

(assert (=> b!3830382 m!4384571))

(assert (=> b!3828484 d!1136988))

(declare-fun d!1136990 () Bool)

(assert (=> d!1136990 (= (isDefined!6810 lt!1329322) (not (isEmpty!23862 lt!1329322)))))

(declare-fun bs!582185 () Bool)

(assert (= bs!582185 d!1136990))

(declare-fun m!4384573 () Bool)

(assert (=> bs!582185 m!4384573))

(assert (=> b!3828466 d!1136990))

(assert (=> b!3827715 d!1136812))

(assert (=> b!3827715 d!1136814))

(assert (=> b!3827715 d!1136740))

(declare-fun d!1136992 () Bool)

(assert (=> d!1136992 (= (isEmpty!23858 (_1!22950 lt!1329188)) ((_ is Nil!40424) (_1!22950 lt!1329188)))))

(assert (=> b!3827999 d!1136992))

(declare-fun d!1136994 () Bool)

(assert (=> d!1136994 (= (max!0 (height!1818 (left!31275 (c!667180 input!678))) (height!1818 (right!31605 (c!667180 input!678)))) (ite (< (height!1818 (left!31275 (c!667180 input!678))) (height!1818 (right!31605 (c!667180 input!678)))) (height!1818 (right!31605 (c!667180 input!678))) (height!1818 (left!31275 (c!667180 input!678)))))))

(assert (=> b!3828157 d!1136994))

(declare-fun d!1136996 () Bool)

(assert (=> d!1136996 (= (height!1818 (left!31275 (c!667180 input!678))) (ite ((_ is Empty!12422) (left!31275 (c!667180 input!678))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 input!678))) 1 (cheight!12633 (left!31275 (c!667180 input!678))))))))

(assert (=> b!3828157 d!1136996))

(declare-fun d!1136998 () Bool)

(assert (=> d!1136998 (= (height!1818 (right!31605 (c!667180 input!678))) (ite ((_ is Empty!12422) (right!31605 (c!667180 input!678))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 input!678))) 1 (cheight!12633 (right!31605 (c!667180 input!678))))))))

(assert (=> b!3828157 d!1136998))

(declare-fun d!1137000 () Bool)

(declare-fun lt!1330085 () Int)

(assert (=> d!1137000 (>= lt!1330085 0)))

(declare-fun e!2365480 () Int)

(assert (=> d!1137000 (= lt!1330085 e!2365480)))

(declare-fun c!667919 () Bool)

(assert (=> d!1137000 (= c!667919 ((_ is Nil!40423) (list!15063 (xs!15716 (c!667180 totalInput!335)))))))

(assert (=> d!1137000 (= (size!30470 (list!15063 (xs!15716 (c!667180 totalInput!335)))) lt!1330085)))

(declare-fun b!3830383 () Bool)

(assert (=> b!3830383 (= e!2365480 0)))

(declare-fun b!3830384 () Bool)

(assert (=> b!3830384 (= e!2365480 (+ 1 (size!30470 (t!308874 (list!15063 (xs!15716 (c!667180 totalInput!335)))))))))

(assert (= (and d!1137000 c!667919) b!3830383))

(assert (= (and d!1137000 (not c!667919)) b!3830384))

(declare-fun m!4384575 () Bool)

(assert (=> b!3830384 m!4384575))

(assert (=> b!3827738 d!1137000))

(declare-fun d!1137002 () Bool)

(assert (=> d!1137002 (= (list!15063 (xs!15716 (c!667180 totalInput!335))) (innerList!12482 (xs!15716 (c!667180 totalInput!335))))))

(assert (=> b!3827738 d!1137002))

(declare-fun d!1137004 () Bool)

(assert (=> d!1137004 (= (height!1816 (ite c!667310 lt!1329042 (c!667181 (_1!22945 lt!1328861)))) (ite ((_ is Empty!12423) (ite c!667310 lt!1329042 (c!667181 (_1!22945 lt!1328861)))) 0 (ite ((_ is Leaf!19233) (ite c!667310 lt!1329042 (c!667181 (_1!22945 lt!1328861)))) 1 (cheight!12634 (ite c!667310 lt!1329042 (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> bm!281218 d!1137004))

(declare-fun d!1137006 () Bool)

(declare-fun dynLambda!17518 (Int BalanceConc!24438) Bool)

(assert (=> d!1137006 (dynLambda!17518 lambda!125925 (_1!22951 lt!1329164))))

(declare-fun lt!1330088 () Unit!58192)

(declare-fun choose!22536 (Int BalanceConc!24438) Unit!58192)

(assert (=> d!1137006 (= lt!1330088 (choose!22536 lambda!125925 (_1!22951 lt!1329164)))))

(assert (=> d!1137006 (Forall!1424 lambda!125925)))

(assert (=> d!1137006 (= (ForallOf!777 lambda!125925 (_1!22951 lt!1329164)) lt!1330088)))

(declare-fun b_lambda!112013 () Bool)

(assert (=> (not b_lambda!112013) (not d!1137006)))

(declare-fun bs!582186 () Bool)

(assert (= bs!582186 d!1137006))

(declare-fun m!4384577 () Bool)

(assert (=> bs!582186 m!4384577))

(declare-fun m!4384579 () Bool)

(assert (=> bs!582186 m!4384579))

(declare-fun m!4384581 () Bool)

(assert (=> bs!582186 m!4384581))

(assert (=> b!3827975 d!1137006))

(assert (=> b!3827975 d!1136758))

(declare-fun bs!582187 () Bool)

(declare-fun d!1137008 () Bool)

(assert (= bs!582187 (and d!1137008 d!1135650)))

(declare-fun lambda!125969 () Int)

(assert (=> bs!582187 (= lambda!125969 lambda!125933)))

(declare-fun bs!582188 () Bool)

(assert (= bs!582188 (and d!1137008 d!1136720)))

(assert (=> bs!582188 (= (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (= lambda!125969 lambda!125960))))

(declare-fun b!3830391 () Bool)

(declare-fun e!2365485 () Bool)

(assert (=> b!3830391 (= e!2365485 true)))

(assert (=> d!1137008 e!2365485))

(assert (= d!1137008 b!3830391))

(assert (=> b!3830391 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17510 order!22093 lambda!125969))))

(assert (=> b!3830391 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17510 order!22093 lambda!125969))))

(assert (=> d!1137008 (= (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164)) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(declare-fun lt!1330091 () Unit!58192)

(declare-fun Forall2of!428 (Int BalanceConc!24438 BalanceConc!24438) Unit!58192)

(assert (=> d!1137008 (= lt!1330091 (Forall2of!428 lambda!125969 (_1!22951 lt!1329164) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(assert (=> d!1137008 (= (list!15055 (_1!22951 lt!1329164)) (list!15055 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(assert (=> d!1137008 (= (lemmaEqSameImage!1050 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329164) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))) lt!1330091)))

(declare-fun b_lambda!112015 () Bool)

(assert (=> (not b_lambda!112015) (not d!1137008)))

(declare-fun t!309030 () Bool)

(declare-fun tb!219805 () Bool)

(assert (=> (and b!3827069 (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309030) tb!219805))

(declare-fun result!267938 () Bool)

(assert (=> tb!219805 (= result!267938 (inv!21 (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164))))))

(declare-fun m!4384583 () Bool)

(assert (=> tb!219805 m!4384583))

(assert (=> d!1137008 t!309030))

(declare-fun b_and!284663 () Bool)

(assert (= b_and!284647 (and (=> t!309030 result!267938) b_and!284663)))

(declare-fun t!309032 () Bool)

(declare-fun tb!219807 () Bool)

(assert (=> (and b!3827404 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309032) tb!219807))

(declare-fun result!267940 () Bool)

(assert (= result!267940 result!267938))

(assert (=> d!1137008 t!309032))

(declare-fun b_and!284665 () Bool)

(assert (= b_and!284649 (and (=> t!309032 result!267940) b_and!284665)))

(declare-fun t!309034 () Bool)

(declare-fun tb!219809 () Bool)

(assert (=> (and b!3828558 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309034) tb!219809))

(declare-fun result!267942 () Bool)

(assert (= result!267942 result!267938))

(assert (=> d!1137008 t!309034))

(declare-fun b_and!284667 () Bool)

(assert (= b_and!284651 (and (=> t!309034 result!267942) b_and!284667)))

(declare-fun t!309036 () Bool)

(declare-fun tb!219811 () Bool)

(assert (=> (and b!3828586 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309036) tb!219811))

(declare-fun result!267944 () Bool)

(assert (= result!267944 result!267938))

(assert (=> d!1137008 t!309036))

(declare-fun b_and!284669 () Bool)

(assert (= b_and!284653 (and (=> t!309036 result!267944) b_and!284669)))

(declare-fun b_lambda!112017 () Bool)

(assert (=> (not b_lambda!112017) (not d!1137008)))

(declare-fun t!309038 () Bool)

(declare-fun tb!219813 () Bool)

(assert (=> (and b!3827069 (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309038) tb!219813))

(declare-fun result!267946 () Bool)

(assert (=> tb!219813 (= result!267946 (inv!21 (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164))))))))

(declare-fun m!4384585 () Bool)

(assert (=> tb!219813 m!4384585))

(assert (=> d!1137008 t!309038))

(declare-fun b_and!284671 () Bool)

(assert (= b_and!284663 (and (=> t!309038 result!267946) b_and!284671)))

(declare-fun t!309040 () Bool)

(declare-fun tb!219815 () Bool)

(assert (=> (and b!3827404 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309040) tb!219815))

(declare-fun result!267948 () Bool)

(assert (= result!267948 result!267946))

(assert (=> d!1137008 t!309040))

(declare-fun b_and!284673 () Bool)

(assert (= b_and!284665 (and (=> t!309040 result!267948) b_and!284673)))

(declare-fun t!309042 () Bool)

(declare-fun tb!219817 () Bool)

(assert (=> (and b!3828558 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309042) tb!219817))

(declare-fun result!267950 () Bool)

(assert (= result!267950 result!267946))

(assert (=> d!1137008 t!309042))

(declare-fun b_and!284675 () Bool)

(assert (= b_and!284667 (and (=> t!309042 result!267950) b_and!284675)))

(declare-fun tb!219819 () Bool)

(declare-fun t!309044 () Bool)

(assert (=> (and b!3828586 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309044) tb!219819))

(declare-fun result!267952 () Bool)

(assert (= result!267952 result!267946))

(assert (=> d!1137008 t!309044))

(declare-fun b_and!284677 () Bool)

(assert (= b_and!284669 (and (=> t!309044 result!267952) b_and!284677)))

(assert (=> d!1137008 m!4380289))

(assert (=> d!1137008 m!4380269))

(declare-fun m!4384587 () Bool)

(assert (=> d!1137008 m!4384587))

(assert (=> d!1137008 m!4380269))

(declare-fun m!4384589 () Bool)

(assert (=> d!1137008 m!4384589))

(assert (=> d!1137008 m!4380269))

(declare-fun m!4384591 () Bool)

(assert (=> d!1137008 m!4384591))

(declare-fun m!4384593 () Bool)

(assert (=> d!1137008 m!4384593))

(assert (=> b!3827975 d!1137008))

(declare-fun d!1137010 () Bool)

(declare-fun e!2365490 () Bool)

(assert (=> d!1137010 e!2365490))

(declare-fun res!1550714 () Bool)

(assert (=> d!1137010 (=> (not res!1550714) (not e!2365490))))

(assert (=> d!1137010 (= res!1550714 (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))))))

(declare-fun Unit!58201 () Unit!58192)

(assert (=> d!1137010 (= (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))) Unit!58201)))

(declare-fun b!3830394 () Bool)

(assert (=> b!3830394 (= e!2365490 (equivClasses!2570 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))))))

(assert (= (and d!1137010 res!1550714) b!3830394))

(assert (=> d!1137010 m!4379255))

(assert (=> b!3830394 m!4379257))

(assert (=> b!3827975 d!1137010))

(assert (=> b!3827975 d!1136756))

(assert (=> b!3827975 d!1135436))

(declare-fun d!1137012 () Bool)

(assert (=> d!1137012 (= (list!15055 (_1!22951 lt!1329164)) (list!15059 (c!667180 (_1!22951 lt!1329164))))))

(declare-fun bs!582189 () Bool)

(assert (= bs!582189 d!1137012))

(declare-fun m!4384595 () Bool)

(assert (=> bs!582189 m!4384595))

(assert (=> b!3827975 d!1137012))

(declare-fun d!1137014 () Bool)

(assert (=> d!1137014 (= (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1329164)) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164)))))

(declare-fun b_lambda!112019 () Bool)

(assert (=> (not b_lambda!112019) (not d!1137014)))

(assert (=> d!1137014 t!309030))

(declare-fun b_and!284679 () Bool)

(assert (= b_and!284671 (and (=> t!309030 result!267938) b_and!284679)))

(assert (=> d!1137014 t!309032))

(declare-fun b_and!284681 () Bool)

(assert (= b_and!284673 (and (=> t!309032 result!267940) b_and!284681)))

(assert (=> d!1137014 t!309034))

(declare-fun b_and!284683 () Bool)

(assert (= b_and!284675 (and (=> t!309034 result!267942) b_and!284683)))

(assert (=> d!1137014 t!309036))

(declare-fun b_and!284685 () Bool)

(assert (= b_and!284677 (and (=> t!309036 result!267944) b_and!284685)))

(assert (=> d!1137014 m!4384593))

(assert (=> b!3827975 d!1137014))

(declare-fun d!1137016 () Bool)

(declare-fun e!2365493 () Bool)

(assert (=> d!1137016 e!2365493))

(declare-fun res!1550717 () Bool)

(assert (=> d!1137016 (=> res!1550717 e!2365493)))

(assert (=> d!1137016 (= res!1550717 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(declare-fun lt!1330094 () Unit!58192)

(declare-fun choose!22537 (Regex!11129 List!40547) Unit!58192)

(assert (=> d!1137016 (= lt!1330094 (choose!22537 (regex!6224 (h!45845 rules!1265)) lt!1329166))))

(assert (=> d!1137016 (validRegex!5070 (regex!6224 (h!45845 rules!1265)))))

(assert (=> d!1137016 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) lt!1329166) lt!1330094)))

(declare-fun b!3830397 () Bool)

(assert (=> b!3830397 (= e!2365493 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(assert (= (and d!1137016 (not res!1550717)) b!3830397))

(assert (=> d!1137016 m!4380267))

(declare-fun m!4384597 () Bool)

(assert (=> d!1137016 m!4384597))

(assert (=> d!1137016 m!4383833))

(assert (=> d!1137016 m!4380275))

(assert (=> d!1137016 m!4380287))

(assert (=> d!1137016 m!4380267))

(assert (=> d!1137016 m!4380275))

(assert (=> d!1137016 m!4380285))

(assert (=> b!3830397 m!4380267))

(assert (=> b!3830397 m!4380275))

(assert (=> b!3830397 m!4380267))

(assert (=> b!3830397 m!4380275))

(assert (=> b!3830397 m!4380285))

(assert (=> b!3830397 m!4380301))

(assert (=> b!3827975 d!1137016))

(declare-fun d!1137018 () Bool)

(assert (=> d!1137018 (= (seqFromList!4507 (list!15055 (_1!22951 lt!1329164))) (fromListB!2083 (list!15055 (_1!22951 lt!1329164))))))

(declare-fun bs!582190 () Bool)

(assert (= bs!582190 d!1137018))

(assert (=> bs!582190 m!4380289))

(declare-fun m!4384599 () Bool)

(assert (=> bs!582190 m!4384599))

(assert (=> b!3827975 d!1137018))

(assert (=> b!3827975 d!1136760))

(declare-fun d!1137020 () Bool)

(declare-fun lt!1330095 () Int)

(assert (=> d!1137020 (= lt!1330095 (size!30470 (list!15055 (_1!22951 lt!1329164))))))

(assert (=> d!1137020 (= lt!1330095 (size!30478 (c!667180 (_1!22951 lt!1329164))))))

(assert (=> d!1137020 (= (size!30472 (_1!22951 lt!1329164)) lt!1330095)))

(declare-fun bs!582191 () Bool)

(assert (= bs!582191 d!1137020))

(assert (=> bs!582191 m!4380289))

(assert (=> bs!582191 m!4380289))

(declare-fun m!4384601 () Bool)

(assert (=> bs!582191 m!4384601))

(declare-fun m!4384603 () Bool)

(assert (=> bs!582191 m!4384603))

(assert (=> b!3827975 d!1137020))

(declare-fun d!1137022 () Bool)

(assert (=> d!1137022 (dynLambda!17518 lambda!125925 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164))))))

(declare-fun lt!1330096 () Unit!58192)

(assert (=> d!1137022 (= lt!1330096 (choose!22536 lambda!125925 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))))

(assert (=> d!1137022 (Forall!1424 lambda!125925)))

(assert (=> d!1137022 (= (ForallOf!777 lambda!125925 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))) lt!1330096)))

(declare-fun b_lambda!112021 () Bool)

(assert (=> (not b_lambda!112021) (not d!1137022)))

(declare-fun bs!582192 () Bool)

(assert (= bs!582192 d!1137022))

(assert (=> bs!582192 m!4380269))

(declare-fun m!4384605 () Bool)

(assert (=> bs!582192 m!4384605))

(assert (=> bs!582192 m!4380269))

(declare-fun m!4384607 () Bool)

(assert (=> bs!582192 m!4384607))

(assert (=> bs!582192 m!4384581))

(assert (=> b!3827975 d!1137022))

(declare-fun d!1137024 () Bool)

(assert (=> d!1137024 (= (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))) ((_ is Nil!40423) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1329166 lt!1329166 (size!30470 lt!1329166)))))))

(assert (=> b!3827975 d!1137024))

(declare-fun d!1137026 () Bool)

(declare-fun lt!1330097 () Int)

(assert (=> d!1137026 (= lt!1330097 (size!30470 (list!15059 (left!31275 (c!667180 treated!13)))))))

(assert (=> d!1137026 (= lt!1330097 (ite ((_ is Empty!12422) (left!31275 (c!667180 treated!13))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 treated!13))) (csize!25075 (left!31275 (c!667180 treated!13))) (csize!25074 (left!31275 (c!667180 treated!13))))))))

(assert (=> d!1137026 (= (size!30478 (left!31275 (c!667180 treated!13))) lt!1330097)))

(declare-fun bs!582193 () Bool)

(assert (= bs!582193 d!1137026))

(assert (=> bs!582193 m!4380897))

(assert (=> bs!582193 m!4380897))

(assert (=> bs!582193 m!4383527))

(assert (=> d!1135842 d!1137026))

(declare-fun d!1137028 () Bool)

(declare-fun lt!1330098 () Int)

(assert (=> d!1137028 (= lt!1330098 (size!30470 (list!15059 (right!31605 (c!667180 treated!13)))))))

(assert (=> d!1137028 (= lt!1330098 (ite ((_ is Empty!12422) (right!31605 (c!667180 treated!13))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 treated!13))) (csize!25075 (right!31605 (c!667180 treated!13))) (csize!25074 (right!31605 (c!667180 treated!13))))))))

(assert (=> d!1137028 (= (size!30478 (right!31605 (c!667180 treated!13))) lt!1330098)))

(declare-fun bs!582194 () Bool)

(assert (= bs!582194 d!1137028))

(assert (=> bs!582194 m!4380899))

(assert (=> bs!582194 m!4380899))

(assert (=> bs!582194 m!4383529))

(assert (=> d!1135842 d!1137028))

(assert (=> b!3828515 d!1136690))

(assert (=> b!3828515 d!1136694))

(assert (=> bm!281230 d!1136894))

(declare-fun d!1137030 () Bool)

(declare-fun lt!1330099 () Int)

(assert (=> d!1137030 (>= lt!1330099 0)))

(declare-fun e!2365494 () Int)

(assert (=> d!1137030 (= lt!1330099 e!2365494)))

(declare-fun c!667920 () Bool)

(assert (=> d!1137030 (= c!667920 ((_ is Nil!40423) (list!15055 (_2!22945 lt!1328956))))))

(assert (=> d!1137030 (= (size!30470 (list!15055 (_2!22945 lt!1328956))) lt!1330099)))

(declare-fun b!3830398 () Bool)

(assert (=> b!3830398 (= e!2365494 0)))

(declare-fun b!3830399 () Bool)

(assert (=> b!3830399 (= e!2365494 (+ 1 (size!30470 (t!308874 (list!15055 (_2!22945 lt!1328956))))))))

(assert (= (and d!1137030 c!667920) b!3830398))

(assert (= (and d!1137030 (not c!667920)) b!3830399))

(declare-fun m!4384609 () Bool)

(assert (=> b!3830399 m!4384609))

(assert (=> d!1135534 d!1137030))

(assert (=> d!1135534 d!1135522))

(declare-fun d!1137032 () Bool)

(declare-fun lt!1330100 () Int)

(assert (=> d!1137032 (= lt!1330100 (size!30470 (list!15059 (c!667180 (_2!22945 lt!1328956)))))))

(assert (=> d!1137032 (= lt!1330100 (ite ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328956))) 0 (ite ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328956))) (csize!25075 (c!667180 (_2!22945 lt!1328956))) (csize!25074 (c!667180 (_2!22945 lt!1328956))))))))

(assert (=> d!1137032 (= (size!30478 (c!667180 (_2!22945 lt!1328956))) lt!1330100)))

(declare-fun bs!582195 () Bool)

(assert (= bs!582195 d!1137032))

(assert (=> bs!582195 m!4379969))

(assert (=> bs!582195 m!4379969))

(declare-fun m!4384611 () Bool)

(assert (=> bs!582195 m!4384611))

(assert (=> d!1135534 d!1137032))

(assert (=> b!3828486 d!1136964))

(declare-fun d!1137034 () Bool)

(declare-fun lt!1330101 () Int)

(assert (=> d!1137034 (>= lt!1330101 0)))

(declare-fun e!2365495 () Int)

(assert (=> d!1137034 (= lt!1330101 e!2365495)))

(declare-fun c!667921 () Bool)

(assert (=> d!1137034 (= c!667921 ((_ is Nil!40423) (list!15055 (_2!22945 lt!1328950))))))

(assert (=> d!1137034 (= (size!30470 (list!15055 (_2!22945 lt!1328950))) lt!1330101)))

(declare-fun b!3830400 () Bool)

(assert (=> b!3830400 (= e!2365495 0)))

(declare-fun b!3830401 () Bool)

(assert (=> b!3830401 (= e!2365495 (+ 1 (size!30470 (t!308874 (list!15055 (_2!22945 lt!1328950))))))))

(assert (= (and d!1137034 c!667921) b!3830400))

(assert (= (and d!1137034 (not c!667921)) b!3830401))

(declare-fun m!4384613 () Bool)

(assert (=> b!3830401 m!4384613))

(assert (=> d!1135782 d!1137034))

(assert (=> d!1135782 d!1135528))

(declare-fun d!1137036 () Bool)

(declare-fun lt!1330102 () Int)

(assert (=> d!1137036 (= lt!1330102 (size!30470 (list!15059 (c!667180 (_2!22945 lt!1328950)))))))

(assert (=> d!1137036 (= lt!1330102 (ite ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328950))) 0 (ite ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328950))) (csize!25075 (c!667180 (_2!22945 lt!1328950))) (csize!25074 (c!667180 (_2!22945 lt!1328950))))))))

(assert (=> d!1137036 (= (size!30478 (c!667180 (_2!22945 lt!1328950))) lt!1330102)))

(declare-fun bs!582196 () Bool)

(assert (= bs!582196 d!1137036))

(assert (=> bs!582196 m!4379983))

(assert (=> bs!582196 m!4379983))

(declare-fun m!4384615 () Bool)

(assert (=> bs!582196 m!4384615))

(assert (=> d!1135782 d!1137036))

(assert (=> b!3828429 d!1136890))

(declare-fun b!3830402 () Bool)

(declare-fun e!2365496 () List!40547)

(assert (=> b!3830402 (= e!2365496 Nil!40423)))

(declare-fun b!3830403 () Bool)

(declare-fun e!2365497 () List!40547)

(assert (=> b!3830403 (= e!2365496 e!2365497)))

(declare-fun c!667923 () Bool)

(assert (=> b!3830403 (= c!667923 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328956))))))

(declare-fun b!3830404 () Bool)

(assert (=> b!3830404 (= e!2365497 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328956)))))))

(declare-fun b!3830405 () Bool)

(assert (=> b!3830405 (= e!2365497 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328956)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328956))))))))

(declare-fun d!1137038 () Bool)

(declare-fun c!667922 () Bool)

(assert (=> d!1137038 (= c!667922 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328956))))))

(assert (=> d!1137038 (= (list!15059 (c!667180 (_2!22945 lt!1328956))) e!2365496)))

(assert (= (and d!1137038 c!667922) b!3830402))

(assert (= (and d!1137038 (not c!667922)) b!3830403))

(assert (= (and b!3830403 c!667923) b!3830404))

(assert (= (and b!3830403 (not c!667923)) b!3830405))

(declare-fun m!4384617 () Bool)

(assert (=> b!3830404 m!4384617))

(declare-fun m!4384619 () Bool)

(assert (=> b!3830405 m!4384619))

(declare-fun m!4384621 () Bool)

(assert (=> b!3830405 m!4384621))

(assert (=> b!3830405 m!4384619))

(assert (=> b!3830405 m!4384621))

(declare-fun m!4384623 () Bool)

(assert (=> b!3830405 m!4384623))

(assert (=> d!1135522 d!1137038))

(declare-fun d!1137040 () Bool)

(declare-fun res!1550720 () Bool)

(declare-fun e!2365499 () Bool)

(assert (=> d!1137040 (=> res!1550720 e!2365499)))

(assert (=> d!1137040 (= res!1550720 (not ((_ is Node!12422) (right!31605 (c!667180 input!678)))))))

(assert (=> d!1137040 (= (isBalanced!3602 (right!31605 (c!667180 input!678))) e!2365499)))

(declare-fun b!3830406 () Bool)

(declare-fun res!1550722 () Bool)

(declare-fun e!2365498 () Bool)

(assert (=> b!3830406 (=> (not res!1550722) (not e!2365498))))

(assert (=> b!3830406 (= res!1550722 (isBalanced!3602 (right!31605 (right!31605 (c!667180 input!678)))))))

(declare-fun b!3830407 () Bool)

(assert (=> b!3830407 (= e!2365499 e!2365498)))

(declare-fun res!1550721 () Bool)

(assert (=> b!3830407 (=> (not res!1550721) (not e!2365498))))

(assert (=> b!3830407 (= res!1550721 (<= (- 1) (- (height!1818 (left!31275 (right!31605 (c!667180 input!678)))) (height!1818 (right!31605 (right!31605 (c!667180 input!678)))))))))

(declare-fun b!3830408 () Bool)

(assert (=> b!3830408 (= e!2365498 (not (isEmpty!23861 (right!31605 (right!31605 (c!667180 input!678))))))))

(declare-fun b!3830409 () Bool)

(declare-fun res!1550719 () Bool)

(assert (=> b!3830409 (=> (not res!1550719) (not e!2365498))))

(assert (=> b!3830409 (= res!1550719 (<= (- (height!1818 (left!31275 (right!31605 (c!667180 input!678)))) (height!1818 (right!31605 (right!31605 (c!667180 input!678))))) 1))))

(declare-fun b!3830410 () Bool)

(declare-fun res!1550723 () Bool)

(assert (=> b!3830410 (=> (not res!1550723) (not e!2365498))))

(assert (=> b!3830410 (= res!1550723 (not (isEmpty!23861 (left!31275 (right!31605 (c!667180 input!678))))))))

(declare-fun b!3830411 () Bool)

(declare-fun res!1550718 () Bool)

(assert (=> b!3830411 (=> (not res!1550718) (not e!2365498))))

(assert (=> b!3830411 (= res!1550718 (isBalanced!3602 (left!31275 (right!31605 (c!667180 input!678)))))))

(assert (= (and d!1137040 (not res!1550720)) b!3830407))

(assert (= (and b!3830407 res!1550721) b!3830409))

(assert (= (and b!3830409 res!1550719) b!3830411))

(assert (= (and b!3830411 res!1550718) b!3830406))

(assert (= (and b!3830406 res!1550722) b!3830410))

(assert (= (and b!3830410 res!1550723) b!3830408))

(declare-fun m!4384625 () Bool)

(assert (=> b!3830409 m!4384625))

(declare-fun m!4384627 () Bool)

(assert (=> b!3830409 m!4384627))

(declare-fun m!4384629 () Bool)

(assert (=> b!3830408 m!4384629))

(declare-fun m!4384631 () Bool)

(assert (=> b!3830410 m!4384631))

(declare-fun m!4384633 () Bool)

(assert (=> b!3830406 m!4384633))

(assert (=> b!3830407 m!4384625))

(assert (=> b!3830407 m!4384627))

(declare-fun m!4384635 () Bool)

(assert (=> b!3830411 m!4384635))

(assert (=> b!3828113 d!1137040))

(assert (=> d!1135526 d!1137000))

(assert (=> d!1135526 d!1137002))

(declare-fun d!1137042 () Bool)

(assert (=> d!1137042 (= (height!1816 (ite c!667310 (right!31606 (c!667181 acc!335)) (right!31606 (c!667181 (_1!22945 lt!1328861))))) (ite ((_ is Empty!12423) (ite c!667310 (right!31606 (c!667181 acc!335)) (right!31606 (c!667181 (_1!22945 lt!1328861))))) 0 (ite ((_ is Leaf!19233) (ite c!667310 (right!31606 (c!667181 acc!335)) (right!31606 (c!667181 (_1!22945 lt!1328861))))) 1 (cheight!12634 (ite c!667310 (right!31606 (c!667181 acc!335)) (right!31606 (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> bm!281212 d!1137042))

(declare-fun d!1137044 () Bool)

(declare-fun lt!1330103 () Bool)

(assert (=> d!1137044 (= lt!1330103 (isEmpty!23858 (list!15056 (_1!22945 lt!1329201))))))

(assert (=> d!1137044 (= lt!1330103 (isEmpty!23863 (c!667181 (_1!22945 lt!1329201))))))

(assert (=> d!1137044 (= (isEmpty!23852 (_1!22945 lt!1329201)) lt!1330103)))

(declare-fun bs!582197 () Bool)

(assert (= bs!582197 d!1137044))

(assert (=> bs!582197 m!4380379))

(assert (=> bs!582197 m!4380379))

(declare-fun m!4384637 () Bool)

(assert (=> bs!582197 m!4384637))

(declare-fun m!4384639 () Bool)

(assert (=> bs!582197 m!4384639))

(assert (=> b!3828019 d!1137044))

(assert (=> b!3828064 d!1136824))

(assert (=> b!3828064 d!1136826))

(declare-fun d!1137046 () Bool)

(assert (=> d!1137046 (= (height!1816 (ite c!667310 (c!667181 acc!335) lt!1329043)) (ite ((_ is Empty!12423) (ite c!667310 (c!667181 acc!335) lt!1329043)) 0 (ite ((_ is Leaf!19233) (ite c!667310 (c!667181 acc!335) lt!1329043)) 1 (cheight!12634 (ite c!667310 (c!667181 acc!335) lt!1329043)))))))

(assert (=> bm!281223 d!1137046))

(declare-fun d!1137048 () Bool)

(declare-fun lt!1330104 () Bool)

(assert (=> d!1137048 (= lt!1330104 (isEmpty!23858 (list!15060 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1137048 (= lt!1330104 (= (size!30477 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) 0))))

(assert (=> d!1137048 (= (isEmpty!23863 (right!31606 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) lt!1330104)))

(declare-fun bs!582198 () Bool)

(assert (= bs!582198 d!1137048))

(declare-fun m!4384641 () Bool)

(assert (=> bs!582198 m!4384641))

(assert (=> bs!582198 m!4384641))

(declare-fun m!4384643 () Bool)

(assert (=> bs!582198 m!4384643))

(declare-fun m!4384645 () Bool)

(assert (=> bs!582198 m!4384645))

(assert (=> b!3828536 d!1137048))

(declare-fun d!1137050 () Bool)

(declare-fun lt!1330105 () Int)

(assert (=> d!1137050 (>= lt!1330105 0)))

(declare-fun e!2365500 () Int)

(assert (=> d!1137050 (= lt!1330105 e!2365500)))

(declare-fun c!667924 () Bool)

(assert (=> d!1137050 (= c!667924 ((_ is Nil!40423) lt!1329294))))

(assert (=> d!1137050 (= (size!30470 lt!1329294) lt!1330105)))

(declare-fun b!3830412 () Bool)

(assert (=> b!3830412 (= e!2365500 0)))

(declare-fun b!3830413 () Bool)

(assert (=> b!3830413 (= e!2365500 (+ 1 (size!30470 (t!308874 lt!1329294))))))

(assert (= (and d!1137050 c!667924) b!3830412))

(assert (= (and d!1137050 (not c!667924)) b!3830413))

(declare-fun m!4384647 () Bool)

(assert (=> b!3830413 m!4384647))

(assert (=> b!3828395 d!1137050))

(declare-fun e!2365503 () Bool)

(declare-fun b!3830414 () Bool)

(declare-fun lt!1330109 () Option!8648)

(assert (=> b!3830414 (= e!2365503 (= (list!15055 (_2!22946 (get!13412 lt!1330109))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335))))))))

(declare-fun b!3830415 () Bool)

(declare-fun e!2365501 () Bool)

(declare-fun e!2365504 () Bool)

(assert (=> b!3830415 (= e!2365501 e!2365504)))

(declare-fun res!1550724 () Bool)

(assert (=> b!3830415 (=> res!1550724 e!2365504)))

(assert (=> b!3830415 (= res!1550724 (not (isDefined!6810 lt!1330109)))))

(declare-fun b!3830416 () Bool)

(declare-fun res!1550726 () Bool)

(assert (=> b!3830416 (=> (not res!1550726) (not e!2365501))))

(declare-fun e!2365506 () Bool)

(assert (=> b!3830416 (= res!1550726 e!2365506)))

(declare-fun res!1550725 () Bool)

(assert (=> b!3830416 (=> res!1550725 e!2365506)))

(assert (=> b!3830416 (= res!1550725 (not (isDefined!6810 lt!1330109)))))

(declare-fun b!3830417 () Bool)

(declare-fun e!2365502 () Option!8648)

(declare-fun call!281458 () Option!8648)

(assert (=> b!3830417 (= e!2365502 call!281458)))

(declare-fun d!1137052 () Bool)

(assert (=> d!1137052 e!2365501))

(declare-fun res!1550729 () Bool)

(assert (=> d!1137052 (=> (not res!1550729) (not e!2365501))))

(assert (=> d!1137052 (= res!1550729 (= (isDefined!6810 lt!1330109) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335)))))))

(assert (=> d!1137052 (= lt!1330109 e!2365502)))

(declare-fun c!667925 () Bool)

(assert (=> d!1137052 (= c!667925 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1330108 () Unit!58192)

(declare-fun lt!1330110 () Unit!58192)

(assert (=> d!1137052 (= lt!1330108 lt!1330110)))

(declare-fun lt!1330107 () List!40547)

(declare-fun lt!1330111 () List!40547)

(assert (=> d!1137052 (isPrefix!3333 lt!1330107 lt!1330111)))

(assert (=> d!1137052 (= lt!1330110 (lemmaIsPrefixRefl!2118 lt!1330107 lt!1330111))))

(assert (=> d!1137052 (= lt!1330111 (list!15055 totalInput!335))))

(assert (=> d!1137052 (= lt!1330107 (list!15055 totalInput!335))))

(assert (=> d!1137052 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1137052 (= (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) totalInput!335) lt!1330109)))

(declare-fun bm!281453 () Bool)

(assert (=> bm!281453 (= call!281458 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 (t!308876 rules!1265)) totalInput!335))))

(declare-fun b!3830418 () Bool)

(assert (=> b!3830418 (= e!2365504 e!2365503)))

(declare-fun res!1550727 () Bool)

(assert (=> b!3830418 (=> (not res!1550727) (not e!2365503))))

(assert (=> b!3830418 (= res!1550727 (= (_1!22946 (get!13412 lt!1330109)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335))))))))

(declare-fun b!3830419 () Bool)

(declare-fun lt!1330112 () Option!8648)

(declare-fun lt!1330106 () Option!8648)

(assert (=> b!3830419 (= e!2365502 (ite (and ((_ is None!8647) lt!1330112) ((_ is None!8647) lt!1330106)) None!8647 (ite ((_ is None!8647) lt!1330106) lt!1330112 (ite ((_ is None!8647) lt!1330112) lt!1330106 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330112))) (size!30466 (_1!22946 (v!38923 lt!1330106)))) lt!1330112 lt!1330106)))))))

(assert (=> b!3830419 (= lt!1330112 call!281458)))

(assert (=> b!3830419 (= lt!1330106 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 (t!308876 rules!1265)) totalInput!335))))

(declare-fun e!2365505 () Bool)

(declare-fun b!3830420 () Bool)

(assert (=> b!3830420 (= e!2365505 (= (list!15055 (_2!22946 (get!13412 lt!1330109))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335))))))))

(declare-fun b!3830421 () Bool)

(assert (=> b!3830421 (= e!2365506 e!2365505)))

(declare-fun res!1550728 () Bool)

(assert (=> b!3830421 (=> (not res!1550728) (not e!2365505))))

(assert (=> b!3830421 (= res!1550728 (= (_1!22946 (get!13412 lt!1330109)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335))))))))

(assert (= (and d!1137052 c!667925) b!3830417))

(assert (= (and d!1137052 (not c!667925)) b!3830419))

(assert (= (or b!3830417 b!3830419) bm!281453))

(assert (= (and d!1137052 res!1550729) b!3830416))

(assert (= (and b!3830416 (not res!1550725)) b!3830421))

(assert (= (and b!3830421 res!1550728) b!3830420))

(assert (= (and b!3830416 res!1550726) b!3830415))

(assert (= (and b!3830415 (not res!1550724)) b!3830418))

(assert (= (and b!3830418 res!1550727) b!3830414))

(declare-fun m!4384649 () Bool)

(assert (=> b!3830416 m!4384649))

(declare-fun m!4384651 () Bool)

(assert (=> d!1137052 m!4384651))

(assert (=> d!1137052 m!4379221))

(declare-fun m!4384653 () Bool)

(assert (=> d!1137052 m!4384653))

(assert (=> d!1137052 m!4380915))

(assert (=> d!1137052 m!4379221))

(declare-fun m!4384655 () Bool)

(assert (=> d!1137052 m!4384655))

(assert (=> d!1137052 m!4384653))

(declare-fun m!4384657 () Bool)

(assert (=> d!1137052 m!4384657))

(assert (=> d!1137052 m!4384649))

(declare-fun m!4384659 () Bool)

(assert (=> b!3830418 m!4384659))

(assert (=> b!3830418 m!4379221))

(assert (=> b!3830418 m!4379221))

(assert (=> b!3830418 m!4384381))

(assert (=> b!3830418 m!4384381))

(declare-fun m!4384661 () Bool)

(assert (=> b!3830418 m!4384661))

(assert (=> b!3830420 m!4384653))

(declare-fun m!4384663 () Bool)

(assert (=> b!3830420 m!4384663))

(assert (=> b!3830420 m!4384659))

(assert (=> b!3830420 m!4379221))

(assert (=> b!3830420 m!4384653))

(assert (=> b!3830420 m!4379221))

(declare-fun m!4384665 () Bool)

(assert (=> b!3830420 m!4384665))

(declare-fun m!4384667 () Bool)

(assert (=> bm!281453 m!4384667))

(assert (=> b!3830415 m!4384649))

(assert (=> b!3830421 m!4384659))

(assert (=> b!3830421 m!4379221))

(assert (=> b!3830421 m!4379221))

(assert (=> b!3830421 m!4384653))

(assert (=> b!3830421 m!4384653))

(assert (=> b!3830421 m!4384663))

(declare-fun m!4384669 () Bool)

(assert (=> b!3830419 m!4384669))

(assert (=> b!3830414 m!4384381))

(assert (=> b!3830414 m!4384661))

(assert (=> b!3830414 m!4379221))

(assert (=> b!3830414 m!4384381))

(assert (=> b!3830414 m!4384659))

(assert (=> b!3830414 m!4379221))

(assert (=> b!3830414 m!4384665))

(assert (=> b!3828341 d!1137052))

(declare-fun bs!582199 () Bool)

(declare-fun b!3830427 () Bool)

(assert (= bs!582199 (and b!3830427 b!3827975)))

(declare-fun lambda!125970 () Int)

(assert (=> bs!582199 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125970 lambda!125925))))

(declare-fun bs!582200 () Bool)

(assert (= bs!582200 (and b!3830427 d!1135788)))

(assert (=> bs!582200 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125970 lambda!125942))))

(declare-fun bs!582201 () Bool)

(assert (= bs!582201 (and b!3830427 b!3829941)))

(assert (=> bs!582201 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125970 lambda!125965))))

(declare-fun bs!582202 () Bool)

(assert (= bs!582202 (and b!3830427 b!3830124)))

(assert (=> bs!582202 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125970 lambda!125966))))

(declare-fun b!3830429 () Bool)

(declare-fun e!2365513 () Bool)

(assert (=> b!3830429 (= e!2365513 true)))

(declare-fun b!3830428 () Bool)

(declare-fun e!2365512 () Bool)

(assert (=> b!3830428 (= e!2365512 e!2365513)))

(assert (=> b!3830427 e!2365512))

(assert (= b!3830428 b!3830429))

(assert (= b!3830427 b!3830428))

(assert (=> b!3830429 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (dynLambda!17507 order!22089 lambda!125970))))

(assert (=> b!3830429 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (dynLambda!17507 order!22089 lambda!125970))))

(declare-fun d!1137054 () Bool)

(declare-fun e!2365508 () Bool)

(assert (=> d!1137054 e!2365508))

(declare-fun res!1550732 () Bool)

(assert (=> d!1137054 (=> (not res!1550732) (not e!2365508))))

(declare-fun lt!1330120 () Option!8648)

(assert (=> d!1137054 (= res!1550732 (= (isDefined!6810 lt!1330120) (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 (t!308876 rules!1265)) (list!15055 input!678)))))))

(declare-fun e!2365509 () Option!8648)

(assert (=> d!1137054 (= lt!1330120 e!2365509)))

(declare-fun c!667926 () Bool)

(declare-fun lt!1330117 () tuple2!39634)

(assert (=> d!1137054 (= c!667926 (isEmpty!23860 (_1!22951 lt!1330117)))))

(assert (=> d!1137054 (= lt!1330117 (findLongestMatchWithZipperSequenceV2!113 (regex!6224 (h!45845 (t!308876 rules!1265))) input!678 totalInput!335))))

(assert (=> d!1137054 (ruleValid!2185 thiss!11876 (h!45845 (t!308876 rules!1265)))))

(assert (=> d!1137054 (= (maxPrefixOneRuleZipperSequenceV2!251 thiss!11876 (h!45845 (t!308876 rules!1265)) input!678 totalInput!335) lt!1330120)))

(declare-fun b!3830422 () Bool)

(declare-fun e!2365511 () Bool)

(declare-fun e!2365510 () Bool)

(assert (=> b!3830422 (= e!2365511 e!2365510)))

(declare-fun res!1550733 () Bool)

(assert (=> b!3830422 (=> (not res!1550733) (not e!2365510))))

(assert (=> b!3830422 (= res!1550733 (= (_1!22946 (get!13412 lt!1330120)) (_1!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 (t!308876 rules!1265)) (list!15055 input!678))))))))

(declare-fun b!3830423 () Bool)

(assert (=> b!3830423 (= e!2365509 None!8647)))

(declare-fun b!3830424 () Bool)

(declare-fun e!2365507 () Bool)

(declare-fun lt!1330119 () List!40547)

(assert (=> b!3830424 (= e!2365507 (matchR!5322 (regex!6224 (h!45845 (t!308876 rules!1265))) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 (t!308876 rules!1265))) Nil!40423 (size!30470 Nil!40423) lt!1330119 lt!1330119 (size!30470 lt!1330119)))))))

(declare-fun b!3830425 () Bool)

(assert (=> b!3830425 (= e!2365508 e!2365511)))

(declare-fun res!1550731 () Bool)

(assert (=> b!3830425 (=> res!1550731 e!2365511)))

(assert (=> b!3830425 (= res!1550731 (not (isDefined!6810 lt!1330120)))))

(declare-fun b!3830426 () Bool)

(assert (=> b!3830426 (= e!2365510 (= (list!15055 (_2!22946 (get!13412 lt!1330120))) (_2!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 (t!308876 rules!1265)) (list!15055 input!678))))))))

(assert (=> b!3830427 (= e!2365509 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 (t!308876 rules!1265))) (_1!22951 lt!1330117)) (h!45845 (t!308876 rules!1265)) (size!30472 (_1!22951 lt!1330117)) (list!15055 (_1!22951 lt!1330117))) (_2!22951 lt!1330117))))))

(assert (=> b!3830427 (= lt!1330119 (list!15055 input!678))))

(declare-fun lt!1330116 () Unit!58192)

(assert (=> b!3830427 (= lt!1330116 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 (t!308876 rules!1265))) lt!1330119))))

(declare-fun res!1550730 () Bool)

(assert (=> b!3830427 (= res!1550730 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 (t!308876 rules!1265))) Nil!40423 (size!30470 Nil!40423) lt!1330119 lt!1330119 (size!30470 lt!1330119)))))))

(assert (=> b!3830427 (=> res!1550730 e!2365507)))

(assert (=> b!3830427 e!2365507))

(declare-fun lt!1330122 () Unit!58192)

(assert (=> b!3830427 (= lt!1330122 lt!1330116)))

(declare-fun lt!1330115 () Unit!58192)

(assert (=> b!3830427 (= lt!1330115 (lemmaInv!866 (transformation!6224 (h!45845 (t!308876 rules!1265)))))))

(declare-fun lt!1330113 () Unit!58192)

(assert (=> b!3830427 (= lt!1330113 (ForallOf!777 lambda!125970 (_1!22951 lt!1330117)))))

(declare-fun lt!1330114 () Unit!58192)

(assert (=> b!3830427 (= lt!1330114 (ForallOf!777 lambda!125970 (seqFromList!4507 (list!15055 (_1!22951 lt!1330117)))))))

(declare-fun lt!1330118 () Option!8648)

(assert (=> b!3830427 (= lt!1330118 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 (t!308876 rules!1265))) (_1!22951 lt!1330117)) (h!45845 (t!308876 rules!1265)) (size!30472 (_1!22951 lt!1330117)) (list!15055 (_1!22951 lt!1330117))) (_2!22951 lt!1330117))))))

(declare-fun lt!1330121 () Unit!58192)

(assert (=> b!3830427 (= lt!1330121 (lemmaEqSameImage!1050 (transformation!6224 (h!45845 (t!308876 rules!1265))) (_1!22951 lt!1330117) (seqFromList!4507 (list!15055 (_1!22951 lt!1330117)))))))

(assert (= (and d!1137054 c!667926) b!3830423))

(assert (= (and d!1137054 (not c!667926)) b!3830427))

(assert (= (and b!3830427 (not res!1550730)) b!3830424))

(assert (= (and d!1137054 res!1550732) b!3830425))

(assert (= (and b!3830425 (not res!1550731)) b!3830422))

(assert (= (and b!3830422 res!1550733) b!3830426))

(assert (=> b!3830427 m!4380267))

(declare-fun m!4384671 () Bool)

(assert (=> b!3830427 m!4384671))

(declare-fun m!4384673 () Bool)

(assert (=> b!3830427 m!4384673))

(declare-fun m!4384675 () Bool)

(assert (=> b!3830427 m!4384675))

(declare-fun m!4384677 () Bool)

(assert (=> b!3830427 m!4384677))

(declare-fun m!4384679 () Bool)

(assert (=> b!3830427 m!4384679))

(declare-fun m!4384681 () Bool)

(assert (=> b!3830427 m!4384681))

(declare-fun m!4384683 () Bool)

(assert (=> b!3830427 m!4384683))

(assert (=> b!3830427 m!4379223))

(declare-fun m!4384685 () Bool)

(assert (=> b!3830427 m!4384685))

(assert (=> b!3830427 m!4380267))

(assert (=> b!3830427 m!4384677))

(declare-fun m!4384687 () Bool)

(assert (=> b!3830427 m!4384687))

(declare-fun m!4384689 () Bool)

(assert (=> b!3830427 m!4384689))

(declare-fun m!4384691 () Bool)

(assert (=> b!3830427 m!4384691))

(assert (=> b!3830427 m!4384671))

(assert (=> b!3830427 m!4384691))

(assert (=> b!3830427 m!4384671))

(declare-fun m!4384693 () Bool)

(assert (=> b!3830427 m!4384693))

(declare-fun m!4384695 () Bool)

(assert (=> b!3830422 m!4384695))

(assert (=> b!3830422 m!4379223))

(assert (=> b!3830422 m!4379223))

(declare-fun m!4384697 () Bool)

(assert (=> b!3830422 m!4384697))

(assert (=> b!3830422 m!4384697))

(declare-fun m!4384699 () Bool)

(assert (=> b!3830422 m!4384699))

(assert (=> b!3830426 m!4379223))

(declare-fun m!4384701 () Bool)

(assert (=> b!3830426 m!4384701))

(assert (=> b!3830426 m!4384697))

(assert (=> b!3830426 m!4384699))

(assert (=> b!3830426 m!4384695))

(assert (=> b!3830426 m!4379223))

(assert (=> b!3830426 m!4384697))

(declare-fun m!4384703 () Bool)

(assert (=> b!3830425 m!4384703))

(assert (=> b!3830424 m!4380267))

(assert (=> b!3830424 m!4384677))

(assert (=> b!3830424 m!4380267))

(assert (=> b!3830424 m!4384677))

(assert (=> b!3830424 m!4384687))

(declare-fun m!4384705 () Bool)

(assert (=> b!3830424 m!4384705))

(assert (=> d!1137054 m!4379223))

(assert (=> d!1137054 m!4384697))

(declare-fun m!4384707 () Bool)

(assert (=> d!1137054 m!4384707))

(declare-fun m!4384709 () Bool)

(assert (=> d!1137054 m!4384709))

(declare-fun m!4384711 () Bool)

(assert (=> d!1137054 m!4384711))

(assert (=> d!1137054 m!4379223))

(assert (=> d!1137054 m!4384697))

(declare-fun m!4384713 () Bool)

(assert (=> d!1137054 m!4384713))

(assert (=> d!1137054 m!4384703))

(assert (=> bm!281292 d!1137054))

(declare-fun bm!281454 () Bool)

(declare-fun call!281460 () List!40548)

(assert (=> bm!281454 (= call!281460 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830430 () Bool)

(declare-fun e!2365514 () Bool)

(declare-fun call!281461 () List!40548)

(declare-fun call!281459 () List!40548)

(assert (=> b!3830430 (= e!2365514 (= call!281461 call!281459))))

(declare-fun d!1137056 () Bool)

(assert (=> d!1137056 e!2365514))

(declare-fun c!667927 () Bool)

(assert (=> d!1137056 (= c!667927 ((_ is Nil!40424) (list!15060 (c!667181 acc!335))))))

(assert (=> d!1137056 (= (appendAssoc!285 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) true)))

(declare-fun bm!281455 () Bool)

(declare-fun call!281462 () List!40548)

(assert (=> bm!281455 (= call!281459 (++!10192 (list!15060 (c!667181 acc!335)) call!281462))))

(declare-fun bm!281456 () Bool)

(assert (=> bm!281456 (= call!281462 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830431 () Bool)

(assert (=> b!3830431 (= e!2365514 (= call!281461 call!281459))))

(declare-fun lt!1330123 () Bool)

(assert (=> b!3830431 (= lt!1330123 (appendAssoc!285 (t!308875 (list!15060 (c!667181 acc!335))) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun bm!281457 () Bool)

(assert (=> bm!281457 (= call!281461 (++!10192 call!281460 (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(assert (= (and d!1137056 c!667927) b!3830430))

(assert (= (and d!1137056 (not c!667927)) b!3830431))

(assert (= (or b!3830430 b!3830431) bm!281454))

(assert (= (or b!3830430 b!3830431) bm!281456))

(assert (= (or b!3830430 b!3830431) bm!281457))

(assert (= (or b!3830430 b!3830431) bm!281455))

(assert (=> b!3830431 m!4379869))

(assert (=> b!3830431 m!4379867))

(declare-fun m!4384715 () Bool)

(assert (=> b!3830431 m!4384715))

(assert (=> bm!281454 m!4379595))

(assert (=> bm!281454 m!4379869))

(assert (=> bm!281454 m!4379871))

(assert (=> bm!281457 m!4379867))

(declare-fun m!4384717 () Bool)

(assert (=> bm!281457 m!4384717))

(assert (=> bm!281455 m!4379595))

(declare-fun m!4384719 () Bool)

(assert (=> bm!281455 m!4384719))

(assert (=> bm!281456 m!4379869))

(assert (=> bm!281456 m!4379867))

(declare-fun m!4384721 () Bool)

(assert (=> bm!281456 m!4384721))

(assert (=> b!3827610 d!1137056))

(assert (=> b!3827610 d!1135638))

(declare-fun b!3830433 () Bool)

(declare-fun e!2365515 () List!40548)

(declare-fun e!2365516 () List!40548)

(assert (=> b!3830433 (= e!2365515 e!2365516)))

(declare-fun c!667929 () Bool)

(assert (=> b!3830433 (= c!667929 ((_ is Leaf!19233) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830435 () Bool)

(assert (=> b!3830435 (= e!2365516 (++!10192 (list!15060 (left!31276 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (list!15060 (right!31606 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun d!1137058 () Bool)

(declare-fun c!667928 () Bool)

(assert (=> d!1137058 (= c!667928 ((_ is Empty!12423) (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(assert (=> d!1137058 (= (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) e!2365515)))

(declare-fun b!3830434 () Bool)

(assert (=> b!3830434 (= e!2365516 (list!15064 (xs!15717 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830432 () Bool)

(assert (=> b!3830432 (= e!2365515 Nil!40424)))

(assert (= (and d!1137058 c!667928) b!3830432))

(assert (= (and d!1137058 (not c!667928)) b!3830433))

(assert (= (and b!3830433 c!667929) b!3830434))

(assert (= (and b!3830433 (not c!667929)) b!3830435))

(declare-fun m!4384723 () Bool)

(assert (=> b!3830435 m!4384723))

(declare-fun m!4384725 () Bool)

(assert (=> b!3830435 m!4384725))

(assert (=> b!3830435 m!4384723))

(assert (=> b!3830435 m!4384725))

(declare-fun m!4384727 () Bool)

(assert (=> b!3830435 m!4384727))

(declare-fun m!4384729 () Bool)

(assert (=> b!3830434 m!4384729))

(assert (=> b!3827610 d!1137058))

(declare-fun b!3830437 () Bool)

(declare-fun e!2365517 () List!40548)

(declare-fun e!2365518 () List!40548)

(assert (=> b!3830437 (= e!2365517 e!2365518)))

(declare-fun c!667931 () Bool)

(assert (=> b!3830437 (= c!667931 ((_ is Leaf!19233) (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830439 () Bool)

(assert (=> b!3830439 (= e!2365518 (++!10192 (list!15060 (left!31276 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (list!15060 (right!31606 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun d!1137060 () Bool)

(declare-fun c!667930 () Bool)

(assert (=> d!1137060 (= c!667930 ((_ is Empty!12423) (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(assert (=> d!1137060 (= (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))) e!2365517)))

(declare-fun b!3830438 () Bool)

(assert (=> b!3830438 (= e!2365518 (list!15064 (xs!15717 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830436 () Bool)

(assert (=> b!3830436 (= e!2365517 Nil!40424)))

(assert (= (and d!1137060 c!667930) b!3830436))

(assert (= (and d!1137060 (not c!667930)) b!3830437))

(assert (= (and b!3830437 c!667931) b!3830438))

(assert (= (and b!3830437 (not c!667931)) b!3830439))

(declare-fun m!4384731 () Bool)

(assert (=> b!3830439 m!4384731))

(declare-fun m!4384733 () Bool)

(assert (=> b!3830439 m!4384733))

(assert (=> b!3830439 m!4384731))

(assert (=> b!3830439 m!4384733))

(declare-fun m!4384735 () Bool)

(assert (=> b!3830439 m!4384735))

(declare-fun m!4384737 () Bool)

(assert (=> b!3830438 m!4384737))

(assert (=> b!3827610 d!1137060))

(assert (=> b!3828421 d!1136806))

(declare-fun d!1137062 () Bool)

(declare-fun lt!1330124 () Int)

(assert (=> d!1137062 (>= lt!1330124 0)))

(declare-fun e!2365519 () Int)

(assert (=> d!1137062 (= lt!1330124 e!2365519)))

(declare-fun c!667932 () Bool)

(assert (=> d!1137062 (= c!667932 ((_ is Nil!40424) (_1!22950 lt!1329215)))))

(assert (=> d!1137062 (= (size!30476 (_1!22950 lt!1329215)) lt!1330124)))

(declare-fun b!3830440 () Bool)

(assert (=> b!3830440 (= e!2365519 0)))

(declare-fun b!3830441 () Bool)

(assert (=> b!3830441 (= e!2365519 (+ 1 (size!30476 (t!308875 (_1!22950 lt!1329215)))))))

(assert (= (and d!1137062 c!667932) b!3830440))

(assert (= (and d!1137062 (not c!667932)) b!3830441))

(declare-fun m!4384739 () Bool)

(assert (=> b!3830441 m!4384739))

(assert (=> d!1135646 d!1137062))

(assert (=> d!1135646 d!1136860))

(declare-fun b!3830442 () Bool)

(declare-fun e!2365524 () Int)

(assert (=> b!3830442 (= e!2365524 0)))

(declare-fun d!1137064 () Bool)

(declare-fun e!2365521 () Bool)

(assert (=> d!1137064 e!2365521))

(declare-fun res!1550734 () Bool)

(assert (=> d!1137064 (=> (not res!1550734) (not e!2365521))))

(declare-fun lt!1330125 () List!40547)

(assert (=> d!1137064 (= res!1550734 (= ((_ map implies) (content!5990 lt!1330125) (content!5990 (++!10187 lt!1328858 lt!1328865))) ((as const (InoxSet C!22444)) true)))))

(declare-fun e!2365523 () List!40547)

(assert (=> d!1137064 (= lt!1330125 e!2365523)))

(declare-fun c!667933 () Bool)

(assert (=> d!1137064 (= c!667933 ((_ is Nil!40423) (++!10187 lt!1328858 lt!1328865)))))

(assert (=> d!1137064 (= (drop!2133 (++!10187 lt!1328858 lt!1328865) (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865))) lt!1330125)))

(declare-fun b!3830443 () Bool)

(declare-fun e!2365522 () Int)

(assert (=> b!3830443 (= e!2365521 (= (size!30470 lt!1330125) e!2365522))))

(declare-fun c!667936 () Bool)

(assert (=> b!3830443 (= c!667936 (<= (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)) 0))))

(declare-fun b!3830444 () Bool)

(assert (=> b!3830444 (= e!2365522 e!2365524)))

(declare-fun call!281463 () Int)

(declare-fun c!667935 () Bool)

(assert (=> b!3830444 (= c!667935 (>= (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)) call!281463))))

(declare-fun b!3830445 () Bool)

(assert (=> b!3830445 (= e!2365524 (- call!281463 (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865))))))

(declare-fun b!3830446 () Bool)

(assert (=> b!3830446 (= e!2365523 Nil!40423)))

(declare-fun b!3830447 () Bool)

(assert (=> b!3830447 (= e!2365522 call!281463)))

(declare-fun b!3830448 () Bool)

(declare-fun e!2365520 () List!40547)

(assert (=> b!3830448 (= e!2365520 (++!10187 lt!1328858 lt!1328865))))

(declare-fun bm!281458 () Bool)

(assert (=> bm!281458 (= call!281463 (size!30470 (++!10187 lt!1328858 lt!1328865)))))

(declare-fun b!3830449 () Bool)

(assert (=> b!3830449 (= e!2365520 (drop!2133 (t!308874 (++!10187 lt!1328858 lt!1328865)) (- (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)) 1)))))

(declare-fun b!3830450 () Bool)

(assert (=> b!3830450 (= e!2365523 e!2365520)))

(declare-fun c!667934 () Bool)

(assert (=> b!3830450 (= c!667934 (<= (- (size!30470 (++!10187 lt!1328858 lt!1328865)) (size!30470 lt!1328865)) 0))))

(assert (= (and d!1137064 c!667933) b!3830446))

(assert (= (and d!1137064 (not c!667933)) b!3830450))

(assert (= (and b!3830450 c!667934) b!3830448))

(assert (= (and b!3830450 (not c!667934)) b!3830449))

(assert (= (and d!1137064 res!1550734) b!3830443))

(assert (= (and b!3830443 c!667936) b!3830447))

(assert (= (and b!3830443 (not c!667936)) b!3830444))

(assert (= (and b!3830444 c!667935) b!3830442))

(assert (= (and b!3830444 (not c!667935)) b!3830445))

(assert (= (or b!3830447 b!3830444 b!3830445) bm!281458))

(declare-fun m!4384741 () Bool)

(assert (=> d!1137064 m!4384741))

(assert (=> d!1137064 m!4379219))

(declare-fun m!4384743 () Bool)

(assert (=> d!1137064 m!4384743))

(declare-fun m!4384745 () Bool)

(assert (=> b!3830443 m!4384745))

(assert (=> bm!281458 m!4379219))

(assert (=> bm!281458 m!4380883))

(declare-fun m!4384747 () Bool)

(assert (=> b!3830449 m!4384747))

(assert (=> d!1135776 d!1137064))

(declare-fun d!1137066 () Bool)

(declare-fun lt!1330126 () Int)

(assert (=> d!1137066 (>= lt!1330126 0)))

(declare-fun e!2365525 () Int)

(assert (=> d!1137066 (= lt!1330126 e!2365525)))

(declare-fun c!667937 () Bool)

(assert (=> d!1137066 (= c!667937 ((_ is Nil!40423) (++!10187 lt!1328858 lt!1328865)))))

(assert (=> d!1137066 (= (size!30470 (++!10187 lt!1328858 lt!1328865)) lt!1330126)))

(declare-fun b!3830451 () Bool)

(assert (=> b!3830451 (= e!2365525 0)))

(declare-fun b!3830452 () Bool)

(assert (=> b!3830452 (= e!2365525 (+ 1 (size!30470 (t!308874 (++!10187 lt!1328858 lt!1328865)))))))

(assert (= (and d!1137066 c!667937) b!3830451))

(assert (= (and d!1137066 (not c!667937)) b!3830452))

(declare-fun m!4384749 () Bool)

(assert (=> b!3830452 m!4384749))

(assert (=> d!1135776 d!1137066))

(assert (=> d!1135776 d!1135760))

(declare-fun d!1137068 () Bool)

(declare-fun res!1550735 () Bool)

(declare-fun e!2365526 () Bool)

(assert (=> d!1137068 (=> (not res!1550735) (not e!2365526))))

(assert (=> d!1137068 (= res!1550735 (<= (size!30476 (list!15064 (xs!15717 (left!31276 (c!667181 acc!335))))) 512))))

(assert (=> d!1137068 (= (inv!54496 (left!31276 (c!667181 acc!335))) e!2365526)))

(declare-fun b!3830453 () Bool)

(declare-fun res!1550736 () Bool)

(assert (=> b!3830453 (=> (not res!1550736) (not e!2365526))))

(assert (=> b!3830453 (= res!1550736 (= (csize!25077 (left!31276 (c!667181 acc!335))) (size!30476 (list!15064 (xs!15717 (left!31276 (c!667181 acc!335)))))))))

(declare-fun b!3830454 () Bool)

(assert (=> b!3830454 (= e!2365526 (and (> (csize!25077 (left!31276 (c!667181 acc!335))) 0) (<= (csize!25077 (left!31276 (c!667181 acc!335))) 512)))))

(assert (= (and d!1137068 res!1550735) b!3830453))

(assert (= (and b!3830453 res!1550736) b!3830454))

(assert (=> d!1137068 m!4383513))

(assert (=> d!1137068 m!4383513))

(declare-fun m!4384751 () Bool)

(assert (=> d!1137068 m!4384751))

(assert (=> b!3830453 m!4383513))

(assert (=> b!3830453 m!4383513))

(assert (=> b!3830453 m!4384751))

(assert (=> b!3828489 d!1137068))

(assert (=> b!3828010 d!1136748))

(assert (=> b!3828010 d!1136752))

(declare-fun d!1137070 () Bool)

(declare-fun res!1550739 () Bool)

(declare-fun e!2365528 () Bool)

(assert (=> d!1137070 (=> res!1550739 e!2365528)))

(assert (=> d!1137070 (= res!1550739 (not ((_ is Node!12422) (left!31275 (c!667180 totalInput!335)))))))

(assert (=> d!1137070 (= (isBalanced!3602 (left!31275 (c!667180 totalInput!335))) e!2365528)))

(declare-fun b!3830455 () Bool)

(declare-fun res!1550741 () Bool)

(declare-fun e!2365527 () Bool)

(assert (=> b!3830455 (=> (not res!1550741) (not e!2365527))))

(assert (=> b!3830455 (= res!1550741 (isBalanced!3602 (right!31605 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun b!3830456 () Bool)

(assert (=> b!3830456 (= e!2365528 e!2365527)))

(declare-fun res!1550740 () Bool)

(assert (=> b!3830456 (=> (not res!1550740) (not e!2365527))))

(assert (=> b!3830456 (= res!1550740 (<= (- 1) (- (height!1818 (left!31275 (left!31275 (c!667180 totalInput!335)))) (height!1818 (right!31605 (left!31275 (c!667180 totalInput!335)))))))))

(declare-fun b!3830457 () Bool)

(assert (=> b!3830457 (= e!2365527 (not (isEmpty!23861 (right!31605 (left!31275 (c!667180 totalInput!335))))))))

(declare-fun b!3830458 () Bool)

(declare-fun res!1550738 () Bool)

(assert (=> b!3830458 (=> (not res!1550738) (not e!2365527))))

(assert (=> b!3830458 (= res!1550738 (<= (- (height!1818 (left!31275 (left!31275 (c!667180 totalInput!335)))) (height!1818 (right!31605 (left!31275 (c!667180 totalInput!335))))) 1))))

(declare-fun b!3830459 () Bool)

(declare-fun res!1550742 () Bool)

(assert (=> b!3830459 (=> (not res!1550742) (not e!2365527))))

(assert (=> b!3830459 (= res!1550742 (not (isEmpty!23861 (left!31275 (left!31275 (c!667180 totalInput!335))))))))

(declare-fun b!3830460 () Bool)

(declare-fun res!1550737 () Bool)

(assert (=> b!3830460 (=> (not res!1550737) (not e!2365527))))

(assert (=> b!3830460 (= res!1550737 (isBalanced!3602 (left!31275 (left!31275 (c!667180 totalInput!335)))))))

(assert (= (and d!1137070 (not res!1550739)) b!3830456))

(assert (= (and b!3830456 res!1550740) b!3830458))

(assert (= (and b!3830458 res!1550738) b!3830460))

(assert (= (and b!3830460 res!1550737) b!3830455))

(assert (= (and b!3830455 res!1550741) b!3830459))

(assert (= (and b!3830459 res!1550742) b!3830457))

(declare-fun m!4384753 () Bool)

(assert (=> b!3830458 m!4384753))

(declare-fun m!4384755 () Bool)

(assert (=> b!3830458 m!4384755))

(declare-fun m!4384757 () Bool)

(assert (=> b!3830457 m!4384757))

(declare-fun m!4384759 () Bool)

(assert (=> b!3830459 m!4384759))

(declare-fun m!4384761 () Bool)

(assert (=> b!3830455 m!4384761))

(assert (=> b!3830456 m!4384753))

(assert (=> b!3830456 m!4384755))

(declare-fun m!4384763 () Bool)

(assert (=> b!3830460 m!4384763))

(assert (=> b!3828164 d!1137070))

(declare-fun d!1137072 () Bool)

(assert (=> d!1137072 (= (isEmpty!23858 (list!15056 (_1!22945 lt!1328959))) ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328959))))))

(assert (=> d!1135792 d!1137072))

(assert (=> d!1135792 d!1135810))

(declare-fun d!1137074 () Bool)

(declare-fun lt!1330127 () Bool)

(assert (=> d!1137074 (= lt!1330127 (isEmpty!23858 (list!15060 (c!667181 (_1!22945 lt!1328959)))))))

(assert (=> d!1137074 (= lt!1330127 (= (size!30477 (c!667181 (_1!22945 lt!1328959))) 0))))

(assert (=> d!1137074 (= (isEmpty!23863 (c!667181 (_1!22945 lt!1328959))) lt!1330127)))

(declare-fun bs!582203 () Bool)

(assert (= bs!582203 d!1137074))

(assert (=> bs!582203 m!4380969))

(assert (=> bs!582203 m!4380969))

(declare-fun m!4384765 () Bool)

(assert (=> bs!582203 m!4384765))

(assert (=> bs!582203 m!4381109))

(assert (=> d!1135792 d!1137074))

(assert (=> b!3827683 d!1135748))

(assert (=> b!3827683 d!1135754))

(declare-fun d!1137076 () Bool)

(assert (=> d!1137076 (= (inv!54500 (xs!15716 (left!31275 (c!667180 input!678)))) (<= (size!30470 (innerList!12482 (xs!15716 (left!31275 (c!667180 input!678))))) 2147483647))))

(declare-fun bs!582204 () Bool)

(assert (= bs!582204 d!1137076))

(declare-fun m!4384767 () Bool)

(assert (=> bs!582204 m!4384767))

(assert (=> b!3828618 d!1137076))

(assert (=> b!3828543 d!1136856))

(declare-fun d!1137078 () Bool)

(assert (=> d!1137078 (= (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13))) (v!38925 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 treated!13))))))

(assert (=> b!3828543 d!1137078))

(declare-fun d!1137080 () Bool)

(assert (=> d!1137080 (= (list!15055 (_2!22946 (get!13412 lt!1329338))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1329338)))))))

(declare-fun bs!582205 () Bool)

(assert (= bs!582205 d!1137080))

(declare-fun m!4384769 () Bool)

(assert (=> bs!582205 m!4384769))

(assert (=> b!3828543 d!1137080))

(assert (=> b!3828543 d!1135438))

(assert (=> b!3828543 d!1136702))

(declare-fun d!1137082 () Bool)

(declare-fun lt!1330128 () Int)

(assert (=> d!1137082 (>= lt!1330128 0)))

(declare-fun e!2365529 () Int)

(assert (=> d!1137082 (= lt!1330128 e!2365529)))

(declare-fun c!667938 () Bool)

(assert (=> d!1137082 (= c!667938 ((_ is Nil!40423) (list!15063 (xs!15716 (c!667180 treated!13)))))))

(assert (=> d!1137082 (= (size!30470 (list!15063 (xs!15716 (c!667180 treated!13)))) lt!1330128)))

(declare-fun b!3830461 () Bool)

(assert (=> b!3830461 (= e!2365529 0)))

(declare-fun b!3830462 () Bool)

(assert (=> b!3830462 (= e!2365529 (+ 1 (size!30470 (t!308874 (list!15063 (xs!15716 (c!667180 treated!13)))))))))

(assert (= (and d!1137082 c!667938) b!3830461))

(assert (= (and d!1137082 (not c!667938)) b!3830462))

(declare-fun m!4384771 () Bool)

(assert (=> b!3830462 m!4384771))

(assert (=> b!3828404 d!1137082))

(declare-fun d!1137084 () Bool)

(assert (=> d!1137084 (= (list!15063 (xs!15716 (c!667180 treated!13))) (innerList!12482 (xs!15716 (c!667180 treated!13))))))

(assert (=> b!3828404 d!1137084))

(assert (=> b!3827380 d!1135836))

(assert (=> b!3827380 d!1135838))

(declare-fun d!1137086 () Bool)

(assert (=> d!1137086 (= (head!8068 lt!1328931) (h!45843 lt!1328931))))

(assert (=> b!3828451 d!1137086))

(declare-fun d!1137088 () Bool)

(assert (=> d!1137088 (= (head!8068 lt!1328934) (h!45843 lt!1328934))))

(assert (=> b!3828451 d!1137088))

(declare-fun d!1137090 () Bool)

(declare-fun c!667939 () Bool)

(assert (=> d!1137090 (= c!667939 ((_ is Node!12423) (left!31276 (left!31276 (c!667181 acc!335)))))))

(declare-fun e!2365530 () Bool)

(assert (=> d!1137090 (= (inv!54484 (left!31276 (left!31276 (c!667181 acc!335)))) e!2365530)))

(declare-fun b!3830463 () Bool)

(assert (=> b!3830463 (= e!2365530 (inv!54495 (left!31276 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3830464 () Bool)

(declare-fun e!2365531 () Bool)

(assert (=> b!3830464 (= e!2365530 e!2365531)))

(declare-fun res!1550743 () Bool)

(assert (=> b!3830464 (= res!1550743 (not ((_ is Leaf!19233) (left!31276 (left!31276 (c!667181 acc!335))))))))

(assert (=> b!3830464 (=> res!1550743 e!2365531)))

(declare-fun b!3830465 () Bool)

(assert (=> b!3830465 (= e!2365531 (inv!54496 (left!31276 (left!31276 (c!667181 acc!335)))))))

(assert (= (and d!1137090 c!667939) b!3830463))

(assert (= (and d!1137090 (not c!667939)) b!3830464))

(assert (= (and b!3830464 (not res!1550743)) b!3830465))

(declare-fun m!4384773 () Bool)

(assert (=> b!3830463 m!4384773))

(declare-fun m!4384775 () Bool)

(assert (=> b!3830465 m!4384775))

(assert (=> b!3828606 d!1137090))

(declare-fun d!1137092 () Bool)

(declare-fun c!667940 () Bool)

(assert (=> d!1137092 (= c!667940 ((_ is Node!12423) (right!31606 (left!31276 (c!667181 acc!335)))))))

(declare-fun e!2365532 () Bool)

(assert (=> d!1137092 (= (inv!54484 (right!31606 (left!31276 (c!667181 acc!335)))) e!2365532)))

(declare-fun b!3830466 () Bool)

(assert (=> b!3830466 (= e!2365532 (inv!54495 (right!31606 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3830467 () Bool)

(declare-fun e!2365533 () Bool)

(assert (=> b!3830467 (= e!2365532 e!2365533)))

(declare-fun res!1550744 () Bool)

(assert (=> b!3830467 (= res!1550744 (not ((_ is Leaf!19233) (right!31606 (left!31276 (c!667181 acc!335))))))))

(assert (=> b!3830467 (=> res!1550744 e!2365533)))

(declare-fun b!3830468 () Bool)

(assert (=> b!3830468 (= e!2365533 (inv!54496 (right!31606 (left!31276 (c!667181 acc!335)))))))

(assert (= (and d!1137092 c!667940) b!3830466))

(assert (= (and d!1137092 (not c!667940)) b!3830467))

(assert (= (and b!3830467 (not res!1550744)) b!3830468))

(declare-fun m!4384777 () Bool)

(assert (=> b!3830466 m!4384777))

(declare-fun m!4384779 () Bool)

(assert (=> b!3830468 m!4384779))

(assert (=> b!3828606 d!1137092))

(assert (=> b!3828467 d!1136990))

(assert (=> b!3828049 d!1136772))

(declare-fun b!3830469 () Bool)

(declare-fun e!2365534 () Bool)

(declare-fun e!2365535 () Bool)

(assert (=> b!3830469 (= e!2365534 e!2365535)))

(declare-fun res!1550745 () Bool)

(declare-fun lt!1330131 () tuple2!39632)

(assert (=> b!3830469 (= res!1550745 (< (size!30470 (_2!22950 lt!1330131)) (size!30470 (_2!22949 (v!38925 lt!1329187)))))))

(assert (=> b!3830469 (=> (not res!1550745) (not e!2365535))))

(declare-fun b!3830470 () Bool)

(declare-fun e!2365536 () tuple2!39632)

(assert (=> b!3830470 (= e!2365536 (tuple2!39633 Nil!40424 (_2!22949 (v!38925 lt!1329187))))))

(declare-fun b!3830471 () Bool)

(assert (=> b!3830471 (= e!2365534 (= (_2!22950 lt!1330131) (_2!22949 (v!38925 lt!1329187))))))

(declare-fun b!3830472 () Bool)

(assert (=> b!3830472 (= e!2365535 (not (isEmpty!23858 (_1!22950 lt!1330131))))))

(declare-fun b!3830473 () Bool)

(declare-fun lt!1330130 () Option!8650)

(declare-fun lt!1330129 () tuple2!39632)

(assert (=> b!3830473 (= e!2365536 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1330130)) (_1!22950 lt!1330129)) (_2!22950 lt!1330129)))))

(assert (=> b!3830473 (= lt!1330129 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1330130))))))

(declare-fun d!1137094 () Bool)

(assert (=> d!1137094 e!2365534))

(declare-fun c!667941 () Bool)

(assert (=> d!1137094 (= c!667941 (> (size!30476 (_1!22950 lt!1330131)) 0))))

(assert (=> d!1137094 (= lt!1330131 e!2365536)))

(declare-fun c!667942 () Bool)

(assert (=> d!1137094 (= c!667942 ((_ is Some!8649) lt!1330130))))

(assert (=> d!1137094 (= lt!1330130 (maxPrefix!3125 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329187))))))

(assert (=> d!1137094 (= (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329187))) lt!1330131)))

(assert (= (and d!1137094 c!667942) b!3830473))

(assert (= (and d!1137094 (not c!667942)) b!3830470))

(assert (= (and d!1137094 c!667941) b!3830469))

(assert (= (and d!1137094 (not c!667941)) b!3830471))

(assert (= (and b!3830469 res!1550745) b!3830472))

(declare-fun m!4384781 () Bool)

(assert (=> b!3830469 m!4384781))

(declare-fun m!4384783 () Bool)

(assert (=> b!3830469 m!4384783))

(declare-fun m!4384785 () Bool)

(assert (=> b!3830472 m!4384785))

(declare-fun m!4384787 () Bool)

(assert (=> b!3830473 m!4384787))

(declare-fun m!4384789 () Bool)

(assert (=> d!1137094 m!4384789))

(declare-fun m!4384791 () Bool)

(assert (=> d!1137094 m!4384791))

(assert (=> b!3828000 d!1137094))

(declare-fun d!1137096 () Bool)

(assert (=> d!1137096 (= (list!15063 (xs!15716 (c!667180 input!678))) (innerList!12482 (xs!15716 (c!667180 input!678))))))

(assert (=> b!3828346 d!1137096))

(declare-fun b!3830474 () Bool)

(declare-fun e!2365537 () Bool)

(declare-fun e!2365538 () Bool)

(assert (=> b!3830474 (= e!2365537 e!2365538)))

(declare-fun res!1550746 () Bool)

(declare-fun lt!1330134 () tuple2!39632)

(assert (=> b!3830474 (= res!1550746 (< (size!30470 (_2!22950 lt!1330134)) (size!30470 (_2!22949 (v!38925 lt!1329066)))))))

(assert (=> b!3830474 (=> (not res!1550746) (not e!2365538))))

(declare-fun b!3830475 () Bool)

(declare-fun e!2365539 () tuple2!39632)

(assert (=> b!3830475 (= e!2365539 (tuple2!39633 Nil!40424 (_2!22949 (v!38925 lt!1329066))))))

(declare-fun b!3830476 () Bool)

(assert (=> b!3830476 (= e!2365537 (= (_2!22950 lt!1330134) (_2!22949 (v!38925 lt!1329066))))))

(declare-fun b!3830477 () Bool)

(assert (=> b!3830477 (= e!2365538 (not (isEmpty!23858 (_1!22950 lt!1330134))))))

(declare-fun b!3830478 () Bool)

(declare-fun lt!1330133 () Option!8650)

(declare-fun lt!1330132 () tuple2!39632)

(assert (=> b!3830478 (= e!2365539 (tuple2!39633 (Cons!40424 (_1!22949 (v!38925 lt!1330133)) (_1!22950 lt!1330132)) (_2!22950 lt!1330132)))))

(assert (=> b!3830478 (= lt!1330132 (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1330133))))))

(declare-fun d!1137098 () Bool)

(assert (=> d!1137098 e!2365537))

(declare-fun c!667943 () Bool)

(assert (=> d!1137098 (= c!667943 (> (size!30476 (_1!22950 lt!1330134)) 0))))

(assert (=> d!1137098 (= lt!1330134 e!2365539)))

(declare-fun c!667944 () Bool)

(assert (=> d!1137098 (= c!667944 ((_ is Some!8649) lt!1330133))))

(assert (=> d!1137098 (= lt!1330133 (maxPrefix!3125 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329066))))))

(assert (=> d!1137098 (= (lexList!1583 thiss!11876 rules!1265 (_2!22949 (v!38925 lt!1329066))) lt!1330134)))

(assert (= (and d!1137098 c!667944) b!3830478))

(assert (= (and d!1137098 (not c!667944)) b!3830475))

(assert (= (and d!1137098 c!667943) b!3830474))

(assert (= (and d!1137098 (not c!667943)) b!3830476))

(assert (= (and b!3830474 res!1550746) b!3830477))

(declare-fun m!4384793 () Bool)

(assert (=> b!3830474 m!4384793))

(declare-fun m!4384795 () Bool)

(assert (=> b!3830474 m!4384795))

(declare-fun m!4384797 () Bool)

(assert (=> b!3830477 m!4384797))

(declare-fun m!4384799 () Bool)

(assert (=> b!3830478 m!4384799))

(declare-fun m!4384801 () Bool)

(assert (=> d!1137098 m!4384801))

(declare-fun m!4384803 () Bool)

(assert (=> d!1137098 m!4384803))

(assert (=> b!3827754 d!1137098))

(declare-fun bm!281459 () Bool)

(declare-fun call!281465 () List!40548)

(assert (=> bm!281459 (= call!281465 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (list!15060 (right!31606 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830479 () Bool)

(declare-fun e!2365540 () Bool)

(declare-fun call!281466 () List!40548)

(declare-fun call!281464 () List!40548)

(assert (=> b!3830479 (= e!2365540 (= call!281466 call!281464))))

(declare-fun d!1137100 () Bool)

(assert (=> d!1137100 e!2365540))

(declare-fun c!667945 () Bool)

(assert (=> d!1137100 (= c!667945 ((_ is Nil!40424) (list!15060 (left!31276 (right!31606 (c!667181 acc!335))))))))

(assert (=> d!1137100 (= (appendAssoc!285 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861)))) true)))

(declare-fun bm!281460 () Bool)

(declare-fun call!281467 () List!40548)

(assert (=> bm!281460 (= call!281464 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 acc!335)))) call!281467))))

(declare-fun bm!281461 () Bool)

(assert (=> bm!281461 (= call!281467 (++!10192 (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3830480 () Bool)

(assert (=> b!3830480 (= e!2365540 (= call!281466 call!281464))))

(declare-fun lt!1330135 () Bool)

(assert (=> b!3830480 (= lt!1330135 (appendAssoc!285 (t!308875 (list!15060 (left!31276 (right!31606 (c!667181 acc!335))))) (list!15060 (right!31606 (right!31606 (c!667181 acc!335)))) (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun bm!281462 () Bool)

(assert (=> bm!281462 (= call!281466 (++!10192 call!281465 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))

(assert (= (and d!1137100 c!667945) b!3830479))

(assert (= (and d!1137100 (not c!667945)) b!3830480))

(assert (= (or b!3830479 b!3830480) bm!281459))

(assert (= (or b!3830479 b!3830480) bm!281461))

(assert (= (or b!3830479 b!3830480) bm!281462))

(assert (= (or b!3830479 b!3830480) bm!281460))

(assert (=> b!3830480 m!4379857))

(assert (=> b!3830480 m!4379847))

(declare-fun m!4384805 () Bool)

(assert (=> b!3830480 m!4384805))

(assert (=> bm!281459 m!4379851))

(assert (=> bm!281459 m!4379857))

(assert (=> bm!281459 m!4383515))

(assert (=> bm!281462 m!4379847))

(declare-fun m!4384807 () Bool)

(assert (=> bm!281462 m!4384807))

(assert (=> bm!281460 m!4379851))

(declare-fun m!4384809 () Bool)

(assert (=> bm!281460 m!4384809))

(assert (=> bm!281461 m!4379857))

(assert (=> bm!281461 m!4379847))

(assert (=> bm!281461 m!4379853))

(assert (=> b!3827603 d!1137100))

(assert (=> b!3827603 d!1136922))

(assert (=> b!3827603 d!1136926))

(assert (=> b!3827603 d!1136654))

(declare-fun b!3830481 () Bool)

(declare-fun e!2365546 () Bool)

(declare-fun e!2365545 () Bool)

(assert (=> b!3830481 (= e!2365546 e!2365545)))

(declare-fun c!667948 () Bool)

(assert (=> b!3830481 (= c!667948 ((_ is EmptyLang!11129) (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun b!3830482 () Bool)

(declare-fun lt!1330136 () Bool)

(assert (=> b!3830482 (= e!2365545 (not lt!1330136))))

(declare-fun bm!281463 () Bool)

(declare-fun call!281468 () Bool)

(assert (=> bm!281463 (= call!281468 (isEmpty!23850 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun b!3830483 () Bool)

(declare-fun e!2365544 () Bool)

(assert (=> b!3830483 (= e!2365544 (= (head!8068 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (c!667179 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))))

(declare-fun b!3830484 () Bool)

(declare-fun e!2365547 () Bool)

(assert (=> b!3830484 (= e!2365547 (not (= (head!8068 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) (c!667179 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))))))))

(declare-fun b!3830485 () Bool)

(declare-fun res!1550753 () Bool)

(assert (=> b!3830485 (=> (not res!1550753) (not e!2365544))))

(assert (=> b!3830485 (= res!1550753 (not call!281468))))

(declare-fun b!3830486 () Bool)

(declare-fun e!2365542 () Bool)

(declare-fun e!2365543 () Bool)

(assert (=> b!3830486 (= e!2365542 e!2365543)))

(declare-fun res!1550750 () Bool)

(assert (=> b!3830486 (=> (not res!1550750) (not e!2365543))))

(assert (=> b!3830486 (= res!1550750 (not lt!1330136))))

(declare-fun d!1137102 () Bool)

(assert (=> d!1137102 e!2365546))

(declare-fun c!667947 () Bool)

(assert (=> d!1137102 (= c!667947 ((_ is EmptyExpr!11129) (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun e!2365541 () Bool)

(assert (=> d!1137102 (= lt!1330136 e!2365541)))

(declare-fun c!667946 () Bool)

(assert (=> d!1137102 (= c!667946 (isEmpty!23850 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))

(assert (=> d!1137102 (validRegex!5070 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))

(assert (=> d!1137102 (= (matchR!5322 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))) lt!1330136)))

(declare-fun b!3830487 () Bool)

(declare-fun res!1550752 () Bool)

(assert (=> b!3830487 (=> (not res!1550752) (not e!2365544))))

(assert (=> b!3830487 (= res!1550752 (isEmpty!23850 (tail!5795 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))))))))

(declare-fun b!3830488 () Bool)

(assert (=> b!3830488 (= e!2365541 (nullable!3871 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054))))))))

(declare-fun b!3830489 () Bool)

(declare-fun res!1550754 () Bool)

(assert (=> b!3830489 (=> res!1550754 e!2365547)))

(assert (=> b!3830489 (= res!1550754 (not (isEmpty!23850 (tail!5795 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054))))))))))

(declare-fun b!3830490 () Bool)

(assert (=> b!3830490 (= e!2365543 e!2365547)))

(declare-fun res!1550751 () Bool)

(assert (=> b!3830490 (=> res!1550751 e!2365547)))

(assert (=> b!3830490 (= res!1550751 call!281468)))

(declare-fun b!3830491 () Bool)

(declare-fun res!1550747 () Bool)

(assert (=> b!3830491 (=> res!1550747 e!2365542)))

(assert (=> b!3830491 (= res!1550747 (not ((_ is ElementMatch!11129) (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))))))

(assert (=> b!3830491 (= e!2365545 e!2365542)))

(declare-fun b!3830492 () Bool)

(assert (=> b!3830492 (= e!2365546 (= lt!1330136 call!281468))))

(declare-fun b!3830493 () Bool)

(declare-fun res!1550748 () Bool)

(assert (=> b!3830493 (=> res!1550748 e!2365542)))

(assert (=> b!3830493 (= res!1550748 e!2365544)))

(declare-fun res!1550749 () Bool)

(assert (=> b!3830493 (=> (not res!1550749) (not e!2365544))))

(assert (=> b!3830493 (= res!1550749 lt!1330136)))

(declare-fun b!3830494 () Bool)

(assert (=> b!3830494 (= e!2365541 (matchR!5322 (derivativeStep!3390 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))) (head!8068 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))))) (tail!5795 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1329054)))))))))

(assert (= (and d!1137102 c!667946) b!3830488))

(assert (= (and d!1137102 (not c!667946)) b!3830494))

(assert (= (and d!1137102 c!667947) b!3830492))

(assert (= (and d!1137102 (not c!667947)) b!3830481))

(assert (= (and b!3830481 c!667948) b!3830482))

(assert (= (and b!3830481 (not c!667948)) b!3830491))

(assert (= (and b!3830491 (not res!1550747)) b!3830493))

(assert (= (and b!3830493 res!1550749) b!3830485))

(assert (= (and b!3830485 res!1550753) b!3830487))

(assert (= (and b!3830487 res!1550752) b!3830483))

(assert (= (and b!3830493 (not res!1550748)) b!3830486))

(assert (= (and b!3830486 res!1550750) b!3830490))

(assert (= (and b!3830490 (not res!1550751)) b!3830489))

(assert (= (and b!3830489 (not res!1550754)) b!3830484))

(assert (= (or b!3830492 b!3830485 b!3830490) bm!281463))

(assert (=> b!3830494 m!4379939))

(declare-fun m!4384811 () Bool)

(assert (=> b!3830494 m!4384811))

(assert (=> b!3830494 m!4384811))

(declare-fun m!4384813 () Bool)

(assert (=> b!3830494 m!4384813))

(assert (=> b!3830494 m!4379939))

(declare-fun m!4384815 () Bool)

(assert (=> b!3830494 m!4384815))

(assert (=> b!3830494 m!4384813))

(assert (=> b!3830494 m!4384815))

(declare-fun m!4384817 () Bool)

(assert (=> b!3830494 m!4384817))

(assert (=> b!3830484 m!4379939))

(assert (=> b!3830484 m!4384811))

(assert (=> b!3830483 m!4379939))

(assert (=> b!3830483 m!4384811))

(assert (=> b!3830489 m!4379939))

(assert (=> b!3830489 m!4384815))

(assert (=> b!3830489 m!4384815))

(declare-fun m!4384819 () Bool)

(assert (=> b!3830489 m!4384819))

(declare-fun m!4384821 () Bool)

(assert (=> b!3830488 m!4384821))

(assert (=> b!3830487 m!4379939))

(assert (=> b!3830487 m!4384815))

(assert (=> b!3830487 m!4384815))

(assert (=> b!3830487 m!4384819))

(assert (=> d!1137102 m!4379939))

(declare-fun m!4384823 () Bool)

(assert (=> d!1137102 m!4384823))

(declare-fun m!4384825 () Bool)

(assert (=> d!1137102 m!4384825))

(assert (=> bm!281463 m!4379939))

(assert (=> bm!281463 m!4384823))

(assert (=> b!3827716 d!1137102))

(assert (=> b!3827716 d!1136740))

(assert (=> b!3827716 d!1136812))

(assert (=> b!3827716 d!1136814))

(declare-fun b!3830495 () Bool)

(declare-fun e!2365548 () List!40547)

(assert (=> b!3830495 (= e!2365548 (list!15059 (right!31605 (c!667180 input!678))))))

(declare-fun b!3830496 () Bool)

(assert (=> b!3830496 (= e!2365548 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 input!678)))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 input!678)))) (list!15059 (right!31605 (c!667180 input!678))))))))

(declare-fun b!3830497 () Bool)

(declare-fun res!1550756 () Bool)

(declare-fun e!2365549 () Bool)

(assert (=> b!3830497 (=> (not res!1550756) (not e!2365549))))

(declare-fun lt!1330137 () List!40547)

(assert (=> b!3830497 (= res!1550756 (= (size!30470 lt!1330137) (+ (size!30470 (list!15059 (left!31275 (c!667180 input!678)))) (size!30470 (list!15059 (right!31605 (c!667180 input!678)))))))))

(declare-fun b!3830498 () Bool)

(assert (=> b!3830498 (= e!2365549 (or (not (= (list!15059 (right!31605 (c!667180 input!678))) Nil!40423)) (= lt!1330137 (list!15059 (left!31275 (c!667180 input!678))))))))

(declare-fun d!1137104 () Bool)

(assert (=> d!1137104 e!2365549))

(declare-fun res!1550755 () Bool)

(assert (=> d!1137104 (=> (not res!1550755) (not e!2365549))))

(assert (=> d!1137104 (= res!1550755 (= (content!5990 lt!1330137) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 input!678)))) (content!5990 (list!15059 (right!31605 (c!667180 input!678)))))))))

(assert (=> d!1137104 (= lt!1330137 e!2365548)))

(declare-fun c!667949 () Bool)

(assert (=> d!1137104 (= c!667949 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 input!678)))))))

(assert (=> d!1137104 (= (++!10187 (list!15059 (left!31275 (c!667180 input!678))) (list!15059 (right!31605 (c!667180 input!678)))) lt!1330137)))

(assert (= (and d!1137104 c!667949) b!3830495))

(assert (= (and d!1137104 (not c!667949)) b!3830496))

(assert (= (and d!1137104 res!1550755) b!3830497))

(assert (= (and b!3830497 res!1550756) b!3830498))

(assert (=> b!3830496 m!4380835))

(declare-fun m!4384827 () Bool)

(assert (=> b!3830496 m!4384827))

(declare-fun m!4384829 () Bool)

(assert (=> b!3830497 m!4384829))

(assert (=> b!3830497 m!4380833))

(assert (=> b!3830497 m!4384231))

(assert (=> b!3830497 m!4380835))

(assert (=> b!3830497 m!4384233))

(declare-fun m!4384831 () Bool)

(assert (=> d!1137104 m!4384831))

(assert (=> d!1137104 m!4380833))

(declare-fun m!4384833 () Bool)

(assert (=> d!1137104 m!4384833))

(assert (=> d!1137104 m!4380835))

(declare-fun m!4384835 () Bool)

(assert (=> d!1137104 m!4384835))

(assert (=> b!3828347 d!1137104))

(declare-fun b!3830499 () Bool)

(declare-fun e!2365550 () List!40547)

(assert (=> b!3830499 (= e!2365550 Nil!40423)))

(declare-fun b!3830500 () Bool)

(declare-fun e!2365551 () List!40547)

(assert (=> b!3830500 (= e!2365550 e!2365551)))

(declare-fun c!667951 () Bool)

(assert (=> b!3830500 (= c!667951 ((_ is Leaf!19232) (left!31275 (c!667180 input!678))))))

(declare-fun b!3830501 () Bool)

(assert (=> b!3830501 (= e!2365551 (list!15063 (xs!15716 (left!31275 (c!667180 input!678)))))))

(declare-fun b!3830502 () Bool)

(assert (=> b!3830502 (= e!2365551 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 input!678)))) (list!15059 (right!31605 (left!31275 (c!667180 input!678))))))))

(declare-fun d!1137106 () Bool)

(declare-fun c!667950 () Bool)

(assert (=> d!1137106 (= c!667950 ((_ is Empty!12422) (left!31275 (c!667180 input!678))))))

(assert (=> d!1137106 (= (list!15059 (left!31275 (c!667180 input!678))) e!2365550)))

(assert (= (and d!1137106 c!667950) b!3830499))

(assert (= (and d!1137106 (not c!667950)) b!3830500))

(assert (= (and b!3830500 c!667951) b!3830501))

(assert (= (and b!3830500 (not c!667951)) b!3830502))

(assert (=> b!3830501 m!4384329))

(declare-fun m!4384837 () Bool)

(assert (=> b!3830502 m!4384837))

(declare-fun m!4384839 () Bool)

(assert (=> b!3830502 m!4384839))

(assert (=> b!3830502 m!4384837))

(assert (=> b!3830502 m!4384839))

(declare-fun m!4384841 () Bool)

(assert (=> b!3830502 m!4384841))

(assert (=> b!3828347 d!1137106))

(declare-fun b!3830503 () Bool)

(declare-fun e!2365552 () List!40547)

(assert (=> b!3830503 (= e!2365552 Nil!40423)))

(declare-fun b!3830504 () Bool)

(declare-fun e!2365553 () List!40547)

(assert (=> b!3830504 (= e!2365552 e!2365553)))

(declare-fun c!667953 () Bool)

(assert (=> b!3830504 (= c!667953 ((_ is Leaf!19232) (right!31605 (c!667180 input!678))))))

(declare-fun b!3830505 () Bool)

(assert (=> b!3830505 (= e!2365553 (list!15063 (xs!15716 (right!31605 (c!667180 input!678)))))))

(declare-fun b!3830506 () Bool)

(assert (=> b!3830506 (= e!2365553 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 input!678)))) (list!15059 (right!31605 (right!31605 (c!667180 input!678))))))))

(declare-fun d!1137108 () Bool)

(declare-fun c!667952 () Bool)

(assert (=> d!1137108 (= c!667952 ((_ is Empty!12422) (right!31605 (c!667180 input!678))))))

(assert (=> d!1137108 (= (list!15059 (right!31605 (c!667180 input!678))) e!2365552)))

(assert (= (and d!1137108 c!667952) b!3830503))

(assert (= (and d!1137108 (not c!667952)) b!3830504))

(assert (= (and b!3830504 c!667953) b!3830505))

(assert (= (and b!3830504 (not c!667953)) b!3830506))

(declare-fun m!4384843 () Bool)

(assert (=> b!3830505 m!4384843))

(declare-fun m!4384845 () Bool)

(assert (=> b!3830506 m!4384845))

(declare-fun m!4384847 () Bool)

(assert (=> b!3830506 m!4384847))

(assert (=> b!3830506 m!4384845))

(assert (=> b!3830506 m!4384847))

(declare-fun m!4384849 () Bool)

(assert (=> b!3830506 m!4384849))

(assert (=> b!3828347 d!1137108))

(declare-fun b!3830509 () Bool)

(declare-fun res!1550757 () Bool)

(declare-fun e!2365555 () Bool)

(assert (=> b!3830509 (=> (not res!1550757) (not e!2365555))))

(declare-fun lt!1330138 () List!40548)

(assert (=> b!3830509 (= res!1550757 (= (size!30476 lt!1330138) (+ (size!30476 (list!15060 (left!31276 (c!667181 acc!335)))) (size!30476 (list!15060 (right!31606 (c!667181 acc!335)))))))))

(declare-fun b!3830510 () Bool)

(assert (=> b!3830510 (= e!2365555 (or (not (= (list!15060 (right!31606 (c!667181 acc!335))) Nil!40424)) (= lt!1330138 (list!15060 (left!31276 (c!667181 acc!335))))))))

(declare-fun b!3830508 () Bool)

(declare-fun e!2365554 () List!40548)

(assert (=> b!3830508 (= e!2365554 (Cons!40424 (h!45844 (list!15060 (left!31276 (c!667181 acc!335)))) (++!10192 (t!308875 (list!15060 (left!31276 (c!667181 acc!335)))) (list!15060 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830507 () Bool)

(assert (=> b!3830507 (= e!2365554 (list!15060 (right!31606 (c!667181 acc!335))))))

(declare-fun d!1137110 () Bool)

(assert (=> d!1137110 e!2365555))

(declare-fun res!1550758 () Bool)

(assert (=> d!1137110 (=> (not res!1550758) (not e!2365555))))

(assert (=> d!1137110 (= res!1550758 (= (content!5992 lt!1330138) ((_ map or) (content!5992 (list!15060 (left!31276 (c!667181 acc!335)))) (content!5992 (list!15060 (right!31606 (c!667181 acc!335)))))))))

(assert (=> d!1137110 (= lt!1330138 e!2365554)))

(declare-fun c!667954 () Bool)

(assert (=> d!1137110 (= c!667954 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1137110 (= (++!10192 (list!15060 (left!31276 (c!667181 acc!335))) (list!15060 (right!31606 (c!667181 acc!335)))) lt!1330138)))

(assert (= (and d!1137110 c!667954) b!3830507))

(assert (= (and d!1137110 (not c!667954)) b!3830508))

(assert (= (and d!1137110 res!1550758) b!3830509))

(assert (= (and b!3830509 res!1550757) b!3830510))

(declare-fun m!4384851 () Bool)

(assert (=> b!3830509 m!4384851))

(assert (=> b!3830509 m!4379849))

(assert (=> b!3830509 m!4383699))

(assert (=> b!3830509 m!4379861))

(assert (=> b!3830509 m!4383701))

(assert (=> b!3830508 m!4379861))

(declare-fun m!4384853 () Bool)

(assert (=> b!3830508 m!4384853))

(declare-fun m!4384855 () Bool)

(assert (=> d!1137110 m!4384855))

(assert (=> d!1137110 m!4379849))

(declare-fun m!4384857 () Bool)

(assert (=> d!1137110 m!4384857))

(assert (=> d!1137110 m!4379861))

(declare-fun m!4384859 () Bool)

(assert (=> d!1137110 m!4384859))

(assert (=> b!3828050 d!1137110))

(assert (=> b!3828050 d!1136650))

(assert (=> b!3828050 d!1136652))

(declare-fun b!3830511 () Bool)

(declare-fun e!2365559 () Option!8648)

(declare-fun lt!1330143 () Option!8648)

(declare-fun lt!1330139 () Option!8648)

(assert (=> b!3830511 (= e!2365559 (ite (and ((_ is None!8647) lt!1330143) ((_ is None!8647) lt!1330139)) None!8647 (ite ((_ is None!8647) lt!1330139) lt!1330143 (ite ((_ is None!8647) lt!1330143) lt!1330139 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330143))) (size!30466 (_1!22946 (v!38923 lt!1330139)))) lt!1330143 lt!1330139)))))))

(declare-fun call!281469 () Option!8648)

(assert (=> b!3830511 (= lt!1330143 call!281469)))

(assert (=> b!3830511 (= lt!1330139 (maxPrefixZipperSequenceV2!613 thiss!11876 (t!308876 (t!308876 (t!308876 rules!1265))) input!678 totalInput!335))))

(declare-fun lt!1330145 () Option!8648)

(declare-fun b!3830512 () Bool)

(declare-fun e!2365561 () Bool)

(assert (=> b!3830512 (= e!2365561 (= (list!15055 (_2!22946 (get!13412 lt!1330145))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678))))))))

(declare-fun e!2365560 () Bool)

(declare-fun b!3830513 () Bool)

(assert (=> b!3830513 (= e!2365560 (= (list!15055 (_2!22946 (get!13412 lt!1330145))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678))))))))

(declare-fun b!3830514 () Bool)

(declare-fun e!2365558 () Bool)

(assert (=> b!3830514 (= e!2365558 e!2365561)))

(declare-fun res!1550760 () Bool)

(assert (=> b!3830514 (=> (not res!1550760) (not e!2365561))))

(assert (=> b!3830514 (= res!1550760 (= (_1!22946 (get!13412 lt!1330145)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678))))))))

(declare-fun b!3830515 () Bool)

(assert (=> b!3830515 (= e!2365559 call!281469)))

(declare-fun b!3830516 () Bool)

(declare-fun e!2365556 () Bool)

(assert (=> b!3830516 (= e!2365556 e!2365558)))

(declare-fun res!1550762 () Bool)

(assert (=> b!3830516 (=> res!1550762 e!2365558)))

(assert (=> b!3830516 (= res!1550762 (not (isDefined!6810 lt!1330145)))))

(declare-fun b!3830517 () Bool)

(declare-fun e!2365557 () Bool)

(assert (=> b!3830517 (= e!2365557 e!2365560)))

(declare-fun res!1550759 () Bool)

(assert (=> b!3830517 (=> (not res!1550759) (not e!2365560))))

(assert (=> b!3830517 (= res!1550759 (= (_1!22946 (get!13412 lt!1330145)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678))))))))

(declare-fun bm!281464 () Bool)

(assert (=> bm!281464 (= call!281469 (maxPrefixOneRuleZipperSequenceV2!251 thiss!11876 (h!45845 (t!308876 (t!308876 rules!1265))) input!678 totalInput!335))))

(declare-fun b!3830518 () Bool)

(declare-fun res!1550763 () Bool)

(assert (=> b!3830518 (=> (not res!1550763) (not e!2365556))))

(assert (=> b!3830518 (= res!1550763 e!2365557)))

(declare-fun res!1550764 () Bool)

(assert (=> b!3830518 (=> res!1550764 e!2365557)))

(assert (=> b!3830518 (= res!1550764 (not (isDefined!6810 lt!1330145)))))

(declare-fun d!1137112 () Bool)

(assert (=> d!1137112 e!2365556))

(declare-fun res!1550761 () Bool)

(assert (=> d!1137112 (=> (not res!1550761) (not e!2365556))))

(assert (=> d!1137112 (= res!1550761 (= (isDefined!6810 lt!1330145) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678)))))))

(assert (=> d!1137112 (= lt!1330145 e!2365559)))

(declare-fun c!667955 () Bool)

(assert (=> d!1137112 (= c!667955 (and ((_ is Cons!40425) (t!308876 (t!308876 rules!1265))) ((_ is Nil!40425) (t!308876 (t!308876 (t!308876 rules!1265))))))))

(declare-fun lt!1330142 () Unit!58192)

(declare-fun lt!1330140 () Unit!58192)

(assert (=> d!1137112 (= lt!1330142 lt!1330140)))

(declare-fun lt!1330141 () List!40547)

(declare-fun lt!1330144 () List!40547)

(assert (=> d!1137112 (isPrefix!3333 lt!1330141 lt!1330144)))

(assert (=> d!1137112 (= lt!1330140 (lemmaIsPrefixRefl!2118 lt!1330141 lt!1330144))))

(assert (=> d!1137112 (= lt!1330144 (list!15055 input!678))))

(assert (=> d!1137112 (= lt!1330141 (list!15055 input!678))))

(assert (=> d!1137112 (rulesValidInductive!2192 thiss!11876 (t!308876 (t!308876 rules!1265)))))

(assert (=> d!1137112 (= (maxPrefixZipperSequenceV2!613 thiss!11876 (t!308876 (t!308876 rules!1265)) input!678 totalInput!335) lt!1330145)))

(assert (= (and d!1137112 c!667955) b!3830515))

(assert (= (and d!1137112 (not c!667955)) b!3830511))

(assert (= (or b!3830515 b!3830511) bm!281464))

(assert (= (and d!1137112 res!1550761) b!3830518))

(assert (= (and b!3830518 (not res!1550764)) b!3830517))

(assert (= (and b!3830517 res!1550759) b!3830513))

(assert (= (and b!3830518 res!1550763) b!3830516))

(assert (= (and b!3830516 (not res!1550762)) b!3830514))

(assert (= (and b!3830514 res!1550760) b!3830512))

(assert (=> b!3830512 m!4379223))

(declare-fun m!4384861 () Bool)

(assert (=> b!3830512 m!4384861))

(declare-fun m!4384863 () Bool)

(assert (=> b!3830512 m!4384863))

(assert (=> b!3830512 m!4384861))

(declare-fun m!4384865 () Bool)

(assert (=> b!3830512 m!4384865))

(declare-fun m!4384867 () Bool)

(assert (=> b!3830512 m!4384867))

(assert (=> b!3830512 m!4379223))

(declare-fun m!4384869 () Bool)

(assert (=> b!3830518 m!4384869))

(declare-fun m!4384871 () Bool)

(assert (=> b!3830511 m!4384871))

(declare-fun m!4384873 () Bool)

(assert (=> d!1137112 m!4384873))

(assert (=> d!1137112 m!4383959))

(declare-fun m!4384875 () Bool)

(assert (=> d!1137112 m!4384875))

(declare-fun m!4384877 () Bool)

(assert (=> d!1137112 m!4384877))

(assert (=> d!1137112 m!4379223))

(assert (=> d!1137112 m!4384869))

(assert (=> d!1137112 m!4379223))

(assert (=> d!1137112 m!4383959))

(declare-fun m!4384879 () Bool)

(assert (=> d!1137112 m!4384879))

(assert (=> b!3830513 m!4379223))

(assert (=> b!3830513 m!4383959))

(assert (=> b!3830513 m!4384863))

(assert (=> b!3830513 m!4383959))

(declare-fun m!4384881 () Bool)

(assert (=> b!3830513 m!4384881))

(assert (=> b!3830513 m!4384867))

(assert (=> b!3830513 m!4379223))

(declare-fun m!4384883 () Bool)

(assert (=> bm!281464 m!4384883))

(assert (=> b!3830516 m!4384869))

(assert (=> b!3830514 m!4384863))

(assert (=> b!3830514 m!4379223))

(assert (=> b!3830514 m!4379223))

(assert (=> b!3830514 m!4384861))

(assert (=> b!3830514 m!4384861))

(assert (=> b!3830514 m!4384865))

(assert (=> b!3830517 m!4384863))

(assert (=> b!3830517 m!4379223))

(assert (=> b!3830517 m!4379223))

(assert (=> b!3830517 m!4383959))

(assert (=> b!3830517 m!4383959))

(assert (=> b!3830517 m!4384881))

(assert (=> b!3828414 d!1137112))

(declare-fun d!1137114 () Bool)

(declare-fun lt!1330146 () Bool)

(assert (=> d!1137114 (= lt!1330146 (isEmpty!23858 (list!15056 (_1!22945 lt!1329332))))))

(assert (=> d!1137114 (= lt!1330146 (isEmpty!23863 (c!667181 (_1!22945 lt!1329332))))))

(assert (=> d!1137114 (= (isEmpty!23852 (_1!22945 lt!1329332)) lt!1330146)))

(declare-fun bs!582206 () Bool)

(assert (= bs!582206 d!1137114))

(assert (=> bs!582206 m!4381069))

(assert (=> bs!582206 m!4381069))

(declare-fun m!4384885 () Bool)

(assert (=> bs!582206 m!4384885))

(declare-fun m!4384887 () Bool)

(assert (=> bs!582206 m!4384887))

(assert (=> b!3828516 d!1137114))

(declare-fun d!1137116 () Bool)

(assert (=> d!1137116 (= (isEmpty!23862 lt!1328935) (not ((_ is Some!8647) lt!1328935)))))

(assert (=> d!1135644 d!1137116))

(declare-fun d!1137118 () Bool)

(assert (=> d!1137118 (= (list!15056 lt!1329199) (list!15060 (c!667181 lt!1329199)))))

(declare-fun bs!582207 () Bool)

(assert (= bs!582207 d!1137118))

(declare-fun m!4384889 () Bool)

(assert (=> bs!582207 m!4384889))

(assert (=> b!3828017 d!1137118))

(declare-fun d!1137120 () Bool)

(assert (=> d!1137120 (= (list!15056 (_1!22945 lt!1328955)) (list!15060 (c!667181 (_1!22945 lt!1328955))))))

(declare-fun bs!582208 () Bool)

(assert (= bs!582208 d!1137120))

(assert (=> bs!582208 m!4383913))

(assert (=> b!3828017 d!1137120))

(declare-fun d!1137122 () Bool)

(assert (=> d!1137122 (= (isEmpty!23858 (list!15056 (_1!22945 lt!1328956))) ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328956))))))

(assert (=> d!1135774 d!1137122))

(assert (=> d!1135774 d!1135626))

(declare-fun d!1137124 () Bool)

(declare-fun lt!1330147 () Bool)

(assert (=> d!1137124 (= lt!1330147 (isEmpty!23858 (list!15060 (c!667181 (_1!22945 lt!1328956)))))))

(assert (=> d!1137124 (= lt!1330147 (= (size!30477 (c!667181 (_1!22945 lt!1328956))) 0))))

(assert (=> d!1137124 (= (isEmpty!23863 (c!667181 (_1!22945 lt!1328956))) lt!1330147)))

(declare-fun bs!582209 () Bool)

(assert (= bs!582209 d!1137124))

(assert (=> bs!582209 m!4380315))

(assert (=> bs!582209 m!4380315))

(declare-fun m!4384891 () Bool)

(assert (=> bs!582209 m!4384891))

(assert (=> bs!582209 m!4380985))

(assert (=> d!1135774 d!1137124))

(assert (=> b!3828114 d!1136996))

(assert (=> b!3828114 d!1136998))

(declare-fun d!1137126 () Bool)

(declare-fun lt!1330148 () Bool)

(assert (=> d!1137126 (= lt!1330148 (isEmpty!23850 (list!15059 (right!31605 (c!667180 treated!13)))))))

(assert (=> d!1137126 (= lt!1330148 (= (size!30478 (right!31605 (c!667180 treated!13))) 0))))

(assert (=> d!1137126 (= (isEmpty!23861 (right!31605 (c!667180 treated!13))) lt!1330148)))

(declare-fun bs!582210 () Bool)

(assert (= bs!582210 d!1137126))

(assert (=> bs!582210 m!4380899))

(assert (=> bs!582210 m!4380899))

(declare-fun m!4384893 () Bool)

(assert (=> bs!582210 m!4384893))

(assert (=> bs!582210 m!4381041))

(assert (=> b!3828065 d!1137126))

(declare-fun d!1137128 () Bool)

(declare-fun e!2365562 () Bool)

(assert (=> d!1137128 e!2365562))

(declare-fun res!1550765 () Bool)

(assert (=> d!1137128 (=> (not res!1550765) (not e!2365562))))

(assert (=> d!1137128 (= res!1550765 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1329200)) (_1!22946 (v!38923 lt!1329202)))))))

(declare-fun lt!1330149 () BalanceConc!24440)

(assert (=> d!1137128 (= lt!1330149 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1329200)) (_1!22946 (v!38923 lt!1329202)))))))

(assert (=> d!1137128 (= (prepend!1380 (_1!22945 lt!1329200) (_1!22946 (v!38923 lt!1329202))) lt!1330149)))

(declare-fun b!3830519 () Bool)

(assert (=> b!3830519 (= e!2365562 (= (list!15056 lt!1330149) (Cons!40424 (_1!22946 (v!38923 lt!1329202)) (list!15056 (_1!22945 lt!1329200)))))))

(assert (= (and d!1137128 res!1550765) b!3830519))

(declare-fun m!4384895 () Bool)

(assert (=> d!1137128 m!4384895))

(assert (=> d!1137128 m!4384895))

(declare-fun m!4384897 () Bool)

(assert (=> d!1137128 m!4384897))

(declare-fun m!4384899 () Bool)

(assert (=> b!3830519 m!4384899))

(declare-fun m!4384901 () Bool)

(assert (=> b!3830519 m!4384901))

(assert (=> b!3828020 d!1137128))

(declare-fun b!3830520 () Bool)

(declare-fun e!2365563 () Bool)

(declare-fun lt!1330151 () tuple2!39622)

(assert (=> b!3830520 (= e!2365563 (= (list!15055 (_2!22945 lt!1330151)) (list!15055 (_2!22946 (v!38923 lt!1329202)))))))

(declare-fun d!1137130 () Bool)

(declare-fun e!2365566 () Bool)

(assert (=> d!1137130 e!2365566))

(declare-fun res!1550768 () Bool)

(assert (=> d!1137130 (=> (not res!1550768) (not e!2365566))))

(assert (=> d!1137130 (= res!1550768 e!2365563)))

(declare-fun c!667957 () Bool)

(assert (=> d!1137130 (= c!667957 (> (size!30471 (_1!22945 lt!1330151)) 0))))

(declare-fun e!2365565 () tuple2!39622)

(assert (=> d!1137130 (= lt!1330151 e!2365565)))

(declare-fun c!667956 () Bool)

(declare-fun lt!1330152 () Option!8648)

(assert (=> d!1137130 (= c!667956 ((_ is Some!8647) lt!1330152))))

(assert (=> d!1137130 (= lt!1330152 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329202))))))

(assert (=> d!1137130 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329202))) lt!1330151)))

(declare-fun b!3830521 () Bool)

(declare-fun e!2365564 () Bool)

(assert (=> b!3830521 (= e!2365564 (not (isEmpty!23852 (_1!22945 lt!1330151))))))

(declare-fun b!3830522 () Bool)

(declare-fun lt!1330150 () tuple2!39622)

(assert (=> b!3830522 (= e!2365565 (tuple2!39623 (prepend!1380 (_1!22945 lt!1330150) (_1!22946 (v!38923 lt!1330152))) (_2!22945 lt!1330150)))))

(assert (=> b!3830522 (= lt!1330150 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1330152))))))

(declare-fun b!3830523 () Bool)

(assert (=> b!3830523 (= e!2365565 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1329202))))))

(declare-fun b!3830524 () Bool)

(assert (=> b!3830524 (= e!2365563 e!2365564)))

(declare-fun res!1550766 () Bool)

(assert (=> b!3830524 (= res!1550766 (< (size!30472 (_2!22945 lt!1330151)) (size!30472 (_2!22946 (v!38923 lt!1329202)))))))

(assert (=> b!3830524 (=> (not res!1550766) (not e!2365564))))

(declare-fun b!3830525 () Bool)

(assert (=> b!3830525 (= e!2365566 (= (list!15055 (_2!22945 lt!1330151)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329202)))))))))

(declare-fun b!3830526 () Bool)

(declare-fun res!1550767 () Bool)

(assert (=> b!3830526 (=> (not res!1550767) (not e!2365566))))

(assert (=> b!3830526 (= res!1550767 (= (list!15056 (_1!22945 lt!1330151)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329202)))))))))

(assert (= (and d!1137130 c!667956) b!3830522))

(assert (= (and d!1137130 (not c!667956)) b!3830523))

(assert (= (and d!1137130 c!667957) b!3830524))

(assert (= (and d!1137130 (not c!667957)) b!3830520))

(assert (= (and b!3830524 res!1550766) b!3830521))

(assert (= (and d!1137130 res!1550768) b!3830526))

(assert (= (and b!3830526 res!1550767) b!3830525))

(declare-fun m!4384903 () Bool)

(assert (=> d!1137130 m!4384903))

(declare-fun m!4384905 () Bool)

(assert (=> d!1137130 m!4384905))

(declare-fun m!4384907 () Bool)

(assert (=> b!3830520 m!4384907))

(declare-fun m!4384909 () Bool)

(assert (=> b!3830520 m!4384909))

(declare-fun m!4384911 () Bool)

(assert (=> b!3830522 m!4384911))

(declare-fun m!4384913 () Bool)

(assert (=> b!3830522 m!4384913))

(declare-fun m!4384915 () Bool)

(assert (=> b!3830524 m!4384915))

(declare-fun m!4384917 () Bool)

(assert (=> b!3830524 m!4384917))

(declare-fun m!4384919 () Bool)

(assert (=> b!3830526 m!4384919))

(assert (=> b!3830526 m!4384909))

(assert (=> b!3830526 m!4384909))

(declare-fun m!4384921 () Bool)

(assert (=> b!3830526 m!4384921))

(assert (=> b!3830525 m!4384907))

(assert (=> b!3830525 m!4384909))

(assert (=> b!3830525 m!4384909))

(assert (=> b!3830525 m!4384921))

(declare-fun m!4384923 () Bool)

(assert (=> b!3830521 m!4384923))

(assert (=> b!3828020 d!1137130))

(declare-fun d!1137132 () Bool)

(declare-fun lt!1330153 () Int)

(assert (=> d!1137132 (= lt!1330153 (size!30470 (list!15059 (left!31275 (c!667180 totalInput!335)))))))

(assert (=> d!1137132 (= lt!1330153 (ite ((_ is Empty!12422) (left!31275 (c!667180 totalInput!335))) 0 (ite ((_ is Leaf!19232) (left!31275 (c!667180 totalInput!335))) (csize!25075 (left!31275 (c!667180 totalInput!335))) (csize!25074 (left!31275 (c!667180 totalInput!335))))))))

(assert (=> d!1137132 (= (size!30478 (left!31275 (c!667180 totalInput!335))) lt!1330153)))

(declare-fun bs!582211 () Bool)

(assert (= bs!582211 d!1137132))

(assert (=> bs!582211 m!4381015))

(assert (=> bs!582211 m!4381015))

(declare-fun m!4384925 () Bool)

(assert (=> bs!582211 m!4384925))

(assert (=> d!1135696 d!1137132))

(declare-fun d!1137134 () Bool)

(declare-fun lt!1330154 () Int)

(assert (=> d!1137134 (= lt!1330154 (size!30470 (list!15059 (right!31605 (c!667180 totalInput!335)))))))

(assert (=> d!1137134 (= lt!1330154 (ite ((_ is Empty!12422) (right!31605 (c!667180 totalInput!335))) 0 (ite ((_ is Leaf!19232) (right!31605 (c!667180 totalInput!335))) (csize!25075 (right!31605 (c!667180 totalInput!335))) (csize!25074 (right!31605 (c!667180 totalInput!335))))))))

(assert (=> d!1137134 (= (size!30478 (right!31605 (c!667180 totalInput!335))) lt!1330154)))

(declare-fun bs!582212 () Bool)

(assert (= bs!582212 d!1137134))

(assert (=> bs!582212 m!4381017))

(assert (=> bs!582212 m!4381017))

(declare-fun m!4384927 () Bool)

(assert (=> bs!582212 m!4384927))

(assert (=> d!1135696 d!1137134))

(declare-fun lt!1330159 () Option!8650)

(declare-fun d!1137136 () Bool)

(assert (=> d!1137136 (= lt!1330159 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 totalInput!335)))))

(declare-fun e!2365567 () Option!8650)

(assert (=> d!1137136 (= lt!1330159 e!2365567)))

(declare-fun c!667958 () Bool)

(assert (=> d!1137136 (= c!667958 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330158 () Unit!58192)

(declare-fun lt!1330155 () Unit!58192)

(assert (=> d!1137136 (= lt!1330158 lt!1330155)))

(assert (=> d!1137136 (isPrefix!3333 (list!15055 totalInput!335) (list!15055 totalInput!335))))

(assert (=> d!1137136 (= lt!1330155 (lemmaIsPrefixRefl!2118 (list!15055 totalInput!335) (list!15055 totalInput!335)))))

(assert (=> d!1137136 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1137136 (= (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335)) lt!1330159)))

(declare-fun call!281470 () Option!8650)

(declare-fun bm!281465 () Bool)

(assert (=> bm!281465 (= call!281470 (maxPrefixOneRuleZipper!219 thiss!11876 (h!45845 rules!1265) (list!15055 totalInput!335)))))

(declare-fun b!3830527 () Bool)

(assert (=> b!3830527 (= e!2365567 call!281470)))

(declare-fun b!3830528 () Bool)

(declare-fun lt!1330157 () Option!8650)

(declare-fun lt!1330156 () Option!8650)

(assert (=> b!3830528 (= e!2365567 (ite (and ((_ is None!8649) lt!1330157) ((_ is None!8649) lt!1330156)) None!8649 (ite ((_ is None!8649) lt!1330156) lt!1330157 (ite ((_ is None!8649) lt!1330157) lt!1330156 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1330157))) (size!30466 (_1!22949 (v!38925 lt!1330156)))) lt!1330157 lt!1330156)))))))

(assert (=> b!3830528 (= lt!1330157 call!281470)))

(assert (=> b!3830528 (= lt!1330156 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 totalInput!335)))))

(assert (= (and d!1137136 c!667958) b!3830527))

(assert (= (and d!1137136 (not c!667958)) b!3830528))

(assert (= (or b!3830527 b!3830528) bm!281465))

(assert (=> d!1137136 m!4379221))

(assert (=> d!1137136 m!4379995))

(assert (=> d!1137136 m!4379221))

(assert (=> d!1137136 m!4379221))

(assert (=> d!1137136 m!4384387))

(assert (=> d!1137136 m!4379221))

(assert (=> d!1137136 m!4379221))

(assert (=> d!1137136 m!4384389))

(assert (=> d!1137136 m!4379483))

(assert (=> bm!281465 m!4379221))

(declare-fun m!4384929 () Bool)

(assert (=> bm!281465 m!4384929))

(assert (=> b!3830528 m!4379221))

(assert (=> b!3830528 m!4384653))

(assert (=> b!3828342 d!1137136))

(declare-fun d!1137138 () Bool)

(assert (=> d!1137138 (= (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335))) (v!38925 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335))))))

(assert (=> b!3828342 d!1137138))

(assert (=> b!3828342 d!1136928))

(declare-fun d!1137140 () Bool)

(assert (=> d!1137140 (= (list!15055 (_2!22946 (get!13412 lt!1329268))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1329268)))))))

(declare-fun bs!582213 () Bool)

(assert (= bs!582213 d!1137140))

(declare-fun m!4384931 () Bool)

(assert (=> bs!582213 m!4384931))

(assert (=> b!3828342 d!1137140))

(assert (=> b!3828342 d!1135434))

(assert (=> d!1135804 d!1135806))

(declare-fun d!1137142 () Bool)

(assert (=> d!1137142 (isPrefix!3333 lt!1328931 lt!1328934)))

(assert (=> d!1137142 true))

(declare-fun _$45!1905 () Unit!58192)

(assert (=> d!1137142 (= (choose!22530 lt!1328931 lt!1328934) _$45!1905)))

(declare-fun bs!582214 () Bool)

(assert (= bs!582214 d!1137142))

(assert (=> bs!582214 m!4379489))

(assert (=> d!1135804 d!1137142))

(declare-fun d!1137144 () Bool)

(declare-fun lt!1330160 () Int)

(assert (=> d!1137144 (>= lt!1330160 0)))

(declare-fun e!2365568 () Int)

(assert (=> d!1137144 (= lt!1330160 e!2365568)))

(declare-fun c!667959 () Bool)

(assert (=> d!1137144 (= c!667959 ((_ is Nil!40423) (list!15063 (xs!15716 (c!667180 input!678)))))))

(assert (=> d!1137144 (= (size!30470 (list!15063 (xs!15716 (c!667180 input!678)))) lt!1330160)))

(declare-fun b!3830529 () Bool)

(assert (=> b!3830529 (= e!2365568 0)))

(declare-fun b!3830530 () Bool)

(assert (=> b!3830530 (= e!2365568 (+ 1 (size!30470 (t!308874 (list!15063 (xs!15716 (c!667180 input!678)))))))))

(assert (= (and d!1137144 c!667959) b!3830529))

(assert (= (and d!1137144 (not c!667959)) b!3830530))

(declare-fun m!4384933 () Bool)

(assert (=> b!3830530 m!4384933))

(assert (=> d!1135648 d!1137144))

(assert (=> d!1135648 d!1137096))

(declare-fun d!1137146 () Bool)

(declare-fun lt!1330161 () Bool)

(assert (=> d!1137146 (= lt!1330161 (isEmpty!23858 (list!15056 (_1!22945 lt!1329197))))))

(assert (=> d!1137146 (= lt!1330161 (isEmpty!23863 (c!667181 (_1!22945 lt!1329197))))))

(assert (=> d!1137146 (= (isEmpty!23852 (_1!22945 lt!1329197)) lt!1330161)))

(declare-fun bs!582215 () Bool)

(assert (= bs!582215 d!1137146))

(assert (=> bs!582215 m!4380349))

(assert (=> bs!582215 m!4380349))

(declare-fun m!4384935 () Bool)

(assert (=> bs!582215 m!4384935))

(declare-fun m!4384937 () Bool)

(assert (=> bs!582215 m!4384937))

(assert (=> b!3828011 d!1137146))

(declare-fun d!1137148 () Bool)

(declare-fun res!1550769 () Bool)

(declare-fun e!2365569 () Bool)

(assert (=> d!1137148 (=> (not res!1550769) (not e!2365569))))

(assert (=> d!1137148 (= res!1550769 (<= (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 totalInput!335))))) 512))))

(assert (=> d!1137148 (= (inv!54498 (right!31605 (c!667180 totalInput!335))) e!2365569)))

(declare-fun b!3830531 () Bool)

(declare-fun res!1550770 () Bool)

(assert (=> b!3830531 (=> (not res!1550770) (not e!2365569))))

(assert (=> b!3830531 (= res!1550770 (= (csize!25075 (right!31605 (c!667180 totalInput!335))) (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 totalInput!335)))))))))

(declare-fun b!3830532 () Bool)

(assert (=> b!3830532 (= e!2365569 (and (> (csize!25075 (right!31605 (c!667180 totalInput!335))) 0) (<= (csize!25075 (right!31605 (c!667180 totalInput!335))) 512)))))

(assert (= (and d!1137148 res!1550769) b!3830531))

(assert (= (and b!3830531 res!1550770) b!3830532))

(declare-fun m!4384939 () Bool)

(assert (=> d!1137148 m!4384939))

(assert (=> d!1137148 m!4384939))

(declare-fun m!4384941 () Bool)

(assert (=> d!1137148 m!4384941))

(assert (=> b!3830531 m!4384939))

(assert (=> b!3830531 m!4384939))

(assert (=> b!3830531 m!4384941))

(assert (=> b!3828112 d!1137148))

(declare-fun b!3830536 () Bool)

(declare-fun e!2365570 () Conc!12423)

(assert (=> b!3830536 (= e!2365570 (Node!12423 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043)))) (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))) (+ (size!30477 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043))))) (size!30477 (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))))) (+ (max!0 (height!1816 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043))))) (height!1816 (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))))) 1)))))

(declare-fun d!1137150 () Bool)

(declare-fun lt!1330162 () Conc!12423)

(assert (=> d!1137150 (= (list!15060 lt!1330162) (++!10192 (list!15060 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043))))) (list!15060 (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))))))))

(declare-fun e!2365571 () Conc!12423)

(assert (=> d!1137150 (= lt!1330162 e!2365571)))

(declare-fun c!667960 () Bool)

(assert (=> d!1137150 (= c!667960 (= (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043)))) Empty!12423))))

(assert (=> d!1137150 (= (<>!360 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043)))) (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222)))) lt!1330162)))

(declare-fun b!3830533 () Bool)

(assert (=> b!3830533 (= e!2365571 (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))))))

(declare-fun b!3830535 () Bool)

(assert (=> b!3830535 (= e!2365570 (ite c!667309 (c!667181 acc!335) (ite c!667310 (ite c!667307 (left!31276 (c!667181 acc!335)) (ite c!667308 (left!31276 (right!31606 (c!667181 acc!335))) (left!31276 (c!667181 acc!335)))) (ite c!667311 call!281226 (ite c!667306 call!281222 lt!1329043)))))))

(declare-fun b!3830534 () Bool)

(assert (=> b!3830534 (= e!2365571 e!2365570)))

(declare-fun c!667961 () Bool)

(assert (=> b!3830534 (= c!667961 (= (ite c!667309 (c!667181 (_1!22945 lt!1328861)) (ite c!667310 (ite c!667307 call!281223 (ite c!667308 lt!1329042 (left!31276 (right!31606 (c!667181 acc!335))))) (ite (or c!667311 c!667306) (right!31606 (c!667181 (_1!22945 lt!1328861))) call!281222))) Empty!12423))))

(assert (= (and d!1137150 c!667960) b!3830533))

(assert (= (and d!1137150 (not c!667960)) b!3830534))

(assert (= (and b!3830534 c!667961) b!3830535))

(assert (= (and b!3830534 (not c!667961)) b!3830536))

(declare-fun m!4384943 () Bool)

(assert (=> b!3830536 m!4384943))

(declare-fun m!4384945 () Bool)

(assert (=> b!3830536 m!4384945))

(declare-fun m!4384947 () Bool)

(assert (=> b!3830536 m!4384947))

(declare-fun m!4384949 () Bool)

(assert (=> b!3830536 m!4384949))

(declare-fun m!4384951 () Bool)

(assert (=> b!3830536 m!4384951))

(assert (=> b!3830536 m!4384947))

(assert (=> b!3830536 m!4384949))

(declare-fun m!4384953 () Bool)

(assert (=> d!1137150 m!4384953))

(declare-fun m!4384955 () Bool)

(assert (=> d!1137150 m!4384955))

(declare-fun m!4384957 () Bool)

(assert (=> d!1137150 m!4384957))

(assert (=> d!1137150 m!4384955))

(assert (=> d!1137150 m!4384957))

(declare-fun m!4384959 () Bool)

(assert (=> d!1137150 m!4384959))

(assert (=> bm!281224 d!1137150))

(declare-fun d!1137152 () Bool)

(assert (=> d!1137152 (= (isEmpty!23857 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678))) (not ((_ is Some!8649) (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 input!678)))))))

(assert (=> d!1135808 d!1137152))

(assert (=> bm!281293 d!1135812))

(assert (=> b!3827408 d!1135654))

(assert (=> b!3827408 d!1135656))

(declare-fun d!1137154 () Bool)

(assert (=> d!1137154 (isPrefix!3333 lt!1329320 lt!1329324)))

(declare-fun lt!1330163 () Unit!58192)

(assert (=> d!1137154 (= lt!1330163 (choose!22530 lt!1329320 lt!1329324))))

(assert (=> d!1137154 (= (lemmaIsPrefixRefl!2118 lt!1329320 lt!1329324) lt!1330163)))

(declare-fun bs!582216 () Bool)

(assert (= bs!582216 d!1137154))

(assert (=> bs!582216 m!4380991))

(declare-fun m!4384961 () Bool)

(assert (=> bs!582216 m!4384961))

(assert (=> d!1135820 d!1137154))

(assert (=> d!1135820 d!1135802))

(assert (=> d!1135820 d!1135770))

(declare-fun b!3830539 () Bool)

(declare-fun e!2365572 () Bool)

(assert (=> b!3830539 (= e!2365572 (isPrefix!3333 (tail!5795 lt!1329320) (tail!5795 lt!1329324)))))

(declare-fun b!3830537 () Bool)

(declare-fun e!2365574 () Bool)

(assert (=> b!3830537 (= e!2365574 e!2365572)))

(declare-fun res!1550772 () Bool)

(assert (=> b!3830537 (=> (not res!1550772) (not e!2365572))))

(assert (=> b!3830537 (= res!1550772 (not ((_ is Nil!40423) lt!1329324)))))

(declare-fun b!3830538 () Bool)

(declare-fun res!1550774 () Bool)

(assert (=> b!3830538 (=> (not res!1550774) (not e!2365572))))

(assert (=> b!3830538 (= res!1550774 (= (head!8068 lt!1329320) (head!8068 lt!1329324)))))

(declare-fun d!1137156 () Bool)

(declare-fun e!2365573 () Bool)

(assert (=> d!1137156 e!2365573))

(declare-fun res!1550771 () Bool)

(assert (=> d!1137156 (=> res!1550771 e!2365573)))

(declare-fun lt!1330164 () Bool)

(assert (=> d!1137156 (= res!1550771 (not lt!1330164))))

(assert (=> d!1137156 (= lt!1330164 e!2365574)))

(declare-fun res!1550773 () Bool)

(assert (=> d!1137156 (=> res!1550773 e!2365574)))

(assert (=> d!1137156 (= res!1550773 ((_ is Nil!40423) lt!1329320))))

(assert (=> d!1137156 (= (isPrefix!3333 lt!1329320 lt!1329324) lt!1330164)))

(declare-fun b!3830540 () Bool)

(assert (=> b!3830540 (= e!2365573 (>= (size!30470 lt!1329324) (size!30470 lt!1329320)))))

(assert (= (and d!1137156 (not res!1550773)) b!3830537))

(assert (= (and b!3830537 res!1550772) b!3830538))

(assert (= (and b!3830538 res!1550774) b!3830539))

(assert (= (and d!1137156 (not res!1550771)) b!3830540))

(declare-fun m!4384963 () Bool)

(assert (=> b!3830539 m!4384963))

(declare-fun m!4384965 () Bool)

(assert (=> b!3830539 m!4384965))

(assert (=> b!3830539 m!4384963))

(assert (=> b!3830539 m!4384965))

(declare-fun m!4384967 () Bool)

(assert (=> b!3830539 m!4384967))

(declare-fun m!4384969 () Bool)

(assert (=> b!3830538 m!4384969))

(declare-fun m!4384971 () Bool)

(assert (=> b!3830538 m!4384971))

(declare-fun m!4384973 () Bool)

(assert (=> b!3830540 m!4384973))

(declare-fun m!4384975 () Bool)

(assert (=> b!3830540 m!4384975))

(assert (=> d!1135820 d!1137156))

(assert (=> d!1135820 d!1135436))

(assert (=> d!1135820 d!1136990))

(assert (=> d!1135820 d!1135808))

(declare-fun d!1137158 () Bool)

(declare-fun res!1550775 () Bool)

(declare-fun e!2365575 () Bool)

(assert (=> d!1137158 (=> (not res!1550775) (not e!2365575))))

(assert (=> d!1137158 (= res!1550775 (= (csize!25074 (right!31605 (c!667180 input!678))) (+ (size!30478 (left!31275 (right!31605 (c!667180 input!678)))) (size!30478 (right!31605 (right!31605 (c!667180 input!678)))))))))

(assert (=> d!1137158 (= (inv!54497 (right!31605 (c!667180 input!678))) e!2365575)))

(declare-fun b!3830541 () Bool)

(declare-fun res!1550776 () Bool)

(assert (=> b!3830541 (=> (not res!1550776) (not e!2365575))))

(assert (=> b!3830541 (= res!1550776 (and (not (= (left!31275 (right!31605 (c!667180 input!678))) Empty!12422)) (not (= (right!31605 (right!31605 (c!667180 input!678))) Empty!12422))))))

(declare-fun b!3830542 () Bool)

(declare-fun res!1550777 () Bool)

(assert (=> b!3830542 (=> (not res!1550777) (not e!2365575))))

(assert (=> b!3830542 (= res!1550777 (= (cheight!12633 (right!31605 (c!667180 input!678))) (+ (max!0 (height!1818 (left!31275 (right!31605 (c!667180 input!678)))) (height!1818 (right!31605 (right!31605 (c!667180 input!678))))) 1)))))

(declare-fun b!3830543 () Bool)

(assert (=> b!3830543 (= e!2365575 (<= 0 (cheight!12633 (right!31605 (c!667180 input!678)))))))

(assert (= (and d!1137158 res!1550775) b!3830541))

(assert (= (and b!3830541 res!1550776) b!3830542))

(assert (= (and b!3830542 res!1550777) b!3830543))

(declare-fun m!4384977 () Bool)

(assert (=> d!1137158 m!4384977))

(declare-fun m!4384979 () Bool)

(assert (=> d!1137158 m!4384979))

(assert (=> b!3830542 m!4384625))

(assert (=> b!3830542 m!4384627))

(assert (=> b!3830542 m!4384625))

(assert (=> b!3830542 m!4384627))

(declare-fun m!4384981 () Bool)

(assert (=> b!3830542 m!4384981))

(assert (=> b!3828548 d!1137158))

(declare-fun b!3830546 () Bool)

(declare-fun e!2365576 () Bool)

(assert (=> b!3830546 (= e!2365576 (isPrefix!3333 (tail!5795 (tail!5795 lt!1328931)) (tail!5795 (tail!5795 lt!1328934))))))

(declare-fun b!3830544 () Bool)

(declare-fun e!2365578 () Bool)

(assert (=> b!3830544 (= e!2365578 e!2365576)))

(declare-fun res!1550779 () Bool)

(assert (=> b!3830544 (=> (not res!1550779) (not e!2365576))))

(assert (=> b!3830544 (= res!1550779 (not ((_ is Nil!40423) (tail!5795 lt!1328934))))))

(declare-fun b!3830545 () Bool)

(declare-fun res!1550781 () Bool)

(assert (=> b!3830545 (=> (not res!1550781) (not e!2365576))))

(assert (=> b!3830545 (= res!1550781 (= (head!8068 (tail!5795 lt!1328931)) (head!8068 (tail!5795 lt!1328934))))))

(declare-fun d!1137160 () Bool)

(declare-fun e!2365577 () Bool)

(assert (=> d!1137160 e!2365577))

(declare-fun res!1550778 () Bool)

(assert (=> d!1137160 (=> res!1550778 e!2365577)))

(declare-fun lt!1330165 () Bool)

(assert (=> d!1137160 (= res!1550778 (not lt!1330165))))

(assert (=> d!1137160 (= lt!1330165 e!2365578)))

(declare-fun res!1550780 () Bool)

(assert (=> d!1137160 (=> res!1550780 e!2365578)))

(assert (=> d!1137160 (= res!1550780 ((_ is Nil!40423) (tail!5795 lt!1328931)))))

(assert (=> d!1137160 (= (isPrefix!3333 (tail!5795 lt!1328931) (tail!5795 lt!1328934)) lt!1330165)))

(declare-fun b!3830547 () Bool)

(assert (=> b!3830547 (= e!2365577 (>= (size!30470 (tail!5795 lt!1328934)) (size!30470 (tail!5795 lt!1328931))))))

(assert (= (and d!1137160 (not res!1550780)) b!3830544))

(assert (= (and b!3830544 res!1550779) b!3830545))

(assert (= (and b!3830545 res!1550781) b!3830546))

(assert (= (and d!1137160 (not res!1550778)) b!3830547))

(assert (=> b!3830546 m!4380953))

(declare-fun m!4384983 () Bool)

(assert (=> b!3830546 m!4384983))

(assert (=> b!3830546 m!4380955))

(declare-fun m!4384985 () Bool)

(assert (=> b!3830546 m!4384985))

(assert (=> b!3830546 m!4384983))

(assert (=> b!3830546 m!4384985))

(declare-fun m!4384987 () Bool)

(assert (=> b!3830546 m!4384987))

(assert (=> b!3830545 m!4380953))

(declare-fun m!4384989 () Bool)

(assert (=> b!3830545 m!4384989))

(assert (=> b!3830545 m!4380955))

(declare-fun m!4384991 () Bool)

(assert (=> b!3830545 m!4384991))

(assert (=> b!3830547 m!4380955))

(declare-fun m!4384993 () Bool)

(assert (=> b!3830547 m!4384993))

(assert (=> b!3830547 m!4380953))

(declare-fun m!4384995 () Bool)

(assert (=> b!3830547 m!4384995))

(assert (=> b!3828452 d!1137160))

(declare-fun d!1137162 () Bool)

(assert (=> d!1137162 (= (tail!5795 lt!1328931) (t!308874 lt!1328931))))

(assert (=> b!3828452 d!1137162))

(declare-fun d!1137164 () Bool)

(assert (=> d!1137164 (= (tail!5795 lt!1328934) (t!308874 lt!1328934))))

(assert (=> b!3828452 d!1137164))

(assert (=> b!3828544 d!1136856))

(assert (=> b!3828544 d!1137078))

(assert (=> b!3828544 d!1136702))

(assert (=> b!3828544 d!1135438))

(declare-fun d!1137166 () Bool)

(assert (=> d!1137166 (= (inv!54499 (xs!15717 (left!31276 (c!667181 acc!335)))) (<= (size!30476 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335))))) 2147483647))))

(declare-fun bs!582217 () Bool)

(assert (= bs!582217 d!1137166))

(declare-fun m!4384997 () Bool)

(assert (=> bs!582217 m!4384997))

(assert (=> b!3828607 d!1137166))

(declare-fun d!1137168 () Bool)

(declare-fun res!1550782 () Bool)

(declare-fun e!2365579 () Bool)

(assert (=> d!1137168 (=> (not res!1550782) (not e!2365579))))

(assert (=> d!1137168 (= res!1550782 (<= (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 treated!13))))) 512))))

(assert (=> d!1137168 (= (inv!54498 (left!31275 (c!667180 treated!13))) e!2365579)))

(declare-fun b!3830548 () Bool)

(declare-fun res!1550783 () Bool)

(assert (=> b!3830548 (=> (not res!1550783) (not e!2365579))))

(assert (=> b!3830548 (= res!1550783 (= (csize!25075 (left!31275 (c!667180 treated!13))) (size!30470 (list!15063 (xs!15716 (left!31275 (c!667180 treated!13)))))))))

(declare-fun b!3830549 () Bool)

(assert (=> b!3830549 (= e!2365579 (and (> (csize!25075 (left!31275 (c!667180 treated!13))) 0) (<= (csize!25075 (left!31275 (c!667180 treated!13))) 512)))))

(assert (= (and d!1137168 res!1550782) b!3830548))

(assert (= (and b!3830548 res!1550783) b!3830549))

(assert (=> d!1137168 m!4383537))

(assert (=> d!1137168 m!4383537))

(declare-fun m!4384999 () Bool)

(assert (=> d!1137168 m!4384999))

(assert (=> b!3830548 m!4383537))

(assert (=> b!3830548 m!4383537))

(assert (=> b!3830548 m!4384999))

(assert (=> b!3828475 d!1137168))

(declare-fun b!3830551 () Bool)

(declare-fun e!2365580 () List!40548)

(declare-fun e!2365581 () List!40548)

(assert (=> b!3830551 (= e!2365580 e!2365581)))

(declare-fun c!667963 () Bool)

(assert (=> b!3830551 (= c!667963 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328959))))))

(declare-fun b!3830553 () Bool)

(assert (=> b!3830553 (= e!2365581 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328959)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328959))))))))

(declare-fun d!1137170 () Bool)

(declare-fun c!667962 () Bool)

(assert (=> d!1137170 (= c!667962 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328959))))))

(assert (=> d!1137170 (= (list!15060 (c!667181 (_1!22945 lt!1328959))) e!2365580)))

(declare-fun b!3830552 () Bool)

(assert (=> b!3830552 (= e!2365581 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328959)))))))

(declare-fun b!3830550 () Bool)

(assert (=> b!3830550 (= e!2365580 Nil!40424)))

(assert (= (and d!1137170 c!667962) b!3830550))

(assert (= (and d!1137170 (not c!667962)) b!3830551))

(assert (= (and b!3830551 c!667963) b!3830552))

(assert (= (and b!3830551 (not c!667963)) b!3830553))

(declare-fun m!4385001 () Bool)

(assert (=> b!3830553 m!4385001))

(declare-fun m!4385003 () Bool)

(assert (=> b!3830553 m!4385003))

(assert (=> b!3830553 m!4385001))

(assert (=> b!3830553 m!4385003))

(declare-fun m!4385005 () Bool)

(assert (=> b!3830553 m!4385005))

(declare-fun m!4385007 () Bool)

(assert (=> b!3830552 m!4385007))

(assert (=> d!1135810 d!1137170))

(declare-fun bm!281466 () Bool)

(declare-fun call!281472 () List!40548)

(assert (=> bm!281466 (= call!281472 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830554 () Bool)

(declare-fun e!2365582 () Bool)

(declare-fun call!281473 () List!40548)

(declare-fun call!281471 () List!40548)

(assert (=> b!3830554 (= e!2365582 (= call!281473 call!281471))))

(declare-fun d!1137172 () Bool)

(assert (=> d!1137172 e!2365582))

(declare-fun c!667964 () Bool)

(assert (=> d!1137172 (= c!667964 ((_ is Nil!40424) (list!15060 (c!667181 acc!335))))))

(assert (=> d!1137172 (= (appendAssoc!285 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))) true)))

(declare-fun bm!281467 () Bool)

(declare-fun call!281474 () List!40548)

(assert (=> bm!281467 (= call!281471 (++!10192 (list!15060 (c!667181 acc!335)) call!281474))))

(declare-fun bm!281468 () Bool)

(assert (=> bm!281468 (= call!281474 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830555 () Bool)

(assert (=> b!3830555 (= e!2365582 (= call!281473 call!281471))))

(declare-fun lt!1330166 () Bool)

(assert (=> b!3830555 (= lt!1330166 (appendAssoc!285 (t!308875 (list!15060 (c!667181 acc!335))) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun bm!281469 () Bool)

(assert (=> bm!281469 (= call!281473 (++!10192 call!281472 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(assert (= (and d!1137172 c!667964) b!3830554))

(assert (= (and d!1137172 (not c!667964)) b!3830555))

(assert (= (or b!3830554 b!3830555) bm!281466))

(assert (= (or b!3830554 b!3830555) bm!281468))

(assert (= (or b!3830554 b!3830555) bm!281469))

(assert (= (or b!3830554 b!3830555) bm!281467))

(assert (=> b!3830555 m!4379875))

(assert (=> b!3830555 m!4379865))

(declare-fun m!4385009 () Bool)

(assert (=> b!3830555 m!4385009))

(assert (=> bm!281466 m!4379595))

(assert (=> bm!281466 m!4379875))

(declare-fun m!4385011 () Bool)

(assert (=> bm!281466 m!4385011))

(assert (=> bm!281469 m!4379865))

(declare-fun m!4385013 () Bool)

(assert (=> bm!281469 m!4385013))

(assert (=> bm!281467 m!4379595))

(declare-fun m!4385015 () Bool)

(assert (=> bm!281467 m!4385015))

(assert (=> bm!281468 m!4379875))

(assert (=> bm!281468 m!4379865))

(assert (=> bm!281468 m!4383519))

(assert (=> b!3827604 d!1137172))

(assert (=> b!3827604 d!1135638))

(declare-fun b!3830557 () Bool)

(declare-fun e!2365583 () List!40548)

(declare-fun e!2365584 () List!40548)

(assert (=> b!3830557 (= e!2365583 e!2365584)))

(declare-fun c!667966 () Bool)

(assert (=> b!3830557 (= c!667966 ((_ is Leaf!19233) (left!31276 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3830559 () Bool)

(assert (=> b!3830559 (= e!2365584 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun d!1137174 () Bool)

(declare-fun c!667965 () Bool)

(assert (=> d!1137174 (= c!667965 ((_ is Empty!12423) (left!31276 (c!667181 (_1!22945 lt!1328861)))))))

(assert (=> d!1137174 (= (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328861)))) e!2365583)))

(declare-fun b!3830558 () Bool)

(assert (=> b!3830558 (= e!2365584 (list!15064 (xs!15717 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830556 () Bool)

(assert (=> b!3830556 (= e!2365583 Nil!40424)))

(assert (= (and d!1137174 c!667965) b!3830556))

(assert (= (and d!1137174 (not c!667965)) b!3830557))

(assert (= (and b!3830557 c!667966) b!3830558))

(assert (= (and b!3830557 (not c!667966)) b!3830559))

(assert (=> b!3830559 m!4379869))

(assert (=> b!3830559 m!4379867))

(assert (=> b!3830559 m!4379869))

(assert (=> b!3830559 m!4379867))

(assert (=> b!3830559 m!4384721))

(declare-fun m!4385017 () Bool)

(assert (=> b!3830558 m!4385017))

(assert (=> b!3827604 d!1137174))

(declare-fun b!3830561 () Bool)

(declare-fun e!2365585 () List!40548)

(declare-fun e!2365586 () List!40548)

(assert (=> b!3830561 (= e!2365585 e!2365586)))

(declare-fun c!667968 () Bool)

(assert (=> b!3830561 (= c!667968 ((_ is Leaf!19233) (right!31606 (c!667181 (_1!22945 lt!1328861)))))))

(declare-fun b!3830563 () Bool)

(assert (=> b!3830563 (= e!2365586 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (right!31606 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun d!1137176 () Bool)

(declare-fun c!667967 () Bool)

(assert (=> d!1137176 (= c!667967 ((_ is Empty!12423) (right!31606 (c!667181 (_1!22945 lt!1328861)))))))

(assert (=> d!1137176 (= (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861)))) e!2365585)))

(declare-fun b!3830562 () Bool)

(assert (=> b!3830562 (= e!2365586 (list!15064 (xs!15717 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830560 () Bool)

(assert (=> b!3830560 (= e!2365585 Nil!40424)))

(assert (= (and d!1137176 c!667967) b!3830560))

(assert (= (and d!1137176 (not c!667967)) b!3830561))

(assert (= (and b!3830561 c!667968) b!3830562))

(assert (= (and b!3830561 (not c!667968)) b!3830563))

(declare-fun m!4385019 () Bool)

(assert (=> b!3830563 m!4385019))

(declare-fun m!4385021 () Bool)

(assert (=> b!3830563 m!4385021))

(assert (=> b!3830563 m!4385019))

(assert (=> b!3830563 m!4385021))

(declare-fun m!4385023 () Bool)

(assert (=> b!3830563 m!4385023))

(declare-fun m!4385025 () Bool)

(assert (=> b!3830562 m!4385025))

(assert (=> b!3827604 d!1137176))

(declare-fun b!3830564 () Bool)

(declare-fun res!1550785 () Bool)

(declare-fun e!2365587 () Bool)

(assert (=> b!3830564 (=> (not res!1550785) (not e!2365587))))

(declare-fun lt!1330167 () Option!8650)

(assert (=> b!3830564 (= res!1550785 (= (value!197991 (_1!22949 (get!13413 lt!1330167))) (apply!9479 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1330167)))) (seqFromList!4507 (originalCharacters!6824 (_1!22949 (get!13413 lt!1330167)))))))))

(declare-fun b!3830565 () Bool)

(assert (=> b!3830565 (= e!2365587 (contains!8206 (t!308876 rules!1265) (rule!9048 (_1!22949 (get!13413 lt!1330167)))))))

(declare-fun b!3830566 () Bool)

(declare-fun res!1550790 () Bool)

(assert (=> b!3830566 (=> (not res!1550790) (not e!2365587))))

(assert (=> b!3830566 (= res!1550790 (= (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330167)))) (originalCharacters!6824 (_1!22949 (get!13413 lt!1330167)))))))

(declare-fun bm!281470 () Bool)

(declare-fun call!281475 () Option!8650)

(assert (=> bm!281470 (= call!281475 (maxPrefixOneRule!2223 thiss!11876 (h!45845 (t!308876 rules!1265)) (list!15055 input!678)))))

(declare-fun b!3830567 () Bool)

(declare-fun res!1550787 () Bool)

(assert (=> b!3830567 (=> (not res!1550787) (not e!2365587))))

(assert (=> b!3830567 (= res!1550787 (matchR!5322 (regex!6224 (rule!9048 (_1!22949 (get!13413 lt!1330167)))) (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330167))))))))

(declare-fun d!1137178 () Bool)

(declare-fun e!2365589 () Bool)

(assert (=> d!1137178 e!2365589))

(declare-fun res!1550788 () Bool)

(assert (=> d!1137178 (=> res!1550788 e!2365589)))

(assert (=> d!1137178 (= res!1550788 (isEmpty!23857 lt!1330167))))

(declare-fun e!2365588 () Option!8650)

(assert (=> d!1137178 (= lt!1330167 e!2365588)))

(declare-fun c!667969 () Bool)

(assert (=> d!1137178 (= c!667969 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1330171 () Unit!58192)

(declare-fun lt!1330169 () Unit!58192)

(assert (=> d!1137178 (= lt!1330171 lt!1330169)))

(assert (=> d!1137178 (isPrefix!3333 (list!15055 input!678) (list!15055 input!678))))

(assert (=> d!1137178 (= lt!1330169 (lemmaIsPrefixRefl!2118 (list!15055 input!678) (list!15055 input!678)))))

(assert (=> d!1137178 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1137178 (= (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)) lt!1330167)))

(declare-fun b!3830568 () Bool)

(declare-fun lt!1330170 () Option!8650)

(declare-fun lt!1330168 () Option!8650)

(assert (=> b!3830568 (= e!2365588 (ite (and ((_ is None!8649) lt!1330170) ((_ is None!8649) lt!1330168)) None!8649 (ite ((_ is None!8649) lt!1330168) lt!1330170 (ite ((_ is None!8649) lt!1330170) lt!1330168 (ite (>= (size!30466 (_1!22949 (v!38925 lt!1330170))) (size!30466 (_1!22949 (v!38925 lt!1330168)))) lt!1330170 lt!1330168)))))))

(assert (=> b!3830568 (= lt!1330170 call!281475)))

(assert (=> b!3830568 (= lt!1330168 (maxPrefix!3125 thiss!11876 (t!308876 (t!308876 rules!1265)) (list!15055 input!678)))))

(declare-fun b!3830569 () Bool)

(assert (=> b!3830569 (= e!2365589 e!2365587)))

(declare-fun res!1550784 () Bool)

(assert (=> b!3830569 (=> (not res!1550784) (not e!2365587))))

(assert (=> b!3830569 (= res!1550784 (isDefined!6811 lt!1330167))))

(declare-fun b!3830570 () Bool)

(declare-fun res!1550786 () Bool)

(assert (=> b!3830570 (=> (not res!1550786) (not e!2365587))))

(assert (=> b!3830570 (= res!1550786 (< (size!30470 (_2!22949 (get!13413 lt!1330167))) (size!30470 (list!15055 input!678))))))

(declare-fun b!3830571 () Bool)

(assert (=> b!3830571 (= e!2365588 call!281475)))

(declare-fun b!3830572 () Bool)

(declare-fun res!1550789 () Bool)

(assert (=> b!3830572 (=> (not res!1550789) (not e!2365587))))

(assert (=> b!3830572 (= res!1550789 (= (++!10187 (list!15055 (charsOf!4062 (_1!22949 (get!13413 lt!1330167)))) (_2!22949 (get!13413 lt!1330167))) (list!15055 input!678)))))

(assert (= (and d!1137178 c!667969) b!3830571))

(assert (= (and d!1137178 (not c!667969)) b!3830568))

(assert (= (or b!3830571 b!3830568) bm!281470))

(assert (= (and d!1137178 (not res!1550788)) b!3830569))

(assert (= (and b!3830569 res!1550784) b!3830566))

(assert (= (and b!3830566 res!1550790) b!3830570))

(assert (= (and b!3830570 res!1550786) b!3830572))

(assert (= (and b!3830572 res!1550789) b!3830564))

(assert (= (and b!3830564 res!1550785) b!3830567))

(assert (= (and b!3830567 res!1550787) b!3830565))

(declare-fun m!4385027 () Bool)

(assert (=> b!3830566 m!4385027))

(declare-fun m!4385029 () Bool)

(assert (=> b!3830566 m!4385029))

(assert (=> b!3830566 m!4385029))

(declare-fun m!4385031 () Bool)

(assert (=> b!3830566 m!4385031))

(assert (=> bm!281470 m!4379223))

(assert (=> bm!281470 m!4384697))

(declare-fun m!4385033 () Bool)

(assert (=> b!3830569 m!4385033))

(assert (=> b!3830568 m!4379223))

(assert (=> b!3830568 m!4384861))

(assert (=> b!3830565 m!4385027))

(declare-fun m!4385035 () Bool)

(assert (=> b!3830565 m!4385035))

(declare-fun m!4385037 () Bool)

(assert (=> d!1137178 m!4385037))

(assert (=> d!1137178 m!4379223))

(assert (=> d!1137178 m!4379223))

(assert (=> d!1137178 m!4379951))

(assert (=> d!1137178 m!4379223))

(assert (=> d!1137178 m!4379223))

(assert (=> d!1137178 m!4379953))

(assert (=> d!1137178 m!4380915))

(assert (=> b!3830567 m!4385027))

(assert (=> b!3830567 m!4385029))

(assert (=> b!3830567 m!4385029))

(assert (=> b!3830567 m!4385031))

(assert (=> b!3830567 m!4385031))

(declare-fun m!4385039 () Bool)

(assert (=> b!3830567 m!4385039))

(assert (=> b!3830570 m!4385027))

(declare-fun m!4385041 () Bool)

(assert (=> b!3830570 m!4385041))

(assert (=> b!3830570 m!4379223))

(assert (=> b!3830570 m!4379959))

(assert (=> b!3830564 m!4385027))

(declare-fun m!4385043 () Bool)

(assert (=> b!3830564 m!4385043))

(assert (=> b!3830564 m!4385043))

(declare-fun m!4385045 () Bool)

(assert (=> b!3830564 m!4385045))

(assert (=> b!3830572 m!4385027))

(assert (=> b!3830572 m!4385029))

(assert (=> b!3830572 m!4385029))

(assert (=> b!3830572 m!4385031))

(assert (=> b!3830572 m!4385031))

(declare-fun m!4385047 () Bool)

(assert (=> b!3830572 m!4385047))

(assert (=> b!3827717 d!1137178))

(declare-fun b!3830573 () Bool)

(declare-fun e!2365590 () List!40547)

(assert (=> b!3830573 (= e!2365590 Nil!40423)))

(declare-fun b!3830574 () Bool)

(declare-fun e!2365591 () List!40547)

(assert (=> b!3830574 (= e!2365590 e!2365591)))

(declare-fun c!667971 () Bool)

(assert (=> b!3830574 (= c!667971 ((_ is Leaf!19232) (c!667180 (_2!22945 lt!1328959))))))

(declare-fun b!3830575 () Bool)

(assert (=> b!3830575 (= e!2365591 (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328959)))))))

(declare-fun b!3830576 () Bool)

(assert (=> b!3830576 (= e!2365591 (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328959)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328959))))))))

(declare-fun d!1137180 () Bool)

(declare-fun c!667970 () Bool)

(assert (=> d!1137180 (= c!667970 ((_ is Empty!12422) (c!667180 (_2!22945 lt!1328959))))))

(assert (=> d!1137180 (= (list!15059 (c!667180 (_2!22945 lt!1328959))) e!2365590)))

(assert (= (and d!1137180 c!667970) b!3830573))

(assert (= (and d!1137180 (not c!667970)) b!3830574))

(assert (= (and b!3830574 c!667971) b!3830575))

(assert (= (and b!3830574 (not c!667971)) b!3830576))

(declare-fun m!4385049 () Bool)

(assert (=> b!3830575 m!4385049))

(declare-fun m!4385051 () Bool)

(assert (=> b!3830576 m!4385051))

(declare-fun m!4385053 () Bool)

(assert (=> b!3830576 m!4385053))

(assert (=> b!3830576 m!4385051))

(assert (=> b!3830576 m!4385053))

(declare-fun m!4385055 () Bool)

(assert (=> b!3830576 m!4385055))

(assert (=> d!1135538 d!1137180))

(assert (=> b!3828336 d!1136930))

(assert (=> b!3828336 d!1136932))

(assert (=> b!3828336 d!1136928))

(assert (=> b!3828336 d!1137140))

(assert (=> b!3828336 d!1135434))

(declare-fun d!1137182 () Bool)

(assert (=> d!1137182 (= (list!15056 lt!1329330) (list!15060 (c!667181 lt!1329330)))))

(declare-fun bs!582218 () Bool)

(assert (= bs!582218 d!1137182))

(declare-fun m!4385057 () Bool)

(assert (=> bs!582218 m!4385057))

(assert (=> b!3828514 d!1137182))

(declare-fun d!1137184 () Bool)

(assert (=> d!1137184 (= (list!15056 (_1!22945 lt!1328949)) (list!15060 (c!667181 (_1!22945 lt!1328949))))))

(declare-fun bs!582219 () Bool)

(assert (= bs!582219 d!1137184))

(assert (=> bs!582219 m!4384221))

(assert (=> b!3828514 d!1137184))

(assert (=> b!3828481 d!1137002))

(assert (=> b!3828440 d!1136912))

(assert (=> d!1135778 d!1135776))

(assert (=> d!1135778 d!1135432))

(assert (=> d!1135660 d!1135802))

(declare-fun d!1137186 () Bool)

(declare-fun res!1550791 () Bool)

(declare-fun e!2365592 () Bool)

(assert (=> d!1137186 (=> res!1550791 e!2365592)))

(assert (=> d!1137186 (= res!1550791 ((_ is Nil!40425) rules!1265))))

(assert (=> d!1137186 (= (forall!8265 rules!1265 lambda!125936) e!2365592)))

(declare-fun b!3830577 () Bool)

(declare-fun e!2365593 () Bool)

(assert (=> b!3830577 (= e!2365592 e!2365593)))

(declare-fun res!1550792 () Bool)

(assert (=> b!3830577 (=> (not res!1550792) (not e!2365593))))

(assert (=> b!3830577 (= res!1550792 (dynLambda!17516 lambda!125936 (h!45845 rules!1265)))))

(declare-fun b!3830578 () Bool)

(assert (=> b!3830578 (= e!2365593 (forall!8265 (t!308876 rules!1265) lambda!125936))))

(assert (= (and d!1137186 (not res!1550791)) b!3830577))

(assert (= (and b!3830577 res!1550792) b!3830578))

(declare-fun b_lambda!112023 () Bool)

(assert (=> (not b_lambda!112023) (not b!3830577)))

(declare-fun m!4385059 () Bool)

(assert (=> b!3830577 m!4385059))

(declare-fun m!4385061 () Bool)

(assert (=> b!3830578 m!4385061))

(assert (=> d!1135660 d!1137186))

(assert (=> b!3828415 d!1135436))

(assert (=> b!3828415 d!1136942))

(assert (=> b!3828415 d!1137178))

(declare-fun d!1137188 () Bool)

(assert (=> d!1137188 (= (list!15055 (_2!22946 (get!13412 lt!1329305))) (list!15059 (c!667180 (_2!22946 (get!13412 lt!1329305)))))))

(declare-fun bs!582220 () Bool)

(assert (= bs!582220 d!1137188))

(declare-fun m!4385063 () Bool)

(assert (=> bs!582220 m!4385063))

(assert (=> b!3828415 d!1137188))

(declare-fun d!1137190 () Bool)

(assert (=> d!1137190 (= (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))) (v!38925 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))

(assert (=> b!3828415 d!1137190))

(declare-fun d!1137192 () Bool)

(declare-fun e!2365594 () Bool)

(assert (=> d!1137192 e!2365594))

(declare-fun res!1550793 () Bool)

(assert (=> d!1137192 (=> (not res!1550793) (not e!2365594))))

(assert (=> d!1137192 (= res!1550793 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1329331)) (_1!22946 (v!38923 lt!1329333)))))))

(declare-fun lt!1330172 () BalanceConc!24440)

(assert (=> d!1137192 (= lt!1330172 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1329331)) (_1!22946 (v!38923 lt!1329333)))))))

(assert (=> d!1137192 (= (prepend!1380 (_1!22945 lt!1329331) (_1!22946 (v!38923 lt!1329333))) lt!1330172)))

(declare-fun b!3830579 () Bool)

(assert (=> b!3830579 (= e!2365594 (= (list!15056 lt!1330172) (Cons!40424 (_1!22946 (v!38923 lt!1329333)) (list!15056 (_1!22945 lt!1329331)))))))

(assert (= (and d!1137192 res!1550793) b!3830579))

(declare-fun m!4385065 () Bool)

(assert (=> d!1137192 m!4385065))

(assert (=> d!1137192 m!4385065))

(declare-fun m!4385067 () Bool)

(assert (=> d!1137192 m!4385067))

(declare-fun m!4385069 () Bool)

(assert (=> b!3830579 m!4385069))

(declare-fun m!4385071 () Bool)

(assert (=> b!3830579 m!4385071))

(assert (=> b!3828517 d!1137192))

(declare-fun b!3830580 () Bool)

(declare-fun e!2365595 () Bool)

(declare-fun lt!1330174 () tuple2!39622)

(assert (=> b!3830580 (= e!2365595 (= (list!15055 (_2!22945 lt!1330174)) (list!15055 (_2!22946 (v!38923 lt!1329333)))))))

(declare-fun d!1137194 () Bool)

(declare-fun e!2365598 () Bool)

(assert (=> d!1137194 e!2365598))

(declare-fun res!1550796 () Bool)

(assert (=> d!1137194 (=> (not res!1550796) (not e!2365598))))

(assert (=> d!1137194 (= res!1550796 e!2365595)))

(declare-fun c!667973 () Bool)

(assert (=> d!1137194 (= c!667973 (> (size!30471 (_1!22945 lt!1330174)) 0))))

(declare-fun e!2365597 () tuple2!39622)

(assert (=> d!1137194 (= lt!1330174 e!2365597)))

(declare-fun c!667972 () Bool)

(declare-fun lt!1330175 () Option!8648)

(assert (=> d!1137194 (= c!667972 ((_ is Some!8647) lt!1330175))))

(assert (=> d!1137194 (= lt!1330175 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329333))))))

(assert (=> d!1137194 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329333))) lt!1330174)))

(declare-fun b!3830581 () Bool)

(declare-fun e!2365596 () Bool)

(assert (=> b!3830581 (= e!2365596 (not (isEmpty!23852 (_1!22945 lt!1330174))))))

(declare-fun b!3830582 () Bool)

(declare-fun lt!1330173 () tuple2!39622)

(assert (=> b!3830582 (= e!2365597 (tuple2!39623 (prepend!1380 (_1!22945 lt!1330173) (_1!22946 (v!38923 lt!1330175))) (_2!22945 lt!1330173)))))

(assert (=> b!3830582 (= lt!1330173 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1330175))))))

(declare-fun b!3830583 () Bool)

(assert (=> b!3830583 (= e!2365597 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1329333))))))

(declare-fun b!3830584 () Bool)

(assert (=> b!3830584 (= e!2365595 e!2365596)))

(declare-fun res!1550794 () Bool)

(assert (=> b!3830584 (= res!1550794 (< (size!30472 (_2!22945 lt!1330174)) (size!30472 (_2!22946 (v!38923 lt!1329333)))))))

(assert (=> b!3830584 (=> (not res!1550794) (not e!2365596))))

(declare-fun b!3830585 () Bool)

(assert (=> b!3830585 (= e!2365598 (= (list!15055 (_2!22945 lt!1330174)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329333)))))))))

(declare-fun b!3830586 () Bool)

(declare-fun res!1550795 () Bool)

(assert (=> b!3830586 (=> (not res!1550795) (not e!2365598))))

(assert (=> b!3830586 (= res!1550795 (= (list!15056 (_1!22945 lt!1330174)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329333)))))))))

(assert (= (and d!1137194 c!667972) b!3830582))

(assert (= (and d!1137194 (not c!667972)) b!3830583))

(assert (= (and d!1137194 c!667973) b!3830584))

(assert (= (and d!1137194 (not c!667973)) b!3830580))

(assert (= (and b!3830584 res!1550794) b!3830581))

(assert (= (and d!1137194 res!1550796) b!3830586))

(assert (= (and b!3830586 res!1550795) b!3830585))

(declare-fun m!4385073 () Bool)

(assert (=> d!1137194 m!4385073))

(declare-fun m!4385075 () Bool)

(assert (=> d!1137194 m!4385075))

(declare-fun m!4385077 () Bool)

(assert (=> b!3830580 m!4385077))

(declare-fun m!4385079 () Bool)

(assert (=> b!3830580 m!4385079))

(declare-fun m!4385081 () Bool)

(assert (=> b!3830582 m!4385081))

(declare-fun m!4385083 () Bool)

(assert (=> b!3830582 m!4385083))

(declare-fun m!4385085 () Bool)

(assert (=> b!3830584 m!4385085))

(declare-fun m!4385087 () Bool)

(assert (=> b!3830584 m!4385087))

(declare-fun m!4385089 () Bool)

(assert (=> b!3830586 m!4385089))

(assert (=> b!3830586 m!4385079))

(assert (=> b!3830586 m!4385079))

(declare-fun m!4385091 () Bool)

(assert (=> b!3830586 m!4385091))

(assert (=> b!3830585 m!4385077))

(assert (=> b!3830585 m!4385079))

(assert (=> b!3830585 m!4385079))

(assert (=> b!3830585 m!4385091))

(declare-fun m!4385093 () Bool)

(assert (=> b!3830581 m!4385093))

(assert (=> b!3828517 d!1137194))

(declare-fun d!1137196 () Bool)

(declare-fun lt!1330176 () Int)

(assert (=> d!1137196 (>= lt!1330176 0)))

(declare-fun e!2365599 () Int)

(assert (=> d!1137196 (= lt!1330176 e!2365599)))

(declare-fun c!667974 () Bool)

(assert (=> d!1137196 (= c!667974 ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328956))))))

(assert (=> d!1137196 (= (size!30476 (list!15056 (_1!22945 lt!1328956))) lt!1330176)))

(declare-fun b!3830587 () Bool)

(assert (=> b!3830587 (= e!2365599 0)))

(declare-fun b!3830588 () Bool)

(assert (=> b!3830588 (= e!2365599 (+ 1 (size!30476 (t!308875 (list!15056 (_1!22945 lt!1328956))))))))

(assert (= (and d!1137196 c!667974) b!3830587))

(assert (= (and d!1137196 (not c!667974)) b!3830588))

(declare-fun m!4385095 () Bool)

(assert (=> b!3830588 m!4385095))

(assert (=> d!1135818 d!1137196))

(assert (=> d!1135818 d!1135626))

(declare-fun d!1137198 () Bool)

(declare-fun lt!1330177 () Int)

(assert (=> d!1137198 (= lt!1330177 (size!30476 (list!15060 (c!667181 (_1!22945 lt!1328956)))))))

(assert (=> d!1137198 (= lt!1330177 (ite ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328956))) 0 (ite ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328956))) (csize!25077 (c!667181 (_1!22945 lt!1328956))) (csize!25076 (c!667181 (_1!22945 lt!1328956))))))))

(assert (=> d!1137198 (= (size!30477 (c!667181 (_1!22945 lt!1328956))) lt!1330177)))

(declare-fun bs!582221 () Bool)

(assert (= bs!582221 d!1137198))

(assert (=> bs!582221 m!4380315))

(assert (=> bs!582221 m!4380315))

(declare-fun m!4385097 () Bool)

(assert (=> bs!582221 m!4385097))

(assert (=> d!1135818 d!1137198))

(declare-fun bs!582222 () Bool)

(declare-fun d!1137200 () Bool)

(assert (= bs!582222 (and d!1137200 b!3829941)))

(declare-fun lambda!125971 () Int)

(assert (=> bs!582222 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125971 lambda!125965))))

(declare-fun bs!582223 () Bool)

(assert (= bs!582223 (and d!1137200 d!1135788)))

(assert (=> bs!582223 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125971 lambda!125942))))

(declare-fun bs!582224 () Bool)

(assert (= bs!582224 (and d!1137200 b!3830124)))

(assert (=> bs!582224 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125971 lambda!125966))))

(declare-fun bs!582225 () Bool)

(assert (= bs!582225 (and d!1137200 b!3827975)))

(assert (=> bs!582225 (= (and (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (= lambda!125971 lambda!125925))))

(declare-fun bs!582226 () Bool)

(assert (= bs!582226 (and d!1137200 b!3830427)))

(assert (=> bs!582226 (= lambda!125971 lambda!125970)))

(assert (=> d!1137200 true))

(assert (=> d!1137200 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (dynLambda!17507 order!22089 lambda!125971))))

(assert (=> d!1137200 true))

(assert (=> d!1137200 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (dynLambda!17507 order!22089 lambda!125971))))

(assert (=> d!1137200 (= (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (Forall!1424 lambda!125971))))

(declare-fun bs!582227 () Bool)

(assert (= bs!582227 d!1137200))

(declare-fun m!4385099 () Bool)

(assert (=> bs!582227 m!4385099))

(assert (=> d!1135854 d!1137200))

(declare-fun b!3830589 () Bool)

(declare-fun res!1550799 () Bool)

(declare-fun e!2365601 () Bool)

(assert (=> b!3830589 (=> (not res!1550799) (not e!2365601))))

(assert (=> b!3830589 (= res!1550799 (isBalanced!3601 (left!31276 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3830590 () Bool)

(declare-fun res!1550802 () Bool)

(assert (=> b!3830590 (=> (not res!1550802) (not e!2365601))))

(assert (=> b!3830590 (= res!1550802 (<= (- (height!1816 (left!31276 (left!31276 (c!667181 acc!335)))) (height!1816 (right!31606 (left!31276 (c!667181 acc!335))))) 1))))

(declare-fun b!3830591 () Bool)

(declare-fun res!1550798 () Bool)

(assert (=> b!3830591 (=> (not res!1550798) (not e!2365601))))

(assert (=> b!3830591 (= res!1550798 (isBalanced!3601 (right!31606 (left!31276 (c!667181 acc!335)))))))

(declare-fun b!3830592 () Bool)

(declare-fun e!2365600 () Bool)

(assert (=> b!3830592 (= e!2365600 e!2365601)))

(declare-fun res!1550801 () Bool)

(assert (=> b!3830592 (=> (not res!1550801) (not e!2365601))))

(assert (=> b!3830592 (= res!1550801 (<= (- 1) (- (height!1816 (left!31276 (left!31276 (c!667181 acc!335)))) (height!1816 (right!31606 (left!31276 (c!667181 acc!335)))))))))

(declare-fun d!1137202 () Bool)

(declare-fun res!1550797 () Bool)

(assert (=> d!1137202 (=> res!1550797 e!2365600)))

(assert (=> d!1137202 (= res!1550797 (not ((_ is Node!12423) (left!31276 (c!667181 acc!335)))))))

(assert (=> d!1137202 (= (isBalanced!3601 (left!31276 (c!667181 acc!335))) e!2365600)))

(declare-fun b!3830593 () Bool)

(declare-fun res!1550800 () Bool)

(assert (=> b!3830593 (=> (not res!1550800) (not e!2365601))))

(assert (=> b!3830593 (= res!1550800 (not (isEmpty!23863 (left!31276 (left!31276 (c!667181 acc!335))))))))

(declare-fun b!3830594 () Bool)

(assert (=> b!3830594 (= e!2365601 (not (isEmpty!23863 (right!31606 (left!31276 (c!667181 acc!335))))))))

(assert (= (and d!1137202 (not res!1550797)) b!3830592))

(assert (= (and b!3830592 res!1550801) b!3830590))

(assert (= (and b!3830590 res!1550802) b!3830589))

(assert (= (and b!3830589 res!1550799) b!3830591))

(assert (= (and b!3830591 res!1550798) b!3830593))

(assert (= (and b!3830593 res!1550800) b!3830594))

(declare-fun m!4385101 () Bool)

(assert (=> b!3830591 m!4385101))

(declare-fun m!4385103 () Bool)

(assert (=> b!3830589 m!4385103))

(declare-fun m!4385105 () Bool)

(assert (=> b!3830594 m!4385105))

(declare-fun m!4385107 () Bool)

(assert (=> b!3830593 m!4385107))

(assert (=> b!3830590 m!4384111))

(assert (=> b!3830590 m!4384113))

(assert (=> b!3830592 m!4384111))

(assert (=> b!3830592 m!4384113))

(assert (=> b!3828505 d!1137202))

(assert (=> b!3828343 d!1136928))

(assert (=> b!3828343 d!1137138))

(assert (=> b!3828343 d!1137136))

(assert (=> b!3828343 d!1135434))

(assert (=> b!3828066 d!1136824))

(assert (=> b!3828066 d!1136826))

(assert (=> b!3828537 d!1136856))

(assert (=> b!3828537 d!1136858))

(assert (=> b!3828537 d!1136860))

(assert (=> b!3828537 d!1137080))

(assert (=> b!3828537 d!1135438))

(declare-fun d!1137204 () Bool)

(declare-fun lt!1330178 () Bool)

(assert (=> d!1137204 (= lt!1330178 (isEmpty!23850 (list!15059 (right!31605 (c!667180 input!678)))))))

(assert (=> d!1137204 (= lt!1330178 (= (size!30478 (right!31605 (c!667180 input!678))) 0))))

(assert (=> d!1137204 (= (isEmpty!23861 (right!31605 (c!667180 input!678))) lt!1330178)))

(declare-fun bs!582228 () Bool)

(assert (= bs!582228 d!1137204))

(assert (=> bs!582228 m!4380835))

(assert (=> bs!582228 m!4380835))

(declare-fun m!4385109 () Bool)

(assert (=> bs!582228 m!4385109))

(assert (=> bs!582228 m!4380551))

(assert (=> b!3828115 d!1137204))

(declare-fun d!1137206 () Bool)

(declare-fun res!1550807 () Bool)

(declare-fun e!2365604 () Bool)

(assert (=> d!1137206 (=> (not res!1550807) (not e!2365604))))

(assert (=> d!1137206 (= res!1550807 (not (isEmpty!23850 (originalCharacters!6824 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))))

(assert (=> d!1137206 (= (inv!54502 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))) e!2365604)))

(declare-fun b!3830599 () Bool)

(declare-fun res!1550808 () Bool)

(assert (=> b!3830599 (=> (not res!1550808) (not e!2365604))))

(assert (=> b!3830599 (= res!1550808 (= (originalCharacters!6824 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))) (list!15055 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))))

(declare-fun b!3830600 () Bool)

(assert (=> b!3830600 (= e!2365604 (= (size!30466 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))) (size!30470 (originalCharacters!6824 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))))

(assert (= (and d!1137206 res!1550807) b!3830599))

(assert (= (and b!3830599 res!1550808) b!3830600))

(declare-fun b_lambda!112025 () Bool)

(assert (=> (not b_lambda!112025) (not b!3830599)))

(declare-fun t!309046 () Bool)

(declare-fun tb!219821 () Bool)

(assert (=> (and b!3827069 (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309046) tb!219821))

(declare-fun b!3830601 () Bool)

(declare-fun e!2365605 () Bool)

(declare-fun tp!1158963 () Bool)

(assert (=> b!3830601 (= e!2365605 (and (inv!54485 (c!667180 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) tp!1158963))))

(declare-fun result!267954 () Bool)

(assert (=> tb!219821 (= result!267954 (and (inv!54487 (dynLambda!17515 (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) e!2365605))))

(assert (= tb!219821 b!3830601))

(declare-fun m!4385111 () Bool)

(assert (=> b!3830601 m!4385111))

(declare-fun m!4385113 () Bool)

(assert (=> tb!219821 m!4385113))

(assert (=> b!3830599 t!309046))

(declare-fun b_and!284687 () Bool)

(assert (= b_and!284655 (and (=> t!309046 result!267954) b_and!284687)))

(declare-fun tb!219823 () Bool)

(declare-fun t!309048 () Bool)

(assert (=> (and b!3827404 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309048) tb!219823))

(declare-fun result!267956 () Bool)

(assert (= result!267956 result!267954))

(assert (=> b!3830599 t!309048))

(declare-fun b_and!284689 () Bool)

(assert (= b_and!284657 (and (=> t!309048 result!267956) b_and!284689)))

(declare-fun tb!219825 () Bool)

(declare-fun t!309050 () Bool)

(assert (=> (and b!3828558 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309050) tb!219825))

(declare-fun result!267958 () Bool)

(assert (= result!267958 result!267954))

(assert (=> b!3830599 t!309050))

(declare-fun b_and!284691 () Bool)

(assert (= b_and!284659 (and (=> t!309050 result!267958) b_and!284691)))

(declare-fun t!309052 () Bool)

(declare-fun tb!219827 () Bool)

(assert (=> (and b!3828586 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309052) tb!219827))

(declare-fun result!267960 () Bool)

(assert (= result!267960 result!267954))

(assert (=> b!3830599 t!309052))

(declare-fun b_and!284693 () Bool)

(assert (= b_and!284661 (and (=> t!309052 result!267960) b_and!284693)))

(declare-fun m!4385115 () Bool)

(assert (=> d!1137206 m!4385115))

(declare-fun m!4385117 () Bool)

(assert (=> b!3830599 m!4385117))

(assert (=> b!3830599 m!4385117))

(declare-fun m!4385119 () Bool)

(assert (=> b!3830599 m!4385119))

(declare-fun m!4385121 () Bool)

(assert (=> b!3830600 m!4385121))

(assert (=> b!3828583 d!1137206))

(declare-fun d!1137208 () Bool)

(declare-fun lt!1330179 () Int)

(assert (=> d!1137208 (= lt!1330179 (size!30476 (list!15056 (_1!22945 lt!1329201))))))

(assert (=> d!1137208 (= lt!1330179 (size!30477 (c!667181 (_1!22945 lt!1329201))))))

(assert (=> d!1137208 (= (size!30471 (_1!22945 lt!1329201)) lt!1330179)))

(declare-fun bs!582229 () Bool)

(assert (= bs!582229 d!1137208))

(assert (=> bs!582229 m!4380379))

(assert (=> bs!582229 m!4380379))

(declare-fun m!4385123 () Bool)

(assert (=> bs!582229 m!4385123))

(declare-fun m!4385125 () Bool)

(assert (=> bs!582229 m!4385125))

(assert (=> d!1135636 d!1137208))

(declare-fun e!2365608 () Bool)

(declare-fun lt!1330183 () Option!8648)

(declare-fun b!3830602 () Bool)

(assert (=> b!3830602 (= e!2365608 (= (list!15055 (_2!22946 (get!13412 lt!1330183))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957))))))))))

(declare-fun b!3830603 () Bool)

(declare-fun e!2365606 () Bool)

(declare-fun e!2365609 () Bool)

(assert (=> b!3830603 (= e!2365606 e!2365609)))

(declare-fun res!1550809 () Bool)

(assert (=> b!3830603 (=> res!1550809 e!2365609)))

(assert (=> b!3830603 (= res!1550809 (not (isDefined!6810 lt!1330183)))))

(declare-fun b!3830604 () Bool)

(declare-fun res!1550811 () Bool)

(assert (=> b!3830604 (=> (not res!1550811) (not e!2365606))))

(declare-fun e!2365611 () Bool)

(assert (=> b!3830604 (= res!1550811 e!2365611)))

(declare-fun res!1550810 () Bool)

(assert (=> b!3830604 (=> res!1550810 e!2365611)))

(assert (=> b!3830604 (= res!1550810 (not (isDefined!6810 lt!1330183)))))

(declare-fun b!3830605 () Bool)

(declare-fun e!2365607 () Option!8648)

(declare-fun call!281476 () Option!8648)

(assert (=> b!3830605 (= e!2365607 call!281476)))

(declare-fun d!1137210 () Bool)

(assert (=> d!1137210 e!2365606))

(declare-fun res!1550814 () Bool)

(assert (=> d!1137210 (=> (not res!1550814) (not e!2365606))))

(assert (=> d!1137210 (= res!1550814 (= (isDefined!6810 lt!1330183) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))))

(assert (=> d!1137210 (= lt!1330183 e!2365607)))

(declare-fun c!667975 () Bool)

(assert (=> d!1137210 (= c!667975 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330182 () Unit!58192)

(declare-fun lt!1330184 () Unit!58192)

(assert (=> d!1137210 (= lt!1330182 lt!1330184)))

(declare-fun lt!1330181 () List!40547)

(declare-fun lt!1330185 () List!40547)

(assert (=> d!1137210 (isPrefix!3333 lt!1330181 lt!1330185)))

(assert (=> d!1137210 (= lt!1330184 (lemmaIsPrefixRefl!2118 lt!1330181 lt!1330185))))

(assert (=> d!1137210 (= lt!1330185 (list!15055 (_2!22946 (v!38923 lt!1328957))))))

(assert (=> d!1137210 (= lt!1330181 (list!15055 (_2!22946 (v!38923 lt!1328957))))))

(assert (=> d!1137210 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1137210 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328957))) lt!1330183)))

(declare-fun bm!281471 () Bool)

(assert (=> bm!281471 (= call!281476 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) (_2!22946 (v!38923 lt!1328957))))))

(declare-fun b!3830606 () Bool)

(assert (=> b!3830606 (= e!2365609 e!2365608)))

(declare-fun res!1550812 () Bool)

(assert (=> b!3830606 (=> (not res!1550812) (not e!2365608))))

(assert (=> b!3830606 (= res!1550812 (= (_1!22946 (get!13412 lt!1330183)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957))))))))))

(declare-fun b!3830607 () Bool)

(declare-fun lt!1330186 () Option!8648)

(declare-fun lt!1330180 () Option!8648)

(assert (=> b!3830607 (= e!2365607 (ite (and ((_ is None!8647) lt!1330186) ((_ is None!8647) lt!1330180)) None!8647 (ite ((_ is None!8647) lt!1330180) lt!1330186 (ite ((_ is None!8647) lt!1330186) lt!1330180 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330186))) (size!30466 (_1!22946 (v!38923 lt!1330180)))) lt!1330186 lt!1330180)))))))

(assert (=> b!3830607 (= lt!1330186 call!281476)))

(assert (=> b!3830607 (= lt!1330180 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) (_2!22946 (v!38923 lt!1328957))))))

(declare-fun b!3830608 () Bool)

(declare-fun e!2365610 () Bool)

(assert (=> b!3830608 (= e!2365610 (= (list!15055 (_2!22946 (get!13412 lt!1330183))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957))))))))))

(declare-fun b!3830609 () Bool)

(assert (=> b!3830609 (= e!2365611 e!2365610)))

(declare-fun res!1550813 () Bool)

(assert (=> b!3830609 (=> (not res!1550813) (not e!2365610))))

(assert (=> b!3830609 (= res!1550813 (= (_1!22946 (get!13412 lt!1330183)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328957))))))))))

(assert (= (and d!1137210 c!667975) b!3830605))

(assert (= (and d!1137210 (not c!667975)) b!3830607))

(assert (= (or b!3830605 b!3830607) bm!281471))

(assert (= (and d!1137210 res!1550814) b!3830604))

(assert (= (and b!3830604 (not res!1550810)) b!3830609))

(assert (= (and b!3830609 res!1550813) b!3830608))

(assert (= (and b!3830604 res!1550811) b!3830603))

(assert (= (and b!3830603 (not res!1550809)) b!3830606))

(assert (= (and b!3830606 res!1550812) b!3830602))

(declare-fun m!4385127 () Bool)

(assert (=> b!3830604 m!4385127))

(declare-fun m!4385129 () Bool)

(assert (=> d!1137210 m!4385129))

(assert (=> d!1137210 m!4380369))

(declare-fun m!4385131 () Bool)

(assert (=> d!1137210 m!4385131))

(assert (=> d!1137210 m!4379483))

(assert (=> d!1137210 m!4380369))

(declare-fun m!4385133 () Bool)

(assert (=> d!1137210 m!4385133))

(assert (=> d!1137210 m!4385131))

(declare-fun m!4385135 () Bool)

(assert (=> d!1137210 m!4385135))

(assert (=> d!1137210 m!4385127))

(declare-fun m!4385137 () Bool)

(assert (=> b!3830606 m!4385137))

(assert (=> b!3830606 m!4380369))

(assert (=> b!3830606 m!4380369))

(assert (=> b!3830606 m!4383685))

(assert (=> b!3830606 m!4383685))

(declare-fun m!4385139 () Bool)

(assert (=> b!3830606 m!4385139))

(assert (=> b!3830608 m!4385131))

(declare-fun m!4385141 () Bool)

(assert (=> b!3830608 m!4385141))

(assert (=> b!3830608 m!4385137))

(assert (=> b!3830608 m!4380369))

(assert (=> b!3830608 m!4385131))

(assert (=> b!3830608 m!4380369))

(declare-fun m!4385143 () Bool)

(assert (=> b!3830608 m!4385143))

(declare-fun m!4385145 () Bool)

(assert (=> bm!281471 m!4385145))

(assert (=> b!3830603 m!4385127))

(assert (=> b!3830609 m!4385137))

(assert (=> b!3830609 m!4380369))

(assert (=> b!3830609 m!4380369))

(assert (=> b!3830609 m!4385131))

(assert (=> b!3830609 m!4385131))

(assert (=> b!3830609 m!4385141))

(declare-fun m!4385147 () Bool)

(assert (=> b!3830607 m!4385147))

(assert (=> b!3830602 m!4383685))

(assert (=> b!3830602 m!4385139))

(assert (=> b!3830602 m!4380369))

(assert (=> b!3830602 m!4383685))

(assert (=> b!3830602 m!4385137))

(assert (=> b!3830602 m!4380369))

(assert (=> b!3830602 m!4385143))

(assert (=> d!1135636 d!1137210))

(assert (=> b!3828538 d!1136700))

(declare-fun d!1137212 () Bool)

(assert (=> d!1137212 (= (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328863)))) (innerList!12482 (xs!15716 (c!667180 (_2!22945 lt!1328863)))))))

(assert (=> b!3828368 d!1137212))

(declare-fun b!3830610 () Bool)

(declare-fun e!2365616 () Int)

(assert (=> b!3830610 (= e!2365616 0)))

(declare-fun d!1137214 () Bool)

(declare-fun e!2365613 () Bool)

(assert (=> d!1137214 e!2365613))

(declare-fun res!1550815 () Bool)

(assert (=> d!1137214 (=> (not res!1550815) (not e!2365613))))

(declare-fun lt!1330187 () List!40547)

(assert (=> d!1137214 (= res!1550815 (= ((_ map implies) (content!5990 lt!1330187) (content!5990 (t!308874 lt!1328860))) ((as const (InoxSet C!22444)) true)))))

(declare-fun e!2365615 () List!40547)

(assert (=> d!1137214 (= lt!1330187 e!2365615)))

(declare-fun c!667976 () Bool)

(assert (=> d!1137214 (= c!667976 ((_ is Nil!40423) (t!308874 lt!1328860)))))

(assert (=> d!1137214 (= (drop!2133 (t!308874 lt!1328860) (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1)) lt!1330187)))

(declare-fun b!3830611 () Bool)

(declare-fun e!2365614 () Int)

(assert (=> b!3830611 (= e!2365613 (= (size!30470 lt!1330187) e!2365614))))

(declare-fun c!667979 () Bool)

(assert (=> b!3830611 (= c!667979 (<= (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1) 0))))

(declare-fun b!3830612 () Bool)

(assert (=> b!3830612 (= e!2365614 e!2365616)))

(declare-fun call!281477 () Int)

(declare-fun c!667978 () Bool)

(assert (=> b!3830612 (= c!667978 (>= (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1) call!281477))))

(declare-fun b!3830613 () Bool)

(assert (=> b!3830613 (= e!2365616 (- call!281477 (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1)))))

(declare-fun b!3830614 () Bool)

(assert (=> b!3830614 (= e!2365615 Nil!40423)))

(declare-fun b!3830615 () Bool)

(assert (=> b!3830615 (= e!2365614 call!281477)))

(declare-fun b!3830616 () Bool)

(declare-fun e!2365612 () List!40547)

(assert (=> b!3830616 (= e!2365612 (t!308874 lt!1328860))))

(declare-fun bm!281472 () Bool)

(assert (=> bm!281472 (= call!281477 (size!30470 (t!308874 lt!1328860)))))

(declare-fun b!3830617 () Bool)

(assert (=> b!3830617 (= e!2365612 (drop!2133 (t!308874 (t!308874 lt!1328860)) (- (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1) 1)))))

(declare-fun b!3830618 () Bool)

(assert (=> b!3830618 (= e!2365615 e!2365612)))

(declare-fun c!667977 () Bool)

(assert (=> b!3830618 (= c!667977 (<= (- (- (size!30470 lt!1328860) (size!30470 lt!1328865)) 1) 0))))

(assert (= (and d!1137214 c!667976) b!3830614))

(assert (= (and d!1137214 (not c!667976)) b!3830618))

(assert (= (and b!3830618 c!667977) b!3830616))

(assert (= (and b!3830618 (not c!667977)) b!3830617))

(assert (= (and d!1137214 res!1550815) b!3830611))

(assert (= (and b!3830611 c!667979) b!3830615))

(assert (= (and b!3830611 (not c!667979)) b!3830612))

(assert (= (and b!3830612 c!667978) b!3830610))

(assert (= (and b!3830612 (not c!667978)) b!3830613))

(assert (= (or b!3830615 b!3830612 b!3830613) bm!281472))

(declare-fun m!4385149 () Bool)

(assert (=> d!1137214 m!4385149))

(assert (=> d!1137214 m!4384125))

(declare-fun m!4385151 () Bool)

(assert (=> b!3830611 m!4385151))

(assert (=> bm!281472 m!4380971))

(declare-fun m!4385153 () Bool)

(assert (=> b!3830617 m!4385153))

(assert (=> b!3828463 d!1137214))

(declare-fun b!3830620 () Bool)

(declare-fun e!2365617 () List!40548)

(declare-fun e!2365618 () List!40548)

(assert (=> b!3830620 (= e!2365617 e!2365618)))

(declare-fun c!667981 () Bool)

(assert (=> b!3830620 (= c!667981 ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328950))))))

(declare-fun b!3830622 () Bool)

(assert (=> b!3830622 (= e!2365618 (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328950)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328950))))))))

(declare-fun d!1137216 () Bool)

(declare-fun c!667980 () Bool)

(assert (=> d!1137216 (= c!667980 ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328950))))))

(assert (=> d!1137216 (= (list!15060 (c!667181 (_1!22945 lt!1328950))) e!2365617)))

(declare-fun b!3830621 () Bool)

(assert (=> b!3830621 (= e!2365618 (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328950)))))))

(declare-fun b!3830619 () Bool)

(assert (=> b!3830619 (= e!2365617 Nil!40424)))

(assert (= (and d!1137216 c!667980) b!3830619))

(assert (= (and d!1137216 (not c!667980)) b!3830620))

(assert (= (and b!3830620 c!667981) b!3830621))

(assert (= (and b!3830620 (not c!667981)) b!3830622))

(declare-fun m!4385155 () Bool)

(assert (=> b!3830622 m!4385155))

(declare-fun m!4385157 () Bool)

(assert (=> b!3830622 m!4385157))

(assert (=> b!3830622 m!4385155))

(assert (=> b!3830622 m!4385157))

(declare-fun m!4385159 () Bool)

(assert (=> b!3830622 m!4385159))

(declare-fun m!4385161 () Bool)

(assert (=> b!3830621 m!4385161))

(assert (=> d!1135762 d!1137216))

(declare-fun d!1137218 () Bool)

(declare-fun e!2365619 () Bool)

(assert (=> d!1137218 e!2365619))

(declare-fun res!1550816 () Bool)

(assert (=> d!1137218 (=> (not res!1550816) (not e!2365619))))

(assert (=> d!1137218 (= res!1550816 (isBalanced!3601 (prepend!1382 (c!667181 (_1!22945 lt!1329196)) (_1!22946 (v!38923 lt!1329198)))))))

(declare-fun lt!1330188 () BalanceConc!24440)

(assert (=> d!1137218 (= lt!1330188 (BalanceConc!24441 (prepend!1382 (c!667181 (_1!22945 lt!1329196)) (_1!22946 (v!38923 lt!1329198)))))))

(assert (=> d!1137218 (= (prepend!1380 (_1!22945 lt!1329196) (_1!22946 (v!38923 lt!1329198))) lt!1330188)))

(declare-fun b!3830623 () Bool)

(assert (=> b!3830623 (= e!2365619 (= (list!15056 lt!1330188) (Cons!40424 (_1!22946 (v!38923 lt!1329198)) (list!15056 (_1!22945 lt!1329196)))))))

(assert (= (and d!1137218 res!1550816) b!3830623))

(declare-fun m!4385163 () Bool)

(assert (=> d!1137218 m!4385163))

(assert (=> d!1137218 m!4385163))

(declare-fun m!4385165 () Bool)

(assert (=> d!1137218 m!4385165))

(declare-fun m!4385167 () Bool)

(assert (=> b!3830623 m!4385167))

(declare-fun m!4385169 () Bool)

(assert (=> b!3830623 m!4385169))

(assert (=> b!3828012 d!1137218))

(declare-fun b!3830624 () Bool)

(declare-fun e!2365620 () Bool)

(declare-fun lt!1330190 () tuple2!39622)

(assert (=> b!3830624 (= e!2365620 (= (list!15055 (_2!22945 lt!1330190)) (list!15055 (_2!22946 (v!38923 lt!1329198)))))))

(declare-fun d!1137220 () Bool)

(declare-fun e!2365623 () Bool)

(assert (=> d!1137220 e!2365623))

(declare-fun res!1550819 () Bool)

(assert (=> d!1137220 (=> (not res!1550819) (not e!2365623))))

(assert (=> d!1137220 (= res!1550819 e!2365620)))

(declare-fun c!667983 () Bool)

(assert (=> d!1137220 (= c!667983 (> (size!30471 (_1!22945 lt!1330190)) 0))))

(declare-fun e!2365622 () tuple2!39622)

(assert (=> d!1137220 (= lt!1330190 e!2365622)))

(declare-fun c!667982 () Bool)

(declare-fun lt!1330191 () Option!8648)

(assert (=> d!1137220 (= c!667982 ((_ is Some!8647) lt!1330191))))

(assert (=> d!1137220 (= lt!1330191 (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329198))))))

(assert (=> d!1137220 (= (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1329198))) lt!1330190)))

(declare-fun b!3830625 () Bool)

(declare-fun e!2365621 () Bool)

(assert (=> b!3830625 (= e!2365621 (not (isEmpty!23852 (_1!22945 lt!1330190))))))

(declare-fun b!3830626 () Bool)

(declare-fun lt!1330189 () tuple2!39622)

(assert (=> b!3830626 (= e!2365622 (tuple2!39623 (prepend!1380 (_1!22945 lt!1330189) (_1!22946 (v!38923 lt!1330191))) (_2!22945 lt!1330189)))))

(assert (=> b!3830626 (= lt!1330189 (lexRec!837 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1330191))))))

(declare-fun b!3830627 () Bool)

(assert (=> b!3830627 (= e!2365622 (tuple2!39623 (BalanceConc!24441 Empty!12423) (_2!22946 (v!38923 lt!1329198))))))

(declare-fun b!3830628 () Bool)

(assert (=> b!3830628 (= e!2365620 e!2365621)))

(declare-fun res!1550817 () Bool)

(assert (=> b!3830628 (= res!1550817 (< (size!30472 (_2!22945 lt!1330190)) (size!30472 (_2!22946 (v!38923 lt!1329198)))))))

(assert (=> b!3830628 (=> (not res!1550817) (not e!2365621))))

(declare-fun b!3830629 () Bool)

(assert (=> b!3830629 (= e!2365623 (= (list!15055 (_2!22945 lt!1330190)) (_2!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329198)))))))))

(declare-fun b!3830630 () Bool)

(declare-fun res!1550818 () Bool)

(assert (=> b!3830630 (=> (not res!1550818) (not e!2365623))))

(assert (=> b!3830630 (= res!1550818 (= (list!15056 (_1!22945 lt!1330190)) (_1!22950 (lexList!1583 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1329198)))))))))

(assert (= (and d!1137220 c!667982) b!3830626))

(assert (= (and d!1137220 (not c!667982)) b!3830627))

(assert (= (and d!1137220 c!667983) b!3830628))

(assert (= (and d!1137220 (not c!667983)) b!3830624))

(assert (= (and b!3830628 res!1550817) b!3830625))

(assert (= (and d!1137220 res!1550819) b!3830630))

(assert (= (and b!3830630 res!1550818) b!3830629))

(declare-fun m!4385171 () Bool)

(assert (=> d!1137220 m!4385171))

(declare-fun m!4385173 () Bool)

(assert (=> d!1137220 m!4385173))

(declare-fun m!4385175 () Bool)

(assert (=> b!3830624 m!4385175))

(declare-fun m!4385177 () Bool)

(assert (=> b!3830624 m!4385177))

(declare-fun m!4385179 () Bool)

(assert (=> b!3830626 m!4385179))

(declare-fun m!4385181 () Bool)

(assert (=> b!3830626 m!4385181))

(declare-fun m!4385183 () Bool)

(assert (=> b!3830628 m!4385183))

(declare-fun m!4385185 () Bool)

(assert (=> b!3830628 m!4385185))

(declare-fun m!4385187 () Bool)

(assert (=> b!3830630 m!4385187))

(assert (=> b!3830630 m!4385177))

(assert (=> b!3830630 m!4385177))

(declare-fun m!4385189 () Bool)

(assert (=> b!3830630 m!4385189))

(assert (=> b!3830629 m!4385175))

(assert (=> b!3830629 m!4385177))

(assert (=> b!3830629 m!4385177))

(assert (=> b!3830629 m!4385189))

(declare-fun m!4385191 () Bool)

(assert (=> b!3830625 m!4385191))

(assert (=> b!3828012 d!1137220))

(assert (=> b!3827391 d!1135826))

(assert (=> b!3827391 d!1135828))

(declare-fun d!1137222 () Bool)

(declare-fun lt!1330192 () Int)

(assert (=> d!1137222 (>= lt!1330192 0)))

(declare-fun e!2365624 () Int)

(assert (=> d!1137222 (= lt!1330192 e!2365624)))

(declare-fun c!667984 () Bool)

(assert (=> d!1137222 (= c!667984 ((_ is Nil!40423) lt!1328934))))

(assert (=> d!1137222 (= (size!30470 lt!1328934) lt!1330192)))

(declare-fun b!3830631 () Bool)

(assert (=> b!3830631 (= e!2365624 0)))

(declare-fun b!3830632 () Bool)

(assert (=> b!3830632 (= e!2365624 (+ 1 (size!30470 (t!308874 lt!1328934))))))

(assert (= (and d!1137222 c!667984) b!3830631))

(assert (= (and d!1137222 (not c!667984)) b!3830632))

(declare-fun m!4385193 () Bool)

(assert (=> b!3830632 m!4385193))

(assert (=> b!3828453 d!1137222))

(declare-fun d!1137224 () Bool)

(declare-fun lt!1330193 () Int)

(assert (=> d!1137224 (>= lt!1330193 0)))

(declare-fun e!2365625 () Int)

(assert (=> d!1137224 (= lt!1330193 e!2365625)))

(declare-fun c!667985 () Bool)

(assert (=> d!1137224 (= c!667985 ((_ is Nil!40423) lt!1328931))))

(assert (=> d!1137224 (= (size!30470 lt!1328931) lt!1330193)))

(declare-fun b!3830633 () Bool)

(assert (=> b!3830633 (= e!2365625 0)))

(declare-fun b!3830634 () Bool)

(assert (=> b!3830634 (= e!2365625 (+ 1 (size!30470 (t!308874 lt!1328931))))))

(assert (= (and d!1137224 c!667985) b!3830633))

(assert (= (and d!1137224 (not c!667985)) b!3830634))

(declare-fun m!4385195 () Bool)

(assert (=> b!3830634 m!4385195))

(assert (=> b!3828453 d!1137224))

(declare-fun d!1137226 () Bool)

(declare-fun lt!1330194 () Int)

(assert (=> d!1137226 (>= lt!1330194 0)))

(declare-fun e!2365626 () Int)

(assert (=> d!1137226 (= lt!1330194 e!2365626)))

(declare-fun c!667986 () Bool)

(assert (=> d!1137226 (= c!667986 ((_ is Nil!40423) (_2!22950 lt!1329215)))))

(assert (=> d!1137226 (= (size!30470 (_2!22950 lt!1329215)) lt!1330194)))

(declare-fun b!3830635 () Bool)

(assert (=> b!3830635 (= e!2365626 0)))

(declare-fun b!3830636 () Bool)

(assert (=> b!3830636 (= e!2365626 (+ 1 (size!30470 (t!308874 (_2!22950 lt!1329215)))))))

(assert (= (and d!1137226 c!667986) b!3830635))

(assert (= (and d!1137226 (not c!667986)) b!3830636))

(declare-fun m!4385197 () Bool)

(assert (=> b!3830636 m!4385197))

(assert (=> b!3828069 d!1137226))

(assert (=> b!3828069 d!1136670))

(declare-fun d!1137228 () Bool)

(declare-fun c!667987 () Bool)

(assert (=> d!1137228 (= c!667987 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun e!2365627 () Bool)

(assert (=> d!1137228 (= (inv!54485 (left!31275 (right!31605 (c!667180 totalInput!335)))) e!2365627)))

(declare-fun b!3830637 () Bool)

(assert (=> b!3830637 (= e!2365627 (inv!54497 (left!31275 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun b!3830638 () Bool)

(declare-fun e!2365628 () Bool)

(assert (=> b!3830638 (= e!2365627 e!2365628)))

(declare-fun res!1550820 () Bool)

(assert (=> b!3830638 (= res!1550820 (not ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 totalInput!335))))))))

(assert (=> b!3830638 (=> res!1550820 e!2365628)))

(declare-fun b!3830639 () Bool)

(assert (=> b!3830639 (= e!2365628 (inv!54498 (left!31275 (right!31605 (c!667180 totalInput!335)))))))

(assert (= (and d!1137228 c!667987) b!3830637))

(assert (= (and d!1137228 (not c!667987)) b!3830638))

(assert (= (and b!3830638 (not res!1550820)) b!3830639))

(declare-fun m!4385199 () Bool)

(assert (=> b!3830637 m!4385199))

(declare-fun m!4385201 () Bool)

(assert (=> b!3830639 m!4385201))

(assert (=> b!3828562 d!1137228))

(declare-fun d!1137230 () Bool)

(declare-fun c!667988 () Bool)

(assert (=> d!1137230 (= c!667988 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun e!2365629 () Bool)

(assert (=> d!1137230 (= (inv!54485 (right!31605 (right!31605 (c!667180 totalInput!335)))) e!2365629)))

(declare-fun b!3830640 () Bool)

(assert (=> b!3830640 (= e!2365629 (inv!54497 (right!31605 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun b!3830641 () Bool)

(declare-fun e!2365630 () Bool)

(assert (=> b!3830641 (= e!2365629 e!2365630)))

(declare-fun res!1550821 () Bool)

(assert (=> b!3830641 (= res!1550821 (not ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 totalInput!335))))))))

(assert (=> b!3830641 (=> res!1550821 e!2365630)))

(declare-fun b!3830642 () Bool)

(assert (=> b!3830642 (= e!2365630 (inv!54498 (right!31605 (right!31605 (c!667180 totalInput!335)))))))

(assert (= (and d!1137230 c!667988) b!3830640))

(assert (= (and d!1137230 (not c!667988)) b!3830641))

(assert (= (and b!3830641 (not res!1550821)) b!3830642))

(declare-fun m!4385203 () Bool)

(assert (=> b!3830640 m!4385203))

(declare-fun m!4385205 () Bool)

(assert (=> b!3830642 m!4385205))

(assert (=> b!3828562 d!1137230))

(declare-fun bs!582230 () Bool)

(declare-fun b!3830643 () Bool)

(assert (= bs!582230 (and b!3830643 b!3829941)))

(declare-fun lambda!125972 () Int)

(assert (=> bs!582230 (= lambda!125972 lambda!125965)))

(declare-fun bs!582231 () Bool)

(assert (= bs!582231 (and b!3830643 d!1135788)))

(assert (=> bs!582231 (= lambda!125972 lambda!125942)))

(declare-fun bs!582232 () Bool)

(assert (= bs!582232 (and b!3830643 d!1137200)))

(assert (=> bs!582232 (= (and (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))))) (= lambda!125972 lambda!125971))))

(declare-fun bs!582233 () Bool)

(assert (= bs!582233 (and b!3830643 b!3830124)))

(assert (=> bs!582233 (= lambda!125972 lambda!125966)))

(declare-fun bs!582234 () Bool)

(assert (= bs!582234 (and b!3830643 b!3827975)))

(assert (=> bs!582234 (= lambda!125972 lambda!125925)))

(declare-fun bs!582235 () Bool)

(assert (= bs!582235 (and b!3830643 b!3830427)))

(assert (=> bs!582235 (= (and (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265))))) (= (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))))) (= lambda!125972 lambda!125970))))

(declare-fun b!3830650 () Bool)

(declare-fun e!2365637 () Bool)

(assert (=> b!3830650 (= e!2365637 true)))

(declare-fun b!3830649 () Bool)

(declare-fun e!2365636 () Bool)

(assert (=> b!3830649 (= e!2365636 e!2365637)))

(assert (=> b!3830643 e!2365636))

(assert (= b!3830649 b!3830650))

(assert (= b!3830643 b!3830649))

(assert (=> b!3830650 (< (dynLambda!17506 order!22087 (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125972))))

(assert (=> b!3830650 (< (dynLambda!17508 order!22091 (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) (dynLambda!17507 order!22089 lambda!125972))))

(declare-fun b!3830644 () Bool)

(declare-fun e!2365632 () Bool)

(declare-fun e!2365634 () Bool)

(assert (=> b!3830644 (= e!2365632 e!2365634)))

(declare-fun res!1550825 () Bool)

(assert (=> b!3830644 (=> res!1550825 e!2365634)))

(declare-fun lt!1330199 () Option!8648)

(assert (=> b!3830644 (= res!1550825 (not (isDefined!6810 lt!1330199)))))

(declare-fun b!3830645 () Bool)

(declare-fun e!2365633 () Bool)

(assert (=> b!3830645 (= e!2365634 e!2365633)))

(declare-fun res!1550823 () Bool)

(assert (=> b!3830645 (=> (not res!1550823) (not e!2365633))))

(assert (=> b!3830645 (= res!1550823 (= (_1!22946 (get!13412 lt!1330199)) (_1!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3830646 () Bool)

(declare-fun e!2365631 () Option!8648)

(assert (=> b!3830646 (= e!2365631 None!8647)))

(declare-fun d!1137232 () Bool)

(assert (=> d!1137232 e!2365632))

(declare-fun res!1550824 () Bool)

(assert (=> d!1137232 (=> (not res!1550824) (not e!2365632))))

(assert (=> d!1137232 (= res!1550824 (= (isDefined!6810 lt!1330199) (isDefined!6811 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678)))))))

(assert (=> d!1137232 (= lt!1330199 e!2365631)))

(declare-fun c!667989 () Bool)

(declare-fun lt!1330197 () tuple2!39634)

(assert (=> d!1137232 (= c!667989 (isEmpty!23860 (_1!22951 lt!1330197)))))

(assert (=> d!1137232 (= lt!1330197 (findLongestMatchWithZipperSequence!231 (regex!6224 (h!45845 rules!1265)) input!678))))

(assert (=> d!1137232 (ruleValid!2185 thiss!11876 (h!45845 rules!1265))))

(assert (=> d!1137232 (= (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) input!678) lt!1330199)))

(assert (=> b!3830643 (= e!2365631 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1330197)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1330197)) (list!15055 (_1!22951 lt!1330197))) (_2!22951 lt!1330197))))))

(declare-fun lt!1330196 () List!40547)

(assert (=> b!3830643 (= lt!1330196 (list!15055 input!678))))

(declare-fun lt!1330200 () Unit!58192)

(assert (=> b!3830643 (= lt!1330200 (longestMatchIsAcceptedByMatchOrIsEmpty!1118 (regex!6224 (h!45845 rules!1265)) lt!1330196))))

(declare-fun res!1550822 () Bool)

(assert (=> b!3830643 (= res!1550822 (isEmpty!23850 (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1330196 lt!1330196 (size!30470 lt!1330196)))))))

(declare-fun e!2365635 () Bool)

(assert (=> b!3830643 (=> res!1550822 e!2365635)))

(assert (=> b!3830643 e!2365635))

(declare-fun lt!1330201 () Unit!58192)

(assert (=> b!3830643 (= lt!1330201 lt!1330200)))

(declare-fun lt!1330198 () Unit!58192)

(assert (=> b!3830643 (= lt!1330198 (lemmaInv!866 (transformation!6224 (h!45845 rules!1265))))))

(declare-fun lt!1330195 () Unit!58192)

(assert (=> b!3830643 (= lt!1330195 (ForallOf!777 lambda!125972 (_1!22951 lt!1330197)))))

(declare-fun lt!1330204 () Unit!58192)

(assert (=> b!3830643 (= lt!1330204 (ForallOf!777 lambda!125972 (seqFromList!4507 (list!15055 (_1!22951 lt!1330197)))))))

(declare-fun lt!1330203 () Option!8648)

(assert (=> b!3830643 (= lt!1330203 (Some!8647 (tuple2!39625 (Token!11587 (apply!9479 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1330197)) (h!45845 rules!1265) (size!30472 (_1!22951 lt!1330197)) (list!15055 (_1!22951 lt!1330197))) (_2!22951 lt!1330197))))))

(declare-fun lt!1330202 () Unit!58192)

(assert (=> b!3830643 (= lt!1330202 (lemmaEqSameImage!1050 (transformation!6224 (h!45845 rules!1265)) (_1!22951 lt!1330197) (seqFromList!4507 (list!15055 (_1!22951 lt!1330197)))))))

(declare-fun b!3830647 () Bool)

(assert (=> b!3830647 (= e!2365633 (= (list!15055 (_2!22946 (get!13412 lt!1330199))) (_2!22949 (get!13413 (maxPrefixOneRule!2223 thiss!11876 (h!45845 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3830648 () Bool)

(assert (=> b!3830648 (= e!2365635 (matchR!5322 (regex!6224 (h!45845 rules!1265)) (_1!22952 (findLongestMatchInner!1145 (regex!6224 (h!45845 rules!1265)) Nil!40423 (size!30470 Nil!40423) lt!1330196 lt!1330196 (size!30470 lt!1330196)))))))

(assert (= (and d!1137232 c!667989) b!3830646))

(assert (= (and d!1137232 (not c!667989)) b!3830643))

(assert (= (and b!3830643 (not res!1550822)) b!3830648))

(assert (= (and d!1137232 res!1550824) b!3830644))

(assert (= (and b!3830644 (not res!1550825)) b!3830645))

(assert (= (and b!3830645 res!1550823) b!3830647))

(declare-fun m!4385207 () Bool)

(assert (=> b!3830647 m!4385207))

(assert (=> b!3830647 m!4379223))

(assert (=> b!3830647 m!4379941))

(declare-fun m!4385209 () Bool)

(assert (=> b!3830647 m!4385209))

(assert (=> b!3830647 m!4379941))

(assert (=> b!3830647 m!4380295))

(assert (=> b!3830647 m!4379223))

(assert (=> b!3830648 m!4380267))

(declare-fun m!4385211 () Bool)

(assert (=> b!3830648 m!4385211))

(assert (=> b!3830648 m!4380267))

(assert (=> b!3830648 m!4385211))

(declare-fun m!4385213 () Bool)

(assert (=> b!3830648 m!4385213))

(declare-fun m!4385215 () Bool)

(assert (=> b!3830648 m!4385215))

(assert (=> d!1137232 m!4380305))

(assert (=> d!1137232 m!4379223))

(assert (=> d!1137232 m!4379941))

(assert (=> d!1137232 m!4379941))

(assert (=> d!1137232 m!4380303))

(declare-fun m!4385217 () Bool)

(assert (=> d!1137232 m!4385217))

(declare-fun m!4385219 () Bool)

(assert (=> d!1137232 m!4385219))

(declare-fun m!4385221 () Bool)

(assert (=> d!1137232 m!4385221))

(assert (=> d!1137232 m!4379223))

(assert (=> b!3830645 m!4385209))

(assert (=> b!3830645 m!4379223))

(assert (=> b!3830645 m!4379223))

(assert (=> b!3830645 m!4379941))

(assert (=> b!3830645 m!4379941))

(assert (=> b!3830645 m!4380295))

(assert (=> b!3830644 m!4385217))

(assert (=> b!3830643 m!4380267))

(declare-fun m!4385223 () Bool)

(assert (=> b!3830643 m!4385223))

(declare-fun m!4385225 () Bool)

(assert (=> b!3830643 m!4385225))

(declare-fun m!4385227 () Bool)

(assert (=> b!3830643 m!4385227))

(declare-fun m!4385229 () Bool)

(assert (=> b!3830643 m!4385229))

(declare-fun m!4385231 () Bool)

(assert (=> b!3830643 m!4385231))

(declare-fun m!4385233 () Bool)

(assert (=> b!3830643 m!4385233))

(assert (=> b!3830643 m!4380267))

(assert (=> b!3830643 m!4385211))

(assert (=> b!3830643 m!4385213))

(assert (=> b!3830643 m!4385233))

(assert (=> b!3830643 m!4385227))

(assert (=> b!3830643 m!4385211))

(declare-fun m!4385235 () Bool)

(assert (=> b!3830643 m!4385235))

(assert (=> b!3830643 m!4385227))

(declare-fun m!4385237 () Bool)

(assert (=> b!3830643 m!4385237))

(assert (=> b!3830643 m!4379223))

(assert (=> b!3830643 m!4380281))

(declare-fun m!4385239 () Bool)

(assert (=> b!3830643 m!4385239))

(assert (=> bm!281294 d!1137232))

(declare-fun d!1137234 () Bool)

(assert (=> d!1137234 (= (inv!54500 (xs!15716 (right!31605 (c!667180 totalInput!335)))) (<= (size!30470 (innerList!12482 (xs!15716 (right!31605 (c!667180 totalInput!335))))) 2147483647))))

(declare-fun bs!582236 () Bool)

(assert (= bs!582236 d!1137234))

(declare-fun m!4385241 () Bool)

(assert (=> bs!582236 m!4385241))

(assert (=> b!3828563 d!1137234))

(assert (=> b!3828469 d!1136644))

(assert (=> b!3828469 d!1135520))

(assert (=> b!3828469 d!1135516))

(assert (=> b!3828469 d!1135436))

(declare-fun d!1137236 () Bool)

(declare-fun res!1550826 () Bool)

(declare-fun e!2365638 () Bool)

(assert (=> d!1137236 (=> (not res!1550826) (not e!2365638))))

(assert (=> d!1137236 (= res!1550826 (= (csize!25076 (right!31606 (c!667181 acc!335))) (+ (size!30477 (left!31276 (right!31606 (c!667181 acc!335)))) (size!30477 (right!31606 (right!31606 (c!667181 acc!335)))))))))

(assert (=> d!1137236 (= (inv!54495 (right!31606 (c!667181 acc!335))) e!2365638)))

(declare-fun b!3830651 () Bool)

(declare-fun res!1550827 () Bool)

(assert (=> b!3830651 (=> (not res!1550827) (not e!2365638))))

(assert (=> b!3830651 (= res!1550827 (and (not (= (left!31276 (right!31606 (c!667181 acc!335))) Empty!12423)) (not (= (right!31606 (right!31606 (c!667181 acc!335))) Empty!12423))))))

(declare-fun b!3830652 () Bool)

(declare-fun res!1550828 () Bool)

(assert (=> b!3830652 (=> (not res!1550828) (not e!2365638))))

(assert (=> b!3830652 (= res!1550828 (= (cheight!12634 (right!31606 (c!667181 acc!335))) (+ (max!0 (height!1816 (left!31276 (right!31606 (c!667181 acc!335)))) (height!1816 (right!31606 (right!31606 (c!667181 acc!335))))) 1)))))

(declare-fun b!3830653 () Bool)

(assert (=> b!3830653 (= e!2365638 (<= 0 (cheight!12634 (right!31606 (c!667181 acc!335)))))))

(assert (= (and d!1137236 res!1550826) b!3830651))

(assert (= (and b!3830651 res!1550827) b!3830652))

(assert (= (and b!3830652 res!1550828) b!3830653))

(declare-fun m!4385243 () Bool)

(assert (=> d!1137236 m!4385243))

(declare-fun m!4385245 () Bool)

(assert (=> d!1137236 m!4385245))

(declare-fun m!4385247 () Bool)

(assert (=> b!3830652 m!4385247))

(declare-fun m!4385249 () Bool)

(assert (=> b!3830652 m!4385249))

(assert (=> b!3830652 m!4385247))

(assert (=> b!3830652 m!4385249))

(declare-fun m!4385251 () Bool)

(assert (=> b!3830652 m!4385251))

(assert (=> b!3828490 d!1137236))

(declare-fun d!1137238 () Bool)

(declare-fun c!667990 () Bool)

(assert (=> d!1137238 (= c!667990 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 treated!13)))))))

(declare-fun e!2365639 () Bool)

(assert (=> d!1137238 (= (inv!54485 (left!31275 (right!31605 (c!667180 treated!13)))) e!2365639)))

(declare-fun b!3830654 () Bool)

(assert (=> b!3830654 (= e!2365639 (inv!54497 (left!31275 (right!31605 (c!667180 treated!13)))))))

(declare-fun b!3830655 () Bool)

(declare-fun e!2365640 () Bool)

(assert (=> b!3830655 (= e!2365639 e!2365640)))

(declare-fun res!1550829 () Bool)

(assert (=> b!3830655 (= res!1550829 (not ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 treated!13))))))))

(assert (=> b!3830655 (=> res!1550829 e!2365640)))

(declare-fun b!3830656 () Bool)

(assert (=> b!3830656 (= e!2365640 (inv!54498 (left!31275 (right!31605 (c!667180 treated!13)))))))

(assert (= (and d!1137238 c!667990) b!3830654))

(assert (= (and d!1137238 (not c!667990)) b!3830655))

(assert (= (and b!3830655 (not res!1550829)) b!3830656))

(declare-fun m!4385253 () Bool)

(assert (=> b!3830654 m!4385253))

(declare-fun m!4385255 () Bool)

(assert (=> b!3830656 m!4385255))

(assert (=> b!3828603 d!1137238))

(declare-fun d!1137240 () Bool)

(declare-fun c!667991 () Bool)

(assert (=> d!1137240 (= c!667991 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 treated!13)))))))

(declare-fun e!2365641 () Bool)

(assert (=> d!1137240 (= (inv!54485 (right!31605 (right!31605 (c!667180 treated!13)))) e!2365641)))

(declare-fun b!3830657 () Bool)

(assert (=> b!3830657 (= e!2365641 (inv!54497 (right!31605 (right!31605 (c!667180 treated!13)))))))

(declare-fun b!3830658 () Bool)

(declare-fun e!2365642 () Bool)

(assert (=> b!3830658 (= e!2365641 e!2365642)))

(declare-fun res!1550830 () Bool)

(assert (=> b!3830658 (= res!1550830 (not ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 treated!13))))))))

(assert (=> b!3830658 (=> res!1550830 e!2365642)))

(declare-fun b!3830659 () Bool)

(assert (=> b!3830659 (= e!2365642 (inv!54498 (right!31605 (right!31605 (c!667180 treated!13)))))))

(assert (= (and d!1137240 c!667991) b!3830657))

(assert (= (and d!1137240 (not c!667991)) b!3830658))

(assert (= (and b!3830658 (not res!1550830)) b!3830659))

(declare-fun m!4385257 () Bool)

(assert (=> b!3830657 m!4385257))

(declare-fun m!4385259 () Bool)

(assert (=> b!3830659 m!4385259))

(assert (=> b!3828603 d!1137240))

(declare-fun b!3830661 () Bool)

(declare-fun e!2365643 () List!40548)

(declare-fun e!2365644 () List!40548)

(assert (=> b!3830661 (= e!2365643 e!2365644)))

(declare-fun c!667993 () Bool)

(assert (=> b!3830661 (= c!667993 ((_ is Leaf!19233) lt!1329040))))

(declare-fun b!3830663 () Bool)

(assert (=> b!3830663 (= e!2365644 (++!10192 (list!15060 (left!31276 lt!1329040)) (list!15060 (right!31606 lt!1329040))))))

(declare-fun d!1137242 () Bool)

(declare-fun c!667992 () Bool)

(assert (=> d!1137242 (= c!667992 ((_ is Empty!12423) lt!1329040))))

(assert (=> d!1137242 (= (list!15060 lt!1329040) e!2365643)))

(declare-fun b!3830662 () Bool)

(assert (=> b!3830662 (= e!2365644 (list!15064 (xs!15717 lt!1329040)))))

(declare-fun b!3830660 () Bool)

(assert (=> b!3830660 (= e!2365643 Nil!40424)))

(assert (= (and d!1137242 c!667992) b!3830660))

(assert (= (and d!1137242 (not c!667992)) b!3830661))

(assert (= (and b!3830661 c!667993) b!3830662))

(assert (= (and b!3830661 (not c!667993)) b!3830663))

(declare-fun m!4385261 () Bool)

(assert (=> b!3830663 m!4385261))

(declare-fun m!4385263 () Bool)

(assert (=> b!3830663 m!4385263))

(assert (=> b!3830663 m!4385261))

(assert (=> b!3830663 m!4385263))

(declare-fun m!4385265 () Bool)

(assert (=> b!3830663 m!4385265))

(declare-fun m!4385267 () Bool)

(assert (=> b!3830662 m!4385267))

(assert (=> b!3827689 d!1137242))

(declare-fun b!3830666 () Bool)

(declare-fun res!1550831 () Bool)

(declare-fun e!2365646 () Bool)

(assert (=> b!3830666 (=> (not res!1550831) (not e!2365646))))

(declare-fun lt!1330205 () List!40548)

(assert (=> b!3830666 (= res!1550831 (= (size!30476 lt!1330205) (+ (size!30476 (list!15060 (c!667181 acc!335))) (size!30476 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830667 () Bool)

(assert (=> b!3830667 (= e!2365646 (or (not (= (list!15060 (c!667181 (_1!22945 lt!1328861))) Nil!40424)) (= lt!1330205 (list!15060 (c!667181 acc!335)))))))

(declare-fun b!3830665 () Bool)

(declare-fun e!2365645 () List!40548)

(assert (=> b!3830665 (= e!2365645 (Cons!40424 (h!45844 (list!15060 (c!667181 acc!335))) (++!10192 (t!308875 (list!15060 (c!667181 acc!335))) (list!15060 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830664 () Bool)

(assert (=> b!3830664 (= e!2365645 (list!15060 (c!667181 (_1!22945 lt!1328861))))))

(declare-fun d!1137244 () Bool)

(assert (=> d!1137244 e!2365646))

(declare-fun res!1550832 () Bool)

(assert (=> d!1137244 (=> (not res!1550832) (not e!2365646))))

(assert (=> d!1137244 (= res!1550832 (= (content!5992 lt!1330205) ((_ map or) (content!5992 (list!15060 (c!667181 acc!335))) (content!5992 (list!15060 (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1137244 (= lt!1330205 e!2365645)))

(declare-fun c!667994 () Bool)

(assert (=> d!1137244 (= c!667994 ((_ is Nil!40424) (list!15060 (c!667181 acc!335))))))

(assert (=> d!1137244 (= (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (c!667181 (_1!22945 lt!1328861)))) lt!1330205)))

(assert (= (and d!1137244 c!667994) b!3830664))

(assert (= (and d!1137244 (not c!667994)) b!3830665))

(assert (= (and d!1137244 res!1550832) b!3830666))

(assert (= (and b!3830666 res!1550831) b!3830667))

(declare-fun m!4385269 () Bool)

(assert (=> b!3830666 m!4385269))

(assert (=> b!3830666 m!4379595))

(declare-fun m!4385271 () Bool)

(assert (=> b!3830666 m!4385271))

(assert (=> b!3830666 m!4379847))

(assert (=> b!3830666 m!4384355))

(assert (=> b!3830665 m!4379847))

(declare-fun m!4385273 () Bool)

(assert (=> b!3830665 m!4385273))

(declare-fun m!4385275 () Bool)

(assert (=> d!1137244 m!4385275))

(assert (=> d!1137244 m!4379595))

(declare-fun m!4385277 () Bool)

(assert (=> d!1137244 m!4385277))

(assert (=> d!1137244 m!4379847))

(assert (=> d!1137244 m!4384363))

(assert (=> b!3827689 d!1137244))

(assert (=> b!3827689 d!1135638))

(assert (=> b!3827689 d!1136654))

(declare-fun b!3830668 () Bool)

(declare-fun res!1550835 () Bool)

(declare-fun e!2365648 () Bool)

(assert (=> b!3830668 (=> (not res!1550835) (not e!2365648))))

(assert (=> b!3830668 (= res!1550835 (isBalanced!3601 (left!31276 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830669 () Bool)

(declare-fun res!1550838 () Bool)

(assert (=> b!3830669 (=> (not res!1550838) (not e!2365648))))

(assert (=> b!3830669 (= res!1550838 (<= (- (height!1816 (left!31276 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))) (height!1816 (right!31606 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))) 1))))

(declare-fun b!3830670 () Bool)

(declare-fun res!1550834 () Bool)

(assert (=> b!3830670 (=> (not res!1550834) (not e!2365648))))

(assert (=> b!3830670 (= res!1550834 (isBalanced!3601 (right!31606 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830671 () Bool)

(declare-fun e!2365647 () Bool)

(assert (=> b!3830671 (= e!2365647 e!2365648)))

(declare-fun res!1550837 () Bool)

(assert (=> b!3830671 (=> (not res!1550837) (not e!2365648))))

(assert (=> b!3830671 (= res!1550837 (<= (- 1) (- (height!1816 (left!31276 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))) (height!1816 (right!31606 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))))

(declare-fun d!1137246 () Bool)

(declare-fun res!1550833 () Bool)

(assert (=> d!1137246 (=> res!1550833 e!2365647)))

(assert (=> d!1137246 (= res!1550833 (not ((_ is Node!12423) (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861)))))))))

(assert (=> d!1137246 (= (isBalanced!3601 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))) e!2365647)))

(declare-fun b!3830672 () Bool)

(declare-fun res!1550836 () Bool)

(assert (=> b!3830672 (=> (not res!1550836) (not e!2365648))))

(assert (=> b!3830672 (= res!1550836 (not (isEmpty!23863 (left!31276 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun b!3830673 () Bool)

(assert (=> b!3830673 (= e!2365648 (not (isEmpty!23863 (right!31606 (left!31276 (++!10191 (c!667181 acc!335) (c!667181 (_1!22945 lt!1328861))))))))))

(assert (= (and d!1137246 (not res!1550833)) b!3830671))

(assert (= (and b!3830671 res!1550837) b!3830669))

(assert (= (and b!3830669 res!1550838) b!3830668))

(assert (= (and b!3830668 res!1550835) b!3830670))

(assert (= (and b!3830670 res!1550834) b!3830672))

(assert (= (and b!3830672 res!1550836) b!3830673))

(declare-fun m!4385279 () Bool)

(assert (=> b!3830670 m!4385279))

(declare-fun m!4385281 () Bool)

(assert (=> b!3830668 m!4385281))

(declare-fun m!4385283 () Bool)

(assert (=> b!3830673 m!4385283))

(declare-fun m!4385285 () Bool)

(assert (=> b!3830672 m!4385285))

(declare-fun m!4385287 () Bool)

(assert (=> b!3830669 m!4385287))

(declare-fun m!4385289 () Bool)

(assert (=> b!3830669 m!4385289))

(assert (=> b!3830671 m!4385287))

(assert (=> b!3830671 m!4385289))

(assert (=> b!3828531 d!1137246))

(declare-fun d!1137248 () Bool)

(declare-fun lt!1330206 () Int)

(assert (=> d!1137248 (>= lt!1330206 0)))

(declare-fun e!2365649 () Int)

(assert (=> d!1137248 (= lt!1330206 e!2365649)))

(declare-fun c!667995 () Bool)

(assert (=> d!1137248 (= c!667995 ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328950))))))

(assert (=> d!1137248 (= (size!30476 (list!15056 (_1!22945 lt!1328950))) lt!1330206)))

(declare-fun b!3830674 () Bool)

(assert (=> b!3830674 (= e!2365649 0)))

(declare-fun b!3830675 () Bool)

(assert (=> b!3830675 (= e!2365649 (+ 1 (size!30476 (t!308875 (list!15056 (_1!22945 lt!1328950))))))))

(assert (= (and d!1137248 c!667995) b!3830674))

(assert (= (and d!1137248 (not c!667995)) b!3830675))

(declare-fun m!4385291 () Bool)

(assert (=> b!3830675 m!4385291))

(assert (=> d!1135724 d!1137248))

(assert (=> d!1135724 d!1135762))

(declare-fun d!1137250 () Bool)

(declare-fun lt!1330207 () Int)

(assert (=> d!1137250 (= lt!1330207 (size!30476 (list!15060 (c!667181 (_1!22945 lt!1328950)))))))

(assert (=> d!1137250 (= lt!1330207 (ite ((_ is Empty!12423) (c!667181 (_1!22945 lt!1328950))) 0 (ite ((_ is Leaf!19233) (c!667181 (_1!22945 lt!1328950))) (csize!25077 (c!667181 (_1!22945 lt!1328950))) (csize!25076 (c!667181 (_1!22945 lt!1328950))))))))

(assert (=> d!1137250 (= (size!30477 (c!667181 (_1!22945 lt!1328950))) lt!1330207)))

(declare-fun bs!582237 () Bool)

(assert (= bs!582237 d!1137250))

(assert (=> bs!582237 m!4380853))

(assert (=> bs!582237 m!4380853))

(declare-fun m!4385293 () Bool)

(assert (=> bs!582237 m!4385293))

(assert (=> d!1135724 d!1137250))

(declare-fun b!3830676 () Bool)

(declare-fun e!2365650 () List!40547)

(assert (=> b!3830676 (= e!2365650 (list!15059 (right!31605 (c!667180 totalInput!335))))))

(declare-fun b!3830677 () Bool)

(assert (=> b!3830677 (= e!2365650 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 totalInput!335)))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 totalInput!335)))) (list!15059 (right!31605 (c!667180 totalInput!335))))))))

(declare-fun b!3830678 () Bool)

(declare-fun res!1550840 () Bool)

(declare-fun e!2365651 () Bool)

(assert (=> b!3830678 (=> (not res!1550840) (not e!2365651))))

(declare-fun lt!1330208 () List!40547)

(assert (=> b!3830678 (= res!1550840 (= (size!30470 lt!1330208) (+ (size!30470 (list!15059 (left!31275 (c!667180 totalInput!335)))) (size!30470 (list!15059 (right!31605 (c!667180 totalInput!335)))))))))

(declare-fun b!3830679 () Bool)

(assert (=> b!3830679 (= e!2365651 (or (not (= (list!15059 (right!31605 (c!667180 totalInput!335))) Nil!40423)) (= lt!1330208 (list!15059 (left!31275 (c!667180 totalInput!335))))))))

(declare-fun d!1137252 () Bool)

(assert (=> d!1137252 e!2365651))

(declare-fun res!1550839 () Bool)

(assert (=> d!1137252 (=> (not res!1550839) (not e!2365651))))

(assert (=> d!1137252 (= res!1550839 (= (content!5990 lt!1330208) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 totalInput!335)))) (content!5990 (list!15059 (right!31605 (c!667180 totalInput!335)))))))))

(assert (=> d!1137252 (= lt!1330208 e!2365650)))

(declare-fun c!667996 () Bool)

(assert (=> d!1137252 (= c!667996 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 totalInput!335)))))))

(assert (=> d!1137252 (= (++!10187 (list!15059 (left!31275 (c!667180 totalInput!335))) (list!15059 (right!31605 (c!667180 totalInput!335)))) lt!1330208)))

(assert (= (and d!1137252 c!667996) b!3830676))

(assert (= (and d!1137252 (not c!667996)) b!3830677))

(assert (= (and d!1137252 res!1550839) b!3830678))

(assert (= (and b!3830678 res!1550840) b!3830679))

(assert (=> b!3830677 m!4381017))

(declare-fun m!4385295 () Bool)

(assert (=> b!3830677 m!4385295))

(declare-fun m!4385297 () Bool)

(assert (=> b!3830678 m!4385297))

(assert (=> b!3830678 m!4381015))

(assert (=> b!3830678 m!4384925))

(assert (=> b!3830678 m!4381017))

(assert (=> b!3830678 m!4384927))

(declare-fun m!4385299 () Bool)

(assert (=> d!1137252 m!4385299))

(assert (=> d!1137252 m!4381015))

(declare-fun m!4385301 () Bool)

(assert (=> d!1137252 m!4385301))

(assert (=> d!1137252 m!4381017))

(declare-fun m!4385303 () Bool)

(assert (=> d!1137252 m!4385303))

(assert (=> b!3828482 d!1137252))

(declare-fun b!3830680 () Bool)

(declare-fun e!2365652 () List!40547)

(assert (=> b!3830680 (= e!2365652 Nil!40423)))

(declare-fun b!3830681 () Bool)

(declare-fun e!2365653 () List!40547)

(assert (=> b!3830681 (= e!2365652 e!2365653)))

(declare-fun c!667998 () Bool)

(assert (=> b!3830681 (= c!667998 ((_ is Leaf!19232) (left!31275 (c!667180 totalInput!335))))))

(declare-fun b!3830682 () Bool)

(assert (=> b!3830682 (= e!2365653 (list!15063 (xs!15716 (left!31275 (c!667180 totalInput!335)))))))

(declare-fun b!3830683 () Bool)

(assert (=> b!3830683 (= e!2365653 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 totalInput!335)))) (list!15059 (right!31605 (left!31275 (c!667180 totalInput!335))))))))

(declare-fun d!1137254 () Bool)

(declare-fun c!667997 () Bool)

(assert (=> d!1137254 (= c!667997 ((_ is Empty!12422) (left!31275 (c!667180 totalInput!335))))))

(assert (=> d!1137254 (= (list!15059 (left!31275 (c!667180 totalInput!335))) e!2365652)))

(assert (= (and d!1137254 c!667997) b!3830680))

(assert (= (and d!1137254 (not c!667997)) b!3830681))

(assert (= (and b!3830681 c!667998) b!3830682))

(assert (= (and b!3830681 (not c!667998)) b!3830683))

(assert (=> b!3830682 m!4383491))

(declare-fun m!4385305 () Bool)

(assert (=> b!3830683 m!4385305))

(declare-fun m!4385307 () Bool)

(assert (=> b!3830683 m!4385307))

(assert (=> b!3830683 m!4385305))

(assert (=> b!3830683 m!4385307))

(declare-fun m!4385309 () Bool)

(assert (=> b!3830683 m!4385309))

(assert (=> b!3828482 d!1137254))

(declare-fun b!3830684 () Bool)

(declare-fun e!2365654 () List!40547)

(assert (=> b!3830684 (= e!2365654 Nil!40423)))

(declare-fun b!3830685 () Bool)

(declare-fun e!2365655 () List!40547)

(assert (=> b!3830685 (= e!2365654 e!2365655)))

(declare-fun c!668000 () Bool)

(assert (=> b!3830685 (= c!668000 ((_ is Leaf!19232) (right!31605 (c!667180 totalInput!335))))))

(declare-fun b!3830686 () Bool)

(assert (=> b!3830686 (= e!2365655 (list!15063 (xs!15716 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun b!3830687 () Bool)

(assert (=> b!3830687 (= e!2365655 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 totalInput!335)))) (list!15059 (right!31605 (right!31605 (c!667180 totalInput!335))))))))

(declare-fun d!1137256 () Bool)

(declare-fun c!667999 () Bool)

(assert (=> d!1137256 (= c!667999 ((_ is Empty!12422) (right!31605 (c!667180 totalInput!335))))))

(assert (=> d!1137256 (= (list!15059 (right!31605 (c!667180 totalInput!335))) e!2365654)))

(assert (= (and d!1137256 c!667999) b!3830684))

(assert (= (and d!1137256 (not c!667999)) b!3830685))

(assert (= (and b!3830685 c!668000) b!3830686))

(assert (= (and b!3830685 (not c!668000)) b!3830687))

(assert (=> b!3830686 m!4384939))

(declare-fun m!4385311 () Bool)

(assert (=> b!3830687 m!4385311))

(declare-fun m!4385313 () Bool)

(assert (=> b!3830687 m!4385313))

(assert (=> b!3830687 m!4385311))

(assert (=> b!3830687 m!4385313))

(declare-fun m!4385315 () Bool)

(assert (=> b!3830687 m!4385315))

(assert (=> b!3828482 d!1137256))

(declare-fun bs!582238 () Bool)

(declare-fun d!1137258 () Bool)

(assert (= bs!582238 (and d!1137258 d!1135660)))

(declare-fun lambda!125973 () Int)

(assert (=> bs!582238 (= lambda!125973 lambda!125936)))

(declare-fun bs!582239 () Bool)

(assert (= bs!582239 (and d!1137258 d!1135802)))

(assert (=> bs!582239 (= lambda!125973 lambda!125945)))

(assert (=> d!1137258 true))

(declare-fun lt!1330209 () Bool)

(assert (=> d!1137258 (= lt!1330209 (forall!8265 (t!308876 rules!1265) lambda!125973))))

(declare-fun e!2365657 () Bool)

(assert (=> d!1137258 (= lt!1330209 e!2365657)))

(declare-fun res!1550842 () Bool)

(assert (=> d!1137258 (=> res!1550842 e!2365657)))

(assert (=> d!1137258 (= res!1550842 (not ((_ is Cons!40425) (t!308876 rules!1265))))))

(assert (=> d!1137258 (= (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265)) lt!1330209)))

(declare-fun b!3830688 () Bool)

(declare-fun e!2365656 () Bool)

(assert (=> b!3830688 (= e!2365657 e!2365656)))

(declare-fun res!1550841 () Bool)

(assert (=> b!3830688 (=> (not res!1550841) (not e!2365656))))

(assert (=> b!3830688 (= res!1550841 (ruleValid!2185 thiss!11876 (h!45845 (t!308876 rules!1265))))))

(declare-fun b!3830689 () Bool)

(assert (=> b!3830689 (= e!2365656 (rulesValidInductive!2192 thiss!11876 (t!308876 (t!308876 rules!1265))))))

(assert (= (and d!1137258 (not res!1550842)) b!3830688))

(assert (= (and b!3830688 res!1550841) b!3830689))

(declare-fun m!4385317 () Bool)

(assert (=> d!1137258 m!4385317))

(assert (=> b!3830688 m!4384709))

(assert (=> b!3830689 m!4384873))

(assert (=> b!3828441 d!1137258))

(assert (=> b!3828416 d!1135436))

(assert (=> b!3828416 d!1136942))

(assert (=> b!3828416 d!1136792))

(assert (=> b!3828416 d!1136944))

(assert (=> b!3828416 d!1137188))

(declare-fun d!1137260 () Bool)

(assert (=> d!1137260 (= (isDefined!6811 lt!1329054) (not (isEmpty!23857 lt!1329054)))))

(declare-fun bs!582240 () Bool)

(assert (= bs!582240 d!1137260))

(assert (=> bs!582240 m!4379949))

(assert (=> b!3827718 d!1137260))

(declare-fun d!1137262 () Bool)

(assert (=> d!1137262 (= (isDefined!6810 lt!1329268) (not (isEmpty!23862 lt!1329268)))))

(declare-fun bs!582241 () Bool)

(assert (= bs!582241 d!1137262))

(declare-fun m!4385319 () Bool)

(assert (=> bs!582241 m!4385319))

(assert (=> b!3828337 d!1137262))

(declare-fun d!1137264 () Bool)

(declare-fun lt!1330210 () Int)

(assert (=> d!1137264 (>= lt!1330210 0)))

(declare-fun e!2365658 () Int)

(assert (=> d!1137264 (= lt!1330210 e!2365658)))

(declare-fun c!668001 () Bool)

(assert (=> d!1137264 (= c!668001 ((_ is Nil!40424) (_1!22950 lt!1329188)))))

(assert (=> d!1137264 (= (size!30476 (_1!22950 lt!1329188)) lt!1330210)))

(declare-fun b!3830690 () Bool)

(assert (=> b!3830690 (= e!2365658 0)))

(declare-fun b!3830691 () Bool)

(assert (=> b!3830691 (= e!2365658 (+ 1 (size!30476 (t!308875 (_1!22950 lt!1329188)))))))

(assert (= (and d!1137264 c!668001) b!3830690))

(assert (= (and d!1137264 (not c!668001)) b!3830691))

(declare-fun m!4385321 () Bool)

(assert (=> b!3830691 m!4385321))

(assert (=> d!1135628 d!1137264))

(assert (=> d!1135628 d!1135516))

(declare-fun b!3830694 () Bool)

(declare-fun res!1550843 () Bool)

(declare-fun e!2365660 () Bool)

(assert (=> b!3830694 (=> (not res!1550843) (not e!2365660))))

(declare-fun lt!1330211 () List!40548)

(assert (=> b!3830694 (= res!1550843 (= (size!30476 lt!1330211) (+ (size!30476 (t!308875 (list!15056 acc!335))) (size!30476 (list!15056 (_1!22945 lt!1328861))))))))

(declare-fun b!3830695 () Bool)

(assert (=> b!3830695 (= e!2365660 (or (not (= (list!15056 (_1!22945 lt!1328861)) Nil!40424)) (= lt!1330211 (t!308875 (list!15056 acc!335)))))))

(declare-fun b!3830693 () Bool)

(declare-fun e!2365659 () List!40548)

(assert (=> b!3830693 (= e!2365659 (Cons!40424 (h!45844 (t!308875 (list!15056 acc!335))) (++!10192 (t!308875 (t!308875 (list!15056 acc!335))) (list!15056 (_1!22945 lt!1328861)))))))

(declare-fun b!3830692 () Bool)

(assert (=> b!3830692 (= e!2365659 (list!15056 (_1!22945 lt!1328861)))))

(declare-fun d!1137266 () Bool)

(assert (=> d!1137266 e!2365660))

(declare-fun res!1550844 () Bool)

(assert (=> d!1137266 (=> (not res!1550844) (not e!2365660))))

(assert (=> d!1137266 (= res!1550844 (= (content!5992 lt!1330211) ((_ map or) (content!5992 (t!308875 (list!15056 acc!335))) (content!5992 (list!15056 (_1!22945 lt!1328861))))))))

(assert (=> d!1137266 (= lt!1330211 e!2365659)))

(declare-fun c!668002 () Bool)

(assert (=> d!1137266 (= c!668002 ((_ is Nil!40424) (t!308875 (list!15056 acc!335))))))

(assert (=> d!1137266 (= (++!10192 (t!308875 (list!15056 acc!335)) (list!15056 (_1!22945 lt!1328861))) lt!1330211)))

(assert (= (and d!1137266 c!668002) b!3830692))

(assert (= (and d!1137266 (not c!668002)) b!3830693))

(assert (= (and d!1137266 res!1550844) b!3830694))

(assert (= (and b!3830694 res!1550843) b!3830695))

(declare-fun m!4385323 () Bool)

(assert (=> b!3830694 m!4385323))

(declare-fun m!4385325 () Bool)

(assert (=> b!3830694 m!4385325))

(assert (=> b!3830694 m!4379555))

(assert (=> b!3830694 m!4380657))

(assert (=> b!3830693 m!4379555))

(declare-fun m!4385327 () Bool)

(assert (=> b!3830693 m!4385327))

(declare-fun m!4385329 () Bool)

(assert (=> d!1137266 m!4385329))

(assert (=> d!1137266 m!4384487))

(assert (=> d!1137266 m!4379555))

(assert (=> d!1137266 m!4380665))

(assert (=> b!3828209 d!1137266))

(declare-fun d!1137268 () Bool)

(assert (=> d!1137268 (= (list!15056 lt!1329195) (list!15060 (c!667181 lt!1329195)))))

(declare-fun bs!582242 () Bool)

(assert (= bs!582242 d!1137268))

(declare-fun m!4385331 () Bool)

(assert (=> bs!582242 m!4385331))

(assert (=> b!3828009 d!1137268))

(declare-fun d!1137270 () Bool)

(assert (=> d!1137270 (= (list!15056 (_1!22945 lt!1328958)) (list!15060 (c!667181 (_1!22945 lt!1328958))))))

(declare-fun bs!582243 () Bool)

(assert (= bs!582243 d!1137270))

(assert (=> bs!582243 m!4383767))

(assert (=> b!3828009 d!1137270))

(assert (=> b!3828116 d!1136996))

(assert (=> b!3828116 d!1136998))

(declare-fun d!1137272 () Bool)

(declare-fun lt!1330212 () Bool)

(assert (=> d!1137272 (= lt!1330212 (isEmpty!23850 (list!15059 (left!31275 (c!667180 treated!13)))))))

(assert (=> d!1137272 (= lt!1330212 (= (size!30478 (left!31275 (c!667180 treated!13))) 0))))

(assert (=> d!1137272 (= (isEmpty!23861 (left!31275 (c!667180 treated!13))) lt!1330212)))

(declare-fun bs!582244 () Bool)

(assert (= bs!582244 d!1137272))

(assert (=> bs!582244 m!4380897))

(assert (=> bs!582244 m!4380897))

(declare-fun m!4385333 () Bool)

(assert (=> bs!582244 m!4385333))

(assert (=> bs!582244 m!4381039))

(assert (=> b!3828067 d!1137272))

(declare-fun d!1137274 () Bool)

(declare-fun lt!1330213 () Int)

(assert (=> d!1137274 (= lt!1330213 (size!30470 (list!15055 (_2!22945 lt!1329201))))))

(assert (=> d!1137274 (= lt!1330213 (size!30478 (c!667180 (_2!22945 lt!1329201))))))

(assert (=> d!1137274 (= (size!30472 (_2!22945 lt!1329201)) lt!1330213)))

(declare-fun bs!582245 () Bool)

(assert (= bs!582245 d!1137274))

(assert (=> bs!582245 m!4380367))

(assert (=> bs!582245 m!4380367))

(declare-fun m!4385335 () Bool)

(assert (=> bs!582245 m!4385335))

(declare-fun m!4385337 () Bool)

(assert (=> bs!582245 m!4385337))

(assert (=> b!3828022 d!1137274))

(declare-fun d!1137276 () Bool)

(declare-fun lt!1330214 () Int)

(assert (=> d!1137276 (= lt!1330214 (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328957)))))))

(assert (=> d!1137276 (= lt!1330214 (size!30478 (c!667180 (_2!22946 (v!38923 lt!1328957)))))))

(assert (=> d!1137276 (= (size!30472 (_2!22946 (v!38923 lt!1328957))) lt!1330214)))

(declare-fun bs!582246 () Bool)

(assert (= bs!582246 d!1137276))

(assert (=> bs!582246 m!4380369))

(assert (=> bs!582246 m!4380369))

(assert (=> bs!582246 m!4383677))

(declare-fun m!4385339 () Bool)

(assert (=> bs!582246 m!4385339))

(assert (=> b!3828022 d!1137276))

(assert (=> d!1135728 d!1137262))

(assert (=> d!1135728 d!1135802))

(assert (=> d!1135728 d!1137136))

(declare-fun d!1137278 () Bool)

(assert (=> d!1137278 (isPrefix!3333 lt!1329266 lt!1329270)))

(declare-fun lt!1330215 () Unit!58192)

(assert (=> d!1137278 (= lt!1330215 (choose!22530 lt!1329266 lt!1329270))))

(assert (=> d!1137278 (= (lemmaIsPrefixRefl!2118 lt!1329266 lt!1329270) lt!1330215)))

(declare-fun bs!582247 () Bool)

(assert (= bs!582247 d!1137278))

(assert (=> bs!582247 m!4380817))

(declare-fun m!4385341 () Bool)

(assert (=> bs!582247 m!4385341))

(assert (=> d!1135728 d!1137278))

(declare-fun d!1137280 () Bool)

(assert (=> d!1137280 (= (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335))) (not (isEmpty!23857 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 totalInput!335)))))))

(declare-fun bs!582248 () Bool)

(assert (= bs!582248 d!1137280))

(assert (=> bs!582248 m!4380815))

(declare-fun m!4385343 () Bool)

(assert (=> bs!582248 m!4385343))

(assert (=> d!1135728 d!1137280))

(declare-fun b!3830698 () Bool)

(declare-fun e!2365661 () Bool)

(assert (=> b!3830698 (= e!2365661 (isPrefix!3333 (tail!5795 lt!1329266) (tail!5795 lt!1329270)))))

(declare-fun b!3830696 () Bool)

(declare-fun e!2365663 () Bool)

(assert (=> b!3830696 (= e!2365663 e!2365661)))

(declare-fun res!1550846 () Bool)

(assert (=> b!3830696 (=> (not res!1550846) (not e!2365661))))

(assert (=> b!3830696 (= res!1550846 (not ((_ is Nil!40423) lt!1329270)))))

(declare-fun b!3830697 () Bool)

(declare-fun res!1550848 () Bool)

(assert (=> b!3830697 (=> (not res!1550848) (not e!2365661))))

(assert (=> b!3830697 (= res!1550848 (= (head!8068 lt!1329266) (head!8068 lt!1329270)))))

(declare-fun d!1137282 () Bool)

(declare-fun e!2365662 () Bool)

(assert (=> d!1137282 e!2365662))

(declare-fun res!1550845 () Bool)

(assert (=> d!1137282 (=> res!1550845 e!2365662)))

(declare-fun lt!1330216 () Bool)

(assert (=> d!1137282 (= res!1550845 (not lt!1330216))))

(assert (=> d!1137282 (= lt!1330216 e!2365663)))

(declare-fun res!1550847 () Bool)

(assert (=> d!1137282 (=> res!1550847 e!2365663)))

(assert (=> d!1137282 (= res!1550847 ((_ is Nil!40423) lt!1329266))))

(assert (=> d!1137282 (= (isPrefix!3333 lt!1329266 lt!1329270) lt!1330216)))

(declare-fun b!3830699 () Bool)

(assert (=> b!3830699 (= e!2365662 (>= (size!30470 lt!1329270) (size!30470 lt!1329266)))))

(assert (= (and d!1137282 (not res!1550847)) b!3830696))

(assert (= (and b!3830696 res!1550846) b!3830697))

(assert (= (and b!3830697 res!1550848) b!3830698))

(assert (= (and d!1137282 (not res!1550845)) b!3830699))

(declare-fun m!4385345 () Bool)

(assert (=> b!3830698 m!4385345))

(declare-fun m!4385347 () Bool)

(assert (=> b!3830698 m!4385347))

(assert (=> b!3830698 m!4385345))

(assert (=> b!3830698 m!4385347))

(declare-fun m!4385349 () Bool)

(assert (=> b!3830698 m!4385349))

(declare-fun m!4385351 () Bool)

(assert (=> b!3830697 m!4385351))

(declare-fun m!4385353 () Bool)

(assert (=> b!3830697 m!4385353))

(declare-fun m!4385355 () Bool)

(assert (=> b!3830699 m!4385355))

(declare-fun m!4385357 () Bool)

(assert (=> b!3830699 m!4385357))

(assert (=> d!1135728 d!1137282))

(assert (=> d!1135728 d!1135434))

(declare-fun d!1137284 () Bool)

(assert (=> d!1137284 (= (height!1816 (left!31276 (c!667181 acc!335))) (ite ((_ is Empty!12423) (left!31276 (c!667181 acc!335))) 0 (ite ((_ is Leaf!19233) (left!31276 (c!667181 acc!335))) 1 (cheight!12634 (left!31276 (c!667181 acc!335))))))))

(assert (=> b!3828506 d!1137284))

(declare-fun d!1137286 () Bool)

(assert (=> d!1137286 (= (height!1816 (right!31606 (c!667181 acc!335))) (ite ((_ is Empty!12423) (right!31606 (c!667181 acc!335))) 0 (ite ((_ is Leaf!19233) (right!31606 (c!667181 acc!335))) 1 (cheight!12634 (right!31606 (c!667181 acc!335))))))))

(assert (=> b!3828506 d!1137286))

(declare-fun d!1137288 () Bool)

(declare-fun lt!1330217 () Int)

(assert (=> d!1137288 (>= lt!1330217 0)))

(declare-fun e!2365664 () Int)

(assert (=> d!1137288 (= lt!1330217 e!2365664)))

(declare-fun c!668003 () Bool)

(assert (=> d!1137288 (= c!668003 ((_ is Nil!40423) (t!308874 lt!1328860)))))

(assert (=> d!1137288 (= (size!30470 (t!308874 lt!1328860)) lt!1330217)))

(declare-fun b!3830700 () Bool)

(assert (=> b!3830700 (= e!2365664 0)))

(declare-fun b!3830701 () Bool)

(assert (=> b!3830701 (= e!2365664 (+ 1 (size!30470 (t!308874 (t!308874 lt!1328860)))))))

(assert (= (and d!1137288 c!668003) b!3830700))

(assert (= (and d!1137288 (not c!668003)) b!3830701))

(declare-fun m!4385359 () Bool)

(assert (=> b!3830701 m!4385359))

(assert (=> b!3828455 d!1137288))

(assert (=> b!3828539 d!1136700))

(declare-fun d!1137290 () Bool)

(assert (=> d!1137290 (= (max!0 (height!1816 (left!31276 (c!667181 acc!335))) (height!1816 (right!31606 (c!667181 acc!335)))) (ite (< (height!1816 (left!31276 (c!667181 acc!335))) (height!1816 (right!31606 (c!667181 acc!335)))) (height!1816 (right!31606 (c!667181 acc!335))) (height!1816 (left!31276 (c!667181 acc!335)))))))

(assert (=> b!3827762 d!1137290))

(assert (=> b!3827762 d!1137284))

(assert (=> b!3827762 d!1137286))

(assert (=> b!3827994 d!1136770))

(assert (=> b!3827994 d!1136772))

(assert (=> d!1135780 d!1137082))

(assert (=> d!1135780 d!1137084))

(declare-fun b!3830702 () Bool)

(declare-fun res!1550851 () Bool)

(declare-fun e!2365666 () Bool)

(assert (=> b!3830702 (=> (not res!1550851) (not e!2365666))))

(assert (=> b!3830702 (= res!1550851 (isBalanced!3601 (left!31276 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830703 () Bool)

(declare-fun res!1550854 () Bool)

(assert (=> b!3830703 (=> (not res!1550854) (not e!2365666))))

(assert (=> b!3830703 (= res!1550854 (<= (- (height!1816 (left!31276 (right!31606 (c!667181 acc!335)))) (height!1816 (right!31606 (right!31606 (c!667181 acc!335))))) 1))))

(declare-fun b!3830704 () Bool)

(declare-fun res!1550850 () Bool)

(assert (=> b!3830704 (=> (not res!1550850) (not e!2365666))))

(assert (=> b!3830704 (= res!1550850 (isBalanced!3601 (right!31606 (right!31606 (c!667181 acc!335)))))))

(declare-fun b!3830705 () Bool)

(declare-fun e!2365665 () Bool)

(assert (=> b!3830705 (= e!2365665 e!2365666)))

(declare-fun res!1550853 () Bool)

(assert (=> b!3830705 (=> (not res!1550853) (not e!2365666))))

(assert (=> b!3830705 (= res!1550853 (<= (- 1) (- (height!1816 (left!31276 (right!31606 (c!667181 acc!335)))) (height!1816 (right!31606 (right!31606 (c!667181 acc!335)))))))))

(declare-fun d!1137292 () Bool)

(declare-fun res!1550849 () Bool)

(assert (=> d!1137292 (=> res!1550849 e!2365665)))

(assert (=> d!1137292 (= res!1550849 (not ((_ is Node!12423) (right!31606 (c!667181 acc!335)))))))

(assert (=> d!1137292 (= (isBalanced!3601 (right!31606 (c!667181 acc!335))) e!2365665)))

(declare-fun b!3830706 () Bool)

(declare-fun res!1550852 () Bool)

(assert (=> b!3830706 (=> (not res!1550852) (not e!2365666))))

(assert (=> b!3830706 (= res!1550852 (not (isEmpty!23863 (left!31276 (right!31606 (c!667181 acc!335))))))))

(declare-fun b!3830707 () Bool)

(assert (=> b!3830707 (= e!2365666 (not (isEmpty!23863 (right!31606 (right!31606 (c!667181 acc!335))))))))

(assert (= (and d!1137292 (not res!1550849)) b!3830705))

(assert (= (and b!3830705 res!1550853) b!3830703))

(assert (= (and b!3830703 res!1550854) b!3830702))

(assert (= (and b!3830702 res!1550851) b!3830704))

(assert (= (and b!3830704 res!1550850) b!3830706))

(assert (= (and b!3830706 res!1550852) b!3830707))

(declare-fun m!4385361 () Bool)

(assert (=> b!3830704 m!4385361))

(declare-fun m!4385363 () Bool)

(assert (=> b!3830702 m!4385363))

(declare-fun m!4385365 () Bool)

(assert (=> b!3830707 m!4385365))

(declare-fun m!4385367 () Bool)

(assert (=> b!3830706 m!4385367))

(assert (=> b!3830703 m!4385247))

(assert (=> b!3830703 m!4385249))

(assert (=> b!3830705 m!4385247))

(assert (=> b!3830705 m!4385249))

(assert (=> b!3828507 d!1137292))

(declare-fun b!3830719 () Bool)

(declare-fun e!2365673 () Bool)

(declare-fun inv!17 (TokenValue!6454) Bool)

(assert (=> b!3830719 (= e!2365673 (inv!17 (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(declare-fun b!3830720 () Bool)

(declare-fun e!2365674 () Bool)

(assert (=> b!3830720 (= e!2365674 e!2365673)))

(declare-fun c!668009 () Bool)

(assert (=> b!3830720 (= c!668009 ((_ is IntegerValue!19363) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(declare-fun b!3830721 () Bool)

(declare-fun inv!16 (TokenValue!6454) Bool)

(assert (=> b!3830721 (= e!2365674 (inv!16 (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(declare-fun b!3830722 () Bool)

(declare-fun e!2365675 () Bool)

(declare-fun inv!15 (TokenValue!6454) Bool)

(assert (=> b!3830722 (= e!2365675 (inv!15 (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(declare-fun d!1137294 () Bool)

(declare-fun c!668008 () Bool)

(assert (=> d!1137294 (= c!668008 ((_ is IntegerValue!19362) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))

(assert (=> d!1137294 (= (inv!21 (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))) e!2365674)))

(declare-fun b!3830718 () Bool)

(declare-fun res!1550857 () Bool)

(assert (=> b!3830718 (=> res!1550857 e!2365675)))

(assert (=> b!3830718 (= res!1550857 (not ((_ is IntegerValue!19364) (value!197991 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))))

(assert (=> b!3830718 (= e!2365673 e!2365675)))

(assert (= (and d!1137294 c!668008) b!3830721))

(assert (= (and d!1137294 (not c!668008)) b!3830720))

(assert (= (and b!3830720 c!668009) b!3830719))

(assert (= (and b!3830720 (not c!668009)) b!3830718))

(assert (= (and b!3830718 (not res!1550857)) b!3830722))

(declare-fun m!4385369 () Bool)

(assert (=> b!3830719 m!4385369))

(declare-fun m!4385371 () Bool)

(assert (=> b!3830721 m!4385371))

(declare-fun m!4385373 () Bool)

(assert (=> b!3830722 m!4385373))

(assert (=> b!3828584 d!1137294))

(declare-fun d!1137296 () Bool)

(declare-fun lt!1330218 () Bool)

(assert (=> d!1137296 (= lt!1330218 (isEmpty!23850 (list!15059 (left!31275 (c!667180 input!678)))))))

(assert (=> d!1137296 (= lt!1330218 (= (size!30478 (left!31275 (c!667180 input!678))) 0))))

(assert (=> d!1137296 (= (isEmpty!23861 (left!31275 (c!667180 input!678))) lt!1330218)))

(declare-fun bs!582249 () Bool)

(assert (= bs!582249 d!1137296))

(assert (=> bs!582249 m!4380833))

(assert (=> bs!582249 m!4380833))

(declare-fun m!4385375 () Bool)

(assert (=> bs!582249 m!4385375))

(assert (=> bs!582249 m!4380547))

(assert (=> b!3828117 d!1137296))

(declare-fun b!3830723 () Bool)

(declare-fun e!2365676 () List!40547)

(assert (=> b!3830723 (= e!2365676 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863)))))))

(declare-fun b!3830724 () Bool)

(assert (=> b!3830724 (= e!2365676 (Cons!40423 (h!45843 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863))))) (++!10187 (t!308874 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863))))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863)))))))))

(declare-fun b!3830725 () Bool)

(declare-fun res!1550859 () Bool)

(declare-fun e!2365677 () Bool)

(assert (=> b!3830725 (=> (not res!1550859) (not e!2365677))))

(declare-fun lt!1330219 () List!40547)

(assert (=> b!3830725 (= res!1550859 (= (size!30470 lt!1330219) (+ (size!30470 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863))))) (size!30470 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863))))))))))

(declare-fun b!3830726 () Bool)

(assert (=> b!3830726 (= e!2365677 (or (not (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863)))) Nil!40423)) (= lt!1330219 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863)))))))))

(declare-fun d!1137298 () Bool)

(assert (=> d!1137298 e!2365677))

(declare-fun res!1550858 () Bool)

(assert (=> d!1137298 (=> (not res!1550858) (not e!2365677))))

(assert (=> d!1137298 (= res!1550858 (= (content!5990 lt!1330219) ((_ map or) (content!5990 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863))))) (content!5990 (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863))))))))))

(assert (=> d!1137298 (= lt!1330219 e!2365676)))

(declare-fun c!668010 () Bool)

(assert (=> d!1137298 (= c!668010 ((_ is Nil!40423) (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863))))))))

(assert (=> d!1137298 (= (++!10187 (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863)))) (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863))))) lt!1330219)))

(assert (= (and d!1137298 c!668010) b!3830723))

(assert (= (and d!1137298 (not c!668010)) b!3830724))

(assert (= (and d!1137298 res!1550858) b!3830725))

(assert (= (and b!3830725 res!1550859) b!3830726))

(assert (=> b!3830724 m!4380863))

(declare-fun m!4385377 () Bool)

(assert (=> b!3830724 m!4385377))

(declare-fun m!4385379 () Bool)

(assert (=> b!3830725 m!4385379))

(assert (=> b!3830725 m!4380861))

(declare-fun m!4385381 () Bool)

(assert (=> b!3830725 m!4385381))

(assert (=> b!3830725 m!4380863))

(declare-fun m!4385383 () Bool)

(assert (=> b!3830725 m!4385383))

(declare-fun m!4385385 () Bool)

(assert (=> d!1137298 m!4385385))

(assert (=> d!1137298 m!4380861))

(declare-fun m!4385387 () Bool)

(assert (=> d!1137298 m!4385387))

(assert (=> d!1137298 m!4380863))

(declare-fun m!4385389 () Bool)

(assert (=> d!1137298 m!4385389))

(assert (=> b!3828369 d!1137298))

(declare-fun b!3830727 () Bool)

(declare-fun e!2365678 () List!40547)

(assert (=> b!3830727 (= e!2365678 Nil!40423)))

(declare-fun b!3830728 () Bool)

(declare-fun e!2365679 () List!40547)

(assert (=> b!3830728 (= e!2365678 e!2365679)))

(declare-fun c!668012 () Bool)

(assert (=> b!3830728 (= c!668012 ((_ is Leaf!19232) (left!31275 (c!667180 (_2!22945 lt!1328863)))))))

(declare-fun b!3830729 () Bool)

(assert (=> b!3830729 (= e!2365679 (list!15063 (xs!15716 (left!31275 (c!667180 (_2!22945 lt!1328863))))))))

(declare-fun b!3830730 () Bool)

(assert (=> b!3830730 (= e!2365679 (++!10187 (list!15059 (left!31275 (left!31275 (c!667180 (_2!22945 lt!1328863))))) (list!15059 (right!31605 (left!31275 (c!667180 (_2!22945 lt!1328863)))))))))

(declare-fun d!1137300 () Bool)

(declare-fun c!668011 () Bool)

(assert (=> d!1137300 (= c!668011 ((_ is Empty!12422) (left!31275 (c!667180 (_2!22945 lt!1328863)))))))

(assert (=> d!1137300 (= (list!15059 (left!31275 (c!667180 (_2!22945 lt!1328863)))) e!2365678)))

(assert (= (and d!1137300 c!668011) b!3830727))

(assert (= (and d!1137300 (not c!668011)) b!3830728))

(assert (= (and b!3830728 c!668012) b!3830729))

(assert (= (and b!3830728 (not c!668012)) b!3830730))

(declare-fun m!4385391 () Bool)

(assert (=> b!3830729 m!4385391))

(declare-fun m!4385393 () Bool)

(assert (=> b!3830730 m!4385393))

(declare-fun m!4385395 () Bool)

(assert (=> b!3830730 m!4385395))

(assert (=> b!3830730 m!4385393))

(assert (=> b!3830730 m!4385395))

(declare-fun m!4385397 () Bool)

(assert (=> b!3830730 m!4385397))

(assert (=> b!3828369 d!1137300))

(declare-fun b!3830731 () Bool)

(declare-fun e!2365680 () List!40547)

(assert (=> b!3830731 (= e!2365680 Nil!40423)))

(declare-fun b!3830732 () Bool)

(declare-fun e!2365681 () List!40547)

(assert (=> b!3830732 (= e!2365680 e!2365681)))

(declare-fun c!668014 () Bool)

(assert (=> b!3830732 (= c!668014 ((_ is Leaf!19232) (right!31605 (c!667180 (_2!22945 lt!1328863)))))))

(declare-fun b!3830733 () Bool)

(assert (=> b!3830733 (= e!2365681 (list!15063 (xs!15716 (right!31605 (c!667180 (_2!22945 lt!1328863))))))))

(declare-fun b!3830734 () Bool)

(assert (=> b!3830734 (= e!2365681 (++!10187 (list!15059 (left!31275 (right!31605 (c!667180 (_2!22945 lt!1328863))))) (list!15059 (right!31605 (right!31605 (c!667180 (_2!22945 lt!1328863)))))))))

(declare-fun d!1137302 () Bool)

(declare-fun c!668013 () Bool)

(assert (=> d!1137302 (= c!668013 ((_ is Empty!12422) (right!31605 (c!667180 (_2!22945 lt!1328863)))))))

(assert (=> d!1137302 (= (list!15059 (right!31605 (c!667180 (_2!22945 lt!1328863)))) e!2365680)))

(assert (= (and d!1137302 c!668013) b!3830731))

(assert (= (and d!1137302 (not c!668013)) b!3830732))

(assert (= (and b!3830732 c!668014) b!3830733))

(assert (= (and b!3830732 (not c!668014)) b!3830734))

(declare-fun m!4385399 () Bool)

(assert (=> b!3830733 m!4385399))

(declare-fun m!4385401 () Bool)

(assert (=> b!3830734 m!4385401))

(declare-fun m!4385403 () Bool)

(assert (=> b!3830734 m!4385403))

(assert (=> b!3830734 m!4385401))

(assert (=> b!3830734 m!4385403))

(declare-fun m!4385405 () Bool)

(assert (=> b!3830734 m!4385405))

(assert (=> b!3828369 d!1137302))

(declare-fun d!1137304 () Bool)

(declare-fun lt!1330220 () Int)

(assert (=> d!1137304 (>= lt!1330220 0)))

(declare-fun e!2365682 () Int)

(assert (=> d!1137304 (= lt!1330220 e!2365682)))

(declare-fun c!668015 () Bool)

(assert (=> d!1137304 (= c!668015 ((_ is Nil!40424) (_1!22950 lt!1329067)))))

(assert (=> d!1137304 (= (size!30476 (_1!22950 lt!1329067)) lt!1330220)))

(declare-fun b!3830735 () Bool)

(assert (=> b!3830735 (= e!2365682 0)))

(declare-fun b!3830736 () Bool)

(assert (=> b!3830736 (= e!2365682 (+ 1 (size!30476 (t!308875 (_1!22950 lt!1329067)))))))

(assert (= (and d!1137304 c!668015) b!3830735))

(assert (= (and d!1137304 (not c!668015)) b!3830736))

(declare-fun m!4385407 () Bool)

(assert (=> b!3830736 m!4385407))

(assert (=> d!1135530 d!1137304))

(assert (=> d!1135530 d!1136932))

(assert (=> b!3827970 d!1136892))

(assert (=> b!3827970 d!1136898))

(assert (=> b!3827970 d!1136894))

(assert (=> b!3827970 d!1135436))

(declare-fun d!1137306 () Bool)

(assert (=> d!1137306 (= (list!15064 (xs!15717 (c!667181 (_1!22945 lt!1328855)))) (innerList!12483 (xs!15717 (c!667181 (_1!22945 lt!1328855)))))))

(assert (=> b!3828524 d!1137306))

(declare-fun d!1137308 () Bool)

(declare-fun res!1550860 () Bool)

(declare-fun e!2365683 () Bool)

(assert (=> d!1137308 (=> (not res!1550860) (not e!2365683))))

(assert (=> d!1137308 (= res!1550860 (<= (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 input!678))))) 512))))

(assert (=> d!1137308 (= (inv!54498 (right!31605 (c!667180 input!678))) e!2365683)))

(declare-fun b!3830737 () Bool)

(declare-fun res!1550861 () Bool)

(assert (=> b!3830737 (=> (not res!1550861) (not e!2365683))))

(assert (=> b!3830737 (= res!1550861 (= (csize!25075 (right!31605 (c!667180 input!678))) (size!30470 (list!15063 (xs!15716 (right!31605 (c!667180 input!678)))))))))

(declare-fun b!3830738 () Bool)

(assert (=> b!3830738 (= e!2365683 (and (> (csize!25075 (right!31605 (c!667180 input!678))) 0) (<= (csize!25075 (right!31605 (c!667180 input!678))) 512)))))

(assert (= (and d!1137308 res!1550860) b!3830737))

(assert (= (and b!3830737 res!1550861) b!3830738))

(assert (=> d!1137308 m!4384843))

(assert (=> d!1137308 m!4384843))

(declare-fun m!4385409 () Bool)

(assert (=> d!1137308 m!4385409))

(assert (=> b!3830737 m!4384843))

(assert (=> b!3830737 m!4384843))

(assert (=> b!3830737 m!4385409))

(assert (=> b!3828550 d!1137308))

(declare-fun d!1137310 () Bool)

(declare-fun res!1550862 () Bool)

(declare-fun e!2365684 () Bool)

(assert (=> d!1137310 (=> (not res!1550862) (not e!2365684))))

(assert (=> d!1137310 (= res!1550862 (= (csize!25074 (left!31275 (c!667180 totalInput!335))) (+ (size!30478 (left!31275 (left!31275 (c!667180 totalInput!335)))) (size!30478 (right!31605 (left!31275 (c!667180 totalInput!335)))))))))

(assert (=> d!1137310 (= (inv!54497 (left!31275 (c!667180 totalInput!335))) e!2365684)))

(declare-fun b!3830739 () Bool)

(declare-fun res!1550863 () Bool)

(assert (=> b!3830739 (=> (not res!1550863) (not e!2365684))))

(assert (=> b!3830739 (= res!1550863 (and (not (= (left!31275 (left!31275 (c!667180 totalInput!335))) Empty!12422)) (not (= (right!31605 (left!31275 (c!667180 totalInput!335))) Empty!12422))))))

(declare-fun b!3830740 () Bool)

(declare-fun res!1550864 () Bool)

(assert (=> b!3830740 (=> (not res!1550864) (not e!2365684))))

(assert (=> b!3830740 (= res!1550864 (= (cheight!12633 (left!31275 (c!667180 totalInput!335))) (+ (max!0 (height!1818 (left!31275 (left!31275 (c!667180 totalInput!335)))) (height!1818 (right!31605 (left!31275 (c!667180 totalInput!335))))) 1)))))

(declare-fun b!3830741 () Bool)

(assert (=> b!3830741 (= e!2365684 (<= 0 (cheight!12633 (left!31275 (c!667180 totalInput!335)))))))

(assert (= (and d!1137310 res!1550862) b!3830739))

(assert (= (and b!3830739 res!1550863) b!3830740))

(assert (= (and b!3830740 res!1550864) b!3830741))

(declare-fun m!4385411 () Bool)

(assert (=> d!1137310 m!4385411))

(declare-fun m!4385413 () Bool)

(assert (=> d!1137310 m!4385413))

(assert (=> b!3830740 m!4384753))

(assert (=> b!3830740 m!4384755))

(assert (=> b!3830740 m!4384753))

(assert (=> b!3830740 m!4384755))

(declare-fun m!4385415 () Bool)

(assert (=> b!3830740 m!4385415))

(assert (=> b!3828107 d!1137310))

(declare-fun b!3830742 () Bool)

(declare-fun e!2365687 () Bool)

(declare-fun lt!1330224 () Option!8648)

(assert (=> b!3830742 (= e!2365687 (= (list!15055 (_2!22946 (get!13412 lt!1330224))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3830743 () Bool)

(declare-fun e!2365685 () Bool)

(declare-fun e!2365688 () Bool)

(assert (=> b!3830743 (= e!2365685 e!2365688)))

(declare-fun res!1550865 () Bool)

(assert (=> b!3830743 (=> res!1550865 e!2365688)))

(assert (=> b!3830743 (= res!1550865 (not (isDefined!6810 lt!1330224)))))

(declare-fun b!3830744 () Bool)

(declare-fun res!1550867 () Bool)

(assert (=> b!3830744 (=> (not res!1550867) (not e!2365685))))

(declare-fun e!2365690 () Bool)

(assert (=> b!3830744 (= res!1550867 e!2365690)))

(declare-fun res!1550866 () Bool)

(assert (=> b!3830744 (=> res!1550866 e!2365690)))

(assert (=> b!3830744 (= res!1550866 (not (isDefined!6810 lt!1330224)))))

(declare-fun b!3830745 () Bool)

(declare-fun e!2365686 () Option!8648)

(declare-fun call!281478 () Option!8648)

(assert (=> b!3830745 (= e!2365686 call!281478)))

(declare-fun d!1137312 () Bool)

(assert (=> d!1137312 e!2365685))

(declare-fun res!1550870 () Bool)

(assert (=> d!1137312 (=> (not res!1550870) (not e!2365685))))

(assert (=> d!1137312 (= res!1550870 (= (isDefined!6810 lt!1330224) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))))

(assert (=> d!1137312 (= lt!1330224 e!2365686)))

(declare-fun c!668016 () Bool)

(assert (=> d!1137312 (= c!668016 (and ((_ is Cons!40425) (t!308876 rules!1265)) ((_ is Nil!40425) (t!308876 (t!308876 rules!1265)))))))

(declare-fun lt!1330223 () Unit!58192)

(declare-fun lt!1330225 () Unit!58192)

(assert (=> d!1137312 (= lt!1330223 lt!1330225)))

(declare-fun lt!1330222 () List!40547)

(declare-fun lt!1330226 () List!40547)

(assert (=> d!1137312 (isPrefix!3333 lt!1330222 lt!1330226)))

(assert (=> d!1137312 (= lt!1330225 (lemmaIsPrefixRefl!2118 lt!1330222 lt!1330226))))

(assert (=> d!1137312 (= lt!1330226 (list!15055 input!678))))

(assert (=> d!1137312 (= lt!1330222 (list!15055 input!678))))

(assert (=> d!1137312 (rulesValidInductive!2192 thiss!11876 (t!308876 rules!1265))))

(assert (=> d!1137312 (= (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) input!678) lt!1330224)))

(declare-fun bm!281473 () Bool)

(assert (=> bm!281473 (= call!281478 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 (t!308876 rules!1265)) input!678))))

(declare-fun b!3830746 () Bool)

(assert (=> b!3830746 (= e!2365688 e!2365687)))

(declare-fun res!1550868 () Bool)

(assert (=> b!3830746 (=> (not res!1550868) (not e!2365687))))

(assert (=> b!3830746 (= res!1550868 (= (_1!22946 (get!13412 lt!1330224)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3830747 () Bool)

(declare-fun lt!1330227 () Option!8648)

(declare-fun lt!1330221 () Option!8648)

(assert (=> b!3830747 (= e!2365686 (ite (and ((_ is None!8647) lt!1330227) ((_ is None!8647) lt!1330221)) None!8647 (ite ((_ is None!8647) lt!1330221) lt!1330227 (ite ((_ is None!8647) lt!1330227) lt!1330221 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330227))) (size!30466 (_1!22946 (v!38923 lt!1330221)))) lt!1330227 lt!1330221)))))))

(assert (=> b!3830747 (= lt!1330227 call!281478)))

(assert (=> b!3830747 (= lt!1330221 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 (t!308876 rules!1265)) input!678))))

(declare-fun e!2365689 () Bool)

(declare-fun b!3830748 () Bool)

(assert (=> b!3830748 (= e!2365689 (= (list!15055 (_2!22946 (get!13412 lt!1330224))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(declare-fun b!3830749 () Bool)

(assert (=> b!3830749 (= e!2365690 e!2365689)))

(declare-fun res!1550869 () Bool)

(assert (=> b!3830749 (=> (not res!1550869) (not e!2365689))))

(assert (=> b!3830749 (= res!1550869 (= (_1!22946 (get!13412 lt!1330224)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))))))))

(assert (= (and d!1137312 c!668016) b!3830745))

(assert (= (and d!1137312 (not c!668016)) b!3830747))

(assert (= (or b!3830745 b!3830747) bm!281473))

(assert (= (and d!1137312 res!1550870) b!3830744))

(assert (= (and b!3830744 (not res!1550866)) b!3830749))

(assert (= (and b!3830749 res!1550869) b!3830748))

(assert (= (and b!3830744 res!1550867) b!3830743))

(assert (= (and b!3830743 (not res!1550865)) b!3830746))

(assert (= (and b!3830746 res!1550868) b!3830742))

(declare-fun m!4385417 () Bool)

(assert (=> b!3830744 m!4385417))

(declare-fun m!4385419 () Bool)

(assert (=> d!1137312 m!4385419))

(assert (=> d!1137312 m!4379223))

(assert (=> d!1137312 m!4380869))

(assert (=> d!1137312 m!4380915))

(assert (=> d!1137312 m!4379223))

(declare-fun m!4385421 () Bool)

(assert (=> d!1137312 m!4385421))

(assert (=> d!1137312 m!4380869))

(assert (=> d!1137312 m!4380917))

(assert (=> d!1137312 m!4385417))

(declare-fun m!4385423 () Bool)

(assert (=> b!3830746 m!4385423))

(assert (=> b!3830746 m!4379223))

(assert (=> b!3830746 m!4379223))

(assert (=> b!3830746 m!4379945))

(assert (=> b!3830746 m!4379945))

(assert (=> b!3830746 m!4380907))

(assert (=> b!3830748 m!4380869))

(assert (=> b!3830748 m!4380923))

(assert (=> b!3830748 m!4385423))

(assert (=> b!3830748 m!4379223))

(assert (=> b!3830748 m!4380869))

(assert (=> b!3830748 m!4379223))

(declare-fun m!4385425 () Bool)

(assert (=> b!3830748 m!4385425))

(declare-fun m!4385427 () Bool)

(assert (=> bm!281473 m!4385427))

(assert (=> b!3830743 m!4385417))

(assert (=> b!3830749 m!4385423))

(assert (=> b!3830749 m!4379223))

(assert (=> b!3830749 m!4379223))

(assert (=> b!3830749 m!4380869))

(assert (=> b!3830749 m!4380869))

(assert (=> b!3830749 m!4380923))

(declare-fun m!4385429 () Bool)

(assert (=> b!3830747 m!4385429))

(assert (=> b!3830742 m!4379945))

(assert (=> b!3830742 m!4380907))

(assert (=> b!3830742 m!4379223))

(assert (=> b!3830742 m!4379945))

(assert (=> b!3830742 m!4385423))

(assert (=> b!3830742 m!4379223))

(assert (=> b!3830742 m!4385425))

(assert (=> b!3828470 d!1137312))

(assert (=> d!1135718 d!1136654))

(declare-fun d!1137314 () Bool)

(assert (=> d!1137314 (isPrefix!3333 lt!1329301 lt!1329304)))

(declare-fun lt!1330228 () Unit!58192)

(assert (=> d!1137314 (= lt!1330228 (choose!22530 lt!1329301 lt!1329304))))

(assert (=> d!1137314 (= (lemmaIsPrefixRefl!2118 lt!1329301 lt!1329304) lt!1330228)))

(declare-fun bs!582250 () Bool)

(assert (= bs!582250 d!1137314))

(assert (=> bs!582250 m!4380919))

(declare-fun m!4385431 () Bool)

(assert (=> bs!582250 m!4385431))

(assert (=> d!1135790 d!1137314))

(assert (=> d!1135790 d!1136806))

(assert (=> d!1135790 d!1136792))

(assert (=> d!1135790 d!1135436))

(assert (=> d!1135790 d!1137258))

(declare-fun b!3830752 () Bool)

(declare-fun e!2365691 () Bool)

(assert (=> b!3830752 (= e!2365691 (isPrefix!3333 (tail!5795 lt!1329301) (tail!5795 lt!1329304)))))

(declare-fun b!3830750 () Bool)

(declare-fun e!2365693 () Bool)

(assert (=> b!3830750 (= e!2365693 e!2365691)))

(declare-fun res!1550872 () Bool)

(assert (=> b!3830750 (=> (not res!1550872) (not e!2365691))))

(assert (=> b!3830750 (= res!1550872 (not ((_ is Nil!40423) lt!1329304)))))

(declare-fun b!3830751 () Bool)

(declare-fun res!1550874 () Bool)

(assert (=> b!3830751 (=> (not res!1550874) (not e!2365691))))

(assert (=> b!3830751 (= res!1550874 (= (head!8068 lt!1329301) (head!8068 lt!1329304)))))

(declare-fun d!1137316 () Bool)

(declare-fun e!2365692 () Bool)

(assert (=> d!1137316 e!2365692))

(declare-fun res!1550871 () Bool)

(assert (=> d!1137316 (=> res!1550871 e!2365692)))

(declare-fun lt!1330229 () Bool)

(assert (=> d!1137316 (= res!1550871 (not lt!1330229))))

(assert (=> d!1137316 (= lt!1330229 e!2365693)))

(declare-fun res!1550873 () Bool)

(assert (=> d!1137316 (=> res!1550873 e!2365693)))

(assert (=> d!1137316 (= res!1550873 ((_ is Nil!40423) lt!1329301))))

(assert (=> d!1137316 (= (isPrefix!3333 lt!1329301 lt!1329304) lt!1330229)))

(declare-fun b!3830753 () Bool)

(assert (=> b!3830753 (= e!2365692 (>= (size!30470 lt!1329304) (size!30470 lt!1329301)))))

(assert (= (and d!1137316 (not res!1550873)) b!3830750))

(assert (= (and b!3830750 res!1550872) b!3830751))

(assert (= (and b!3830751 res!1550874) b!3830752))

(assert (= (and d!1137316 (not res!1550871)) b!3830753))

(declare-fun m!4385433 () Bool)

(assert (=> b!3830752 m!4385433))

(declare-fun m!4385435 () Bool)

(assert (=> b!3830752 m!4385435))

(assert (=> b!3830752 m!4385433))

(assert (=> b!3830752 m!4385435))

(declare-fun m!4385437 () Bool)

(assert (=> b!3830752 m!4385437))

(declare-fun m!4385439 () Bool)

(assert (=> b!3830751 m!4385439))

(declare-fun m!4385441 () Bool)

(assert (=> b!3830751 m!4385441))

(declare-fun m!4385443 () Bool)

(assert (=> b!3830753 m!4385443))

(declare-fun m!4385445 () Bool)

(assert (=> b!3830753 m!4385445))

(assert (=> d!1135790 d!1137316))

(declare-fun d!1137318 () Bool)

(assert (=> d!1137318 (= (isDefined!6811 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678))) (not (isEmpty!23857 (maxPrefixZipper!557 thiss!11876 (t!308876 rules!1265) (list!15055 input!678)))))))

(declare-fun bs!582251 () Bool)

(assert (= bs!582251 d!1137318))

(assert (=> bs!582251 m!4380869))

(declare-fun m!4385447 () Bool)

(assert (=> bs!582251 m!4385447))

(assert (=> d!1135790 d!1137318))

(declare-fun d!1137320 () Bool)

(assert (=> d!1137320 (= (inv!54500 (xs!15716 (right!31605 (c!667180 treated!13)))) (<= (size!30470 (innerList!12482 (xs!15716 (right!31605 (c!667180 treated!13))))) 2147483647))))

(declare-fun bs!582252 () Bool)

(assert (= bs!582252 d!1137320))

(declare-fun m!4385449 () Bool)

(assert (=> bs!582252 m!4385449))

(assert (=> b!3828604 d!1137320))

(assert (=> b!3828338 d!1137262))

(assert (=> b!3827606 d!1137060))

(declare-fun bm!281474 () Bool)

(declare-fun call!281480 () List!40548)

(assert (=> bm!281474 (= call!281480 (++!10192 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))

(declare-fun b!3830754 () Bool)

(declare-fun e!2365694 () Bool)

(declare-fun call!281481 () List!40548)

(declare-fun call!281479 () List!40548)

(assert (=> b!3830754 (= e!2365694 (= call!281481 call!281479))))

(declare-fun d!1137322 () Bool)

(assert (=> d!1137322 e!2365694))

(declare-fun c!668017 () Bool)

(assert (=> d!1137322 (= c!668017 ((_ is Nil!40424) (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> d!1137322 (= (appendAssoc!285 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))) true)))

(declare-fun bm!281475 () Bool)

(declare-fun call!281482 () List!40548)

(assert (=> bm!281475 (= call!281479 (++!10192 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) call!281482))))

(declare-fun bm!281476 () Bool)

(assert (=> bm!281476 (= call!281482 (++!10192 (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun b!3830755 () Bool)

(assert (=> b!3830755 (= e!2365694 (= call!281481 call!281479))))

(declare-fun lt!1330230 () Bool)

(assert (=> b!3830755 (= lt!1330230 (appendAssoc!285 (t!308875 (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328861))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun bm!281477 () Bool)

(assert (=> bm!281477 (= call!281481 (++!10192 call!281480 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328861))))))))

(assert (= (and d!1137322 c!668017) b!3830754))

(assert (= (and d!1137322 (not c!668017)) b!3830755))

(assert (= (or b!3830754 b!3830755) bm!281474))

(assert (= (or b!3830754 b!3830755) bm!281476))

(assert (= (or b!3830754 b!3830755) bm!281477))

(assert (= (or b!3830754 b!3830755) bm!281475))

(assert (=> b!3830755 m!4379867))

(assert (=> b!3830755 m!4379865))

(declare-fun m!4385451 () Bool)

(assert (=> b!3830755 m!4385451))

(assert (=> bm!281474 m!4379871))

(assert (=> bm!281474 m!4379867))

(declare-fun m!4385453 () Bool)

(assert (=> bm!281474 m!4385453))

(assert (=> bm!281477 m!4379865))

(declare-fun m!4385455 () Bool)

(assert (=> bm!281477 m!4385455))

(assert (=> bm!281475 m!4379871))

(declare-fun m!4385457 () Bool)

(assert (=> bm!281475 m!4385457))

(assert (=> bm!281476 m!4379867))

(assert (=> bm!281476 m!4379865))

(declare-fun m!4385459 () Bool)

(assert (=> bm!281476 m!4385459))

(assert (=> b!3827606 d!1137322))

(assert (=> b!3827606 d!1135638))

(declare-fun b!3830758 () Bool)

(declare-fun res!1550875 () Bool)

(declare-fun e!2365696 () Bool)

(assert (=> b!3830758 (=> (not res!1550875) (not e!2365696))))

(declare-fun lt!1330231 () List!40548)

(assert (=> b!3830758 (= res!1550875 (= (size!30476 lt!1330231) (+ (size!30476 (list!15060 (c!667181 acc!335))) (size!30476 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))))

(declare-fun b!3830759 () Bool)

(assert (=> b!3830759 (= e!2365696 (or (not (= (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))) Nil!40424)) (= lt!1330231 (list!15060 (c!667181 acc!335)))))))

(declare-fun b!3830757 () Bool)

(declare-fun e!2365695 () List!40548)

(assert (=> b!3830757 (= e!2365695 (Cons!40424 (h!45844 (list!15060 (c!667181 acc!335))) (++!10192 (t!308875 (list!15060 (c!667181 acc!335))) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(declare-fun b!3830756 () Bool)

(assert (=> b!3830756 (= e!2365695 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861))))))))

(declare-fun d!1137324 () Bool)

(assert (=> d!1137324 e!2365696))

(declare-fun res!1550876 () Bool)

(assert (=> d!1137324 (=> (not res!1550876) (not e!2365696))))

(assert (=> d!1137324 (= res!1550876 (= (content!5992 lt!1330231) ((_ map or) (content!5992 (list!15060 (c!667181 acc!335))) (content!5992 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))))))))

(assert (=> d!1137324 (= lt!1330231 e!2365695)))

(declare-fun c!668018 () Bool)

(assert (=> d!1137324 (= c!668018 ((_ is Nil!40424) (list!15060 (c!667181 acc!335))))))

(assert (=> d!1137324 (= (++!10192 (list!15060 (c!667181 acc!335)) (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328861)))))) lt!1330231)))

(assert (= (and d!1137324 c!668018) b!3830756))

(assert (= (and d!1137324 (not c!668018)) b!3830757))

(assert (= (and d!1137324 res!1550876) b!3830758))

(assert (= (and b!3830758 res!1550875) b!3830759))

(declare-fun m!4385461 () Bool)

(assert (=> b!3830758 m!4385461))

(assert (=> b!3830758 m!4379595))

(assert (=> b!3830758 m!4385271))

(assert (=> b!3830758 m!4379869))

(declare-fun m!4385463 () Bool)

(assert (=> b!3830758 m!4385463))

(assert (=> b!3830757 m!4379869))

(declare-fun m!4385465 () Bool)

(assert (=> b!3830757 m!4385465))

(declare-fun m!4385467 () Bool)

(assert (=> d!1137324 m!4385467))

(assert (=> d!1137324 m!4379595))

(assert (=> d!1137324 m!4385277))

(assert (=> d!1137324 m!4379869))

(declare-fun m!4385469 () Bool)

(assert (=> d!1137324 m!4385469))

(assert (=> b!3827606 d!1137324))

(assert (=> b!3827606 d!1137058))

(assert (=> b!3827606 d!1137176))

(declare-fun d!1137326 () Bool)

(declare-fun lt!1330232 () Int)

(assert (=> d!1137326 (>= lt!1330232 0)))

(declare-fun e!2365697 () Int)

(assert (=> d!1137326 (= lt!1330232 e!2365697)))

(declare-fun c!668019 () Bool)

(assert (=> d!1137326 (= c!668019 ((_ is Nil!40423) (_2!22949 (get!13413 lt!1329054))))))

(assert (=> d!1137326 (= (size!30470 (_2!22949 (get!13413 lt!1329054))) lt!1330232)))

(declare-fun b!3830760 () Bool)

(assert (=> b!3830760 (= e!2365697 0)))

(declare-fun b!3830761 () Bool)

(assert (=> b!3830761 (= e!2365697 (+ 1 (size!30470 (t!308874 (_2!22949 (get!13413 lt!1329054))))))))

(assert (= (and d!1137326 c!668019) b!3830760))

(assert (= (and d!1137326 (not c!668019)) b!3830761))

(declare-fun m!4385471 () Bool)

(assert (=> b!3830761 m!4385471))

(assert (=> b!3827719 d!1137326))

(assert (=> b!3827719 d!1136740))

(declare-fun d!1137328 () Bool)

(declare-fun lt!1330233 () Int)

(assert (=> d!1137328 (>= lt!1330233 0)))

(declare-fun e!2365698 () Int)

(assert (=> d!1137328 (= lt!1330233 e!2365698)))

(declare-fun c!668020 () Bool)

(assert (=> d!1137328 (= c!668020 ((_ is Nil!40423) (list!15055 input!678)))))

(assert (=> d!1137328 (= (size!30470 (list!15055 input!678)) lt!1330233)))

(declare-fun b!3830762 () Bool)

(assert (=> b!3830762 (= e!2365698 0)))

(declare-fun b!3830763 () Bool)

(assert (=> b!3830763 (= e!2365698 (+ 1 (size!30470 (t!308874 (list!15055 input!678)))))))

(assert (= (and d!1137328 c!668020) b!3830762))

(assert (= (and d!1137328 (not c!668020)) b!3830763))

(declare-fun m!4385473 () Bool)

(assert (=> b!3830763 m!4385473))

(assert (=> b!3827719 d!1137328))

(assert (=> b!3828408 d!1137084))

(declare-fun d!1137330 () Bool)

(assert (=> d!1137330 (= (list!15064 (xs!15717 (c!667181 lt!1328854))) (innerList!12483 (xs!15717 (c!667181 lt!1328854))))))

(assert (=> b!3828434 d!1137330))

(assert (=> b!3828532 d!1136802))

(assert (=> b!3828532 d!1136804))

(declare-fun d!1137332 () Bool)

(declare-fun res!1550879 () Bool)

(declare-fun e!2365700 () Bool)

(assert (=> d!1137332 (=> res!1550879 e!2365700)))

(assert (=> d!1137332 (= res!1550879 (not ((_ is Node!12422) (right!31605 (c!667180 totalInput!335)))))))

(assert (=> d!1137332 (= (isBalanced!3602 (right!31605 (c!667180 totalInput!335))) e!2365700)))

(declare-fun b!3830764 () Bool)

(declare-fun res!1550881 () Bool)

(declare-fun e!2365699 () Bool)

(assert (=> b!3830764 (=> (not res!1550881) (not e!2365699))))

(assert (=> b!3830764 (= res!1550881 (isBalanced!3602 (right!31605 (right!31605 (c!667180 totalInput!335)))))))

(declare-fun b!3830765 () Bool)

(assert (=> b!3830765 (= e!2365700 e!2365699)))

(declare-fun res!1550880 () Bool)

(assert (=> b!3830765 (=> (not res!1550880) (not e!2365699))))

(assert (=> b!3830765 (= res!1550880 (<= (- 1) (- (height!1818 (left!31275 (right!31605 (c!667180 totalInput!335)))) (height!1818 (right!31605 (right!31605 (c!667180 totalInput!335)))))))))

(declare-fun b!3830766 () Bool)

(assert (=> b!3830766 (= e!2365699 (not (isEmpty!23861 (right!31605 (right!31605 (c!667180 totalInput!335))))))))

(declare-fun b!3830767 () Bool)

(declare-fun res!1550878 () Bool)

(assert (=> b!3830767 (=> (not res!1550878) (not e!2365699))))

(assert (=> b!3830767 (= res!1550878 (<= (- (height!1818 (left!31275 (right!31605 (c!667180 totalInput!335)))) (height!1818 (right!31605 (right!31605 (c!667180 totalInput!335))))) 1))))

(declare-fun b!3830768 () Bool)

(declare-fun res!1550882 () Bool)

(assert (=> b!3830768 (=> (not res!1550882) (not e!2365699))))

(assert (=> b!3830768 (= res!1550882 (not (isEmpty!23861 (left!31275 (right!31605 (c!667180 totalInput!335))))))))

(declare-fun b!3830769 () Bool)

(declare-fun res!1550877 () Bool)

(assert (=> b!3830769 (=> (not res!1550877) (not e!2365699))))

(assert (=> b!3830769 (= res!1550877 (isBalanced!3602 (left!31275 (right!31605 (c!667180 totalInput!335)))))))

(assert (= (and d!1137332 (not res!1550879)) b!3830765))

(assert (= (and b!3830765 res!1550880) b!3830767))

(assert (= (and b!3830767 res!1550878) b!3830769))

(assert (= (and b!3830769 res!1550877) b!3830764))

(assert (= (and b!3830764 res!1550881) b!3830768))

(assert (= (and b!3830768 res!1550882) b!3830766))

(assert (=> b!3830767 m!4384503))

(assert (=> b!3830767 m!4384505))

(declare-fun m!4385475 () Bool)

(assert (=> b!3830766 m!4385475))

(declare-fun m!4385477 () Bool)

(assert (=> b!3830768 m!4385477))

(declare-fun m!4385479 () Bool)

(assert (=> b!3830764 m!4385479))

(assert (=> b!3830765 m!4384503))

(assert (=> b!3830765 m!4384505))

(declare-fun m!4385481 () Bool)

(assert (=> b!3830769 m!4385481))

(assert (=> b!3828159 d!1137332))

(declare-fun d!1137334 () Bool)

(declare-fun lt!1330234 () Int)

(assert (=> d!1137334 (>= lt!1330234 0)))

(declare-fun e!2365701 () Int)

(assert (=> d!1137334 (= lt!1330234 e!2365701)))

(declare-fun c!668021 () Bool)

(assert (=> d!1137334 (= c!668021 ((_ is Nil!40423) lt!1329317))))

(assert (=> d!1137334 (= (size!30470 lt!1329317) lt!1330234)))

(declare-fun b!3830770 () Bool)

(assert (=> b!3830770 (= e!2365701 0)))

(declare-fun b!3830771 () Bool)

(assert (=> b!3830771 (= e!2365701 (+ 1 (size!30470 (t!308874 lt!1329317))))))

(assert (= (and d!1137334 c!668021) b!3830770))

(assert (= (and d!1137334 (not c!668021)) b!3830771))

(declare-fun m!4385483 () Bool)

(assert (=> b!3830771 m!4385483))

(assert (=> b!3828457 d!1137334))

(assert (=> b!3828417 d!1136942))

(assert (=> b!3828417 d!1137190))

(assert (=> b!3828417 d!1137178))

(assert (=> b!3828417 d!1135436))

(declare-fun d!1137336 () Bool)

(declare-fun lt!1330235 () Int)

(assert (=> d!1137336 (= lt!1330235 (size!30470 (list!15055 (_2!22945 lt!1329332))))))

(assert (=> d!1137336 (= lt!1330235 (size!30478 (c!667180 (_2!22945 lt!1329332))))))

(assert (=> d!1137336 (= (size!30472 (_2!22945 lt!1329332)) lt!1330235)))

(declare-fun bs!582253 () Bool)

(assert (= bs!582253 d!1137336))

(assert (=> bs!582253 m!4381057))

(assert (=> bs!582253 m!4381057))

(declare-fun m!4385485 () Bool)

(assert (=> bs!582253 m!4385485))

(declare-fun m!4385487 () Bool)

(assert (=> bs!582253 m!4385487))

(assert (=> b!3828519 d!1137336))

(declare-fun d!1137338 () Bool)

(declare-fun lt!1330236 () Int)

(assert (=> d!1137338 (= lt!1330236 (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))

(assert (=> d!1137338 (= lt!1330236 (size!30478 (c!667180 (_2!22946 (v!38923 lt!1328951)))))))

(assert (=> d!1137338 (= (size!30472 (_2!22946 (v!38923 lt!1328951))) lt!1330236)))

(declare-fun bs!582254 () Bool)

(assert (= bs!582254 d!1137338))

(assert (=> bs!582254 m!4381059))

(assert (=> bs!582254 m!4381059))

(assert (=> bs!582254 m!4383625))

(declare-fun m!4385489 () Bool)

(assert (=> bs!582254 m!4385489))

(assert (=> b!3828519 d!1137338))

(declare-fun d!1137340 () Bool)

(assert (=> d!1137340 (= (isEmpty!23857 lt!1329054) (not ((_ is Some!8649) lt!1329054)))))

(assert (=> d!1135516 d!1137340))

(assert (=> d!1135516 d!1136904))

(assert (=> d!1135516 d!1136906))

(assert (=> d!1135516 d!1135802))

(declare-fun d!1137342 () Bool)

(declare-fun lt!1330237 () Int)

(assert (=> d!1137342 (>= lt!1330237 0)))

(declare-fun e!2365702 () Int)

(assert (=> d!1137342 (= lt!1330237 e!2365702)))

(declare-fun c!668022 () Bool)

(assert (=> d!1137342 (= c!668022 ((_ is Nil!40424) lt!1329235))))

(assert (=> d!1137342 (= (size!30476 lt!1329235) lt!1330237)))

(declare-fun b!3830772 () Bool)

(assert (=> b!3830772 (= e!2365702 0)))

(declare-fun b!3830773 () Bool)

(assert (=> b!3830773 (= e!2365702 (+ 1 (size!30476 (t!308875 lt!1329235))))))

(assert (= (and d!1137342 c!668022) b!3830772))

(assert (= (and d!1137342 (not c!668022)) b!3830773))

(declare-fun m!4385491 () Bool)

(assert (=> b!3830773 m!4385491))

(assert (=> b!3828210 d!1137342))

(declare-fun d!1137344 () Bool)

(declare-fun lt!1330238 () Int)

(assert (=> d!1137344 (>= lt!1330238 0)))

(declare-fun e!2365703 () Int)

(assert (=> d!1137344 (= lt!1330238 e!2365703)))

(declare-fun c!668023 () Bool)

(assert (=> d!1137344 (= c!668023 ((_ is Nil!40424) (list!15056 acc!335)))))

(assert (=> d!1137344 (= (size!30476 (list!15056 acc!335)) lt!1330238)))

(declare-fun b!3830774 () Bool)

(assert (=> b!3830774 (= e!2365703 0)))

(declare-fun b!3830775 () Bool)

(assert (=> b!3830775 (= e!2365703 (+ 1 (size!30476 (t!308875 (list!15056 acc!335)))))))

(assert (= (and d!1137344 c!668023) b!3830774))

(assert (= (and d!1137344 (not c!668023)) b!3830775))

(assert (=> b!3830775 m!4385325))

(assert (=> b!3828210 d!1137344))

(declare-fun d!1137346 () Bool)

(declare-fun lt!1330239 () Int)

(assert (=> d!1137346 (>= lt!1330239 0)))

(declare-fun e!2365704 () Int)

(assert (=> d!1137346 (= lt!1330239 e!2365704)))

(declare-fun c!668024 () Bool)

(assert (=> d!1137346 (= c!668024 ((_ is Nil!40424) (list!15056 (_1!22945 lt!1328861))))))

(assert (=> d!1137346 (= (size!30476 (list!15056 (_1!22945 lt!1328861))) lt!1330239)))

(declare-fun b!3830776 () Bool)

(assert (=> b!3830776 (= e!2365704 0)))

(declare-fun b!3830777 () Bool)

(assert (=> b!3830777 (= e!2365704 (+ 1 (size!30476 (t!308875 (list!15056 (_1!22945 lt!1328861))))))))

(assert (= (and d!1137346 c!668024) b!3830776))

(assert (= (and d!1137346 (not c!668024)) b!3830777))

(declare-fun m!4385493 () Bool)

(assert (=> b!3830777 m!4385493))

(assert (=> b!3828210 d!1137346))

(assert (=> b!3828023 d!1136900))

(assert (=> b!3828023 d!1136712))

(assert (=> b!3828023 d!1136714))

(declare-fun d!1137348 () Bool)

(declare-fun res!1550885 () Bool)

(declare-fun e!2365706 () Bool)

(assert (=> d!1137348 (=> res!1550885 e!2365706)))

(assert (=> d!1137348 (= res!1550885 (not ((_ is Node!12422) (left!31275 (c!667180 treated!13)))))))

(assert (=> d!1137348 (= (isBalanced!3602 (left!31275 (c!667180 treated!13))) e!2365706)))

(declare-fun b!3830778 () Bool)

(declare-fun res!1550887 () Bool)

(declare-fun e!2365705 () Bool)

(assert (=> b!3830778 (=> (not res!1550887) (not e!2365705))))

(assert (=> b!3830778 (= res!1550887 (isBalanced!3602 (right!31605 (left!31275 (c!667180 treated!13)))))))

(declare-fun b!3830779 () Bool)

(assert (=> b!3830779 (= e!2365706 e!2365705)))

(declare-fun res!1550886 () Bool)

(assert (=> b!3830779 (=> (not res!1550886) (not e!2365705))))

(assert (=> b!3830779 (= res!1550886 (<= (- 1) (- (height!1818 (left!31275 (left!31275 (c!667180 treated!13)))) (height!1818 (right!31605 (left!31275 (c!667180 treated!13)))))))))

(declare-fun b!3830780 () Bool)

(assert (=> b!3830780 (= e!2365705 (not (isEmpty!23861 (right!31605 (left!31275 (c!667180 treated!13))))))))

(declare-fun b!3830781 () Bool)

(declare-fun res!1550884 () Bool)

(assert (=> b!3830781 (=> (not res!1550884) (not e!2365705))))

(assert (=> b!3830781 (= res!1550884 (<= (- (height!1818 (left!31275 (left!31275 (c!667180 treated!13)))) (height!1818 (right!31605 (left!31275 (c!667180 treated!13))))) 1))))

(declare-fun b!3830782 () Bool)

(declare-fun res!1550888 () Bool)

(assert (=> b!3830782 (=> (not res!1550888) (not e!2365705))))

(assert (=> b!3830782 (= res!1550888 (not (isEmpty!23861 (left!31275 (left!31275 (c!667180 treated!13))))))))

(declare-fun b!3830783 () Bool)

(declare-fun res!1550883 () Bool)

(assert (=> b!3830783 (=> (not res!1550883) (not e!2365705))))

(assert (=> b!3830783 (= res!1550883 (isBalanced!3602 (left!31275 (left!31275 (c!667180 treated!13)))))))

(assert (= (and d!1137348 (not res!1550885)) b!3830779))

(assert (= (and b!3830779 res!1550886) b!3830781))

(assert (= (and b!3830781 res!1550884) b!3830783))

(assert (= (and b!3830783 res!1550883) b!3830778))

(assert (= (and b!3830778 res!1550887) b!3830782))

(assert (= (and b!3830782 res!1550888) b!3830780))

(assert (=> b!3830781 m!4384565))

(assert (=> b!3830781 m!4384567))

(declare-fun m!4385495 () Bool)

(assert (=> b!3830780 m!4385495))

(declare-fun m!4385497 () Bool)

(assert (=> b!3830782 m!4385497))

(declare-fun m!4385499 () Bool)

(assert (=> b!3830778 m!4385499))

(assert (=> b!3830779 m!4384565))

(assert (=> b!3830779 m!4384567))

(declare-fun m!4385501 () Bool)

(assert (=> b!3830783 m!4385501))

(assert (=> b!3828068 d!1137348))

(declare-fun d!1137350 () Bool)

(declare-fun res!1550889 () Bool)

(declare-fun e!2365707 () Bool)

(assert (=> d!1137350 (=> (not res!1550889) (not e!2365707))))

(assert (=> d!1137350 (= res!1550889 (= (csize!25074 (right!31605 (c!667180 treated!13))) (+ (size!30478 (left!31275 (right!31605 (c!667180 treated!13)))) (size!30478 (right!31605 (right!31605 (c!667180 treated!13)))))))))

(assert (=> d!1137350 (= (inv!54497 (right!31605 (c!667180 treated!13))) e!2365707)))

(declare-fun b!3830784 () Bool)

(declare-fun res!1550890 () Bool)

(assert (=> b!3830784 (=> (not res!1550890) (not e!2365707))))

(assert (=> b!3830784 (= res!1550890 (and (not (= (left!31275 (right!31605 (c!667180 treated!13))) Empty!12422)) (not (= (right!31605 (right!31605 (c!667180 treated!13))) Empty!12422))))))

(declare-fun b!3830785 () Bool)

(declare-fun res!1550891 () Bool)

(assert (=> b!3830785 (=> (not res!1550891) (not e!2365707))))

(assert (=> b!3830785 (= res!1550891 (= (cheight!12633 (right!31605 (c!667180 treated!13))) (+ (max!0 (height!1818 (left!31275 (right!31605 (c!667180 treated!13)))) (height!1818 (right!31605 (right!31605 (c!667180 treated!13))))) 1)))))

(declare-fun b!3830786 () Bool)

(assert (=> b!3830786 (= e!2365707 (<= 0 (cheight!12633 (right!31605 (c!667180 treated!13)))))))

(assert (= (and d!1137350 res!1550889) b!3830784))

(assert (= (and b!3830784 res!1550890) b!3830785))

(assert (= (and b!3830785 res!1550891) b!3830786))

(declare-fun m!4385503 () Bool)

(assert (=> d!1137350 m!4385503))

(declare-fun m!4385505 () Bool)

(assert (=> d!1137350 m!4385505))

(assert (=> b!3830785 m!4384405))

(assert (=> b!3830785 m!4384407))

(assert (=> b!3830785 m!4384405))

(assert (=> b!3830785 m!4384407))

(declare-fun m!4385507 () Bool)

(assert (=> b!3830785 m!4385507))

(assert (=> b!3828476 d!1137350))

(declare-fun d!1137352 () Bool)

(declare-fun lt!1330240 () Int)

(assert (=> d!1137352 (= lt!1330240 (size!30476 (list!15056 (_1!22945 lt!1329332))))))

(assert (=> d!1137352 (= lt!1330240 (size!30477 (c!667181 (_1!22945 lt!1329332))))))

(assert (=> d!1137352 (= (size!30471 (_1!22945 lt!1329332)) lt!1330240)))

(declare-fun bs!582255 () Bool)

(assert (= bs!582255 d!1137352))

(assert (=> bs!582255 m!4381069))

(assert (=> bs!582255 m!4381069))

(declare-fun m!4385509 () Bool)

(assert (=> bs!582255 m!4385509))

(declare-fun m!4385511 () Bool)

(assert (=> bs!582255 m!4385511))

(assert (=> d!1135846 d!1137352))

(declare-fun b!3830787 () Bool)

(declare-fun e!2365710 () Bool)

(declare-fun lt!1330244 () Option!8648)

(assert (=> b!3830787 (= e!2365710 (= (list!15055 (_2!22946 (get!13412 lt!1330244))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951))))))))))

(declare-fun b!3830788 () Bool)

(declare-fun e!2365708 () Bool)

(declare-fun e!2365711 () Bool)

(assert (=> b!3830788 (= e!2365708 e!2365711)))

(declare-fun res!1550892 () Bool)

(assert (=> b!3830788 (=> res!1550892 e!2365711)))

(assert (=> b!3830788 (= res!1550892 (not (isDefined!6810 lt!1330244)))))

(declare-fun b!3830789 () Bool)

(declare-fun res!1550894 () Bool)

(assert (=> b!3830789 (=> (not res!1550894) (not e!2365708))))

(declare-fun e!2365713 () Bool)

(assert (=> b!3830789 (= res!1550894 e!2365713)))

(declare-fun res!1550893 () Bool)

(assert (=> b!3830789 (=> res!1550893 e!2365713)))

(assert (=> b!3830789 (= res!1550893 (not (isDefined!6810 lt!1330244)))))

(declare-fun b!3830790 () Bool)

(declare-fun e!2365709 () Option!8648)

(declare-fun call!281483 () Option!8648)

(assert (=> b!3830790 (= e!2365709 call!281483)))

(declare-fun d!1137354 () Bool)

(assert (=> d!1137354 e!2365708))

(declare-fun res!1550897 () Bool)

(assert (=> d!1137354 (=> (not res!1550897) (not e!2365708))))

(assert (=> d!1137354 (= res!1550897 (= (isDefined!6810 lt!1330244) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951)))))))))

(assert (=> d!1137354 (= lt!1330244 e!2365709)))

(declare-fun c!668025 () Bool)

(assert (=> d!1137354 (= c!668025 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330243 () Unit!58192)

(declare-fun lt!1330245 () Unit!58192)

(assert (=> d!1137354 (= lt!1330243 lt!1330245)))

(declare-fun lt!1330242 () List!40547)

(declare-fun lt!1330246 () List!40547)

(assert (=> d!1137354 (isPrefix!3333 lt!1330242 lt!1330246)))

(assert (=> d!1137354 (= lt!1330245 (lemmaIsPrefixRefl!2118 lt!1330242 lt!1330246))))

(assert (=> d!1137354 (= lt!1330246 (list!15055 (_2!22946 (v!38923 lt!1328951))))))

(assert (=> d!1137354 (= lt!1330242 (list!15055 (_2!22946 (v!38923 lt!1328951))))))

(assert (=> d!1137354 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1137354 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328951))) lt!1330244)))

(declare-fun bm!281478 () Bool)

(assert (=> bm!281478 (= call!281483 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) (_2!22946 (v!38923 lt!1328951))))))

(declare-fun b!3830791 () Bool)

(assert (=> b!3830791 (= e!2365711 e!2365710)))

(declare-fun res!1550895 () Bool)

(assert (=> b!3830791 (=> (not res!1550895) (not e!2365710))))

(assert (=> b!3830791 (= res!1550895 (= (_1!22946 (get!13412 lt!1330244)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951))))))))))

(declare-fun b!3830792 () Bool)

(declare-fun lt!1330247 () Option!8648)

(declare-fun lt!1330241 () Option!8648)

(assert (=> b!3830792 (= e!2365709 (ite (and ((_ is None!8647) lt!1330247) ((_ is None!8647) lt!1330241)) None!8647 (ite ((_ is None!8647) lt!1330241) lt!1330247 (ite ((_ is None!8647) lt!1330247) lt!1330241 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330247))) (size!30466 (_1!22946 (v!38923 lt!1330241)))) lt!1330247 lt!1330241)))))))

(assert (=> b!3830792 (= lt!1330247 call!281483)))

(assert (=> b!3830792 (= lt!1330241 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) (_2!22946 (v!38923 lt!1328951))))))

(declare-fun b!3830793 () Bool)

(declare-fun e!2365712 () Bool)

(assert (=> b!3830793 (= e!2365712 (= (list!15055 (_2!22946 (get!13412 lt!1330244))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951))))))))))

(declare-fun b!3830794 () Bool)

(assert (=> b!3830794 (= e!2365713 e!2365712)))

(declare-fun res!1550896 () Bool)

(assert (=> b!3830794 (=> (not res!1550896) (not e!2365712))))

(assert (=> b!3830794 (= res!1550896 (= (_1!22946 (get!13412 lt!1330244)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328951))))))))))

(assert (= (and d!1137354 c!668025) b!3830790))

(assert (= (and d!1137354 (not c!668025)) b!3830792))

(assert (= (or b!3830790 b!3830792) bm!281478))

(assert (= (and d!1137354 res!1550897) b!3830789))

(assert (= (and b!3830789 (not res!1550893)) b!3830794))

(assert (= (and b!3830794 res!1550896) b!3830793))

(assert (= (and b!3830789 res!1550894) b!3830788))

(assert (= (and b!3830788 (not res!1550892)) b!3830791))

(assert (= (and b!3830791 res!1550895) b!3830787))

(declare-fun m!4385513 () Bool)

(assert (=> b!3830789 m!4385513))

(declare-fun m!4385515 () Bool)

(assert (=> d!1137354 m!4385515))

(assert (=> d!1137354 m!4381059))

(declare-fun m!4385517 () Bool)

(assert (=> d!1137354 m!4385517))

(assert (=> d!1137354 m!4379483))

(assert (=> d!1137354 m!4381059))

(declare-fun m!4385519 () Bool)

(assert (=> d!1137354 m!4385519))

(assert (=> d!1137354 m!4385517))

(declare-fun m!4385521 () Bool)

(assert (=> d!1137354 m!4385521))

(assert (=> d!1137354 m!4385513))

(declare-fun m!4385523 () Bool)

(assert (=> b!3830791 m!4385523))

(assert (=> b!3830791 m!4381059))

(assert (=> b!3830791 m!4381059))

(assert (=> b!3830791 m!4383633))

(assert (=> b!3830791 m!4383633))

(declare-fun m!4385525 () Bool)

(assert (=> b!3830791 m!4385525))

(assert (=> b!3830793 m!4385517))

(declare-fun m!4385527 () Bool)

(assert (=> b!3830793 m!4385527))

(assert (=> b!3830793 m!4385523))

(assert (=> b!3830793 m!4381059))

(assert (=> b!3830793 m!4385517))

(assert (=> b!3830793 m!4381059))

(declare-fun m!4385529 () Bool)

(assert (=> b!3830793 m!4385529))

(declare-fun m!4385531 () Bool)

(assert (=> bm!281478 m!4385531))

(assert (=> b!3830788 m!4385513))

(assert (=> b!3830794 m!4385523))

(assert (=> b!3830794 m!4381059))

(assert (=> b!3830794 m!4381059))

(assert (=> b!3830794 m!4385517))

(assert (=> b!3830794 m!4385517))

(assert (=> b!3830794 m!4385527))

(declare-fun m!4385533 () Bool)

(assert (=> b!3830792 m!4385533))

(assert (=> b!3830787 m!4383633))

(assert (=> b!3830787 m!4385525))

(assert (=> b!3830787 m!4381059))

(assert (=> b!3830787 m!4383633))

(assert (=> b!3830787 m!4385523))

(assert (=> b!3830787 m!4381059))

(assert (=> b!3830787 m!4385529))

(assert (=> d!1135846 d!1137354))

(declare-fun d!1137356 () Bool)

(declare-fun choose!22540 (Int) Bool)

(assert (=> d!1137356 (= (Forall!1424 lambda!125942) (choose!22540 lambda!125942))))

(declare-fun bs!582256 () Bool)

(assert (= bs!582256 d!1137356))

(declare-fun m!4385535 () Bool)

(assert (=> bs!582256 m!4385535))

(assert (=> d!1135788 d!1137356))

(assert (=> b!3828508 d!1137284))

(assert (=> b!3828508 d!1137286))

(declare-fun d!1137358 () Bool)

(declare-fun res!1550900 () Bool)

(declare-fun e!2365715 () Bool)

(assert (=> d!1137358 (=> res!1550900 e!2365715)))

(assert (=> d!1137358 (= res!1550900 (not ((_ is Node!12422) (left!31275 (c!667180 input!678)))))))

(assert (=> d!1137358 (= (isBalanced!3602 (left!31275 (c!667180 input!678))) e!2365715)))

(declare-fun b!3830795 () Bool)

(declare-fun res!1550902 () Bool)

(declare-fun e!2365714 () Bool)

(assert (=> b!3830795 (=> (not res!1550902) (not e!2365714))))

(assert (=> b!3830795 (= res!1550902 (isBalanced!3602 (right!31605 (left!31275 (c!667180 input!678)))))))

(declare-fun b!3830796 () Bool)

(assert (=> b!3830796 (= e!2365715 e!2365714)))

(declare-fun res!1550901 () Bool)

(assert (=> b!3830796 (=> (not res!1550901) (not e!2365714))))

(assert (=> b!3830796 (= res!1550901 (<= (- 1) (- (height!1818 (left!31275 (left!31275 (c!667180 input!678)))) (height!1818 (right!31605 (left!31275 (c!667180 input!678)))))))))

(declare-fun b!3830797 () Bool)

(assert (=> b!3830797 (= e!2365714 (not (isEmpty!23861 (right!31605 (left!31275 (c!667180 input!678))))))))

(declare-fun b!3830798 () Bool)

(declare-fun res!1550899 () Bool)

(assert (=> b!3830798 (=> (not res!1550899) (not e!2365714))))

(assert (=> b!3830798 (= res!1550899 (<= (- (height!1818 (left!31275 (left!31275 (c!667180 input!678)))) (height!1818 (right!31605 (left!31275 (c!667180 input!678))))) 1))))

(declare-fun b!3830799 () Bool)

(declare-fun res!1550903 () Bool)

(assert (=> b!3830799 (=> (not res!1550903) (not e!2365714))))

(assert (=> b!3830799 (= res!1550903 (not (isEmpty!23861 (left!31275 (left!31275 (c!667180 input!678))))))))

(declare-fun b!3830800 () Bool)

(declare-fun res!1550898 () Bool)

(assert (=> b!3830800 (=> (not res!1550898) (not e!2365714))))

(assert (=> b!3830800 (= res!1550898 (isBalanced!3602 (left!31275 (left!31275 (c!667180 input!678)))))))

(assert (= (and d!1137358 (not res!1550900)) b!3830796))

(assert (= (and b!3830796 res!1550901) b!3830798))

(assert (= (and b!3830798 res!1550899) b!3830800))

(assert (= (and b!3830800 res!1550898) b!3830795))

(assert (= (and b!3830795 res!1550902) b!3830799))

(assert (= (and b!3830799 res!1550903) b!3830797))

(assert (=> b!3830798 m!4383561))

(assert (=> b!3830798 m!4383563))

(declare-fun m!4385537 () Bool)

(assert (=> b!3830797 m!4385537))

(declare-fun m!4385539 () Bool)

(assert (=> b!3830799 m!4385539))

(declare-fun m!4385541 () Bool)

(assert (=> b!3830795 m!4385541))

(assert (=> b!3830796 m!4383561))

(assert (=> b!3830796 m!4383563))

(declare-fun m!4385543 () Bool)

(assert (=> b!3830800 m!4385543))

(assert (=> b!3828118 d!1137358))

(declare-fun d!1137360 () Bool)

(assert (=> d!1137360 (= (list!15063 (xs!15716 (c!667180 (_2!22945 lt!1328861)))) (innerList!12482 (xs!15716 (c!667180 (_2!22945 lt!1328861)))))))

(assert (=> b!3828528 d!1137360))

(declare-fun d!1137362 () Bool)

(assert (=> d!1137362 (= (height!1816 (ite c!667310 (left!31276 (c!667181 acc!335)) (left!31276 (c!667181 (_1!22945 lt!1328861))))) (ite ((_ is Empty!12423) (ite c!667310 (left!31276 (c!667181 acc!335)) (left!31276 (c!667181 (_1!22945 lt!1328861))))) 0 (ite ((_ is Leaf!19233) (ite c!667310 (left!31276 (c!667181 acc!335)) (left!31276 (c!667181 (_1!22945 lt!1328861))))) 1 (cheight!12634 (ite c!667310 (left!31276 (c!667181 acc!335)) (left!31276 (c!667181 (_1!22945 lt!1328861))))))))))

(assert (=> bm!281226 d!1137362))

(declare-fun d!1137364 () Bool)

(declare-fun lt!1330248 () Int)

(assert (=> d!1137364 (>= lt!1330248 0)))

(declare-fun e!2365716 () Int)

(assert (=> d!1137364 (= lt!1330248 e!2365716)))

(declare-fun c!668026 () Bool)

(assert (=> d!1137364 (= c!668026 ((_ is Nil!40423) (_2!22950 lt!1329067)))))

(assert (=> d!1137364 (= (size!30470 (_2!22950 lt!1329067)) lt!1330248)))

(declare-fun b!3830801 () Bool)

(assert (=> b!3830801 (= e!2365716 0)))

(declare-fun b!3830802 () Bool)

(assert (=> b!3830802 (= e!2365716 (+ 1 (size!30470 (t!308874 (_2!22950 lt!1329067)))))))

(assert (= (and d!1137364 c!668026) b!3830801))

(assert (= (and d!1137364 (not c!668026)) b!3830802))

(declare-fun m!4385545 () Bool)

(assert (=> b!3830802 m!4385545))

(assert (=> b!3827750 d!1137364))

(assert (=> b!3827750 d!1136966))

(declare-fun d!1137366 () Bool)

(declare-fun lt!1330249 () Int)

(assert (=> d!1137366 (= lt!1330249 (size!30470 (list!15055 (_2!22945 lt!1329197))))))

(assert (=> d!1137366 (= lt!1330249 (size!30478 (c!667180 (_2!22945 lt!1329197))))))

(assert (=> d!1137366 (= (size!30472 (_2!22945 lt!1329197)) lt!1330249)))

(declare-fun bs!582257 () Bool)

(assert (= bs!582257 d!1137366))

(assert (=> bs!582257 m!4380337))

(assert (=> bs!582257 m!4380337))

(declare-fun m!4385547 () Bool)

(assert (=> bs!582257 m!4385547))

(declare-fun m!4385549 () Bool)

(assert (=> bs!582257 m!4385549))

(assert (=> b!3828014 d!1137366))

(declare-fun d!1137368 () Bool)

(declare-fun lt!1330250 () Int)

(assert (=> d!1137368 (= lt!1330250 (size!30470 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))

(assert (=> d!1137368 (= lt!1330250 (size!30478 (c!667180 (_2!22946 (v!38923 lt!1328960)))))))

(assert (=> d!1137368 (= (size!30472 (_2!22946 (v!38923 lt!1328960))) lt!1330250)))

(declare-fun bs!582258 () Bool)

(assert (= bs!582258 d!1137368))

(assert (=> bs!582258 m!4380339))

(assert (=> bs!582258 m!4380339))

(assert (=> bs!582258 m!4383809))

(declare-fun m!4385551 () Bool)

(assert (=> bs!582258 m!4385551))

(assert (=> b!3828014 d!1137368))

(declare-fun d!1137370 () Bool)

(assert (=> d!1137370 (= (inv!54478 (tag!7084 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (= (mod (str.len (value!197990 (tag!7084 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) 2) 0))))

(assert (=> b!3828585 d!1137370))

(declare-fun d!1137372 () Bool)

(declare-fun res!1550904 () Bool)

(declare-fun e!2365717 () Bool)

(assert (=> d!1137372 (=> (not res!1550904) (not e!2365717))))

(assert (=> d!1137372 (= res!1550904 (semiInverseModEq!2671 (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))))

(assert (=> d!1137372 (= (inv!54486 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) e!2365717)))

(declare-fun b!3830803 () Bool)

(assert (=> b!3830803 (= e!2365717 (equivClasses!2570 (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))))))

(assert (= (and d!1137372 res!1550904) b!3830803))

(declare-fun m!4385553 () Bool)

(assert (=> d!1137372 m!4385553))

(declare-fun m!4385555 () Bool)

(assert (=> b!3830803 m!4385555))

(assert (=> b!3828585 d!1137372))

(assert (=> b!3828076 d!1137144))

(assert (=> b!3828076 d!1137096))

(assert (=> b!3828403 d!1137066))

(assert (=> b!3828403 d!1135760))

(declare-fun d!1137374 () Bool)

(assert (=> d!1137374 (= (max!0 (height!1818 (left!31275 (c!667180 totalInput!335))) (height!1818 (right!31605 (c!667180 totalInput!335)))) (ite (< (height!1818 (left!31275 (c!667180 totalInput!335))) (height!1818 (right!31605 (c!667180 totalInput!335)))) (height!1818 (right!31605 (c!667180 totalInput!335))) (height!1818 (left!31275 (c!667180 totalInput!335)))))))

(assert (=> b!3828181 d!1137374))

(assert (=> b!3828181 d!1136674))

(assert (=> b!3828181 d!1136676))

(assert (=> d!1135536 d!1137328))

(assert (=> d!1135536 d!1135436))

(declare-fun d!1137376 () Bool)

(declare-fun lt!1330251 () Int)

(assert (=> d!1137376 (= lt!1330251 (size!30470 (list!15059 (c!667180 input!678))))))

(assert (=> d!1137376 (= lt!1330251 (ite ((_ is Empty!12422) (c!667180 input!678)) 0 (ite ((_ is Leaf!19232) (c!667180 input!678)) (csize!25075 (c!667180 input!678)) (csize!25074 (c!667180 input!678)))))))

(assert (=> d!1137376 (= (size!30478 (c!667180 input!678)) lt!1330251)))

(declare-fun bs!582259 () Bool)

(assert (= bs!582259 d!1137376))

(assert (=> bs!582259 m!4379637))

(assert (=> bs!582259 m!4379637))

(declare-fun m!4385557 () Bool)

(assert (=> bs!582259 m!4385557))

(assert (=> d!1135536 d!1137376))

(declare-fun b!3830806 () Bool)

(declare-fun res!1550905 () Bool)

(declare-fun e!2365719 () Bool)

(assert (=> b!3830806 (=> (not res!1550905) (not e!2365719))))

(declare-fun lt!1330252 () List!40548)

(assert (=> b!3830806 (= res!1550905 (= (size!30476 lt!1330252) (+ (size!30476 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855))))) (size!30476 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855))))))))))

(declare-fun b!3830807 () Bool)

(assert (=> b!3830807 (= e!2365719 (or (not (= (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855)))) Nil!40424)) (= lt!1330252 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855)))))))))

(declare-fun b!3830805 () Bool)

(declare-fun e!2365718 () List!40548)

(assert (=> b!3830805 (= e!2365718 (Cons!40424 (h!45844 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855))))) (++!10192 (t!308875 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855))))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855)))))))))

(declare-fun b!3830804 () Bool)

(assert (=> b!3830804 (= e!2365718 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855)))))))

(declare-fun d!1137378 () Bool)

(assert (=> d!1137378 e!2365719))

(declare-fun res!1550906 () Bool)

(assert (=> d!1137378 (=> (not res!1550906) (not e!2365719))))

(assert (=> d!1137378 (= res!1550906 (= (content!5992 lt!1330252) ((_ map or) (content!5992 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855))))) (content!5992 (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855))))))))))

(assert (=> d!1137378 (= lt!1330252 e!2365718)))

(declare-fun c!668027 () Bool)

(assert (=> d!1137378 (= c!668027 ((_ is Nil!40424) (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855))))))))

(assert (=> d!1137378 (= (++!10192 (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855)))) (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855))))) lt!1330252)))

(assert (= (and d!1137378 c!668027) b!3830804))

(assert (= (and d!1137378 (not c!668027)) b!3830805))

(assert (= (and d!1137378 res!1550906) b!3830806))

(assert (= (and b!3830806 res!1550905) b!3830807))

(declare-fun m!4385559 () Bool)

(assert (=> b!3830806 m!4385559))

(assert (=> b!3830806 m!4381075))

(declare-fun m!4385561 () Bool)

(assert (=> b!3830806 m!4385561))

(assert (=> b!3830806 m!4381077))

(declare-fun m!4385563 () Bool)

(assert (=> b!3830806 m!4385563))

(assert (=> b!3830805 m!4381077))

(declare-fun m!4385565 () Bool)

(assert (=> b!3830805 m!4385565))

(declare-fun m!4385567 () Bool)

(assert (=> d!1137378 m!4385567))

(assert (=> d!1137378 m!4381075))

(declare-fun m!4385569 () Bool)

(assert (=> d!1137378 m!4385569))

(assert (=> d!1137378 m!4381077))

(declare-fun m!4385571 () Bool)

(assert (=> d!1137378 m!4385571))

(assert (=> b!3828525 d!1137378))

(declare-fun b!3830809 () Bool)

(declare-fun e!2365720 () List!40548)

(declare-fun e!2365721 () List!40548)

(assert (=> b!3830809 (= e!2365720 e!2365721)))

(declare-fun c!668029 () Bool)

(assert (=> b!3830809 (= c!668029 ((_ is Leaf!19233) (left!31276 (c!667181 (_1!22945 lt!1328855)))))))

(declare-fun b!3830811 () Bool)

(assert (=> b!3830811 (= e!2365721 (++!10192 (list!15060 (left!31276 (left!31276 (c!667181 (_1!22945 lt!1328855))))) (list!15060 (right!31606 (left!31276 (c!667181 (_1!22945 lt!1328855)))))))))

(declare-fun d!1137380 () Bool)

(declare-fun c!668028 () Bool)

(assert (=> d!1137380 (= c!668028 ((_ is Empty!12423) (left!31276 (c!667181 (_1!22945 lt!1328855)))))))

(assert (=> d!1137380 (= (list!15060 (left!31276 (c!667181 (_1!22945 lt!1328855)))) e!2365720)))

(declare-fun b!3830810 () Bool)

(assert (=> b!3830810 (= e!2365721 (list!15064 (xs!15717 (left!31276 (c!667181 (_1!22945 lt!1328855))))))))

(declare-fun b!3830808 () Bool)

(assert (=> b!3830808 (= e!2365720 Nil!40424)))

(assert (= (and d!1137380 c!668028) b!3830808))

(assert (= (and d!1137380 (not c!668028)) b!3830809))

(assert (= (and b!3830809 c!668029) b!3830810))

(assert (= (and b!3830809 (not c!668029)) b!3830811))

(declare-fun m!4385573 () Bool)

(assert (=> b!3830811 m!4385573))

(declare-fun m!4385575 () Bool)

(assert (=> b!3830811 m!4385575))

(assert (=> b!3830811 m!4385573))

(assert (=> b!3830811 m!4385575))

(declare-fun m!4385577 () Bool)

(assert (=> b!3830811 m!4385577))

(declare-fun m!4385579 () Bool)

(assert (=> b!3830810 m!4385579))

(assert (=> b!3828525 d!1137380))

(declare-fun b!3830813 () Bool)

(declare-fun e!2365722 () List!40548)

(declare-fun e!2365723 () List!40548)

(assert (=> b!3830813 (= e!2365722 e!2365723)))

(declare-fun c!668031 () Bool)

(assert (=> b!3830813 (= c!668031 ((_ is Leaf!19233) (right!31606 (c!667181 (_1!22945 lt!1328855)))))))

(declare-fun b!3830815 () Bool)

(assert (=> b!3830815 (= e!2365723 (++!10192 (list!15060 (left!31276 (right!31606 (c!667181 (_1!22945 lt!1328855))))) (list!15060 (right!31606 (right!31606 (c!667181 (_1!22945 lt!1328855)))))))))

(declare-fun d!1137382 () Bool)

(declare-fun c!668030 () Bool)

(assert (=> d!1137382 (= c!668030 ((_ is Empty!12423) (right!31606 (c!667181 (_1!22945 lt!1328855)))))))

(assert (=> d!1137382 (= (list!15060 (right!31606 (c!667181 (_1!22945 lt!1328855)))) e!2365722)))

(declare-fun b!3830814 () Bool)

(assert (=> b!3830814 (= e!2365723 (list!15064 (xs!15717 (right!31606 (c!667181 (_1!22945 lt!1328855))))))))

(declare-fun b!3830812 () Bool)

(assert (=> b!3830812 (= e!2365722 Nil!40424)))

(assert (= (and d!1137382 c!668030) b!3830812))

(assert (= (and d!1137382 (not c!668030)) b!3830813))

(assert (= (and b!3830813 c!668031) b!3830814))

(assert (= (and b!3830813 (not c!668031)) b!3830815))

(declare-fun m!4385581 () Bool)

(assert (=> b!3830815 m!4385581))

(declare-fun m!4385583 () Bool)

(assert (=> b!3830815 m!4385583))

(assert (=> b!3830815 m!4385581))

(assert (=> b!3830815 m!4385583))

(declare-fun m!4385585 () Bool)

(assert (=> b!3830815 m!4385585))

(declare-fun m!4385587 () Bool)

(assert (=> b!3830814 m!4385587))

(assert (=> b!3828525 d!1137382))

(declare-fun d!1137384 () Bool)

(declare-fun lt!1330253 () Int)

(assert (=> d!1137384 (>= lt!1330253 0)))

(declare-fun e!2365724 () Int)

(assert (=> d!1137384 (= lt!1330253 e!2365724)))

(declare-fun c!668032 () Bool)

(assert (=> d!1137384 (= c!668032 ((_ is Nil!40423) (_2!22950 lt!1329188)))))

(assert (=> d!1137384 (= (size!30470 (_2!22950 lt!1329188)) lt!1330253)))

(declare-fun b!3830816 () Bool)

(assert (=> b!3830816 (= e!2365724 0)))

(declare-fun b!3830817 () Bool)

(assert (=> b!3830817 (= e!2365724 (+ 1 (size!30470 (t!308874 (_2!22950 lt!1329188)))))))

(assert (= (and d!1137384 c!668032) b!3830816))

(assert (= (and d!1137384 (not c!668032)) b!3830817))

(declare-fun m!4385589 () Bool)

(assert (=> b!3830817 m!4385589))

(assert (=> b!3827996 d!1137384))

(assert (=> b!3827996 d!1137328))

(assert (=> b!3827405 d!1135862))

(assert (=> b!3827405 d!1135864))

(declare-fun d!1137386 () Bool)

(declare-fun lt!1330254 () Int)

(assert (=> d!1137386 (= lt!1330254 (size!30476 (list!15056 (_1!22945 lt!1329197))))))

(assert (=> d!1137386 (= lt!1330254 (size!30477 (c!667181 (_1!22945 lt!1329197))))))

(assert (=> d!1137386 (= (size!30471 (_1!22945 lt!1329197)) lt!1330254)))

(declare-fun bs!582260 () Bool)

(assert (= bs!582260 d!1137386))

(assert (=> bs!582260 m!4380349))

(assert (=> bs!582260 m!4380349))

(declare-fun m!4385591 () Bool)

(assert (=> bs!582260 m!4385591))

(declare-fun m!4385593 () Bool)

(assert (=> bs!582260 m!4385593))

(assert (=> d!1135632 d!1137386))

(declare-fun lt!1330258 () Option!8648)

(declare-fun e!2365727 () Bool)

(declare-fun b!3830818 () Bool)

(assert (=> b!3830818 (= e!2365727 (= (list!15055 (_2!22946 (get!13412 lt!1330258))) (_2!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960))))))))))

(declare-fun b!3830819 () Bool)

(declare-fun e!2365725 () Bool)

(declare-fun e!2365728 () Bool)

(assert (=> b!3830819 (= e!2365725 e!2365728)))

(declare-fun res!1550907 () Bool)

(assert (=> b!3830819 (=> res!1550907 e!2365728)))

(assert (=> b!3830819 (= res!1550907 (not (isDefined!6810 lt!1330258)))))

(declare-fun b!3830820 () Bool)

(declare-fun res!1550909 () Bool)

(assert (=> b!3830820 (=> (not res!1550909) (not e!2365725))))

(declare-fun e!2365730 () Bool)

(assert (=> b!3830820 (= res!1550909 e!2365730)))

(declare-fun res!1550908 () Bool)

(assert (=> b!3830820 (=> res!1550908 e!2365730)))

(assert (=> b!3830820 (= res!1550908 (not (isDefined!6810 lt!1330258)))))

(declare-fun b!3830821 () Bool)

(declare-fun e!2365726 () Option!8648)

(declare-fun call!281484 () Option!8648)

(assert (=> b!3830821 (= e!2365726 call!281484)))

(declare-fun d!1137388 () Bool)

(assert (=> d!1137388 e!2365725))

(declare-fun res!1550912 () Bool)

(assert (=> d!1137388 (=> (not res!1550912) (not e!2365725))))

(assert (=> d!1137388 (= res!1550912 (= (isDefined!6810 lt!1330258) (isDefined!6811 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960)))))))))

(assert (=> d!1137388 (= lt!1330258 e!2365726)))

(declare-fun c!668033 () Bool)

(assert (=> d!1137388 (= c!668033 (and ((_ is Cons!40425) rules!1265) ((_ is Nil!40425) (t!308876 rules!1265))))))

(declare-fun lt!1330257 () Unit!58192)

(declare-fun lt!1330259 () Unit!58192)

(assert (=> d!1137388 (= lt!1330257 lt!1330259)))

(declare-fun lt!1330256 () List!40547)

(declare-fun lt!1330260 () List!40547)

(assert (=> d!1137388 (isPrefix!3333 lt!1330256 lt!1330260)))

(assert (=> d!1137388 (= lt!1330259 (lemmaIsPrefixRefl!2118 lt!1330256 lt!1330260))))

(assert (=> d!1137388 (= lt!1330260 (list!15055 (_2!22946 (v!38923 lt!1328960))))))

(assert (=> d!1137388 (= lt!1330256 (list!15055 (_2!22946 (v!38923 lt!1328960))))))

(assert (=> d!1137388 (rulesValidInductive!2192 thiss!11876 rules!1265)))

(assert (=> d!1137388 (= (maxPrefixZipperSequence!1219 thiss!11876 rules!1265 (_2!22946 (v!38923 lt!1328960))) lt!1330258)))

(declare-fun bm!281479 () Bool)

(assert (=> bm!281479 (= call!281484 (maxPrefixOneRuleZipperSequence!572 thiss!11876 (h!45845 rules!1265) (_2!22946 (v!38923 lt!1328960))))))

(declare-fun b!3830822 () Bool)

(assert (=> b!3830822 (= e!2365728 e!2365727)))

(declare-fun res!1550910 () Bool)

(assert (=> b!3830822 (=> (not res!1550910) (not e!2365727))))

(assert (=> b!3830822 (= res!1550910 (= (_1!22946 (get!13412 lt!1330258)) (_1!22949 (get!13413 (maxPrefix!3125 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960))))))))))

(declare-fun b!3830823 () Bool)

(declare-fun lt!1330261 () Option!8648)

(declare-fun lt!1330255 () Option!8648)

(assert (=> b!3830823 (= e!2365726 (ite (and ((_ is None!8647) lt!1330261) ((_ is None!8647) lt!1330255)) None!8647 (ite ((_ is None!8647) lt!1330255) lt!1330261 (ite ((_ is None!8647) lt!1330261) lt!1330255 (ite (>= (size!30466 (_1!22946 (v!38923 lt!1330261))) (size!30466 (_1!22946 (v!38923 lt!1330255)))) lt!1330261 lt!1330255)))))))

(assert (=> b!3830823 (= lt!1330261 call!281484)))

(assert (=> b!3830823 (= lt!1330255 (maxPrefixZipperSequence!1219 thiss!11876 (t!308876 rules!1265) (_2!22946 (v!38923 lt!1328960))))))

(declare-fun b!3830824 () Bool)

(declare-fun e!2365729 () Bool)

(assert (=> b!3830824 (= e!2365729 (= (list!15055 (_2!22946 (get!13412 lt!1330258))) (_2!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960))))))))))

(declare-fun b!3830825 () Bool)

(assert (=> b!3830825 (= e!2365730 e!2365729)))

(declare-fun res!1550911 () Bool)

(assert (=> b!3830825 (=> (not res!1550911) (not e!2365729))))

(assert (=> b!3830825 (= res!1550911 (= (_1!22946 (get!13412 lt!1330258)) (_1!22949 (get!13413 (maxPrefixZipper!557 thiss!11876 rules!1265 (list!15055 (_2!22946 (v!38923 lt!1328960))))))))))

(assert (= (and d!1137388 c!668033) b!3830821))

(assert (= (and d!1137388 (not c!668033)) b!3830823))

(assert (= (or b!3830821 b!3830823) bm!281479))

(assert (= (and d!1137388 res!1550912) b!3830820))

(assert (= (and b!3830820 (not res!1550908)) b!3830825))

(assert (= (and b!3830825 res!1550911) b!3830824))

(assert (= (and b!3830820 res!1550909) b!3830819))

(assert (= (and b!3830819 (not res!1550907)) b!3830822))

(assert (= (and b!3830822 res!1550910) b!3830818))

(declare-fun m!4385595 () Bool)

(assert (=> b!3830820 m!4385595))

(declare-fun m!4385597 () Bool)

(assert (=> d!1137388 m!4385597))

(assert (=> d!1137388 m!4380339))

(declare-fun m!4385599 () Bool)

(assert (=> d!1137388 m!4385599))

(assert (=> d!1137388 m!4379483))

(assert (=> d!1137388 m!4380339))

(declare-fun m!4385601 () Bool)

(assert (=> d!1137388 m!4385601))

(assert (=> d!1137388 m!4385599))

(declare-fun m!4385603 () Bool)

(assert (=> d!1137388 m!4385603))

(assert (=> d!1137388 m!4385595))

(declare-fun m!4385605 () Bool)

(assert (=> b!3830822 m!4385605))

(assert (=> b!3830822 m!4380339))

(assert (=> b!3830822 m!4380339))

(assert (=> b!3830822 m!4383817))

(assert (=> b!3830822 m!4383817))

(declare-fun m!4385607 () Bool)

(assert (=> b!3830822 m!4385607))

(assert (=> b!3830824 m!4385599))

(declare-fun m!4385609 () Bool)

(assert (=> b!3830824 m!4385609))

(assert (=> b!3830824 m!4385605))

(assert (=> b!3830824 m!4380339))

(assert (=> b!3830824 m!4385599))

(assert (=> b!3830824 m!4380339))

(declare-fun m!4385611 () Bool)

(assert (=> b!3830824 m!4385611))

(declare-fun m!4385613 () Bool)

(assert (=> bm!281479 m!4385613))

(assert (=> b!3830819 m!4385595))

(assert (=> b!3830825 m!4385605))

(assert (=> b!3830825 m!4380339))

(assert (=> b!3830825 m!4380339))

(assert (=> b!3830825 m!4385599))

(assert (=> b!3830825 m!4385599))

(assert (=> b!3830825 m!4385609))

(declare-fun m!4385615 () Bool)

(assert (=> b!3830823 m!4385615))

(assert (=> b!3830818 m!4383817))

(assert (=> b!3830818 m!4385607))

(assert (=> b!3830818 m!4380339))

(assert (=> b!3830818 m!4383817))

(assert (=> b!3830818 m!4385605))

(assert (=> b!3830818 m!4380339))

(assert (=> b!3830818 m!4385611))

(assert (=> d!1135632 d!1137388))

(declare-fun e!2365731 () Bool)

(assert (=> b!3828589 (= tp!1158680 e!2365731)))

(declare-fun b!3830827 () Bool)

(declare-fun tp!1158965 () Bool)

(declare-fun tp!1158966 () Bool)

(assert (=> b!3830827 (= e!2365731 (and tp!1158965 tp!1158966))))

(declare-fun b!3830826 () Bool)

(assert (=> b!3830826 (= e!2365731 tp_is_empty!19209)))

(declare-fun b!3830829 () Bool)

(declare-fun tp!1158964 () Bool)

(declare-fun tp!1158968 () Bool)

(assert (=> b!3830829 (= e!2365731 (and tp!1158964 tp!1158968))))

(declare-fun b!3830828 () Bool)

(declare-fun tp!1158967 () Bool)

(assert (=> b!3830828 (= e!2365731 tp!1158967)))

(assert (= (and b!3828589 ((_ is ElementMatch!11129) (reg!11458 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830826))

(assert (= (and b!3828589 ((_ is Concat!17584) (reg!11458 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830827))

(assert (= (and b!3828589 ((_ is Star!11129) (reg!11458 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830828))

(assert (= (and b!3828589 ((_ is Union!11129) (reg!11458 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830829))

(declare-fun e!2365732 () Bool)

(assert (=> b!3828588 (= tp!1158678 e!2365732)))

(declare-fun b!3830831 () Bool)

(declare-fun tp!1158970 () Bool)

(declare-fun tp!1158971 () Bool)

(assert (=> b!3830831 (= e!2365732 (and tp!1158970 tp!1158971))))

(declare-fun b!3830830 () Bool)

(assert (=> b!3830830 (= e!2365732 tp_is_empty!19209)))

(declare-fun b!3830833 () Bool)

(declare-fun tp!1158969 () Bool)

(declare-fun tp!1158973 () Bool)

(assert (=> b!3830833 (= e!2365732 (and tp!1158969 tp!1158973))))

(declare-fun b!3830832 () Bool)

(declare-fun tp!1158972 () Bool)

(assert (=> b!3830832 (= e!2365732 tp!1158972)))

(assert (= (and b!3828588 ((_ is ElementMatch!11129) (regOne!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830830))

(assert (= (and b!3828588 ((_ is Concat!17584) (regOne!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830831))

(assert (= (and b!3828588 ((_ is Star!11129) (regOne!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830832))

(assert (= (and b!3828588 ((_ is Union!11129) (regOne!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830833))

(declare-fun e!2365733 () Bool)

(assert (=> b!3828588 (= tp!1158679 e!2365733)))

(declare-fun b!3830835 () Bool)

(declare-fun tp!1158975 () Bool)

(declare-fun tp!1158976 () Bool)

(assert (=> b!3830835 (= e!2365733 (and tp!1158975 tp!1158976))))

(declare-fun b!3830834 () Bool)

(assert (=> b!3830834 (= e!2365733 tp_is_empty!19209)))

(declare-fun b!3830837 () Bool)

(declare-fun tp!1158974 () Bool)

(declare-fun tp!1158978 () Bool)

(assert (=> b!3830837 (= e!2365733 (and tp!1158974 tp!1158978))))

(declare-fun b!3830836 () Bool)

(declare-fun tp!1158977 () Bool)

(assert (=> b!3830836 (= e!2365733 tp!1158977)))

(assert (= (and b!3828588 ((_ is ElementMatch!11129) (regTwo!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830834))

(assert (= (and b!3828588 ((_ is Concat!17584) (regTwo!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830835))

(assert (= (and b!3828588 ((_ is Star!11129) (regTwo!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830836))

(assert (= (and b!3828588 ((_ is Union!11129) (regTwo!22770 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830837))

(declare-fun e!2365734 () Bool)

(assert (=> b!3828590 (= tp!1158677 e!2365734)))

(declare-fun b!3830839 () Bool)

(declare-fun tp!1158980 () Bool)

(declare-fun tp!1158981 () Bool)

(assert (=> b!3830839 (= e!2365734 (and tp!1158980 tp!1158981))))

(declare-fun b!3830838 () Bool)

(assert (=> b!3830838 (= e!2365734 tp_is_empty!19209)))

(declare-fun b!3830841 () Bool)

(declare-fun tp!1158979 () Bool)

(declare-fun tp!1158983 () Bool)

(assert (=> b!3830841 (= e!2365734 (and tp!1158979 tp!1158983))))

(declare-fun b!3830840 () Bool)

(declare-fun tp!1158982 () Bool)

(assert (=> b!3830840 (= e!2365734 tp!1158982)))

(assert (= (and b!3828590 ((_ is ElementMatch!11129) (regOne!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830838))

(assert (= (and b!3828590 ((_ is Concat!17584) (regOne!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830839))

(assert (= (and b!3828590 ((_ is Star!11129) (regOne!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830840))

(assert (= (and b!3828590 ((_ is Union!11129) (regOne!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830841))

(declare-fun e!2365735 () Bool)

(assert (=> b!3828590 (= tp!1158681 e!2365735)))

(declare-fun b!3830843 () Bool)

(declare-fun tp!1158985 () Bool)

(declare-fun tp!1158986 () Bool)

(assert (=> b!3830843 (= e!2365735 (and tp!1158985 tp!1158986))))

(declare-fun b!3830842 () Bool)

(assert (=> b!3830842 (= e!2365735 tp_is_empty!19209)))

(declare-fun b!3830845 () Bool)

(declare-fun tp!1158984 () Bool)

(declare-fun tp!1158988 () Bool)

(assert (=> b!3830845 (= e!2365735 (and tp!1158984 tp!1158988))))

(declare-fun b!3830844 () Bool)

(declare-fun tp!1158987 () Bool)

(assert (=> b!3830844 (= e!2365735 tp!1158987)))

(assert (= (and b!3828590 ((_ is ElementMatch!11129) (regTwo!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830842))

(assert (= (and b!3828590 ((_ is Concat!17584) (regTwo!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830843))

(assert (= (and b!3828590 ((_ is Star!11129) (regTwo!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830844))

(assert (= (and b!3828590 ((_ is Union!11129) (regTwo!22771 (reg!11458 (regex!6224 (h!45845 rules!1265)))))) b!3830845))

(declare-fun b!3830846 () Bool)

(declare-fun tp!1158990 () Bool)

(declare-fun tp!1158989 () Bool)

(declare-fun e!2365737 () Bool)

(assert (=> b!3830846 (= e!2365737 (and (inv!54485 (left!31275 (left!31275 (right!31605 (c!667180 treated!13))))) tp!1158990 (inv!54485 (right!31605 (left!31275 (right!31605 (c!667180 treated!13))))) tp!1158989))))

(declare-fun b!3830848 () Bool)

(declare-fun e!2365736 () Bool)

(declare-fun tp!1158991 () Bool)

(assert (=> b!3830848 (= e!2365736 tp!1158991)))

(declare-fun b!3830847 () Bool)

(assert (=> b!3830847 (= e!2365737 (and (inv!54500 (xs!15716 (left!31275 (right!31605 (c!667180 treated!13))))) e!2365736))))

(assert (=> b!3828603 (= tp!1158697 (and (inv!54485 (left!31275 (right!31605 (c!667180 treated!13)))) e!2365737))))

(assert (= (and b!3828603 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 treated!13))))) b!3830846))

(assert (= b!3830847 b!3830848))

(assert (= (and b!3828603 ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 treated!13))))) b!3830847))

(declare-fun m!4385617 () Bool)

(assert (=> b!3830846 m!4385617))

(declare-fun m!4385619 () Bool)

(assert (=> b!3830846 m!4385619))

(declare-fun m!4385621 () Bool)

(assert (=> b!3830847 m!4385621))

(assert (=> b!3828603 m!4381171))

(declare-fun tp!1158993 () Bool)

(declare-fun tp!1158992 () Bool)

(declare-fun e!2365739 () Bool)

(declare-fun b!3830849 () Bool)

(assert (=> b!3830849 (= e!2365739 (and (inv!54485 (left!31275 (right!31605 (right!31605 (c!667180 treated!13))))) tp!1158993 (inv!54485 (right!31605 (right!31605 (right!31605 (c!667180 treated!13))))) tp!1158992))))

(declare-fun b!3830851 () Bool)

(declare-fun e!2365738 () Bool)

(declare-fun tp!1158994 () Bool)

(assert (=> b!3830851 (= e!2365738 tp!1158994)))

(declare-fun b!3830850 () Bool)

(assert (=> b!3830850 (= e!2365739 (and (inv!54500 (xs!15716 (right!31605 (right!31605 (c!667180 treated!13))))) e!2365738))))

(assert (=> b!3828603 (= tp!1158696 (and (inv!54485 (right!31605 (right!31605 (c!667180 treated!13)))) e!2365739))))

(assert (= (and b!3828603 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 treated!13))))) b!3830849))

(assert (= b!3830850 b!3830851))

(assert (= (and b!3828603 ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 treated!13))))) b!3830850))

(declare-fun m!4385623 () Bool)

(assert (=> b!3830849 m!4385623))

(declare-fun m!4385625 () Bool)

(assert (=> b!3830849 m!4385625))

(declare-fun m!4385627 () Bool)

(assert (=> b!3830850 m!4385627))

(assert (=> b!3828603 m!4381173))

(declare-fun b!3830852 () Bool)

(declare-fun e!2365740 () Bool)

(declare-fun tp!1158995 () Bool)

(assert (=> b!3830852 (= e!2365740 (and tp_is_empty!19209 tp!1158995))))

(assert (=> b!3828564 (= tp!1158651 e!2365740)))

(assert (= (and b!3828564 ((_ is Cons!40423) (innerList!12482 (xs!15716 (right!31605 (c!667180 totalInput!335)))))) b!3830852))

(declare-fun e!2365741 () Bool)

(assert (=> b!3828597 (= tp!1158689 e!2365741)))

(declare-fun b!3830854 () Bool)

(declare-fun tp!1158997 () Bool)

(declare-fun tp!1158998 () Bool)

(assert (=> b!3830854 (= e!2365741 (and tp!1158997 tp!1158998))))

(declare-fun b!3830853 () Bool)

(assert (=> b!3830853 (= e!2365741 tp_is_empty!19209)))

(declare-fun b!3830856 () Bool)

(declare-fun tp!1158996 () Bool)

(declare-fun tp!1159000 () Bool)

(assert (=> b!3830856 (= e!2365741 (and tp!1158996 tp!1159000))))

(declare-fun b!3830855 () Bool)

(declare-fun tp!1158999 () Bool)

(assert (=> b!3830855 (= e!2365741 tp!1158999)))

(assert (= (and b!3828597 ((_ is ElementMatch!11129) (regOne!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830853))

(assert (= (and b!3828597 ((_ is Concat!17584) (regOne!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830854))

(assert (= (and b!3828597 ((_ is Star!11129) (regOne!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830855))

(assert (= (and b!3828597 ((_ is Union!11129) (regOne!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830856))

(declare-fun e!2365742 () Bool)

(assert (=> b!3828597 (= tp!1158690 e!2365742)))

(declare-fun b!3830858 () Bool)

(declare-fun tp!1159002 () Bool)

(declare-fun tp!1159003 () Bool)

(assert (=> b!3830858 (= e!2365742 (and tp!1159002 tp!1159003))))

(declare-fun b!3830857 () Bool)

(assert (=> b!3830857 (= e!2365742 tp_is_empty!19209)))

(declare-fun b!3830860 () Bool)

(declare-fun tp!1159001 () Bool)

(declare-fun tp!1159005 () Bool)

(assert (=> b!3830860 (= e!2365742 (and tp!1159001 tp!1159005))))

(declare-fun b!3830859 () Bool)

(declare-fun tp!1159004 () Bool)

(assert (=> b!3830859 (= e!2365742 tp!1159004)))

(assert (= (and b!3828597 ((_ is ElementMatch!11129) (regTwo!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830857))

(assert (= (and b!3828597 ((_ is Concat!17584) (regTwo!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830858))

(assert (= (and b!3828597 ((_ is Star!11129) (regTwo!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830859))

(assert (= (and b!3828597 ((_ is Union!11129) (regTwo!22770 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830860))

(declare-fun e!2365743 () Bool)

(assert (=> b!3828599 (= tp!1158688 e!2365743)))

(declare-fun b!3830862 () Bool)

(declare-fun tp!1159007 () Bool)

(declare-fun tp!1159008 () Bool)

(assert (=> b!3830862 (= e!2365743 (and tp!1159007 tp!1159008))))

(declare-fun b!3830861 () Bool)

(assert (=> b!3830861 (= e!2365743 tp_is_empty!19209)))

(declare-fun b!3830864 () Bool)

(declare-fun tp!1159006 () Bool)

(declare-fun tp!1159010 () Bool)

(assert (=> b!3830864 (= e!2365743 (and tp!1159006 tp!1159010))))

(declare-fun b!3830863 () Bool)

(declare-fun tp!1159009 () Bool)

(assert (=> b!3830863 (= e!2365743 tp!1159009)))

(assert (= (and b!3828599 ((_ is ElementMatch!11129) (regOne!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830861))

(assert (= (and b!3828599 ((_ is Concat!17584) (regOne!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830862))

(assert (= (and b!3828599 ((_ is Star!11129) (regOne!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830863))

(assert (= (and b!3828599 ((_ is Union!11129) (regOne!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830864))

(declare-fun e!2365744 () Bool)

(assert (=> b!3828599 (= tp!1158692 e!2365744)))

(declare-fun b!3830866 () Bool)

(declare-fun tp!1159012 () Bool)

(declare-fun tp!1159013 () Bool)

(assert (=> b!3830866 (= e!2365744 (and tp!1159012 tp!1159013))))

(declare-fun b!3830865 () Bool)

(assert (=> b!3830865 (= e!2365744 tp_is_empty!19209)))

(declare-fun b!3830868 () Bool)

(declare-fun tp!1159011 () Bool)

(declare-fun tp!1159015 () Bool)

(assert (=> b!3830868 (= e!2365744 (and tp!1159011 tp!1159015))))

(declare-fun b!3830867 () Bool)

(declare-fun tp!1159014 () Bool)

(assert (=> b!3830867 (= e!2365744 tp!1159014)))

(assert (= (and b!3828599 ((_ is ElementMatch!11129) (regTwo!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830865))

(assert (= (and b!3828599 ((_ is Concat!17584) (regTwo!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830866))

(assert (= (and b!3828599 ((_ is Star!11129) (regTwo!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830867))

(assert (= (and b!3828599 ((_ is Union!11129) (regTwo!22771 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830868))

(declare-fun e!2365745 () Bool)

(assert (=> b!3828598 (= tp!1158691 e!2365745)))

(declare-fun b!3830870 () Bool)

(declare-fun tp!1159017 () Bool)

(declare-fun tp!1159018 () Bool)

(assert (=> b!3830870 (= e!2365745 (and tp!1159017 tp!1159018))))

(declare-fun b!3830869 () Bool)

(assert (=> b!3830869 (= e!2365745 tp_is_empty!19209)))

(declare-fun b!3830872 () Bool)

(declare-fun tp!1159016 () Bool)

(declare-fun tp!1159020 () Bool)

(assert (=> b!3830872 (= e!2365745 (and tp!1159016 tp!1159020))))

(declare-fun b!3830871 () Bool)

(declare-fun tp!1159019 () Bool)

(assert (=> b!3830871 (= e!2365745 tp!1159019)))

(assert (= (and b!3828598 ((_ is ElementMatch!11129) (reg!11458 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830869))

(assert (= (and b!3828598 ((_ is Concat!17584) (reg!11458 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830870))

(assert (= (and b!3828598 ((_ is Star!11129) (reg!11458 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830871))

(assert (= (and b!3828598 ((_ is Union!11129) (reg!11458 (regTwo!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830872))

(declare-fun b!3830873 () Bool)

(declare-fun e!2365746 () Bool)

(declare-fun tp!1159021 () Bool)

(assert (=> b!3830873 (= e!2365746 (and tp_is_empty!19209 tp!1159021))))

(assert (=> b!3828591 (= tp!1158682 e!2365746)))

(assert (= (and b!3828591 ((_ is Cons!40423) (t!308874 (innerList!12482 (xs!15716 (c!667180 totalInput!335)))))) b!3830873))

(declare-fun b!3830876 () Bool)

(declare-fun b_free!101641 () Bool)

(declare-fun b_next!102345 () Bool)

(assert (=> b!3830876 (= b_free!101641 (not b_next!102345))))

(declare-fun t!309054 () Bool)

(declare-fun tb!219829 () Bool)

(assert (=> (and b!3830876 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309054) tb!219829))

(declare-fun result!267962 () Bool)

(assert (= result!267962 result!267918))

(assert (=> d!1136742 t!309054))

(declare-fun t!309056 () Bool)

(declare-fun tb!219831 () Bool)

(assert (=> (and b!3830876 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309056) tb!219831))

(declare-fun result!267964 () Bool)

(assert (= result!267964 result!267938))

(assert (=> d!1137008 t!309056))

(declare-fun t!309058 () Bool)

(declare-fun tb!219833 () Bool)

(assert (=> (and b!3830876 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309058) tb!219833))

(declare-fun result!267966 () Bool)

(assert (= result!267966 result!267946))

(assert (=> d!1137008 t!309058))

(assert (=> d!1137014 t!309056))

(declare-fun tp!1159024 () Bool)

(declare-fun b_and!284695 () Bool)

(assert (=> b!3830876 (= tp!1159024 (and (=> t!309054 result!267962) (=> t!309056 result!267964) (=> t!309058 result!267966) b_and!284695))))

(declare-fun b_free!101643 () Bool)

(declare-fun b_next!102347 () Bool)

(assert (=> b!3830876 (= b_free!101643 (not b_next!102347))))

(declare-fun t!309060 () Bool)

(declare-fun tb!219835 () Bool)

(assert (=> (and b!3830876 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309060) tb!219835))

(declare-fun result!267968 () Bool)

(assert (= result!267968 result!267928))

(assert (=> d!1136814 t!309060))

(declare-fun t!309062 () Bool)

(declare-fun tb!219837 () Bool)

(assert (=> (and b!3830876 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309062) tb!219837))

(declare-fun result!267970 () Bool)

(assert (= result!267970 result!267954))

(assert (=> b!3830599 t!309062))

(declare-fun b_and!284697 () Bool)

(declare-fun tp!1159023 () Bool)

(assert (=> b!3830876 (= tp!1159023 (and (=> t!309060 result!267968) (=> t!309062 result!267970) b_and!284697))))

(declare-fun e!2365750 () Bool)

(assert (=> b!3830876 (= e!2365750 (and tp!1159024 tp!1159023))))

(declare-fun b!3830875 () Bool)

(declare-fun e!2365747 () Bool)

(declare-fun tp!1159022 () Bool)

(assert (=> b!3830875 (= e!2365747 (and tp!1159022 (inv!54478 (tag!7084 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (inv!54486 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) e!2365750))))

(declare-fun b!3830874 () Bool)

(declare-fun e!2365749 () Bool)

(declare-fun tp!1159025 () Bool)

(assert (=> b!3830874 (= e!2365749 (and e!2365747 tp!1159025))))

(assert (=> b!3828556 (= tp!1158645 e!2365749)))

(assert (= b!3830875 b!3830876))

(assert (= b!3830874 b!3830875))

(assert (= (and b!3828556 ((_ is Cons!40425) (t!308876 (t!308876 (t!308876 rules!1265))))) b!3830874))

(declare-fun m!4385629 () Bool)

(assert (=> b!3830875 m!4385629))

(declare-fun m!4385631 () Bool)

(assert (=> b!3830875 m!4385631))

(declare-fun e!2365751 () Bool)

(assert (=> b!3828570 (= tp!1158658 e!2365751)))

(declare-fun b!3830878 () Bool)

(declare-fun tp!1159027 () Bool)

(declare-fun tp!1159028 () Bool)

(assert (=> b!3830878 (= e!2365751 (and tp!1159027 tp!1159028))))

(declare-fun b!3830877 () Bool)

(assert (=> b!3830877 (= e!2365751 tp_is_empty!19209)))

(declare-fun b!3830880 () Bool)

(declare-fun tp!1159026 () Bool)

(declare-fun tp!1159030 () Bool)

(assert (=> b!3830880 (= e!2365751 (and tp!1159026 tp!1159030))))

(declare-fun b!3830879 () Bool)

(declare-fun tp!1159029 () Bool)

(assert (=> b!3830879 (= e!2365751 tp!1159029)))

(assert (= (and b!3828570 ((_ is ElementMatch!11129) (regOne!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830877))

(assert (= (and b!3828570 ((_ is Concat!17584) (regOne!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830878))

(assert (= (and b!3828570 ((_ is Star!11129) (regOne!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830879))

(assert (= (and b!3828570 ((_ is Union!11129) (regOne!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830880))

(declare-fun e!2365752 () Bool)

(assert (=> b!3828570 (= tp!1158659 e!2365752)))

(declare-fun b!3830882 () Bool)

(declare-fun tp!1159032 () Bool)

(declare-fun tp!1159033 () Bool)

(assert (=> b!3830882 (= e!2365752 (and tp!1159032 tp!1159033))))

(declare-fun b!3830881 () Bool)

(assert (=> b!3830881 (= e!2365752 tp_is_empty!19209)))

(declare-fun b!3830884 () Bool)

(declare-fun tp!1159031 () Bool)

(declare-fun tp!1159035 () Bool)

(assert (=> b!3830884 (= e!2365752 (and tp!1159031 tp!1159035))))

(declare-fun b!3830883 () Bool)

(declare-fun tp!1159034 () Bool)

(assert (=> b!3830883 (= e!2365752 tp!1159034)))

(assert (= (and b!3828570 ((_ is ElementMatch!11129) (regTwo!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830881))

(assert (= (and b!3828570 ((_ is Concat!17584) (regTwo!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830882))

(assert (= (and b!3828570 ((_ is Star!11129) (regTwo!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830883))

(assert (= (and b!3828570 ((_ is Union!11129) (regTwo!22770 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830884))

(declare-fun b!3830885 () Bool)

(declare-fun e!2365753 () Bool)

(declare-fun tp!1159036 () Bool)

(assert (=> b!3830885 (= e!2365753 (and tp_is_empty!19209 tp!1159036))))

(assert (=> b!3828605 (= tp!1158698 e!2365753)))

(assert (= (and b!3828605 ((_ is Cons!40423) (innerList!12482 (xs!15716 (right!31605 (c!667180 treated!13)))))) b!3830885))

(declare-fun e!2365754 () Bool)

(assert (=> b!3828572 (= tp!1158657 e!2365754)))

(declare-fun b!3830887 () Bool)

(declare-fun tp!1159038 () Bool)

(declare-fun tp!1159039 () Bool)

(assert (=> b!3830887 (= e!2365754 (and tp!1159038 tp!1159039))))

(declare-fun b!3830886 () Bool)

(assert (=> b!3830886 (= e!2365754 tp_is_empty!19209)))

(declare-fun b!3830889 () Bool)

(declare-fun tp!1159037 () Bool)

(declare-fun tp!1159041 () Bool)

(assert (=> b!3830889 (= e!2365754 (and tp!1159037 tp!1159041))))

(declare-fun b!3830888 () Bool)

(declare-fun tp!1159040 () Bool)

(assert (=> b!3830888 (= e!2365754 tp!1159040)))

(assert (= (and b!3828572 ((_ is ElementMatch!11129) (regOne!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830886))

(assert (= (and b!3828572 ((_ is Concat!17584) (regOne!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830887))

(assert (= (and b!3828572 ((_ is Star!11129) (regOne!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830888))

(assert (= (and b!3828572 ((_ is Union!11129) (regOne!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830889))

(declare-fun e!2365755 () Bool)

(assert (=> b!3828572 (= tp!1158661 e!2365755)))

(declare-fun b!3830891 () Bool)

(declare-fun tp!1159043 () Bool)

(declare-fun tp!1159044 () Bool)

(assert (=> b!3830891 (= e!2365755 (and tp!1159043 tp!1159044))))

(declare-fun b!3830890 () Bool)

(assert (=> b!3830890 (= e!2365755 tp_is_empty!19209)))

(declare-fun b!3830893 () Bool)

(declare-fun tp!1159042 () Bool)

(declare-fun tp!1159046 () Bool)

(assert (=> b!3830893 (= e!2365755 (and tp!1159042 tp!1159046))))

(declare-fun b!3830892 () Bool)

(declare-fun tp!1159045 () Bool)

(assert (=> b!3830892 (= e!2365755 tp!1159045)))

(assert (= (and b!3828572 ((_ is ElementMatch!11129) (regTwo!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830890))

(assert (= (and b!3828572 ((_ is Concat!17584) (regTwo!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830891))

(assert (= (and b!3828572 ((_ is Star!11129) (regTwo!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830892))

(assert (= (and b!3828572 ((_ is Union!11129) (regTwo!22771 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830893))

(declare-fun e!2365756 () Bool)

(assert (=> b!3828557 (= tp!1158642 e!2365756)))

(declare-fun b!3830895 () Bool)

(declare-fun tp!1159048 () Bool)

(declare-fun tp!1159049 () Bool)

(assert (=> b!3830895 (= e!2365756 (and tp!1159048 tp!1159049))))

(declare-fun b!3830894 () Bool)

(assert (=> b!3830894 (= e!2365756 tp_is_empty!19209)))

(declare-fun b!3830897 () Bool)

(declare-fun tp!1159047 () Bool)

(declare-fun tp!1159051 () Bool)

(assert (=> b!3830897 (= e!2365756 (and tp!1159047 tp!1159051))))

(declare-fun b!3830896 () Bool)

(declare-fun tp!1159050 () Bool)

(assert (=> b!3830896 (= e!2365756 tp!1159050)))

(assert (= (and b!3828557 ((_ is ElementMatch!11129) (regex!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))) b!3830894))

(assert (= (and b!3828557 ((_ is Concat!17584) (regex!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))) b!3830895))

(assert (= (and b!3828557 ((_ is Star!11129) (regex!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))) b!3830896))

(assert (= (and b!3828557 ((_ is Union!11129) (regex!6224 (h!45845 (t!308876 (t!308876 rules!1265)))))) b!3830897))

(declare-fun e!2365757 () Bool)

(assert (=> b!3828571 (= tp!1158660 e!2365757)))

(declare-fun b!3830899 () Bool)

(declare-fun tp!1159053 () Bool)

(declare-fun tp!1159054 () Bool)

(assert (=> b!3830899 (= e!2365757 (and tp!1159053 tp!1159054))))

(declare-fun b!3830898 () Bool)

(assert (=> b!3830898 (= e!2365757 tp_is_empty!19209)))

(declare-fun b!3830901 () Bool)

(declare-fun tp!1159052 () Bool)

(declare-fun tp!1159056 () Bool)

(assert (=> b!3830901 (= e!2365757 (and tp!1159052 tp!1159056))))

(declare-fun b!3830900 () Bool)

(declare-fun tp!1159055 () Bool)

(assert (=> b!3830900 (= e!2365757 tp!1159055)))

(assert (= (and b!3828571 ((_ is ElementMatch!11129) (reg!11458 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830898))

(assert (= (and b!3828571 ((_ is Concat!17584) (reg!11458 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830899))

(assert (= (and b!3828571 ((_ is Star!11129) (reg!11458 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830900))

(assert (= (and b!3828571 ((_ is Union!11129) (reg!11458 (regTwo!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830901))

(declare-fun tp!1159058 () Bool)

(declare-fun b!3830902 () Bool)

(declare-fun e!2365759 () Bool)

(declare-fun tp!1159057 () Bool)

(assert (=> b!3830902 (= e!2365759 (and (inv!54485 (left!31275 (left!31275 (right!31605 (c!667180 input!678))))) tp!1159058 (inv!54485 (right!31605 (left!31275 (right!31605 (c!667180 input!678))))) tp!1159057))))

(declare-fun b!3830904 () Bool)

(declare-fun e!2365758 () Bool)

(declare-fun tp!1159059 () Bool)

(assert (=> b!3830904 (= e!2365758 tp!1159059)))

(declare-fun b!3830903 () Bool)

(assert (=> b!3830903 (= e!2365759 (and (inv!54500 (xs!15716 (left!31275 (right!31605 (c!667180 input!678))))) e!2365758))))

(assert (=> b!3828620 (= tp!1158715 (and (inv!54485 (left!31275 (right!31605 (c!667180 input!678)))) e!2365759))))

(assert (= (and b!3828620 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 input!678))))) b!3830902))

(assert (= b!3830903 b!3830904))

(assert (= (and b!3828620 ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 input!678))))) b!3830903))

(declare-fun m!4385633 () Bool)

(assert (=> b!3830902 m!4385633))

(declare-fun m!4385635 () Bool)

(assert (=> b!3830902 m!4385635))

(declare-fun m!4385637 () Bool)

(assert (=> b!3830903 m!4385637))

(assert (=> b!3828620 m!4381195))

(declare-fun tp!1159060 () Bool)

(declare-fun b!3830905 () Bool)

(declare-fun e!2365761 () Bool)

(declare-fun tp!1159061 () Bool)

(assert (=> b!3830905 (= e!2365761 (and (inv!54485 (left!31275 (right!31605 (right!31605 (c!667180 input!678))))) tp!1159061 (inv!54485 (right!31605 (right!31605 (right!31605 (c!667180 input!678))))) tp!1159060))))

(declare-fun b!3830907 () Bool)

(declare-fun e!2365760 () Bool)

(declare-fun tp!1159062 () Bool)

(assert (=> b!3830907 (= e!2365760 tp!1159062)))

(declare-fun b!3830906 () Bool)

(assert (=> b!3830906 (= e!2365761 (and (inv!54500 (xs!15716 (right!31605 (right!31605 (c!667180 input!678))))) e!2365760))))

(assert (=> b!3828620 (= tp!1158714 (and (inv!54485 (right!31605 (right!31605 (c!667180 input!678)))) e!2365761))))

(assert (= (and b!3828620 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 input!678))))) b!3830905))

(assert (= b!3830906 b!3830907))

(assert (= (and b!3828620 ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 input!678))))) b!3830906))

(declare-fun m!4385639 () Bool)

(assert (=> b!3830905 m!4385639))

(declare-fun m!4385641 () Bool)

(assert (=> b!3830905 m!4385641))

(declare-fun m!4385643 () Bool)

(assert (=> b!3830906 m!4385643))

(assert (=> b!3828620 m!4381197))

(declare-fun e!2365762 () Bool)

(assert (=> b!3828615 (= tp!1158709 e!2365762)))

(declare-fun b!3830909 () Bool)

(declare-fun tp!1159064 () Bool)

(declare-fun tp!1159065 () Bool)

(assert (=> b!3830909 (= e!2365762 (and tp!1159064 tp!1159065))))

(declare-fun b!3830908 () Bool)

(assert (=> b!3830908 (= e!2365762 tp_is_empty!19209)))

(declare-fun b!3830911 () Bool)

(declare-fun tp!1159063 () Bool)

(declare-fun tp!1159067 () Bool)

(assert (=> b!3830911 (= e!2365762 (and tp!1159063 tp!1159067))))

(declare-fun b!3830910 () Bool)

(declare-fun tp!1159066 () Bool)

(assert (=> b!3830910 (= e!2365762 tp!1159066)))

(assert (= (and b!3828615 ((_ is ElementMatch!11129) (reg!11458 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830908))

(assert (= (and b!3828615 ((_ is Concat!17584) (reg!11458 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830909))

(assert (= (and b!3828615 ((_ is Star!11129) (reg!11458 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830910))

(assert (= (and b!3828615 ((_ is Union!11129) (reg!11458 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830911))

(declare-fun e!2365763 () Bool)

(assert (=> b!3828614 (= tp!1158707 e!2365763)))

(declare-fun b!3830913 () Bool)

(declare-fun tp!1159069 () Bool)

(declare-fun tp!1159070 () Bool)

(assert (=> b!3830913 (= e!2365763 (and tp!1159069 tp!1159070))))

(declare-fun b!3830912 () Bool)

(assert (=> b!3830912 (= e!2365763 tp_is_empty!19209)))

(declare-fun b!3830915 () Bool)

(declare-fun tp!1159068 () Bool)

(declare-fun tp!1159072 () Bool)

(assert (=> b!3830915 (= e!2365763 (and tp!1159068 tp!1159072))))

(declare-fun b!3830914 () Bool)

(declare-fun tp!1159071 () Bool)

(assert (=> b!3830914 (= e!2365763 tp!1159071)))

(assert (= (and b!3828614 ((_ is ElementMatch!11129) (regOne!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830912))

(assert (= (and b!3828614 ((_ is Concat!17584) (regOne!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830913))

(assert (= (and b!3828614 ((_ is Star!11129) (regOne!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830914))

(assert (= (and b!3828614 ((_ is Union!11129) (regOne!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830915))

(declare-fun e!2365764 () Bool)

(assert (=> b!3828614 (= tp!1158708 e!2365764)))

(declare-fun b!3830917 () Bool)

(declare-fun tp!1159074 () Bool)

(declare-fun tp!1159075 () Bool)

(assert (=> b!3830917 (= e!2365764 (and tp!1159074 tp!1159075))))

(declare-fun b!3830916 () Bool)

(assert (=> b!3830916 (= e!2365764 tp_is_empty!19209)))

(declare-fun b!3830919 () Bool)

(declare-fun tp!1159073 () Bool)

(declare-fun tp!1159077 () Bool)

(assert (=> b!3830919 (= e!2365764 (and tp!1159073 tp!1159077))))

(declare-fun b!3830918 () Bool)

(declare-fun tp!1159076 () Bool)

(assert (=> b!3830918 (= e!2365764 tp!1159076)))

(assert (= (and b!3828614 ((_ is ElementMatch!11129) (regTwo!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830916))

(assert (= (and b!3828614 ((_ is Concat!17584) (regTwo!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830917))

(assert (= (and b!3828614 ((_ is Star!11129) (regTwo!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830918))

(assert (= (and b!3828614 ((_ is Union!11129) (regTwo!22770 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830919))

(declare-fun b!3830920 () Bool)

(declare-fun tp!1159079 () Bool)

(declare-fun tp!1159078 () Bool)

(declare-fun e!2365766 () Bool)

(assert (=> b!3830920 (= e!2365766 (and (inv!54485 (left!31275 (left!31275 (left!31275 (c!667180 totalInput!335))))) tp!1159079 (inv!54485 (right!31605 (left!31275 (left!31275 (c!667180 totalInput!335))))) tp!1159078))))

(declare-fun b!3830922 () Bool)

(declare-fun e!2365765 () Bool)

(declare-fun tp!1159080 () Bool)

(assert (=> b!3830922 (= e!2365765 tp!1159080)))

(declare-fun b!3830921 () Bool)

(assert (=> b!3830921 (= e!2365766 (and (inv!54500 (xs!15716 (left!31275 (left!31275 (c!667180 totalInput!335))))) e!2365765))))

(assert (=> b!3828559 (= tp!1158647 (and (inv!54485 (left!31275 (left!31275 (c!667180 totalInput!335)))) e!2365766))))

(assert (= (and b!3828559 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 totalInput!335))))) b!3830920))

(assert (= b!3830921 b!3830922))

(assert (= (and b!3828559 ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 totalInput!335))))) b!3830921))

(declare-fun m!4385645 () Bool)

(assert (=> b!3830920 m!4385645))

(declare-fun m!4385647 () Bool)

(assert (=> b!3830920 m!4385647))

(declare-fun m!4385649 () Bool)

(assert (=> b!3830921 m!4385649))

(assert (=> b!3828559 m!4381145))

(declare-fun tp!1159082 () Bool)

(declare-fun e!2365768 () Bool)

(declare-fun b!3830923 () Bool)

(declare-fun tp!1159081 () Bool)

(assert (=> b!3830923 (= e!2365768 (and (inv!54485 (left!31275 (right!31605 (left!31275 (c!667180 totalInput!335))))) tp!1159082 (inv!54485 (right!31605 (right!31605 (left!31275 (c!667180 totalInput!335))))) tp!1159081))))

(declare-fun b!3830925 () Bool)

(declare-fun e!2365767 () Bool)

(declare-fun tp!1159083 () Bool)

(assert (=> b!3830925 (= e!2365767 tp!1159083)))

(declare-fun b!3830924 () Bool)

(assert (=> b!3830924 (= e!2365768 (and (inv!54500 (xs!15716 (right!31605 (left!31275 (c!667180 totalInput!335))))) e!2365767))))

(assert (=> b!3828559 (= tp!1158646 (and (inv!54485 (right!31605 (left!31275 (c!667180 totalInput!335)))) e!2365768))))

(assert (= (and b!3828559 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 totalInput!335))))) b!3830923))

(assert (= b!3830924 b!3830925))

(assert (= (and b!3828559 ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 totalInput!335))))) b!3830924))

(declare-fun m!4385651 () Bool)

(assert (=> b!3830923 m!4385651))

(declare-fun m!4385653 () Bool)

(assert (=> b!3830923 m!4385653))

(declare-fun m!4385655 () Bool)

(assert (=> b!3830924 m!4385655))

(assert (=> b!3828559 m!4381147))

(declare-fun e!2365769 () Bool)

(assert (=> b!3828616 (= tp!1158706 e!2365769)))

(declare-fun b!3830927 () Bool)

(declare-fun tp!1159085 () Bool)

(declare-fun tp!1159086 () Bool)

(assert (=> b!3830927 (= e!2365769 (and tp!1159085 tp!1159086))))

(declare-fun b!3830926 () Bool)

(assert (=> b!3830926 (= e!2365769 tp_is_empty!19209)))

(declare-fun b!3830929 () Bool)

(declare-fun tp!1159084 () Bool)

(declare-fun tp!1159088 () Bool)

(assert (=> b!3830929 (= e!2365769 (and tp!1159084 tp!1159088))))

(declare-fun b!3830928 () Bool)

(declare-fun tp!1159087 () Bool)

(assert (=> b!3830928 (= e!2365769 tp!1159087)))

(assert (= (and b!3828616 ((_ is ElementMatch!11129) (regOne!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830926))

(assert (= (and b!3828616 ((_ is Concat!17584) (regOne!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830927))

(assert (= (and b!3828616 ((_ is Star!11129) (regOne!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830928))

(assert (= (and b!3828616 ((_ is Union!11129) (regOne!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830929))

(declare-fun e!2365770 () Bool)

(assert (=> b!3828616 (= tp!1158710 e!2365770)))

(declare-fun b!3830931 () Bool)

(declare-fun tp!1159090 () Bool)

(declare-fun tp!1159091 () Bool)

(assert (=> b!3830931 (= e!2365770 (and tp!1159090 tp!1159091))))

(declare-fun b!3830930 () Bool)

(assert (=> b!3830930 (= e!2365770 tp_is_empty!19209)))

(declare-fun b!3830933 () Bool)

(declare-fun tp!1159089 () Bool)

(declare-fun tp!1159093 () Bool)

(assert (=> b!3830933 (= e!2365770 (and tp!1159089 tp!1159093))))

(declare-fun b!3830932 () Bool)

(declare-fun tp!1159092 () Bool)

(assert (=> b!3830932 (= e!2365770 tp!1159092)))

(assert (= (and b!3828616 ((_ is ElementMatch!11129) (regTwo!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830930))

(assert (= (and b!3828616 ((_ is Concat!17584) (regTwo!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830931))

(assert (= (and b!3828616 ((_ is Star!11129) (regTwo!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830932))

(assert (= (and b!3828616 ((_ is Union!11129) (regTwo!22771 (regex!6224 (h!45845 (t!308876 rules!1265)))))) b!3830933))

(declare-fun b!3830934 () Bool)

(declare-fun e!2365771 () Bool)

(declare-fun tp!1159094 () Bool)

(assert (=> b!3830934 (= e!2365771 (and tp_is_empty!19209 tp!1159094))))

(assert (=> b!3828561 (= tp!1158648 e!2365771)))

(assert (= (and b!3828561 ((_ is Cons!40423) (innerList!12482 (xs!15716 (left!31275 (c!667180 totalInput!335)))))) b!3830934))

(declare-fun tp!1159095 () Bool)

(declare-fun tp!1159097 () Bool)

(declare-fun e!2365773 () Bool)

(declare-fun b!3830935 () Bool)

(assert (=> b!3830935 (= e!2365773 (and (inv!54484 (left!31276 (left!31276 (right!31606 (c!667181 acc!335))))) tp!1159097 (inv!54484 (right!31606 (left!31276 (right!31606 (c!667181 acc!335))))) tp!1159095))))

(declare-fun b!3830937 () Bool)

(declare-fun e!2365772 () Bool)

(declare-fun tp!1159096 () Bool)

(assert (=> b!3830937 (= e!2365772 tp!1159096)))

(declare-fun b!3830936 () Bool)

(assert (=> b!3830936 (= e!2365773 (and (inv!54499 (xs!15717 (left!31276 (right!31606 (c!667181 acc!335))))) e!2365772))))

(assert (=> b!3828609 (= tp!1158704 (and (inv!54484 (left!31276 (right!31606 (c!667181 acc!335)))) e!2365773))))

(assert (= (and b!3828609 ((_ is Node!12423) (left!31276 (right!31606 (c!667181 acc!335))))) b!3830935))

(assert (= b!3830936 b!3830937))

(assert (= (and b!3828609 ((_ is Leaf!19233) (left!31276 (right!31606 (c!667181 acc!335))))) b!3830936))

(declare-fun m!4385657 () Bool)

(assert (=> b!3830935 m!4385657))

(declare-fun m!4385659 () Bool)

(assert (=> b!3830935 m!4385659))

(declare-fun m!4385661 () Bool)

(assert (=> b!3830936 m!4385661))

(assert (=> b!3828609 m!4381183))

(declare-fun b!3830938 () Bool)

(declare-fun tp!1159098 () Bool)

(declare-fun tp!1159100 () Bool)

(declare-fun e!2365775 () Bool)

(assert (=> b!3830938 (= e!2365775 (and (inv!54484 (left!31276 (right!31606 (right!31606 (c!667181 acc!335))))) tp!1159100 (inv!54484 (right!31606 (right!31606 (right!31606 (c!667181 acc!335))))) tp!1159098))))

(declare-fun b!3830940 () Bool)

(declare-fun e!2365774 () Bool)

(declare-fun tp!1159099 () Bool)

(assert (=> b!3830940 (= e!2365774 tp!1159099)))

(declare-fun b!3830939 () Bool)

(assert (=> b!3830939 (= e!2365775 (and (inv!54499 (xs!15717 (right!31606 (right!31606 (c!667181 acc!335))))) e!2365774))))

(assert (=> b!3828609 (= tp!1158702 (and (inv!54484 (right!31606 (right!31606 (c!667181 acc!335)))) e!2365775))))

(assert (= (and b!3828609 ((_ is Node!12423) (right!31606 (right!31606 (c!667181 acc!335))))) b!3830938))

(assert (= b!3830939 b!3830940))

(assert (= (and b!3828609 ((_ is Leaf!19233) (right!31606 (right!31606 (c!667181 acc!335))))) b!3830939))

(declare-fun m!4385663 () Bool)

(assert (=> b!3830938 m!4385663))

(declare-fun m!4385665 () Bool)

(assert (=> b!3830938 m!4385665))

(declare-fun m!4385667 () Bool)

(assert (=> b!3830939 m!4385667))

(assert (=> b!3828609 m!4381185))

(declare-fun b!3830941 () Bool)

(declare-fun e!2365776 () Bool)

(declare-fun tp!1159101 () Bool)

(assert (=> b!3830941 (= e!2365776 (and tp_is_empty!19209 tp!1159101))))

(assert (=> b!3828622 (= tp!1158716 e!2365776)))

(assert (= (and b!3828622 ((_ is Cons!40423) (innerList!12482 (xs!15716 (right!31605 (c!667180 input!678)))))) b!3830941))

(declare-fun tp!1159102 () Bool)

(declare-fun e!2365778 () Bool)

(declare-fun tp!1159103 () Bool)

(declare-fun b!3830942 () Bool)

(assert (=> b!3830942 (= e!2365778 (and (inv!54485 (left!31275 (left!31275 (left!31275 (c!667180 treated!13))))) tp!1159103 (inv!54485 (right!31605 (left!31275 (left!31275 (c!667180 treated!13))))) tp!1159102))))

(declare-fun b!3830944 () Bool)

(declare-fun e!2365777 () Bool)

(declare-fun tp!1159104 () Bool)

(assert (=> b!3830944 (= e!2365777 tp!1159104)))

(declare-fun b!3830943 () Bool)

(assert (=> b!3830943 (= e!2365778 (and (inv!54500 (xs!15716 (left!31275 (left!31275 (c!667180 treated!13))))) e!2365777))))

(assert (=> b!3828600 (= tp!1158694 (and (inv!54485 (left!31275 (left!31275 (c!667180 treated!13)))) e!2365778))))

(assert (= (and b!3828600 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 treated!13))))) b!3830942))

(assert (= b!3830943 b!3830944))

(assert (= (and b!3828600 ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 treated!13))))) b!3830943))

(declare-fun m!4385669 () Bool)

(assert (=> b!3830942 m!4385669))

(declare-fun m!4385671 () Bool)

(assert (=> b!3830942 m!4385671))

(declare-fun m!4385673 () Bool)

(assert (=> b!3830943 m!4385673))

(assert (=> b!3828600 m!4381165))

(declare-fun tp!1159106 () Bool)

(declare-fun tp!1159105 () Bool)

(declare-fun e!2365780 () Bool)

(declare-fun b!3830945 () Bool)

(assert (=> b!3830945 (= e!2365780 (and (inv!54485 (left!31275 (right!31605 (left!31275 (c!667180 treated!13))))) tp!1159106 (inv!54485 (right!31605 (right!31605 (left!31275 (c!667180 treated!13))))) tp!1159105))))

(declare-fun b!3830947 () Bool)

(declare-fun e!2365779 () Bool)

(declare-fun tp!1159107 () Bool)

(assert (=> b!3830947 (= e!2365779 tp!1159107)))

(declare-fun b!3830946 () Bool)

(assert (=> b!3830946 (= e!2365780 (and (inv!54500 (xs!15716 (right!31605 (left!31275 (c!667180 treated!13))))) e!2365779))))

(assert (=> b!3828600 (= tp!1158693 (and (inv!54485 (right!31605 (left!31275 (c!667180 treated!13)))) e!2365780))))

(assert (= (and b!3828600 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 treated!13))))) b!3830945))

(assert (= b!3830946 b!3830947))

(assert (= (and b!3828600 ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 treated!13))))) b!3830946))

(declare-fun m!4385675 () Bool)

(assert (=> b!3830945 m!4385675))

(declare-fun m!4385677 () Bool)

(assert (=> b!3830945 m!4385677))

(declare-fun m!4385679 () Bool)

(assert (=> b!3830946 m!4385679))

(assert (=> b!3828600 m!4381167))

(declare-fun b!3830951 () Bool)

(declare-fun b_free!101645 () Bool)

(declare-fun b_next!102349 () Bool)

(assert (=> b!3830951 (= b_free!101645 (not b_next!102349))))

(declare-fun t!309064 () Bool)

(declare-fun tb!219839 () Bool)

(assert (=> (and b!3830951 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309064) tb!219839))

(declare-fun result!267972 () Bool)

(assert (= result!267972 result!267918))

(assert (=> d!1136742 t!309064))

(declare-fun tb!219841 () Bool)

(declare-fun t!309066 () Bool)

(assert (=> (and b!3830951 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309066) tb!219841))

(declare-fun result!267974 () Bool)

(assert (= result!267974 result!267938))

(assert (=> d!1137008 t!309066))

(declare-fun t!309068 () Bool)

(declare-fun tb!219843 () Bool)

(assert (=> (and b!3830951 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309068) tb!219843))

(declare-fun result!267976 () Bool)

(assert (= result!267976 result!267946))

(assert (=> d!1137008 t!309068))

(assert (=> d!1137014 t!309066))

(declare-fun b_and!284699 () Bool)

(declare-fun tp!1159111 () Bool)

(assert (=> b!3830951 (= tp!1159111 (and (=> t!309064 result!267972) (=> t!309066 result!267974) (=> t!309068 result!267976) b_and!284699))))

(declare-fun b_free!101647 () Bool)

(declare-fun b_next!102351 () Bool)

(assert (=> b!3830951 (= b_free!101647 (not b_next!102351))))

(declare-fun tb!219845 () Bool)

(declare-fun t!309070 () Bool)

(assert (=> (and b!3830951 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309070) tb!219845))

(declare-fun result!267978 () Bool)

(assert (= result!267978 result!267928))

(assert (=> d!1136814 t!309070))

(declare-fun t!309072 () Bool)

(declare-fun tb!219847 () Bool)

(assert (=> (and b!3830951 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309072) tb!219847))

(declare-fun result!267980 () Bool)

(assert (= result!267980 result!267954))

(assert (=> b!3830599 t!309072))

(declare-fun tp!1159112 () Bool)

(declare-fun b_and!284701 () Bool)

(assert (=> b!3830951 (= tp!1159112 (and (=> t!309070 result!267978) (=> t!309072 result!267980) b_and!284701))))

(declare-fun b!3830948 () Bool)

(declare-fun tp!1159110 () Bool)

(declare-fun e!2365785 () Bool)

(declare-fun e!2365783 () Bool)

(assert (=> b!3830948 (= e!2365783 (and (inv!54502 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))) e!2365785 tp!1159110))))

(declare-fun e!2365782 () Bool)

(declare-fun b!3830950 () Bool)

(declare-fun e!2365784 () Bool)

(declare-fun tp!1159108 () Bool)

(assert (=> b!3830950 (= e!2365782 (and tp!1159108 (inv!54478 (tag!7084 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (inv!54486 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) e!2365784))))

(assert (=> b!3830951 (= e!2365784 (and tp!1159111 tp!1159112))))

(declare-fun b!3830949 () Bool)

(declare-fun tp!1159109 () Bool)

(assert (=> b!3830949 (= e!2365785 (and (inv!21 (value!197991 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) e!2365782 tp!1159109))))

(assert (=> b!3828583 (= tp!1158674 e!2365783)))

(assert (= b!3830950 b!3830951))

(assert (= b!3830949 b!3830950))

(assert (= b!3830948 b!3830949))

(assert (= (and b!3828583 ((_ is Cons!40424) (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))) b!3830948))

(declare-fun m!4385681 () Bool)

(assert (=> b!3830948 m!4385681))

(declare-fun m!4385683 () Bool)

(assert (=> b!3830950 m!4385683))

(declare-fun m!4385685 () Bool)

(assert (=> b!3830950 m!4385685))

(declare-fun m!4385687 () Bool)

(assert (=> b!3830949 m!4385687))

(declare-fun b!3830952 () Bool)

(declare-fun e!2365787 () Bool)

(declare-fun tp!1159113 () Bool)

(assert (=> b!3830952 (= e!2365787 (and tp_is_empty!19209 tp!1159113))))

(assert (=> b!3828602 (= tp!1158695 e!2365787)))

(assert (= (and b!3828602 ((_ is Cons!40423) (innerList!12482 (xs!15716 (left!31275 (c!667180 treated!13)))))) b!3830952))

(declare-fun b!3830956 () Bool)

(declare-fun b_free!101649 () Bool)

(declare-fun b_next!102353 () Bool)

(assert (=> b!3830956 (= b_free!101649 (not b_next!102353))))

(declare-fun t!309074 () Bool)

(declare-fun tb!219849 () Bool)

(assert (=> (and b!3830956 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309074) tb!219849))

(declare-fun result!267982 () Bool)

(assert (= result!267982 result!267918))

(assert (=> d!1136742 t!309074))

(declare-fun t!309076 () Bool)

(declare-fun tb!219851 () Bool)

(assert (=> (and b!3830956 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309076) tb!219851))

(declare-fun result!267984 () Bool)

(assert (= result!267984 result!267938))

(assert (=> d!1137008 t!309076))

(declare-fun tb!219853 () Bool)

(declare-fun t!309078 () Bool)

(assert (=> (and b!3830956 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309078) tb!219853))

(declare-fun result!267986 () Bool)

(assert (= result!267986 result!267946))

(assert (=> d!1137008 t!309078))

(assert (=> d!1137014 t!309076))

(declare-fun tp!1159117 () Bool)

(declare-fun b_and!284703 () Bool)

(assert (=> b!3830956 (= tp!1159117 (and (=> t!309074 result!267982) (=> t!309076 result!267984) (=> t!309078 result!267986) b_and!284703))))

(declare-fun b_free!101651 () Bool)

(declare-fun b_next!102355 () Bool)

(assert (=> b!3830956 (= b_free!101651 (not b_next!102355))))

(declare-fun tb!219855 () Bool)

(declare-fun t!309080 () Bool)

(assert (=> (and b!3830956 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309080) tb!219855))

(declare-fun result!267988 () Bool)

(assert (= result!267988 result!267928))

(assert (=> d!1136814 t!309080))

(declare-fun t!309082 () Bool)

(declare-fun tb!219857 () Bool)

(assert (=> (and b!3830956 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309082) tb!219857))

(declare-fun result!267990 () Bool)

(assert (= result!267990 result!267954))

(assert (=> b!3830599 t!309082))

(declare-fun b_and!284705 () Bool)

(declare-fun tp!1159118 () Bool)

(assert (=> b!3830956 (= tp!1159118 (and (=> t!309080 result!267988) (=> t!309082 result!267990) b_and!284705))))

(declare-fun tp!1159116 () Bool)

(declare-fun b!3830953 () Bool)

(declare-fun e!2365790 () Bool)

(declare-fun e!2365792 () Bool)

(assert (=> b!3830953 (= e!2365790 (and (inv!54502 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))) e!2365792 tp!1159116))))

(declare-fun e!2365791 () Bool)

(declare-fun e!2365789 () Bool)

(declare-fun tp!1159114 () Bool)

(declare-fun b!3830955 () Bool)

(assert (=> b!3830955 (= e!2365789 (and tp!1159114 (inv!54478 (tag!7084 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (inv!54486 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) e!2365791))))

(assert (=> b!3830956 (= e!2365791 (and tp!1159117 tp!1159118))))

(declare-fun b!3830954 () Bool)

(declare-fun tp!1159115 () Bool)

(assert (=> b!3830954 (= e!2365792 (and (inv!21 (value!197991 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335))))))) e!2365789 tp!1159115))))

(assert (=> b!3828611 (= tp!1158703 e!2365790)))

(assert (= b!3830955 b!3830956))

(assert (= b!3830954 b!3830955))

(assert (= b!3830953 b!3830954))

(assert (= (and b!3828611 ((_ is Cons!40424) (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))) b!3830953))

(declare-fun m!4385689 () Bool)

(assert (=> b!3830953 m!4385689))

(declare-fun m!4385691 () Bool)

(assert (=> b!3830955 m!4385691))

(declare-fun m!4385693 () Bool)

(assert (=> b!3830955 m!4385693))

(declare-fun m!4385695 () Bool)

(assert (=> b!3830954 m!4385695))

(declare-fun b!3830957 () Bool)

(declare-fun e!2365794 () Bool)

(declare-fun tp!1159119 () Bool)

(assert (=> b!3830957 (= e!2365794 (and tp_is_empty!19209 tp!1159119))))

(assert (=> b!3828584 (= tp!1158673 e!2365794)))

(assert (= (and b!3828584 ((_ is Cons!40423) (originalCharacters!6824 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) b!3830957))

(declare-fun e!2365795 () Bool)

(assert (=> b!3828593 (= tp!1158684 e!2365795)))

(declare-fun b!3830959 () Bool)

(declare-fun tp!1159121 () Bool)

(declare-fun tp!1159122 () Bool)

(assert (=> b!3830959 (= e!2365795 (and tp!1159121 tp!1159122))))

(declare-fun b!3830958 () Bool)

(assert (=> b!3830958 (= e!2365795 tp_is_empty!19209)))

(declare-fun b!3830961 () Bool)

(declare-fun tp!1159120 () Bool)

(declare-fun tp!1159124 () Bool)

(assert (=> b!3830961 (= e!2365795 (and tp!1159120 tp!1159124))))

(declare-fun b!3830960 () Bool)

(declare-fun tp!1159123 () Bool)

(assert (=> b!3830960 (= e!2365795 tp!1159123)))

(assert (= (and b!3828593 ((_ is ElementMatch!11129) (regOne!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830958))

(assert (= (and b!3828593 ((_ is Concat!17584) (regOne!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830959))

(assert (= (and b!3828593 ((_ is Star!11129) (regOne!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830960))

(assert (= (and b!3828593 ((_ is Union!11129) (regOne!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830961))

(declare-fun e!2365796 () Bool)

(assert (=> b!3828593 (= tp!1158685 e!2365796)))

(declare-fun b!3830963 () Bool)

(declare-fun tp!1159126 () Bool)

(declare-fun tp!1159127 () Bool)

(assert (=> b!3830963 (= e!2365796 (and tp!1159126 tp!1159127))))

(declare-fun b!3830962 () Bool)

(assert (=> b!3830962 (= e!2365796 tp_is_empty!19209)))

(declare-fun b!3830965 () Bool)

(declare-fun tp!1159125 () Bool)

(declare-fun tp!1159129 () Bool)

(assert (=> b!3830965 (= e!2365796 (and tp!1159125 tp!1159129))))

(declare-fun b!3830964 () Bool)

(declare-fun tp!1159128 () Bool)

(assert (=> b!3830964 (= e!2365796 tp!1159128)))

(assert (= (and b!3828593 ((_ is ElementMatch!11129) (regTwo!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830962))

(assert (= (and b!3828593 ((_ is Concat!17584) (regTwo!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830963))

(assert (= (and b!3828593 ((_ is Star!11129) (regTwo!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830964))

(assert (= (and b!3828593 ((_ is Union!11129) (regTwo!22770 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830965))

(declare-fun e!2365797 () Bool)

(assert (=> b!3828594 (= tp!1158686 e!2365797)))

(declare-fun b!3830967 () Bool)

(declare-fun tp!1159131 () Bool)

(declare-fun tp!1159132 () Bool)

(assert (=> b!3830967 (= e!2365797 (and tp!1159131 tp!1159132))))

(declare-fun b!3830966 () Bool)

(assert (=> b!3830966 (= e!2365797 tp_is_empty!19209)))

(declare-fun b!3830969 () Bool)

(declare-fun tp!1159130 () Bool)

(declare-fun tp!1159134 () Bool)

(assert (=> b!3830969 (= e!2365797 (and tp!1159130 tp!1159134))))

(declare-fun b!3830968 () Bool)

(declare-fun tp!1159133 () Bool)

(assert (=> b!3830968 (= e!2365797 tp!1159133)))

(assert (= (and b!3828594 ((_ is ElementMatch!11129) (reg!11458 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830966))

(assert (= (and b!3828594 ((_ is Concat!17584) (reg!11458 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830967))

(assert (= (and b!3828594 ((_ is Star!11129) (reg!11458 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830968))

(assert (= (and b!3828594 ((_ is Union!11129) (reg!11458 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830969))

(declare-fun e!2365798 () Bool)

(assert (=> b!3828585 (= tp!1158672 e!2365798)))

(declare-fun b!3830971 () Bool)

(declare-fun tp!1159136 () Bool)

(declare-fun tp!1159137 () Bool)

(assert (=> b!3830971 (= e!2365798 (and tp!1159136 tp!1159137))))

(declare-fun b!3830970 () Bool)

(assert (=> b!3830970 (= e!2365798 tp_is_empty!19209)))

(declare-fun b!3830973 () Bool)

(declare-fun tp!1159135 () Bool)

(declare-fun tp!1159139 () Bool)

(assert (=> b!3830973 (= e!2365798 (and tp!1159135 tp!1159139))))

(declare-fun b!3830972 () Bool)

(declare-fun tp!1159138 () Bool)

(assert (=> b!3830972 (= e!2365798 tp!1159138)))

(assert (= (and b!3828585 ((_ is ElementMatch!11129) (regex!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) b!3830970))

(assert (= (and b!3828585 ((_ is Concat!17584) (regex!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) b!3830971))

(assert (= (and b!3828585 ((_ is Star!11129) (regex!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) b!3830972))

(assert (= (and b!3828585 ((_ is Union!11129) (regex!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) b!3830973))

(declare-fun e!2365799 () Bool)

(assert (=> b!3828566 (= tp!1158653 e!2365799)))

(declare-fun b!3830975 () Bool)

(declare-fun tp!1159141 () Bool)

(declare-fun tp!1159142 () Bool)

(assert (=> b!3830975 (= e!2365799 (and tp!1159141 tp!1159142))))

(declare-fun b!3830974 () Bool)

(assert (=> b!3830974 (= e!2365799 tp_is_empty!19209)))

(declare-fun b!3830977 () Bool)

(declare-fun tp!1159140 () Bool)

(declare-fun tp!1159144 () Bool)

(assert (=> b!3830977 (= e!2365799 (and tp!1159140 tp!1159144))))

(declare-fun b!3830976 () Bool)

(declare-fun tp!1159143 () Bool)

(assert (=> b!3830976 (= e!2365799 tp!1159143)))

(assert (= (and b!3828566 ((_ is ElementMatch!11129) (regOne!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830974))

(assert (= (and b!3828566 ((_ is Concat!17584) (regOne!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830975))

(assert (= (and b!3828566 ((_ is Star!11129) (regOne!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830976))

(assert (= (and b!3828566 ((_ is Union!11129) (regOne!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830977))

(declare-fun e!2365800 () Bool)

(assert (=> b!3828566 (= tp!1158654 e!2365800)))

(declare-fun b!3830979 () Bool)

(declare-fun tp!1159146 () Bool)

(declare-fun tp!1159147 () Bool)

(assert (=> b!3830979 (= e!2365800 (and tp!1159146 tp!1159147))))

(declare-fun b!3830978 () Bool)

(assert (=> b!3830978 (= e!2365800 tp_is_empty!19209)))

(declare-fun b!3830981 () Bool)

(declare-fun tp!1159145 () Bool)

(declare-fun tp!1159149 () Bool)

(assert (=> b!3830981 (= e!2365800 (and tp!1159145 tp!1159149))))

(declare-fun b!3830980 () Bool)

(declare-fun tp!1159148 () Bool)

(assert (=> b!3830980 (= e!2365800 tp!1159148)))

(assert (= (and b!3828566 ((_ is ElementMatch!11129) (regTwo!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830978))

(assert (= (and b!3828566 ((_ is Concat!17584) (regTwo!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830979))

(assert (= (and b!3828566 ((_ is Star!11129) (regTwo!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830980))

(assert (= (and b!3828566 ((_ is Union!11129) (regTwo!22770 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830981))

(declare-fun b!3830982 () Bool)

(declare-fun tp!1159151 () Bool)

(declare-fun tp!1159150 () Bool)

(declare-fun e!2365802 () Bool)

(assert (=> b!3830982 (= e!2365802 (and (inv!54485 (left!31275 (left!31275 (left!31275 (c!667180 input!678))))) tp!1159151 (inv!54485 (right!31605 (left!31275 (left!31275 (c!667180 input!678))))) tp!1159150))))

(declare-fun b!3830984 () Bool)

(declare-fun e!2365801 () Bool)

(declare-fun tp!1159152 () Bool)

(assert (=> b!3830984 (= e!2365801 tp!1159152)))

(declare-fun b!3830983 () Bool)

(assert (=> b!3830983 (= e!2365802 (and (inv!54500 (xs!15716 (left!31275 (left!31275 (c!667180 input!678))))) e!2365801))))

(assert (=> b!3828617 (= tp!1158712 (and (inv!54485 (left!31275 (left!31275 (c!667180 input!678)))) e!2365802))))

(assert (= (and b!3828617 ((_ is Node!12422) (left!31275 (left!31275 (c!667180 input!678))))) b!3830982))

(assert (= b!3830983 b!3830984))

(assert (= (and b!3828617 ((_ is Leaf!19232) (left!31275 (left!31275 (c!667180 input!678))))) b!3830983))

(declare-fun m!4385697 () Bool)

(assert (=> b!3830982 m!4385697))

(declare-fun m!4385699 () Bool)

(assert (=> b!3830982 m!4385699))

(declare-fun m!4385701 () Bool)

(assert (=> b!3830983 m!4385701))

(assert (=> b!3828617 m!4381189))

(declare-fun b!3830985 () Bool)

(declare-fun e!2365804 () Bool)

(declare-fun tp!1159154 () Bool)

(declare-fun tp!1159153 () Bool)

(assert (=> b!3830985 (= e!2365804 (and (inv!54485 (left!31275 (right!31605 (left!31275 (c!667180 input!678))))) tp!1159154 (inv!54485 (right!31605 (right!31605 (left!31275 (c!667180 input!678))))) tp!1159153))))

(declare-fun b!3830987 () Bool)

(declare-fun e!2365803 () Bool)

(declare-fun tp!1159155 () Bool)

(assert (=> b!3830987 (= e!2365803 tp!1159155)))

(declare-fun b!3830986 () Bool)

(assert (=> b!3830986 (= e!2365804 (and (inv!54500 (xs!15716 (right!31605 (left!31275 (c!667180 input!678))))) e!2365803))))

(assert (=> b!3828617 (= tp!1158711 (and (inv!54485 (right!31605 (left!31275 (c!667180 input!678)))) e!2365804))))

(assert (= (and b!3828617 ((_ is Node!12422) (right!31605 (left!31275 (c!667180 input!678))))) b!3830985))

(assert (= b!3830986 b!3830987))

(assert (= (and b!3828617 ((_ is Leaf!19232) (right!31605 (left!31275 (c!667180 input!678))))) b!3830986))

(declare-fun m!4385703 () Bool)

(assert (=> b!3830985 m!4385703))

(declare-fun m!4385705 () Bool)

(assert (=> b!3830985 m!4385705))

(declare-fun m!4385707 () Bool)

(assert (=> b!3830986 m!4385707))

(assert (=> b!3828617 m!4381191))

(declare-fun e!2365805 () Bool)

(assert (=> b!3828595 (= tp!1158683 e!2365805)))

(declare-fun b!3830989 () Bool)

(declare-fun tp!1159157 () Bool)

(declare-fun tp!1159158 () Bool)

(assert (=> b!3830989 (= e!2365805 (and tp!1159157 tp!1159158))))

(declare-fun b!3830988 () Bool)

(assert (=> b!3830988 (= e!2365805 tp_is_empty!19209)))

(declare-fun b!3830991 () Bool)

(declare-fun tp!1159156 () Bool)

(declare-fun tp!1159160 () Bool)

(assert (=> b!3830991 (= e!2365805 (and tp!1159156 tp!1159160))))

(declare-fun b!3830990 () Bool)

(declare-fun tp!1159159 () Bool)

(assert (=> b!3830990 (= e!2365805 tp!1159159)))

(assert (= (and b!3828595 ((_ is ElementMatch!11129) (regOne!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830988))

(assert (= (and b!3828595 ((_ is Concat!17584) (regOne!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830989))

(assert (= (and b!3828595 ((_ is Star!11129) (regOne!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830990))

(assert (= (and b!3828595 ((_ is Union!11129) (regOne!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830991))

(declare-fun e!2365806 () Bool)

(assert (=> b!3828595 (= tp!1158687 e!2365806)))

(declare-fun b!3830993 () Bool)

(declare-fun tp!1159162 () Bool)

(declare-fun tp!1159163 () Bool)

(assert (=> b!3830993 (= e!2365806 (and tp!1159162 tp!1159163))))

(declare-fun b!3830992 () Bool)

(assert (=> b!3830992 (= e!2365806 tp_is_empty!19209)))

(declare-fun b!3830995 () Bool)

(declare-fun tp!1159161 () Bool)

(declare-fun tp!1159165 () Bool)

(assert (=> b!3830995 (= e!2365806 (and tp!1159161 tp!1159165))))

(declare-fun b!3830994 () Bool)

(declare-fun tp!1159164 () Bool)

(assert (=> b!3830994 (= e!2365806 tp!1159164)))

(assert (= (and b!3828595 ((_ is ElementMatch!11129) (regTwo!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830992))

(assert (= (and b!3828595 ((_ is Concat!17584) (regTwo!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830993))

(assert (= (and b!3828595 ((_ is Star!11129) (regTwo!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830994))

(assert (= (and b!3828595 ((_ is Union!11129) (regTwo!22771 (regOne!22771 (regex!6224 (h!45845 rules!1265)))))) b!3830995))

(declare-fun b!3830996 () Bool)

(declare-fun e!2365807 () Bool)

(declare-fun tp!1159166 () Bool)

(assert (=> b!3830996 (= e!2365807 (and tp_is_empty!19209 tp!1159166))))

(assert (=> b!3828555 (= tp!1158641 e!2365807)))

(assert (= (and b!3828555 ((_ is Cons!40423) (t!308874 (innerList!12482 (xs!15716 (c!667180 treated!13)))))) b!3830996))

(declare-fun e!2365808 () Bool)

(assert (=> b!3828567 (= tp!1158655 e!2365808)))

(declare-fun b!3830998 () Bool)

(declare-fun tp!1159168 () Bool)

(declare-fun tp!1159169 () Bool)

(assert (=> b!3830998 (= e!2365808 (and tp!1159168 tp!1159169))))

(declare-fun b!3830997 () Bool)

(assert (=> b!3830997 (= e!2365808 tp_is_empty!19209)))

(declare-fun b!3831000 () Bool)

(declare-fun tp!1159167 () Bool)

(declare-fun tp!1159171 () Bool)

(assert (=> b!3831000 (= e!2365808 (and tp!1159167 tp!1159171))))

(declare-fun b!3830999 () Bool)

(declare-fun tp!1159170 () Bool)

(assert (=> b!3830999 (= e!2365808 tp!1159170)))

(assert (= (and b!3828567 ((_ is ElementMatch!11129) (reg!11458 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830997))

(assert (= (and b!3828567 ((_ is Concat!17584) (reg!11458 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830998))

(assert (= (and b!3828567 ((_ is Star!11129) (reg!11458 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3830999))

(assert (= (and b!3828567 ((_ is Union!11129) (reg!11458 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831000))

(declare-fun b!3831001 () Bool)

(declare-fun e!2365809 () Bool)

(declare-fun tp!1159172 () Bool)

(assert (=> b!3831001 (= e!2365809 (and tp_is_empty!19209 tp!1159172))))

(assert (=> b!3828619 (= tp!1158713 e!2365809)))

(assert (= (and b!3828619 ((_ is Cons!40423) (innerList!12482 (xs!15716 (left!31275 (c!667180 input!678)))))) b!3831001))

(declare-fun e!2365811 () Bool)

(declare-fun tp!1159173 () Bool)

(declare-fun b!3831002 () Bool)

(declare-fun tp!1159175 () Bool)

(assert (=> b!3831002 (= e!2365811 (and (inv!54484 (left!31276 (left!31276 (left!31276 (c!667181 acc!335))))) tp!1159175 (inv!54484 (right!31606 (left!31276 (left!31276 (c!667181 acc!335))))) tp!1159173))))

(declare-fun b!3831004 () Bool)

(declare-fun e!2365810 () Bool)

(declare-fun tp!1159174 () Bool)

(assert (=> b!3831004 (= e!2365810 tp!1159174)))

(declare-fun b!3831003 () Bool)

(assert (=> b!3831003 (= e!2365811 (and (inv!54499 (xs!15717 (left!31276 (left!31276 (c!667181 acc!335))))) e!2365810))))

(assert (=> b!3828606 (= tp!1158701 (and (inv!54484 (left!31276 (left!31276 (c!667181 acc!335)))) e!2365811))))

(assert (= (and b!3828606 ((_ is Node!12423) (left!31276 (left!31276 (c!667181 acc!335))))) b!3831002))

(assert (= b!3831003 b!3831004))

(assert (= (and b!3828606 ((_ is Leaf!19233) (left!31276 (left!31276 (c!667181 acc!335))))) b!3831003))

(declare-fun m!4385709 () Bool)

(assert (=> b!3831002 m!4385709))

(declare-fun m!4385711 () Bool)

(assert (=> b!3831002 m!4385711))

(declare-fun m!4385713 () Bool)

(assert (=> b!3831003 m!4385713))

(assert (=> b!3828606 m!4381177))

(declare-fun tp!1159178 () Bool)

(declare-fun e!2365813 () Bool)

(declare-fun b!3831005 () Bool)

(declare-fun tp!1159176 () Bool)

(assert (=> b!3831005 (= e!2365813 (and (inv!54484 (left!31276 (right!31606 (left!31276 (c!667181 acc!335))))) tp!1159178 (inv!54484 (right!31606 (right!31606 (left!31276 (c!667181 acc!335))))) tp!1159176))))

(declare-fun b!3831007 () Bool)

(declare-fun e!2365812 () Bool)

(declare-fun tp!1159177 () Bool)

(assert (=> b!3831007 (= e!2365812 tp!1159177)))

(declare-fun b!3831006 () Bool)

(assert (=> b!3831006 (= e!2365813 (and (inv!54499 (xs!15717 (right!31606 (left!31276 (c!667181 acc!335))))) e!2365812))))

(assert (=> b!3828606 (= tp!1158699 (and (inv!54484 (right!31606 (left!31276 (c!667181 acc!335)))) e!2365813))))

(assert (= (and b!3828606 ((_ is Node!12423) (right!31606 (left!31276 (c!667181 acc!335))))) b!3831005))

(assert (= b!3831006 b!3831007))

(assert (= (and b!3828606 ((_ is Leaf!19233) (right!31606 (left!31276 (c!667181 acc!335))))) b!3831006))

(declare-fun m!4385715 () Bool)

(assert (=> b!3831005 m!4385715))

(declare-fun m!4385717 () Bool)

(assert (=> b!3831005 m!4385717))

(declare-fun m!4385719 () Bool)

(assert (=> b!3831006 m!4385719))

(assert (=> b!3828606 m!4381179))

(declare-fun b!3831011 () Bool)

(declare-fun b_free!101653 () Bool)

(declare-fun b_next!102357 () Bool)

(assert (=> b!3831011 (= b_free!101653 (not b_next!102357))))

(declare-fun t!309084 () Bool)

(declare-fun tb!219859 () Bool)

(assert (=> (and b!3831011 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309084) tb!219859))

(declare-fun result!267992 () Bool)

(assert (= result!267992 result!267918))

(assert (=> d!1136742 t!309084))

(declare-fun tb!219861 () Bool)

(declare-fun t!309086 () Bool)

(assert (=> (and b!3831011 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309086) tb!219861))

(declare-fun result!267994 () Bool)

(assert (= result!267994 result!267938))

(assert (=> d!1137008 t!309086))

(declare-fun tb!219863 () Bool)

(declare-fun t!309088 () Bool)

(assert (=> (and b!3831011 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265)))) t!309088) tb!219863))

(declare-fun result!267996 () Bool)

(assert (= result!267996 result!267946))

(assert (=> d!1137008 t!309088))

(assert (=> d!1137014 t!309086))

(declare-fun tp!1159182 () Bool)

(declare-fun b_and!284707 () Bool)

(assert (=> b!3831011 (= tp!1159182 (and (=> t!309084 result!267992) (=> t!309086 result!267994) (=> t!309088 result!267996) b_and!284707))))

(declare-fun b_free!101655 () Bool)

(declare-fun b_next!102359 () Bool)

(assert (=> b!3831011 (= b_free!101655 (not b_next!102359))))

(declare-fun tb!219865 () Bool)

(declare-fun t!309090 () Bool)

(assert (=> (and b!3831011 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (_1!22949 (get!13413 lt!1329054)))))) t!309090) tb!219865))

(declare-fun result!267998 () Bool)

(assert (= result!267998 result!267928))

(assert (=> d!1136814 t!309090))

(declare-fun t!309092 () Bool)

(declare-fun tb!219867 () Bool)

(assert (=> (and b!3831011 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) t!309092) tb!219867))

(declare-fun result!268000 () Bool)

(assert (= result!268000 result!267954))

(assert (=> b!3830599 t!309092))

(declare-fun tp!1159183 () Bool)

(declare-fun b_and!284709 () Bool)

(assert (=> b!3831011 (= tp!1159183 (and (=> t!309090 result!267998) (=> t!309092 result!268000) b_and!284709))))

(declare-fun tp!1159181 () Bool)

(declare-fun e!2365818 () Bool)

(declare-fun e!2365816 () Bool)

(declare-fun b!3831008 () Bool)

(assert (=> b!3831008 (= e!2365816 (and (inv!54502 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))) e!2365818 tp!1159181))))

(declare-fun e!2365817 () Bool)

(declare-fun e!2365815 () Bool)

(declare-fun b!3831010 () Bool)

(declare-fun tp!1159179 () Bool)

(assert (=> b!3831010 (= e!2365815 (and tp!1159179 (inv!54478 (tag!7084 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (inv!54486 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) e!2365817))))

(assert (=> b!3831011 (= e!2365817 (and tp!1159182 tp!1159183))))

(declare-fun tp!1159180 () Bool)

(declare-fun b!3831009 () Bool)

(assert (=> b!3831009 (= e!2365818 (and (inv!21 (value!197991 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335))))))) e!2365815 tp!1159180))))

(assert (=> b!3828608 (= tp!1158700 e!2365816)))

(assert (= b!3831010 b!3831011))

(assert (= b!3831009 b!3831010))

(assert (= b!3831008 b!3831009))

(assert (= (and b!3828608 ((_ is Cons!40424) (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))) b!3831008))

(declare-fun m!4385721 () Bool)

(assert (=> b!3831008 m!4385721))

(declare-fun m!4385723 () Bool)

(assert (=> b!3831010 m!4385723))

(declare-fun m!4385725 () Bool)

(assert (=> b!3831010 m!4385725))

(declare-fun m!4385727 () Bool)

(assert (=> b!3831009 m!4385727))

(declare-fun e!2365820 () Bool)

(assert (=> b!3828568 (= tp!1158652 e!2365820)))

(declare-fun b!3831013 () Bool)

(declare-fun tp!1159185 () Bool)

(declare-fun tp!1159186 () Bool)

(assert (=> b!3831013 (= e!2365820 (and tp!1159185 tp!1159186))))

(declare-fun b!3831012 () Bool)

(assert (=> b!3831012 (= e!2365820 tp_is_empty!19209)))

(declare-fun b!3831015 () Bool)

(declare-fun tp!1159184 () Bool)

(declare-fun tp!1159188 () Bool)

(assert (=> b!3831015 (= e!2365820 (and tp!1159184 tp!1159188))))

(declare-fun b!3831014 () Bool)

(declare-fun tp!1159187 () Bool)

(assert (=> b!3831014 (= e!2365820 tp!1159187)))

(assert (= (and b!3828568 ((_ is ElementMatch!11129) (regOne!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831012))

(assert (= (and b!3828568 ((_ is Concat!17584) (regOne!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831013))

(assert (= (and b!3828568 ((_ is Star!11129) (regOne!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831014))

(assert (= (and b!3828568 ((_ is Union!11129) (regOne!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831015))

(declare-fun e!2365821 () Bool)

(assert (=> b!3828568 (= tp!1158656 e!2365821)))

(declare-fun b!3831017 () Bool)

(declare-fun tp!1159190 () Bool)

(declare-fun tp!1159191 () Bool)

(assert (=> b!3831017 (= e!2365821 (and tp!1159190 tp!1159191))))

(declare-fun b!3831016 () Bool)

(assert (=> b!3831016 (= e!2365821 tp_is_empty!19209)))

(declare-fun b!3831019 () Bool)

(declare-fun tp!1159189 () Bool)

(declare-fun tp!1159193 () Bool)

(assert (=> b!3831019 (= e!2365821 (and tp!1159189 tp!1159193))))

(declare-fun b!3831018 () Bool)

(declare-fun tp!1159192 () Bool)

(assert (=> b!3831018 (= e!2365821 tp!1159192)))

(assert (= (and b!3828568 ((_ is ElementMatch!11129) (regTwo!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831016))

(assert (= (and b!3828568 ((_ is Concat!17584) (regTwo!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831017))

(assert (= (and b!3828568 ((_ is Star!11129) (regTwo!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831018))

(assert (= (and b!3828568 ((_ is Union!11129) (regTwo!22771 (regOne!22770 (regex!6224 (h!45845 rules!1265)))))) b!3831019))

(declare-fun tp!1159194 () Bool)

(declare-fun e!2365823 () Bool)

(declare-fun tp!1159195 () Bool)

(declare-fun b!3831020 () Bool)

(assert (=> b!3831020 (= e!2365823 (and (inv!54485 (left!31275 (left!31275 (right!31605 (c!667180 totalInput!335))))) tp!1159195 (inv!54485 (right!31605 (left!31275 (right!31605 (c!667180 totalInput!335))))) tp!1159194))))

(declare-fun b!3831022 () Bool)

(declare-fun e!2365822 () Bool)

(declare-fun tp!1159196 () Bool)

(assert (=> b!3831022 (= e!2365822 tp!1159196)))

(declare-fun b!3831021 () Bool)

(assert (=> b!3831021 (= e!2365823 (and (inv!54500 (xs!15716 (left!31275 (right!31605 (c!667180 totalInput!335))))) e!2365822))))

(assert (=> b!3828562 (= tp!1158650 (and (inv!54485 (left!31275 (right!31605 (c!667180 totalInput!335)))) e!2365823))))

(assert (= (and b!3828562 ((_ is Node!12422) (left!31275 (right!31605 (c!667180 totalInput!335))))) b!3831020))

(assert (= b!3831021 b!3831022))

(assert (= (and b!3828562 ((_ is Leaf!19232) (left!31275 (right!31605 (c!667180 totalInput!335))))) b!3831021))

(declare-fun m!4385729 () Bool)

(assert (=> b!3831020 m!4385729))

(declare-fun m!4385731 () Bool)

(assert (=> b!3831020 m!4385731))

(declare-fun m!4385733 () Bool)

(assert (=> b!3831021 m!4385733))

(assert (=> b!3828562 m!4381151))

(declare-fun b!3831023 () Bool)

(declare-fun e!2365825 () Bool)

(declare-fun tp!1159197 () Bool)

(declare-fun tp!1159198 () Bool)

(assert (=> b!3831023 (= e!2365825 (and (inv!54485 (left!31275 (right!31605 (right!31605 (c!667180 totalInput!335))))) tp!1159198 (inv!54485 (right!31605 (right!31605 (right!31605 (c!667180 totalInput!335))))) tp!1159197))))

(declare-fun b!3831025 () Bool)

(declare-fun e!2365824 () Bool)

(declare-fun tp!1159199 () Bool)

(assert (=> b!3831025 (= e!2365824 tp!1159199)))

(declare-fun b!3831024 () Bool)

(assert (=> b!3831024 (= e!2365825 (and (inv!54500 (xs!15716 (right!31605 (right!31605 (c!667180 totalInput!335))))) e!2365824))))

(assert (=> b!3828562 (= tp!1158649 (and (inv!54485 (right!31605 (right!31605 (c!667180 totalInput!335)))) e!2365825))))

(assert (= (and b!3828562 ((_ is Node!12422) (right!31605 (right!31605 (c!667180 totalInput!335))))) b!3831023))

(assert (= b!3831024 b!3831025))

(assert (= (and b!3828562 ((_ is Leaf!19232) (right!31605 (right!31605 (c!667180 totalInput!335))))) b!3831024))

(declare-fun m!4385735 () Bool)

(assert (=> b!3831023 m!4385735))

(declare-fun m!4385737 () Bool)

(assert (=> b!3831023 m!4385737))

(declare-fun m!4385739 () Bool)

(assert (=> b!3831024 m!4385739))

(assert (=> b!3828562 m!4381153))

(declare-fun b!3831026 () Bool)

(declare-fun e!2365826 () Bool)

(declare-fun tp!1159200 () Bool)

(assert (=> b!3831026 (= e!2365826 (and tp_is_empty!19209 tp!1159200))))

(assert (=> b!3828612 (= tp!1158705 e!2365826)))

(assert (= (and b!3828612 ((_ is Cons!40423) (t!308874 (innerList!12482 (xs!15716 (c!667180 input!678)))))) b!3831026))

(declare-fun b_lambda!112027 () Bool)

(assert (= b_lambda!112023 (or d!1135660 b_lambda!112027)))

(declare-fun bs!582261 () Bool)

(declare-fun d!1137390 () Bool)

(assert (= bs!582261 (and d!1137390 d!1135660)))

(assert (=> bs!582261 (= (dynLambda!17516 lambda!125936 (h!45845 rules!1265)) (ruleValid!2185 thiss!11876 (h!45845 rules!1265)))))

(assert (=> bs!582261 m!4380305))

(assert (=> b!3830577 d!1137390))

(declare-fun b_lambda!112029 () Bool)

(assert (= b_lambda!112011 (or d!1135802 b_lambda!112029)))

(declare-fun bs!582262 () Bool)

(declare-fun d!1137392 () Bool)

(assert (= bs!582262 (and d!1137392 d!1135802)))

(assert (=> bs!582262 (= (dynLambda!17516 lambda!125945 (h!45845 rules!1265)) (ruleValid!2185 thiss!11876 (h!45845 rules!1265)))))

(assert (=> bs!582262 m!4380305))

(assert (=> b!3830163 d!1137392))

(declare-fun b_lambda!112031 () Bool)

(assert (= b_lambda!112021 (or b!3827975 b_lambda!112031)))

(declare-fun bs!582263 () Bool)

(declare-fun d!1137394 () Bool)

(assert (= bs!582263 (and d!1137394 b!3827975)))

(assert (=> bs!582263 (= (dynLambda!17518 lambda!125925 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))) (= (list!15055 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))) (list!15055 (seqFromList!4507 (list!15055 (_1!22951 lt!1329164))))))))

(declare-fun b_lambda!112043 () Bool)

(assert (=> (not b_lambda!112043) (not bs!582263)))

(declare-fun t!309094 () Bool)

(declare-fun tb!219869 () Bool)

(assert (=> (and b!3827069 (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309094) tb!219869))

(declare-fun b!3831027 () Bool)

(declare-fun e!2365827 () Bool)

(declare-fun tp!1159201 () Bool)

(assert (=> b!3831027 (= e!2365827 (and (inv!54485 (c!667180 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164))))))) tp!1159201))))

(declare-fun result!268002 () Bool)

(assert (=> tb!219869 (= result!268002 (and (inv!54487 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (seqFromList!4507 (list!15055 (_1!22951 lt!1329164)))))) e!2365827))))

(assert (= tb!219869 b!3831027))

(declare-fun m!4385741 () Bool)

(assert (=> b!3831027 m!4385741))

(declare-fun m!4385743 () Bool)

(assert (=> tb!219869 m!4385743))

(assert (=> bs!582263 t!309094))

(declare-fun b_and!284711 () Bool)

(assert (= b_and!284687 (and (=> t!309094 result!268002) b_and!284711)))

(declare-fun t!309096 () Bool)

(declare-fun tb!219871 () Bool)

(assert (=> (and b!3827404 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309096) tb!219871))

(declare-fun result!268004 () Bool)

(assert (= result!268004 result!268002))

(assert (=> bs!582263 t!309096))

(declare-fun b_and!284713 () Bool)

(assert (= b_and!284689 (and (=> t!309096 result!268004) b_and!284713)))

(declare-fun t!309098 () Bool)

(declare-fun tb!219873 () Bool)

(assert (=> (and b!3828558 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309098) tb!219873))

(declare-fun result!268006 () Bool)

(assert (= result!268006 result!268002))

(assert (=> bs!582263 t!309098))

(declare-fun b_and!284715 () Bool)

(assert (= b_and!284691 (and (=> t!309098 result!268006) b_and!284715)))

(declare-fun tb!219875 () Bool)

(declare-fun t!309100 () Bool)

(assert (=> (and b!3828586 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309100) tb!219875))

(declare-fun result!268008 () Bool)

(assert (= result!268008 result!268002))

(assert (=> bs!582263 t!309100))

(declare-fun b_and!284717 () Bool)

(assert (= b_and!284693 (and (=> t!309100 result!268008) b_and!284717)))

(declare-fun t!309102 () Bool)

(declare-fun tb!219877 () Bool)

(assert (=> (and b!3830951 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309102) tb!219877))

(declare-fun result!268010 () Bool)

(assert (= result!268010 result!268002))

(assert (=> bs!582263 t!309102))

(declare-fun b_and!284719 () Bool)

(assert (= b_and!284701 (and (=> t!309102 result!268010) b_and!284719)))

(declare-fun t!309104 () Bool)

(declare-fun tb!219879 () Bool)

(assert (=> (and b!3831011 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309104) tb!219879))

(declare-fun result!268012 () Bool)

(assert (= result!268012 result!268002))

(assert (=> bs!582263 t!309104))

(declare-fun b_and!284721 () Bool)

(assert (= b_and!284709 (and (=> t!309104 result!268012) b_and!284721)))

(declare-fun t!309106 () Bool)

(declare-fun tb!219881 () Bool)

(assert (=> (and b!3830956 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309106) tb!219881))

(declare-fun result!268014 () Bool)

(assert (= result!268014 result!268002))

(assert (=> bs!582263 t!309106))

(declare-fun b_and!284723 () Bool)

(assert (= b_and!284705 (and (=> t!309106 result!268014) b_and!284723)))

(declare-fun t!309108 () Bool)

(declare-fun tb!219883 () Bool)

(assert (=> (and b!3830876 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309108) tb!219883))

(declare-fun result!268016 () Bool)

(assert (= result!268016 result!268002))

(assert (=> bs!582263 t!309108))

(declare-fun b_and!284725 () Bool)

(assert (= b_and!284697 (and (=> t!309108 result!268016) b_and!284725)))

(declare-fun b_lambda!112045 () Bool)

(assert (=> (not b_lambda!112045) (not bs!582263)))

(assert (=> bs!582263 t!309042))

(declare-fun b_and!284727 () Bool)

(assert (= b_and!284683 (and (=> t!309042 result!267950) b_and!284727)))

(assert (=> bs!582263 t!309078))

(declare-fun b_and!284729 () Bool)

(assert (= b_and!284703 (and (=> t!309078 result!267986) b_and!284729)))

(assert (=> bs!582263 t!309040))

(declare-fun b_and!284731 () Bool)

(assert (= b_and!284681 (and (=> t!309040 result!267948) b_and!284731)))

(assert (=> bs!582263 t!309044))

(declare-fun b_and!284733 () Bool)

(assert (= b_and!284685 (and (=> t!309044 result!267952) b_and!284733)))

(assert (=> bs!582263 t!309038))

(declare-fun b_and!284735 () Bool)

(assert (= b_and!284679 (and (=> t!309038 result!267946) b_and!284735)))

(assert (=> bs!582263 t!309088))

(declare-fun b_and!284737 () Bool)

(assert (= b_and!284707 (and (=> t!309088 result!267996) b_and!284737)))

(assert (=> bs!582263 t!309058))

(declare-fun b_and!284739 () Bool)

(assert (= b_and!284695 (and (=> t!309058 result!267966) b_and!284739)))

(assert (=> bs!582263 t!309068))

(declare-fun b_and!284741 () Bool)

(assert (= b_and!284699 (and (=> t!309068 result!267976) b_and!284741)))

(declare-fun m!4385745 () Bool)

(assert (=> bs!582263 m!4385745))

(declare-fun m!4385747 () Bool)

(assert (=> bs!582263 m!4385747))

(assert (=> bs!582263 m!4380269))

(assert (=> bs!582263 m!4384589))

(assert (=> bs!582263 m!4380269))

(assert (=> bs!582263 m!4384591))

(assert (=> bs!582263 m!4384589))

(assert (=> bs!582263 m!4385745))

(assert (=> d!1137022 d!1137394))

(declare-fun b_lambda!112033 () Bool)

(assert (= b_lambda!112015 (or (and b!3831011 b_free!101653 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828558 b_free!101617 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830951 b_free!101645 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827069 b_free!101597) (and b!3830876 b_free!101641 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827404 b_free!101605 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830956 b_free!101649 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828586 b_free!101621 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) b_lambda!112033)))

(declare-fun b_lambda!112035 () Bool)

(assert (= b_lambda!112013 (or b!3827975 b_lambda!112035)))

(declare-fun bs!582264 () Bool)

(declare-fun d!1137396 () Bool)

(assert (= bs!582264 (and d!1137396 b!3827975)))

(assert (=> bs!582264 (= (dynLambda!17518 lambda!125925 (_1!22951 lt!1329164)) (= (list!15055 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164)))) (list!15055 (_1!22951 lt!1329164))))))

(declare-fun b_lambda!112047 () Bool)

(assert (=> (not b_lambda!112047) (not bs!582264)))

(declare-fun t!309110 () Bool)

(declare-fun tb!219885 () Bool)

(assert (=> (and b!3828558 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309110) tb!219885))

(declare-fun b!3831028 () Bool)

(declare-fun e!2365828 () Bool)

(declare-fun tp!1159202 () Bool)

(assert (=> b!3831028 (= e!2365828 (and (inv!54485 (c!667180 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164))))) tp!1159202))))

(declare-fun result!268018 () Bool)

(assert (=> tb!219885 (= result!268018 (and (inv!54487 (dynLambda!17515 (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (dynLambda!17514 (toValue!8624 (transformation!6224 (h!45845 rules!1265))) (_1!22951 lt!1329164)))) e!2365828))))

(assert (= tb!219885 b!3831028))

(declare-fun m!4385749 () Bool)

(assert (=> b!3831028 m!4385749))

(declare-fun m!4385751 () Bool)

(assert (=> tb!219885 m!4385751))

(assert (=> bs!582264 t!309110))

(declare-fun b_and!284743 () Bool)

(assert (= b_and!284715 (and (=> t!309110 result!268018) b_and!284743)))

(declare-fun t!309112 () Bool)

(declare-fun tb!219887 () Bool)

(assert (=> (and b!3830876 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309112) tb!219887))

(declare-fun result!268020 () Bool)

(assert (= result!268020 result!268018))

(assert (=> bs!582264 t!309112))

(declare-fun b_and!284745 () Bool)

(assert (= b_and!284725 (and (=> t!309112 result!268020) b_and!284745)))

(declare-fun t!309114 () Bool)

(declare-fun tb!219889 () Bool)

(assert (=> (and b!3827069 (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309114) tb!219889))

(declare-fun result!268022 () Bool)

(assert (= result!268022 result!268018))

(assert (=> bs!582264 t!309114))

(declare-fun b_and!284747 () Bool)

(assert (= b_and!284711 (and (=> t!309114 result!268022) b_and!284747)))

(declare-fun t!309116 () Bool)

(declare-fun tb!219891 () Bool)

(assert (=> (and b!3831011 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309116) tb!219891))

(declare-fun result!268024 () Bool)

(assert (= result!268024 result!268018))

(assert (=> bs!582264 t!309116))

(declare-fun b_and!284749 () Bool)

(assert (= b_and!284721 (and (=> t!309116 result!268024) b_and!284749)))

(declare-fun t!309118 () Bool)

(declare-fun tb!219893 () Bool)

(assert (=> (and b!3830956 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309118) tb!219893))

(declare-fun result!268026 () Bool)

(assert (= result!268026 result!268018))

(assert (=> bs!582264 t!309118))

(declare-fun b_and!284751 () Bool)

(assert (= b_and!284723 (and (=> t!309118 result!268026) b_and!284751)))

(declare-fun t!309120 () Bool)

(declare-fun tb!219895 () Bool)

(assert (=> (and b!3827404 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309120) tb!219895))

(declare-fun result!268028 () Bool)

(assert (= result!268028 result!268018))

(assert (=> bs!582264 t!309120))

(declare-fun b_and!284753 () Bool)

(assert (= b_and!284713 (and (=> t!309120 result!268028) b_and!284753)))

(declare-fun tb!219897 () Bool)

(declare-fun t!309122 () Bool)

(assert (=> (and b!3828586 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309122) tb!219897))

(declare-fun result!268030 () Bool)

(assert (= result!268030 result!268018))

(assert (=> bs!582264 t!309122))

(declare-fun b_and!284755 () Bool)

(assert (= b_and!284717 (and (=> t!309122 result!268030) b_and!284755)))

(declare-fun t!309124 () Bool)

(declare-fun tb!219899 () Bool)

(assert (=> (and b!3830951 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (h!45845 rules!1265)))) t!309124) tb!219899))

(declare-fun result!268032 () Bool)

(assert (= result!268032 result!268018))

(assert (=> bs!582264 t!309124))

(declare-fun b_and!284757 () Bool)

(assert (= b_and!284719 (and (=> t!309124 result!268032) b_and!284757)))

(declare-fun b_lambda!112049 () Bool)

(assert (=> (not b_lambda!112049) (not bs!582264)))

(assert (=> bs!582264 t!309086))

(declare-fun b_and!284759 () Bool)

(assert (= b_and!284737 (and (=> t!309086 result!267994) b_and!284759)))

(assert (=> bs!582264 t!309030))

(declare-fun b_and!284761 () Bool)

(assert (= b_and!284735 (and (=> t!309030 result!267938) b_and!284761)))

(assert (=> bs!582264 t!309066))

(declare-fun b_and!284763 () Bool)

(assert (= b_and!284741 (and (=> t!309066 result!267974) b_and!284763)))

(assert (=> bs!582264 t!309032))

(declare-fun b_and!284765 () Bool)

(assert (= b_and!284731 (and (=> t!309032 result!267940) b_and!284765)))

(assert (=> bs!582264 t!309036))

(declare-fun b_and!284767 () Bool)

(assert (= b_and!284733 (and (=> t!309036 result!267944) b_and!284767)))

(assert (=> bs!582264 t!309056))

(declare-fun b_and!284769 () Bool)

(assert (= b_and!284739 (and (=> t!309056 result!267964) b_and!284769)))

(assert (=> bs!582264 t!309076))

(declare-fun b_and!284771 () Bool)

(assert (= b_and!284729 (and (=> t!309076 result!267984) b_and!284771)))

(assert (=> bs!582264 t!309034))

(declare-fun b_and!284773 () Bool)

(assert (= b_and!284727 (and (=> t!309034 result!267942) b_and!284773)))

(declare-fun m!4385753 () Bool)

(assert (=> bs!582264 m!4385753))

(declare-fun m!4385755 () Bool)

(assert (=> bs!582264 m!4385755))

(assert (=> bs!582264 m!4384593))

(assert (=> bs!582264 m!4380289))

(assert (=> bs!582264 m!4384593))

(assert (=> bs!582264 m!4385753))

(assert (=> d!1137006 d!1137396))

(declare-fun b_lambda!112037 () Bool)

(assert (= b_lambda!112017 (or (and b!3831011 b_free!101653 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828558 b_free!101617 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830951 b_free!101645 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827069 b_free!101597) (and b!3830876 b_free!101641 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827404 b_free!101605 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830956 b_free!101649 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828586 b_free!101621 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) b_lambda!112037)))

(declare-fun b_lambda!112039 () Bool)

(assert (= b_lambda!112019 (or (and b!3831011 b_free!101653 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828558 b_free!101617 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830951 b_free!101645 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827069 b_free!101597) (and b!3830876 b_free!101641 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3827404 b_free!101605 (= (toValue!8624 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3830956 b_free!101649 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) (and b!3828586 b_free!101621 (= (toValue!8624 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))) (toValue!8624 (transformation!6224 (h!45845 rules!1265))))) b_lambda!112039)))

(declare-fun b_lambda!112041 () Bool)

(assert (= b_lambda!112025 (or (and b!3830956 b_free!101651 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (right!31606 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3831011 b_free!101655 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (left!31276 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3830876 b_free!101643 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 (t!308876 rules!1265)))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3827404 b_free!101607 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 rules!1265)))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3828558 b_free!101619 (= (toChars!8483 (transformation!6224 (h!45845 (t!308876 (t!308876 rules!1265))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3830951 b_free!101647 (= (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (t!308875 (innerList!12483 (xs!15717 (c!667181 acc!335)))))))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3827069 b_free!101599 (= (toChars!8483 (transformation!6224 (h!45845 rules!1265))) (toChars!8483 (transformation!6224 (rule!9048 (h!45844 (innerList!12483 (xs!15717 (c!667181 acc!335))))))))) (and b!3828586 b_free!101623) b_lambda!112041)))

(check-sat (not d!1137356) (not b!3830828) (not b!3830149) (not d!1136748) (not d!1136914) (not b!3830553) (not b!3830496) (not d!1137236) (not b!3830413) (not b!3829845) (not bm!281429) (not b!3830802) (not b!3829969) (not b!3830740) (not d!1137136) (not d!1137188) (not b!3829890) (not b!3830841) (not bm!281427) (not d!1136854) (not b!3830156) (not d!1136726) (not b!3830884) (not b!3830697) (not b!3830611) (not b_next!102321) (not b!3830182) (not b!3830164) (not bm!281477) (not b!3830509) (not b!3830243) (not b!3830506) (not b_next!102327) (not b!3830823) (not d!1137388) (not b!3830873) (not b!3830084) (not b!3830999) (not b!3830166) (not b!3830336) (not b!3830817) (not b!3830585) (not d!1137168) (not b!3830925) (not b!3830189) (not b!3830982) (not b!3830066) (not b!3830100) (not b!3830580) (not b!3830851) (not b!3831017) (not b!3830937) (not b!3830831) (not d!1136900) (not d!1137280) (not b!3830822) (not b!3830987) (not b!3830579) (not bm!281469) (not b!3830508) (not b!3830202) (not b!3830069) (not d!1136894) (not d!1136882) (not bm!281434) (not bm!281422) (not b!3830837) (not b!3829951) (not b!3830351) (not d!1137268) (not b!3830455) (not bm!281465) (not d!1137150) (not b!3830921) (not b!3830418) (not b!3830411) (not b!3830608) (not d!1137262) (not d!1137112) (not b!3830285) (not b!3831008) (not b!3830394) (not b!3830929) (not d!1137368) (not b!3830501) (not b!3830652) (not b!3828620) (not d!1136666) (not b!3830287) (not b!3830174) (not d!1137366) (not b!3829849) (not b!3830132) (not b!3830949) (not b!3830657) (not d!1136756) (not b!3831006) (not b!3830326) (not b!3830654) (not b!3830441) (not d!1137134) (not b!3830274) (not d!1136846) (not b!3830369) (not b!3830293) (not b!3830007) (not b!3830071) (not b!3830637) (not b!3830466) (not b!3830540) (not b!3831002) (not b!3829868) (not tb!219869) (not b!3830683) (not b!3830630) (not b!3830526) (not b!3830067) (not b!3830645) (not bm!281423) (not b!3830928) (not b!3830449) (not b!3830110) (not d!1136828) (not b!3831026) b_and!284745 (not b!3830628) (not b!3830108) (not bm!281467) (not b!3830917) (not b!3830932) (not b!3830847) (not b!3830196) (not tb!219805) (not b!3830880) (not b!3830422) (not b!3830787) (not d!1136720) (not b!3830091) (not b_next!102323) (not b!3830906) (not tb!219789) (not d!1136800) (not b!3830939) (not b!3830179) (not b!3830566) (not b!3831018) (not d!1137270) (not b!3830185) (not b!3830465) (not b!3830487) (not b!3830505) (not b!3830991) (not bm!281400) (not b!3830094) (not d!1136936) (not b_lambda!112035) (not b!3830217) (not d!1137184) (not b!3830519) (not d!1136910) (not b!3830671) (not b!3830239) (not b!3830751) (not b!3830539) (not b!3829836) (not b!3830317) (not b!3830896) (not b!3830922) (not bm!281435) (not b!3830477) (not b!3830245) (not d!1137028) (not b!3830846) (not b!3830796) (not bm!281478) (not b_next!102309) (not b!3830825) (not d!1136700) (not b!3830699) (not b!3830856) (not b!3830123) (not d!1137320) (not d!1136844) (not b!3828617) (not b!3830795) (not b!3830011) (not b!3829897) (not b!3830087) (not b!3830407) (not b!3830868) (not b!3831003) (not b!3830012) (not b!3830805) (not b!3830968) (not b!3830137) (not b!3830911) (not b!3829848) (not d!1136970) (not b!3830935) (not b!3830967) (not d!1136642) (not b_next!102345) (not b!3830891) (not d!1137114) (not b!3829941) (not d!1137276) (not d!1136792) (not b!3830863) (not b!3830478) (not b!3831028) (not b_next!102349) (not b!3829910) (not b!3830840) (not b!3830246) (not d!1136806) (not b!3830295) (not b!3830292) (not b!3830755) (not b!3830882) (not bm!281403) (not b!3829880) (not d!1136712) (not bm!281399) (not b!3830900) (not b!3830251) (not b!3830617) (not b!3830910) (not b!3830513) (not b!3830780) (not b!3830904) (not d!1137258) (not b!3830909) (not b!3830624) (not bm!281446) (not d!1137036) (not d!1137094) (not d!1137126) (not b!3830093) (not b!3830800) (not d!1136734) (not b!3828559) b_and!284751 (not b!3830885) (not b!3830085) (not b!3830399) (not b!3830146) (not b!3829900) (not b!3830905) (not b!3830340) (not b!3830927) (not d!1136940) (not b!3830434) (not d!1137140) (not b!3830338) (not b!3830177) (not b_lambda!112041) (not b!3830531) (not b!3830134) (not b!3830977) (not b!3831020) (not b!3830456) (not b!3830862) (not d!1137378) (not b!3830918) (not b!3830848) (not b!3830919) (not d!1137260) (not b!3830965) (not b!3830097) (not d!1136750) (not b!3829864) (not b!3830944) (not b!3830724) (not b!3830283) (not d!1137234) (not b!3830372) (not b!3830694) (not b_next!102359) (not b!3830397) (not d!1137020) (not b!3828562) (not b!3830200) (not b!3830688) (not b!3830693) (not b!3830184) (not bm!281456) (not b!3830421) (not b!3829918) (not b_next!102347) (not b!3829829) (not b!3830302) (not d!1137208) (not b!3830306) (not b!3830663) (not b!3830116) (not b!3829892) (not b!3830960) (not d!1137314) (not d!1136876) (not b!3830296) (not b!3830736) (not b!3830568) (not b!3830459) (not d!1136812) (not b!3830810) (not d!1137132) (not b!3830538) (not b!3830172) (not b!3830590) (not tb!219813) (not b!3830525) (not b!3830144) (not b!3830516) b_and!284749 (not b!3830088) (not d!1137146) (not b!3828606) (not b!3829926) (not d!1137312) (not b!3829965) (not b!3830761) (not b!3830483) (not b!3830419) (not b_lambda!112027) (not b!3830959) (not b!3829919) (not b!3830497) (not b!3830995) (not b!3830670) (not b!3830266) (not b!3830907) (not b!3830469) (not b!3831009) (not b!3830803) (not b!3830829) (not b!3830656) (not d!1136810) (not d!1136638) (not d!1137166) (not bs!582262) (not d!1137032) (not d!1136884) (not b!3830145) (not b!3829928) (not b!3829828) (not d!1137250) (not b!3830238) (not b!3830729) (not b!3830704) (not b!3830180) (not b!3830980) (not b!3830468) (not b!3830073) (not d!1137354) (not b!3830546) (not b!3830666) (not b!3830148) (not b!3830706) (not d!1136794) (not b!3829896) (not d!1137386) b_and!284761 b_and!284767 b_and!284757 (not d!1136728) (not d!1137064) (not d!1137010) (not b!3830976) b_and!284763 (not b!3830975) (not b!3830559) (not b!3830138) b_and!284773 (not b!3830319) (not b!3830820) (not b!3830773) (not b!3830998) (not b!3830971) (not b!3830957) (not b!3830701) (not b!3830920) (not d!1137054) (not b!3830923) (not b!3829964) (not d!1136918) (not b!3830062) (not d!1136968) (not b!3830899) (not b!3830409) (not d!1137372) (not b!3830512) (not d!1136640) (not b!3830818) (not b!3829976) (not d!1136752) (not b_next!102311) (not d!1137194) (not b!3830600) (not b!3830307) (not b!3830893) (not b!3830075) (not b_lambda!112033) (not d!1136754) (not b!3830194) (not b!3830205) (not b!3830799) (not bm!281398) (not b!3830143) (not b!3830797) (not b!3830050) (not d!1136830) (not b!3830524) (not b!3830887) (not b!3830943) (not b!3830517) (not b!3830647) (not b!3830018) (not b!3830211) b_and!284771 (not d!1136710) (not b!3830852) (not b!3830883) (not b!3830849) (not b!3830268) (not b!3830153) (not d!1137008) (not b!3830730) (not b!3830931) (not b!3830945) (not d!1137098) (not b!3830592) (not b!3831019) (not b!3830215) (not b!3830953) (not d!1136896) (not b!3830068) (not b!3830623) (not b!3830099) (not b!3830768) (not b!3830678) (not b!3831024) (not bm!281396) (not d!1136702) (not b!3830606) (not d!1136668) (not b!3830737) (not b!3830474) (not b!3830870) (not b!3829871) (not d!1137026) (not d!1136808) (not b!3830346) (not d!1136842) (not b!3829913) (not b!3829902) (not bm!281433) (not b!3830282) (not b!3829972) (not b!3829835) (not b!3830621) b_and!284769 (not b!3830081) (not b!3830686) (not d!1137048) (not d!1137214) (not d!1136708) (not b!3830271) (not b!3831001) (not b!3829908) (not d!1137252) (not b!3830871) b_and!284747 (not b!3830990) (not b!3830176) (not b!3830707) (not b!3830698) (not b_lambda!112047) (not b!3830563) (not b!3830368) (not b!3830013) (not b!3830798) (not d!1136774) (not b!3830632) (not d!1137206) (not b!3830948) b_and!284755 (not b!3830141) (not b!3830140) (not b!3829968) (not b!3830844) (not b!3830769) (not b!3830284) (not b!3830835) (not b!3830749) (not b!3830744) (not d!1137080) (not d!1137076) (not b!3830053) (not b!3830290) (not b!3830888) (not b!3830721) (not bm!281468) (not b_next!102303) (not b!3830070) (not b!3829957) (not d!1137130) (not b!3828600) (not b!3830792) (not b!3830374) (not b!3830783) (not b!3830845) (not b!3830771) (not d!1137350) (not b!3830473) (not bm!281454) (not d!1137074) (not b!3830860) (not b!3830889) (not b!3830734) (not bm!281424) (not b!3830114) (not b!3830753) (not b!3829903) (not d!1136672) (not b_next!102325) (not b!3830379) (not b!3830669) (not b!3830528) (not bm!281439) (not b!3830562) (not b!3830484) (not tb!219821) (not b!3830375) (not b!3829889) (not d!1136932) tp_is_empty!19209 (not b!3830558) (not b!3830570) (not b!3830128) (not b!3830843) (not b!3830764) (not b!3829856) (not bm!281436) (not b!3830833) (not b!3830794) (not b!3830286) (not b!3831023) (not b!3830193) (not b_lambda!112043) (not b_lambda!112029) (not b_lambda!112009) (not b!3829865) (not d!1136744) (not d!1136764) (not b_lambda!112007) b_and!284753 (not b!3830687) (not b!3830785) (not b!3830603) (not b!3830410) b_and!284765 (not b!3830415) (not bm!281471) b_and!284743 (not b!3830947) (not b!3830589) (not d!1136952) (not b!3830742) (not b!3830607) (not b!3830060) (not d!1137012) (not b!3830983) b_and!284759 (not b!3829895) (not b!3830675) (not b!3830878) (not b!3829885) (not d!1137120) (not b!3830815) (not b!3830125) (not b!3830569) (not b!3830961) (not b!3830065) (not d!1136690) (not b!3831015) (not d!1137018) (not b!3830626) (not b!3830565) (not b!3830204) (not b!3830520) (not b!3830765) (not bm!281461) (not b!3830405) (not b!3830788) (not b!3830969) (not b!3829839) (not b_lambda!112039) (not bm!281462) (not b!3830321) (not b!3830806) (not b!3830297) (not b!3830639) (not b!3830985) (not d!1137220) (not b!3830370) (not d!1137154) (not b!3830705) (not b!3830609) (not b!3829920) (not d!1137124) (not d!1137210) (not b!3830702) (not b!3830766) (not b!3830278) (not b!3830294) (not b!3830548) (not b!3830673) (not d!1137158) (not b!3829945) (not b!3830064) (not b!3830622) (not b!3830542) (not b!3830775) (not b!3830682) (not bm!281466) (not b!3831021) (not b!3829906) (not d!1137244) (not b!3830814) (not b!3830555) (not b!3830747) (not b!3831025) (not b!3830973) (not d!1137272) (not b!3830874) (not b!3830588) (not b!3830867) (not bm!281432) (not bm!281397) (not b!3830142) (not d!1137352) (not b!3830872) (not b!3830875) (not b_next!102351) (not bm!281426) (not b!3830972) (not bm!281425) (not b!3830934) (not b!3830866) (not d!1137044) (not b!3830677) (not b!3830993) (not b!3830938) (not b!3829923) (not b!3831027) (not b!3830963) (not b!3830414) (not bm!281455) (not b!3829893) (not b!3831004) (not bm!281476) (not bs!582264) (not b!3830782) (not b!3830458) (not b!3830593) (not b!3829946) (not b!3830581) (not b!3831005) (not b!3830984) (not b!3830363) (not d!1137376) (not b!3829949) (not b!3830408) (not b!3830902) (not bm!281463) (not b!3830092) (not d!1137266) (not bs!582261) (not b!3830791) (not d!1137142) (not d!1137110) (not b!3830859) (not b!3830629) (not bm!281479) (not b!3830261) (not d!1137198) (not d!1137278) (not b!3830703) (not b!3830827) (not d!1136694) (not b!3829911) (not bm!281473) (not b!3830767) (not d!1137128) (not bm!281450) (not d!1137118) (not b!3828609) (not b!3830733) (not d!1136908) (not b!3830689) (not b!3830901) (not b!3830895) (not b!3830203) (not b!3831010) (not d!1137336) (not b!3830777) (not b!3830364) (not d!1137232) (not b_lambda!112049) (not b!3830642) (not d!1136768) (not b!3830303) (not b!3829881) (not b!3830602) (not b_lambda!112037) (not b!3830591) (not b!3830522) (not b!3830201) (not b!3830472) (not b!3830518) (not b!3830198) (not b!3830175) (not b!3830289) (not b!3830313) (not b!3830892) (not b!3829875) (not d!1136786) (not b_next!102353) (not bm!281458) (not b!3830545) (not b!3830864) (not bm!281475) (not b!3830250) (not b!3830839) (not b!3830536) (not b!3830640) (not b!3829894) (not tb!219885) (not bm!281453) (not b!3830986) (not b!3830924) (not b!3829975) (not b!3830897) (not b!3830480) (not b!3830779) (not b!3830109) (not b!3830530) (not b!3830824) (not b!3830832) (not b!3830425) (not b!3830457) (not b!3830979) (not d!1136906) (not d!1136814) (not b!3830634) (not b!3830104) (not b!3829943) (not b!3829915) (not d!1137274) (not d!1136656) (not b!3830572) (not b!3830382) (not b!3830342) (not b!3830855) (not b!3830955) (not d!1136860) (not b!3829857) (not bm!281452) (not bm!281430) (not d!1136972) (not b!3830914) (not d!1136978) (not b!3830416) (not b!3830748) (not b!3830511) (not b!3830940) (not b!3830757) (not b!3830954) (not b!3830994) (not b!3830288) (not b_next!102355) (not d!1136948) (not b!3829942) (not b!3830665) (not b!3829886) (not d!1136924) (not b!3830850) (not b!3830105) (not b!3830377) (not b!3830950) (not b!3829860) (not bm!281448) (not b!3830426) (not b!3830126) (not b!3830158) (not b!3830858) (not b!3829878) (not b!3830438) (not b!3830435) (not d!1136784) (not b!3830599) (not b!3830789) (not b_next!102357) (not b!3830406) (not b!3830420) (not b!3829952) (not b!3830915) (not bm!281474) (not bs!582263) (not d!1136832) (not b!3829872) (not b!3830594) (not b!3830299) (not b!3829917) (not b!3831022) (not b!3830722) (not b!3830371) (not d!1137324) (not b_lambda!112045) (not d!1136880) (not bm!281428) (not b!3830494) (not bm!281464) (not b!3830763) (not b!3830431) (not b!3830124) (not d!1137308) (not b!3830648) (not b!3830552) (not b!3830462) (not d!1137296) (not b!3830584) (not b!3831007) (not d!1136816) (not b!3829954) (not b!3830199) (not d!1137068) (not b!3829869) (not b!3830113) (not d!1136724) (not d!1137218) (not b!3830879) (not b!3830275) (not b!3830981) (not b!3830366) (not b!3830567) (not b!3830662) (not b!3829853) (not d!1137178) (not b!3830241) (not d!1136868) (not b!3830941) (not bm!281470) (not b!3830424) (not bm!281472) (not b!3830453) (not d!1136878) (not b!3830854) (not b!3829891) (not b!3830942) (not b!3830668) (not b!3830836) (not b!3830604) (not d!1136976) (not bm!281420) (not b!3830404) (not b!3830936) (not b!3830095) (not d!1137102) (not bm!281431) (not b!3830514) (not bm!281447) (not b!3830439) (not d!1137310) (not b!3829907) (not d!1137104) (not b!3830463) (not b!3830384) (not d!1137318) (not b!3830743) (not d!1137204) (not b!3830636) (not d!1136984) (not b!3830502) (not d!1137338) (not bm!281459) (not b!3830625) (not b!3828603) (not b!3830793) (not b!3830443) (not b!3830644) (not b!3830244) (not d!1137148) (not b!3830578) (not b!3830601) (not b!3830298) (not d!1137298) (not b!3830401) (not b!3829960) (not b!3830117) (not b!3830330) (not b!3830758) (not b!3829924) (not b!3830672) (not b!3830811) (not b!3830008) (not b!3830348) (not b!3829959) (not b!3830135) (not b!3830460) (not b_lambda!112031) (not b!3830489) (not b!3830521) (not b!3830049) (not b!3830659) (not d!1136834) (not b!3830452) (not b!3830344) (not d!1136990) (not b!3830547) (not d!1136704) (not b!3830964) (not b!3830643) (not b!3830090) (not bm!281460) (not d!1136692) (not b!3830427) (not b!3830746) (not b!3831014) (not b!3829899) (not d!1136912) (not d!1137022) (not d!1137016) (not d!1136950) (not b!3830903) (not b!3830913) (not b!3830219) (not b!3830151) (not b!3830129) (not d!1137192) (not tb!219797) (not b!3830586) (not b!3830564) (not bm!281421) (not b!3830365) (not b!3829859) (not d!1136732) (not b!3830576) (not b!3830089) (not d!1137006) (not b!3830252) (not b!3830946) (not b!3830260) (not bm!281457) (not b!3829852) (not d!1137200) (not b!3830781) (not b!3830178) (not b!3830691) (not b!3830819) (not b!3830277) (not d!1136714) (not b!3830575) (not bm!281442) (not b!3830327) (not b!3830719) (not b!3830952) (not b!3831013) (not d!1136916) (not d!1137052) (not d!1136722) (not b!3830989) (not b!3830582) (not b!3829950) (not b_next!102301) (not b!3829953) (not d!1137182) (not b!3830242) (not d!1136862) (not b!3830752) (not b!3830933) (not b!3830190) (not b!3830214) (not b!3830248) (not b!3830488) (not b!3831000) (not b!3830996) (not b!3830778) (not d!1136678) (not b!3830725))
(check-sat (not b_next!102309) b_and!284751 b_and!284749 b_and!284771 b_and!284769 b_and!284759 (not b_next!102351) (not b_next!102353) (not b_next!102301) (not b_next!102321) (not b_next!102327) b_and!284745 (not b_next!102323) (not b_next!102349) (not b_next!102345) (not b_next!102347) (not b_next!102359) b_and!284757 b_and!284761 b_and!284767 b_and!284763 b_and!284773 (not b_next!102311) b_and!284755 b_and!284747 (not b_next!102303) (not b_next!102325) b_and!284753 b_and!284765 b_and!284743 (not b_next!102355) (not b_next!102357))
