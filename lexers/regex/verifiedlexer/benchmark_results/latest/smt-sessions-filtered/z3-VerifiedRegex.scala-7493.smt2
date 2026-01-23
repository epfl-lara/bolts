; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396410 () Bool)

(assert start!396410)

(declare-fun b!4160338 () Bool)

(declare-fun b_free!119703 () Bool)

(declare-fun b_next!120407 () Bool)

(assert (=> b!4160338 (= b_free!119703 (not b_next!120407))))

(declare-fun tp!1269477 () Bool)

(declare-fun b_and!324065 () Bool)

(assert (=> b!4160338 (= tp!1269477 b_and!324065)))

(declare-fun b_free!119705 () Bool)

(declare-fun b_next!120409 () Bool)

(assert (=> b!4160338 (= b_free!119705 (not b_next!120409))))

(declare-fun tp!1269480 () Bool)

(declare-fun b_and!324067 () Bool)

(assert (=> b!4160338 (= tp!1269480 b_and!324067)))

(declare-fun b!4160334 () Bool)

(declare-fun b_free!119707 () Bool)

(declare-fun b_next!120411 () Bool)

(assert (=> b!4160334 (= b_free!119707 (not b_next!120411))))

(declare-fun tp!1269481 () Bool)

(declare-fun b_and!324069 () Bool)

(assert (=> b!4160334 (= tp!1269481 b_and!324069)))

(declare-fun b_free!119709 () Bool)

(declare-fun b_next!120413 () Bool)

(assert (=> b!4160334 (= b_free!119709 (not b_next!120413))))

(declare-fun tp!1269478 () Bool)

(declare-fun b_and!324071 () Bool)

(assert (=> b!4160334 (= tp!1269478 b_and!324071)))

(declare-fun e!2582211 () Bool)

(declare-fun tp!1269479 () Bool)

(declare-fun b!4160331 () Bool)

(declare-fun e!2582205 () Bool)

(declare-datatypes ((List!45570 0))(
  ( (Nil!45446) (Cons!45446 (h!50866 (_ BitVec 16)) (t!343601 List!45570)) )
))
(declare-datatypes ((TokenValue!7734 0))(
  ( (FloatLiteralValue!15468 (text!54583 List!45570)) (TokenValueExt!7733 (__x!27687 Int)) (Broken!38670 (value!234408 List!45570)) (Object!7857) (End!7734) (Def!7734) (Underscore!7734) (Match!7734) (Else!7734) (Error!7734) (Case!7734) (If!7734) (Extends!7734) (Abstract!7734) (Class!7734) (Val!7734) (DelimiterValue!15468 (del!7794 List!45570)) (KeywordValue!7740 (value!234409 List!45570)) (CommentValue!15468 (value!234410 List!45570)) (WhitespaceValue!15468 (value!234411 List!45570)) (IndentationValue!7734 (value!234412 List!45570)) (String!52531) (Int32!7734) (Broken!38671 (value!234413 List!45570)) (Boolean!7735) (Unit!64580) (OperatorValue!7737 (op!7794 List!45570)) (IdentifierValue!15468 (value!234414 List!45570)) (IdentifierValue!15469 (value!234415 List!45570)) (WhitespaceValue!15469 (value!234416 List!45570)) (True!15468) (False!15468) (Broken!38672 (value!234417 List!45570)) (Broken!38673 (value!234418 List!45570)) (True!15469) (RightBrace!7734) (RightBracket!7734) (Colon!7734) (Null!7734) (Comma!7734) (LeftBracket!7734) (False!15469) (LeftBrace!7734) (ImaginaryLiteralValue!7734 (text!54584 List!45570)) (StringLiteralValue!23202 (value!234419 List!45570)) (EOFValue!7734 (value!234420 List!45570)) (IdentValue!7734 (value!234421 List!45570)) (DelimiterValue!15469 (value!234422 List!45570)) (DedentValue!7734 (value!234423 List!45570)) (NewLineValue!7734 (value!234424 List!45570)) (IntegerValue!23202 (value!234425 (_ BitVec 32)) (text!54585 List!45570)) (IntegerValue!23203 (value!234426 Int) (text!54586 List!45570)) (Times!7734) (Or!7734) (Equal!7734) (Minus!7734) (Broken!38674 (value!234427 List!45570)) (And!7734) (Div!7734) (LessEqual!7734) (Mod!7734) (Concat!20143) (Not!7734) (Plus!7734) (SpaceValue!7734 (value!234428 List!45570)) (IntegerValue!23204 (value!234429 Int) (text!54587 List!45570)) (StringLiteralValue!23203 (text!54588 List!45570)) (FloatLiteralValue!15469 (text!54589 List!45570)) (BytesLiteralValue!7734 (value!234430 List!45570)) (CommentValue!15469 (value!234431 List!45570)) (StringLiteralValue!23204 (value!234432 List!45570)) (ErrorTokenValue!7734 (msg!7795 List!45570)) )
))
(declare-datatypes ((C!25004 0))(
  ( (C!25005 (val!14664 Int)) )
))
(declare-datatypes ((Regex!12409 0))(
  ( (ElementMatch!12409 (c!711904 C!25004)) (Concat!20144 (regOne!25330 Regex!12409) (regTwo!25330 Regex!12409)) (EmptyExpr!12409) (Star!12409 (reg!12738 Regex!12409)) (EmptyLang!12409) (Union!12409 (regOne!25331 Regex!12409) (regTwo!25331 Regex!12409)) )
))
(declare-datatypes ((String!52532 0))(
  ( (String!52533 (value!234433 String)) )
))
(declare-datatypes ((List!45571 0))(
  ( (Nil!45447) (Cons!45447 (h!50867 C!25004) (t!343602 List!45571)) )
))
(declare-datatypes ((IArray!27435 0))(
  ( (IArray!27436 (innerList!13775 List!45571)) )
))
(declare-datatypes ((Conc!13715 0))(
  ( (Node!13715 (left!33916 Conc!13715) (right!34246 Conc!13715) (csize!27660 Int) (cheight!13926 Int)) (Leaf!21209 (xs!17021 IArray!27435) (csize!27661 Int)) (Empty!13715) )
))
(declare-datatypes ((BalanceConc!27024 0))(
  ( (BalanceConc!27025 (c!711905 Conc!13715)) )
))
(declare-datatypes ((TokenValueInjection!14896 0))(
  ( (TokenValueInjection!14897 (toValue!10168 Int) (toChars!10027 Int)) )
))
(declare-datatypes ((Rule!14808 0))(
  ( (Rule!14809 (regex!7504 Regex!12409) (tag!8368 String!52532) (isSeparator!7504 Bool) (transformation!7504 TokenValueInjection!14896)) )
))
(declare-datatypes ((List!45572 0))(
  ( (Nil!45448) (Cons!45448 (h!50868 Rule!14808) (t!343603 List!45572)) )
))
(declare-fun rules!4132 () List!45572)

(declare-fun inv!59986 (String!52532) Bool)

(declare-fun inv!59988 (TokenValueInjection!14896) Bool)

(assert (=> b!4160331 (= e!2582205 (and tp!1269479 (inv!59986 (tag!8368 (h!50868 rules!4132))) (inv!59988 (transformation!7504 (h!50868 rules!4132))) e!2582211))))

(declare-fun b!4160332 () Bool)

(declare-fun res!1704164 () Bool)

(declare-fun e!2582212 () Bool)

(assert (=> b!4160332 (=> (not res!1704164) (not e!2582212))))

(declare-datatypes ((List!45573 0))(
  ( (Nil!45449) (Cons!45449 (h!50869 String!52532) (t!343604 List!45573)) )
))
(declare-fun acc!617 () List!45573)

(declare-datatypes ((LexerInterface!7095 0))(
  ( (LexerInterfaceExt!7092 (__x!27688 Int)) (Lexer!7093) )
))
(declare-fun thiss!27036 () LexerInterface!7095)

(declare-fun noDuplicateTag!3081 (LexerInterface!7095 List!45572 List!45573) Bool)

(assert (=> b!4160332 (= res!1704164 (noDuplicateTag!3081 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4160333 () Bool)

(declare-fun res!1704161 () Bool)

(assert (=> b!4160333 (=> (not res!1704161) (not e!2582212))))

(declare-fun tag!272 () String!52532)

(declare-fun contains!9286 (List!45573 String!52532) Bool)

(assert (=> b!4160333 (= res!1704161 (contains!9286 acc!617 tag!272))))

(declare-fun e!2582207 () Bool)

(assert (=> b!4160334 (= e!2582207 (and tp!1269481 tp!1269478))))

(declare-fun b!4160335 () Bool)

(declare-fun res!1704162 () Bool)

(assert (=> b!4160335 (=> (not res!1704162) (not e!2582212))))

(declare-fun r!4395 () Rule!14808)

(declare-fun contains!9287 (List!45572 Rule!14808) Bool)

(assert (=> b!4160335 (= res!1704162 (contains!9287 rules!4132 r!4395))))

(declare-fun b!4160336 () Bool)

(declare-fun e!2582203 () Bool)

(declare-fun tp!1269484 () Bool)

(assert (=> b!4160336 (= e!2582203 (and e!2582205 tp!1269484))))

(declare-fun tp!1269483 () Bool)

(declare-fun e!2582204 () Bool)

(declare-fun b!4160337 () Bool)

(assert (=> b!4160337 (= e!2582204 (and tp!1269483 (inv!59986 (tag!8368 r!4395)) (inv!59988 (transformation!7504 r!4395)) e!2582207))))

(assert (=> b!4160338 (= e!2582211 (and tp!1269477 tp!1269480))))

(declare-fun b!4160339 () Bool)

(get-info :version)

(assert (=> b!4160339 (= e!2582212 (and (not ((_ is Nil!45448) rules!4132)) (= (h!50868 rules!4132) r!4395) (= (tag!8368 r!4395) tag!272)))))

(declare-fun res!1704163 () Bool)

(assert (=> start!396410 (=> (not res!1704163) (not e!2582212))))

(assert (=> start!396410 (= res!1704163 ((_ is Lexer!7093) thiss!27036))))

(assert (=> start!396410 e!2582212))

(declare-fun e!2582210 () Bool)

(assert (=> start!396410 e!2582210))

(assert (=> start!396410 e!2582204))

(assert (=> start!396410 true))

(assert (=> start!396410 (inv!59986 tag!272)))

(assert (=> start!396410 e!2582203))

(declare-fun b!4160340 () Bool)

(declare-fun tp!1269482 () Bool)

(assert (=> b!4160340 (= e!2582210 (and (inv!59986 (h!50869 acc!617)) tp!1269482))))

(assert (= (and start!396410 res!1704163) b!4160333))

(assert (= (and b!4160333 res!1704161) b!4160332))

(assert (= (and b!4160332 res!1704164) b!4160335))

(assert (= (and b!4160335 res!1704162) b!4160339))

(assert (= (and start!396410 ((_ is Cons!45449) acc!617)) b!4160340))

(assert (= b!4160337 b!4160334))

(assert (= start!396410 b!4160337))

(assert (= b!4160331 b!4160338))

(assert (= b!4160336 b!4160331))

(assert (= (and start!396410 ((_ is Cons!45448) rules!4132)) b!4160336))

(declare-fun m!4753695 () Bool)

(assert (=> b!4160333 m!4753695))

(declare-fun m!4753697 () Bool)

(assert (=> b!4160337 m!4753697))

(declare-fun m!4753699 () Bool)

(assert (=> b!4160337 m!4753699))

(declare-fun m!4753701 () Bool)

(assert (=> b!4160340 m!4753701))

(declare-fun m!4753703 () Bool)

(assert (=> b!4160332 m!4753703))

(declare-fun m!4753705 () Bool)

(assert (=> b!4160331 m!4753705))

(declare-fun m!4753707 () Bool)

(assert (=> b!4160331 m!4753707))

(declare-fun m!4753709 () Bool)

(assert (=> start!396410 m!4753709))

(declare-fun m!4753711 () Bool)

(assert (=> b!4160335 m!4753711))

(check-sat (not b!4160337) b_and!324069 (not b!4160331) b_and!324065 (not b!4160336) b_and!324071 (not b!4160333) (not b_next!120407) (not b_next!120411) (not b!4160340) (not b!4160335) (not b_next!120409) (not b_next!120413) (not start!396410) b_and!324067 (not b!4160332))
(check-sat b_and!324069 b_and!324065 b_and!324071 (not b_next!120407) (not b_next!120411) b_and!324067 (not b_next!120409) (not b_next!120413))
(get-model)

(declare-fun d!1230014 () Bool)

(assert (=> d!1230014 (= (inv!59986 tag!272) (= (mod (str.len (value!234433 tag!272)) 2) 0))))

(assert (=> start!396410 d!1230014))

(declare-fun d!1230016 () Bool)

(assert (=> d!1230016 (= (inv!59986 (tag!8368 r!4395)) (= (mod (str.len (value!234433 (tag!8368 r!4395))) 2) 0))))

(assert (=> b!4160337 d!1230016))

(declare-fun d!1230018 () Bool)

(declare-fun res!1704169 () Bool)

(declare-fun e!2582215 () Bool)

(assert (=> d!1230018 (=> (not res!1704169) (not e!2582215))))

(declare-fun semiInverseModEq!3256 (Int Int) Bool)

(assert (=> d!1230018 (= res!1704169 (semiInverseModEq!3256 (toChars!10027 (transformation!7504 r!4395)) (toValue!10168 (transformation!7504 r!4395))))))

(assert (=> d!1230018 (= (inv!59988 (transformation!7504 r!4395)) e!2582215)))

(declare-fun b!4160343 () Bool)

(declare-fun equivClasses!3155 (Int Int) Bool)

(assert (=> b!4160343 (= e!2582215 (equivClasses!3155 (toChars!10027 (transformation!7504 r!4395)) (toValue!10168 (transformation!7504 r!4395))))))

(assert (= (and d!1230018 res!1704169) b!4160343))

(declare-fun m!4753713 () Bool)

(assert (=> d!1230018 m!4753713))

(declare-fun m!4753715 () Bool)

(assert (=> b!4160343 m!4753715))

(assert (=> b!4160337 d!1230018))

(declare-fun d!1230020 () Bool)

(declare-fun res!1704174 () Bool)

(declare-fun e!2582220 () Bool)

(assert (=> d!1230020 (=> res!1704174 e!2582220)))

(assert (=> d!1230020 (= res!1704174 ((_ is Nil!45448) rules!4132))))

(assert (=> d!1230020 (= (noDuplicateTag!3081 thiss!27036 rules!4132 acc!617) e!2582220)))

(declare-fun b!4160348 () Bool)

(declare-fun e!2582221 () Bool)

(assert (=> b!4160348 (= e!2582220 e!2582221)))

(declare-fun res!1704175 () Bool)

(assert (=> b!4160348 (=> (not res!1704175) (not e!2582221))))

(assert (=> b!4160348 (= res!1704175 (not (contains!9286 acc!617 (tag!8368 (h!50868 rules!4132)))))))

(declare-fun b!4160349 () Bool)

(assert (=> b!4160349 (= e!2582221 (noDuplicateTag!3081 thiss!27036 (t!343603 rules!4132) (Cons!45449 (tag!8368 (h!50868 rules!4132)) acc!617)))))

(assert (= (and d!1230020 (not res!1704174)) b!4160348))

(assert (= (and b!4160348 res!1704175) b!4160349))

(declare-fun m!4753717 () Bool)

(assert (=> b!4160348 m!4753717))

(declare-fun m!4753719 () Bool)

(assert (=> b!4160349 m!4753719))

(assert (=> b!4160332 d!1230020))

(declare-fun d!1230022 () Bool)

(assert (=> d!1230022 (= (inv!59986 (tag!8368 (h!50868 rules!4132))) (= (mod (str.len (value!234433 (tag!8368 (h!50868 rules!4132)))) 2) 0))))

(assert (=> b!4160331 d!1230022))

(declare-fun d!1230024 () Bool)

(declare-fun res!1704176 () Bool)

(declare-fun e!2582222 () Bool)

(assert (=> d!1230024 (=> (not res!1704176) (not e!2582222))))

(assert (=> d!1230024 (= res!1704176 (semiInverseModEq!3256 (toChars!10027 (transformation!7504 (h!50868 rules!4132))) (toValue!10168 (transformation!7504 (h!50868 rules!4132)))))))

(assert (=> d!1230024 (= (inv!59988 (transformation!7504 (h!50868 rules!4132))) e!2582222)))

(declare-fun b!4160350 () Bool)

(assert (=> b!4160350 (= e!2582222 (equivClasses!3155 (toChars!10027 (transformation!7504 (h!50868 rules!4132))) (toValue!10168 (transformation!7504 (h!50868 rules!4132)))))))

(assert (= (and d!1230024 res!1704176) b!4160350))

(declare-fun m!4753721 () Bool)

(assert (=> d!1230024 m!4753721))

(declare-fun m!4753723 () Bool)

(assert (=> b!4160350 m!4753723))

(assert (=> b!4160331 d!1230024))

(declare-fun d!1230026 () Bool)

(assert (=> d!1230026 (= (inv!59986 (h!50869 acc!617)) (= (mod (str.len (value!234433 (h!50869 acc!617))) 2) 0))))

(assert (=> b!4160340 d!1230026))

(declare-fun d!1230028 () Bool)

(declare-fun lt!1482815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7059 (List!45572) (InoxSet Rule!14808))

(assert (=> d!1230028 (= lt!1482815 (select (content!7059 rules!4132) r!4395))))

(declare-fun e!2582228 () Bool)

(assert (=> d!1230028 (= lt!1482815 e!2582228)))

(declare-fun res!1704184 () Bool)

(assert (=> d!1230028 (=> (not res!1704184) (not e!2582228))))

(assert (=> d!1230028 (= res!1704184 ((_ is Cons!45448) rules!4132))))

(assert (=> d!1230028 (= (contains!9287 rules!4132 r!4395) lt!1482815)))

(declare-fun b!4160355 () Bool)

(declare-fun e!2582227 () Bool)

(assert (=> b!4160355 (= e!2582228 e!2582227)))

(declare-fun res!1704183 () Bool)

(assert (=> b!4160355 (=> res!1704183 e!2582227)))

(assert (=> b!4160355 (= res!1704183 (= (h!50868 rules!4132) r!4395))))

(declare-fun b!4160356 () Bool)

(assert (=> b!4160356 (= e!2582227 (contains!9287 (t!343603 rules!4132) r!4395))))

(assert (= (and d!1230028 res!1704184) b!4160355))

(assert (= (and b!4160355 (not res!1704183)) b!4160356))

(declare-fun m!4753725 () Bool)

(assert (=> d!1230028 m!4753725))

(declare-fun m!4753727 () Bool)

(assert (=> d!1230028 m!4753727))

(declare-fun m!4753729 () Bool)

(assert (=> b!4160356 m!4753729))

(assert (=> b!4160335 d!1230028))

(declare-fun d!1230030 () Bool)

(declare-fun lt!1482818 () Bool)

(declare-fun content!7060 (List!45573) (InoxSet String!52532))

(assert (=> d!1230030 (= lt!1482818 (select (content!7060 acc!617) tag!272))))

(declare-fun e!2582233 () Bool)

(assert (=> d!1230030 (= lt!1482818 e!2582233)))

(declare-fun res!1704189 () Bool)

(assert (=> d!1230030 (=> (not res!1704189) (not e!2582233))))

(assert (=> d!1230030 (= res!1704189 ((_ is Cons!45449) acc!617))))

(assert (=> d!1230030 (= (contains!9286 acc!617 tag!272) lt!1482818)))

(declare-fun b!4160361 () Bool)

(declare-fun e!2582234 () Bool)

(assert (=> b!4160361 (= e!2582233 e!2582234)))

(declare-fun res!1704190 () Bool)

(assert (=> b!4160361 (=> res!1704190 e!2582234)))

(assert (=> b!4160361 (= res!1704190 (= (h!50869 acc!617) tag!272))))

(declare-fun b!4160362 () Bool)

(assert (=> b!4160362 (= e!2582234 (contains!9286 (t!343604 acc!617) tag!272))))

(assert (= (and d!1230030 res!1704189) b!4160361))

(assert (= (and b!4160361 (not res!1704190)) b!4160362))

(declare-fun m!4753731 () Bool)

(assert (=> d!1230030 m!4753731))

(declare-fun m!4753733 () Bool)

(assert (=> d!1230030 m!4753733))

(declare-fun m!4753735 () Bool)

(assert (=> b!4160362 m!4753735))

(assert (=> b!4160333 d!1230030))

(declare-fun e!2582237 () Bool)

(assert (=> b!4160337 (= tp!1269483 e!2582237)))

(declare-fun b!4160375 () Bool)

(declare-fun tp!1269495 () Bool)

(assert (=> b!4160375 (= e!2582237 tp!1269495)))

(declare-fun b!4160374 () Bool)

(declare-fun tp!1269497 () Bool)

(declare-fun tp!1269499 () Bool)

(assert (=> b!4160374 (= e!2582237 (and tp!1269497 tp!1269499))))

(declare-fun b!4160376 () Bool)

(declare-fun tp!1269498 () Bool)

(declare-fun tp!1269496 () Bool)

(assert (=> b!4160376 (= e!2582237 (and tp!1269498 tp!1269496))))

(declare-fun b!4160373 () Bool)

(declare-fun tp_is_empty!21783 () Bool)

(assert (=> b!4160373 (= e!2582237 tp_is_empty!21783)))

(assert (= (and b!4160337 ((_ is ElementMatch!12409) (regex!7504 r!4395))) b!4160373))

(assert (= (and b!4160337 ((_ is Concat!20144) (regex!7504 r!4395))) b!4160374))

(assert (= (and b!4160337 ((_ is Star!12409) (regex!7504 r!4395))) b!4160375))

(assert (= (and b!4160337 ((_ is Union!12409) (regex!7504 r!4395))) b!4160376))

(declare-fun b!4160387 () Bool)

(declare-fun b_free!119711 () Bool)

(declare-fun b_next!120415 () Bool)

(assert (=> b!4160387 (= b_free!119711 (not b_next!120415))))

(declare-fun tp!1269508 () Bool)

(declare-fun b_and!324073 () Bool)

(assert (=> b!4160387 (= tp!1269508 b_and!324073)))

(declare-fun b_free!119713 () Bool)

(declare-fun b_next!120417 () Bool)

(assert (=> b!4160387 (= b_free!119713 (not b_next!120417))))

(declare-fun tp!1269511 () Bool)

(declare-fun b_and!324075 () Bool)

(assert (=> b!4160387 (= tp!1269511 b_and!324075)))

(declare-fun e!2582248 () Bool)

(assert (=> b!4160387 (= e!2582248 (and tp!1269508 tp!1269511))))

(declare-fun b!4160386 () Bool)

(declare-fun tp!1269509 () Bool)

(declare-fun e!2582247 () Bool)

(assert (=> b!4160386 (= e!2582247 (and tp!1269509 (inv!59986 (tag!8368 (h!50868 (t!343603 rules!4132)))) (inv!59988 (transformation!7504 (h!50868 (t!343603 rules!4132)))) e!2582248))))

(declare-fun b!4160385 () Bool)

(declare-fun e!2582246 () Bool)

(declare-fun tp!1269510 () Bool)

(assert (=> b!4160385 (= e!2582246 (and e!2582247 tp!1269510))))

(assert (=> b!4160336 (= tp!1269484 e!2582246)))

(assert (= b!4160386 b!4160387))

(assert (= b!4160385 b!4160386))

(assert (= (and b!4160336 ((_ is Cons!45448) (t!343603 rules!4132))) b!4160385))

(declare-fun m!4753737 () Bool)

(assert (=> b!4160386 m!4753737))

(declare-fun m!4753739 () Bool)

(assert (=> b!4160386 m!4753739))

(declare-fun e!2582250 () Bool)

(assert (=> b!4160331 (= tp!1269479 e!2582250)))

(declare-fun b!4160390 () Bool)

(declare-fun tp!1269512 () Bool)

(assert (=> b!4160390 (= e!2582250 tp!1269512)))

(declare-fun b!4160389 () Bool)

(declare-fun tp!1269514 () Bool)

(declare-fun tp!1269516 () Bool)

(assert (=> b!4160389 (= e!2582250 (and tp!1269514 tp!1269516))))

(declare-fun b!4160391 () Bool)

(declare-fun tp!1269515 () Bool)

(declare-fun tp!1269513 () Bool)

(assert (=> b!4160391 (= e!2582250 (and tp!1269515 tp!1269513))))

(declare-fun b!4160388 () Bool)

(assert (=> b!4160388 (= e!2582250 tp_is_empty!21783)))

(assert (= (and b!4160331 ((_ is ElementMatch!12409) (regex!7504 (h!50868 rules!4132)))) b!4160388))

(assert (= (and b!4160331 ((_ is Concat!20144) (regex!7504 (h!50868 rules!4132)))) b!4160389))

(assert (= (and b!4160331 ((_ is Star!12409) (regex!7504 (h!50868 rules!4132)))) b!4160390))

(assert (= (and b!4160331 ((_ is Union!12409) (regex!7504 (h!50868 rules!4132)))) b!4160391))

(declare-fun b!4160396 () Bool)

(declare-fun e!2582255 () Bool)

(declare-fun tp!1269519 () Bool)

(assert (=> b!4160396 (= e!2582255 (and (inv!59986 (h!50869 (t!343604 acc!617))) tp!1269519))))

(assert (=> b!4160340 (= tp!1269482 e!2582255)))

(assert (= (and b!4160340 ((_ is Cons!45449) (t!343604 acc!617))) b!4160396))

(declare-fun m!4753741 () Bool)

(assert (=> b!4160396 m!4753741))

(check-sat b_and!324069 (not d!1230030) (not d!1230028) (not b!4160362) (not b!4160349) (not b_next!120415) (not b_next!120417) (not b!4160386) b_and!324073 (not b!4160356) b_and!324071 (not b!4160350) (not b!4160391) (not b!4160396) tp_is_empty!21783 b_and!324075 (not b!4160376) (not b!4160389) (not d!1230024) (not b!4160390) b_and!324065 (not b_next!120409) (not b!4160348) (not b_next!120413) (not b!4160374) (not b_next!120407) (not b_next!120411) (not b!4160343) (not b!4160385) (not b!4160375) (not d!1230018) b_and!324067)
(check-sat b_and!324075 b_and!324069 b_and!324065 (not b_next!120415) (not b_next!120417) b_and!324073 b_and!324071 (not b_next!120407) (not b_next!120411) b_and!324067 (not b_next!120409) (not b_next!120413))
