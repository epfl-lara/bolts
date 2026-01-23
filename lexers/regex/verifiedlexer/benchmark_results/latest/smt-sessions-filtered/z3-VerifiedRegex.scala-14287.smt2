; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746396 () Bool)

(assert start!746396)

(declare-fun b!7908693 () Bool)

(declare-fun b_free!135091 () Bool)

(declare-fun b_next!135881 () Bool)

(assert (=> b!7908693 (= b_free!135091 (not b_next!135881))))

(declare-fun tp!2355966 () Bool)

(declare-fun b_and!353311 () Bool)

(assert (=> b!7908693 (= tp!2355966 b_and!353311)))

(declare-fun b_free!135093 () Bool)

(declare-fun b_next!135883 () Bool)

(assert (=> b!7908693 (= b_free!135093 (not b_next!135883))))

(declare-fun tp!2355972 () Bool)

(declare-fun b_and!353313 () Bool)

(assert (=> b!7908693 (= tp!2355972 b_and!353313)))

(declare-fun b!7908702 () Bool)

(declare-fun b_free!135095 () Bool)

(declare-fun b_next!135885 () Bool)

(assert (=> b!7908702 (= b_free!135095 (not b_next!135885))))

(declare-fun tp!2355970 () Bool)

(declare-fun b_and!353315 () Bool)

(assert (=> b!7908702 (= tp!2355970 b_and!353315)))

(declare-fun b_free!135097 () Bool)

(declare-fun b_next!135887 () Bool)

(assert (=> b!7908702 (= b_free!135097 (not b_next!135887))))

(declare-fun tp!2355964 () Bool)

(declare-fun b_and!353317 () Bool)

(assert (=> b!7908702 (= tp!2355964 b_and!353317)))

(declare-fun b!7908692 () Bool)

(declare-fun res!3138882 () Bool)

(declare-fun e!4668455 () Bool)

(assert (=> b!7908692 (=> (not res!3138882) (not e!4668455))))

(declare-datatypes ((List!74440 0))(
  ( (Nil!74316) (Cons!74316 (h!80764 (_ BitVec 16)) (t!389757 List!74440)) )
))
(declare-datatypes ((TokenValue!8956 0))(
  ( (FloatLiteralValue!17912 (text!63137 List!74440)) (TokenValueExt!8955 (__x!35199 Int)) (Broken!44780 (value!288195 List!74440)) (Object!9079) (End!8956) (Def!8956) (Underscore!8956) (Match!8956) (Else!8956) (Error!8956) (Case!8956) (If!8956) (Extends!8956) (Abstract!8956) (Class!8956) (Val!8956) (DelimiterValue!17912 (del!9016 List!74440)) (KeywordValue!8962 (value!288196 List!74440)) (CommentValue!17912 (value!288197 List!74440)) (WhitespaceValue!17912 (value!288198 List!74440)) (IndentationValue!8956 (value!288199 List!74440)) (String!83201) (Int32!8956) (Broken!44781 (value!288200 List!74440)) (Boolean!8957) (Unit!169358) (OperatorValue!8959 (op!9016 List!74440)) (IdentifierValue!17912 (value!288201 List!74440)) (IdentifierValue!17913 (value!288202 List!74440)) (WhitespaceValue!17913 (value!288203 List!74440)) (True!17912) (False!17912) (Broken!44782 (value!288204 List!74440)) (Broken!44783 (value!288205 List!74440)) (True!17913) (RightBrace!8956) (RightBracket!8956) (Colon!8956) (Null!8956) (Comma!8956) (LeftBracket!8956) (False!17913) (LeftBrace!8956) (ImaginaryLiteralValue!8956 (text!63138 List!74440)) (StringLiteralValue!26868 (value!288206 List!74440)) (EOFValue!8956 (value!288207 List!74440)) (IdentValue!8956 (value!288208 List!74440)) (DelimiterValue!17913 (value!288209 List!74440)) (DedentValue!8956 (value!288210 List!74440)) (NewLineValue!8956 (value!288211 List!74440)) (IntegerValue!26868 (value!288212 (_ BitVec 32)) (text!63139 List!74440)) (IntegerValue!26869 (value!288213 Int) (text!63140 List!74440)) (Times!8956) (Or!8956) (Equal!8956) (Minus!8956) (Broken!44784 (value!288214 List!74440)) (And!8956) (Div!8956) (LessEqual!8956) (Mod!8956) (Concat!30299) (Not!8956) (Plus!8956) (SpaceValue!8956 (value!288215 List!74440)) (IntegerValue!26870 (value!288216 Int) (text!63141 List!74440)) (StringLiteralValue!26869 (text!63142 List!74440)) (FloatLiteralValue!17913 (text!63143 List!74440)) (BytesLiteralValue!8956 (value!288217 List!74440)) (CommentValue!17913 (value!288218 List!74440)) (StringLiteralValue!26870 (value!288219 List!74440)) (ErrorTokenValue!8956 (msg!9017 List!74440)) )
))
(declare-datatypes ((C!43016 0))(
  ( (C!43017 (val!31972 Int)) )
))
(declare-datatypes ((List!74441 0))(
  ( (Nil!74317) (Cons!74317 (h!80765 C!43016) (t!389758 List!74441)) )
))
(declare-datatypes ((IArray!31689 0))(
  ( (IArray!31690 (innerList!15902 List!74441)) )
))
(declare-datatypes ((Conc!15814 0))(
  ( (Node!15814 (left!56693 Conc!15814) (right!57023 Conc!15814) (csize!31858 Int) (cheight!16025 Int)) (Leaf!30102 (xs!19196 IArray!31689) (csize!31859 Int)) (Empty!15814) )
))
(declare-datatypes ((BalanceConc!30746 0))(
  ( (BalanceConc!30747 (c!1450985 Conc!15814)) )
))
(declare-datatypes ((Regex!21343 0))(
  ( (ElementMatch!21343 (c!1450986 C!43016)) (Concat!30300 (regOne!43198 Regex!21343) (regTwo!43198 Regex!21343)) (EmptyExpr!21343) (Star!21343 (reg!21672 Regex!21343)) (EmptyLang!21343) (Union!21343 (regOne!43199 Regex!21343) (regTwo!43199 Regex!21343)) )
))
(declare-datatypes ((String!83202 0))(
  ( (String!83203 (value!288220 String)) )
))
(declare-datatypes ((TokenValueInjection!17220 0))(
  ( (TokenValueInjection!17221 (toValue!11697 Int) (toChars!11556 Int)) )
))
(declare-datatypes ((Rule!17080 0))(
  ( (Rule!17081 (regex!8640 Regex!21343) (tag!9504 String!83202) (isSeparator!8640 Bool) (transformation!8640 TokenValueInjection!17220)) )
))
(declare-datatypes ((Token!15700 0))(
  ( (Token!15701 (value!288221 TokenValue!8956) (rule!11944 Rule!17080) (size!43091 Int) (originalCharacters!8881 List!74441)) )
))
(declare-datatypes ((tuple2!70336 0))(
  ( (tuple2!70337 (_1!38471 Token!15700) (_2!38471 List!74441)) )
))
(declare-fun lt!2685898 () tuple2!70336)

(declare-fun lt!2685897 () List!74441)

(declare-fun input!1184 () List!74441)

(declare-fun ++!18194 (List!74441 List!74441) List!74441)

(assert (=> b!7908692 (= res!3138882 (= (++!18194 lt!2685897 (_2!38471 lt!2685898)) input!1184))))

(declare-fun e!4668446 () Bool)

(assert (=> b!7908693 (= e!4668446 (and tp!2355966 tp!2355972))))

(declare-fun b!7908694 () Bool)

(declare-fun res!3138876 () Bool)

(assert (=> b!7908694 (=> (not res!3138876) (not e!4668455))))

(declare-fun size!43092 (List!74441) Int)

(assert (=> b!7908694 (= res!3138876 (< (size!43092 (_2!38471 lt!2685898)) (size!43092 input!1184)))))

(declare-fun b!7908695 () Bool)

(declare-fun res!3138880 () Bool)

(assert (=> b!7908695 (=> (not res!3138880) (not e!4668455))))

(declare-fun matchR!10670 (Regex!21343 List!74441) Bool)

(assert (=> b!7908695 (= res!3138880 (matchR!10670 (regex!8640 (rule!11944 (_1!38471 lt!2685898))) lt!2685897))))

(declare-fun b!7908696 () Bool)

(declare-fun res!3138873 () Bool)

(declare-fun e!4668445 () Bool)

(assert (=> b!7908696 (=> (not res!3138873) (not e!4668445))))

(declare-datatypes ((LexerInterface!8232 0))(
  ( (LexerInterfaceExt!8229 (__x!35200 Int)) (Lexer!8230) )
))
(declare-fun thiss!14377 () LexerInterface!8232)

(declare-datatypes ((List!74442 0))(
  ( (Nil!74318) (Cons!74318 (h!80766 Rule!17080) (t!389759 List!74442)) )
))
(declare-fun rulesArg!141 () List!74442)

(declare-fun rulesValidInductive!3451 (LexerInterface!8232 List!74442) Bool)

(assert (=> b!7908696 (= res!3138873 (rulesValidInductive!3451 thiss!14377 rulesArg!141))))

(declare-fun b!7908697 () Bool)

(declare-fun e!4668442 () Bool)

(assert (=> b!7908697 (= e!4668445 (not e!4668442))))

(declare-fun res!3138877 () Bool)

(assert (=> b!7908697 (=> res!3138877 e!4668442)))

(get-info :version)

(assert (=> b!7908697 (= res!3138877 (or (and ((_ is Cons!74318) rulesArg!141) ((_ is Nil!74318) (t!389759 rulesArg!141))) ((_ is Cons!74318) rulesArg!141)))))

(declare-fun isPrefix!6473 (List!74441 List!74441) Bool)

(assert (=> b!7908697 (isPrefix!6473 input!1184 input!1184)))

(declare-datatypes ((Unit!169359 0))(
  ( (Unit!169360) )
))
(declare-fun lt!2685900 () Unit!169359)

(declare-fun lemmaIsPrefixRefl!3984 (List!74441 List!74441) Unit!169359)

(assert (=> b!7908697 (= lt!2685900 (lemmaIsPrefixRefl!3984 input!1184 input!1184))))

(declare-datatypes ((Option!17922 0))(
  ( (None!17921) (Some!17921 (v!55076 tuple2!70336)) )
))
(declare-fun err!4697 () Option!17922)

(declare-fun b!7908698 () Bool)

(declare-fun tp!2355971 () Bool)

(declare-fun e!4668453 () Bool)

(declare-fun e!4668441 () Bool)

(declare-fun inv!21 (TokenValue!8956) Bool)

(assert (=> b!7908698 (= e!4668441 (and (inv!21 (value!288221 (_1!38471 (v!55076 err!4697)))) e!4668453 tp!2355971))))

(declare-fun res!3138874 () Bool)

(assert (=> start!746396 (=> (not res!3138874) (not e!4668445))))

(assert (=> start!746396 (= res!3138874 ((_ is Lexer!8230) thiss!14377))))

(assert (=> start!746396 e!4668445))

(assert (=> start!746396 true))

(declare-fun e!4668448 () Bool)

(assert (=> start!746396 e!4668448))

(declare-fun e!4668449 () Bool)

(assert (=> start!746396 e!4668449))

(declare-fun b!7908699 () Bool)

(declare-fun e!4668452 () Bool)

(declare-fun tp!2355965 () Bool)

(assert (=> b!7908699 (= e!4668448 (and e!4668452 tp!2355965))))

(declare-fun tp!2355963 () Bool)

(declare-fun e!4668454 () Bool)

(declare-fun b!7908700 () Bool)

(declare-fun inv!95339 (Token!15700) Bool)

(assert (=> b!7908700 (= e!4668454 (and (inv!95339 (_1!38471 (v!55076 err!4697))) e!4668441 tp!2355963))))

(declare-fun b!7908701 () Bool)

(declare-fun e!4668444 () Bool)

(assert (=> b!7908701 (= e!4668444 e!4668455)))

(declare-fun res!3138878 () Bool)

(assert (=> b!7908701 (=> (not res!3138878) (not e!4668455))))

(assert (=> b!7908701 (= res!3138878 (= lt!2685897 (originalCharacters!8881 (_1!38471 lt!2685898))))))

(declare-fun list!19286 (BalanceConc!30746) List!74441)

(declare-fun charsOf!5584 (Token!15700) BalanceConc!30746)

(assert (=> b!7908701 (= lt!2685897 (list!19286 (charsOf!5584 (_1!38471 lt!2685898))))))

(declare-fun lt!2685899 () Option!17922)

(declare-fun get!26714 (Option!17922) tuple2!70336)

(assert (=> b!7908701 (= lt!2685898 (get!26714 lt!2685899))))

(declare-fun e!4668456 () Bool)

(assert (=> b!7908702 (= e!4668456 (and tp!2355970 tp!2355964))))

(declare-fun b!7908703 () Bool)

(declare-fun tp!2355969 () Bool)

(declare-fun inv!95336 (String!83202) Bool)

(declare-fun inv!95340 (TokenValueInjection!17220) Bool)

(assert (=> b!7908703 (= e!4668452 (and tp!2355969 (inv!95336 (tag!9504 (h!80766 rulesArg!141))) (inv!95340 (transformation!8640 (h!80766 rulesArg!141))) e!4668456))))

(declare-fun b!7908704 () Bool)

(declare-fun contains!20904 (List!74442 Rule!17080) Bool)

(assert (=> b!7908704 (= e!4668455 (contains!20904 rulesArg!141 (rule!11944 (_1!38471 lt!2685898))))))

(declare-fun tp!2355968 () Bool)

(declare-fun b!7908705 () Bool)

(assert (=> b!7908705 (= e!4668453 (and tp!2355968 (inv!95336 (tag!9504 (rule!11944 (_1!38471 (v!55076 err!4697))))) (inv!95340 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) e!4668446))))

(declare-fun b!7908706 () Bool)

(declare-fun res!3138872 () Bool)

(assert (=> b!7908706 (=> (not res!3138872) (not e!4668445))))

(declare-fun isEmpty!42664 (List!74442) Bool)

(assert (=> b!7908706 (= res!3138872 (not (isEmpty!42664 rulesArg!141)))))

(declare-fun b!7908707 () Bool)

(declare-fun tp_is_empty!53061 () Bool)

(declare-fun tp!2355967 () Bool)

(assert (=> b!7908707 (= e!4668449 (and tp_is_empty!53061 tp!2355967))))

(declare-fun b!7908708 () Bool)

(declare-fun e!4668450 () Bool)

(assert (=> b!7908708 (= e!4668450 e!4668444)))

(declare-fun res!3138879 () Bool)

(assert (=> b!7908708 (=> (not res!3138879) (not e!4668444))))

(declare-fun isDefined!14494 (Option!17922) Bool)

(assert (=> b!7908708 (= res!3138879 (isDefined!14494 lt!2685899))))

(declare-fun b!7908709 () Bool)

(assert (=> b!7908709 (= e!4668442 e!4668450)))

(declare-fun res!3138875 () Bool)

(assert (=> b!7908709 (=> res!3138875 e!4668450)))

(declare-fun isEmpty!42665 (Option!17922) Bool)

(assert (=> b!7908709 (= res!3138875 (isEmpty!42665 lt!2685899))))

(assert (=> b!7908709 (= lt!2685899 err!4697)))

(assert (=> b!7908709 true))

(assert (=> b!7908709 e!4668454))

(declare-fun b!7908710 () Bool)

(declare-fun res!3138881 () Bool)

(assert (=> b!7908710 (=> (not res!3138881) (not e!4668455))))

(declare-fun apply!14363 (TokenValueInjection!17220 BalanceConc!30746) TokenValue!8956)

(declare-fun seqFromList!6181 (List!74441) BalanceConc!30746)

(assert (=> b!7908710 (= res!3138881 (= (value!288221 (_1!38471 lt!2685898)) (apply!14363 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))) (seqFromList!6181 (originalCharacters!8881 (_1!38471 lt!2685898))))))))

(assert (= (and start!746396 res!3138874) b!7908696))

(assert (= (and b!7908696 res!3138873) b!7908706))

(assert (= (and b!7908706 res!3138872) b!7908697))

(assert (= (and b!7908697 (not res!3138877)) b!7908709))

(assert (= b!7908705 b!7908693))

(assert (= b!7908698 b!7908705))

(assert (= b!7908700 b!7908698))

(assert (= (and b!7908709 ((_ is Some!17921) err!4697)) b!7908700))

(assert (= (and b!7908709 (not res!3138875)) b!7908708))

(assert (= (and b!7908708 res!3138879) b!7908701))

(assert (= (and b!7908701 res!3138878) b!7908694))

(assert (= (and b!7908694 res!3138876) b!7908692))

(assert (= (and b!7908692 res!3138882) b!7908710))

(assert (= (and b!7908710 res!3138881) b!7908695))

(assert (= (and b!7908695 res!3138880) b!7908704))

(assert (= b!7908703 b!7908702))

(assert (= b!7908699 b!7908703))

(assert (= (and start!746396 ((_ is Cons!74318) rulesArg!141)) b!7908699))

(assert (= (and start!746396 ((_ is Cons!74317) input!1184)) b!7908707))

(declare-fun m!8282496 () Bool)

(assert (=> b!7908694 m!8282496))

(declare-fun m!8282498 () Bool)

(assert (=> b!7908694 m!8282498))

(declare-fun m!8282500 () Bool)

(assert (=> b!7908698 m!8282500))

(declare-fun m!8282502 () Bool)

(assert (=> b!7908701 m!8282502))

(assert (=> b!7908701 m!8282502))

(declare-fun m!8282504 () Bool)

(assert (=> b!7908701 m!8282504))

(declare-fun m!8282506 () Bool)

(assert (=> b!7908701 m!8282506))

(declare-fun m!8282508 () Bool)

(assert (=> b!7908704 m!8282508))

(declare-fun m!8282510 () Bool)

(assert (=> b!7908695 m!8282510))

(declare-fun m!8282512 () Bool)

(assert (=> b!7908705 m!8282512))

(declare-fun m!8282514 () Bool)

(assert (=> b!7908705 m!8282514))

(declare-fun m!8282516 () Bool)

(assert (=> b!7908700 m!8282516))

(declare-fun m!8282518 () Bool)

(assert (=> b!7908706 m!8282518))

(declare-fun m!8282520 () Bool)

(assert (=> b!7908709 m!8282520))

(declare-fun m!8282522 () Bool)

(assert (=> b!7908710 m!8282522))

(assert (=> b!7908710 m!8282522))

(declare-fun m!8282524 () Bool)

(assert (=> b!7908710 m!8282524))

(declare-fun m!8282526 () Bool)

(assert (=> b!7908697 m!8282526))

(declare-fun m!8282528 () Bool)

(assert (=> b!7908697 m!8282528))

(declare-fun m!8282530 () Bool)

(assert (=> b!7908708 m!8282530))

(declare-fun m!8282532 () Bool)

(assert (=> b!7908696 m!8282532))

(declare-fun m!8282534 () Bool)

(assert (=> b!7908692 m!8282534))

(declare-fun m!8282536 () Bool)

(assert (=> b!7908703 m!8282536))

(declare-fun m!8282538 () Bool)

(assert (=> b!7908703 m!8282538))

(check-sat (not b_next!135887) (not b!7908704) b_and!353313 (not b!7908708) (not b!7908698) (not b!7908705) (not b!7908695) (not b!7908710) (not b!7908699) tp_is_empty!53061 (not b!7908709) (not b!7908697) (not b!7908707) (not b!7908706) (not b!7908700) b_and!353317 b_and!353311 (not b_next!135883) (not b!7908692) (not b_next!135881) (not b!7908701) b_and!353315 (not b_next!135885) (not b!7908696) (not b!7908703) (not b!7908694))
(check-sat (not b_next!135887) b_and!353313 (not b_next!135881) b_and!353315 (not b_next!135885) b_and!353317 b_and!353311 (not b_next!135883))
(get-model)

(declare-fun d!2359782 () Bool)

(assert (=> d!2359782 (= (inv!95336 (tag!9504 (h!80766 rulesArg!141))) (= (mod (str.len (value!288220 (tag!9504 (h!80766 rulesArg!141)))) 2) 0))))

(assert (=> b!7908703 d!2359782))

(declare-fun d!2359784 () Bool)

(declare-fun res!3138892 () Bool)

(declare-fun e!4668468 () Bool)

(assert (=> d!2359784 (=> (not res!3138892) (not e!4668468))))

(declare-fun semiInverseModEq!3831 (Int Int) Bool)

(assert (=> d!2359784 (= res!3138892 (semiInverseModEq!3831 (toChars!11556 (transformation!8640 (h!80766 rulesArg!141))) (toValue!11697 (transformation!8640 (h!80766 rulesArg!141)))))))

(assert (=> d!2359784 (= (inv!95340 (transformation!8640 (h!80766 rulesArg!141))) e!4668468)))

(declare-fun b!7908728 () Bool)

(declare-fun equivClasses!3646 (Int Int) Bool)

(assert (=> b!7908728 (= e!4668468 (equivClasses!3646 (toChars!11556 (transformation!8640 (h!80766 rulesArg!141))) (toValue!11697 (transformation!8640 (h!80766 rulesArg!141)))))))

(assert (= (and d!2359784 res!3138892) b!7908728))

(declare-fun m!8282548 () Bool)

(assert (=> d!2359784 m!8282548))

(declare-fun m!8282550 () Bool)

(assert (=> b!7908728 m!8282550))

(assert (=> b!7908703 d!2359784))

(declare-fun b!7908749 () Bool)

(declare-fun e!4668483 () List!74441)

(assert (=> b!7908749 (= e!4668483 (Cons!74317 (h!80765 lt!2685897) (++!18194 (t!389758 lt!2685897) (_2!38471 lt!2685898))))))

(declare-fun b!7908748 () Bool)

(assert (=> b!7908748 (= e!4668483 (_2!38471 lt!2685898))))

(declare-fun b!7908750 () Bool)

(declare-fun res!3138904 () Bool)

(declare-fun e!4668482 () Bool)

(assert (=> b!7908750 (=> (not res!3138904) (not e!4668482))))

(declare-fun lt!2685909 () List!74441)

(assert (=> b!7908750 (= res!3138904 (= (size!43092 lt!2685909) (+ (size!43092 lt!2685897) (size!43092 (_2!38471 lt!2685898)))))))

(declare-fun b!7908751 () Bool)

(assert (=> b!7908751 (= e!4668482 (or (not (= (_2!38471 lt!2685898) Nil!74317)) (= lt!2685909 lt!2685897)))))

(declare-fun d!2359790 () Bool)

(assert (=> d!2359790 e!4668482))

(declare-fun res!3138903 () Bool)

(assert (=> d!2359790 (=> (not res!3138903) (not e!4668482))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15744 (List!74441) (InoxSet C!43016))

(assert (=> d!2359790 (= res!3138903 (= (content!15744 lt!2685909) ((_ map or) (content!15744 lt!2685897) (content!15744 (_2!38471 lt!2685898)))))))

(assert (=> d!2359790 (= lt!2685909 e!4668483)))

(declare-fun c!1450995 () Bool)

(assert (=> d!2359790 (= c!1450995 ((_ is Nil!74317) lt!2685897))))

(assert (=> d!2359790 (= (++!18194 lt!2685897 (_2!38471 lt!2685898)) lt!2685909)))

(assert (= (and d!2359790 c!1450995) b!7908748))

(assert (= (and d!2359790 (not c!1450995)) b!7908749))

(assert (= (and d!2359790 res!3138903) b!7908750))

(assert (= (and b!7908750 res!3138904) b!7908751))

(declare-fun m!8282566 () Bool)

(assert (=> b!7908749 m!8282566))

(declare-fun m!8282568 () Bool)

(assert (=> b!7908750 m!8282568))

(declare-fun m!8282570 () Bool)

(assert (=> b!7908750 m!8282570))

(assert (=> b!7908750 m!8282496))

(declare-fun m!8282572 () Bool)

(assert (=> d!2359790 m!8282572))

(declare-fun m!8282574 () Bool)

(assert (=> d!2359790 m!8282574))

(declare-fun m!8282576 () Bool)

(assert (=> d!2359790 m!8282576))

(assert (=> b!7908692 d!2359790))

(declare-fun d!2359798 () Bool)

(declare-fun lt!2685914 () Int)

(assert (=> d!2359798 (>= lt!2685914 0)))

(declare-fun e!4668488 () Int)

(assert (=> d!2359798 (= lt!2685914 e!4668488)))

(declare-fun c!1451000 () Bool)

(assert (=> d!2359798 (= c!1451000 ((_ is Nil!74317) (_2!38471 lt!2685898)))))

(assert (=> d!2359798 (= (size!43092 (_2!38471 lt!2685898)) lt!2685914)))

(declare-fun b!7908760 () Bool)

(assert (=> b!7908760 (= e!4668488 0)))

(declare-fun b!7908761 () Bool)

(assert (=> b!7908761 (= e!4668488 (+ 1 (size!43092 (t!389758 (_2!38471 lt!2685898)))))))

(assert (= (and d!2359798 c!1451000) b!7908760))

(assert (= (and d!2359798 (not c!1451000)) b!7908761))

(declare-fun m!8282578 () Bool)

(assert (=> b!7908761 m!8282578))

(assert (=> b!7908694 d!2359798))

(declare-fun d!2359800 () Bool)

(declare-fun lt!2685915 () Int)

(assert (=> d!2359800 (>= lt!2685915 0)))

(declare-fun e!4668491 () Int)

(assert (=> d!2359800 (= lt!2685915 e!4668491)))

(declare-fun c!1451001 () Bool)

(assert (=> d!2359800 (= c!1451001 ((_ is Nil!74317) input!1184))))

(assert (=> d!2359800 (= (size!43092 input!1184) lt!2685915)))

(declare-fun b!7908766 () Bool)

(assert (=> b!7908766 (= e!4668491 0)))

(declare-fun b!7908767 () Bool)

(assert (=> b!7908767 (= e!4668491 (+ 1 (size!43092 (t!389758 input!1184))))))

(assert (= (and d!2359800 c!1451001) b!7908766))

(assert (= (and d!2359800 (not c!1451001)) b!7908767))

(declare-fun m!8282580 () Bool)

(assert (=> b!7908767 m!8282580))

(assert (=> b!7908694 d!2359800))

(declare-fun d!2359802 () Bool)

(declare-fun lt!2685919 () Bool)

(declare-fun content!15745 (List!74442) (InoxSet Rule!17080))

(assert (=> d!2359802 (= lt!2685919 (select (content!15745 rulesArg!141) (rule!11944 (_1!38471 lt!2685898))))))

(declare-fun e!4668499 () Bool)

(assert (=> d!2359802 (= lt!2685919 e!4668499)))

(declare-fun res!3138915 () Bool)

(assert (=> d!2359802 (=> (not res!3138915) (not e!4668499))))

(assert (=> d!2359802 (= res!3138915 ((_ is Cons!74318) rulesArg!141))))

(assert (=> d!2359802 (= (contains!20904 rulesArg!141 (rule!11944 (_1!38471 lt!2685898))) lt!2685919)))

(declare-fun b!7908776 () Bool)

(declare-fun e!4668498 () Bool)

(assert (=> b!7908776 (= e!4668499 e!4668498)))

(declare-fun res!3138916 () Bool)

(assert (=> b!7908776 (=> res!3138916 e!4668498)))

(assert (=> b!7908776 (= res!3138916 (= (h!80766 rulesArg!141) (rule!11944 (_1!38471 lt!2685898))))))

(declare-fun b!7908777 () Bool)

(assert (=> b!7908777 (= e!4668498 (contains!20904 (t!389759 rulesArg!141) (rule!11944 (_1!38471 lt!2685898))))))

(assert (= (and d!2359802 res!3138915) b!7908776))

(assert (= (and b!7908776 (not res!3138916)) b!7908777))

(declare-fun m!8282594 () Bool)

(assert (=> d!2359802 m!8282594))

(declare-fun m!8282596 () Bool)

(assert (=> d!2359802 m!8282596))

(declare-fun m!8282598 () Bool)

(assert (=> b!7908777 m!8282598))

(assert (=> b!7908704 d!2359802))

(declare-fun d!2359810 () Bool)

(assert (=> d!2359810 (= (isEmpty!42664 rulesArg!141) ((_ is Nil!74318) rulesArg!141))))

(assert (=> b!7908706 d!2359810))

(declare-fun b!7908845 () Bool)

(declare-fun e!4668541 () Bool)

(declare-fun lt!2685924 () Bool)

(assert (=> b!7908845 (= e!4668541 (not lt!2685924))))

(declare-fun b!7908846 () Bool)

(declare-fun e!4668540 () Bool)

(declare-fun call!733503 () Bool)

(assert (=> b!7908846 (= e!4668540 (= lt!2685924 call!733503))))

(declare-fun b!7908847 () Bool)

(declare-fun e!4668537 () Bool)

(declare-fun head!16163 (List!74441) C!43016)

(assert (=> b!7908847 (= e!4668537 (not (= (head!16163 lt!2685897) (c!1450986 (regex!8640 (rule!11944 (_1!38471 lt!2685898)))))))))

(declare-fun b!7908848 () Bool)

(declare-fun e!4668536 () Bool)

(assert (=> b!7908848 (= e!4668536 (= (head!16163 lt!2685897) (c!1450986 (regex!8640 (rule!11944 (_1!38471 lt!2685898))))))))

(declare-fun b!7908849 () Bool)

(declare-fun res!3138961 () Bool)

(assert (=> b!7908849 (=> (not res!3138961) (not e!4668536))))

(assert (=> b!7908849 (= res!3138961 (not call!733503))))

(declare-fun b!7908850 () Bool)

(declare-fun res!3138966 () Bool)

(assert (=> b!7908850 (=> (not res!3138966) (not e!4668536))))

(declare-fun isEmpty!42667 (List!74441) Bool)

(declare-fun tail!15706 (List!74441) List!74441)

(assert (=> b!7908850 (= res!3138966 (isEmpty!42667 (tail!15706 lt!2685897)))))

(declare-fun b!7908851 () Bool)

(declare-fun e!4668542 () Bool)

(declare-fun e!4668539 () Bool)

(assert (=> b!7908851 (= e!4668542 e!4668539)))

(declare-fun res!3138960 () Bool)

(assert (=> b!7908851 (=> (not res!3138960) (not e!4668539))))

(assert (=> b!7908851 (= res!3138960 (not lt!2685924))))

(declare-fun b!7908852 () Bool)

(declare-fun res!3138965 () Bool)

(assert (=> b!7908852 (=> res!3138965 e!4668542)))

(assert (=> b!7908852 (= res!3138965 e!4668536)))

(declare-fun res!3138964 () Bool)

(assert (=> b!7908852 (=> (not res!3138964) (not e!4668536))))

(assert (=> b!7908852 (= res!3138964 lt!2685924)))

(declare-fun b!7908853 () Bool)

(assert (=> b!7908853 (= e!4668540 e!4668541)))

(declare-fun c!1451015 () Bool)

(assert (=> b!7908853 (= c!1451015 ((_ is EmptyLang!21343) (regex!8640 (rule!11944 (_1!38471 lt!2685898)))))))

(declare-fun bm!733498 () Bool)

(assert (=> bm!733498 (= call!733503 (isEmpty!42667 lt!2685897))))

(declare-fun d!2359812 () Bool)

(assert (=> d!2359812 e!4668540))

(declare-fun c!1451016 () Bool)

(assert (=> d!2359812 (= c!1451016 ((_ is EmptyExpr!21343) (regex!8640 (rule!11944 (_1!38471 lt!2685898)))))))

(declare-fun e!4668538 () Bool)

(assert (=> d!2359812 (= lt!2685924 e!4668538)))

(declare-fun c!1451017 () Bool)

(assert (=> d!2359812 (= c!1451017 (isEmpty!42667 lt!2685897))))

(declare-fun validRegex!11663 (Regex!21343) Bool)

(assert (=> d!2359812 (validRegex!11663 (regex!8640 (rule!11944 (_1!38471 lt!2685898))))))

(assert (=> d!2359812 (= (matchR!10670 (regex!8640 (rule!11944 (_1!38471 lt!2685898))) lt!2685897) lt!2685924)))

(declare-fun b!7908854 () Bool)

(declare-fun derivativeStep!6442 (Regex!21343 C!43016) Regex!21343)

(assert (=> b!7908854 (= e!4668538 (matchR!10670 (derivativeStep!6442 (regex!8640 (rule!11944 (_1!38471 lt!2685898))) (head!16163 lt!2685897)) (tail!15706 lt!2685897)))))

(declare-fun b!7908855 () Bool)

(declare-fun res!3138959 () Bool)

(assert (=> b!7908855 (=> res!3138959 e!4668542)))

(assert (=> b!7908855 (= res!3138959 (not ((_ is ElementMatch!21343) (regex!8640 (rule!11944 (_1!38471 lt!2685898))))))))

(assert (=> b!7908855 (= e!4668541 e!4668542)))

(declare-fun b!7908856 () Bool)

(declare-fun nullable!9500 (Regex!21343) Bool)

(assert (=> b!7908856 (= e!4668538 (nullable!9500 (regex!8640 (rule!11944 (_1!38471 lt!2685898)))))))

(declare-fun b!7908857 () Bool)

(assert (=> b!7908857 (= e!4668539 e!4668537)))

(declare-fun res!3138963 () Bool)

(assert (=> b!7908857 (=> res!3138963 e!4668537)))

(assert (=> b!7908857 (= res!3138963 call!733503)))

(declare-fun b!7908858 () Bool)

(declare-fun res!3138962 () Bool)

(assert (=> b!7908858 (=> res!3138962 e!4668537)))

(assert (=> b!7908858 (= res!3138962 (not (isEmpty!42667 (tail!15706 lt!2685897))))))

(assert (= (and d!2359812 c!1451017) b!7908856))

(assert (= (and d!2359812 (not c!1451017)) b!7908854))

(assert (= (and d!2359812 c!1451016) b!7908846))

(assert (= (and d!2359812 (not c!1451016)) b!7908853))

(assert (= (and b!7908853 c!1451015) b!7908845))

(assert (= (and b!7908853 (not c!1451015)) b!7908855))

(assert (= (and b!7908855 (not res!3138959)) b!7908852))

(assert (= (and b!7908852 res!3138964) b!7908849))

(assert (= (and b!7908849 res!3138961) b!7908850))

(assert (= (and b!7908850 res!3138966) b!7908848))

(assert (= (and b!7908852 (not res!3138965)) b!7908851))

(assert (= (and b!7908851 res!3138960) b!7908857))

(assert (= (and b!7908857 (not res!3138963)) b!7908858))

(assert (= (and b!7908858 (not res!3138962)) b!7908847))

(assert (= (or b!7908846 b!7908849 b!7908857) bm!733498))

(declare-fun m!8282620 () Bool)

(assert (=> b!7908858 m!8282620))

(assert (=> b!7908858 m!8282620))

(declare-fun m!8282622 () Bool)

(assert (=> b!7908858 m!8282622))

(assert (=> b!7908850 m!8282620))

(assert (=> b!7908850 m!8282620))

(assert (=> b!7908850 m!8282622))

(declare-fun m!8282624 () Bool)

(assert (=> b!7908856 m!8282624))

(declare-fun m!8282626 () Bool)

(assert (=> bm!733498 m!8282626))

(declare-fun m!8282628 () Bool)

(assert (=> b!7908848 m!8282628))

(assert (=> b!7908854 m!8282628))

(assert (=> b!7908854 m!8282628))

(declare-fun m!8282630 () Bool)

(assert (=> b!7908854 m!8282630))

(assert (=> b!7908854 m!8282620))

(assert (=> b!7908854 m!8282630))

(assert (=> b!7908854 m!8282620))

(declare-fun m!8282632 () Bool)

(assert (=> b!7908854 m!8282632))

(assert (=> b!7908847 m!8282628))

(assert (=> d!2359812 m!8282626))

(declare-fun m!8282634 () Bool)

(assert (=> d!2359812 m!8282634))

(assert (=> b!7908695 d!2359812))

(declare-fun d!2359824 () Bool)

(assert (=> d!2359824 (= (inv!95336 (tag!9504 (rule!11944 (_1!38471 (v!55076 err!4697))))) (= (mod (str.len (value!288220 (tag!9504 (rule!11944 (_1!38471 (v!55076 err!4697)))))) 2) 0))))

(assert (=> b!7908705 d!2359824))

(declare-fun d!2359826 () Bool)

(declare-fun res!3138967 () Bool)

(declare-fun e!4668543 () Bool)

(assert (=> d!2359826 (=> (not res!3138967) (not e!4668543))))

(assert (=> d!2359826 (= res!3138967 (semiInverseModEq!3831 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))))))

(assert (=> d!2359826 (= (inv!95340 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) e!4668543)))

(declare-fun b!7908859 () Bool)

(assert (=> b!7908859 (= e!4668543 (equivClasses!3646 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))))))

(assert (= (and d!2359826 res!3138967) b!7908859))

(declare-fun m!8282636 () Bool)

(assert (=> d!2359826 m!8282636))

(declare-fun m!8282638 () Bool)

(assert (=> b!7908859 m!8282638))

(assert (=> b!7908705 d!2359826))

(declare-fun d!2359828 () Bool)

(assert (=> d!2359828 true))

(declare-fun lt!2685941 () Bool)

(declare-fun lambda!472539 () Int)

(declare-fun forall!18460 (List!74442 Int) Bool)

(assert (=> d!2359828 (= lt!2685941 (forall!18460 rulesArg!141 lambda!472539))))

(declare-fun e!4668598 () Bool)

(assert (=> d!2359828 (= lt!2685941 e!4668598)))

(declare-fun res!3138998 () Bool)

(assert (=> d!2359828 (=> res!3138998 e!4668598)))

(assert (=> d!2359828 (= res!3138998 (not ((_ is Cons!74318) rulesArg!141)))))

(assert (=> d!2359828 (= (rulesValidInductive!3451 thiss!14377 rulesArg!141) lt!2685941)))

(declare-fun b!7908944 () Bool)

(declare-fun e!4668599 () Bool)

(assert (=> b!7908944 (= e!4668598 e!4668599)))

(declare-fun res!3138999 () Bool)

(assert (=> b!7908944 (=> (not res!3138999) (not e!4668599))))

(declare-fun ruleValid!3951 (LexerInterface!8232 Rule!17080) Bool)

(assert (=> b!7908944 (= res!3138999 (ruleValid!3951 thiss!14377 (h!80766 rulesArg!141)))))

(declare-fun b!7908945 () Bool)

(assert (=> b!7908945 (= e!4668599 (rulesValidInductive!3451 thiss!14377 (t!389759 rulesArg!141)))))

(assert (= (and d!2359828 (not res!3138998)) b!7908944))

(assert (= (and b!7908944 res!3138999) b!7908945))

(declare-fun m!8282684 () Bool)

(assert (=> d!2359828 m!8282684))

(declare-fun m!8282686 () Bool)

(assert (=> b!7908944 m!8282686))

(declare-fun m!8282688 () Bool)

(assert (=> b!7908945 m!8282688))

(assert (=> b!7908696 d!2359828))

(declare-fun b!7908958 () Bool)

(declare-fun e!4668607 () Bool)

(declare-fun inv!16 (TokenValue!8956) Bool)

(assert (=> b!7908958 (= e!4668607 (inv!16 (value!288221 (_1!38471 (v!55076 err!4697)))))))

(declare-fun b!7908959 () Bool)

(declare-fun e!4668606 () Bool)

(assert (=> b!7908959 (= e!4668607 e!4668606)))

(declare-fun c!1451029 () Bool)

(assert (=> b!7908959 (= c!1451029 ((_ is IntegerValue!26869) (value!288221 (_1!38471 (v!55076 err!4697)))))))

(declare-fun d!2359846 () Bool)

(declare-fun c!1451030 () Bool)

(assert (=> d!2359846 (= c!1451030 ((_ is IntegerValue!26868) (value!288221 (_1!38471 (v!55076 err!4697)))))))

(assert (=> d!2359846 (= (inv!21 (value!288221 (_1!38471 (v!55076 err!4697)))) e!4668607)))

(declare-fun b!7908960 () Bool)

(declare-fun e!4668608 () Bool)

(declare-fun inv!15 (TokenValue!8956) Bool)

(assert (=> b!7908960 (= e!4668608 (inv!15 (value!288221 (_1!38471 (v!55076 err!4697)))))))

(declare-fun b!7908961 () Bool)

(declare-fun inv!17 (TokenValue!8956) Bool)

(assert (=> b!7908961 (= e!4668606 (inv!17 (value!288221 (_1!38471 (v!55076 err!4697)))))))

(declare-fun b!7908962 () Bool)

(declare-fun res!3139002 () Bool)

(assert (=> b!7908962 (=> res!3139002 e!4668608)))

(assert (=> b!7908962 (= res!3139002 (not ((_ is IntegerValue!26870) (value!288221 (_1!38471 (v!55076 err!4697))))))))

(assert (=> b!7908962 (= e!4668606 e!4668608)))

(assert (= (and d!2359846 c!1451030) b!7908958))

(assert (= (and d!2359846 (not c!1451030)) b!7908959))

(assert (= (and b!7908959 c!1451029) b!7908961))

(assert (= (and b!7908959 (not c!1451029)) b!7908962))

(assert (= (and b!7908962 (not res!3139002)) b!7908960))

(declare-fun m!8282690 () Bool)

(assert (=> b!7908958 m!8282690))

(declare-fun m!8282692 () Bool)

(assert (=> b!7908960 m!8282692))

(declare-fun m!8282694 () Bool)

(assert (=> b!7908961 m!8282694))

(assert (=> b!7908698 d!2359846))

(declare-fun d!2359848 () Bool)

(assert (=> d!2359848 (= (isDefined!14494 lt!2685899) (not (isEmpty!42665 lt!2685899)))))

(declare-fun bs!1968186 () Bool)

(assert (= bs!1968186 d!2359848))

(assert (=> bs!1968186 m!8282520))

(assert (=> b!7908708 d!2359848))

(declare-fun b!7908972 () Bool)

(declare-fun res!3139012 () Bool)

(declare-fun e!4668617 () Bool)

(assert (=> b!7908972 (=> (not res!3139012) (not e!4668617))))

(assert (=> b!7908972 (= res!3139012 (= (head!16163 input!1184) (head!16163 input!1184)))))

(declare-fun b!7908971 () Bool)

(declare-fun e!4668615 () Bool)

(assert (=> b!7908971 (= e!4668615 e!4668617)))

(declare-fun res!3139013 () Bool)

(assert (=> b!7908971 (=> (not res!3139013) (not e!4668617))))

(assert (=> b!7908971 (= res!3139013 (not ((_ is Nil!74317) input!1184)))))

(declare-fun b!7908973 () Bool)

(assert (=> b!7908973 (= e!4668617 (isPrefix!6473 (tail!15706 input!1184) (tail!15706 input!1184)))))

(declare-fun d!2359850 () Bool)

(declare-fun e!4668616 () Bool)

(assert (=> d!2359850 e!4668616))

(declare-fun res!3139014 () Bool)

(assert (=> d!2359850 (=> res!3139014 e!4668616)))

(declare-fun lt!2685944 () Bool)

(assert (=> d!2359850 (= res!3139014 (not lt!2685944))))

(assert (=> d!2359850 (= lt!2685944 e!4668615)))

(declare-fun res!3139011 () Bool)

(assert (=> d!2359850 (=> res!3139011 e!4668615)))

(assert (=> d!2359850 (= res!3139011 ((_ is Nil!74317) input!1184))))

(assert (=> d!2359850 (= (isPrefix!6473 input!1184 input!1184) lt!2685944)))

(declare-fun b!7908974 () Bool)

(assert (=> b!7908974 (= e!4668616 (>= (size!43092 input!1184) (size!43092 input!1184)))))

(assert (= (and d!2359850 (not res!3139011)) b!7908971))

(assert (= (and b!7908971 res!3139013) b!7908972))

(assert (= (and b!7908972 res!3139012) b!7908973))

(assert (= (and d!2359850 (not res!3139014)) b!7908974))

(declare-fun m!8282696 () Bool)

(assert (=> b!7908972 m!8282696))

(assert (=> b!7908972 m!8282696))

(declare-fun m!8282698 () Bool)

(assert (=> b!7908973 m!8282698))

(assert (=> b!7908973 m!8282698))

(assert (=> b!7908973 m!8282698))

(assert (=> b!7908973 m!8282698))

(declare-fun m!8282700 () Bool)

(assert (=> b!7908973 m!8282700))

(assert (=> b!7908974 m!8282498))

(assert (=> b!7908974 m!8282498))

(assert (=> b!7908697 d!2359850))

(declare-fun d!2359852 () Bool)

(assert (=> d!2359852 (isPrefix!6473 input!1184 input!1184)))

(declare-fun lt!2685947 () Unit!169359)

(declare-fun choose!59738 (List!74441 List!74441) Unit!169359)

(assert (=> d!2359852 (= lt!2685947 (choose!59738 input!1184 input!1184))))

(assert (=> d!2359852 (= (lemmaIsPrefixRefl!3984 input!1184 input!1184) lt!2685947)))

(declare-fun bs!1968187 () Bool)

(assert (= bs!1968187 d!2359852))

(assert (=> bs!1968187 m!8282526))

(declare-fun m!8282702 () Bool)

(assert (=> bs!1968187 m!8282702))

(assert (=> b!7908697 d!2359852))

(declare-fun d!2359854 () Bool)

(declare-fun dynLambda!30106 (Int BalanceConc!30746) TokenValue!8956)

(assert (=> d!2359854 (= (apply!14363 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))) (seqFromList!6181 (originalCharacters!8881 (_1!38471 lt!2685898)))) (dynLambda!30106 (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 lt!2685898)))) (seqFromList!6181 (originalCharacters!8881 (_1!38471 lt!2685898)))))))

(declare-fun b_lambda!289923 () Bool)

(assert (=> (not b_lambda!289923) (not d!2359854)))

(declare-fun tb!263173 () Bool)

(declare-fun t!389779 () Bool)

(assert (=> (and b!7908693 (= (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389779) tb!263173))

(declare-fun result!360426 () Bool)

(assert (=> tb!263173 (= result!360426 (inv!21 (dynLambda!30106 (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 lt!2685898)))) (seqFromList!6181 (originalCharacters!8881 (_1!38471 lt!2685898))))))))

(declare-fun m!8282704 () Bool)

(assert (=> tb!263173 m!8282704))

(assert (=> d!2359854 t!389779))

(declare-fun b_and!353335 () Bool)

(assert (= b_and!353311 (and (=> t!389779 result!360426) b_and!353335)))

(declare-fun t!389781 () Bool)

(declare-fun tb!263175 () Bool)

(assert (=> (and b!7908702 (= (toValue!11697 (transformation!8640 (h!80766 rulesArg!141))) (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389781) tb!263175))

(declare-fun result!360430 () Bool)

(assert (= result!360430 result!360426))

(assert (=> d!2359854 t!389781))

(declare-fun b_and!353337 () Bool)

(assert (= b_and!353315 (and (=> t!389781 result!360430) b_and!353337)))

(assert (=> d!2359854 m!8282522))

(declare-fun m!8282706 () Bool)

(assert (=> d!2359854 m!8282706))

(assert (=> b!7908710 d!2359854))

(declare-fun d!2359856 () Bool)

(declare-fun fromListB!2791 (List!74441) BalanceConc!30746)

(assert (=> d!2359856 (= (seqFromList!6181 (originalCharacters!8881 (_1!38471 lt!2685898))) (fromListB!2791 (originalCharacters!8881 (_1!38471 lt!2685898))))))

(declare-fun bs!1968188 () Bool)

(assert (= bs!1968188 d!2359856))

(declare-fun m!8282708 () Bool)

(assert (=> bs!1968188 m!8282708))

(assert (=> b!7908710 d!2359856))

(declare-fun d!2359858 () Bool)

(assert (=> d!2359858 (= (isEmpty!42665 lt!2685899) (not ((_ is Some!17921) lt!2685899)))))

(assert (=> b!7908709 d!2359858))

(declare-fun d!2359860 () Bool)

(declare-fun res!3139019 () Bool)

(declare-fun e!4668623 () Bool)

(assert (=> d!2359860 (=> (not res!3139019) (not e!4668623))))

(assert (=> d!2359860 (= res!3139019 (not (isEmpty!42667 (originalCharacters!8881 (_1!38471 (v!55076 err!4697))))))))

(assert (=> d!2359860 (= (inv!95339 (_1!38471 (v!55076 err!4697))) e!4668623)))

(declare-fun b!7908981 () Bool)

(declare-fun res!3139020 () Bool)

(assert (=> b!7908981 (=> (not res!3139020) (not e!4668623))))

(declare-fun dynLambda!30107 (Int TokenValue!8956) BalanceConc!30746)

(assert (=> b!7908981 (= res!3139020 (= (originalCharacters!8881 (_1!38471 (v!55076 err!4697))) (list!19286 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (value!288221 (_1!38471 (v!55076 err!4697)))))))))

(declare-fun b!7908982 () Bool)

(assert (=> b!7908982 (= e!4668623 (= (size!43091 (_1!38471 (v!55076 err!4697))) (size!43092 (originalCharacters!8881 (_1!38471 (v!55076 err!4697))))))))

(assert (= (and d!2359860 res!3139019) b!7908981))

(assert (= (and b!7908981 res!3139020) b!7908982))

(declare-fun b_lambda!289925 () Bool)

(assert (=> (not b_lambda!289925) (not b!7908981)))

(declare-fun t!389783 () Bool)

(declare-fun tb!263177 () Bool)

(assert (=> (and b!7908693 (= (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) t!389783) tb!263177))

(declare-fun b!7908987 () Bool)

(declare-fun e!4668626 () Bool)

(declare-fun tp!2356016 () Bool)

(declare-fun inv!95343 (Conc!15814) Bool)

(assert (=> b!7908987 (= e!4668626 (and (inv!95343 (c!1450985 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (value!288221 (_1!38471 (v!55076 err!4697)))))) tp!2356016))))

(declare-fun result!360432 () Bool)

(declare-fun inv!95344 (BalanceConc!30746) Bool)

(assert (=> tb!263177 (= result!360432 (and (inv!95344 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (value!288221 (_1!38471 (v!55076 err!4697))))) e!4668626))))

(assert (= tb!263177 b!7908987))

(declare-fun m!8282710 () Bool)

(assert (=> b!7908987 m!8282710))

(declare-fun m!8282712 () Bool)

(assert (=> tb!263177 m!8282712))

(assert (=> b!7908981 t!389783))

(declare-fun b_and!353339 () Bool)

(assert (= b_and!353313 (and (=> t!389783 result!360432) b_and!353339)))

(declare-fun t!389785 () Bool)

(declare-fun tb!263179 () Bool)

(assert (=> (and b!7908702 (= (toChars!11556 (transformation!8640 (h!80766 rulesArg!141))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) t!389785) tb!263179))

(declare-fun result!360436 () Bool)

(assert (= result!360436 result!360432))

(assert (=> b!7908981 t!389785))

(declare-fun b_and!353341 () Bool)

(assert (= b_and!353317 (and (=> t!389785 result!360436) b_and!353341)))

(declare-fun m!8282714 () Bool)

(assert (=> d!2359860 m!8282714))

(declare-fun m!8282716 () Bool)

(assert (=> b!7908981 m!8282716))

(assert (=> b!7908981 m!8282716))

(declare-fun m!8282718 () Bool)

(assert (=> b!7908981 m!8282718))

(declare-fun m!8282720 () Bool)

(assert (=> b!7908982 m!8282720))

(assert (=> b!7908700 d!2359860))

(declare-fun d!2359862 () Bool)

(declare-fun list!19288 (Conc!15814) List!74441)

(assert (=> d!2359862 (= (list!19286 (charsOf!5584 (_1!38471 lt!2685898))) (list!19288 (c!1450985 (charsOf!5584 (_1!38471 lt!2685898)))))))

(declare-fun bs!1968189 () Bool)

(assert (= bs!1968189 d!2359862))

(declare-fun m!8282722 () Bool)

(assert (=> bs!1968189 m!8282722))

(assert (=> b!7908701 d!2359862))

(declare-fun d!2359864 () Bool)

(declare-fun lt!2685950 () BalanceConc!30746)

(assert (=> d!2359864 (= (list!19286 lt!2685950) (originalCharacters!8881 (_1!38471 lt!2685898)))))

(assert (=> d!2359864 (= lt!2685950 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898)))) (value!288221 (_1!38471 lt!2685898))))))

(assert (=> d!2359864 (= (charsOf!5584 (_1!38471 lt!2685898)) lt!2685950)))

(declare-fun b_lambda!289927 () Bool)

(assert (=> (not b_lambda!289927) (not d!2359864)))

(declare-fun t!389787 () Bool)

(declare-fun tb!263181 () Bool)

(assert (=> (and b!7908693 (= (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389787) tb!263181))

(declare-fun b!7908988 () Bool)

(declare-fun e!4668627 () Bool)

(declare-fun tp!2356017 () Bool)

(assert (=> b!7908988 (= e!4668627 (and (inv!95343 (c!1450985 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898)))) (value!288221 (_1!38471 lt!2685898))))) tp!2356017))))

(declare-fun result!360438 () Bool)

(assert (=> tb!263181 (= result!360438 (and (inv!95344 (dynLambda!30107 (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898)))) (value!288221 (_1!38471 lt!2685898)))) e!4668627))))

(assert (= tb!263181 b!7908988))

(declare-fun m!8282724 () Bool)

(assert (=> b!7908988 m!8282724))

(declare-fun m!8282726 () Bool)

(assert (=> tb!263181 m!8282726))

(assert (=> d!2359864 t!389787))

(declare-fun b_and!353343 () Bool)

(assert (= b_and!353339 (and (=> t!389787 result!360438) b_and!353343)))

(declare-fun tb!263183 () Bool)

(declare-fun t!389789 () Bool)

(assert (=> (and b!7908702 (= (toChars!11556 (transformation!8640 (h!80766 rulesArg!141))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389789) tb!263183))

(declare-fun result!360440 () Bool)

(assert (= result!360440 result!360438))

(assert (=> d!2359864 t!389789))

(declare-fun b_and!353345 () Bool)

(assert (= b_and!353341 (and (=> t!389789 result!360440) b_and!353345)))

(declare-fun m!8282728 () Bool)

(assert (=> d!2359864 m!8282728))

(declare-fun m!8282730 () Bool)

(assert (=> d!2359864 m!8282730))

(assert (=> b!7908701 d!2359864))

(declare-fun d!2359866 () Bool)

(assert (=> d!2359866 (= (get!26714 lt!2685899) (v!55076 lt!2685899))))

(assert (=> b!7908701 d!2359866))

(declare-fun b!7908993 () Bool)

(declare-fun e!4668630 () Bool)

(declare-fun tp!2356020 () Bool)

(assert (=> b!7908993 (= e!4668630 (and tp_is_empty!53061 tp!2356020))))

(assert (=> b!7908698 (= tp!2355971 e!4668630)))

(assert (= (and b!7908698 ((_ is Cons!74317) (originalCharacters!8881 (_1!38471 (v!55076 err!4697))))) b!7908993))

(declare-fun b!7909004 () Bool)

(declare-fun e!4668633 () Bool)

(assert (=> b!7909004 (= e!4668633 tp_is_empty!53061)))

(declare-fun b!7909006 () Bool)

(declare-fun tp!2356035 () Bool)

(assert (=> b!7909006 (= e!4668633 tp!2356035)))

(declare-fun b!7909007 () Bool)

(declare-fun tp!2356034 () Bool)

(declare-fun tp!2356031 () Bool)

(assert (=> b!7909007 (= e!4668633 (and tp!2356034 tp!2356031))))

(assert (=> b!7908703 (= tp!2355969 e!4668633)))

(declare-fun b!7909005 () Bool)

(declare-fun tp!2356032 () Bool)

(declare-fun tp!2356033 () Bool)

(assert (=> b!7909005 (= e!4668633 (and tp!2356032 tp!2356033))))

(assert (= (and b!7908703 ((_ is ElementMatch!21343) (regex!8640 (h!80766 rulesArg!141)))) b!7909004))

(assert (= (and b!7908703 ((_ is Concat!30300) (regex!8640 (h!80766 rulesArg!141)))) b!7909005))

(assert (= (and b!7908703 ((_ is Star!21343) (regex!8640 (h!80766 rulesArg!141)))) b!7909006))

(assert (= (and b!7908703 ((_ is Union!21343) (regex!8640 (h!80766 rulesArg!141)))) b!7909007))

(declare-fun b!7909018 () Bool)

(declare-fun b_free!135103 () Bool)

(declare-fun b_next!135893 () Bool)

(assert (=> b!7909018 (= b_free!135103 (not b_next!135893))))

(declare-fun t!389791 () Bool)

(declare-fun tb!263185 () Bool)

(assert (=> (and b!7909018 (= (toValue!11697 (transformation!8640 (h!80766 (t!389759 rulesArg!141)))) (toValue!11697 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389791) tb!263185))

(declare-fun result!360448 () Bool)

(assert (= result!360448 result!360426))

(assert (=> d!2359854 t!389791))

(declare-fun b_and!353347 () Bool)

(declare-fun tp!2356046 () Bool)

(assert (=> b!7909018 (= tp!2356046 (and (=> t!389791 result!360448) b_and!353347))))

(declare-fun b_free!135105 () Bool)

(declare-fun b_next!135895 () Bool)

(assert (=> b!7909018 (= b_free!135105 (not b_next!135895))))

(declare-fun tb!263187 () Bool)

(declare-fun t!389793 () Bool)

(assert (=> (and b!7909018 (= (toChars!11556 (transformation!8640 (h!80766 (t!389759 rulesArg!141)))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) t!389793) tb!263187))

(declare-fun result!360450 () Bool)

(assert (= result!360450 result!360432))

(assert (=> b!7908981 t!389793))

(declare-fun t!389795 () Bool)

(declare-fun tb!263189 () Bool)

(assert (=> (and b!7909018 (= (toChars!11556 (transformation!8640 (h!80766 (t!389759 rulesArg!141)))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 lt!2685898))))) t!389795) tb!263189))

(declare-fun result!360452 () Bool)

(assert (= result!360452 result!360438))

(assert (=> d!2359864 t!389795))

(declare-fun tp!2356047 () Bool)

(declare-fun b_and!353349 () Bool)

(assert (=> b!7909018 (= tp!2356047 (and (=> t!389793 result!360450) (=> t!389795 result!360452) b_and!353349))))

(declare-fun e!4668645 () Bool)

(assert (=> b!7909018 (= e!4668645 (and tp!2356046 tp!2356047))))

(declare-fun tp!2356044 () Bool)

(declare-fun b!7909017 () Bool)

(declare-fun e!4668642 () Bool)

(assert (=> b!7909017 (= e!4668642 (and tp!2356044 (inv!95336 (tag!9504 (h!80766 (t!389759 rulesArg!141)))) (inv!95340 (transformation!8640 (h!80766 (t!389759 rulesArg!141)))) e!4668645))))

(declare-fun b!7909016 () Bool)

(declare-fun e!4668644 () Bool)

(declare-fun tp!2356045 () Bool)

(assert (=> b!7909016 (= e!4668644 (and e!4668642 tp!2356045))))

(assert (=> b!7908699 (= tp!2355965 e!4668644)))

(assert (= b!7909017 b!7909018))

(assert (= b!7909016 b!7909017))

(assert (= (and b!7908699 ((_ is Cons!74318) (t!389759 rulesArg!141))) b!7909016))

(declare-fun m!8282732 () Bool)

(assert (=> b!7909017 m!8282732))

(declare-fun m!8282734 () Bool)

(assert (=> b!7909017 m!8282734))

(declare-fun b!7909019 () Bool)

(declare-fun e!4668646 () Bool)

(declare-fun tp!2356048 () Bool)

(assert (=> b!7909019 (= e!4668646 (and tp_is_empty!53061 tp!2356048))))

(assert (=> b!7908700 (= tp!2355963 e!4668646)))

(assert (= (and b!7908700 ((_ is Cons!74317) (_2!38471 (v!55076 err!4697)))) b!7909019))

(declare-fun b!7909020 () Bool)

(declare-fun e!4668647 () Bool)

(assert (=> b!7909020 (= e!4668647 tp_is_empty!53061)))

(declare-fun b!7909022 () Bool)

(declare-fun tp!2356053 () Bool)

(assert (=> b!7909022 (= e!4668647 tp!2356053)))

(declare-fun b!7909023 () Bool)

(declare-fun tp!2356052 () Bool)

(declare-fun tp!2356049 () Bool)

(assert (=> b!7909023 (= e!4668647 (and tp!2356052 tp!2356049))))

(assert (=> b!7908705 (= tp!2355968 e!4668647)))

(declare-fun b!7909021 () Bool)

(declare-fun tp!2356050 () Bool)

(declare-fun tp!2356051 () Bool)

(assert (=> b!7909021 (= e!4668647 (and tp!2356050 tp!2356051))))

(assert (= (and b!7908705 ((_ is ElementMatch!21343) (regex!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) b!7909020))

(assert (= (and b!7908705 ((_ is Concat!30300) (regex!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) b!7909021))

(assert (= (and b!7908705 ((_ is Star!21343) (regex!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) b!7909022))

(assert (= (and b!7908705 ((_ is Union!21343) (regex!8640 (rule!11944 (_1!38471 (v!55076 err!4697)))))) b!7909023))

(declare-fun b!7909024 () Bool)

(declare-fun e!4668648 () Bool)

(declare-fun tp!2356054 () Bool)

(assert (=> b!7909024 (= e!4668648 (and tp_is_empty!53061 tp!2356054))))

(assert (=> b!7908707 (= tp!2355967 e!4668648)))

(assert (= (and b!7908707 ((_ is Cons!74317) (t!389758 input!1184))) b!7909024))

(declare-fun b_lambda!289929 () Bool)

(assert (= b_lambda!289925 (or (and b!7908693 b_free!135093) (and b!7908702 b_free!135097 (= (toChars!11556 (transformation!8640 (h!80766 rulesArg!141))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))))) (and b!7909018 b_free!135105 (= (toChars!11556 (transformation!8640 (h!80766 (t!389759 rulesArg!141)))) (toChars!11556 (transformation!8640 (rule!11944 (_1!38471 (v!55076 err!4697))))))) b_lambda!289929)))

(check-sat (not d!2359790) b_and!353335 (not b!7909023) (not b!7908945) (not b!7909019) (not b!7909017) (not b!7908854) (not b!7908847) (not b_lambda!289929) (not b_next!135885) (not b_next!135887) (not b!7909007) (not b!7909022) (not d!2359856) b_and!353345 (not b!7909006) (not d!2359852) (not b!7908728) (not d!2359826) (not b!7908767) (not b!7908981) (not d!2359862) (not b!7908749) (not b!7909024) (not b!7908859) (not bm!733498) (not b!7909021) (not b!7909016) (not b_next!135883) (not tb!263177) (not b!7908944) (not d!2359848) (not b!7908856) (not b!7908973) b_and!353347 (not b!7908761) (not b!7908750) (not b!7908961) (not b!7908858) (not d!2359860) (not d!2359864) (not d!2359828) (not b!7908850) (not b_next!135881) (not tb!263173) (not b!7908777) (not b!7908960) (not b!7908993) (not b!7908982) (not b!7909005) (not b!7908958) (not b!7908974) b_and!353349 (not d!2359784) tp_is_empty!53061 b_and!353337 (not d!2359802) (not b!7908972) b_and!353343 (not b_lambda!289927) (not b!7908987) (not b!7908988) (not b_next!135895) (not b_lambda!289923) (not d!2359812) (not b!7908848) (not b_next!135893) (not tb!263181))
(check-sat b_and!353335 (not b_next!135883) b_and!353347 (not b_next!135881) (not b_next!135885) b_and!353343 (not b_next!135895) (not b_next!135893) b_and!353345 (not b_next!135887) b_and!353349 b_and!353337)
