; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745512 () Bool)

(assert start!745512)

(declare-fun b!7902691 () Bool)

(declare-fun b_free!134783 () Bool)

(declare-fun b_next!135573 () Bool)

(assert (=> b!7902691 (= b_free!134783 (not b_next!135573))))

(declare-fun tp!2354338 () Bool)

(declare-fun b_and!352811 () Bool)

(assert (=> b!7902691 (= tp!2354338 b_and!352811)))

(declare-fun b_free!134785 () Bool)

(declare-fun b_next!135575 () Bool)

(assert (=> b!7902691 (= b_free!134785 (not b_next!135575))))

(declare-fun tp!2354339 () Bool)

(declare-fun b_and!352813 () Bool)

(assert (=> b!7902691 (= tp!2354339 b_and!352813)))

(declare-fun e!4664706 () Bool)

(declare-datatypes ((List!74314 0))(
  ( (Nil!74190) (Cons!74190 (h!80638 (_ BitVec 16)) (t!389319 List!74314)) )
))
(declare-datatypes ((TokenValue!8914 0))(
  ( (FloatLiteralValue!17828 (text!62843 List!74314)) (TokenValueExt!8913 (__x!35115 Int)) (Broken!44570 (value!286998 List!74314)) (Object!9037) (End!8914) (Def!8914) (Underscore!8914) (Match!8914) (Else!8914) (Error!8914) (Case!8914) (If!8914) (Extends!8914) (Abstract!8914) (Class!8914) (Val!8914) (DelimiterValue!17828 (del!8974 List!74314)) (KeywordValue!8920 (value!286999 List!74314)) (CommentValue!17828 (value!287000 List!74314)) (WhitespaceValue!17828 (value!287001 List!74314)) (IndentationValue!8914 (value!287002 List!74314)) (String!82991) (Int32!8914) (Broken!44571 (value!287003 List!74314)) (Boolean!8915) (Unit!169220) (OperatorValue!8917 (op!8974 List!74314)) (IdentifierValue!17828 (value!287004 List!74314)) (IdentifierValue!17829 (value!287005 List!74314)) (WhitespaceValue!17829 (value!287006 List!74314)) (True!17828) (False!17828) (Broken!44572 (value!287007 List!74314)) (Broken!44573 (value!287008 List!74314)) (True!17829) (RightBrace!8914) (RightBracket!8914) (Colon!8914) (Null!8914) (Comma!8914) (LeftBracket!8914) (False!17829) (LeftBrace!8914) (ImaginaryLiteralValue!8914 (text!62844 List!74314)) (StringLiteralValue!26742 (value!287009 List!74314)) (EOFValue!8914 (value!287010 List!74314)) (IdentValue!8914 (value!287011 List!74314)) (DelimiterValue!17829 (value!287012 List!74314)) (DedentValue!8914 (value!287013 List!74314)) (NewLineValue!8914 (value!287014 List!74314)) (IntegerValue!26742 (value!287015 (_ BitVec 32)) (text!62845 List!74314)) (IntegerValue!26743 (value!287016 Int) (text!62846 List!74314)) (Times!8914) (Or!8914) (Equal!8914) (Minus!8914) (Broken!44574 (value!287017 List!74314)) (And!8914) (Div!8914) (LessEqual!8914) (Mod!8914) (Concat!30215) (Not!8914) (Plus!8914) (SpaceValue!8914 (value!287018 List!74314)) (IntegerValue!26744 (value!287019 Int) (text!62847 List!74314)) (StringLiteralValue!26743 (text!62848 List!74314)) (FloatLiteralValue!17829 (text!62849 List!74314)) (BytesLiteralValue!8914 (value!287020 List!74314)) (CommentValue!17829 (value!287021 List!74314)) (StringLiteralValue!26744 (value!287022 List!74314)) (ErrorTokenValue!8914 (msg!8975 List!74314)) )
))
(declare-datatypes ((C!42932 0))(
  ( (C!42933 (val!31930 Int)) )
))
(declare-datatypes ((List!74315 0))(
  ( (Nil!74191) (Cons!74191 (h!80639 C!42932) (t!389320 List!74315)) )
))
(declare-datatypes ((IArray!31605 0))(
  ( (IArray!31606 (innerList!15860 List!74315)) )
))
(declare-datatypes ((Conc!15772 0))(
  ( (Node!15772 (left!56594 Conc!15772) (right!56924 Conc!15772) (csize!31774 Int) (cheight!15983 Int)) (Leaf!30039 (xs!19154 IArray!31605) (csize!31775 Int)) (Empty!15772) )
))
(declare-datatypes ((BalanceConc!30662 0))(
  ( (BalanceConc!30663 (c!1450235 Conc!15772)) )
))
(declare-datatypes ((Regex!21301 0))(
  ( (ElementMatch!21301 (c!1450236 C!42932)) (Concat!30216 (regOne!43114 Regex!21301) (regTwo!43114 Regex!21301)) (EmptyExpr!21301) (Star!21301 (reg!21630 Regex!21301)) (EmptyLang!21301) (Union!21301 (regOne!43115 Regex!21301) (regTwo!43115 Regex!21301)) )
))
(declare-datatypes ((String!82992 0))(
  ( (String!82993 (value!287023 String)) )
))
(declare-datatypes ((TokenValueInjection!17136 0))(
  ( (TokenValueInjection!17137 (toValue!11647 Int) (toChars!11506 Int)) )
))
(declare-datatypes ((Rule!16996 0))(
  ( (Rule!16997 (regex!8598 Regex!21301) (tag!9462 String!82992) (isSeparator!8598 Bool) (transformation!8598 TokenValueInjection!17136)) )
))
(declare-datatypes ((List!74316 0))(
  ( (Nil!74192) (Cons!74192 (h!80640 Rule!16996) (t!389321 List!74316)) )
))
(declare-fun rulesArg!141 () List!74316)

(declare-fun tp!2354337 () Bool)

(declare-fun e!4664704 () Bool)

(declare-fun b!7902680 () Bool)

(declare-fun inv!95177 (String!82992) Bool)

(declare-fun inv!95179 (TokenValueInjection!17136) Bool)

(assert (=> b!7902680 (= e!4664704 (and tp!2354337 (inv!95177 (tag!9462 (h!80640 rulesArg!141))) (inv!95179 (transformation!8598 (h!80640 rulesArg!141))) e!4664706))))

(declare-fun b!7902681 () Bool)

(declare-fun e!4664709 () Bool)

(declare-fun e!4664705 () Bool)

(assert (=> b!7902681 (= e!4664709 (not e!4664705))))

(declare-fun res!3135595 () Bool)

(assert (=> b!7902681 (=> res!3135595 e!4664705)))

(get-info :version)

(assert (=> b!7902681 (= res!3135595 (or (and ((_ is Cons!74192) rulesArg!141) ((_ is Nil!74192) (t!389321 rulesArg!141))) (not ((_ is Cons!74192) rulesArg!141))))))

(declare-fun input!1184 () List!74315)

(declare-fun isPrefix!6431 (List!74315 List!74315) Bool)

(assert (=> b!7902681 (isPrefix!6431 input!1184 input!1184)))

(declare-datatypes ((Unit!169221 0))(
  ( (Unit!169222) )
))
(declare-fun lt!2683913 () Unit!169221)

(declare-fun lemmaIsPrefixRefl!3942 (List!74315 List!74315) Unit!169221)

(assert (=> b!7902681 (= lt!2683913 (lemmaIsPrefixRefl!3942 input!1184 input!1184))))

(declare-fun b!7902682 () Bool)

(declare-fun res!3135602 () Bool)

(assert (=> b!7902682 (=> (not res!3135602) (not e!4664709))))

(declare-datatypes ((LexerInterface!8190 0))(
  ( (LexerInterfaceExt!8187 (__x!35116 Int)) (Lexer!8188) )
))
(declare-fun thiss!14377 () LexerInterface!8190)

(declare-fun rulesValidInductive!3409 (LexerInterface!8190 List!74316) Bool)

(assert (=> b!7902682 (= res!3135602 (rulesValidInductive!3409 thiss!14377 rulesArg!141))))

(declare-fun b!7902683 () Bool)

(declare-fun e!4664708 () Bool)

(declare-fun tp_is_empty!52977 () Bool)

(declare-fun tp!2354340 () Bool)

(assert (=> b!7902683 (= e!4664708 (and tp_is_empty!52977 tp!2354340))))

(declare-fun b!7902684 () Bool)

(declare-fun res!3135598 () Bool)

(declare-fun e!4664703 () Bool)

(assert (=> b!7902684 (=> res!3135598 e!4664703)))

(declare-datatypes ((Token!15616 0))(
  ( (Token!15617 (value!287024 TokenValue!8914) (rule!11886 Rule!16996) (size!42990 Int) (originalCharacters!8839 List!74315)) )
))
(declare-datatypes ((tuple2!70222 0))(
  ( (tuple2!70223 (_1!38414 Token!15616) (_2!38414 List!74315)) )
))
(declare-fun lt!2683911 () tuple2!70222)

(declare-fun size!42991 (List!74315) Int)

(assert (=> b!7902684 (= res!3135598 (>= (size!42991 (_2!38414 lt!2683911)) (size!42991 input!1184)))))

(declare-fun b!7902685 () Bool)

(declare-fun res!3135596 () Bool)

(assert (=> b!7902685 (=> (not res!3135596) (not e!4664709))))

(declare-fun isEmpty!42564 (List!74316) Bool)

(assert (=> b!7902685 (= res!3135596 (not (isEmpty!42564 rulesArg!141)))))

(declare-fun b!7902686 () Bool)

(declare-fun res!3135604 () Bool)

(assert (=> b!7902686 (=> res!3135604 e!4664703)))

(declare-fun lt!2683914 () List!74315)

(declare-fun ++!18160 (List!74315 List!74315) List!74315)

(assert (=> b!7902686 (= res!3135604 (not (= (++!18160 lt!2683914 (_2!38414 lt!2683911)) input!1184)))))

(declare-fun b!7902687 () Bool)

(declare-fun validRegex!11647 (Regex!21301) Bool)

(assert (=> b!7902687 (= e!4664703 (validRegex!11647 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))

(declare-fun b!7902688 () Bool)

(declare-fun e!4664707 () Bool)

(declare-fun tp!2354336 () Bool)

(assert (=> b!7902688 (= e!4664707 (and e!4664704 tp!2354336))))

(declare-fun b!7902689 () Bool)

(declare-fun res!3135603 () Bool)

(declare-fun e!4664710 () Bool)

(assert (=> b!7902689 (=> res!3135603 e!4664710)))

(declare-datatypes ((Option!17880 0))(
  ( (None!17879) (Some!17879 (v!55020 tuple2!70222)) )
))
(declare-fun lt!2683912 () Option!17880)

(declare-fun isEmpty!42565 (Option!17880) Bool)

(assert (=> b!7902689 (= res!3135603 (isEmpty!42565 lt!2683912))))

(declare-fun res!3135605 () Bool)

(assert (=> start!745512 (=> (not res!3135605) (not e!4664709))))

(assert (=> start!745512 (= res!3135605 ((_ is Lexer!8188) thiss!14377))))

(assert (=> start!745512 e!4664709))

(assert (=> start!745512 true))

(assert (=> start!745512 e!4664707))

(assert (=> start!745512 e!4664708))

(declare-fun b!7902690 () Bool)

(assert (=> b!7902690 (= e!4664710 e!4664703)))

(declare-fun res!3135597 () Bool)

(assert (=> b!7902690 (=> res!3135597 e!4664703)))

(assert (=> b!7902690 (= res!3135597 (not (= lt!2683914 (originalCharacters!8839 (_1!38414 lt!2683911)))))))

(declare-fun list!19225 (BalanceConc!30662) List!74315)

(declare-fun charsOf!5542 (Token!15616) BalanceConc!30662)

(assert (=> b!7902690 (= lt!2683914 (list!19225 (charsOf!5542 (_1!38414 lt!2683911))))))

(declare-fun get!26651 (Option!17880) tuple2!70222)

(assert (=> b!7902690 (= lt!2683911 (get!26651 lt!2683912))))

(assert (=> b!7902691 (= e!4664706 (and tp!2354338 tp!2354339))))

(declare-fun b!7902692 () Bool)

(assert (=> b!7902692 (= e!4664705 e!4664710)))

(declare-fun res!3135600 () Bool)

(assert (=> b!7902692 (=> res!3135600 e!4664710)))

(declare-fun lt!2683910 () Option!17880)

(assert (=> b!7902692 (= res!3135600 (or (and ((_ is None!17879) lt!2683912) ((_ is None!17879) lt!2683910)) ((_ is None!17879) lt!2683910) ((_ is None!17879) lt!2683912) (< (size!42990 (_1!38414 (v!55020 lt!2683912))) (size!42990 (_1!38414 (v!55020 lt!2683910))))))))

(declare-fun maxPrefix!4731 (LexerInterface!8190 List!74316 List!74315) Option!17880)

(assert (=> b!7902692 (= lt!2683910 (maxPrefix!4731 thiss!14377 (t!389321 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3778 (LexerInterface!8190 Rule!16996 List!74315) Option!17880)

(assert (=> b!7902692 (= lt!2683912 (maxPrefixOneRule!3778 thiss!14377 (h!80640 rulesArg!141) input!1184))))

(declare-fun b!7902693 () Bool)

(declare-fun res!3135599 () Bool)

(assert (=> b!7902693 (=> res!3135599 e!4664710)))

(declare-fun isDefined!14456 (Option!17880) Bool)

(assert (=> b!7902693 (= res!3135599 (not (isDefined!14456 lt!2683912)))))

(declare-fun b!7902694 () Bool)

(declare-fun res!3135601 () Bool)

(assert (=> b!7902694 (=> res!3135601 e!4664703)))

(declare-fun apply!14333 (TokenValueInjection!17136 BalanceConc!30662) TokenValue!8914)

(declare-fun seqFromList!6151 (List!74315) BalanceConc!30662)

(assert (=> b!7902694 (= res!3135601 (not (= (value!287024 (_1!38414 lt!2683911)) (apply!14333 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911)))))))))

(assert (= (and start!745512 res!3135605) b!7902682))

(assert (= (and b!7902682 res!3135602) b!7902685))

(assert (= (and b!7902685 res!3135596) b!7902681))

(assert (= (and b!7902681 (not res!3135595)) b!7902692))

(assert (= (and b!7902692 (not res!3135600)) b!7902689))

(assert (= (and b!7902689 (not res!3135603)) b!7902693))

(assert (= (and b!7902693 (not res!3135599)) b!7902690))

(assert (= (and b!7902690 (not res!3135597)) b!7902684))

(assert (= (and b!7902684 (not res!3135598)) b!7902686))

(assert (= (and b!7902686 (not res!3135604)) b!7902694))

(assert (= (and b!7902694 (not res!3135601)) b!7902687))

(assert (= b!7902680 b!7902691))

(assert (= b!7902688 b!7902680))

(assert (= (and start!745512 ((_ is Cons!74192) rulesArg!141)) b!7902688))

(assert (= (and start!745512 ((_ is Cons!74191) input!1184)) b!7902683))

(declare-fun m!8277322 () Bool)

(assert (=> b!7902689 m!8277322))

(declare-fun m!8277324 () Bool)

(assert (=> b!7902682 m!8277324))

(declare-fun m!8277326 () Bool)

(assert (=> b!7902692 m!8277326))

(declare-fun m!8277328 () Bool)

(assert (=> b!7902692 m!8277328))

(declare-fun m!8277330 () Bool)

(assert (=> b!7902693 m!8277330))

(declare-fun m!8277332 () Bool)

(assert (=> b!7902690 m!8277332))

(assert (=> b!7902690 m!8277332))

(declare-fun m!8277334 () Bool)

(assert (=> b!7902690 m!8277334))

(declare-fun m!8277336 () Bool)

(assert (=> b!7902690 m!8277336))

(declare-fun m!8277338 () Bool)

(assert (=> b!7902694 m!8277338))

(assert (=> b!7902694 m!8277338))

(declare-fun m!8277340 () Bool)

(assert (=> b!7902694 m!8277340))

(declare-fun m!8277342 () Bool)

(assert (=> b!7902681 m!8277342))

(declare-fun m!8277344 () Bool)

(assert (=> b!7902681 m!8277344))

(declare-fun m!8277346 () Bool)

(assert (=> b!7902680 m!8277346))

(declare-fun m!8277348 () Bool)

(assert (=> b!7902680 m!8277348))

(declare-fun m!8277350 () Bool)

(assert (=> b!7902686 m!8277350))

(declare-fun m!8277352 () Bool)

(assert (=> b!7902685 m!8277352))

(declare-fun m!8277354 () Bool)

(assert (=> b!7902684 m!8277354))

(declare-fun m!8277356 () Bool)

(assert (=> b!7902684 m!8277356))

(declare-fun m!8277358 () Bool)

(assert (=> b!7902687 m!8277358))

(check-sat (not b!7902689) (not b!7902688) (not b!7902693) (not b!7902683) (not b!7902680) b_and!352813 (not b_next!135573) (not b_next!135575) tp_is_empty!52977 (not b!7902685) (not b!7902686) b_and!352811 (not b!7902692) (not b!7902684) (not b!7902682) (not b!7902690) (not b!7902681) (not b!7902687) (not b!7902694))
(check-sat b_and!352813 b_and!352811 (not b_next!135575) (not b_next!135573))
(get-model)

(declare-fun b!7902726 () Bool)

(declare-fun res!3135639 () Bool)

(declare-fun e!4664728 () Bool)

(assert (=> b!7902726 (=> (not res!3135639) (not e!4664728))))

(declare-fun lt!2683922 () List!74315)

(assert (=> b!7902726 (= res!3135639 (= (size!42991 lt!2683922) (+ (size!42991 lt!2683914) (size!42991 (_2!38414 lt!2683911)))))))

(declare-fun b!7902728 () Bool)

(assert (=> b!7902728 (= e!4664728 (or (not (= (_2!38414 lt!2683911) Nil!74191)) (= lt!2683922 lt!2683914)))))

(declare-fun d!2358589 () Bool)

(assert (=> d!2358589 e!4664728))

(declare-fun res!3135638 () Bool)

(assert (=> d!2358589 (=> (not res!3135638) (not e!4664728))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15715 (List!74315) (InoxSet C!42932))

(assert (=> d!2358589 (= res!3135638 (= (content!15715 lt!2683922) ((_ map or) (content!15715 lt!2683914) (content!15715 (_2!38414 lt!2683911)))))))

(declare-fun e!4664729 () List!74315)

(assert (=> d!2358589 (= lt!2683922 e!4664729)))

(declare-fun c!1450242 () Bool)

(assert (=> d!2358589 (= c!1450242 ((_ is Nil!74191) lt!2683914))))

(assert (=> d!2358589 (= (++!18160 lt!2683914 (_2!38414 lt!2683911)) lt!2683922)))

(declare-fun b!7902725 () Bool)

(assert (=> b!7902725 (= e!4664729 (Cons!74191 (h!80639 lt!2683914) (++!18160 (t!389320 lt!2683914) (_2!38414 lt!2683911))))))

(declare-fun b!7902724 () Bool)

(assert (=> b!7902724 (= e!4664729 (_2!38414 lt!2683911))))

(assert (= (and d!2358589 c!1450242) b!7902724))

(assert (= (and d!2358589 (not c!1450242)) b!7902725))

(assert (= (and d!2358589 res!3135638) b!7902726))

(assert (= (and b!7902726 res!3135639) b!7902728))

(declare-fun m!8277376 () Bool)

(assert (=> b!7902726 m!8277376))

(declare-fun m!8277378 () Bool)

(assert (=> b!7902726 m!8277378))

(assert (=> b!7902726 m!8277354))

(declare-fun m!8277380 () Bool)

(assert (=> d!2358589 m!8277380))

(declare-fun m!8277382 () Bool)

(assert (=> d!2358589 m!8277382))

(declare-fun m!8277384 () Bool)

(assert (=> d!2358589 m!8277384))

(declare-fun m!8277386 () Bool)

(assert (=> b!7902725 m!8277386))

(assert (=> b!7902686 d!2358589))

(declare-fun b!7902779 () Bool)

(declare-fun e!4664776 () Bool)

(declare-fun e!4664771 () Bool)

(assert (=> b!7902779 (= e!4664776 e!4664771)))

(declare-fun c!1450253 () Bool)

(assert (=> b!7902779 (= c!1450253 ((_ is Union!21301) (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))

(declare-fun b!7902780 () Bool)

(declare-fun e!4664775 () Bool)

(assert (=> b!7902780 (= e!4664776 e!4664775)))

(declare-fun res!3135671 () Bool)

(declare-fun nullable!9484 (Regex!21301) Bool)

(assert (=> b!7902780 (= res!3135671 (not (nullable!9484 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))

(assert (=> b!7902780 (=> (not res!3135671) (not e!4664775))))

(declare-fun b!7902781 () Bool)

(declare-fun e!4664772 () Bool)

(declare-fun call!733250 () Bool)

(assert (=> b!7902781 (= e!4664772 call!733250)))

(declare-fun bm!733245 () Bool)

(declare-fun call!733252 () Bool)

(assert (=> bm!733245 (= call!733250 call!733252)))

(declare-fun d!2358601 () Bool)

(declare-fun res!3135673 () Bool)

(declare-fun e!4664770 () Bool)

(assert (=> d!2358601 (=> res!3135673 e!4664770)))

(assert (=> d!2358601 (= res!3135673 ((_ is ElementMatch!21301) (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))

(assert (=> d!2358601 (= (validRegex!11647 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) e!4664770)))

(declare-fun b!7902782 () Bool)

(declare-fun e!4664773 () Bool)

(declare-fun e!4664774 () Bool)

(assert (=> b!7902782 (= e!4664773 e!4664774)))

(declare-fun res!3135674 () Bool)

(assert (=> b!7902782 (=> (not res!3135674) (not e!4664774))))

(assert (=> b!7902782 (= res!3135674 call!733250)))

(declare-fun b!7902783 () Bool)

(declare-fun res!3135672 () Bool)

(assert (=> b!7902783 (=> res!3135672 e!4664773)))

(assert (=> b!7902783 (= res!3135672 (not ((_ is Concat!30216) (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))

(assert (=> b!7902783 (= e!4664771 e!4664773)))

(declare-fun b!7902784 () Bool)

(assert (=> b!7902784 (= e!4664775 call!733252)))

(declare-fun b!7902785 () Bool)

(declare-fun call!733251 () Bool)

(assert (=> b!7902785 (= e!4664774 call!733251)))

(declare-fun b!7902786 () Bool)

(declare-fun res!3135675 () Bool)

(assert (=> b!7902786 (=> (not res!3135675) (not e!4664772))))

(assert (=> b!7902786 (= res!3135675 call!733251)))

(assert (=> b!7902786 (= e!4664771 e!4664772)))

(declare-fun bm!733246 () Bool)

(declare-fun c!1450254 () Bool)

(assert (=> bm!733246 (= call!733252 (validRegex!11647 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))

(declare-fun bm!733247 () Bool)

(assert (=> bm!733247 (= call!733251 (validRegex!11647 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))

(declare-fun b!7902787 () Bool)

(assert (=> b!7902787 (= e!4664770 e!4664776)))

(assert (=> b!7902787 (= c!1450254 ((_ is Star!21301) (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))

(assert (= (and d!2358601 (not res!3135673)) b!7902787))

(assert (= (and b!7902787 c!1450254) b!7902780))

(assert (= (and b!7902787 (not c!1450254)) b!7902779))

(assert (= (and b!7902780 res!3135671) b!7902784))

(assert (= (and b!7902779 c!1450253) b!7902786))

(assert (= (and b!7902779 (not c!1450253)) b!7902783))

(assert (= (and b!7902786 res!3135675) b!7902781))

(assert (= (and b!7902783 (not res!3135672)) b!7902782))

(assert (= (and b!7902782 res!3135674) b!7902785))

(assert (= (or b!7902786 b!7902785) bm!733247))

(assert (= (or b!7902781 b!7902782) bm!733245))

(assert (= (or b!7902784 bm!733245) bm!733246))

(declare-fun m!8277402 () Bool)

(assert (=> b!7902780 m!8277402))

(declare-fun m!8277404 () Bool)

(assert (=> bm!733246 m!8277404))

(declare-fun m!8277406 () Bool)

(assert (=> bm!733247 m!8277406))

(assert (=> b!7902687 d!2358601))

(declare-fun d!2358609 () Bool)

(declare-fun dynLambda!30056 (Int BalanceConc!30662) TokenValue!8914)

(assert (=> d!2358609 (= (apply!14333 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911)))) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911)))))))

(declare-fun b_lambda!289731 () Bool)

(assert (=> (not b_lambda!289731) (not d!2358609)))

(declare-fun t!389323 () Bool)

(declare-fun tb!262847 () Bool)

(assert (=> (and b!7902691 (= (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389323) tb!262847))

(declare-fun result!359910 () Bool)

(declare-fun inv!21 (TokenValue!8914) Bool)

(assert (=> tb!262847 (= result!359910 (inv!21 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(declare-fun m!8277408 () Bool)

(assert (=> tb!262847 m!8277408))

(assert (=> d!2358609 t!389323))

(declare-fun b_and!352815 () Bool)

(assert (= b_and!352811 (and (=> t!389323 result!359910) b_and!352815)))

(assert (=> d!2358609 m!8277338))

(declare-fun m!8277410 () Bool)

(assert (=> d!2358609 m!8277410))

(assert (=> b!7902694 d!2358609))

(declare-fun d!2358611 () Bool)

(declare-fun fromListB!2776 (List!74315) BalanceConc!30662)

(assert (=> d!2358611 (= (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))) (fromListB!2776 (originalCharacters!8839 (_1!38414 lt!2683911))))))

(declare-fun bs!1968008 () Bool)

(assert (= bs!1968008 d!2358611))

(declare-fun m!8277412 () Bool)

(assert (=> bs!1968008 m!8277412))

(assert (=> b!7902694 d!2358611))

(declare-fun d!2358613 () Bool)

(declare-fun lt!2683931 () Int)

(assert (=> d!2358613 (>= lt!2683931 0)))

(declare-fun e!4664786 () Int)

(assert (=> d!2358613 (= lt!2683931 e!4664786)))

(declare-fun c!1450257 () Bool)

(assert (=> d!2358613 (= c!1450257 ((_ is Nil!74191) (_2!38414 lt!2683911)))))

(assert (=> d!2358613 (= (size!42991 (_2!38414 lt!2683911)) lt!2683931)))

(declare-fun b!7902798 () Bool)

(assert (=> b!7902798 (= e!4664786 0)))

(declare-fun b!7902799 () Bool)

(assert (=> b!7902799 (= e!4664786 (+ 1 (size!42991 (t!389320 (_2!38414 lt!2683911)))))))

(assert (= (and d!2358613 c!1450257) b!7902798))

(assert (= (and d!2358613 (not c!1450257)) b!7902799))

(declare-fun m!8277414 () Bool)

(assert (=> b!7902799 m!8277414))

(assert (=> b!7902684 d!2358613))

(declare-fun d!2358615 () Bool)

(declare-fun lt!2683932 () Int)

(assert (=> d!2358615 (>= lt!2683932 0)))

(declare-fun e!4664787 () Int)

(assert (=> d!2358615 (= lt!2683932 e!4664787)))

(declare-fun c!1450258 () Bool)

(assert (=> d!2358615 (= c!1450258 ((_ is Nil!74191) input!1184))))

(assert (=> d!2358615 (= (size!42991 input!1184) lt!2683932)))

(declare-fun b!7902800 () Bool)

(assert (=> b!7902800 (= e!4664787 0)))

(declare-fun b!7902801 () Bool)

(assert (=> b!7902801 (= e!4664787 (+ 1 (size!42991 (t!389320 input!1184))))))

(assert (= (and d!2358615 c!1450258) b!7902800))

(assert (= (and d!2358615 (not c!1450258)) b!7902801))

(declare-fun m!8277416 () Bool)

(assert (=> b!7902801 m!8277416))

(assert (=> b!7902684 d!2358615))

(declare-fun d!2358617 () Bool)

(assert (=> d!2358617 (= (isEmpty!42564 rulesArg!141) ((_ is Nil!74192) rulesArg!141))))

(assert (=> b!7902685 d!2358617))

(declare-fun b!7902811 () Bool)

(declare-fun res!3135691 () Bool)

(declare-fun e!4664795 () Bool)

(assert (=> b!7902811 (=> (not res!3135691) (not e!4664795))))

(declare-fun head!16145 (List!74315) C!42932)

(assert (=> b!7902811 (= res!3135691 (= (head!16145 input!1184) (head!16145 input!1184)))))

(declare-fun d!2358619 () Bool)

(declare-fun e!4664794 () Bool)

(assert (=> d!2358619 e!4664794))

(declare-fun res!3135689 () Bool)

(assert (=> d!2358619 (=> res!3135689 e!4664794)))

(declare-fun lt!2683935 () Bool)

(assert (=> d!2358619 (= res!3135689 (not lt!2683935))))

(declare-fun e!4664796 () Bool)

(assert (=> d!2358619 (= lt!2683935 e!4664796)))

(declare-fun res!3135688 () Bool)

(assert (=> d!2358619 (=> res!3135688 e!4664796)))

(assert (=> d!2358619 (= res!3135688 ((_ is Nil!74191) input!1184))))

(assert (=> d!2358619 (= (isPrefix!6431 input!1184 input!1184) lt!2683935)))

(declare-fun b!7902810 () Bool)

(assert (=> b!7902810 (= e!4664796 e!4664795)))

(declare-fun res!3135690 () Bool)

(assert (=> b!7902810 (=> (not res!3135690) (not e!4664795))))

(assert (=> b!7902810 (= res!3135690 (not ((_ is Nil!74191) input!1184)))))

(declare-fun b!7902812 () Bool)

(declare-fun tail!15688 (List!74315) List!74315)

(assert (=> b!7902812 (= e!4664795 (isPrefix!6431 (tail!15688 input!1184) (tail!15688 input!1184)))))

(declare-fun b!7902813 () Bool)

(assert (=> b!7902813 (= e!4664794 (>= (size!42991 input!1184) (size!42991 input!1184)))))

(assert (= (and d!2358619 (not res!3135688)) b!7902810))

(assert (= (and b!7902810 res!3135690) b!7902811))

(assert (= (and b!7902811 res!3135691) b!7902812))

(assert (= (and d!2358619 (not res!3135689)) b!7902813))

(declare-fun m!8277418 () Bool)

(assert (=> b!7902811 m!8277418))

(assert (=> b!7902811 m!8277418))

(declare-fun m!8277420 () Bool)

(assert (=> b!7902812 m!8277420))

(assert (=> b!7902812 m!8277420))

(assert (=> b!7902812 m!8277420))

(assert (=> b!7902812 m!8277420))

(declare-fun m!8277422 () Bool)

(assert (=> b!7902812 m!8277422))

(assert (=> b!7902813 m!8277356))

(assert (=> b!7902813 m!8277356))

(assert (=> b!7902681 d!2358619))

(declare-fun d!2358621 () Bool)

(assert (=> d!2358621 (isPrefix!6431 input!1184 input!1184)))

(declare-fun lt!2683938 () Unit!169221)

(declare-fun choose!59717 (List!74315 List!74315) Unit!169221)

(assert (=> d!2358621 (= lt!2683938 (choose!59717 input!1184 input!1184))))

(assert (=> d!2358621 (= (lemmaIsPrefixRefl!3942 input!1184 input!1184) lt!2683938)))

(declare-fun bs!1968009 () Bool)

(assert (= bs!1968009 d!2358621))

(assert (=> bs!1968009 m!8277342))

(declare-fun m!8277424 () Bool)

(assert (=> bs!1968009 m!8277424))

(assert (=> b!7902681 d!2358621))

(declare-fun b!7902832 () Bool)

(declare-fun e!4664805 () Bool)

(declare-fun lt!2683951 () Option!17880)

(declare-fun contains!20888 (List!74316 Rule!16996) Bool)

(assert (=> b!7902832 (= e!4664805 (contains!20888 (t!389321 rulesArg!141) (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))

(declare-fun b!7902833 () Bool)

(declare-fun e!4664804 () Option!17880)

(declare-fun call!733255 () Option!17880)

(assert (=> b!7902833 (= e!4664804 call!733255)))

(declare-fun b!7902834 () Bool)

(declare-fun res!3135712 () Bool)

(assert (=> b!7902834 (=> (not res!3135712) (not e!4664805))))

(assert (=> b!7902834 (= res!3135712 (< (size!42991 (_2!38414 (get!26651 lt!2683951))) (size!42991 input!1184)))))

(declare-fun b!7902835 () Bool)

(declare-fun res!3135710 () Bool)

(assert (=> b!7902835 (=> (not res!3135710) (not e!4664805))))

(assert (=> b!7902835 (= res!3135710 (= (value!287024 (_1!38414 (get!26651 lt!2683951))) (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun b!7902836 () Bool)

(declare-fun lt!2683952 () Option!17880)

(declare-fun lt!2683953 () Option!17880)

(assert (=> b!7902836 (= e!4664804 (ite (and ((_ is None!17879) lt!2683952) ((_ is None!17879) lt!2683953)) None!17879 (ite ((_ is None!17879) lt!2683953) lt!2683952 (ite ((_ is None!17879) lt!2683952) lt!2683953 (ite (>= (size!42990 (_1!38414 (v!55020 lt!2683952))) (size!42990 (_1!38414 (v!55020 lt!2683953)))) lt!2683952 lt!2683953)))))))

(assert (=> b!7902836 (= lt!2683952 call!733255)))

(assert (=> b!7902836 (= lt!2683953 (maxPrefix!4731 thiss!14377 (t!389321 (t!389321 rulesArg!141)) input!1184))))

(declare-fun d!2358623 () Bool)

(declare-fun e!4664803 () Bool)

(assert (=> d!2358623 e!4664803))

(declare-fun res!3135706 () Bool)

(assert (=> d!2358623 (=> res!3135706 e!4664803)))

(assert (=> d!2358623 (= res!3135706 (isEmpty!42565 lt!2683951))))

(assert (=> d!2358623 (= lt!2683951 e!4664804)))

(declare-fun c!1450261 () Bool)

(assert (=> d!2358623 (= c!1450261 (and ((_ is Cons!74192) (t!389321 rulesArg!141)) ((_ is Nil!74192) (t!389321 (t!389321 rulesArg!141)))))))

(declare-fun lt!2683950 () Unit!169221)

(declare-fun lt!2683949 () Unit!169221)

(assert (=> d!2358623 (= lt!2683950 lt!2683949)))

(assert (=> d!2358623 (isPrefix!6431 input!1184 input!1184)))

(assert (=> d!2358623 (= lt!2683949 (lemmaIsPrefixRefl!3942 input!1184 input!1184))))

(assert (=> d!2358623 (rulesValidInductive!3409 thiss!14377 (t!389321 rulesArg!141))))

(assert (=> d!2358623 (= (maxPrefix!4731 thiss!14377 (t!389321 rulesArg!141) input!1184) lt!2683951)))

(declare-fun b!7902837 () Bool)

(declare-fun res!3135708 () Bool)

(assert (=> b!7902837 (=> (not res!3135708) (not e!4664805))))

(assert (=> b!7902837 (= res!3135708 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))) (_2!38414 (get!26651 lt!2683951))) input!1184))))

(declare-fun b!7902838 () Bool)

(declare-fun res!3135709 () Bool)

(assert (=> b!7902838 (=> (not res!3135709) (not e!4664805))))

(declare-fun matchR!10646 (Regex!21301 List!74315) Bool)

(assert (=> b!7902838 (= res!3135709 (matchR!10646 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun b!7902839 () Bool)

(declare-fun res!3135711 () Bool)

(assert (=> b!7902839 (=> (not res!3135711) (not e!4664805))))

(assert (=> b!7902839 (= res!3135711 (= (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))) (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951)))))))

(declare-fun bm!733250 () Bool)

(assert (=> bm!733250 (= call!733255 (maxPrefixOneRule!3778 thiss!14377 (h!80640 (t!389321 rulesArg!141)) input!1184))))

(declare-fun b!7902840 () Bool)

(assert (=> b!7902840 (= e!4664803 e!4664805)))

(declare-fun res!3135707 () Bool)

(assert (=> b!7902840 (=> (not res!3135707) (not e!4664805))))

(assert (=> b!7902840 (= res!3135707 (isDefined!14456 lt!2683951))))

(assert (= (and d!2358623 c!1450261) b!7902833))

(assert (= (and d!2358623 (not c!1450261)) b!7902836))

(assert (= (or b!7902833 b!7902836) bm!733250))

(assert (= (and d!2358623 (not res!3135706)) b!7902840))

(assert (= (and b!7902840 res!3135707) b!7902839))

(assert (= (and b!7902839 res!3135711) b!7902834))

(assert (= (and b!7902834 res!3135712) b!7902837))

(assert (= (and b!7902837 res!3135708) b!7902835))

(assert (= (and b!7902835 res!3135710) b!7902838))

(assert (= (and b!7902838 res!3135709) b!7902832))

(declare-fun m!8277426 () Bool)

(assert (=> b!7902839 m!8277426))

(declare-fun m!8277428 () Bool)

(assert (=> b!7902839 m!8277428))

(assert (=> b!7902839 m!8277428))

(declare-fun m!8277430 () Bool)

(assert (=> b!7902839 m!8277430))

(assert (=> b!7902834 m!8277426))

(declare-fun m!8277432 () Bool)

(assert (=> b!7902834 m!8277432))

(assert (=> b!7902834 m!8277356))

(declare-fun m!8277434 () Bool)

(assert (=> d!2358623 m!8277434))

(assert (=> d!2358623 m!8277342))

(assert (=> d!2358623 m!8277344))

(declare-fun m!8277436 () Bool)

(assert (=> d!2358623 m!8277436))

(assert (=> b!7902835 m!8277426))

(declare-fun m!8277438 () Bool)

(assert (=> b!7902835 m!8277438))

(assert (=> b!7902835 m!8277438))

(declare-fun m!8277440 () Bool)

(assert (=> b!7902835 m!8277440))

(assert (=> b!7902832 m!8277426))

(declare-fun m!8277442 () Bool)

(assert (=> b!7902832 m!8277442))

(declare-fun m!8277444 () Bool)

(assert (=> b!7902840 m!8277444))

(assert (=> b!7902838 m!8277426))

(assert (=> b!7902838 m!8277428))

(assert (=> b!7902838 m!8277428))

(assert (=> b!7902838 m!8277430))

(assert (=> b!7902838 m!8277430))

(declare-fun m!8277446 () Bool)

(assert (=> b!7902838 m!8277446))

(declare-fun m!8277448 () Bool)

(assert (=> bm!733250 m!8277448))

(assert (=> b!7902837 m!8277426))

(assert (=> b!7902837 m!8277428))

(assert (=> b!7902837 m!8277428))

(assert (=> b!7902837 m!8277430))

(assert (=> b!7902837 m!8277430))

(declare-fun m!8277450 () Bool)

(assert (=> b!7902837 m!8277450))

(declare-fun m!8277452 () Bool)

(assert (=> b!7902836 m!8277452))

(assert (=> b!7902692 d!2358623))

(declare-fun b!7902859 () Bool)

(declare-fun res!3135731 () Bool)

(declare-fun e!4664817 () Bool)

(assert (=> b!7902859 (=> (not res!3135731) (not e!4664817))))

(declare-fun lt!2683967 () Option!17880)

(assert (=> b!7902859 (= res!3135731 (= (rule!11886 (_1!38414 (get!26651 lt!2683967))) (h!80640 rulesArg!141)))))

(declare-fun b!7902860 () Bool)

(assert (=> b!7902860 (= e!4664817 (= (size!42990 (_1!38414 (get!26651 lt!2683967))) (size!42991 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967))))))))

(declare-fun d!2358625 () Bool)

(declare-fun e!4664815 () Bool)

(assert (=> d!2358625 e!4664815))

(declare-fun res!3135732 () Bool)

(assert (=> d!2358625 (=> res!3135732 e!4664815)))

(assert (=> d!2358625 (= res!3135732 (isEmpty!42565 lt!2683967))))

(declare-fun e!4664814 () Option!17880)

(assert (=> d!2358625 (= lt!2683967 e!4664814)))

(declare-fun c!1450264 () Bool)

(declare-datatypes ((tuple2!70226 0))(
  ( (tuple2!70227 (_1!38416 List!74315) (_2!38416 List!74315)) )
))
(declare-fun lt!2683964 () tuple2!70226)

(declare-fun isEmpty!42567 (List!74315) Bool)

(assert (=> d!2358625 (= c!1450264 (isEmpty!42567 (_1!38416 lt!2683964)))))

(declare-fun findLongestMatch!1920 (Regex!21301 List!74315) tuple2!70226)

(assert (=> d!2358625 (= lt!2683964 (findLongestMatch!1920 (regex!8598 (h!80640 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3934 (LexerInterface!8190 Rule!16996) Bool)

(assert (=> d!2358625 (ruleValid!3934 thiss!14377 (h!80640 rulesArg!141))))

(assert (=> d!2358625 (= (maxPrefixOneRule!3778 thiss!14377 (h!80640 rulesArg!141) input!1184) lt!2683967)))

(declare-fun b!7902861 () Bool)

(assert (=> b!7902861 (= e!4664815 e!4664817)))

(declare-fun res!3135728 () Bool)

(assert (=> b!7902861 (=> (not res!3135728) (not e!4664817))))

(assert (=> b!7902861 (= res!3135728 (matchR!10646 (regex!8598 (h!80640 rulesArg!141)) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))

(declare-fun b!7902862 () Bool)

(assert (=> b!7902862 (= e!4664814 None!17879)))

(declare-fun b!7902863 () Bool)

(declare-fun res!3135727 () Bool)

(assert (=> b!7902863 (=> (not res!3135727) (not e!4664817))))

(assert (=> b!7902863 (= res!3135727 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))) (_2!38414 (get!26651 lt!2683967))) input!1184))))

(declare-fun b!7902864 () Bool)

(declare-fun res!3135733 () Bool)

(assert (=> b!7902864 (=> (not res!3135733) (not e!4664817))))

(assert (=> b!7902864 (= res!3135733 (= (value!287024 (_1!38414 (get!26651 lt!2683967))) (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))))))))

(declare-fun b!7902865 () Bool)

(declare-fun size!42993 (BalanceConc!30662) Int)

(assert (=> b!7902865 (= e!4664814 (Some!17879 (tuple2!70223 (Token!15617 (apply!14333 (transformation!8598 (h!80640 rulesArg!141)) (seqFromList!6151 (_1!38416 lt!2683964))) (h!80640 rulesArg!141) (size!42993 (seqFromList!6151 (_1!38416 lt!2683964))) (_1!38416 lt!2683964)) (_2!38416 lt!2683964))))))

(declare-fun lt!2683965 () Unit!169221)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2116 (Regex!21301 List!74315) Unit!169221)

(assert (=> b!7902865 (= lt!2683965 (longestMatchIsAcceptedByMatchOrIsEmpty!2116 (regex!8598 (h!80640 rulesArg!141)) input!1184))))

(declare-fun res!3135730 () Bool)

(declare-fun findLongestMatchInner!2153 (Regex!21301 List!74315 Int List!74315 List!74315 Int) tuple2!70226)

(assert (=> b!7902865 (= res!3135730 (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(declare-fun e!4664816 () Bool)

(assert (=> b!7902865 (=> res!3135730 e!4664816)))

(assert (=> b!7902865 e!4664816))

(declare-fun lt!2683966 () Unit!169221)

(assert (=> b!7902865 (= lt!2683966 lt!2683965)))

(declare-fun lt!2683968 () Unit!169221)

(declare-fun lemmaSemiInverse!2663 (TokenValueInjection!17136 BalanceConc!30662) Unit!169221)

(assert (=> b!7902865 (= lt!2683968 (lemmaSemiInverse!2663 (transformation!8598 (h!80640 rulesArg!141)) (seqFromList!6151 (_1!38416 lt!2683964))))))

(declare-fun b!7902866 () Bool)

(declare-fun res!3135729 () Bool)

(assert (=> b!7902866 (=> (not res!3135729) (not e!4664817))))

(assert (=> b!7902866 (= res!3135729 (< (size!42991 (_2!38414 (get!26651 lt!2683967))) (size!42991 input!1184)))))

(declare-fun b!7902867 () Bool)

(assert (=> b!7902867 (= e!4664816 (matchR!10646 (regex!8598 (h!80640 rulesArg!141)) (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(assert (= (and d!2358625 c!1450264) b!7902862))

(assert (= (and d!2358625 (not c!1450264)) b!7902865))

(assert (= (and b!7902865 (not res!3135730)) b!7902867))

(assert (= (and d!2358625 (not res!3135732)) b!7902861))

(assert (= (and b!7902861 res!3135728) b!7902863))

(assert (= (and b!7902863 res!3135727) b!7902866))

(assert (= (and b!7902866 res!3135729) b!7902859))

(assert (= (and b!7902859 res!3135731) b!7902864))

(assert (= (and b!7902864 res!3135733) b!7902860))

(declare-fun m!8277454 () Bool)

(assert (=> b!7902867 m!8277454))

(assert (=> b!7902867 m!8277356))

(assert (=> b!7902867 m!8277454))

(assert (=> b!7902867 m!8277356))

(declare-fun m!8277456 () Bool)

(assert (=> b!7902867 m!8277456))

(declare-fun m!8277458 () Bool)

(assert (=> b!7902867 m!8277458))

(declare-fun m!8277460 () Bool)

(assert (=> d!2358625 m!8277460))

(declare-fun m!8277462 () Bool)

(assert (=> d!2358625 m!8277462))

(declare-fun m!8277464 () Bool)

(assert (=> d!2358625 m!8277464))

(declare-fun m!8277466 () Bool)

(assert (=> d!2358625 m!8277466))

(declare-fun m!8277468 () Bool)

(assert (=> b!7902864 m!8277468))

(declare-fun m!8277470 () Bool)

(assert (=> b!7902864 m!8277470))

(assert (=> b!7902864 m!8277470))

(declare-fun m!8277472 () Bool)

(assert (=> b!7902864 m!8277472))

(assert (=> b!7902866 m!8277468))

(declare-fun m!8277474 () Bool)

(assert (=> b!7902866 m!8277474))

(assert (=> b!7902866 m!8277356))

(assert (=> b!7902861 m!8277468))

(declare-fun m!8277476 () Bool)

(assert (=> b!7902861 m!8277476))

(assert (=> b!7902861 m!8277476))

(declare-fun m!8277478 () Bool)

(assert (=> b!7902861 m!8277478))

(assert (=> b!7902861 m!8277478))

(declare-fun m!8277480 () Bool)

(assert (=> b!7902861 m!8277480))

(assert (=> b!7902863 m!8277468))

(assert (=> b!7902863 m!8277476))

(assert (=> b!7902863 m!8277476))

(assert (=> b!7902863 m!8277478))

(assert (=> b!7902863 m!8277478))

(declare-fun m!8277482 () Bool)

(assert (=> b!7902863 m!8277482))

(assert (=> b!7902859 m!8277468))

(declare-fun m!8277484 () Bool)

(assert (=> b!7902865 m!8277484))

(assert (=> b!7902865 m!8277454))

(assert (=> b!7902865 m!8277356))

(assert (=> b!7902865 m!8277456))

(declare-fun m!8277486 () Bool)

(assert (=> b!7902865 m!8277486))

(declare-fun m!8277488 () Bool)

(assert (=> b!7902865 m!8277488))

(assert (=> b!7902865 m!8277486))

(declare-fun m!8277490 () Bool)

(assert (=> b!7902865 m!8277490))

(assert (=> b!7902865 m!8277486))

(declare-fun m!8277492 () Bool)

(assert (=> b!7902865 m!8277492))

(assert (=> b!7902865 m!8277356))

(assert (=> b!7902865 m!8277454))

(assert (=> b!7902865 m!8277486))

(declare-fun m!8277494 () Bool)

(assert (=> b!7902865 m!8277494))

(assert (=> b!7902860 m!8277468))

(declare-fun m!8277496 () Bool)

(assert (=> b!7902860 m!8277496))

(assert (=> b!7902692 d!2358625))

(declare-fun d!2358627 () Bool)

(assert (=> d!2358627 (= (isDefined!14456 lt!2683912) (not (isEmpty!42565 lt!2683912)))))

(declare-fun bs!1968010 () Bool)

(assert (= bs!1968010 d!2358627))

(assert (=> bs!1968010 m!8277322))

(assert (=> b!7902693 d!2358627))

(declare-fun d!2358629 () Bool)

(assert (=> d!2358629 true))

(declare-fun lt!2684009 () Bool)

(declare-fun lambda!472445 () Int)

(declare-fun forall!18443 (List!74316 Int) Bool)

(assert (=> d!2358629 (= lt!2684009 (forall!18443 rulesArg!141 lambda!472445))))

(declare-fun e!4664873 () Bool)

(assert (=> d!2358629 (= lt!2684009 e!4664873)))

(declare-fun res!3135783 () Bool)

(assert (=> d!2358629 (=> res!3135783 e!4664873)))

(assert (=> d!2358629 (= res!3135783 (not ((_ is Cons!74192) rulesArg!141)))))

(assert (=> d!2358629 (= (rulesValidInductive!3409 thiss!14377 rulesArg!141) lt!2684009)))

(declare-fun b!7902975 () Bool)

(declare-fun e!4664874 () Bool)

(assert (=> b!7902975 (= e!4664873 e!4664874)))

(declare-fun res!3135782 () Bool)

(assert (=> b!7902975 (=> (not res!3135782) (not e!4664874))))

(assert (=> b!7902975 (= res!3135782 (ruleValid!3934 thiss!14377 (h!80640 rulesArg!141)))))

(declare-fun b!7902976 () Bool)

(assert (=> b!7902976 (= e!4664874 (rulesValidInductive!3409 thiss!14377 (t!389321 rulesArg!141)))))

(assert (= (and d!2358629 (not res!3135783)) b!7902975))

(assert (= (and b!7902975 res!3135782) b!7902976))

(declare-fun m!8277596 () Bool)

(assert (=> d!2358629 m!8277596))

(assert (=> b!7902975 m!8277466))

(assert (=> b!7902976 m!8277436))

(assert (=> b!7902682 d!2358629))

(declare-fun d!2358651 () Bool)

(assert (=> d!2358651 (= (isEmpty!42565 lt!2683912) (not ((_ is Some!17879) lt!2683912)))))

(assert (=> b!7902689 d!2358651))

(declare-fun d!2358653 () Bool)

(declare-fun list!19227 (Conc!15772) List!74315)

(assert (=> d!2358653 (= (list!19225 (charsOf!5542 (_1!38414 lt!2683911))) (list!19227 (c!1450235 (charsOf!5542 (_1!38414 lt!2683911)))))))

(declare-fun bs!1968013 () Bool)

(assert (= bs!1968013 d!2358653))

(declare-fun m!8277598 () Bool)

(assert (=> bs!1968013 m!8277598))

(assert (=> b!7902690 d!2358653))

(declare-fun d!2358655 () Bool)

(declare-fun lt!2684012 () BalanceConc!30662)

(assert (=> d!2358655 (= (list!19225 lt!2684012) (originalCharacters!8839 (_1!38414 lt!2683911)))))

(declare-fun dynLambda!30057 (Int TokenValue!8914) BalanceConc!30662)

(assert (=> d!2358655 (= lt!2684012 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))))

(assert (=> d!2358655 (= (charsOf!5542 (_1!38414 lt!2683911)) lt!2684012)))

(declare-fun b_lambda!289737 () Bool)

(assert (=> (not b_lambda!289737) (not d!2358655)))

(declare-fun t!389333 () Bool)

(declare-fun tb!262857 () Bool)

(assert (=> (and b!7902691 (= (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389333) tb!262857))

(declare-fun b!7902983 () Bool)

(declare-fun e!4664877 () Bool)

(declare-fun tp!2354376 () Bool)

(declare-fun inv!95182 (Conc!15772) Bool)

(assert (=> b!7902983 (= e!4664877 (and (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))) tp!2354376))))

(declare-fun result!359932 () Bool)

(declare-fun inv!95183 (BalanceConc!30662) Bool)

(assert (=> tb!262857 (= result!359932 (and (inv!95183 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))) e!4664877))))

(assert (= tb!262857 b!7902983))

(declare-fun m!8277600 () Bool)

(assert (=> b!7902983 m!8277600))

(declare-fun m!8277602 () Bool)

(assert (=> tb!262857 m!8277602))

(assert (=> d!2358655 t!389333))

(declare-fun b_and!352825 () Bool)

(assert (= b_and!352813 (and (=> t!389333 result!359932) b_and!352825)))

(declare-fun m!8277604 () Bool)

(assert (=> d!2358655 m!8277604))

(declare-fun m!8277606 () Bool)

(assert (=> d!2358655 m!8277606))

(assert (=> b!7902690 d!2358655))

(declare-fun d!2358657 () Bool)

(assert (=> d!2358657 (= (get!26651 lt!2683912) (v!55020 lt!2683912))))

(assert (=> b!7902690 d!2358657))

(declare-fun d!2358659 () Bool)

(assert (=> d!2358659 (= (inv!95177 (tag!9462 (h!80640 rulesArg!141))) (= (mod (str.len (value!287023 (tag!9462 (h!80640 rulesArg!141)))) 2) 0))))

(assert (=> b!7902680 d!2358659))

(declare-fun d!2358661 () Bool)

(declare-fun res!3135786 () Bool)

(declare-fun e!4664880 () Bool)

(assert (=> d!2358661 (=> (not res!3135786) (not e!4664880))))

(declare-fun semiInverseModEq!3813 (Int Int) Bool)

(assert (=> d!2358661 (= res!3135786 (semiInverseModEq!3813 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))))))

(assert (=> d!2358661 (= (inv!95179 (transformation!8598 (h!80640 rulesArg!141))) e!4664880)))

(declare-fun b!7902986 () Bool)

(declare-fun equivClasses!3628 (Int Int) Bool)

(assert (=> b!7902986 (= e!4664880 (equivClasses!3628 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))))))

(assert (= (and d!2358661 res!3135786) b!7902986))

(declare-fun m!8277608 () Bool)

(assert (=> d!2358661 m!8277608))

(declare-fun m!8277610 () Bool)

(assert (=> b!7902986 m!8277610))

(assert (=> b!7902680 d!2358661))

(declare-fun b!7902991 () Bool)

(declare-fun e!4664883 () Bool)

(declare-fun tp!2354379 () Bool)

(assert (=> b!7902991 (= e!4664883 (and tp_is_empty!52977 tp!2354379))))

(assert (=> b!7902683 (= tp!2354340 e!4664883)))

(assert (= (and b!7902683 ((_ is Cons!74191) (t!389320 input!1184))) b!7902991))

(declare-fun b!7903002 () Bool)

(declare-fun b_free!134791 () Bool)

(declare-fun b_next!135581 () Bool)

(assert (=> b!7903002 (= b_free!134791 (not b_next!135581))))

(declare-fun t!389335 () Bool)

(declare-fun tb!262859 () Bool)

(assert (=> (and b!7903002 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389335) tb!262859))

(declare-fun result!359940 () Bool)

(assert (= result!359940 result!359910))

(assert (=> d!2358609 t!389335))

(declare-fun tp!2354391 () Bool)

(declare-fun b_and!352827 () Bool)

(assert (=> b!7903002 (= tp!2354391 (and (=> t!389335 result!359940) b_and!352827))))

(declare-fun b_free!134793 () Bool)

(declare-fun b_next!135583 () Bool)

(assert (=> b!7903002 (= b_free!134793 (not b_next!135583))))

(declare-fun tb!262861 () Bool)

(declare-fun t!389337 () Bool)

(assert (=> (and b!7903002 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389337) tb!262861))

(declare-fun result!359942 () Bool)

(assert (= result!359942 result!359932))

(assert (=> d!2358655 t!389337))

(declare-fun tp!2354390 () Bool)

(declare-fun b_and!352829 () Bool)

(assert (=> b!7903002 (= tp!2354390 (and (=> t!389337 result!359942) b_and!352829))))

(declare-fun e!4664895 () Bool)

(assert (=> b!7903002 (= e!4664895 (and tp!2354391 tp!2354390))))

(declare-fun e!4664894 () Bool)

(declare-fun b!7903001 () Bool)

(declare-fun tp!2354388 () Bool)

(assert (=> b!7903001 (= e!4664894 (and tp!2354388 (inv!95177 (tag!9462 (h!80640 (t!389321 rulesArg!141)))) (inv!95179 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) e!4664895))))

(declare-fun b!7903000 () Bool)

(declare-fun e!4664893 () Bool)

(declare-fun tp!2354389 () Bool)

(assert (=> b!7903000 (= e!4664893 (and e!4664894 tp!2354389))))

(assert (=> b!7902688 (= tp!2354336 e!4664893)))

(assert (= b!7903001 b!7903002))

(assert (= b!7903000 b!7903001))

(assert (= (and b!7902688 ((_ is Cons!74192) (t!389321 rulesArg!141))) b!7903000))

(declare-fun m!8277612 () Bool)

(assert (=> b!7903001 m!8277612))

(declare-fun m!8277614 () Bool)

(assert (=> b!7903001 m!8277614))

(declare-fun e!4664898 () Bool)

(assert (=> b!7902680 (= tp!2354337 e!4664898)))

(declare-fun b!7903013 () Bool)

(assert (=> b!7903013 (= e!4664898 tp_is_empty!52977)))

(declare-fun b!7903014 () Bool)

(declare-fun tp!2354403 () Bool)

(declare-fun tp!2354406 () Bool)

(assert (=> b!7903014 (= e!4664898 (and tp!2354403 tp!2354406))))

(declare-fun b!7903016 () Bool)

(declare-fun tp!2354402 () Bool)

(declare-fun tp!2354405 () Bool)

(assert (=> b!7903016 (= e!4664898 (and tp!2354402 tp!2354405))))

(declare-fun b!7903015 () Bool)

(declare-fun tp!2354404 () Bool)

(assert (=> b!7903015 (= e!4664898 tp!2354404)))

(assert (= (and b!7902680 ((_ is ElementMatch!21301) (regex!8598 (h!80640 rulesArg!141)))) b!7903013))

(assert (= (and b!7902680 ((_ is Concat!30216) (regex!8598 (h!80640 rulesArg!141)))) b!7903014))

(assert (= (and b!7902680 ((_ is Star!21301) (regex!8598 (h!80640 rulesArg!141)))) b!7903015))

(assert (= (and b!7902680 ((_ is Union!21301) (regex!8598 (h!80640 rulesArg!141)))) b!7903016))

(check-sat (not b!7902813) (not d!2358661) (not b!7902836) (not b!7902866) (not d!2358625) (not b!7902861) (not b!7903015) (not b!7902799) (not b!7902726) (not d!2358629) (not tb!262847) (not b!7903001) (not b!7902986) (not b!7902780) (not b!7903016) (not b_lambda!289737) (not b!7902983) (not b!7902976) b_and!352825 (not b!7902812) (not d!2358589) b_and!352829 (not b_next!135573) (not b!7902838) (not bm!733247) (not d!2358627) (not b!7902975) (not b!7902859) (not b_lambda!289731) (not b_next!135581) (not d!2358655) (not b!7902725) (not bm!733246) b_and!352827 (not b!7903000) (not b!7902991) (not b!7903014) (not b!7902811) (not b_next!135575) (not b!7902834) (not b!7902864) (not b_next!135583) (not b!7902835) tp_is_empty!52977 (not d!2358653) (not b!7902860) (not b!7902865) (not tb!262857) (not b!7902867) (not d!2358611) b_and!352815 (not b!7902801) (not d!2358621) (not bm!733250) (not b!7902863) (not b!7902837) (not b!7902832) (not d!2358623) (not b!7902839) (not b!7902840))
(check-sat b_and!352825 b_and!352829 (not b_next!135573) (not b_next!135581) b_and!352827 (not b_next!135575) (not b_next!135583) b_and!352815)
(get-model)

(declare-fun d!2358663 () Bool)

(declare-fun lt!2684013 () Int)

(assert (=> d!2358663 (>= lt!2684013 0)))

(declare-fun e!4664899 () Int)

(assert (=> d!2358663 (= lt!2684013 e!4664899)))

(declare-fun c!1450275 () Bool)

(assert (=> d!2358663 (= c!1450275 ((_ is Nil!74191) (_2!38414 (get!26651 lt!2683951))))))

(assert (=> d!2358663 (= (size!42991 (_2!38414 (get!26651 lt!2683951))) lt!2684013)))

(declare-fun b!7903017 () Bool)

(assert (=> b!7903017 (= e!4664899 0)))

(declare-fun b!7903018 () Bool)

(assert (=> b!7903018 (= e!4664899 (+ 1 (size!42991 (t!389320 (_2!38414 (get!26651 lt!2683951))))))))

(assert (= (and d!2358663 c!1450275) b!7903017))

(assert (= (and d!2358663 (not c!1450275)) b!7903018))

(declare-fun m!8277616 () Bool)

(assert (=> b!7903018 m!8277616))

(assert (=> b!7902834 d!2358663))

(declare-fun d!2358665 () Bool)

(assert (=> d!2358665 (= (get!26651 lt!2683951) (v!55020 lt!2683951))))

(assert (=> b!7902834 d!2358665))

(assert (=> b!7902834 d!2358615))

(assert (=> b!7902835 d!2358665))

(declare-fun d!2358667 () Bool)

(assert (=> d!2358667 (= (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951))))) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun b_lambda!289739 () Bool)

(assert (=> (not b_lambda!289739) (not d!2358667)))

(declare-fun tb!262863 () Bool)

(declare-fun t!389339 () Bool)

(assert (=> (and b!7902691 (= (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389339) tb!262863))

(declare-fun result!359946 () Bool)

(assert (=> tb!262863 (= result!359946 (inv!21 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun m!8277618 () Bool)

(assert (=> tb!262863 m!8277618))

(assert (=> d!2358667 t!389339))

(declare-fun b_and!352831 () Bool)

(assert (= b_and!352815 (and (=> t!389339 result!359946) b_and!352831)))

(declare-fun tb!262865 () Bool)

(declare-fun t!389341 () Bool)

(assert (=> (and b!7903002 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389341) tb!262865))

(declare-fun result!359948 () Bool)

(assert (= result!359948 result!359946))

(assert (=> d!2358667 t!389341))

(declare-fun b_and!352833 () Bool)

(assert (= b_and!352827 (and (=> t!389341 result!359948) b_and!352833)))

(assert (=> d!2358667 m!8277438))

(declare-fun m!8277620 () Bool)

(assert (=> d!2358667 m!8277620))

(assert (=> b!7902835 d!2358667))

(declare-fun d!2358669 () Bool)

(assert (=> d!2358669 (= (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951)))) (fromListB!2776 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951)))))))

(declare-fun bs!1968014 () Bool)

(assert (= bs!1968014 d!2358669))

(declare-fun m!8277622 () Bool)

(assert (=> bs!1968014 m!8277622))

(assert (=> b!7902835 d!2358669))

(declare-fun d!2358671 () Bool)

(assert (=> d!2358671 (= (inv!95177 (tag!9462 (h!80640 (t!389321 rulesArg!141)))) (= (mod (str.len (value!287023 (tag!9462 (h!80640 (t!389321 rulesArg!141))))) 2) 0))))

(assert (=> b!7903001 d!2358671))

(declare-fun d!2358673 () Bool)

(declare-fun res!3135787 () Bool)

(declare-fun e!4664901 () Bool)

(assert (=> d!2358673 (=> (not res!3135787) (not e!4664901))))

(assert (=> d!2358673 (= res!3135787 (semiInverseModEq!3813 (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141))))))))

(assert (=> d!2358673 (= (inv!95179 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) e!4664901)))

(declare-fun b!7903019 () Bool)

(assert (=> b!7903019 (= e!4664901 (equivClasses!3628 (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141))))))))

(assert (= (and d!2358673 res!3135787) b!7903019))

(declare-fun m!8277624 () Bool)

(assert (=> d!2358673 m!8277624))

(declare-fun m!8277626 () Bool)

(assert (=> b!7903019 m!8277626))

(assert (=> b!7903001 d!2358673))

(declare-fun d!2358675 () Bool)

(declare-fun lt!2684016 () Bool)

(declare-fun content!15716 (List!74316) (InoxSet Rule!16996))

(assert (=> d!2358675 (= lt!2684016 (select (content!15716 (t!389321 rulesArg!141)) (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))

(declare-fun e!4664907 () Bool)

(assert (=> d!2358675 (= lt!2684016 e!4664907)))

(declare-fun res!3135792 () Bool)

(assert (=> d!2358675 (=> (not res!3135792) (not e!4664907))))

(assert (=> d!2358675 (= res!3135792 ((_ is Cons!74192) (t!389321 rulesArg!141)))))

(assert (=> d!2358675 (= (contains!20888 (t!389321 rulesArg!141) (rule!11886 (_1!38414 (get!26651 lt!2683951)))) lt!2684016)))

(declare-fun b!7903024 () Bool)

(declare-fun e!4664906 () Bool)

(assert (=> b!7903024 (= e!4664907 e!4664906)))

(declare-fun res!3135793 () Bool)

(assert (=> b!7903024 (=> res!3135793 e!4664906)))

(assert (=> b!7903024 (= res!3135793 (= (h!80640 (t!389321 rulesArg!141)) (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))

(declare-fun b!7903025 () Bool)

(assert (=> b!7903025 (= e!4664906 (contains!20888 (t!389321 (t!389321 rulesArg!141)) (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))

(assert (= (and d!2358675 res!3135792) b!7903024))

(assert (= (and b!7903024 (not res!3135793)) b!7903025))

(declare-fun m!8277628 () Bool)

(assert (=> d!2358675 m!8277628))

(declare-fun m!8277630 () Bool)

(assert (=> d!2358675 m!8277630))

(declare-fun m!8277632 () Bool)

(assert (=> b!7903025 m!8277632))

(assert (=> b!7902832 d!2358675))

(assert (=> b!7902832 d!2358665))

(declare-fun b!7903071 () Bool)

(declare-fun res!3135823 () Bool)

(declare-fun e!4664935 () Bool)

(assert (=> b!7903071 (=> res!3135823 e!4664935)))

(assert (=> b!7903071 (= res!3135823 (not (isEmpty!42567 (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))))

(declare-fun b!7903072 () Bool)

(declare-fun e!4664938 () Bool)

(declare-fun lt!2684020 () Bool)

(assert (=> b!7903072 (= e!4664938 (not lt!2684020))))

(declare-fun b!7903073 () Bool)

(declare-fun res!3135826 () Bool)

(declare-fun e!4664936 () Bool)

(assert (=> b!7903073 (=> (not res!3135826) (not e!4664936))))

(declare-fun call!733264 () Bool)

(assert (=> b!7903073 (= res!3135826 (not call!733264))))

(declare-fun b!7903074 () Bool)

(declare-fun e!4664933 () Bool)

(assert (=> b!7903074 (= e!4664933 (nullable!9484 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun b!7903075 () Bool)

(declare-fun derivativeStep!6427 (Regex!21301 C!42932) Regex!21301)

(assert (=> b!7903075 (= e!4664933 (matchR!10646 (derivativeStep!6427 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))) (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))))) (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun b!7903076 () Bool)

(declare-fun res!3135824 () Bool)

(declare-fun e!4664937 () Bool)

(assert (=> b!7903076 (=> res!3135824 e!4664937)))

(assert (=> b!7903076 (= res!3135824 e!4664936)))

(declare-fun res!3135820 () Bool)

(assert (=> b!7903076 (=> (not res!3135820) (not e!4664936))))

(assert (=> b!7903076 (= res!3135820 lt!2684020)))

(declare-fun b!7903077 () Bool)

(declare-fun e!4664934 () Bool)

(assert (=> b!7903077 (= e!4664934 e!4664935)))

(declare-fun res!3135825 () Bool)

(assert (=> b!7903077 (=> res!3135825 e!4664935)))

(assert (=> b!7903077 (= res!3135825 call!733264)))

(declare-fun b!7903078 () Bool)

(declare-fun res!3135822 () Bool)

(assert (=> b!7903078 (=> res!3135822 e!4664937)))

(assert (=> b!7903078 (= res!3135822 (not ((_ is ElementMatch!21301) (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))))

(assert (=> b!7903078 (= e!4664938 e!4664937)))

(declare-fun b!7903079 () Bool)

(declare-fun res!3135819 () Bool)

(assert (=> b!7903079 (=> (not res!3135819) (not e!4664936))))

(assert (=> b!7903079 (= res!3135819 (isEmpty!42567 (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun b!7903080 () Bool)

(assert (=> b!7903080 (= e!4664935 (not (= (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (c!1450236 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))))))))

(declare-fun b!7903081 () Bool)

(assert (=> b!7903081 (= e!4664937 e!4664934)))

(declare-fun res!3135821 () Bool)

(assert (=> b!7903081 (=> (not res!3135821) (not e!4664934))))

(assert (=> b!7903081 (= res!3135821 (not lt!2684020))))

(declare-fun b!7903082 () Bool)

(assert (=> b!7903082 (= e!4664936 (= (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (c!1450236 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun b!7903083 () Bool)

(declare-fun e!4664932 () Bool)

(assert (=> b!7903083 (= e!4664932 (= lt!2684020 call!733264))))

(declare-fun bm!733259 () Bool)

(assert (=> bm!733259 (= call!733264 (isEmpty!42567 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun b!7903084 () Bool)

(assert (=> b!7903084 (= e!4664932 e!4664938)))

(declare-fun c!1450285 () Bool)

(assert (=> b!7903084 (= c!1450285 ((_ is EmptyLang!21301) (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun d!2358677 () Bool)

(assert (=> d!2358677 e!4664932))

(declare-fun c!1450284 () Bool)

(assert (=> d!2358677 (= c!1450284 ((_ is EmptyExpr!21301) (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))))))

(assert (=> d!2358677 (= lt!2684020 e!4664933)))

(declare-fun c!1450286 () Bool)

(assert (=> d!2358677 (= c!1450286 (isEmpty!42567 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))

(assert (=> d!2358677 (validRegex!11647 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))))

(assert (=> d!2358677 (= (matchR!10646 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) lt!2684020)))

(assert (= (and d!2358677 c!1450286) b!7903074))

(assert (= (and d!2358677 (not c!1450286)) b!7903075))

(assert (= (and d!2358677 c!1450284) b!7903083))

(assert (= (and d!2358677 (not c!1450284)) b!7903084))

(assert (= (and b!7903084 c!1450285) b!7903072))

(assert (= (and b!7903084 (not c!1450285)) b!7903078))

(assert (= (and b!7903078 (not res!3135822)) b!7903076))

(assert (= (and b!7903076 res!3135820) b!7903073))

(assert (= (and b!7903073 res!3135826) b!7903079))

(assert (= (and b!7903079 res!3135819) b!7903082))

(assert (= (and b!7903076 (not res!3135824)) b!7903081))

(assert (= (and b!7903081 res!3135821) b!7903077))

(assert (= (and b!7903077 (not res!3135825)) b!7903071))

(assert (= (and b!7903071 (not res!3135823)) b!7903080))

(assert (= (or b!7903083 b!7903073 b!7903077) bm!733259))

(assert (=> bm!733259 m!8277430))

(declare-fun m!8277652 () Bool)

(assert (=> bm!733259 m!8277652))

(assert (=> b!7903079 m!8277430))

(declare-fun m!8277654 () Bool)

(assert (=> b!7903079 m!8277654))

(assert (=> b!7903079 m!8277654))

(declare-fun m!8277656 () Bool)

(assert (=> b!7903079 m!8277656))

(assert (=> b!7903075 m!8277430))

(declare-fun m!8277658 () Bool)

(assert (=> b!7903075 m!8277658))

(assert (=> b!7903075 m!8277658))

(declare-fun m!8277660 () Bool)

(assert (=> b!7903075 m!8277660))

(assert (=> b!7903075 m!8277430))

(assert (=> b!7903075 m!8277654))

(assert (=> b!7903075 m!8277660))

(assert (=> b!7903075 m!8277654))

(declare-fun m!8277662 () Bool)

(assert (=> b!7903075 m!8277662))

(declare-fun m!8277664 () Bool)

(assert (=> b!7903074 m!8277664))

(assert (=> b!7903080 m!8277430))

(assert (=> b!7903080 m!8277658))

(assert (=> b!7903071 m!8277430))

(assert (=> b!7903071 m!8277654))

(assert (=> b!7903071 m!8277654))

(assert (=> b!7903071 m!8277656))

(assert (=> d!2358677 m!8277430))

(assert (=> d!2358677 m!8277652))

(declare-fun m!8277666 () Bool)

(assert (=> d!2358677 m!8277666))

(assert (=> b!7903082 m!8277430))

(assert (=> b!7903082 m!8277658))

(assert (=> b!7902838 d!2358677))

(assert (=> b!7902838 d!2358665))

(declare-fun d!2358695 () Bool)

(assert (=> d!2358695 (= (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))) (list!19227 (c!1450235 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))

(declare-fun bs!1968017 () Bool)

(assert (= bs!1968017 d!2358695))

(declare-fun m!8277668 () Bool)

(assert (=> bs!1968017 m!8277668))

(assert (=> b!7902838 d!2358695))

(declare-fun d!2358697 () Bool)

(declare-fun lt!2684021 () BalanceConc!30662)

(assert (=> d!2358697 (= (list!19225 lt!2684021) (originalCharacters!8839 (_1!38414 (get!26651 lt!2683951))))))

(assert (=> d!2358697 (= lt!2684021 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))) (value!287024 (_1!38414 (get!26651 lt!2683951)))))))

(assert (=> d!2358697 (= (charsOf!5542 (_1!38414 (get!26651 lt!2683951))) lt!2684021)))

(declare-fun b_lambda!289741 () Bool)

(assert (=> (not b_lambda!289741) (not d!2358697)))

(declare-fun t!389343 () Bool)

(declare-fun tb!262867 () Bool)

(assert (=> (and b!7902691 (= (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389343) tb!262867))

(declare-fun b!7903085 () Bool)

(declare-fun e!4664939 () Bool)

(declare-fun tp!2354407 () Bool)

(assert (=> b!7903085 (= e!4664939 (and (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))) (value!287024 (_1!38414 (get!26651 lt!2683951)))))) tp!2354407))))

(declare-fun result!359950 () Bool)

(assert (=> tb!262867 (= result!359950 (and (inv!95183 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951))))) (value!287024 (_1!38414 (get!26651 lt!2683951))))) e!4664939))))

(assert (= tb!262867 b!7903085))

(declare-fun m!8277670 () Bool)

(assert (=> b!7903085 m!8277670))

(declare-fun m!8277672 () Bool)

(assert (=> tb!262867 m!8277672))

(assert (=> d!2358697 t!389343))

(declare-fun b_and!352835 () Bool)

(assert (= b_and!352825 (and (=> t!389343 result!359950) b_and!352835)))

(declare-fun t!389345 () Bool)

(declare-fun tb!262869 () Bool)

(assert (=> (and b!7903002 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389345) tb!262869))

(declare-fun result!359952 () Bool)

(assert (= result!359952 result!359950))

(assert (=> d!2358697 t!389345))

(declare-fun b_and!352837 () Bool)

(assert (= b_and!352829 (and (=> t!389345 result!359952) b_and!352837)))

(declare-fun m!8277674 () Bool)

(assert (=> d!2358697 m!8277674))

(declare-fun m!8277676 () Bool)

(assert (=> d!2358697 m!8277676))

(assert (=> b!7902838 d!2358697))

(assert (=> b!7902839 d!2358695))

(assert (=> b!7902839 d!2358697))

(assert (=> b!7902839 d!2358665))

(declare-fun d!2358699 () Bool)

(assert (=> d!2358699 (= (get!26651 lt!2683967) (v!55020 lt!2683967))))

(assert (=> b!7902859 d!2358699))

(declare-fun d!2358701 () Bool)

(assert (=> d!2358701 (= (head!16145 input!1184) (h!80639 input!1184))))

(assert (=> b!7902811 d!2358701))

(declare-fun b!7903086 () Bool)

(declare-fun res!3135831 () Bool)

(declare-fun e!4664943 () Bool)

(assert (=> b!7903086 (=> (not res!3135831) (not e!4664943))))

(declare-fun lt!2684025 () Option!17880)

(assert (=> b!7903086 (= res!3135831 (= (rule!11886 (_1!38414 (get!26651 lt!2684025))) (h!80640 (t!389321 rulesArg!141))))))

(declare-fun b!7903087 () Bool)

(assert (=> b!7903087 (= e!4664943 (= (size!42990 (_1!38414 (get!26651 lt!2684025))) (size!42991 (originalCharacters!8839 (_1!38414 (get!26651 lt!2684025))))))))

(declare-fun d!2358703 () Bool)

(declare-fun e!4664941 () Bool)

(assert (=> d!2358703 e!4664941))

(declare-fun res!3135832 () Bool)

(assert (=> d!2358703 (=> res!3135832 e!4664941)))

(assert (=> d!2358703 (= res!3135832 (isEmpty!42565 lt!2684025))))

(declare-fun e!4664940 () Option!17880)

(assert (=> d!2358703 (= lt!2684025 e!4664940)))

(declare-fun c!1450287 () Bool)

(declare-fun lt!2684022 () tuple2!70226)

(assert (=> d!2358703 (= c!1450287 (isEmpty!42567 (_1!38416 lt!2684022)))))

(assert (=> d!2358703 (= lt!2684022 (findLongestMatch!1920 (regex!8598 (h!80640 (t!389321 rulesArg!141))) input!1184))))

(assert (=> d!2358703 (ruleValid!3934 thiss!14377 (h!80640 (t!389321 rulesArg!141)))))

(assert (=> d!2358703 (= (maxPrefixOneRule!3778 thiss!14377 (h!80640 (t!389321 rulesArg!141)) input!1184) lt!2684025)))

(declare-fun b!7903088 () Bool)

(assert (=> b!7903088 (= e!4664941 e!4664943)))

(declare-fun res!3135828 () Bool)

(assert (=> b!7903088 (=> (not res!3135828) (not e!4664943))))

(assert (=> b!7903088 (= res!3135828 (matchR!10646 (regex!8598 (h!80640 (t!389321 rulesArg!141))) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2684025))))))))

(declare-fun b!7903089 () Bool)

(assert (=> b!7903089 (= e!4664940 None!17879)))

(declare-fun b!7903090 () Bool)

(declare-fun res!3135827 () Bool)

(assert (=> b!7903090 (=> (not res!3135827) (not e!4664943))))

(assert (=> b!7903090 (= res!3135827 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2684025)))) (_2!38414 (get!26651 lt!2684025))) input!1184))))

(declare-fun b!7903091 () Bool)

(declare-fun res!3135833 () Bool)

(assert (=> b!7903091 (=> (not res!3135833) (not e!4664943))))

(assert (=> b!7903091 (= res!3135833 (= (value!287024 (_1!38414 (get!26651 lt!2684025))) (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2684025)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2684025)))))))))

(declare-fun b!7903092 () Bool)

(assert (=> b!7903092 (= e!4664940 (Some!17879 (tuple2!70223 (Token!15617 (apply!14333 (transformation!8598 (h!80640 (t!389321 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2684022))) (h!80640 (t!389321 rulesArg!141)) (size!42993 (seqFromList!6151 (_1!38416 lt!2684022))) (_1!38416 lt!2684022)) (_2!38416 lt!2684022))))))

(declare-fun lt!2684023 () Unit!169221)

(assert (=> b!7903092 (= lt!2684023 (longestMatchIsAcceptedByMatchOrIsEmpty!2116 (regex!8598 (h!80640 (t!389321 rulesArg!141))) input!1184))))

(declare-fun res!3135830 () Bool)

(assert (=> b!7903092 (= res!3135830 (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 (t!389321 rulesArg!141))) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(declare-fun e!4664942 () Bool)

(assert (=> b!7903092 (=> res!3135830 e!4664942)))

(assert (=> b!7903092 e!4664942))

(declare-fun lt!2684024 () Unit!169221)

(assert (=> b!7903092 (= lt!2684024 lt!2684023)))

(declare-fun lt!2684026 () Unit!169221)

(assert (=> b!7903092 (= lt!2684026 (lemmaSemiInverse!2663 (transformation!8598 (h!80640 (t!389321 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2684022))))))

(declare-fun b!7903093 () Bool)

(declare-fun res!3135829 () Bool)

(assert (=> b!7903093 (=> (not res!3135829) (not e!4664943))))

(assert (=> b!7903093 (= res!3135829 (< (size!42991 (_2!38414 (get!26651 lt!2684025))) (size!42991 input!1184)))))

(declare-fun b!7903094 () Bool)

(assert (=> b!7903094 (= e!4664942 (matchR!10646 (regex!8598 (h!80640 (t!389321 rulesArg!141))) (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 (t!389321 rulesArg!141))) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(assert (= (and d!2358703 c!1450287) b!7903089))

(assert (= (and d!2358703 (not c!1450287)) b!7903092))

(assert (= (and b!7903092 (not res!3135830)) b!7903094))

(assert (= (and d!2358703 (not res!3135832)) b!7903088))

(assert (= (and b!7903088 res!3135828) b!7903090))

(assert (= (and b!7903090 res!3135827) b!7903093))

(assert (= (and b!7903093 res!3135829) b!7903086))

(assert (= (and b!7903086 res!3135831) b!7903091))

(assert (= (and b!7903091 res!3135833) b!7903087))

(assert (=> b!7903094 m!8277454))

(assert (=> b!7903094 m!8277356))

(assert (=> b!7903094 m!8277454))

(assert (=> b!7903094 m!8277356))

(declare-fun m!8277678 () Bool)

(assert (=> b!7903094 m!8277678))

(declare-fun m!8277680 () Bool)

(assert (=> b!7903094 m!8277680))

(declare-fun m!8277682 () Bool)

(assert (=> d!2358703 m!8277682))

(declare-fun m!8277684 () Bool)

(assert (=> d!2358703 m!8277684))

(declare-fun m!8277686 () Bool)

(assert (=> d!2358703 m!8277686))

(declare-fun m!8277688 () Bool)

(assert (=> d!2358703 m!8277688))

(declare-fun m!8277690 () Bool)

(assert (=> b!7903091 m!8277690))

(declare-fun m!8277692 () Bool)

(assert (=> b!7903091 m!8277692))

(assert (=> b!7903091 m!8277692))

(declare-fun m!8277694 () Bool)

(assert (=> b!7903091 m!8277694))

(assert (=> b!7903093 m!8277690))

(declare-fun m!8277696 () Bool)

(assert (=> b!7903093 m!8277696))

(assert (=> b!7903093 m!8277356))

(assert (=> b!7903088 m!8277690))

(declare-fun m!8277698 () Bool)

(assert (=> b!7903088 m!8277698))

(assert (=> b!7903088 m!8277698))

(declare-fun m!8277700 () Bool)

(assert (=> b!7903088 m!8277700))

(assert (=> b!7903088 m!8277700))

(declare-fun m!8277702 () Bool)

(assert (=> b!7903088 m!8277702))

(assert (=> b!7903090 m!8277690))

(assert (=> b!7903090 m!8277698))

(assert (=> b!7903090 m!8277698))

(assert (=> b!7903090 m!8277700))

(assert (=> b!7903090 m!8277700))

(declare-fun m!8277704 () Bool)

(assert (=> b!7903090 m!8277704))

(assert (=> b!7903086 m!8277690))

(declare-fun m!8277706 () Bool)

(assert (=> b!7903092 m!8277706))

(assert (=> b!7903092 m!8277454))

(assert (=> b!7903092 m!8277356))

(assert (=> b!7903092 m!8277678))

(declare-fun m!8277708 () Bool)

(assert (=> b!7903092 m!8277708))

(declare-fun m!8277710 () Bool)

(assert (=> b!7903092 m!8277710))

(assert (=> b!7903092 m!8277708))

(declare-fun m!8277712 () Bool)

(assert (=> b!7903092 m!8277712))

(assert (=> b!7903092 m!8277708))

(declare-fun m!8277714 () Bool)

(assert (=> b!7903092 m!8277714))

(assert (=> b!7903092 m!8277356))

(assert (=> b!7903092 m!8277454))

(assert (=> b!7903092 m!8277708))

(declare-fun m!8277716 () Bool)

(assert (=> b!7903092 m!8277716))

(assert (=> b!7903087 m!8277690))

(declare-fun m!8277718 () Bool)

(assert (=> b!7903087 m!8277718))

(assert (=> bm!733250 d!2358703))

(declare-fun d!2358705 () Bool)

(declare-fun nullableFct!3750 (Regex!21301) Bool)

(assert (=> d!2358705 (= (nullable!9484 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))) (nullableFct!3750 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))

(declare-fun bs!1968019 () Bool)

(assert (= bs!1968019 d!2358705))

(declare-fun m!8277728 () Bool)

(assert (=> bs!1968019 m!8277728))

(assert (=> b!7902780 d!2358705))

(declare-fun d!2358707 () Bool)

(assert (=> d!2358707 (= (isEmpty!42565 lt!2683951) (not ((_ is Some!17879) lt!2683951)))))

(assert (=> d!2358623 d!2358707))

(assert (=> d!2358623 d!2358619))

(assert (=> d!2358623 d!2358621))

(declare-fun bs!1968020 () Bool)

(declare-fun d!2358709 () Bool)

(assert (= bs!1968020 (and d!2358709 d!2358629)))

(declare-fun lambda!472449 () Int)

(assert (=> bs!1968020 (= lambda!472449 lambda!472445)))

(assert (=> d!2358709 true))

(declare-fun lt!2684051 () Bool)

(assert (=> d!2358709 (= lt!2684051 (forall!18443 (t!389321 rulesArg!141) lambda!472449))))

(declare-fun e!4664944 () Bool)

(assert (=> d!2358709 (= lt!2684051 e!4664944)))

(declare-fun res!3135835 () Bool)

(assert (=> d!2358709 (=> res!3135835 e!4664944)))

(assert (=> d!2358709 (= res!3135835 (not ((_ is Cons!74192) (t!389321 rulesArg!141))))))

(assert (=> d!2358709 (= (rulesValidInductive!3409 thiss!14377 (t!389321 rulesArg!141)) lt!2684051)))

(declare-fun b!7903095 () Bool)

(declare-fun e!4664945 () Bool)

(assert (=> b!7903095 (= e!4664944 e!4664945)))

(declare-fun res!3135834 () Bool)

(assert (=> b!7903095 (=> (not res!3135834) (not e!4664945))))

(assert (=> b!7903095 (= res!3135834 (ruleValid!3934 thiss!14377 (h!80640 (t!389321 rulesArg!141))))))

(declare-fun b!7903096 () Bool)

(assert (=> b!7903096 (= e!4664945 (rulesValidInductive!3409 thiss!14377 (t!389321 (t!389321 rulesArg!141))))))

(assert (= (and d!2358709 (not res!3135835)) b!7903095))

(assert (= (and b!7903095 res!3135834) b!7903096))

(declare-fun m!8277740 () Bool)

(assert (=> d!2358709 m!8277740))

(assert (=> b!7903095 m!8277688))

(declare-fun m!8277742 () Bool)

(assert (=> b!7903096 m!8277742))

(assert (=> d!2358623 d!2358709))

(assert (=> b!7902860 d!2358699))

(declare-fun d!2358713 () Bool)

(declare-fun lt!2684052 () Int)

(assert (=> d!2358713 (>= lt!2684052 0)))

(declare-fun e!4664946 () Int)

(assert (=> d!2358713 (= lt!2684052 e!4664946)))

(declare-fun c!1450288 () Bool)

(assert (=> d!2358713 (= c!1450288 ((_ is Nil!74191) (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))))))

(assert (=> d!2358713 (= (size!42991 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))) lt!2684052)))

(declare-fun b!7903097 () Bool)

(assert (=> b!7903097 (= e!4664946 0)))

(declare-fun b!7903098 () Bool)

(assert (=> b!7903098 (= e!4664946 (+ 1 (size!42991 (t!389320 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))))))))

(assert (= (and d!2358713 c!1450288) b!7903097))

(assert (= (and d!2358713 (not c!1450288)) b!7903098))

(declare-fun m!8277744 () Bool)

(assert (=> b!7903098 m!8277744))

(assert (=> b!7902860 d!2358713))

(declare-fun d!2358715 () Bool)

(declare-fun lt!2684053 () Int)

(assert (=> d!2358715 (>= lt!2684053 0)))

(declare-fun e!4664949 () Int)

(assert (=> d!2358715 (= lt!2684053 e!4664949)))

(declare-fun c!1450289 () Bool)

(assert (=> d!2358715 (= c!1450289 ((_ is Nil!74191) (t!389320 input!1184)))))

(assert (=> d!2358715 (= (size!42991 (t!389320 input!1184)) lt!2684053)))

(declare-fun b!7903099 () Bool)

(assert (=> b!7903099 (= e!4664949 0)))

(declare-fun b!7903100 () Bool)

(assert (=> b!7903100 (= e!4664949 (+ 1 (size!42991 (t!389320 (t!389320 input!1184)))))))

(assert (= (and d!2358715 c!1450289) b!7903099))

(assert (= (and d!2358715 (not c!1450289)) b!7903100))

(declare-fun m!8277746 () Bool)

(assert (=> b!7903100 m!8277746))

(assert (=> b!7902801 d!2358715))

(declare-fun d!2358717 () Bool)

(declare-fun res!3135846 () Bool)

(declare-fun e!4664956 () Bool)

(assert (=> d!2358717 (=> res!3135846 e!4664956)))

(assert (=> d!2358717 (= res!3135846 ((_ is Nil!74192) rulesArg!141))))

(assert (=> d!2358717 (= (forall!18443 rulesArg!141 lambda!472445) e!4664956)))

(declare-fun b!7903113 () Bool)

(declare-fun e!4664957 () Bool)

(assert (=> b!7903113 (= e!4664956 e!4664957)))

(declare-fun res!3135847 () Bool)

(assert (=> b!7903113 (=> (not res!3135847) (not e!4664957))))

(declare-fun dynLambda!30061 (Int Rule!16996) Bool)

(assert (=> b!7903113 (= res!3135847 (dynLambda!30061 lambda!472445 (h!80640 rulesArg!141)))))

(declare-fun b!7903114 () Bool)

(assert (=> b!7903114 (= e!4664957 (forall!18443 (t!389321 rulesArg!141) lambda!472445))))

(assert (= (and d!2358717 (not res!3135846)) b!7903113))

(assert (= (and b!7903113 res!3135847) b!7903114))

(declare-fun b_lambda!289743 () Bool)

(assert (=> (not b_lambda!289743) (not b!7903113)))

(declare-fun m!8277752 () Bool)

(assert (=> b!7903113 m!8277752))

(declare-fun m!8277754 () Bool)

(assert (=> b!7903114 m!8277754))

(assert (=> d!2358629 d!2358717))

(declare-fun b!7903115 () Bool)

(declare-fun e!4664960 () Bool)

(declare-fun lt!2684057 () Option!17880)

(assert (=> b!7903115 (= e!4664960 (contains!20888 (t!389321 (t!389321 rulesArg!141)) (rule!11886 (_1!38414 (get!26651 lt!2684057)))))))

(declare-fun b!7903116 () Bool)

(declare-fun e!4664959 () Option!17880)

(declare-fun call!733265 () Option!17880)

(assert (=> b!7903116 (= e!4664959 call!733265)))

(declare-fun b!7903117 () Bool)

(declare-fun res!3135854 () Bool)

(assert (=> b!7903117 (=> (not res!3135854) (not e!4664960))))

(assert (=> b!7903117 (= res!3135854 (< (size!42991 (_2!38414 (get!26651 lt!2684057))) (size!42991 input!1184)))))

(declare-fun b!7903118 () Bool)

(declare-fun res!3135852 () Bool)

(assert (=> b!7903118 (=> (not res!3135852) (not e!4664960))))

(assert (=> b!7903118 (= res!3135852 (= (value!287024 (_1!38414 (get!26651 lt!2684057))) (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2684057)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2684057)))))))))

(declare-fun b!7903119 () Bool)

(declare-fun lt!2684058 () Option!17880)

(declare-fun lt!2684059 () Option!17880)

(assert (=> b!7903119 (= e!4664959 (ite (and ((_ is None!17879) lt!2684058) ((_ is None!17879) lt!2684059)) None!17879 (ite ((_ is None!17879) lt!2684059) lt!2684058 (ite ((_ is None!17879) lt!2684058) lt!2684059 (ite (>= (size!42990 (_1!38414 (v!55020 lt!2684058))) (size!42990 (_1!38414 (v!55020 lt!2684059)))) lt!2684058 lt!2684059)))))))

(assert (=> b!7903119 (= lt!2684058 call!733265)))

(assert (=> b!7903119 (= lt!2684059 (maxPrefix!4731 thiss!14377 (t!389321 (t!389321 (t!389321 rulesArg!141))) input!1184))))

(declare-fun d!2358725 () Bool)

(declare-fun e!4664958 () Bool)

(assert (=> d!2358725 e!4664958))

(declare-fun res!3135848 () Bool)

(assert (=> d!2358725 (=> res!3135848 e!4664958)))

(assert (=> d!2358725 (= res!3135848 (isEmpty!42565 lt!2684057))))

(assert (=> d!2358725 (= lt!2684057 e!4664959)))

(declare-fun c!1450291 () Bool)

(assert (=> d!2358725 (= c!1450291 (and ((_ is Cons!74192) (t!389321 (t!389321 rulesArg!141))) ((_ is Nil!74192) (t!389321 (t!389321 (t!389321 rulesArg!141))))))))

(declare-fun lt!2684056 () Unit!169221)

(declare-fun lt!2684055 () Unit!169221)

(assert (=> d!2358725 (= lt!2684056 lt!2684055)))

(assert (=> d!2358725 (isPrefix!6431 input!1184 input!1184)))

(assert (=> d!2358725 (= lt!2684055 (lemmaIsPrefixRefl!3942 input!1184 input!1184))))

(assert (=> d!2358725 (rulesValidInductive!3409 thiss!14377 (t!389321 (t!389321 rulesArg!141)))))

(assert (=> d!2358725 (= (maxPrefix!4731 thiss!14377 (t!389321 (t!389321 rulesArg!141)) input!1184) lt!2684057)))

(declare-fun b!7903120 () Bool)

(declare-fun res!3135850 () Bool)

(assert (=> b!7903120 (=> (not res!3135850) (not e!4664960))))

(assert (=> b!7903120 (= res!3135850 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2684057)))) (_2!38414 (get!26651 lt!2684057))) input!1184))))

(declare-fun b!7903121 () Bool)

(declare-fun res!3135851 () Bool)

(assert (=> b!7903121 (=> (not res!3135851) (not e!4664960))))

(assert (=> b!7903121 (= res!3135851 (matchR!10646 (regex!8598 (rule!11886 (_1!38414 (get!26651 lt!2684057)))) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2684057))))))))

(declare-fun b!7903122 () Bool)

(declare-fun res!3135853 () Bool)

(assert (=> b!7903122 (=> (not res!3135853) (not e!4664960))))

(assert (=> b!7903122 (= res!3135853 (= (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2684057)))) (originalCharacters!8839 (_1!38414 (get!26651 lt!2684057)))))))

(declare-fun bm!733260 () Bool)

(assert (=> bm!733260 (= call!733265 (maxPrefixOneRule!3778 thiss!14377 (h!80640 (t!389321 (t!389321 rulesArg!141))) input!1184))))

(declare-fun b!7903123 () Bool)

(assert (=> b!7903123 (= e!4664958 e!4664960)))

(declare-fun res!3135849 () Bool)

(assert (=> b!7903123 (=> (not res!3135849) (not e!4664960))))

(assert (=> b!7903123 (= res!3135849 (isDefined!14456 lt!2684057))))

(assert (= (and d!2358725 c!1450291) b!7903116))

(assert (= (and d!2358725 (not c!1450291)) b!7903119))

(assert (= (or b!7903116 b!7903119) bm!733260))

(assert (= (and d!2358725 (not res!3135848)) b!7903123))

(assert (= (and b!7903123 res!3135849) b!7903122))

(assert (= (and b!7903122 res!3135853) b!7903117))

(assert (= (and b!7903117 res!3135854) b!7903120))

(assert (= (and b!7903120 res!3135850) b!7903118))

(assert (= (and b!7903118 res!3135852) b!7903121))

(assert (= (and b!7903121 res!3135851) b!7903115))

(declare-fun m!8277756 () Bool)

(assert (=> b!7903122 m!8277756))

(declare-fun m!8277758 () Bool)

(assert (=> b!7903122 m!8277758))

(assert (=> b!7903122 m!8277758))

(declare-fun m!8277760 () Bool)

(assert (=> b!7903122 m!8277760))

(assert (=> b!7903117 m!8277756))

(declare-fun m!8277762 () Bool)

(assert (=> b!7903117 m!8277762))

(assert (=> b!7903117 m!8277356))

(declare-fun m!8277764 () Bool)

(assert (=> d!2358725 m!8277764))

(assert (=> d!2358725 m!8277342))

(assert (=> d!2358725 m!8277344))

(assert (=> d!2358725 m!8277742))

(assert (=> b!7903118 m!8277756))

(declare-fun m!8277766 () Bool)

(assert (=> b!7903118 m!8277766))

(assert (=> b!7903118 m!8277766))

(declare-fun m!8277772 () Bool)

(assert (=> b!7903118 m!8277772))

(assert (=> b!7903115 m!8277756))

(declare-fun m!8277776 () Bool)

(assert (=> b!7903115 m!8277776))

(declare-fun m!8277778 () Bool)

(assert (=> b!7903123 m!8277778))

(assert (=> b!7903121 m!8277756))

(assert (=> b!7903121 m!8277758))

(assert (=> b!7903121 m!8277758))

(assert (=> b!7903121 m!8277760))

(assert (=> b!7903121 m!8277760))

(declare-fun m!8277780 () Bool)

(assert (=> b!7903121 m!8277780))

(declare-fun m!8277782 () Bool)

(assert (=> bm!733260 m!8277782))

(assert (=> b!7903120 m!8277756))

(assert (=> b!7903120 m!8277758))

(assert (=> b!7903120 m!8277758))

(assert (=> b!7903120 m!8277760))

(assert (=> b!7903120 m!8277760))

(declare-fun m!8277784 () Bool)

(assert (=> b!7903120 m!8277784))

(declare-fun m!8277786 () Bool)

(assert (=> b!7903119 m!8277786))

(assert (=> b!7902836 d!2358725))

(declare-fun d!2358729 () Bool)

(assert (=> d!2358729 true))

(declare-fun order!29831 () Int)

(declare-fun order!29833 () Int)

(declare-fun lambda!472452 () Int)

(declare-fun dynLambda!30062 (Int Int) Int)

(declare-fun dynLambda!30063 (Int Int) Int)

(assert (=> d!2358729 (< (dynLambda!30062 order!29831 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) (dynLambda!30063 order!29833 lambda!472452))))

(declare-fun Forall2!1314 (Int) Bool)

(assert (=> d!2358729 (= (equivClasses!3628 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) (Forall2!1314 lambda!472452))))

(declare-fun bs!1968023 () Bool)

(assert (= bs!1968023 d!2358729))

(declare-fun m!8277816 () Bool)

(assert (=> bs!1968023 m!8277816))

(assert (=> b!7902986 d!2358729))

(declare-fun b!7903147 () Bool)

(declare-fun res!3135870 () Bool)

(declare-fun e!4664973 () Bool)

(assert (=> b!7903147 (=> (not res!3135870) (not e!4664973))))

(declare-fun lt!2684070 () List!74315)

(assert (=> b!7903147 (= res!3135870 (= (size!42991 lt!2684070) (+ (size!42991 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (size!42991 (_2!38414 (get!26651 lt!2683951))))))))

(declare-fun b!7903148 () Bool)

(assert (=> b!7903148 (= e!4664973 (or (not (= (_2!38414 (get!26651 lt!2683951)) Nil!74191)) (= lt!2684070 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))))))))

(declare-fun d!2358743 () Bool)

(assert (=> d!2358743 e!4664973))

(declare-fun res!3135869 () Bool)

(assert (=> d!2358743 (=> (not res!3135869) (not e!4664973))))

(assert (=> d!2358743 (= res!3135869 (= (content!15715 lt!2684070) ((_ map or) (content!15715 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (content!15715 (_2!38414 (get!26651 lt!2683951))))))))

(declare-fun e!4664974 () List!74315)

(assert (=> d!2358743 (= lt!2684070 e!4664974)))

(declare-fun c!1450295 () Bool)

(assert (=> d!2358743 (= c!1450295 ((_ is Nil!74191) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))))))

(assert (=> d!2358743 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951)))) (_2!38414 (get!26651 lt!2683951))) lt!2684070)))

(declare-fun b!7903146 () Bool)

(assert (=> b!7903146 (= e!4664974 (Cons!74191 (h!80639 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (++!18160 (t!389320 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683951))))) (_2!38414 (get!26651 lt!2683951)))))))

(declare-fun b!7903145 () Bool)

(assert (=> b!7903145 (= e!4664974 (_2!38414 (get!26651 lt!2683951)))))

(assert (= (and d!2358743 c!1450295) b!7903145))

(assert (= (and d!2358743 (not c!1450295)) b!7903146))

(assert (= (and d!2358743 res!3135869) b!7903147))

(assert (= (and b!7903147 res!3135870) b!7903148))

(declare-fun m!8277836 () Bool)

(assert (=> b!7903147 m!8277836))

(assert (=> b!7903147 m!8277430))

(declare-fun m!8277838 () Bool)

(assert (=> b!7903147 m!8277838))

(assert (=> b!7903147 m!8277432))

(declare-fun m!8277842 () Bool)

(assert (=> d!2358743 m!8277842))

(assert (=> d!2358743 m!8277430))

(declare-fun m!8277844 () Bool)

(assert (=> d!2358743 m!8277844))

(declare-fun m!8277848 () Bool)

(assert (=> d!2358743 m!8277848))

(declare-fun m!8277854 () Bool)

(assert (=> b!7903146 m!8277854))

(assert (=> b!7902837 d!2358743))

(assert (=> b!7902837 d!2358695))

(assert (=> b!7902837 d!2358697))

(assert (=> b!7902837 d!2358665))

(declare-fun d!2358745 () Bool)

(declare-fun c!1450299 () Bool)

(assert (=> d!2358745 (= c!1450299 ((_ is Nil!74191) lt!2683922))))

(declare-fun e!4664981 () (InoxSet C!42932))

(assert (=> d!2358745 (= (content!15715 lt!2683922) e!4664981)))

(declare-fun b!7903162 () Bool)

(assert (=> b!7903162 (= e!4664981 ((as const (Array C!42932 Bool)) false))))

(declare-fun b!7903163 () Bool)

(assert (=> b!7903163 (= e!4664981 ((_ map or) (store ((as const (Array C!42932 Bool)) false) (h!80639 lt!2683922) true) (content!15715 (t!389320 lt!2683922))))))

(assert (= (and d!2358745 c!1450299) b!7903162))

(assert (= (and d!2358745 (not c!1450299)) b!7903163))

(declare-fun m!8277858 () Bool)

(assert (=> b!7903163 m!8277858))

(declare-fun m!8277860 () Bool)

(assert (=> b!7903163 m!8277860))

(assert (=> d!2358589 d!2358745))

(declare-fun d!2358749 () Bool)

(declare-fun c!1450300 () Bool)

(assert (=> d!2358749 (= c!1450300 ((_ is Nil!74191) lt!2683914))))

(declare-fun e!4664982 () (InoxSet C!42932))

(assert (=> d!2358749 (= (content!15715 lt!2683914) e!4664982)))

(declare-fun b!7903164 () Bool)

(assert (=> b!7903164 (= e!4664982 ((as const (Array C!42932 Bool)) false))))

(declare-fun b!7903165 () Bool)

(assert (=> b!7903165 (= e!4664982 ((_ map or) (store ((as const (Array C!42932 Bool)) false) (h!80639 lt!2683914) true) (content!15715 (t!389320 lt!2683914))))))

(assert (= (and d!2358749 c!1450300) b!7903164))

(assert (= (and d!2358749 (not c!1450300)) b!7903165))

(declare-fun m!8277862 () Bool)

(assert (=> b!7903165 m!8277862))

(declare-fun m!8277864 () Bool)

(assert (=> b!7903165 m!8277864))

(assert (=> d!2358589 d!2358749))

(declare-fun d!2358751 () Bool)

(declare-fun c!1450301 () Bool)

(assert (=> d!2358751 (= c!1450301 ((_ is Nil!74191) (_2!38414 lt!2683911)))))

(declare-fun e!4664983 () (InoxSet C!42932))

(assert (=> d!2358751 (= (content!15715 (_2!38414 lt!2683911)) e!4664983)))

(declare-fun b!7903166 () Bool)

(assert (=> b!7903166 (= e!4664983 ((as const (Array C!42932 Bool)) false))))

(declare-fun b!7903167 () Bool)

(assert (=> b!7903167 (= e!4664983 ((_ map or) (store ((as const (Array C!42932 Bool)) false) (h!80639 (_2!38414 lt!2683911)) true) (content!15715 (t!389320 (_2!38414 lt!2683911)))))))

(assert (= (and d!2358751 c!1450301) b!7903166))

(assert (= (and d!2358751 (not c!1450301)) b!7903167))

(declare-fun m!8277866 () Bool)

(assert (=> b!7903167 m!8277866))

(declare-fun m!8277868 () Bool)

(assert (=> b!7903167 m!8277868))

(assert (=> d!2358589 d!2358751))

(declare-fun b!7903170 () Bool)

(declare-fun res!3135879 () Bool)

(declare-fun e!4664984 () Bool)

(assert (=> b!7903170 (=> (not res!3135879) (not e!4664984))))

(declare-fun lt!2684076 () List!74315)

(assert (=> b!7903170 (= res!3135879 (= (size!42991 lt!2684076) (+ (size!42991 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (size!42991 (_2!38414 (get!26651 lt!2683967))))))))

(declare-fun b!7903171 () Bool)

(assert (=> b!7903171 (= e!4664984 (or (not (= (_2!38414 (get!26651 lt!2683967)) Nil!74191)) (= lt!2684076 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))))))))

(declare-fun d!2358753 () Bool)

(assert (=> d!2358753 e!4664984))

(declare-fun res!3135878 () Bool)

(assert (=> d!2358753 (=> (not res!3135878) (not e!4664984))))

(assert (=> d!2358753 (= res!3135878 (= (content!15715 lt!2684076) ((_ map or) (content!15715 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (content!15715 (_2!38414 (get!26651 lt!2683967))))))))

(declare-fun e!4664985 () List!74315)

(assert (=> d!2358753 (= lt!2684076 e!4664985)))

(declare-fun c!1450302 () Bool)

(assert (=> d!2358753 (= c!1450302 ((_ is Nil!74191) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))

(assert (=> d!2358753 (= (++!18160 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))) (_2!38414 (get!26651 lt!2683967))) lt!2684076)))

(declare-fun b!7903169 () Bool)

(assert (=> b!7903169 (= e!4664985 (Cons!74191 (h!80639 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (++!18160 (t!389320 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (_2!38414 (get!26651 lt!2683967)))))))

(declare-fun b!7903168 () Bool)

(assert (=> b!7903168 (= e!4664985 (_2!38414 (get!26651 lt!2683967)))))

(assert (= (and d!2358753 c!1450302) b!7903168))

(assert (= (and d!2358753 (not c!1450302)) b!7903169))

(assert (= (and d!2358753 res!3135878) b!7903170))

(assert (= (and b!7903170 res!3135879) b!7903171))

(declare-fun m!8277888 () Bool)

(assert (=> b!7903170 m!8277888))

(assert (=> b!7903170 m!8277478))

(declare-fun m!8277892 () Bool)

(assert (=> b!7903170 m!8277892))

(assert (=> b!7903170 m!8277474))

(declare-fun m!8277894 () Bool)

(assert (=> d!2358753 m!8277894))

(assert (=> d!2358753 m!8277478))

(declare-fun m!8277896 () Bool)

(assert (=> d!2358753 m!8277896))

(declare-fun m!8277900 () Bool)

(assert (=> d!2358753 m!8277900))

(declare-fun m!8277902 () Bool)

(assert (=> b!7903169 m!8277902))

(assert (=> b!7902863 d!2358753))

(declare-fun d!2358755 () Bool)

(assert (=> d!2358755 (= (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))) (list!19227 (c!1450235 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))

(declare-fun bs!1968024 () Bool)

(assert (= bs!1968024 d!2358755))

(declare-fun m!8277908 () Bool)

(assert (=> bs!1968024 m!8277908))

(assert (=> b!7902863 d!2358755))

(declare-fun d!2358757 () Bool)

(declare-fun lt!2684077 () BalanceConc!30662)

(assert (=> d!2358757 (= (list!19225 lt!2684077) (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967))))))

(assert (=> d!2358757 (= lt!2684077 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967))))) (value!287024 (_1!38414 (get!26651 lt!2683967)))))))

(assert (=> d!2358757 (= (charsOf!5542 (_1!38414 (get!26651 lt!2683967))) lt!2684077)))

(declare-fun b_lambda!289749 () Bool)

(assert (=> (not b_lambda!289749) (not d!2358757)))

(declare-fun t!389355 () Bool)

(declare-fun tb!262879 () Bool)

(assert (=> (and b!7902691 (= (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389355) tb!262879))

(declare-fun b!7903172 () Bool)

(declare-fun e!4664986 () Bool)

(declare-fun tp!2354409 () Bool)

(assert (=> b!7903172 (= e!4664986 (and (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967))))) (value!287024 (_1!38414 (get!26651 lt!2683967)))))) tp!2354409))))

(declare-fun result!359962 () Bool)

(assert (=> tb!262879 (= result!359962 (and (inv!95183 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967))))) (value!287024 (_1!38414 (get!26651 lt!2683967))))) e!4664986))))

(assert (= tb!262879 b!7903172))

(declare-fun m!8277924 () Bool)

(assert (=> b!7903172 m!8277924))

(declare-fun m!8277928 () Bool)

(assert (=> tb!262879 m!8277928))

(assert (=> d!2358757 t!389355))

(declare-fun b_and!352847 () Bool)

(assert (= b_and!352835 (and (=> t!389355 result!359962) b_and!352847)))

(declare-fun t!389357 () Bool)

(declare-fun tb!262881 () Bool)

(assert (=> (and b!7903002 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389357) tb!262881))

(declare-fun result!359964 () Bool)

(assert (= result!359964 result!359962))

(assert (=> d!2358757 t!389357))

(declare-fun b_and!352849 () Bool)

(assert (= b_and!352837 (and (=> t!389357 result!359964) b_and!352849)))

(declare-fun m!8277930 () Bool)

(assert (=> d!2358757 m!8277930))

(declare-fun m!8277932 () Bool)

(assert (=> d!2358757 m!8277932))

(assert (=> b!7902863 d!2358757))

(assert (=> b!7902863 d!2358699))

(assert (=> b!7902864 d!2358699))

(declare-fun d!2358761 () Bool)

(assert (=> d!2358761 (= (apply!14333 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967))))) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967))))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967))))))))

(declare-fun b_lambda!289751 () Bool)

(assert (=> (not b_lambda!289751) (not d!2358761)))

(declare-fun t!389359 () Bool)

(declare-fun tb!262883 () Bool)

(assert (=> (and b!7902691 (= (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389359) tb!262883))

(declare-fun result!359966 () Bool)

(assert (=> tb!262883 (= result!359966 (inv!21 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967))))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))))))))

(declare-fun m!8277934 () Bool)

(assert (=> tb!262883 m!8277934))

(assert (=> d!2358761 t!389359))

(declare-fun b_and!352851 () Bool)

(assert (= b_and!352831 (and (=> t!389359 result!359966) b_and!352851)))

(declare-fun t!389361 () Bool)

(declare-fun tb!262885 () Bool)

(assert (=> (and b!7903002 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389361) tb!262885))

(declare-fun result!359968 () Bool)

(assert (= result!359968 result!359966))

(assert (=> d!2358761 t!389361))

(declare-fun b_and!352853 () Bool)

(assert (= b_and!352833 (and (=> t!389361 result!359968) b_and!352853)))

(assert (=> d!2358761 m!8277470))

(declare-fun m!8277936 () Bool)

(assert (=> d!2358761 m!8277936))

(assert (=> b!7902864 d!2358761))

(declare-fun d!2358763 () Bool)

(assert (=> d!2358763 (= (seqFromList!6151 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))) (fromListB!2776 (originalCharacters!8839 (_1!38414 (get!26651 lt!2683967)))))))

(declare-fun bs!1968025 () Bool)

(assert (= bs!1968025 d!2358763))

(declare-fun m!8277938 () Bool)

(assert (=> bs!1968025 m!8277938))

(assert (=> b!7902864 d!2358763))

(declare-fun b!7903175 () Bool)

(declare-fun res!3135881 () Bool)

(declare-fun e!4664988 () Bool)

(assert (=> b!7903175 (=> (not res!3135881) (not e!4664988))))

(declare-fun lt!2684078 () List!74315)

(assert (=> b!7903175 (= res!3135881 (= (size!42991 lt!2684078) (+ (size!42991 (t!389320 lt!2683914)) (size!42991 (_2!38414 lt!2683911)))))))

(declare-fun b!7903176 () Bool)

(assert (=> b!7903176 (= e!4664988 (or (not (= (_2!38414 lt!2683911) Nil!74191)) (= lt!2684078 (t!389320 lt!2683914))))))

(declare-fun d!2358765 () Bool)

(assert (=> d!2358765 e!4664988))

(declare-fun res!3135880 () Bool)

(assert (=> d!2358765 (=> (not res!3135880) (not e!4664988))))

(assert (=> d!2358765 (= res!3135880 (= (content!15715 lt!2684078) ((_ map or) (content!15715 (t!389320 lt!2683914)) (content!15715 (_2!38414 lt!2683911)))))))

(declare-fun e!4664989 () List!74315)

(assert (=> d!2358765 (= lt!2684078 e!4664989)))

(declare-fun c!1450303 () Bool)

(assert (=> d!2358765 (= c!1450303 ((_ is Nil!74191) (t!389320 lt!2683914)))))

(assert (=> d!2358765 (= (++!18160 (t!389320 lt!2683914) (_2!38414 lt!2683911)) lt!2684078)))

(declare-fun b!7903174 () Bool)

(assert (=> b!7903174 (= e!4664989 (Cons!74191 (h!80639 (t!389320 lt!2683914)) (++!18160 (t!389320 (t!389320 lt!2683914)) (_2!38414 lt!2683911))))))

(declare-fun b!7903173 () Bool)

(assert (=> b!7903173 (= e!4664989 (_2!38414 lt!2683911))))

(assert (= (and d!2358765 c!1450303) b!7903173))

(assert (= (and d!2358765 (not c!1450303)) b!7903174))

(assert (= (and d!2358765 res!3135880) b!7903175))

(assert (= (and b!7903175 res!3135881) b!7903176))

(declare-fun m!8277940 () Bool)

(assert (=> b!7903175 m!8277940))

(declare-fun m!8277942 () Bool)

(assert (=> b!7903175 m!8277942))

(assert (=> b!7903175 m!8277354))

(declare-fun m!8277944 () Bool)

(assert (=> d!2358765 m!8277944))

(assert (=> d!2358765 m!8277864))

(assert (=> d!2358765 m!8277384))

(declare-fun m!8277946 () Bool)

(assert (=> b!7903174 m!8277946))

(assert (=> b!7902725 d!2358765))

(declare-fun d!2358767 () Bool)

(declare-fun isBalanced!4475 (Conc!15772) Bool)

(assert (=> d!2358767 (= (inv!95183 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))) (isBalanced!4475 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))))))

(declare-fun bs!1968026 () Bool)

(assert (= bs!1968026 d!2358767))

(declare-fun m!8277948 () Bool)

(assert (=> bs!1968026 m!8277948))

(assert (=> tb!262857 d!2358767))

(declare-fun d!2358769 () Bool)

(assert (=> d!2358769 true))

(declare-fun order!29837 () Int)

(declare-fun lambda!472458 () Int)

(declare-fun order!29839 () Int)

(declare-fun dynLambda!30065 (Int Int) Int)

(declare-fun dynLambda!30066 (Int Int) Int)

(assert (=> d!2358769 (< (dynLambda!30065 order!29837 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141)))) (dynLambda!30066 order!29839 lambda!472458))))

(assert (=> d!2358769 true))

(assert (=> d!2358769 (< (dynLambda!30062 order!29831 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) (dynLambda!30066 order!29839 lambda!472458))))

(declare-fun Forall!1844 (Int) Bool)

(assert (=> d!2358769 (= (semiInverseModEq!3813 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) (Forall!1844 lambda!472458))))

(declare-fun bs!1968029 () Bool)

(assert (= bs!1968029 d!2358769))

(declare-fun m!8277958 () Bool)

(assert (=> bs!1968029 m!8277958))

(assert (=> d!2358661 d!2358769))

(declare-fun bs!1968033 () Bool)

(declare-fun d!2358783 () Bool)

(assert (= bs!1968033 (and d!2358783 d!2358769)))

(declare-fun lambda!472461 () Int)

(assert (=> bs!1968033 (= lambda!472461 lambda!472458)))

(declare-fun b!7903204 () Bool)

(declare-fun e!4665007 () Bool)

(assert (=> b!7903204 (= e!4665007 true)))

(assert (=> d!2358783 e!4665007))

(assert (= d!2358783 b!7903204))

(assert (=> b!7903204 (< (dynLambda!30062 order!29831 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) (dynLambda!30066 order!29839 lambda!472461))))

(assert (=> b!7903204 (< (dynLambda!30065 order!29837 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141)))) (dynLambda!30066 order!29839 lambda!472461))))

(assert (=> d!2358783 (= (list!19225 (dynLambda!30057 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (dynLambda!30056 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2683964))))) (list!19225 (seqFromList!6151 (_1!38416 lt!2683964))))))

(declare-fun lt!2684086 () Unit!169221)

(declare-fun ForallOf!1299 (Int BalanceConc!30662) Unit!169221)

(assert (=> d!2358783 (= lt!2684086 (ForallOf!1299 lambda!472461 (seqFromList!6151 (_1!38416 lt!2683964))))))

(assert (=> d!2358783 (= (lemmaSemiInverse!2663 (transformation!8598 (h!80640 rulesArg!141)) (seqFromList!6151 (_1!38416 lt!2683964))) lt!2684086)))

(declare-fun b_lambda!289755 () Bool)

(assert (=> (not b_lambda!289755) (not d!2358783)))

(declare-fun t!389367 () Bool)

(declare-fun tb!262891 () Bool)

(assert (=> (and b!7902691 (= (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toChars!11506 (transformation!8598 (h!80640 rulesArg!141)))) t!389367) tb!262891))

(declare-fun e!4665008 () Bool)

(declare-fun tp!2354410 () Bool)

(declare-fun b!7903205 () Bool)

(assert (=> b!7903205 (= e!4665008 (and (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (dynLambda!30056 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2683964)))))) tp!2354410))))

(declare-fun result!359974 () Bool)

(assert (=> tb!262891 (= result!359974 (and (inv!95183 (dynLambda!30057 (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (dynLambda!30056 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2683964))))) e!4665008))))

(assert (= tb!262891 b!7903205))

(declare-fun m!8277986 () Bool)

(assert (=> b!7903205 m!8277986))

(declare-fun m!8277988 () Bool)

(assert (=> tb!262891 m!8277988))

(assert (=> d!2358783 t!389367))

(declare-fun b_and!352859 () Bool)

(assert (= b_and!352847 (and (=> t!389367 result!359974) b_and!352859)))

(declare-fun t!389369 () Bool)

(declare-fun tb!262893 () Bool)

(assert (=> (and b!7903002 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (h!80640 rulesArg!141)))) t!389369) tb!262893))

(declare-fun result!359976 () Bool)

(assert (= result!359976 result!359974))

(assert (=> d!2358783 t!389369))

(declare-fun b_and!352861 () Bool)

(assert (= b_and!352849 (and (=> t!389369 result!359976) b_and!352861)))

(declare-fun b_lambda!289757 () Bool)

(assert (=> (not b_lambda!289757) (not d!2358783)))

(declare-fun t!389371 () Bool)

(declare-fun tb!262895 () Bool)

(assert (=> (and b!7902691 (= (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) t!389371) tb!262895))

(declare-fun result!359978 () Bool)

(assert (=> tb!262895 (= result!359978 (inv!21 (dynLambda!30056 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2683964)))))))

(declare-fun m!8277990 () Bool)

(assert (=> tb!262895 m!8277990))

(assert (=> d!2358783 t!389371))

(declare-fun b_and!352863 () Bool)

(assert (= b_and!352851 (and (=> t!389371 result!359978) b_and!352863)))

(declare-fun t!389373 () Bool)

(declare-fun tb!262897 () Bool)

(assert (=> (and b!7903002 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) t!389373) tb!262897))

(declare-fun result!359980 () Bool)

(assert (= result!359980 result!359978))

(assert (=> d!2358783 t!389373))

(declare-fun b_and!352865 () Bool)

(assert (= b_and!352853 (and (=> t!389373 result!359980) b_and!352865)))

(declare-fun m!8277992 () Bool)

(assert (=> d!2358783 m!8277992))

(declare-fun m!8277994 () Bool)

(assert (=> d!2358783 m!8277994))

(declare-fun m!8277996 () Bool)

(assert (=> d!2358783 m!8277996))

(assert (=> d!2358783 m!8277992))

(assert (=> d!2358783 m!8277486))

(declare-fun m!8277998 () Bool)

(assert (=> d!2358783 m!8277998))

(assert (=> d!2358783 m!8277486))

(declare-fun m!8278000 () Bool)

(assert (=> d!2358783 m!8278000))

(assert (=> d!2358783 m!8277486))

(assert (=> d!2358783 m!8277996))

(assert (=> b!7902865 d!2358783))

(declare-fun d!2358799 () Bool)

(assert (=> d!2358799 (= (apply!14333 (transformation!8598 (h!80640 rulesArg!141)) (seqFromList!6151 (_1!38416 lt!2683964))) (dynLambda!30056 (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (seqFromList!6151 (_1!38416 lt!2683964))))))

(declare-fun b_lambda!289759 () Bool)

(assert (=> (not b_lambda!289759) (not d!2358799)))

(assert (=> d!2358799 t!389371))

(declare-fun b_and!352867 () Bool)

(assert (= b_and!352863 (and (=> t!389371 result!359978) b_and!352867)))

(assert (=> d!2358799 t!389373))

(declare-fun b_and!352869 () Bool)

(assert (= b_and!352865 (and (=> t!389373 result!359980) b_and!352869)))

(assert (=> d!2358799 m!8277486))

(assert (=> d!2358799 m!8277996))

(assert (=> b!7902865 d!2358799))

(declare-fun d!2358801 () Bool)

(declare-fun lt!2684090 () Int)

(assert (=> d!2358801 (= lt!2684090 (size!42991 (list!19225 (seqFromList!6151 (_1!38416 lt!2683964)))))))

(declare-fun size!42994 (Conc!15772) Int)

(assert (=> d!2358801 (= lt!2684090 (size!42994 (c!1450235 (seqFromList!6151 (_1!38416 lt!2683964)))))))

(assert (=> d!2358801 (= (size!42993 (seqFromList!6151 (_1!38416 lt!2683964))) lt!2684090)))

(declare-fun bs!1968034 () Bool)

(assert (= bs!1968034 d!2358801))

(assert (=> bs!1968034 m!8277486))

(assert (=> bs!1968034 m!8278000))

(assert (=> bs!1968034 m!8278000))

(declare-fun m!8278008 () Bool)

(assert (=> bs!1968034 m!8278008))

(declare-fun m!8278010 () Bool)

(assert (=> bs!1968034 m!8278010))

(assert (=> b!7902865 d!2358801))

(declare-fun d!2358805 () Bool)

(declare-fun e!4665034 () Bool)

(assert (=> d!2358805 e!4665034))

(declare-fun res!3135909 () Bool)

(assert (=> d!2358805 (=> res!3135909 e!4665034)))

(assert (=> d!2358805 (= res!3135909 (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(declare-fun lt!2684094 () Unit!169221)

(declare-fun choose!59718 (Regex!21301 List!74315) Unit!169221)

(assert (=> d!2358805 (= lt!2684094 (choose!59718 (regex!8598 (h!80640 rulesArg!141)) input!1184))))

(assert (=> d!2358805 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141)))))

(assert (=> d!2358805 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2116 (regex!8598 (h!80640 rulesArg!141)) input!1184) lt!2684094)))

(declare-fun b!7903240 () Bool)

(assert (=> b!7903240 (= e!4665034 (matchR!10646 (regex!8598 (h!80640 rulesArg!141)) (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(assert (= (and d!2358805 (not res!3135909)) b!7903240))

(assert (=> d!2358805 m!8277454))

(assert (=> d!2358805 m!8277356))

(assert (=> d!2358805 m!8277454))

(assert (=> d!2358805 m!8277356))

(assert (=> d!2358805 m!8277456))

(assert (=> d!2358805 m!8277484))

(declare-fun m!8278022 () Bool)

(assert (=> d!2358805 m!8278022))

(declare-fun m!8278024 () Bool)

(assert (=> d!2358805 m!8278024))

(assert (=> b!7903240 m!8277454))

(assert (=> b!7903240 m!8277356))

(assert (=> b!7903240 m!8277454))

(assert (=> b!7903240 m!8277356))

(assert (=> b!7903240 m!8277456))

(assert (=> b!7903240 m!8277458))

(assert (=> b!7902865 d!2358805))

(declare-fun d!2358815 () Bool)

(declare-fun lt!2684095 () Int)

(assert (=> d!2358815 (>= lt!2684095 0)))

(declare-fun e!4665035 () Int)

(assert (=> d!2358815 (= lt!2684095 e!4665035)))

(declare-fun c!1450317 () Bool)

(assert (=> d!2358815 (= c!1450317 ((_ is Nil!74191) Nil!74191))))

(assert (=> d!2358815 (= (size!42991 Nil!74191) lt!2684095)))

(declare-fun b!7903241 () Bool)

(assert (=> b!7903241 (= e!4665035 0)))

(declare-fun b!7903242 () Bool)

(assert (=> b!7903242 (= e!4665035 (+ 1 (size!42991 (t!389320 Nil!74191))))))

(assert (= (and d!2358815 c!1450317) b!7903241))

(assert (= (and d!2358815 (not c!1450317)) b!7903242))

(declare-fun m!8278026 () Bool)

(assert (=> b!7903242 m!8278026))

(assert (=> b!7902865 d!2358815))

(declare-fun d!2358817 () Bool)

(assert (=> d!2358817 (= (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))) ((_ is Nil!74191) (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(assert (=> b!7902865 d!2358817))

(declare-fun d!2358819 () Bool)

(declare-fun e!4665113 () Bool)

(assert (=> d!2358819 e!4665113))

(declare-fun res!3135961 () Bool)

(assert (=> d!2358819 (=> (not res!3135961) (not e!4665113))))

(declare-fun lt!2684170 () tuple2!70226)

(assert (=> d!2358819 (= res!3135961 (= (++!18160 (_1!38416 lt!2684170) (_2!38416 lt!2684170)) input!1184))))

(declare-fun e!4665114 () tuple2!70226)

(assert (=> d!2358819 (= lt!2684170 e!4665114)))

(declare-fun c!1450366 () Bool)

(declare-fun lostCause!1915 (Regex!21301) Bool)

(assert (=> d!2358819 (= c!1450366 (lostCause!1915 (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun lt!2684172 () Unit!169221)

(declare-fun Unit!169223 () Unit!169221)

(assert (=> d!2358819 (= lt!2684172 Unit!169223)))

(declare-fun getSuffix!3683 (List!74315 List!74315) List!74315)

(assert (=> d!2358819 (= (getSuffix!3683 input!1184 Nil!74191) input!1184)))

(declare-fun lt!2684163 () Unit!169221)

(declare-fun lt!2684171 () Unit!169221)

(assert (=> d!2358819 (= lt!2684163 lt!2684171)))

(declare-fun lt!2684164 () List!74315)

(assert (=> d!2358819 (= input!1184 lt!2684164)))

(declare-fun lemmaSamePrefixThenSameSuffix!2931 (List!74315 List!74315 List!74315 List!74315 List!74315) Unit!169221)

(assert (=> d!2358819 (= lt!2684171 (lemmaSamePrefixThenSameSuffix!2931 Nil!74191 input!1184 Nil!74191 lt!2684164 input!1184))))

(assert (=> d!2358819 (= lt!2684164 (getSuffix!3683 input!1184 Nil!74191))))

(declare-fun lt!2684174 () Unit!169221)

(declare-fun lt!2684180 () Unit!169221)

(assert (=> d!2358819 (= lt!2684174 lt!2684180)))

(assert (=> d!2358819 (isPrefix!6431 Nil!74191 (++!18160 Nil!74191 input!1184))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3793 (List!74315 List!74315) Unit!169221)

(assert (=> d!2358819 (= lt!2684180 (lemmaConcatTwoListThenFirstIsPrefix!3793 Nil!74191 input!1184))))

(assert (=> d!2358819 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141)))))

(assert (=> d!2358819 (= (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)) lt!2684170)))

(declare-fun b!7903383 () Bool)

(assert (=> b!7903383 (= e!4665114 (tuple2!70227 Nil!74191 input!1184))))

(declare-fun b!7903384 () Bool)

(declare-fun e!4665117 () tuple2!70226)

(assert (=> b!7903384 (= e!4665117 (tuple2!70227 Nil!74191 Nil!74191))))

(declare-fun bm!733286 () Bool)

(declare-fun call!733297 () List!74315)

(assert (=> bm!733286 (= call!733297 (tail!15688 input!1184))))

(declare-fun b!7903385 () Bool)

(assert (=> b!7903385 (= e!4665117 (tuple2!70227 Nil!74191 input!1184))))

(declare-fun b!7903386 () Bool)

(declare-fun c!1450365 () Bool)

(declare-fun call!733294 () Bool)

(assert (=> b!7903386 (= c!1450365 call!733294)))

(declare-fun lt!2684175 () Unit!169221)

(declare-fun lt!2684182 () Unit!169221)

(assert (=> b!7903386 (= lt!2684175 lt!2684182)))

(assert (=> b!7903386 (= input!1184 Nil!74191)))

(declare-fun call!733291 () Unit!169221)

(assert (=> b!7903386 (= lt!2684182 call!733291)))

(declare-fun lt!2684183 () Unit!169221)

(declare-fun lt!2684188 () Unit!169221)

(assert (=> b!7903386 (= lt!2684183 lt!2684188)))

(declare-fun call!733292 () Bool)

(assert (=> b!7903386 call!733292))

(declare-fun call!733295 () Unit!169221)

(assert (=> b!7903386 (= lt!2684188 call!733295)))

(declare-fun e!4665111 () tuple2!70226)

(assert (=> b!7903386 (= e!4665111 e!4665117)))

(declare-fun b!7903387 () Bool)

(declare-fun c!1450362 () Bool)

(assert (=> b!7903387 (= c!1450362 call!733294)))

(declare-fun lt!2684166 () Unit!169221)

(declare-fun lt!2684178 () Unit!169221)

(assert (=> b!7903387 (= lt!2684166 lt!2684178)))

(declare-fun lt!2684168 () C!42932)

(declare-fun lt!2684167 () List!74315)

(assert (=> b!7903387 (= (++!18160 (++!18160 Nil!74191 (Cons!74191 lt!2684168 Nil!74191)) lt!2684167) input!1184)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3470 (List!74315 C!42932 List!74315 List!74315) Unit!169221)

(assert (=> b!7903387 (= lt!2684178 (lemmaMoveElementToOtherListKeepsConcatEq!3470 Nil!74191 lt!2684168 lt!2684167 input!1184))))

(assert (=> b!7903387 (= lt!2684167 (tail!15688 input!1184))))

(assert (=> b!7903387 (= lt!2684168 (head!16145 input!1184))))

(declare-fun lt!2684187 () Unit!169221)

(declare-fun lt!2684189 () Unit!169221)

(assert (=> b!7903387 (= lt!2684187 lt!2684189)))

(assert (=> b!7903387 (isPrefix!6431 (++!18160 Nil!74191 (Cons!74191 (head!16145 (getSuffix!3683 input!1184 Nil!74191)) Nil!74191)) input!1184)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1248 (List!74315 List!74315) Unit!169221)

(assert (=> b!7903387 (= lt!2684189 (lemmaAddHeadSuffixToPrefixStillPrefix!1248 Nil!74191 input!1184))))

(declare-fun lt!2684186 () Unit!169221)

(declare-fun lt!2684165 () Unit!169221)

(assert (=> b!7903387 (= lt!2684186 lt!2684165)))

(assert (=> b!7903387 (= lt!2684165 (lemmaAddHeadSuffixToPrefixStillPrefix!1248 Nil!74191 input!1184))))

(declare-fun lt!2684169 () List!74315)

(assert (=> b!7903387 (= lt!2684169 (++!18160 Nil!74191 (Cons!74191 (head!16145 input!1184) Nil!74191)))))

(declare-fun lt!2684181 () Unit!169221)

(declare-fun e!4665115 () Unit!169221)

(assert (=> b!7903387 (= lt!2684181 e!4665115)))

(declare-fun c!1450364 () Bool)

(assert (=> b!7903387 (= c!1450364 (= (size!42991 Nil!74191) (size!42991 input!1184)))))

(declare-fun lt!2684162 () Unit!169221)

(declare-fun lt!2684173 () Unit!169221)

(assert (=> b!7903387 (= lt!2684162 lt!2684173)))

(assert (=> b!7903387 (<= (size!42991 Nil!74191) (size!42991 input!1184))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1028 (List!74315 List!74315) Unit!169221)

(assert (=> b!7903387 (= lt!2684173 (lemmaIsPrefixThenSmallerEqSize!1028 Nil!74191 input!1184))))

(declare-fun e!4665116 () tuple2!70226)

(assert (=> b!7903387 (= e!4665111 e!4665116)))

(declare-fun b!7903388 () Bool)

(declare-fun e!4665112 () tuple2!70226)

(declare-fun lt!2684179 () tuple2!70226)

(assert (=> b!7903388 (= e!4665112 lt!2684179)))

(declare-fun bm!733287 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1563 (List!74315 List!74315 List!74315) Unit!169221)

(assert (=> bm!733287 (= call!733291 (lemmaIsPrefixSameLengthThenSameList!1563 input!1184 Nil!74191 input!1184))))

(declare-fun b!7903389 () Bool)

(declare-fun e!4665118 () Bool)

(assert (=> b!7903389 (= e!4665118 (>= (size!42991 (_1!38416 lt!2684170)) (size!42991 Nil!74191)))))

(declare-fun b!7903390 () Bool)

(declare-fun Unit!169224 () Unit!169221)

(assert (=> b!7903390 (= e!4665115 Unit!169224)))

(declare-fun bm!733288 () Bool)

(assert (=> bm!733288 (= call!733294 (nullable!9484 (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun bm!733289 () Bool)

(assert (=> bm!733289 (= call!733295 (lemmaIsPrefixRefl!3942 input!1184 input!1184))))

(declare-fun bm!733290 () Bool)

(declare-fun call!733296 () Regex!21301)

(declare-fun call!733293 () C!42932)

(assert (=> bm!733290 (= call!733296 (derivativeStep!6427 (regex!8598 (h!80640 rulesArg!141)) call!733293))))

(declare-fun bm!733291 () Bool)

(declare-fun call!733298 () tuple2!70226)

(assert (=> bm!733291 (= call!733298 (findLongestMatchInner!2153 call!733296 lt!2684169 (+ (size!42991 Nil!74191) 1) call!733297 input!1184 (size!42991 input!1184)))))

(declare-fun b!7903391 () Bool)

(assert (=> b!7903391 (= e!4665113 e!4665118)))

(declare-fun res!3135962 () Bool)

(assert (=> b!7903391 (=> res!3135962 e!4665118)))

(assert (=> b!7903391 (= res!3135962 (isEmpty!42567 (_1!38416 lt!2684170)))))

(declare-fun b!7903392 () Bool)

(assert (=> b!7903392 (= e!4665116 e!4665112)))

(assert (=> b!7903392 (= lt!2684179 call!733298)))

(declare-fun c!1450363 () Bool)

(assert (=> b!7903392 (= c!1450363 (isEmpty!42567 (_1!38416 lt!2684179)))))

(declare-fun bm!733292 () Bool)

(assert (=> bm!733292 (= call!733292 (isPrefix!6431 input!1184 input!1184))))

(declare-fun b!7903393 () Bool)

(assert (=> b!7903393 (= e!4665114 e!4665111)))

(declare-fun c!1450367 () Bool)

(assert (=> b!7903393 (= c!1450367 (= (size!42991 Nil!74191) (size!42991 input!1184)))))

(declare-fun b!7903394 () Bool)

(declare-fun Unit!169225 () Unit!169221)

(assert (=> b!7903394 (= e!4665115 Unit!169225)))

(declare-fun lt!2684185 () Unit!169221)

(assert (=> b!7903394 (= lt!2684185 call!733295)))

(assert (=> b!7903394 call!733292))

(declare-fun lt!2684176 () Unit!169221)

(assert (=> b!7903394 (= lt!2684176 lt!2684185)))

(declare-fun lt!2684177 () Unit!169221)

(assert (=> b!7903394 (= lt!2684177 call!733291)))

(assert (=> b!7903394 (= input!1184 Nil!74191)))

(declare-fun lt!2684184 () Unit!169221)

(assert (=> b!7903394 (= lt!2684184 lt!2684177)))

(assert (=> b!7903394 false))

(declare-fun bm!733293 () Bool)

(assert (=> bm!733293 (= call!733293 (head!16145 input!1184))))

(declare-fun b!7903395 () Bool)

(assert (=> b!7903395 (= e!4665116 call!733298)))

(declare-fun b!7903396 () Bool)

(assert (=> b!7903396 (= e!4665112 (tuple2!70227 Nil!74191 input!1184))))

(assert (= (and d!2358819 c!1450366) b!7903383))

(assert (= (and d!2358819 (not c!1450366)) b!7903393))

(assert (= (and b!7903393 c!1450367) b!7903386))

(assert (= (and b!7903393 (not c!1450367)) b!7903387))

(assert (= (and b!7903386 c!1450365) b!7903384))

(assert (= (and b!7903386 (not c!1450365)) b!7903385))

(assert (= (and b!7903387 c!1450364) b!7903394))

(assert (= (and b!7903387 (not c!1450364)) b!7903390))

(assert (= (and b!7903387 c!1450362) b!7903392))

(assert (= (and b!7903387 (not c!1450362)) b!7903395))

(assert (= (and b!7903392 c!1450363) b!7903396))

(assert (= (and b!7903392 (not c!1450363)) b!7903388))

(assert (= (or b!7903392 b!7903395) bm!733286))

(assert (= (or b!7903392 b!7903395) bm!733293))

(assert (= (or b!7903392 b!7903395) bm!733290))

(assert (= (or b!7903392 b!7903395) bm!733291))

(assert (= (or b!7903386 b!7903394) bm!733292))

(assert (= (or b!7903386 b!7903387) bm!733288))

(assert (= (or b!7903386 b!7903394) bm!733289))

(assert (= (or b!7903386 b!7903394) bm!733287))

(assert (= (and d!2358819 res!3135961) b!7903391))

(assert (= (and b!7903391 (not res!3135962)) b!7903389))

(declare-fun m!8278116 () Bool)

(assert (=> bm!733288 m!8278116))

(assert (=> bm!733292 m!8277342))

(assert (=> bm!733291 m!8277356))

(declare-fun m!8278118 () Bool)

(assert (=> bm!733291 m!8278118))

(declare-fun m!8278120 () Bool)

(assert (=> b!7903391 m!8278120))

(assert (=> bm!733289 m!8277344))

(declare-fun m!8278122 () Bool)

(assert (=> bm!733290 m!8278122))

(declare-fun m!8278124 () Bool)

(assert (=> bm!733287 m!8278124))

(assert (=> bm!733293 m!8277418))

(declare-fun m!8278126 () Bool)

(assert (=> d!2358819 m!8278126))

(declare-fun m!8278128 () Bool)

(assert (=> d!2358819 m!8278128))

(assert (=> d!2358819 m!8278126))

(declare-fun m!8278130 () Bool)

(assert (=> d!2358819 m!8278130))

(declare-fun m!8278132 () Bool)

(assert (=> d!2358819 m!8278132))

(declare-fun m!8278134 () Bool)

(assert (=> d!2358819 m!8278134))

(declare-fun m!8278136 () Bool)

(assert (=> d!2358819 m!8278136))

(declare-fun m!8278138 () Bool)

(assert (=> d!2358819 m!8278138))

(assert (=> d!2358819 m!8278022))

(assert (=> b!7903387 m!8277418))

(declare-fun m!8278140 () Bool)

(assert (=> b!7903387 m!8278140))

(declare-fun m!8278142 () Bool)

(assert (=> b!7903387 m!8278142))

(declare-fun m!8278144 () Bool)

(assert (=> b!7903387 m!8278144))

(assert (=> b!7903387 m!8277420))

(declare-fun m!8278146 () Bool)

(assert (=> b!7903387 m!8278146))

(assert (=> b!7903387 m!8278136))

(declare-fun m!8278148 () Bool)

(assert (=> b!7903387 m!8278148))

(assert (=> b!7903387 m!8277454))

(assert (=> b!7903387 m!8278140))

(declare-fun m!8278150 () Bool)

(assert (=> b!7903387 m!8278150))

(declare-fun m!8278152 () Bool)

(assert (=> b!7903387 m!8278152))

(declare-fun m!8278154 () Bool)

(assert (=> b!7903387 m!8278154))

(declare-fun m!8278156 () Bool)

(assert (=> b!7903387 m!8278156))

(assert (=> b!7903387 m!8278136))

(assert (=> b!7903387 m!8277356))

(assert (=> b!7903387 m!8278152))

(assert (=> bm!733286 m!8277420))

(declare-fun m!8278158 () Bool)

(assert (=> b!7903389 m!8278158))

(assert (=> b!7903389 m!8277454))

(declare-fun m!8278160 () Bool)

(assert (=> b!7903392 m!8278160))

(assert (=> b!7902865 d!2358819))

(declare-fun d!2358849 () Bool)

(assert (=> d!2358849 (= (seqFromList!6151 (_1!38416 lt!2683964)) (fromListB!2776 (_1!38416 lt!2683964)))))

(declare-fun bs!1968037 () Bool)

(assert (= bs!1968037 d!2358849))

(declare-fun m!8278162 () Bool)

(assert (=> bs!1968037 m!8278162))

(assert (=> b!7902865 d!2358849))

(assert (=> b!7902865 d!2358615))

(declare-fun b!7903407 () Bool)

(declare-fun res!3135965 () Bool)

(declare-fun e!4665127 () Bool)

(assert (=> b!7903407 (=> res!3135965 e!4665127)))

(assert (=> b!7903407 (= res!3135965 (not ((_ is IntegerValue!26744) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911)))))))))

(declare-fun e!4665125 () Bool)

(assert (=> b!7903407 (= e!4665125 e!4665127)))

(declare-fun d!2358851 () Bool)

(declare-fun c!1450373 () Bool)

(assert (=> d!2358851 (= c!1450373 ((_ is IntegerValue!26742) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(declare-fun e!4665126 () Bool)

(assert (=> d!2358851 (= (inv!21 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))) e!4665126)))

(declare-fun b!7903408 () Bool)

(declare-fun inv!17 (TokenValue!8914) Bool)

(assert (=> b!7903408 (= e!4665125 (inv!17 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(declare-fun b!7903409 () Bool)

(declare-fun inv!16 (TokenValue!8914) Bool)

(assert (=> b!7903409 (= e!4665126 (inv!16 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(declare-fun b!7903410 () Bool)

(declare-fun inv!15 (TokenValue!8914) Bool)

(assert (=> b!7903410 (= e!4665127 (inv!15 (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(declare-fun b!7903411 () Bool)

(assert (=> b!7903411 (= e!4665126 e!4665125)))

(declare-fun c!1450372 () Bool)

(assert (=> b!7903411 (= c!1450372 ((_ is IntegerValue!26743) (dynLambda!30056 (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (seqFromList!6151 (originalCharacters!8839 (_1!38414 lt!2683911))))))))

(assert (= (and d!2358851 c!1450373) b!7903409))

(assert (= (and d!2358851 (not c!1450373)) b!7903411))

(assert (= (and b!7903411 c!1450372) b!7903408))

(assert (= (and b!7903411 (not c!1450372)) b!7903407))

(assert (= (and b!7903407 (not res!3135965)) b!7903410))

(declare-fun m!8278164 () Bool)

(assert (=> b!7903408 m!8278164))

(declare-fun m!8278166 () Bool)

(assert (=> b!7903409 m!8278166))

(declare-fun m!8278168 () Bool)

(assert (=> b!7903410 m!8278168))

(assert (=> tb!262847 d!2358851))

(declare-fun b!7903413 () Bool)

(declare-fun res!3135969 () Bool)

(declare-fun e!4665129 () Bool)

(assert (=> b!7903413 (=> (not res!3135969) (not e!4665129))))

(assert (=> b!7903413 (= res!3135969 (= (head!16145 (tail!15688 input!1184)) (head!16145 (tail!15688 input!1184))))))

(declare-fun d!2358853 () Bool)

(declare-fun e!4665128 () Bool)

(assert (=> d!2358853 e!4665128))

(declare-fun res!3135967 () Bool)

(assert (=> d!2358853 (=> res!3135967 e!4665128)))

(declare-fun lt!2684204 () Bool)

(assert (=> d!2358853 (= res!3135967 (not lt!2684204))))

(declare-fun e!4665130 () Bool)

(assert (=> d!2358853 (= lt!2684204 e!4665130)))

(declare-fun res!3135966 () Bool)

(assert (=> d!2358853 (=> res!3135966 e!4665130)))

(assert (=> d!2358853 (= res!3135966 ((_ is Nil!74191) (tail!15688 input!1184)))))

(assert (=> d!2358853 (= (isPrefix!6431 (tail!15688 input!1184) (tail!15688 input!1184)) lt!2684204)))

(declare-fun b!7903412 () Bool)

(assert (=> b!7903412 (= e!4665130 e!4665129)))

(declare-fun res!3135968 () Bool)

(assert (=> b!7903412 (=> (not res!3135968) (not e!4665129))))

(assert (=> b!7903412 (= res!3135968 (not ((_ is Nil!74191) (tail!15688 input!1184))))))

(declare-fun b!7903414 () Bool)

(assert (=> b!7903414 (= e!4665129 (isPrefix!6431 (tail!15688 (tail!15688 input!1184)) (tail!15688 (tail!15688 input!1184))))))

(declare-fun b!7903415 () Bool)

(assert (=> b!7903415 (= e!4665128 (>= (size!42991 (tail!15688 input!1184)) (size!42991 (tail!15688 input!1184))))))

(assert (= (and d!2358853 (not res!3135966)) b!7903412))

(assert (= (and b!7903412 res!3135968) b!7903413))

(assert (= (and b!7903413 res!3135969) b!7903414))

(assert (= (and d!2358853 (not res!3135967)) b!7903415))

(assert (=> b!7903413 m!8277420))

(declare-fun m!8278170 () Bool)

(assert (=> b!7903413 m!8278170))

(assert (=> b!7903413 m!8277420))

(assert (=> b!7903413 m!8278170))

(assert (=> b!7903414 m!8277420))

(declare-fun m!8278172 () Bool)

(assert (=> b!7903414 m!8278172))

(assert (=> b!7903414 m!8277420))

(assert (=> b!7903414 m!8278172))

(assert (=> b!7903414 m!8278172))

(assert (=> b!7903414 m!8278172))

(declare-fun m!8278174 () Bool)

(assert (=> b!7903414 m!8278174))

(assert (=> b!7903415 m!8277420))

(declare-fun m!8278176 () Bool)

(assert (=> b!7903415 m!8278176))

(assert (=> b!7903415 m!8277420))

(assert (=> b!7903415 m!8278176))

(assert (=> b!7902812 d!2358853))

(declare-fun d!2358855 () Bool)

(assert (=> d!2358855 (= (tail!15688 input!1184) (t!389320 input!1184))))

(assert (=> b!7902812 d!2358855))

(declare-fun d!2358857 () Bool)

(assert (=> d!2358857 (= (isDefined!14456 lt!2683951) (not (isEmpty!42565 lt!2683951)))))

(declare-fun bs!1968038 () Bool)

(assert (= bs!1968038 d!2358857))

(assert (=> bs!1968038 m!8277434))

(assert (=> b!7902840 d!2358857))

(declare-fun b!7903448 () Bool)

(declare-fun e!4665147 () List!74315)

(assert (=> b!7903448 (= e!4665147 Nil!74191)))

(declare-fun b!7903449 () Bool)

(declare-fun e!4665148 () List!74315)

(assert (=> b!7903449 (= e!4665147 e!4665148)))

(declare-fun c!1450391 () Bool)

(assert (=> b!7903449 (= c!1450391 ((_ is Leaf!30039) (c!1450235 (charsOf!5542 (_1!38414 lt!2683911)))))))

(declare-fun d!2358859 () Bool)

(declare-fun c!1450390 () Bool)

(assert (=> d!2358859 (= c!1450390 ((_ is Empty!15772) (c!1450235 (charsOf!5542 (_1!38414 lt!2683911)))))))

(assert (=> d!2358859 (= (list!19227 (c!1450235 (charsOf!5542 (_1!38414 lt!2683911)))) e!4665147)))

(declare-fun b!7903450 () Bool)

(declare-fun list!19228 (IArray!31605) List!74315)

(assert (=> b!7903450 (= e!4665148 (list!19228 (xs!19154 (c!1450235 (charsOf!5542 (_1!38414 lt!2683911))))))))

(declare-fun b!7903451 () Bool)

(assert (=> b!7903451 (= e!4665148 (++!18160 (list!19227 (left!56594 (c!1450235 (charsOf!5542 (_1!38414 lt!2683911))))) (list!19227 (right!56924 (c!1450235 (charsOf!5542 (_1!38414 lt!2683911)))))))))

(assert (= (and d!2358859 c!1450390) b!7903448))

(assert (= (and d!2358859 (not c!1450390)) b!7903449))

(assert (= (and b!7903449 c!1450391) b!7903450))

(assert (= (and b!7903449 (not c!1450391)) b!7903451))

(declare-fun m!8278178 () Bool)

(assert (=> b!7903450 m!8278178))

(declare-fun m!8278180 () Bool)

(assert (=> b!7903451 m!8278180))

(declare-fun m!8278182 () Bool)

(assert (=> b!7903451 m!8278182))

(assert (=> b!7903451 m!8278180))

(assert (=> b!7903451 m!8278182))

(declare-fun m!8278184 () Bool)

(assert (=> b!7903451 m!8278184))

(assert (=> d!2358653 d!2358859))

(declare-fun b!7903452 () Bool)

(declare-fun res!3135974 () Bool)

(declare-fun e!4665152 () Bool)

(assert (=> b!7903452 (=> res!3135974 e!4665152)))

(assert (=> b!7903452 (= res!3135974 (not (isEmpty!42567 (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))))

(declare-fun b!7903453 () Bool)

(declare-fun e!4665155 () Bool)

(declare-fun lt!2684247 () Bool)

(assert (=> b!7903453 (= e!4665155 (not lt!2684247))))

(declare-fun b!7903454 () Bool)

(declare-fun res!3135977 () Bool)

(declare-fun e!4665153 () Bool)

(assert (=> b!7903454 (=> (not res!3135977) (not e!4665153))))

(declare-fun call!733307 () Bool)

(assert (=> b!7903454 (= res!3135977 (not call!733307))))

(declare-fun b!7903455 () Bool)

(declare-fun e!4665150 () Bool)

(assert (=> b!7903455 (= e!4665150 (nullable!9484 (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun b!7903456 () Bool)

(assert (=> b!7903456 (= e!4665150 (matchR!10646 (derivativeStep!6427 (regex!8598 (h!80640 rulesArg!141)) (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))))) (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))))))))

(declare-fun b!7903457 () Bool)

(declare-fun res!3135975 () Bool)

(declare-fun e!4665154 () Bool)

(assert (=> b!7903457 (=> res!3135975 e!4665154)))

(assert (=> b!7903457 (= res!3135975 e!4665153)))

(declare-fun res!3135971 () Bool)

(assert (=> b!7903457 (=> (not res!3135971) (not e!4665153))))

(assert (=> b!7903457 (= res!3135971 lt!2684247)))

(declare-fun b!7903458 () Bool)

(declare-fun e!4665151 () Bool)

(assert (=> b!7903458 (= e!4665151 e!4665152)))

(declare-fun res!3135976 () Bool)

(assert (=> b!7903458 (=> res!3135976 e!4665152)))

(assert (=> b!7903458 (= res!3135976 call!733307)))

(declare-fun b!7903459 () Bool)

(declare-fun res!3135973 () Bool)

(assert (=> b!7903459 (=> res!3135973 e!4665154)))

(assert (=> b!7903459 (= res!3135973 (not ((_ is ElementMatch!21301) (regex!8598 (h!80640 rulesArg!141)))))))

(assert (=> b!7903459 (= e!4665155 e!4665154)))

(declare-fun b!7903460 () Bool)

(declare-fun res!3135970 () Bool)

(assert (=> b!7903460 (=> (not res!3135970) (not e!4665153))))

(assert (=> b!7903460 (= res!3135970 (isEmpty!42567 (tail!15688 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967)))))))))

(declare-fun b!7903461 () Bool)

(assert (=> b!7903461 (= e!4665152 (not (= (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (c!1450236 (regex!8598 (h!80640 rulesArg!141))))))))

(declare-fun b!7903462 () Bool)

(assert (=> b!7903462 (= e!4665154 e!4665151)))

(declare-fun res!3135972 () Bool)

(assert (=> b!7903462 (=> (not res!3135972) (not e!4665151))))

(assert (=> b!7903462 (= res!3135972 (not lt!2684247))))

(declare-fun b!7903463 () Bool)

(assert (=> b!7903463 (= e!4665153 (= (head!16145 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) (c!1450236 (regex!8598 (h!80640 rulesArg!141)))))))

(declare-fun b!7903464 () Bool)

(declare-fun e!4665149 () Bool)

(assert (=> b!7903464 (= e!4665149 (= lt!2684247 call!733307))))

(declare-fun bm!733302 () Bool)

(assert (=> bm!733302 (= call!733307 (isEmpty!42567 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))

(declare-fun b!7903465 () Bool)

(assert (=> b!7903465 (= e!4665149 e!4665155)))

(declare-fun c!1450393 () Bool)

(assert (=> b!7903465 (= c!1450393 ((_ is EmptyLang!21301) (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun d!2358861 () Bool)

(assert (=> d!2358861 e!4665149))

(declare-fun c!1450392 () Bool)

(assert (=> d!2358861 (= c!1450392 ((_ is EmptyExpr!21301) (regex!8598 (h!80640 rulesArg!141))))))

(assert (=> d!2358861 (= lt!2684247 e!4665150)))

(declare-fun c!1450394 () Bool)

(assert (=> d!2358861 (= c!1450394 (isEmpty!42567 (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))))))

(assert (=> d!2358861 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141)))))

(assert (=> d!2358861 (= (matchR!10646 (regex!8598 (h!80640 rulesArg!141)) (list!19225 (charsOf!5542 (_1!38414 (get!26651 lt!2683967))))) lt!2684247)))

(assert (= (and d!2358861 c!1450394) b!7903455))

(assert (= (and d!2358861 (not c!1450394)) b!7903456))

(assert (= (and d!2358861 c!1450392) b!7903464))

(assert (= (and d!2358861 (not c!1450392)) b!7903465))

(assert (= (and b!7903465 c!1450393) b!7903453))

(assert (= (and b!7903465 (not c!1450393)) b!7903459))

(assert (= (and b!7903459 (not res!3135973)) b!7903457))

(assert (= (and b!7903457 res!3135971) b!7903454))

(assert (= (and b!7903454 res!3135977) b!7903460))

(assert (= (and b!7903460 res!3135970) b!7903463))

(assert (= (and b!7903457 (not res!3135975)) b!7903462))

(assert (= (and b!7903462 res!3135972) b!7903458))

(assert (= (and b!7903458 (not res!3135976)) b!7903452))

(assert (= (and b!7903452 (not res!3135974)) b!7903461))

(assert (= (or b!7903464 b!7903454 b!7903458) bm!733302))

(assert (=> bm!733302 m!8277478))

(declare-fun m!8278186 () Bool)

(assert (=> bm!733302 m!8278186))

(assert (=> b!7903460 m!8277478))

(declare-fun m!8278188 () Bool)

(assert (=> b!7903460 m!8278188))

(assert (=> b!7903460 m!8278188))

(declare-fun m!8278190 () Bool)

(assert (=> b!7903460 m!8278190))

(assert (=> b!7903456 m!8277478))

(declare-fun m!8278192 () Bool)

(assert (=> b!7903456 m!8278192))

(assert (=> b!7903456 m!8278192))

(declare-fun m!8278194 () Bool)

(assert (=> b!7903456 m!8278194))

(assert (=> b!7903456 m!8277478))

(assert (=> b!7903456 m!8278188))

(assert (=> b!7903456 m!8278194))

(assert (=> b!7903456 m!8278188))

(declare-fun m!8278196 () Bool)

(assert (=> b!7903456 m!8278196))

(assert (=> b!7903455 m!8278116))

(assert (=> b!7903461 m!8277478))

(assert (=> b!7903461 m!8278192))

(assert (=> b!7903452 m!8277478))

(assert (=> b!7903452 m!8278188))

(assert (=> b!7903452 m!8278188))

(assert (=> b!7903452 m!8278190))

(assert (=> d!2358861 m!8277478))

(assert (=> d!2358861 m!8278186))

(assert (=> d!2358861 m!8278022))

(assert (=> b!7903463 m!8277478))

(assert (=> b!7903463 m!8278192))

(assert (=> b!7902861 d!2358861))

(assert (=> b!7902861 d!2358755))

(assert (=> b!7902861 d!2358757))

(assert (=> b!7902861 d!2358699))

(declare-fun d!2358863 () Bool)

(declare-fun res!3135982 () Bool)

(declare-fun e!4665158 () Bool)

(assert (=> d!2358863 (=> (not res!3135982) (not e!4665158))))

(assert (=> d!2358863 (= res!3135982 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141))))))

(assert (=> d!2358863 (= (ruleValid!3934 thiss!14377 (h!80640 rulesArg!141)) e!4665158)))

(declare-fun b!7903470 () Bool)

(declare-fun res!3135983 () Bool)

(assert (=> b!7903470 (=> (not res!3135983) (not e!4665158))))

(assert (=> b!7903470 (= res!3135983 (not (nullable!9484 (regex!8598 (h!80640 rulesArg!141)))))))

(declare-fun b!7903471 () Bool)

(assert (=> b!7903471 (= e!4665158 (not (= (tag!9462 (h!80640 rulesArg!141)) (String!82993 ""))))))

(assert (= (and d!2358863 res!3135982) b!7903470))

(assert (= (and b!7903470 res!3135983) b!7903471))

(assert (=> d!2358863 m!8278022))

(assert (=> b!7903470 m!8278116))

(assert (=> b!7902975 d!2358863))

(assert (=> b!7902813 d!2358615))

(declare-fun d!2358865 () Bool)

(declare-fun e!4665165 () Bool)

(assert (=> d!2358865 e!4665165))

(declare-fun res!3135990 () Bool)

(assert (=> d!2358865 (=> (not res!3135990) (not e!4665165))))

(declare-fun lt!2684250 () BalanceConc!30662)

(assert (=> d!2358865 (= res!3135990 (= (list!19225 lt!2684250) (originalCharacters!8839 (_1!38414 lt!2683911))))))

(declare-fun fromList!962 (List!74315) Conc!15772)

(assert (=> d!2358865 (= lt!2684250 (BalanceConc!30663 (fromList!962 (originalCharacters!8839 (_1!38414 lt!2683911)))))))

(assert (=> d!2358865 (= (fromListB!2776 (originalCharacters!8839 (_1!38414 lt!2683911))) lt!2684250)))

(declare-fun b!7903478 () Bool)

(assert (=> b!7903478 (= e!4665165 (isBalanced!4475 (fromList!962 (originalCharacters!8839 (_1!38414 lt!2683911)))))))

(assert (= (and d!2358865 res!3135990) b!7903478))

(declare-fun m!8278198 () Bool)

(assert (=> d!2358865 m!8278198))

(declare-fun m!8278200 () Bool)

(assert (=> d!2358865 m!8278200))

(assert (=> b!7903478 m!8278200))

(assert (=> b!7903478 m!8278200))

(declare-fun m!8278202 () Bool)

(assert (=> b!7903478 m!8278202))

(assert (=> d!2358611 d!2358865))

(assert (=> b!7902976 d!2358709))

(declare-fun d!2358867 () Bool)

(declare-fun c!1450398 () Bool)

(assert (=> d!2358867 (= c!1450398 ((_ is Node!15772) (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))))))

(declare-fun e!4665170 () Bool)

(assert (=> d!2358867 (= (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))) e!4665170)))

(declare-fun b!7903485 () Bool)

(declare-fun inv!95186 (Conc!15772) Bool)

(assert (=> b!7903485 (= e!4665170 (inv!95186 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))))))

(declare-fun b!7903486 () Bool)

(declare-fun e!4665171 () Bool)

(assert (=> b!7903486 (= e!4665170 e!4665171)))

(declare-fun res!3135993 () Bool)

(assert (=> b!7903486 (= res!3135993 (not ((_ is Leaf!30039) (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))))))

(assert (=> b!7903486 (=> res!3135993 e!4665171)))

(declare-fun b!7903487 () Bool)

(declare-fun inv!95187 (Conc!15772) Bool)

(assert (=> b!7903487 (= e!4665171 (inv!95187 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))))))

(assert (= (and d!2358867 c!1450398) b!7903485))

(assert (= (and d!2358867 (not c!1450398)) b!7903486))

(assert (= (and b!7903486 (not res!3135993)) b!7903487))

(declare-fun m!8278204 () Bool)

(assert (=> b!7903485 m!8278204))

(declare-fun m!8278206 () Bool)

(assert (=> b!7903487 m!8278206))

(assert (=> b!7902983 d!2358867))

(declare-fun b!7903488 () Bool)

(declare-fun e!4665178 () Bool)

(declare-fun e!4665173 () Bool)

(assert (=> b!7903488 (= e!4665178 e!4665173)))

(declare-fun c!1450399 () Bool)

(assert (=> b!7903488 (= c!1450399 ((_ is Union!21301) (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))

(declare-fun b!7903489 () Bool)

(declare-fun e!4665177 () Bool)

(assert (=> b!7903489 (= e!4665178 e!4665177)))

(declare-fun res!3135994 () Bool)

(assert (=> b!7903489 (= res!3135994 (not (nullable!9484 (reg!21630 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))))

(assert (=> b!7903489 (=> (not res!3135994) (not e!4665177))))

(declare-fun b!7903490 () Bool)

(declare-fun e!4665174 () Bool)

(declare-fun call!733316 () Bool)

(assert (=> b!7903490 (= e!4665174 call!733316)))

(declare-fun bm!733311 () Bool)

(declare-fun call!733318 () Bool)

(assert (=> bm!733311 (= call!733316 call!733318)))

(declare-fun d!2358869 () Bool)

(declare-fun res!3135996 () Bool)

(declare-fun e!4665172 () Bool)

(assert (=> d!2358869 (=> res!3135996 e!4665172)))

(assert (=> d!2358869 (= res!3135996 ((_ is ElementMatch!21301) (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))

(assert (=> d!2358869 (= (validRegex!11647 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))) e!4665172)))

(declare-fun b!7903491 () Bool)

(declare-fun e!4665175 () Bool)

(declare-fun e!4665176 () Bool)

(assert (=> b!7903491 (= e!4665175 e!4665176)))

(declare-fun res!3135997 () Bool)

(assert (=> b!7903491 (=> (not res!3135997) (not e!4665176))))

(assert (=> b!7903491 (= res!3135997 call!733316)))

(declare-fun b!7903492 () Bool)

(declare-fun res!3135995 () Bool)

(assert (=> b!7903492 (=> res!3135995 e!4665175)))

(assert (=> b!7903492 (= res!3135995 (not ((_ is Concat!30216) (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))

(assert (=> b!7903492 (= e!4665173 e!4665175)))

(declare-fun b!7903493 () Bool)

(assert (=> b!7903493 (= e!4665177 call!733318)))

(declare-fun b!7903494 () Bool)

(declare-fun call!733317 () Bool)

(assert (=> b!7903494 (= e!4665176 call!733317)))

(declare-fun b!7903495 () Bool)

(declare-fun res!3135998 () Bool)

(assert (=> b!7903495 (=> (not res!3135998) (not e!4665174))))

(assert (=> b!7903495 (= res!3135998 call!733317)))

(assert (=> b!7903495 (= e!4665173 e!4665174)))

(declare-fun bm!733312 () Bool)

(declare-fun c!1450400 () Bool)

(assert (=> bm!733312 (= call!733318 (validRegex!11647 (ite c!1450400 (reg!21630 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))) (ite c!1450399 (regTwo!43115 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))) (regOne!43114 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))))

(declare-fun bm!733313 () Bool)

(assert (=> bm!733313 (= call!733317 (validRegex!11647 (ite c!1450399 (regOne!43115 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))) (regTwo!43114 (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))))

(declare-fun b!7903496 () Bool)

(assert (=> b!7903496 (= e!4665172 e!4665178)))

(assert (=> b!7903496 (= c!1450400 ((_ is Star!21301) (ite c!1450253 (regOne!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regTwo!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))

(assert (= (and d!2358869 (not res!3135996)) b!7903496))

(assert (= (and b!7903496 c!1450400) b!7903489))

(assert (= (and b!7903496 (not c!1450400)) b!7903488))

(assert (= (and b!7903489 res!3135994) b!7903493))

(assert (= (and b!7903488 c!1450399) b!7903495))

(assert (= (and b!7903488 (not c!1450399)) b!7903492))

(assert (= (and b!7903495 res!3135998) b!7903490))

(assert (= (and b!7903492 (not res!3135995)) b!7903491))

(assert (= (and b!7903491 res!3135997) b!7903494))

(assert (= (or b!7903495 b!7903494) bm!733313))

(assert (= (or b!7903490 b!7903491) bm!733311))

(assert (= (or b!7903493 bm!733311) bm!733312))

(declare-fun m!8278208 () Bool)

(assert (=> b!7903489 m!8278208))

(declare-fun m!8278210 () Bool)

(assert (=> bm!733312 m!8278210))

(declare-fun m!8278212 () Bool)

(assert (=> bm!733313 m!8278212))

(assert (=> bm!733247 d!2358869))

(declare-fun d!2358871 () Bool)

(assert (=> d!2358871 (= (list!19225 lt!2684012) (list!19227 (c!1450235 lt!2684012)))))

(declare-fun bs!1968039 () Bool)

(assert (= bs!1968039 d!2358871))

(declare-fun m!8278214 () Bool)

(assert (=> bs!1968039 m!8278214))

(assert (=> d!2358655 d!2358871))

(assert (=> d!2358621 d!2358619))

(declare-fun d!2358873 () Bool)

(assert (=> d!2358873 (isPrefix!6431 input!1184 input!1184)))

(assert (=> d!2358873 true))

(declare-fun _$45!2437 () Unit!169221)

(assert (=> d!2358873 (= (choose!59717 input!1184 input!1184) _$45!2437)))

(declare-fun bs!1968040 () Bool)

(assert (= bs!1968040 d!2358873))

(assert (=> bs!1968040 m!8277342))

(assert (=> d!2358621 d!2358873))

(declare-fun d!2358875 () Bool)

(assert (=> d!2358875 (= (isEmpty!42565 lt!2683967) (not ((_ is Some!17879) lt!2683967)))))

(assert (=> d!2358625 d!2358875))

(declare-fun d!2358877 () Bool)

(assert (=> d!2358877 (= (isEmpty!42567 (_1!38416 lt!2683964)) ((_ is Nil!74191) (_1!38416 lt!2683964)))))

(assert (=> d!2358625 d!2358877))

(declare-fun d!2358879 () Bool)

(declare-fun lt!2684305 () tuple2!70226)

(assert (=> d!2358879 (= (++!18160 (_1!38416 lt!2684305) (_2!38416 lt!2684305)) input!1184)))

(declare-fun sizeTr!451 (List!74315 Int) Int)

(assert (=> d!2358879 (= lt!2684305 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 0 input!1184 input!1184 (sizeTr!451 input!1184 0)))))

(declare-fun lt!2684302 () Unit!169221)

(declare-fun lt!2684300 () Unit!169221)

(assert (=> d!2358879 (= lt!2684302 lt!2684300)))

(declare-fun lt!2684299 () List!74315)

(declare-fun lt!2684304 () Int)

(assert (=> d!2358879 (= (sizeTr!451 lt!2684299 lt!2684304) (+ (size!42991 lt!2684299) lt!2684304))))

(declare-fun lemmaSizeTrEqualsSize!450 (List!74315 Int) Unit!169221)

(assert (=> d!2358879 (= lt!2684300 (lemmaSizeTrEqualsSize!450 lt!2684299 lt!2684304))))

(assert (=> d!2358879 (= lt!2684304 0)))

(assert (=> d!2358879 (= lt!2684299 Nil!74191)))

(declare-fun lt!2684306 () Unit!169221)

(declare-fun lt!2684301 () Unit!169221)

(assert (=> d!2358879 (= lt!2684306 lt!2684301)))

(declare-fun lt!2684303 () Int)

(assert (=> d!2358879 (= (sizeTr!451 input!1184 lt!2684303) (+ (size!42991 input!1184) lt!2684303))))

(assert (=> d!2358879 (= lt!2684301 (lemmaSizeTrEqualsSize!450 input!1184 lt!2684303))))

(assert (=> d!2358879 (= lt!2684303 0)))

(assert (=> d!2358879 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141)))))

(assert (=> d!2358879 (= (findLongestMatch!1920 (regex!8598 (h!80640 rulesArg!141)) input!1184) lt!2684305)))

(declare-fun bs!1968042 () Bool)

(assert (= bs!1968042 d!2358879))

(declare-fun m!8278266 () Bool)

(assert (=> bs!1968042 m!8278266))

(declare-fun m!8278268 () Bool)

(assert (=> bs!1968042 m!8278268))

(declare-fun m!8278270 () Bool)

(assert (=> bs!1968042 m!8278270))

(assert (=> bs!1968042 m!8278022))

(declare-fun m!8278272 () Bool)

(assert (=> bs!1968042 m!8278272))

(assert (=> bs!1968042 m!8277356))

(declare-fun m!8278274 () Bool)

(assert (=> bs!1968042 m!8278274))

(declare-fun m!8278276 () Bool)

(assert (=> bs!1968042 m!8278276))

(declare-fun m!8278278 () Bool)

(assert (=> bs!1968042 m!8278278))

(assert (=> bs!1968042 m!8278278))

(declare-fun m!8278280 () Bool)

(assert (=> bs!1968042 m!8278280))

(assert (=> d!2358625 d!2358879))

(assert (=> d!2358625 d!2358863))

(assert (=> d!2358627 d!2358651))

(declare-fun d!2358889 () Bool)

(declare-fun lt!2684308 () Int)

(assert (=> d!2358889 (>= lt!2684308 0)))

(declare-fun e!4665192 () Int)

(assert (=> d!2358889 (= lt!2684308 e!4665192)))

(declare-fun c!1450409 () Bool)

(assert (=> d!2358889 (= c!1450409 ((_ is Nil!74191) (_2!38414 (get!26651 lt!2683967))))))

(assert (=> d!2358889 (= (size!42991 (_2!38414 (get!26651 lt!2683967))) lt!2684308)))

(declare-fun b!7903518 () Bool)

(assert (=> b!7903518 (= e!4665192 0)))

(declare-fun b!7903519 () Bool)

(assert (=> b!7903519 (= e!4665192 (+ 1 (size!42991 (t!389320 (_2!38414 (get!26651 lt!2683967))))))))

(assert (= (and d!2358889 c!1450409) b!7903518))

(assert (= (and d!2358889 (not c!1450409)) b!7903519))

(declare-fun m!8278284 () Bool)

(assert (=> b!7903519 m!8278284))

(assert (=> b!7902866 d!2358889))

(assert (=> b!7902866 d!2358699))

(assert (=> b!7902866 d!2358615))

(declare-fun d!2358891 () Bool)

(declare-fun lt!2684309 () Int)

(assert (=> d!2358891 (>= lt!2684309 0)))

(declare-fun e!4665193 () Int)

(assert (=> d!2358891 (= lt!2684309 e!4665193)))

(declare-fun c!1450410 () Bool)

(assert (=> d!2358891 (= c!1450410 ((_ is Nil!74191) lt!2683922))))

(assert (=> d!2358891 (= (size!42991 lt!2683922) lt!2684309)))

(declare-fun b!7903520 () Bool)

(assert (=> b!7903520 (= e!4665193 0)))

(declare-fun b!7903521 () Bool)

(assert (=> b!7903521 (= e!4665193 (+ 1 (size!42991 (t!389320 lt!2683922))))))

(assert (= (and d!2358891 c!1450410) b!7903520))

(assert (= (and d!2358891 (not c!1450410)) b!7903521))

(declare-fun m!8278286 () Bool)

(assert (=> b!7903521 m!8278286))

(assert (=> b!7902726 d!2358891))

(declare-fun d!2358895 () Bool)

(declare-fun lt!2684310 () Int)

(assert (=> d!2358895 (>= lt!2684310 0)))

(declare-fun e!4665194 () Int)

(assert (=> d!2358895 (= lt!2684310 e!4665194)))

(declare-fun c!1450411 () Bool)

(assert (=> d!2358895 (= c!1450411 ((_ is Nil!74191) lt!2683914))))

(assert (=> d!2358895 (= (size!42991 lt!2683914) lt!2684310)))

(declare-fun b!7903522 () Bool)

(assert (=> b!7903522 (= e!4665194 0)))

(declare-fun b!7903523 () Bool)

(assert (=> b!7903523 (= e!4665194 (+ 1 (size!42991 (t!389320 lt!2683914))))))

(assert (= (and d!2358895 c!1450411) b!7903522))

(assert (= (and d!2358895 (not c!1450411)) b!7903523))

(assert (=> b!7903523 m!8277942))

(assert (=> b!7902726 d!2358895))

(assert (=> b!7902726 d!2358613))

(declare-fun b!7903524 () Bool)

(declare-fun res!3136008 () Bool)

(declare-fun e!4665198 () Bool)

(assert (=> b!7903524 (=> res!3136008 e!4665198)))

(assert (=> b!7903524 (= res!3136008 (not (isEmpty!42567 (tail!15688 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))))

(declare-fun b!7903525 () Bool)

(declare-fun e!4665201 () Bool)

(declare-fun lt!2684311 () Bool)

(assert (=> b!7903525 (= e!4665201 (not lt!2684311))))

(declare-fun b!7903526 () Bool)

(declare-fun res!3136011 () Bool)

(declare-fun e!4665199 () Bool)

(assert (=> b!7903526 (=> (not res!3136011) (not e!4665199))))

(declare-fun call!733327 () Bool)

(assert (=> b!7903526 (= res!3136011 (not call!733327))))

(declare-fun b!7903527 () Bool)

(declare-fun e!4665196 () Bool)

(assert (=> b!7903527 (= e!4665196 (nullable!9484 (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun b!7903528 () Bool)

(assert (=> b!7903528 (= e!4665196 (matchR!10646 (derivativeStep!6427 (regex!8598 (h!80640 rulesArg!141)) (head!16145 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184))))) (tail!15688 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184))))))))

(declare-fun b!7903529 () Bool)

(declare-fun res!3136009 () Bool)

(declare-fun e!4665200 () Bool)

(assert (=> b!7903529 (=> res!3136009 e!4665200)))

(assert (=> b!7903529 (= res!3136009 e!4665199)))

(declare-fun res!3136005 () Bool)

(assert (=> b!7903529 (=> (not res!3136005) (not e!4665199))))

(assert (=> b!7903529 (= res!3136005 lt!2684311)))

(declare-fun b!7903530 () Bool)

(declare-fun e!4665197 () Bool)

(assert (=> b!7903530 (= e!4665197 e!4665198)))

(declare-fun res!3136010 () Bool)

(assert (=> b!7903530 (=> res!3136010 e!4665198)))

(assert (=> b!7903530 (= res!3136010 call!733327)))

(declare-fun b!7903531 () Bool)

(declare-fun res!3136007 () Bool)

(assert (=> b!7903531 (=> res!3136007 e!4665200)))

(assert (=> b!7903531 (= res!3136007 (not ((_ is ElementMatch!21301) (regex!8598 (h!80640 rulesArg!141)))))))

(assert (=> b!7903531 (= e!4665201 e!4665200)))

(declare-fun b!7903532 () Bool)

(declare-fun res!3136004 () Bool)

(assert (=> b!7903532 (=> (not res!3136004) (not e!4665199))))

(assert (=> b!7903532 (= res!3136004 (isEmpty!42567 (tail!15688 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184))))))))

(declare-fun b!7903533 () Bool)

(assert (=> b!7903533 (= e!4665198 (not (= (head!16145 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))) (c!1450236 (regex!8598 (h!80640 rulesArg!141))))))))

(declare-fun b!7903534 () Bool)

(assert (=> b!7903534 (= e!4665200 e!4665197)))

(declare-fun res!3136006 () Bool)

(assert (=> b!7903534 (=> (not res!3136006) (not e!4665197))))

(assert (=> b!7903534 (= res!3136006 (not lt!2684311))))

(declare-fun b!7903535 () Bool)

(assert (=> b!7903535 (= e!4665199 (= (head!16145 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))) (c!1450236 (regex!8598 (h!80640 rulesArg!141)))))))

(declare-fun b!7903536 () Bool)

(declare-fun e!4665195 () Bool)

(assert (=> b!7903536 (= e!4665195 (= lt!2684311 call!733327))))

(declare-fun bm!733322 () Bool)

(assert (=> bm!733322 (= call!733327 (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(declare-fun b!7903537 () Bool)

(assert (=> b!7903537 (= e!4665195 e!4665201)))

(declare-fun c!1450413 () Bool)

(assert (=> b!7903537 (= c!1450413 ((_ is EmptyLang!21301) (regex!8598 (h!80640 rulesArg!141))))))

(declare-fun d!2358899 () Bool)

(assert (=> d!2358899 e!4665195))

(declare-fun c!1450412 () Bool)

(assert (=> d!2358899 (= c!1450412 ((_ is EmptyExpr!21301) (regex!8598 (h!80640 rulesArg!141))))))

(assert (=> d!2358899 (= lt!2684311 e!4665196)))

(declare-fun c!1450414 () Bool)

(assert (=> d!2358899 (= c!1450414 (isEmpty!42567 (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))))))

(assert (=> d!2358899 (validRegex!11647 (regex!8598 (h!80640 rulesArg!141)))))

(assert (=> d!2358899 (= (matchR!10646 (regex!8598 (h!80640 rulesArg!141)) (_1!38416 (findLongestMatchInner!2153 (regex!8598 (h!80640 rulesArg!141)) Nil!74191 (size!42991 Nil!74191) input!1184 input!1184 (size!42991 input!1184)))) lt!2684311)))

(assert (= (and d!2358899 c!1450414) b!7903527))

(assert (= (and d!2358899 (not c!1450414)) b!7903528))

(assert (= (and d!2358899 c!1450412) b!7903536))

(assert (= (and d!2358899 (not c!1450412)) b!7903537))

(assert (= (and b!7903537 c!1450413) b!7903525))

(assert (= (and b!7903537 (not c!1450413)) b!7903531))

(assert (= (and b!7903531 (not res!3136007)) b!7903529))

(assert (= (and b!7903529 res!3136005) b!7903526))

(assert (= (and b!7903526 res!3136011) b!7903532))

(assert (= (and b!7903532 res!3136004) b!7903535))

(assert (= (and b!7903529 (not res!3136009)) b!7903534))

(assert (= (and b!7903534 res!3136006) b!7903530))

(assert (= (and b!7903530 (not res!3136010)) b!7903524))

(assert (= (and b!7903524 (not res!3136008)) b!7903533))

(assert (= (or b!7903536 b!7903526 b!7903530) bm!733322))

(assert (=> bm!733322 m!8277484))

(declare-fun m!8278288 () Bool)

(assert (=> b!7903532 m!8278288))

(assert (=> b!7903532 m!8278288))

(declare-fun m!8278290 () Bool)

(assert (=> b!7903532 m!8278290))

(declare-fun m!8278292 () Bool)

(assert (=> b!7903528 m!8278292))

(assert (=> b!7903528 m!8278292))

(declare-fun m!8278294 () Bool)

(assert (=> b!7903528 m!8278294))

(assert (=> b!7903528 m!8278288))

(assert (=> b!7903528 m!8278294))

(assert (=> b!7903528 m!8278288))

(declare-fun m!8278296 () Bool)

(assert (=> b!7903528 m!8278296))

(assert (=> b!7903527 m!8278116))

(assert (=> b!7903533 m!8278292))

(assert (=> b!7903524 m!8278288))

(assert (=> b!7903524 m!8278288))

(assert (=> b!7903524 m!8278290))

(assert (=> d!2358899 m!8277484))

(assert (=> d!2358899 m!8278022))

(assert (=> b!7903535 m!8278292))

(assert (=> b!7902867 d!2358899))

(assert (=> b!7902867 d!2358819))

(assert (=> b!7902867 d!2358815))

(assert (=> b!7902867 d!2358615))

(declare-fun d!2358901 () Bool)

(declare-fun lt!2684315 () Int)

(assert (=> d!2358901 (>= lt!2684315 0)))

(declare-fun e!4665202 () Int)

(assert (=> d!2358901 (= lt!2684315 e!4665202)))

(declare-fun c!1450415 () Bool)

(assert (=> d!2358901 (= c!1450415 ((_ is Nil!74191) (t!389320 (_2!38414 lt!2683911))))))

(assert (=> d!2358901 (= (size!42991 (t!389320 (_2!38414 lt!2683911))) lt!2684315)))

(declare-fun b!7903538 () Bool)

(assert (=> b!7903538 (= e!4665202 0)))

(declare-fun b!7903539 () Bool)

(assert (=> b!7903539 (= e!4665202 (+ 1 (size!42991 (t!389320 (t!389320 (_2!38414 lt!2683911))))))))

(assert (= (and d!2358901 c!1450415) b!7903538))

(assert (= (and d!2358901 (not c!1450415)) b!7903539))

(declare-fun m!8278304 () Bool)

(assert (=> b!7903539 m!8278304))

(assert (=> b!7902799 d!2358901))

(declare-fun b!7903540 () Bool)

(declare-fun e!4665209 () Bool)

(declare-fun e!4665204 () Bool)

(assert (=> b!7903540 (= e!4665209 e!4665204)))

(declare-fun c!1450416 () Bool)

(assert (=> b!7903540 (= c!1450416 ((_ is Union!21301) (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))

(declare-fun b!7903541 () Bool)

(declare-fun e!4665208 () Bool)

(assert (=> b!7903541 (= e!4665209 e!4665208)))

(declare-fun res!3136012 () Bool)

(assert (=> b!7903541 (= res!3136012 (not (nullable!9484 (reg!21630 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))))

(assert (=> b!7903541 (=> (not res!3136012) (not e!4665208))))

(declare-fun b!7903542 () Bool)

(declare-fun e!4665205 () Bool)

(declare-fun call!733328 () Bool)

(assert (=> b!7903542 (= e!4665205 call!733328)))

(declare-fun bm!733323 () Bool)

(declare-fun call!733330 () Bool)

(assert (=> bm!733323 (= call!733328 call!733330)))

(declare-fun d!2358905 () Bool)

(declare-fun res!3136014 () Bool)

(declare-fun e!4665203 () Bool)

(assert (=> d!2358905 (=> res!3136014 e!4665203)))

(assert (=> d!2358905 (= res!3136014 ((_ is ElementMatch!21301) (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))

(assert (=> d!2358905 (= (validRegex!11647 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))) e!4665203)))

(declare-fun b!7903543 () Bool)

(declare-fun e!4665206 () Bool)

(declare-fun e!4665207 () Bool)

(assert (=> b!7903543 (= e!4665206 e!4665207)))

(declare-fun res!3136015 () Bool)

(assert (=> b!7903543 (=> (not res!3136015) (not e!4665207))))

(assert (=> b!7903543 (= res!3136015 call!733328)))

(declare-fun b!7903544 () Bool)

(declare-fun res!3136013 () Bool)

(assert (=> b!7903544 (=> res!3136013 e!4665206)))

(assert (=> b!7903544 (= res!3136013 (not ((_ is Concat!30216) (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))))

(assert (=> b!7903544 (= e!4665204 e!4665206)))

(declare-fun b!7903545 () Bool)

(assert (=> b!7903545 (= e!4665208 call!733330)))

(declare-fun b!7903546 () Bool)

(declare-fun call!733329 () Bool)

(assert (=> b!7903546 (= e!4665207 call!733329)))

(declare-fun b!7903547 () Bool)

(declare-fun res!3136016 () Bool)

(assert (=> b!7903547 (=> (not res!3136016) (not e!4665205))))

(assert (=> b!7903547 (= res!3136016 call!733329)))

(assert (=> b!7903547 (= e!4665204 e!4665205)))

(declare-fun c!1450417 () Bool)

(declare-fun bm!733324 () Bool)

(assert (=> bm!733324 (= call!733330 (validRegex!11647 (ite c!1450417 (reg!21630 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))) (ite c!1450416 (regTwo!43115 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))) (regOne!43114 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))))))))))))

(declare-fun bm!733325 () Bool)

(assert (=> bm!733325 (= call!733329 (validRegex!11647 (ite c!1450416 (regOne!43115 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))) (regTwo!43114 (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))))

(declare-fun b!7903548 () Bool)

(assert (=> b!7903548 (= e!4665203 e!4665209)))

(assert (=> b!7903548 (= c!1450417 ((_ is Star!21301) (ite c!1450254 (reg!21630 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (ite c!1450253 (regTwo!43115 (regex!8598 (rule!11886 (_1!38414 lt!2683911)))) (regOne!43114 (regex!8598 (rule!11886 (_1!38414 lt!2683911))))))))))

(assert (= (and d!2358905 (not res!3136014)) b!7903548))

(assert (= (and b!7903548 c!1450417) b!7903541))

(assert (= (and b!7903548 (not c!1450417)) b!7903540))

(assert (= (and b!7903541 res!3136012) b!7903545))

(assert (= (and b!7903540 c!1450416) b!7903547))

(assert (= (and b!7903540 (not c!1450416)) b!7903544))

(assert (= (and b!7903547 res!3136016) b!7903542))

(assert (= (and b!7903544 (not res!3136013)) b!7903543))

(assert (= (and b!7903543 res!3136015) b!7903546))

(assert (= (or b!7903547 b!7903546) bm!733325))

(assert (= (or b!7903542 b!7903543) bm!733323))

(assert (= (or b!7903545 bm!733323) bm!733324))

(declare-fun m!8278308 () Bool)

(assert (=> b!7903541 m!8278308))

(declare-fun m!8278310 () Bool)

(assert (=> bm!733324 m!8278310))

(declare-fun m!8278312 () Bool)

(assert (=> bm!733325 m!8278312))

(assert (=> bm!733246 d!2358905))

(declare-fun e!4665210 () Bool)

(assert (=> b!7903016 (= tp!2354402 e!4665210)))

(declare-fun b!7903549 () Bool)

(assert (=> b!7903549 (= e!4665210 tp_is_empty!52977)))

(declare-fun b!7903550 () Bool)

(declare-fun tp!2354413 () Bool)

(declare-fun tp!2354416 () Bool)

(assert (=> b!7903550 (= e!4665210 (and tp!2354413 tp!2354416))))

(declare-fun b!7903552 () Bool)

(declare-fun tp!2354412 () Bool)

(declare-fun tp!2354415 () Bool)

(assert (=> b!7903552 (= e!4665210 (and tp!2354412 tp!2354415))))

(declare-fun b!7903551 () Bool)

(declare-fun tp!2354414 () Bool)

(assert (=> b!7903551 (= e!4665210 tp!2354414)))

(assert (= (and b!7903016 ((_ is ElementMatch!21301) (regOne!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903549))

(assert (= (and b!7903016 ((_ is Concat!30216) (regOne!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903550))

(assert (= (and b!7903016 ((_ is Star!21301) (regOne!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903551))

(assert (= (and b!7903016 ((_ is Union!21301) (regOne!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903552))

(declare-fun e!4665211 () Bool)

(assert (=> b!7903016 (= tp!2354405 e!4665211)))

(declare-fun b!7903553 () Bool)

(assert (=> b!7903553 (= e!4665211 tp_is_empty!52977)))

(declare-fun b!7903554 () Bool)

(declare-fun tp!2354418 () Bool)

(declare-fun tp!2354421 () Bool)

(assert (=> b!7903554 (= e!4665211 (and tp!2354418 tp!2354421))))

(declare-fun b!7903556 () Bool)

(declare-fun tp!2354417 () Bool)

(declare-fun tp!2354420 () Bool)

(assert (=> b!7903556 (= e!4665211 (and tp!2354417 tp!2354420))))

(declare-fun b!7903555 () Bool)

(declare-fun tp!2354419 () Bool)

(assert (=> b!7903555 (= e!4665211 tp!2354419)))

(assert (= (and b!7903016 ((_ is ElementMatch!21301) (regTwo!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903553))

(assert (= (and b!7903016 ((_ is Concat!30216) (regTwo!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903554))

(assert (= (and b!7903016 ((_ is Star!21301) (regTwo!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903555))

(assert (= (and b!7903016 ((_ is Union!21301) (regTwo!43115 (regex!8598 (h!80640 rulesArg!141))))) b!7903556))

(declare-fun b!7903559 () Bool)

(declare-fun b_free!134795 () Bool)

(declare-fun b_next!135585 () Bool)

(assert (=> b!7903559 (= b_free!134795 (not b_next!135585))))

(declare-fun t!389381 () Bool)

(declare-fun tb!262903 () Bool)

(assert (=> (and b!7903559 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141)))) t!389381) tb!262903))

(declare-fun result!359986 () Bool)

(assert (= result!359986 result!359978))

(assert (=> d!2358799 t!389381))

(declare-fun tb!262905 () Bool)

(declare-fun t!389383 () Bool)

(assert (=> (and b!7903559 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389383) tb!262905))

(declare-fun result!359988 () Bool)

(assert (= result!359988 result!359910))

(assert (=> d!2358609 t!389383))

(declare-fun t!389385 () Bool)

(declare-fun tb!262907 () Bool)

(assert (=> (and b!7903559 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389385) tb!262907))

(declare-fun result!359990 () Bool)

(assert (= result!359990 result!359966))

(assert (=> d!2358761 t!389385))

(declare-fun t!389387 () Bool)

(declare-fun tb!262909 () Bool)

(assert (=> (and b!7903559 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389387) tb!262909))

(declare-fun result!359992 () Bool)

(assert (= result!359992 result!359946))

(assert (=> d!2358667 t!389387))

(assert (=> d!2358783 t!389381))

(declare-fun tp!2354425 () Bool)

(declare-fun b_and!352875 () Bool)

(assert (=> b!7903559 (= tp!2354425 (and (=> t!389381 result!359986) (=> t!389387 result!359992) (=> t!389385 result!359990) (=> t!389383 result!359988) b_and!352875))))

(declare-fun b_free!134797 () Bool)

(declare-fun b_next!135587 () Bool)

(assert (=> b!7903559 (= b_free!134797 (not b_next!135587))))

(declare-fun t!389389 () Bool)

(declare-fun tb!262911 () Bool)

(assert (=> (and b!7903559 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911))))) t!389389) tb!262911))

(declare-fun result!359994 () Bool)

(assert (= result!359994 result!359932))

(assert (=> d!2358655 t!389389))

(declare-fun t!389391 () Bool)

(declare-fun tb!262913 () Bool)

(assert (=> (and b!7903559 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683951)))))) t!389391) tb!262913))

(declare-fun result!359996 () Bool)

(assert (= result!359996 result!359950))

(assert (=> d!2358697 t!389391))

(declare-fun tb!262915 () Bool)

(declare-fun t!389393 () Bool)

(assert (=> (and b!7903559 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 (get!26651 lt!2683967)))))) t!389393) tb!262915))

(declare-fun result!359998 () Bool)

(assert (= result!359998 result!359962))

(assert (=> d!2358757 t!389393))

(declare-fun t!389395 () Bool)

(declare-fun tb!262917 () Bool)

(assert (=> (and b!7903559 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (h!80640 rulesArg!141)))) t!389395) tb!262917))

(declare-fun result!360000 () Bool)

(assert (= result!360000 result!359974))

(assert (=> d!2358783 t!389395))

(declare-fun b_and!352877 () Bool)

(declare-fun tp!2354424 () Bool)

(assert (=> b!7903559 (= tp!2354424 (and (=> t!389389 result!359994) (=> t!389391 result!359996) (=> t!389393 result!359998) (=> t!389395 result!360000) b_and!352877))))

(declare-fun e!4665215 () Bool)

(assert (=> b!7903559 (= e!4665215 (and tp!2354425 tp!2354424))))

(declare-fun tp!2354422 () Bool)

(declare-fun e!4665214 () Bool)

(declare-fun b!7903558 () Bool)

(assert (=> b!7903558 (= e!4665214 (and tp!2354422 (inv!95177 (tag!9462 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (inv!95179 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) e!4665215))))

(declare-fun b!7903557 () Bool)

(declare-fun e!4665213 () Bool)

(declare-fun tp!2354423 () Bool)

(assert (=> b!7903557 (= e!4665213 (and e!4665214 tp!2354423))))

(assert (=> b!7903000 (= tp!2354389 e!4665213)))

(assert (= b!7903558 b!7903559))

(assert (= b!7903557 b!7903558))

(assert (= (and b!7903000 ((_ is Cons!74192) (t!389321 (t!389321 rulesArg!141)))) b!7903557))

(declare-fun m!8278314 () Bool)

(assert (=> b!7903558 m!8278314))

(declare-fun m!8278316 () Bool)

(assert (=> b!7903558 m!8278316))

(declare-fun b!7903560 () Bool)

(declare-fun e!4665216 () Bool)

(declare-fun tp!2354426 () Bool)

(assert (=> b!7903560 (= e!4665216 (and tp_is_empty!52977 tp!2354426))))

(assert (=> b!7902991 (= tp!2354379 e!4665216)))

(assert (= (and b!7902991 ((_ is Cons!74191) (t!389320 (t!389320 input!1184)))) b!7903560))

(declare-fun e!4665217 () Bool)

(assert (=> b!7903001 (= tp!2354388 e!4665217)))

(declare-fun b!7903561 () Bool)

(assert (=> b!7903561 (= e!4665217 tp_is_empty!52977)))

(declare-fun b!7903562 () Bool)

(declare-fun tp!2354428 () Bool)

(declare-fun tp!2354431 () Bool)

(assert (=> b!7903562 (= e!4665217 (and tp!2354428 tp!2354431))))

(declare-fun b!7903564 () Bool)

(declare-fun tp!2354427 () Bool)

(declare-fun tp!2354430 () Bool)

(assert (=> b!7903564 (= e!4665217 (and tp!2354427 tp!2354430))))

(declare-fun b!7903563 () Bool)

(declare-fun tp!2354429 () Bool)

(assert (=> b!7903563 (= e!4665217 tp!2354429)))

(assert (= (and b!7903001 ((_ is ElementMatch!21301) (regex!8598 (h!80640 (t!389321 rulesArg!141))))) b!7903561))

(assert (= (and b!7903001 ((_ is Concat!30216) (regex!8598 (h!80640 (t!389321 rulesArg!141))))) b!7903562))

(assert (= (and b!7903001 ((_ is Star!21301) (regex!8598 (h!80640 (t!389321 rulesArg!141))))) b!7903563))

(assert (= (and b!7903001 ((_ is Union!21301) (regex!8598 (h!80640 (t!389321 rulesArg!141))))) b!7903564))

(declare-fun e!4665218 () Bool)

(assert (=> b!7903015 (= tp!2354404 e!4665218)))

(declare-fun b!7903565 () Bool)

(assert (=> b!7903565 (= e!4665218 tp_is_empty!52977)))

(declare-fun b!7903566 () Bool)

(declare-fun tp!2354433 () Bool)

(declare-fun tp!2354436 () Bool)

(assert (=> b!7903566 (= e!4665218 (and tp!2354433 tp!2354436))))

(declare-fun b!7903568 () Bool)

(declare-fun tp!2354432 () Bool)

(declare-fun tp!2354435 () Bool)

(assert (=> b!7903568 (= e!4665218 (and tp!2354432 tp!2354435))))

(declare-fun b!7903567 () Bool)

(declare-fun tp!2354434 () Bool)

(assert (=> b!7903567 (= e!4665218 tp!2354434)))

(assert (= (and b!7903015 ((_ is ElementMatch!21301) (reg!21630 (regex!8598 (h!80640 rulesArg!141))))) b!7903565))

(assert (= (and b!7903015 ((_ is Concat!30216) (reg!21630 (regex!8598 (h!80640 rulesArg!141))))) b!7903566))

(assert (= (and b!7903015 ((_ is Star!21301) (reg!21630 (regex!8598 (h!80640 rulesArg!141))))) b!7903567))

(assert (= (and b!7903015 ((_ is Union!21301) (reg!21630 (regex!8598 (h!80640 rulesArg!141))))) b!7903568))

(declare-fun e!4665219 () Bool)

(assert (=> b!7903014 (= tp!2354403 e!4665219)))

(declare-fun b!7903569 () Bool)

(assert (=> b!7903569 (= e!4665219 tp_is_empty!52977)))

(declare-fun b!7903570 () Bool)

(declare-fun tp!2354438 () Bool)

(declare-fun tp!2354441 () Bool)

(assert (=> b!7903570 (= e!4665219 (and tp!2354438 tp!2354441))))

(declare-fun b!7903572 () Bool)

(declare-fun tp!2354437 () Bool)

(declare-fun tp!2354440 () Bool)

(assert (=> b!7903572 (= e!4665219 (and tp!2354437 tp!2354440))))

(declare-fun b!7903571 () Bool)

(declare-fun tp!2354439 () Bool)

(assert (=> b!7903571 (= e!4665219 tp!2354439)))

(assert (= (and b!7903014 ((_ is ElementMatch!21301) (regOne!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903569))

(assert (= (and b!7903014 ((_ is Concat!30216) (regOne!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903570))

(assert (= (and b!7903014 ((_ is Star!21301) (regOne!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903571))

(assert (= (and b!7903014 ((_ is Union!21301) (regOne!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903572))

(declare-fun e!4665220 () Bool)

(assert (=> b!7903014 (= tp!2354406 e!4665220)))

(declare-fun b!7903573 () Bool)

(assert (=> b!7903573 (= e!4665220 tp_is_empty!52977)))

(declare-fun b!7903574 () Bool)

(declare-fun tp!2354443 () Bool)

(declare-fun tp!2354446 () Bool)

(assert (=> b!7903574 (= e!4665220 (and tp!2354443 tp!2354446))))

(declare-fun b!7903576 () Bool)

(declare-fun tp!2354442 () Bool)

(declare-fun tp!2354445 () Bool)

(assert (=> b!7903576 (= e!4665220 (and tp!2354442 tp!2354445))))

(declare-fun b!7903575 () Bool)

(declare-fun tp!2354444 () Bool)

(assert (=> b!7903575 (= e!4665220 tp!2354444)))

(assert (= (and b!7903014 ((_ is ElementMatch!21301) (regTwo!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903573))

(assert (= (and b!7903014 ((_ is Concat!30216) (regTwo!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903574))

(assert (= (and b!7903014 ((_ is Star!21301) (regTwo!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903575))

(assert (= (and b!7903014 ((_ is Union!21301) (regTwo!43114 (regex!8598 (h!80640 rulesArg!141))))) b!7903576))

(declare-fun tp!2354454 () Bool)

(declare-fun tp!2354453 () Bool)

(declare-fun e!4665229 () Bool)

(declare-fun b!7903590 () Bool)

(assert (=> b!7903590 (= e!4665229 (and (inv!95182 (left!56594 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))) tp!2354453 (inv!95182 (right!56924 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))) tp!2354454))))

(declare-fun b!7903592 () Bool)

(declare-fun e!4665228 () Bool)

(declare-fun tp!2354455 () Bool)

(assert (=> b!7903592 (= e!4665228 tp!2354455)))

(declare-fun b!7903591 () Bool)

(declare-fun inv!95188 (IArray!31605) Bool)

(assert (=> b!7903591 (= e!4665229 (and (inv!95188 (xs!19154 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))) e!4665228))))

(assert (=> b!7902983 (= tp!2354376 (and (inv!95182 (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911))))) e!4665229))))

(assert (= (and b!7902983 ((_ is Node!15772) (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))) b!7903590))

(assert (= b!7903591 b!7903592))

(assert (= (and b!7902983 ((_ is Leaf!30039) (c!1450235 (dynLambda!30057 (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))) (value!287024 (_1!38414 lt!2683911)))))) b!7903591))

(declare-fun m!8278318 () Bool)

(assert (=> b!7903590 m!8278318))

(declare-fun m!8278320 () Bool)

(assert (=> b!7903590 m!8278320))

(declare-fun m!8278322 () Bool)

(assert (=> b!7903591 m!8278322))

(assert (=> b!7902983 m!8277600))

(declare-fun b_lambda!289767 () Bool)

(assert (= b_lambda!289757 (or (and b!7902691 b_free!134783) (and b!7903002 b_free!134791 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))))) (and b!7903559 b_free!134795 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))))) b_lambda!289767)))

(declare-fun b_lambda!289769 () Bool)

(assert (= b_lambda!289743 (or d!2358629 b_lambda!289769)))

(declare-fun bs!1968046 () Bool)

(declare-fun d!2358909 () Bool)

(assert (= bs!1968046 (and d!2358909 d!2358629)))

(assert (=> bs!1968046 (= (dynLambda!30061 lambda!472445 (h!80640 rulesArg!141)) (ruleValid!3934 thiss!14377 (h!80640 rulesArg!141)))))

(assert (=> bs!1968046 m!8277466))

(assert (=> b!7903113 d!2358909))

(declare-fun b_lambda!289771 () Bool)

(assert (= b_lambda!289737 (or (and b!7902691 b_free!134785 (= (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) (and b!7903002 b_free!134793 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) (and b!7903559 b_free!134797 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) b_lambda!289771)))

(declare-fun b_lambda!289773 () Bool)

(assert (= b_lambda!289759 (or (and b!7902691 b_free!134783) (and b!7903002 b_free!134791 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))))) (and b!7903559 b_free!134795 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))))) b_lambda!289773)))

(declare-fun b_lambda!289775 () Bool)

(assert (= b_lambda!289731 (or (and b!7902691 b_free!134783 (= (toValue!11647 (transformation!8598 (h!80640 rulesArg!141))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) (and b!7903002 b_free!134791 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) (and b!7903559 b_free!134795 (= (toValue!11647 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toValue!11647 (transformation!8598 (rule!11886 (_1!38414 lt!2683911)))))) b_lambda!289775)))

(declare-fun b_lambda!289777 () Bool)

(assert (= b_lambda!289755 (or (and b!7902691 b_free!134785) (and b!7903002 b_free!134793 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 rulesArg!141)))) (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))))) (and b!7903559 b_free!134797 (= (toChars!11506 (transformation!8598 (h!80640 (t!389321 (t!389321 rulesArg!141))))) (toChars!11506 (transformation!8598 (h!80640 rulesArg!141))))) b_lambda!289777)))

(check-sat (not bm!733286) (not b!7903566) (not d!2358783) (not b!7903524) b_and!352877 (not b!7903463) b_and!352859 (not tb!262863) (not bm!733293) (not d!2358899) (not b!7903564) (not b!7903478) (not b!7903555) (not bm!733292) (not d!2358695) (not d!2358769) (not b!7903470) (not tb!262895) (not b!7903571) (not d!2358849) (not b!7903086) (not d!2358801) (not b!7903100) (not b!7903098) (not b!7903391) (not b!7903163) (not b!7903523) (not b!7903074) (not b!7903121) (not b!7903551) (not b!7903554) (not b!7903096) (not b!7903123) (not tb!262867) (not b!7903455) (not b!7903389) (not d!2358763) (not b!7903574) (not b!7902983) (not b_lambda!289773) (not b!7903456) (not bs!1968046) (not b!7903451) (not b!7903592) (not d!2358879) (not b!7903562) (not bm!733259) (not d!2358677) (not d!2358673) (not b!7903082) (not b!7903413) (not b!7903410) (not b!7903169) (not b!7903575) (not b!7903392) (not b!7903117) (not d!2358873) (not b_lambda!289751) (not b!7903087) (not b!7903018) (not d!2358861) (not b!7903090) (not b!7903552) (not b_next!135573) (not b!7903489) (not b!7903387) (not b!7903019) (not b_lambda!289769) (not tb!262879) (not d!2358697) (not b!7903095) (not b!7903528) (not d!2358675) (not d!2358871) (not bm!733325) (not b!7903541) (not bm!733313) (not b_lambda!289775) (not b!7903519) (not b!7903452) (not bm!733288) (not b!7903174) (not d!2358757) (not b!7903175) (not b_next!135581) (not b!7903119) (not bm!733289) (not b!7903560) (not b!7903240) (not d!2358705) (not b!7903080) (not b!7903527) (not b!7903092) (not bm!733322) (not b!7903487) (not b!7903485) (not d!2358819) (not bm!733287) (not bm!733302) (not d!2358709) (not b_lambda!289749) (not b!7903093) b_and!352861 (not d!2358765) (not b_next!135575) (not d!2358755) (not bm!733324) (not d!2358703) (not b!7903172) (not b!7903094) (not b!7903450) (not b_next!135583) (not b!7903570) (not tb!262883) (not b!7903408) (not b!7903535) (not b!7903557) (not b_lambda!289771) tp_is_empty!52977 (not b!7903085) (not b!7903115) (not b!7903167) (not b!7903533) (not b!7903572) (not d!2358729) (not b!7903118) (not bm!733260) (not b!7903563) (not bm!733312) (not d!2358805) (not b_next!135587) (not tb!262891) (not b!7903147) (not b!7903521) (not b!7903146) b_and!352869 b_and!352867 (not d!2358669) (not b!7903550) (not b!7903120) b_and!352875 (not d!2358767) (not b!7903576) (not bm!733290) (not b!7903170) (not b!7903460) (not b!7903025) (not d!2358725) (not b!7903088) (not b!7903165) (not b_lambda!289741) (not d!2358863) (not b!7903242) (not b!7903567) (not b!7903415) (not b!7903114) (not b!7903091) (not b!7903590) (not b_lambda!289777) (not b!7903071) (not b!7903532) (not b!7903079) (not b!7903556) (not b!7903591) (not b!7903461) (not b!7903414) (not b!7903539) (not b!7903122) (not b_lambda!289739) (not b!7903075) (not b_next!135585) (not b!7903205) (not bm!733291) (not b!7903409) (not d!2358753) (not b_lambda!289767) (not b!7903568) (not d!2358865) (not b!7903558) (not d!2358743) (not d!2358857))
(check-sat (not b_next!135573) (not b_next!135581) (not b_next!135583) (not b_next!135585) b_and!352877 b_and!352859 b_and!352861 (not b_next!135575) b_and!352869 (not b_next!135587) b_and!352867 b_and!352875)
