; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406882 () Bool)

(assert start!406882)

(declare-fun b!4249642 () Bool)

(declare-fun b_free!126275 () Bool)

(declare-fun b_next!126979 () Bool)

(assert (=> b!4249642 (= b_free!126275 (not b_next!126979))))

(declare-fun tp!1303821 () Bool)

(declare-fun b_and!336845 () Bool)

(assert (=> b!4249642 (= tp!1303821 b_and!336845)))

(declare-fun b_free!126277 () Bool)

(declare-fun b_next!126981 () Bool)

(assert (=> b!4249642 (= b_free!126277 (not b_next!126981))))

(declare-fun tp!1303828 () Bool)

(declare-fun b_and!336847 () Bool)

(assert (=> b!4249642 (= tp!1303828 b_and!336847)))

(declare-fun b!4249645 () Bool)

(declare-fun b_free!126279 () Bool)

(declare-fun b_next!126983 () Bool)

(assert (=> b!4249645 (= b_free!126279 (not b_next!126983))))

(declare-fun tp!1303819 () Bool)

(declare-fun b_and!336849 () Bool)

(assert (=> b!4249645 (= tp!1303819 b_and!336849)))

(declare-fun b_free!126281 () Bool)

(declare-fun b_next!126985 () Bool)

(assert (=> b!4249645 (= b_free!126281 (not b_next!126985))))

(declare-fun tp!1303822 () Bool)

(declare-fun b_and!336851 () Bool)

(assert (=> b!4249645 (= tp!1303822 b_and!336851)))

(declare-fun b!4249627 () Bool)

(declare-fun e!2639460 () Bool)

(declare-fun tp_is_empty!22737 () Bool)

(declare-fun tp!1303826 () Bool)

(assert (=> b!4249627 (= e!2639460 (and tp_is_empty!22737 tp!1303826))))

(declare-fun b!4249628 () Bool)

(declare-fun res!1747048 () Bool)

(declare-fun e!2639457 () Bool)

(assert (=> b!4249628 (=> (not res!1747048) (not e!2639457))))

(declare-datatypes ((List!47197 0))(
  ( (Nil!47073) (Cons!47073 (h!52493 (_ BitVec 16)) (t!352226 List!47197)) )
))
(declare-datatypes ((TokenValue!8198 0))(
  ( (FloatLiteralValue!16396 (text!57831 List!47197)) (TokenValueExt!8197 (__x!28619 Int)) (Broken!40990 (value!247598 List!47197)) (Object!8321) (End!8198) (Def!8198) (Underscore!8198) (Match!8198) (Else!8198) (Error!8198) (Case!8198) (If!8198) (Extends!8198) (Abstract!8198) (Class!8198) (Val!8198) (DelimiterValue!16396 (del!8258 List!47197)) (KeywordValue!8204 (value!247599 List!47197)) (CommentValue!16396 (value!247600 List!47197)) (WhitespaceValue!16396 (value!247601 List!47197)) (IndentationValue!8198 (value!247602 List!47197)) (String!54919) (Int32!8198) (Broken!40991 (value!247603 List!47197)) (Boolean!8199) (Unit!66056) (OperatorValue!8201 (op!8258 List!47197)) (IdentifierValue!16396 (value!247604 List!47197)) (IdentifierValue!16397 (value!247605 List!47197)) (WhitespaceValue!16397 (value!247606 List!47197)) (True!16396) (False!16396) (Broken!40992 (value!247607 List!47197)) (Broken!40993 (value!247608 List!47197)) (True!16397) (RightBrace!8198) (RightBracket!8198) (Colon!8198) (Null!8198) (Comma!8198) (LeftBracket!8198) (False!16397) (LeftBrace!8198) (ImaginaryLiteralValue!8198 (text!57832 List!47197)) (StringLiteralValue!24594 (value!247609 List!47197)) (EOFValue!8198 (value!247610 List!47197)) (IdentValue!8198 (value!247611 List!47197)) (DelimiterValue!16397 (value!247612 List!47197)) (DedentValue!8198 (value!247613 List!47197)) (NewLineValue!8198 (value!247614 List!47197)) (IntegerValue!24594 (value!247615 (_ BitVec 32)) (text!57833 List!47197)) (IntegerValue!24595 (value!247616 Int) (text!57834 List!47197)) (Times!8198) (Or!8198) (Equal!8198) (Minus!8198) (Broken!40994 (value!247617 List!47197)) (And!8198) (Div!8198) (LessEqual!8198) (Mod!8198) (Concat!21071) (Not!8198) (Plus!8198) (SpaceValue!8198 (value!247618 List!47197)) (IntegerValue!24596 (value!247619 Int) (text!57835 List!47197)) (StringLiteralValue!24595 (text!57836 List!47197)) (FloatLiteralValue!16397 (text!57837 List!47197)) (BytesLiteralValue!8198 (value!247620 List!47197)) (CommentValue!16397 (value!247621 List!47197)) (StringLiteralValue!24596 (value!247622 List!47197)) (ErrorTokenValue!8198 (msg!8259 List!47197)) )
))
(declare-datatypes ((C!25944 0))(
  ( (C!25945 (val!15162 Int)) )
))
(declare-datatypes ((List!47198 0))(
  ( (Nil!47074) (Cons!47074 (h!52494 C!25944) (t!352227 List!47198)) )
))
(declare-datatypes ((IArray!28363 0))(
  ( (IArray!28364 (innerList!14239 List!47198)) )
))
(declare-datatypes ((Conc!14179 0))(
  ( (Node!14179 (left!34925 Conc!14179) (right!35255 Conc!14179) (csize!28588 Int) (cheight!14390 Int)) (Leaf!21922 (xs!17485 IArray!28363) (csize!28589 Int)) (Empty!14179) )
))
(declare-datatypes ((BalanceConc!27952 0))(
  ( (BalanceConc!27953 (c!721678 Conc!14179)) )
))
(declare-datatypes ((TokenValueInjection!15824 0))(
  ( (TokenValueInjection!15825 (toValue!10740 Int) (toChars!10599 Int)) )
))
(declare-datatypes ((Regex!12873 0))(
  ( (ElementMatch!12873 (c!721679 C!25944)) (Concat!21072 (regOne!26258 Regex!12873) (regTwo!26258 Regex!12873)) (EmptyExpr!12873) (Star!12873 (reg!13202 Regex!12873)) (EmptyLang!12873) (Union!12873 (regOne!26259 Regex!12873) (regTwo!26259 Regex!12873)) )
))
(declare-datatypes ((String!54920 0))(
  ( (String!54921 (value!247623 String)) )
))
(declare-datatypes ((Rule!15736 0))(
  ( (Rule!15737 (regex!7968 Regex!12873) (tag!8832 String!54920) (isSeparator!7968 Bool) (transformation!7968 TokenValueInjection!15824)) )
))
(declare-datatypes ((Token!14562 0))(
  ( (Token!14563 (value!247624 TokenValue!8198) (rule!11102 Rule!15736) (size!34464 Int) (originalCharacters!8312 List!47198)) )
))
(declare-datatypes ((tuple2!44638 0))(
  ( (tuple2!44639 (_1!25453 Token!14562) (_2!25453 List!47198)) )
))
(declare-datatypes ((Option!10102 0))(
  ( (None!10101) (Some!10101 (v!41059 tuple2!44638)) )
))
(declare-fun lt!1508334 () Option!10102)

(declare-fun lt!1508333 () Option!10102)

(declare-fun lt!1508331 () List!47198)

(declare-fun lt!1508332 () List!47198)

(assert (=> b!4249628 (= res!1747048 (and (= (_1!25453 (v!41059 lt!1508333)) (_1!25453 (v!41059 lt!1508334))) (= lt!1508332 lt!1508331)))))

(declare-fun e!2639448 () Bool)

(declare-fun b!4249629 () Bool)

(declare-fun e!2639453 () Bool)

(declare-datatypes ((List!47199 0))(
  ( (Nil!47075) (Cons!47075 (h!52495 Token!14562) (t!352228 List!47199)) )
))
(declare-fun tokens!592 () List!47199)

(declare-fun tp!1303830 () Bool)

(declare-fun inv!61847 (Token!14562) Bool)

(assert (=> b!4249629 (= e!2639453 (and (inv!61847 (h!52495 tokens!592)) e!2639448 tp!1303830))))

(declare-fun b!4249631 () Bool)

(declare-fun res!1747046 () Bool)

(declare-fun e!2639447 () Bool)

(assert (=> b!4249631 (=> (not res!1747046) (not e!2639447))))

(declare-datatypes ((LexerInterface!7563 0))(
  ( (LexerInterfaceExt!7560 (__x!28620 Int)) (Lexer!7561) )
))
(declare-fun thiss!21641 () LexerInterface!7563)

(declare-datatypes ((List!47200 0))(
  ( (Nil!47076) (Cons!47076 (h!52496 Rule!15736) (t!352229 List!47200)) )
))
(declare-fun rules!2971 () List!47200)

(declare-fun rulesInvariant!6674 (LexerInterface!7563 List!47200) Bool)

(assert (=> b!4249631 (= res!1747046 (rulesInvariant!6674 thiss!21641 rules!2971))))

(declare-fun b!4249632 () Bool)

(declare-fun e!2639449 () Bool)

(declare-fun tp!1303820 () Bool)

(declare-fun e!2639456 () Bool)

(declare-fun inv!61844 (String!54920) Bool)

(declare-fun inv!61848 (TokenValueInjection!15824) Bool)

(assert (=> b!4249632 (= e!2639449 (and tp!1303820 (inv!61844 (tag!8832 (rule!11102 (h!52495 tokens!592)))) (inv!61848 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) e!2639456))))

(declare-fun b!4249633 () Bool)

(declare-fun e!2639462 () Bool)

(assert (=> b!4249633 (= e!2639462 e!2639457)))

(declare-fun res!1747047 () Bool)

(assert (=> b!4249633 (=> (not res!1747047) (not e!2639457))))

(declare-fun shorterInput!62 () List!47198)

(declare-fun ++!11979 (List!47198 List!47198) List!47198)

(assert (=> b!4249633 (= res!1747047 (= (++!11979 lt!1508331 (_2!25453 (v!41059 lt!1508334))) shorterInput!62))))

(declare-fun list!16960 (BalanceConc!27952) List!47198)

(declare-fun charsOf!5310 (Token!14562) BalanceConc!27952)

(assert (=> b!4249633 (= lt!1508331 (list!16960 (charsOf!5310 (_1!25453 (v!41059 lt!1508334)))))))

(declare-fun b!4249634 () Bool)

(declare-fun e!2639458 () Bool)

(assert (=> b!4249634 (= e!2639447 e!2639458)))

(declare-fun res!1747054 () Bool)

(assert (=> b!4249634 (=> (not res!1747054) (not e!2639458))))

(get-info :version)

(assert (=> b!4249634 (= res!1747054 (and ((_ is Some!10101) lt!1508333) ((_ is Some!10101) lt!1508334)))))

(declare-fun maxPrefix!4519 (LexerInterface!7563 List!47200 List!47198) Option!10102)

(assert (=> b!4249634 (= lt!1508334 (maxPrefix!4519 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47198)

(assert (=> b!4249634 (= lt!1508333 (maxPrefix!4519 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4249635 () Bool)

(declare-fun e!2639455 () Bool)

(declare-fun tp!1303824 () Bool)

(assert (=> b!4249635 (= e!2639455 (and tp_is_empty!22737 tp!1303824))))

(declare-fun b!4249636 () Bool)

(declare-fun res!1747052 () Bool)

(assert (=> b!4249636 (=> (not res!1747052) (not e!2639447))))

(declare-fun suffix!1284 () List!47198)

(declare-datatypes ((tuple2!44640 0))(
  ( (tuple2!44641 (_1!25454 List!47199) (_2!25454 List!47198)) )
))
(declare-fun lexList!2069 (LexerInterface!7563 List!47200 List!47198) tuple2!44640)

(assert (=> b!4249636 (= res!1747052 (= (lexList!2069 thiss!21641 rules!2971 longerInput!62) (tuple2!44641 tokens!592 suffix!1284)))))

(declare-fun b!4249637 () Bool)

(declare-fun e!2639461 () Bool)

(declare-fun e!2639452 () Bool)

(declare-fun tp!1303823 () Bool)

(assert (=> b!4249637 (= e!2639461 (and e!2639452 tp!1303823))))

(declare-fun res!1747050 () Bool)

(assert (=> start!406882 (=> (not res!1747050) (not e!2639447))))

(assert (=> start!406882 (= res!1747050 ((_ is Lexer!7561) thiss!21641))))

(assert (=> start!406882 e!2639447))

(assert (=> start!406882 true))

(assert (=> start!406882 e!2639455))

(assert (=> start!406882 e!2639460))

(assert (=> start!406882 e!2639453))

(assert (=> start!406882 e!2639461))

(declare-fun e!2639450 () Bool)

(assert (=> start!406882 e!2639450))

(declare-fun tp!1303827 () Bool)

(declare-fun b!4249630 () Bool)

(declare-fun inv!21 (TokenValue!8198) Bool)

(assert (=> b!4249630 (= e!2639448 (and (inv!21 (value!247624 (h!52495 tokens!592))) e!2639449 tp!1303827))))

(declare-fun b!4249638 () Bool)

(declare-fun res!1747045 () Bool)

(assert (=> b!4249638 (=> (not res!1747045) (not e!2639447))))

(declare-fun size!34465 (List!47198) Int)

(assert (=> b!4249638 (= res!1747045 (> (size!34465 longerInput!62) (size!34465 shorterInput!62)))))

(declare-fun b!4249639 () Bool)

(declare-fun tp!1303825 () Bool)

(assert (=> b!4249639 (= e!2639450 (and tp_is_empty!22737 tp!1303825))))

(declare-fun b!4249640 () Bool)

(assert (=> b!4249640 (= e!2639458 e!2639462)))

(declare-fun res!1747053 () Bool)

(assert (=> b!4249640 (=> (not res!1747053) (not e!2639462))))

(assert (=> b!4249640 (= res!1747053 (= (++!11979 lt!1508332 (_2!25453 (v!41059 lt!1508333))) longerInput!62))))

(assert (=> b!4249640 (= lt!1508332 (list!16960 (charsOf!5310 (_1!25453 (v!41059 lt!1508333)))))))

(declare-fun b!4249641 () Bool)

(declare-fun res!1747051 () Bool)

(assert (=> b!4249641 (=> (not res!1747051) (not e!2639447))))

(declare-fun isEmpty!27848 (List!47198) Bool)

(assert (=> b!4249641 (= res!1747051 (not (isEmpty!27848 longerInput!62)))))

(declare-fun e!2639446 () Bool)

(assert (=> b!4249642 (= e!2639446 (and tp!1303821 tp!1303828))))

(declare-fun tp!1303829 () Bool)

(declare-fun b!4249643 () Bool)

(assert (=> b!4249643 (= e!2639452 (and tp!1303829 (inv!61844 (tag!8832 (h!52496 rules!2971))) (inv!61848 (transformation!7968 (h!52496 rules!2971))) e!2639446))))

(declare-fun b!4249644 () Bool)

(declare-fun res!1747049 () Bool)

(assert (=> b!4249644 (=> (not res!1747049) (not e!2639447))))

(declare-fun isEmpty!27849 (List!47200) Bool)

(assert (=> b!4249644 (= res!1747049 (not (isEmpty!27849 rules!2971)))))

(assert (=> b!4249645 (= e!2639456 (and tp!1303819 tp!1303822))))

(declare-fun b!4249646 () Bool)

(assert (=> b!4249646 (= e!2639457 (<= (size!34465 (_2!25453 (v!41059 lt!1508333))) (size!34465 (_2!25453 (v!41059 lt!1508334)))))))

(assert (= (and start!406882 res!1747050) b!4249644))

(assert (= (and b!4249644 res!1747049) b!4249631))

(assert (= (and b!4249631 res!1747046) b!4249641))

(assert (= (and b!4249641 res!1747051) b!4249638))

(assert (= (and b!4249638 res!1747045) b!4249636))

(assert (= (and b!4249636 res!1747052) b!4249634))

(assert (= (and b!4249634 res!1747054) b!4249640))

(assert (= (and b!4249640 res!1747053) b!4249633))

(assert (= (and b!4249633 res!1747047) b!4249628))

(assert (= (and b!4249628 res!1747048) b!4249646))

(assert (= (and start!406882 ((_ is Cons!47074) suffix!1284)) b!4249635))

(assert (= (and start!406882 ((_ is Cons!47074) longerInput!62)) b!4249627))

(assert (= b!4249632 b!4249645))

(assert (= b!4249630 b!4249632))

(assert (= b!4249629 b!4249630))

(assert (= (and start!406882 ((_ is Cons!47075) tokens!592)) b!4249629))

(assert (= b!4249643 b!4249642))

(assert (= b!4249637 b!4249643))

(assert (= (and start!406882 ((_ is Cons!47076) rules!2971)) b!4249637))

(assert (= (and start!406882 ((_ is Cons!47074) shorterInput!62)) b!4249639))

(declare-fun m!4834595 () Bool)

(assert (=> b!4249646 m!4834595))

(declare-fun m!4834597 () Bool)

(assert (=> b!4249646 m!4834597))

(declare-fun m!4834599 () Bool)

(assert (=> b!4249643 m!4834599))

(declare-fun m!4834601 () Bool)

(assert (=> b!4249643 m!4834601))

(declare-fun m!4834603 () Bool)

(assert (=> b!4249640 m!4834603))

(declare-fun m!4834605 () Bool)

(assert (=> b!4249640 m!4834605))

(assert (=> b!4249640 m!4834605))

(declare-fun m!4834607 () Bool)

(assert (=> b!4249640 m!4834607))

(declare-fun m!4834609 () Bool)

(assert (=> b!4249641 m!4834609))

(declare-fun m!4834611 () Bool)

(assert (=> b!4249633 m!4834611))

(declare-fun m!4834613 () Bool)

(assert (=> b!4249633 m!4834613))

(assert (=> b!4249633 m!4834613))

(declare-fun m!4834615 () Bool)

(assert (=> b!4249633 m!4834615))

(declare-fun m!4834617 () Bool)

(assert (=> b!4249634 m!4834617))

(declare-fun m!4834619 () Bool)

(assert (=> b!4249634 m!4834619))

(declare-fun m!4834621 () Bool)

(assert (=> b!4249644 m!4834621))

(declare-fun m!4834623 () Bool)

(assert (=> b!4249630 m!4834623))

(declare-fun m!4834625 () Bool)

(assert (=> b!4249636 m!4834625))

(declare-fun m!4834627 () Bool)

(assert (=> b!4249631 m!4834627))

(declare-fun m!4834629 () Bool)

(assert (=> b!4249632 m!4834629))

(declare-fun m!4834631 () Bool)

(assert (=> b!4249632 m!4834631))

(declare-fun m!4834633 () Bool)

(assert (=> b!4249629 m!4834633))

(declare-fun m!4834635 () Bool)

(assert (=> b!4249638 m!4834635))

(declare-fun m!4834637 () Bool)

(assert (=> b!4249638 m!4834637))

(check-sat (not b!4249632) (not b!4249643) (not b_next!126985) (not b!4249629) (not b!4249631) (not b_next!126981) tp_is_empty!22737 (not b!4249644) (not b!4249638) (not b!4249639) (not b!4249636) (not b!4249646) (not b!4249635) b_and!336849 (not b!4249637) (not b!4249634) b_and!336851 (not b_next!126979) (not b_next!126983) (not b!4249640) b_and!336845 (not b!4249630) (not b!4249627) (not b!4249633) (not b!4249641) b_and!336847)
(check-sat (not b_next!126985) b_and!336849 b_and!336845 b_and!336847 (not b_next!126981) b_and!336851 (not b_next!126979) (not b_next!126983))
(get-model)

(declare-fun b!4249705 () Bool)

(declare-fun res!1747086 () Bool)

(declare-fun e!2639495 () Bool)

(assert (=> b!4249705 (=> (not res!1747086) (not e!2639495))))

(declare-fun lt!1508359 () Option!10102)

(declare-fun matchR!6466 (Regex!12873 List!47198) Bool)

(declare-fun get!15286 (Option!10102) tuple2!44638)

(assert (=> b!4249705 (= res!1747086 (matchR!6466 (regex!7968 (rule!11102 (_1!25453 (get!15286 lt!1508359)))) (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508359))))))))

(declare-fun b!4249706 () Bool)

(declare-fun res!1747081 () Bool)

(assert (=> b!4249706 (=> (not res!1747081) (not e!2639495))))

(assert (=> b!4249706 (= res!1747081 (< (size!34465 (_2!25453 (get!15286 lt!1508359))) (size!34465 shorterInput!62)))))

(declare-fun b!4249707 () Bool)

(declare-fun res!1747084 () Bool)

(assert (=> b!4249707 (=> (not res!1747084) (not e!2639495))))

(assert (=> b!4249707 (= res!1747084 (= (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508359)))) (originalCharacters!8312 (_1!25453 (get!15286 lt!1508359)))))))

(declare-fun b!4249708 () Bool)

(declare-fun res!1747085 () Bool)

(assert (=> b!4249708 (=> (not res!1747085) (not e!2639495))))

(declare-fun apply!10772 (TokenValueInjection!15824 BalanceConc!27952) TokenValue!8198)

(declare-fun seqFromList!5832 (List!47198) BalanceConc!27952)

(assert (=> b!4249708 (= res!1747085 (= (value!247624 (_1!25453 (get!15286 lt!1508359))) (apply!10772 (transformation!7968 (rule!11102 (_1!25453 (get!15286 lt!1508359)))) (seqFromList!5832 (originalCharacters!8312 (_1!25453 (get!15286 lt!1508359)))))))))

(declare-fun b!4249709 () Bool)

(declare-fun e!2639494 () Option!10102)

(declare-fun call!293955 () Option!10102)

(assert (=> b!4249709 (= e!2639494 call!293955)))

(declare-fun bm!293950 () Bool)

(declare-fun maxPrefixOneRule!3470 (LexerInterface!7563 Rule!15736 List!47198) Option!10102)

(assert (=> bm!293950 (= call!293955 (maxPrefixOneRule!3470 thiss!21641 (h!52496 rules!2971) shorterInput!62))))

(declare-fun d!1249791 () Bool)

(declare-fun e!2639493 () Bool)

(assert (=> d!1249791 e!2639493))

(declare-fun res!1747082 () Bool)

(assert (=> d!1249791 (=> res!1747082 e!2639493)))

(declare-fun isEmpty!27852 (Option!10102) Bool)

(assert (=> d!1249791 (= res!1747082 (isEmpty!27852 lt!1508359))))

(assert (=> d!1249791 (= lt!1508359 e!2639494)))

(declare-fun c!721698 () Bool)

(assert (=> d!1249791 (= c!721698 (and ((_ is Cons!47076) rules!2971) ((_ is Nil!47076) (t!352229 rules!2971))))))

(declare-datatypes ((Unit!66059 0))(
  ( (Unit!66060) )
))
(declare-fun lt!1508360 () Unit!66059)

(declare-fun lt!1508361 () Unit!66059)

(assert (=> d!1249791 (= lt!1508360 lt!1508361)))

(declare-fun isPrefix!4745 (List!47198 List!47198) Bool)

(assert (=> d!1249791 (isPrefix!4745 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3142 (List!47198 List!47198) Unit!66059)

(assert (=> d!1249791 (= lt!1508361 (lemmaIsPrefixRefl!3142 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!2996 (LexerInterface!7563 List!47200) Bool)

(assert (=> d!1249791 (rulesValidInductive!2996 thiss!21641 rules!2971)))

(assert (=> d!1249791 (= (maxPrefix!4519 thiss!21641 rules!2971 shorterInput!62) lt!1508359)))

(declare-fun b!4249710 () Bool)

(declare-fun contains!9757 (List!47200 Rule!15736) Bool)

(assert (=> b!4249710 (= e!2639495 (contains!9757 rules!2971 (rule!11102 (_1!25453 (get!15286 lt!1508359)))))))

(declare-fun b!4249711 () Bool)

(declare-fun res!1747087 () Bool)

(assert (=> b!4249711 (=> (not res!1747087) (not e!2639495))))

(assert (=> b!4249711 (= res!1747087 (= (++!11979 (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508359)))) (_2!25453 (get!15286 lt!1508359))) shorterInput!62))))

(declare-fun b!4249712 () Bool)

(declare-fun lt!1508357 () Option!10102)

(declare-fun lt!1508358 () Option!10102)

(assert (=> b!4249712 (= e!2639494 (ite (and ((_ is None!10101) lt!1508357) ((_ is None!10101) lt!1508358)) None!10101 (ite ((_ is None!10101) lt!1508358) lt!1508357 (ite ((_ is None!10101) lt!1508357) lt!1508358 (ite (>= (size!34464 (_1!25453 (v!41059 lt!1508357))) (size!34464 (_1!25453 (v!41059 lt!1508358)))) lt!1508357 lt!1508358)))))))

(assert (=> b!4249712 (= lt!1508357 call!293955)))

(assert (=> b!4249712 (= lt!1508358 (maxPrefix!4519 thiss!21641 (t!352229 rules!2971) shorterInput!62))))

(declare-fun b!4249713 () Bool)

(assert (=> b!4249713 (= e!2639493 e!2639495)))

(declare-fun res!1747083 () Bool)

(assert (=> b!4249713 (=> (not res!1747083) (not e!2639495))))

(declare-fun isDefined!7460 (Option!10102) Bool)

(assert (=> b!4249713 (= res!1747083 (isDefined!7460 lt!1508359))))

(assert (= (and d!1249791 c!721698) b!4249709))

(assert (= (and d!1249791 (not c!721698)) b!4249712))

(assert (= (or b!4249709 b!4249712) bm!293950))

(assert (= (and d!1249791 (not res!1747082)) b!4249713))

(assert (= (and b!4249713 res!1747083) b!4249707))

(assert (= (and b!4249707 res!1747084) b!4249706))

(assert (= (and b!4249706 res!1747081) b!4249711))

(assert (= (and b!4249711 res!1747087) b!4249708))

(assert (= (and b!4249708 res!1747085) b!4249705))

(assert (= (and b!4249705 res!1747086) b!4249710))

(declare-fun m!4834665 () Bool)

(assert (=> bm!293950 m!4834665))

(declare-fun m!4834667 () Bool)

(assert (=> d!1249791 m!4834667))

(declare-fun m!4834669 () Bool)

(assert (=> d!1249791 m!4834669))

(declare-fun m!4834671 () Bool)

(assert (=> d!1249791 m!4834671))

(declare-fun m!4834673 () Bool)

(assert (=> d!1249791 m!4834673))

(declare-fun m!4834675 () Bool)

(assert (=> b!4249708 m!4834675))

(declare-fun m!4834677 () Bool)

(assert (=> b!4249708 m!4834677))

(assert (=> b!4249708 m!4834677))

(declare-fun m!4834679 () Bool)

(assert (=> b!4249708 m!4834679))

(declare-fun m!4834681 () Bool)

(assert (=> b!4249713 m!4834681))

(assert (=> b!4249706 m!4834675))

(declare-fun m!4834683 () Bool)

(assert (=> b!4249706 m!4834683))

(assert (=> b!4249706 m!4834637))

(assert (=> b!4249707 m!4834675))

(declare-fun m!4834685 () Bool)

(assert (=> b!4249707 m!4834685))

(assert (=> b!4249707 m!4834685))

(declare-fun m!4834687 () Bool)

(assert (=> b!4249707 m!4834687))

(assert (=> b!4249710 m!4834675))

(declare-fun m!4834689 () Bool)

(assert (=> b!4249710 m!4834689))

(assert (=> b!4249705 m!4834675))

(assert (=> b!4249705 m!4834685))

(assert (=> b!4249705 m!4834685))

(assert (=> b!4249705 m!4834687))

(assert (=> b!4249705 m!4834687))

(declare-fun m!4834691 () Bool)

(assert (=> b!4249705 m!4834691))

(assert (=> b!4249711 m!4834675))

(assert (=> b!4249711 m!4834685))

(assert (=> b!4249711 m!4834685))

(assert (=> b!4249711 m!4834687))

(assert (=> b!4249711 m!4834687))

(declare-fun m!4834693 () Bool)

(assert (=> b!4249711 m!4834693))

(declare-fun m!4834695 () Bool)

(assert (=> b!4249712 m!4834695))

(assert (=> b!4249634 d!1249791))

(declare-fun b!4249719 () Bool)

(declare-fun res!1747094 () Bool)

(declare-fun e!2639501 () Bool)

(assert (=> b!4249719 (=> (not res!1747094) (not e!2639501))))

(declare-fun lt!1508367 () Option!10102)

(assert (=> b!4249719 (= res!1747094 (matchR!6466 (regex!7968 (rule!11102 (_1!25453 (get!15286 lt!1508367)))) (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508367))))))))

(declare-fun b!4249720 () Bool)

(declare-fun res!1747089 () Bool)

(assert (=> b!4249720 (=> (not res!1747089) (not e!2639501))))

(assert (=> b!4249720 (= res!1747089 (< (size!34465 (_2!25453 (get!15286 lt!1508367))) (size!34465 longerInput!62)))))

(declare-fun b!4249721 () Bool)

(declare-fun res!1747092 () Bool)

(assert (=> b!4249721 (=> (not res!1747092) (not e!2639501))))

(assert (=> b!4249721 (= res!1747092 (= (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508367)))) (originalCharacters!8312 (_1!25453 (get!15286 lt!1508367)))))))

(declare-fun b!4249722 () Bool)

(declare-fun res!1747093 () Bool)

(assert (=> b!4249722 (=> (not res!1747093) (not e!2639501))))

(assert (=> b!4249722 (= res!1747093 (= (value!247624 (_1!25453 (get!15286 lt!1508367))) (apply!10772 (transformation!7968 (rule!11102 (_1!25453 (get!15286 lt!1508367)))) (seqFromList!5832 (originalCharacters!8312 (_1!25453 (get!15286 lt!1508367)))))))))

(declare-fun b!4249723 () Bool)

(declare-fun e!2639500 () Option!10102)

(declare-fun call!293956 () Option!10102)

(assert (=> b!4249723 (= e!2639500 call!293956)))

(declare-fun bm!293951 () Bool)

(assert (=> bm!293951 (= call!293956 (maxPrefixOneRule!3470 thiss!21641 (h!52496 rules!2971) longerInput!62))))

(declare-fun d!1249813 () Bool)

(declare-fun e!2639499 () Bool)

(assert (=> d!1249813 e!2639499))

(declare-fun res!1747090 () Bool)

(assert (=> d!1249813 (=> res!1747090 e!2639499)))

(assert (=> d!1249813 (= res!1747090 (isEmpty!27852 lt!1508367))))

(assert (=> d!1249813 (= lt!1508367 e!2639500)))

(declare-fun c!721701 () Bool)

(assert (=> d!1249813 (= c!721701 (and ((_ is Cons!47076) rules!2971) ((_ is Nil!47076) (t!352229 rules!2971))))))

(declare-fun lt!1508368 () Unit!66059)

(declare-fun lt!1508369 () Unit!66059)

(assert (=> d!1249813 (= lt!1508368 lt!1508369)))

(assert (=> d!1249813 (isPrefix!4745 longerInput!62 longerInput!62)))

(assert (=> d!1249813 (= lt!1508369 (lemmaIsPrefixRefl!3142 longerInput!62 longerInput!62))))

(assert (=> d!1249813 (rulesValidInductive!2996 thiss!21641 rules!2971)))

(assert (=> d!1249813 (= (maxPrefix!4519 thiss!21641 rules!2971 longerInput!62) lt!1508367)))

(declare-fun b!4249724 () Bool)

(assert (=> b!4249724 (= e!2639501 (contains!9757 rules!2971 (rule!11102 (_1!25453 (get!15286 lt!1508367)))))))

(declare-fun b!4249725 () Bool)

(declare-fun res!1747095 () Bool)

(assert (=> b!4249725 (=> (not res!1747095) (not e!2639501))))

(assert (=> b!4249725 (= res!1747095 (= (++!11979 (list!16960 (charsOf!5310 (_1!25453 (get!15286 lt!1508367)))) (_2!25453 (get!15286 lt!1508367))) longerInput!62))))

(declare-fun b!4249726 () Bool)

(declare-fun lt!1508365 () Option!10102)

(declare-fun lt!1508366 () Option!10102)

(assert (=> b!4249726 (= e!2639500 (ite (and ((_ is None!10101) lt!1508365) ((_ is None!10101) lt!1508366)) None!10101 (ite ((_ is None!10101) lt!1508366) lt!1508365 (ite ((_ is None!10101) lt!1508365) lt!1508366 (ite (>= (size!34464 (_1!25453 (v!41059 lt!1508365))) (size!34464 (_1!25453 (v!41059 lt!1508366)))) lt!1508365 lt!1508366)))))))

(assert (=> b!4249726 (= lt!1508365 call!293956)))

(assert (=> b!4249726 (= lt!1508366 (maxPrefix!4519 thiss!21641 (t!352229 rules!2971) longerInput!62))))

(declare-fun b!4249727 () Bool)

(assert (=> b!4249727 (= e!2639499 e!2639501)))

(declare-fun res!1747091 () Bool)

(assert (=> b!4249727 (=> (not res!1747091) (not e!2639501))))

(assert (=> b!4249727 (= res!1747091 (isDefined!7460 lt!1508367))))

(assert (= (and d!1249813 c!721701) b!4249723))

(assert (= (and d!1249813 (not c!721701)) b!4249726))

(assert (= (or b!4249723 b!4249726) bm!293951))

(assert (= (and d!1249813 (not res!1747090)) b!4249727))

(assert (= (and b!4249727 res!1747091) b!4249721))

(assert (= (and b!4249721 res!1747092) b!4249720))

(assert (= (and b!4249720 res!1747089) b!4249725))

(assert (= (and b!4249725 res!1747095) b!4249722))

(assert (= (and b!4249722 res!1747093) b!4249719))

(assert (= (and b!4249719 res!1747094) b!4249724))

(declare-fun m!4834697 () Bool)

(assert (=> bm!293951 m!4834697))

(declare-fun m!4834699 () Bool)

(assert (=> d!1249813 m!4834699))

(declare-fun m!4834701 () Bool)

(assert (=> d!1249813 m!4834701))

(declare-fun m!4834703 () Bool)

(assert (=> d!1249813 m!4834703))

(assert (=> d!1249813 m!4834673))

(declare-fun m!4834705 () Bool)

(assert (=> b!4249722 m!4834705))

(declare-fun m!4834711 () Bool)

(assert (=> b!4249722 m!4834711))

(assert (=> b!4249722 m!4834711))

(declare-fun m!4834713 () Bool)

(assert (=> b!4249722 m!4834713))

(declare-fun m!4834715 () Bool)

(assert (=> b!4249727 m!4834715))

(assert (=> b!4249720 m!4834705))

(declare-fun m!4834717 () Bool)

(assert (=> b!4249720 m!4834717))

(assert (=> b!4249720 m!4834635))

(assert (=> b!4249721 m!4834705))

(declare-fun m!4834719 () Bool)

(assert (=> b!4249721 m!4834719))

(assert (=> b!4249721 m!4834719))

(declare-fun m!4834721 () Bool)

(assert (=> b!4249721 m!4834721))

(assert (=> b!4249724 m!4834705))

(declare-fun m!4834723 () Bool)

(assert (=> b!4249724 m!4834723))

(assert (=> b!4249719 m!4834705))

(assert (=> b!4249719 m!4834719))

(assert (=> b!4249719 m!4834719))

(assert (=> b!4249719 m!4834721))

(assert (=> b!4249719 m!4834721))

(declare-fun m!4834725 () Bool)

(assert (=> b!4249719 m!4834725))

(assert (=> b!4249725 m!4834705))

(assert (=> b!4249725 m!4834719))

(assert (=> b!4249725 m!4834719))

(assert (=> b!4249725 m!4834721))

(assert (=> b!4249725 m!4834721))

(declare-fun m!4834727 () Bool)

(assert (=> b!4249725 m!4834727))

(declare-fun m!4834729 () Bool)

(assert (=> b!4249726 m!4834729))

(assert (=> b!4249634 d!1249813))

(declare-fun b!4249739 () Bool)

(declare-fun e!2639510 () List!47198)

(assert (=> b!4249739 (= e!2639510 (_2!25453 (v!41059 lt!1508334)))))

(declare-fun d!1249817 () Bool)

(declare-fun e!2639509 () Bool)

(assert (=> d!1249817 e!2639509))

(declare-fun res!1747103 () Bool)

(assert (=> d!1249817 (=> (not res!1747103) (not e!2639509))))

(declare-fun lt!1508372 () List!47198)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7399 (List!47198) (InoxSet C!25944))

(assert (=> d!1249817 (= res!1747103 (= (content!7399 lt!1508372) ((_ map or) (content!7399 lt!1508331) (content!7399 (_2!25453 (v!41059 lt!1508334))))))))

(assert (=> d!1249817 (= lt!1508372 e!2639510)))

(declare-fun c!721704 () Bool)

(assert (=> d!1249817 (= c!721704 ((_ is Nil!47074) lt!1508331))))

(assert (=> d!1249817 (= (++!11979 lt!1508331 (_2!25453 (v!41059 lt!1508334))) lt!1508372)))

(declare-fun b!4249740 () Bool)

(assert (=> b!4249740 (= e!2639510 (Cons!47074 (h!52494 lt!1508331) (++!11979 (t!352227 lt!1508331) (_2!25453 (v!41059 lt!1508334)))))))

(declare-fun b!4249742 () Bool)

(assert (=> b!4249742 (= e!2639509 (or (not (= (_2!25453 (v!41059 lt!1508334)) Nil!47074)) (= lt!1508372 lt!1508331)))))

(declare-fun b!4249741 () Bool)

(declare-fun res!1747104 () Bool)

(assert (=> b!4249741 (=> (not res!1747104) (not e!2639509))))

(assert (=> b!4249741 (= res!1747104 (= (size!34465 lt!1508372) (+ (size!34465 lt!1508331) (size!34465 (_2!25453 (v!41059 lt!1508334))))))))

(assert (= (and d!1249817 c!721704) b!4249739))

(assert (= (and d!1249817 (not c!721704)) b!4249740))

(assert (= (and d!1249817 res!1747103) b!4249741))

(assert (= (and b!4249741 res!1747104) b!4249742))

(declare-fun m!4834731 () Bool)

(assert (=> d!1249817 m!4834731))

(declare-fun m!4834733 () Bool)

(assert (=> d!1249817 m!4834733))

(declare-fun m!4834735 () Bool)

(assert (=> d!1249817 m!4834735))

(declare-fun m!4834737 () Bool)

(assert (=> b!4249740 m!4834737))

(declare-fun m!4834739 () Bool)

(assert (=> b!4249741 m!4834739))

(declare-fun m!4834741 () Bool)

(assert (=> b!4249741 m!4834741))

(assert (=> b!4249741 m!4834597))

(assert (=> b!4249633 d!1249817))

(declare-fun d!1249819 () Bool)

(declare-fun list!16961 (Conc!14179) List!47198)

(assert (=> d!1249819 (= (list!16960 (charsOf!5310 (_1!25453 (v!41059 lt!1508334)))) (list!16961 (c!721678 (charsOf!5310 (_1!25453 (v!41059 lt!1508334))))))))

(declare-fun bs!598632 () Bool)

(assert (= bs!598632 d!1249819))

(declare-fun m!4834743 () Bool)

(assert (=> bs!598632 m!4834743))

(assert (=> b!4249633 d!1249819))

(declare-fun d!1249821 () Bool)

(declare-fun lt!1508375 () BalanceConc!27952)

(assert (=> d!1249821 (= (list!16960 lt!1508375) (originalCharacters!8312 (_1!25453 (v!41059 lt!1508334))))))

(declare-fun dynLambda!20174 (Int TokenValue!8198) BalanceConc!27952)

(assert (=> d!1249821 (= lt!1508375 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334))))) (value!247624 (_1!25453 (v!41059 lt!1508334)))))))

(assert (=> d!1249821 (= (charsOf!5310 (_1!25453 (v!41059 lt!1508334))) lt!1508375)))

(declare-fun b_lambda!125179 () Bool)

(assert (=> (not b_lambda!125179) (not d!1249821)))

(declare-fun t!352231 () Bool)

(declare-fun tb!256211 () Bool)

(assert (=> (and b!4249642 (= (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334)))))) t!352231) tb!256211))

(declare-fun b!4249747 () Bool)

(declare-fun e!2639513 () Bool)

(declare-fun tp!1303833 () Bool)

(declare-fun inv!61851 (Conc!14179) Bool)

(assert (=> b!4249747 (= e!2639513 (and (inv!61851 (c!721678 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334))))) (value!247624 (_1!25453 (v!41059 lt!1508334)))))) tp!1303833))))

(declare-fun result!312432 () Bool)

(declare-fun inv!61852 (BalanceConc!27952) Bool)

(assert (=> tb!256211 (= result!312432 (and (inv!61852 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334))))) (value!247624 (_1!25453 (v!41059 lt!1508334))))) e!2639513))))

(assert (= tb!256211 b!4249747))

(declare-fun m!4834745 () Bool)

(assert (=> b!4249747 m!4834745))

(declare-fun m!4834747 () Bool)

(assert (=> tb!256211 m!4834747))

(assert (=> d!1249821 t!352231))

(declare-fun b_and!336853 () Bool)

(assert (= b_and!336847 (and (=> t!352231 result!312432) b_and!336853)))

(declare-fun t!352233 () Bool)

(declare-fun tb!256213 () Bool)

(assert (=> (and b!4249645 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334)))))) t!352233) tb!256213))

(declare-fun result!312436 () Bool)

(assert (= result!312436 result!312432))

(assert (=> d!1249821 t!352233))

(declare-fun b_and!336855 () Bool)

(assert (= b_and!336851 (and (=> t!352233 result!312436) b_and!336855)))

(declare-fun m!4834749 () Bool)

(assert (=> d!1249821 m!4834749))

(declare-fun m!4834751 () Bool)

(assert (=> d!1249821 m!4834751))

(assert (=> b!4249633 d!1249821))

(declare-fun d!1249823 () Bool)

(assert (=> d!1249823 (= (isEmpty!27849 rules!2971) ((_ is Nil!47076) rules!2971))))

(assert (=> b!4249644 d!1249823))

(declare-fun d!1249825 () Bool)

(declare-fun lt!1508378 () Int)

(assert (=> d!1249825 (>= lt!1508378 0)))

(declare-fun e!2639516 () Int)

(assert (=> d!1249825 (= lt!1508378 e!2639516)))

(declare-fun c!721707 () Bool)

(assert (=> d!1249825 (= c!721707 ((_ is Nil!47074) (_2!25453 (v!41059 lt!1508333))))))

(assert (=> d!1249825 (= (size!34465 (_2!25453 (v!41059 lt!1508333))) lt!1508378)))

(declare-fun b!4249752 () Bool)

(assert (=> b!4249752 (= e!2639516 0)))

(declare-fun b!4249753 () Bool)

(assert (=> b!4249753 (= e!2639516 (+ 1 (size!34465 (t!352227 (_2!25453 (v!41059 lt!1508333))))))))

(assert (= (and d!1249825 c!721707) b!4249752))

(assert (= (and d!1249825 (not c!721707)) b!4249753))

(declare-fun m!4834753 () Bool)

(assert (=> b!4249753 m!4834753))

(assert (=> b!4249646 d!1249825))

(declare-fun d!1249827 () Bool)

(declare-fun lt!1508379 () Int)

(assert (=> d!1249827 (>= lt!1508379 0)))

(declare-fun e!2639517 () Int)

(assert (=> d!1249827 (= lt!1508379 e!2639517)))

(declare-fun c!721708 () Bool)

(assert (=> d!1249827 (= c!721708 ((_ is Nil!47074) (_2!25453 (v!41059 lt!1508334))))))

(assert (=> d!1249827 (= (size!34465 (_2!25453 (v!41059 lt!1508334))) lt!1508379)))

(declare-fun b!4249754 () Bool)

(assert (=> b!4249754 (= e!2639517 0)))

(declare-fun b!4249755 () Bool)

(assert (=> b!4249755 (= e!2639517 (+ 1 (size!34465 (t!352227 (_2!25453 (v!41059 lt!1508334))))))))

(assert (= (and d!1249827 c!721708) b!4249754))

(assert (= (and d!1249827 (not c!721708)) b!4249755))

(declare-fun m!4834755 () Bool)

(assert (=> b!4249755 m!4834755))

(assert (=> b!4249646 d!1249827))

(declare-fun b!4249842 () Bool)

(declare-fun e!2639555 () tuple2!44640)

(assert (=> b!4249842 (= e!2639555 (tuple2!44641 Nil!47075 longerInput!62))))

(declare-fun b!4249843 () Bool)

(declare-fun e!2639556 () Bool)

(declare-fun e!2639557 () Bool)

(assert (=> b!4249843 (= e!2639556 e!2639557)))

(declare-fun res!1747150 () Bool)

(declare-fun lt!1508416 () tuple2!44640)

(assert (=> b!4249843 (= res!1747150 (< (size!34465 (_2!25454 lt!1508416)) (size!34465 longerInput!62)))))

(assert (=> b!4249843 (=> (not res!1747150) (not e!2639557))))

(declare-fun b!4249844 () Bool)

(declare-fun isEmpty!27853 (List!47199) Bool)

(assert (=> b!4249844 (= e!2639557 (not (isEmpty!27853 (_1!25454 lt!1508416))))))

(declare-fun d!1249829 () Bool)

(assert (=> d!1249829 e!2639556))

(declare-fun c!721722 () Bool)

(declare-fun size!34467 (List!47199) Int)

(assert (=> d!1249829 (= c!721722 (> (size!34467 (_1!25454 lt!1508416)) 0))))

(assert (=> d!1249829 (= lt!1508416 e!2639555)))

(declare-fun c!721721 () Bool)

(declare-fun lt!1508414 () Option!10102)

(assert (=> d!1249829 (= c!721721 ((_ is Some!10101) lt!1508414))))

(assert (=> d!1249829 (= lt!1508414 (maxPrefix!4519 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1249829 (= (lexList!2069 thiss!21641 rules!2971 longerInput!62) lt!1508416)))

(declare-fun b!4249845 () Bool)

(declare-fun lt!1508415 () tuple2!44640)

(assert (=> b!4249845 (= e!2639555 (tuple2!44641 (Cons!47075 (_1!25453 (v!41059 lt!1508414)) (_1!25454 lt!1508415)) (_2!25454 lt!1508415)))))

(assert (=> b!4249845 (= lt!1508415 (lexList!2069 thiss!21641 rules!2971 (_2!25453 (v!41059 lt!1508414))))))

(declare-fun b!4249846 () Bool)

(assert (=> b!4249846 (= e!2639556 (= (_2!25454 lt!1508416) longerInput!62))))

(assert (= (and d!1249829 c!721721) b!4249845))

(assert (= (and d!1249829 (not c!721721)) b!4249842))

(assert (= (and d!1249829 c!721722) b!4249843))

(assert (= (and d!1249829 (not c!721722)) b!4249846))

(assert (= (and b!4249843 res!1747150) b!4249844))

(declare-fun m!4834879 () Bool)

(assert (=> b!4249843 m!4834879))

(assert (=> b!4249843 m!4834635))

(declare-fun m!4834881 () Bool)

(assert (=> b!4249844 m!4834881))

(declare-fun m!4834883 () Bool)

(assert (=> d!1249829 m!4834883))

(assert (=> d!1249829 m!4834619))

(declare-fun m!4834885 () Bool)

(assert (=> b!4249845 m!4834885))

(assert (=> b!4249636 d!1249829))

(declare-fun d!1249853 () Bool)

(declare-fun res!1747155 () Bool)

(declare-fun e!2639592 () Bool)

(assert (=> d!1249853 (=> (not res!1747155) (not e!2639592))))

(assert (=> d!1249853 (= res!1747155 (not (isEmpty!27848 (originalCharacters!8312 (h!52495 tokens!592)))))))

(assert (=> d!1249853 (= (inv!61847 (h!52495 tokens!592)) e!2639592)))

(declare-fun b!4249887 () Bool)

(declare-fun res!1747156 () Bool)

(assert (=> b!4249887 (=> (not res!1747156) (not e!2639592))))

(assert (=> b!4249887 (= res!1747156 (= (originalCharacters!8312 (h!52495 tokens!592)) (list!16960 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (value!247624 (h!52495 tokens!592))))))))

(declare-fun b!4249888 () Bool)

(assert (=> b!4249888 (= e!2639592 (= (size!34464 (h!52495 tokens!592)) (size!34465 (originalCharacters!8312 (h!52495 tokens!592)))))))

(assert (= (and d!1249853 res!1747155) b!4249887))

(assert (= (and b!4249887 res!1747156) b!4249888))

(declare-fun b_lambda!125187 () Bool)

(assert (=> (not b_lambda!125187) (not b!4249887)))

(declare-fun t!352259 () Bool)

(declare-fun tb!256239 () Bool)

(assert (=> (and b!4249642 (= (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592))))) t!352259) tb!256239))

(declare-fun b!4249893 () Bool)

(declare-fun e!2639598 () Bool)

(declare-fun tp!1303891 () Bool)

(assert (=> b!4249893 (= e!2639598 (and (inv!61851 (c!721678 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (value!247624 (h!52495 tokens!592))))) tp!1303891))))

(declare-fun result!312472 () Bool)

(assert (=> tb!256239 (= result!312472 (and (inv!61852 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (value!247624 (h!52495 tokens!592)))) e!2639598))))

(assert (= tb!256239 b!4249893))

(declare-fun m!4834899 () Bool)

(assert (=> b!4249893 m!4834899))

(declare-fun m!4834901 () Bool)

(assert (=> tb!256239 m!4834901))

(assert (=> b!4249887 t!352259))

(declare-fun b_and!336877 () Bool)

(assert (= b_and!336853 (and (=> t!352259 result!312472) b_and!336877)))

(declare-fun t!352261 () Bool)

(declare-fun tb!256241 () Bool)

(assert (=> (and b!4249645 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592))))) t!352261) tb!256241))

(declare-fun result!312474 () Bool)

(assert (= result!312474 result!312472))

(assert (=> b!4249887 t!352261))

(declare-fun b_and!336879 () Bool)

(assert (= b_and!336855 (and (=> t!352261 result!312474) b_and!336879)))

(declare-fun m!4834903 () Bool)

(assert (=> d!1249853 m!4834903))

(declare-fun m!4834905 () Bool)

(assert (=> b!4249887 m!4834905))

(assert (=> b!4249887 m!4834905))

(declare-fun m!4834907 () Bool)

(assert (=> b!4249887 m!4834907))

(declare-fun m!4834909 () Bool)

(assert (=> b!4249888 m!4834909))

(assert (=> b!4249629 d!1249853))

(declare-fun b!4249895 () Bool)

(declare-fun e!2639601 () List!47198)

(assert (=> b!4249895 (= e!2639601 (_2!25453 (v!41059 lt!1508333)))))

(declare-fun d!1249855 () Bool)

(declare-fun e!2639600 () Bool)

(assert (=> d!1249855 e!2639600))

(declare-fun res!1747157 () Bool)

(assert (=> d!1249855 (=> (not res!1747157) (not e!2639600))))

(declare-fun lt!1508417 () List!47198)

(assert (=> d!1249855 (= res!1747157 (= (content!7399 lt!1508417) ((_ map or) (content!7399 lt!1508332) (content!7399 (_2!25453 (v!41059 lt!1508333))))))))

(assert (=> d!1249855 (= lt!1508417 e!2639601)))

(declare-fun c!721723 () Bool)

(assert (=> d!1249855 (= c!721723 ((_ is Nil!47074) lt!1508332))))

(assert (=> d!1249855 (= (++!11979 lt!1508332 (_2!25453 (v!41059 lt!1508333))) lt!1508417)))

(declare-fun b!4249896 () Bool)

(assert (=> b!4249896 (= e!2639601 (Cons!47074 (h!52494 lt!1508332) (++!11979 (t!352227 lt!1508332) (_2!25453 (v!41059 lt!1508333)))))))

(declare-fun b!4249898 () Bool)

(assert (=> b!4249898 (= e!2639600 (or (not (= (_2!25453 (v!41059 lt!1508333)) Nil!47074)) (= lt!1508417 lt!1508332)))))

(declare-fun b!4249897 () Bool)

(declare-fun res!1747158 () Bool)

(assert (=> b!4249897 (=> (not res!1747158) (not e!2639600))))

(assert (=> b!4249897 (= res!1747158 (= (size!34465 lt!1508417) (+ (size!34465 lt!1508332) (size!34465 (_2!25453 (v!41059 lt!1508333))))))))

(assert (= (and d!1249855 c!721723) b!4249895))

(assert (= (and d!1249855 (not c!721723)) b!4249896))

(assert (= (and d!1249855 res!1747157) b!4249897))

(assert (= (and b!4249897 res!1747158) b!4249898))

(declare-fun m!4834911 () Bool)

(assert (=> d!1249855 m!4834911))

(declare-fun m!4834913 () Bool)

(assert (=> d!1249855 m!4834913))

(declare-fun m!4834915 () Bool)

(assert (=> d!1249855 m!4834915))

(declare-fun m!4834917 () Bool)

(assert (=> b!4249896 m!4834917))

(declare-fun m!4834919 () Bool)

(assert (=> b!4249897 m!4834919))

(declare-fun m!4834921 () Bool)

(assert (=> b!4249897 m!4834921))

(assert (=> b!4249897 m!4834595))

(assert (=> b!4249640 d!1249855))

(declare-fun d!1249857 () Bool)

(assert (=> d!1249857 (= (list!16960 (charsOf!5310 (_1!25453 (v!41059 lt!1508333)))) (list!16961 (c!721678 (charsOf!5310 (_1!25453 (v!41059 lt!1508333))))))))

(declare-fun bs!598635 () Bool)

(assert (= bs!598635 d!1249857))

(declare-fun m!4834923 () Bool)

(assert (=> bs!598635 m!4834923))

(assert (=> b!4249640 d!1249857))

(declare-fun d!1249859 () Bool)

(declare-fun lt!1508418 () BalanceConc!27952)

(assert (=> d!1249859 (= (list!16960 lt!1508418) (originalCharacters!8312 (_1!25453 (v!41059 lt!1508333))))))

(assert (=> d!1249859 (= lt!1508418 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333))))) (value!247624 (_1!25453 (v!41059 lt!1508333)))))))

(assert (=> d!1249859 (= (charsOf!5310 (_1!25453 (v!41059 lt!1508333))) lt!1508418)))

(declare-fun b_lambda!125191 () Bool)

(assert (=> (not b_lambda!125191) (not d!1249859)))

(declare-fun t!352263 () Bool)

(declare-fun tb!256243 () Bool)

(assert (=> (and b!4249642 (= (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333)))))) t!352263) tb!256243))

(declare-fun b!4249899 () Bool)

(declare-fun e!2639602 () Bool)

(declare-fun tp!1303893 () Bool)

(assert (=> b!4249899 (= e!2639602 (and (inv!61851 (c!721678 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333))))) (value!247624 (_1!25453 (v!41059 lt!1508333)))))) tp!1303893))))

(declare-fun result!312476 () Bool)

(assert (=> tb!256243 (= result!312476 (and (inv!61852 (dynLambda!20174 (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333))))) (value!247624 (_1!25453 (v!41059 lt!1508333))))) e!2639602))))

(assert (= tb!256243 b!4249899))

(declare-fun m!4834925 () Bool)

(assert (=> b!4249899 m!4834925))

(declare-fun m!4834927 () Bool)

(assert (=> tb!256243 m!4834927))

(assert (=> d!1249859 t!352263))

(declare-fun b_and!336881 () Bool)

(assert (= b_and!336877 (and (=> t!352263 result!312476) b_and!336881)))

(declare-fun t!352265 () Bool)

(declare-fun tb!256245 () Bool)

(assert (=> (and b!4249645 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333)))))) t!352265) tb!256245))

(declare-fun result!312478 () Bool)

(assert (= result!312478 result!312476))

(assert (=> d!1249859 t!352265))

(declare-fun b_and!336883 () Bool)

(assert (= b_and!336879 (and (=> t!352265 result!312478) b_and!336883)))

(declare-fun m!4834929 () Bool)

(assert (=> d!1249859 m!4834929))

(declare-fun m!4834931 () Bool)

(assert (=> d!1249859 m!4834931))

(assert (=> b!4249640 d!1249859))

(declare-fun d!1249861 () Bool)

(declare-fun lt!1508419 () Int)

(assert (=> d!1249861 (>= lt!1508419 0)))

(declare-fun e!2639603 () Int)

(assert (=> d!1249861 (= lt!1508419 e!2639603)))

(declare-fun c!721724 () Bool)

(assert (=> d!1249861 (= c!721724 ((_ is Nil!47074) longerInput!62))))

(assert (=> d!1249861 (= (size!34465 longerInput!62) lt!1508419)))

(declare-fun b!4249900 () Bool)

(assert (=> b!4249900 (= e!2639603 0)))

(declare-fun b!4249901 () Bool)

(assert (=> b!4249901 (= e!2639603 (+ 1 (size!34465 (t!352227 longerInput!62))))))

(assert (= (and d!1249861 c!721724) b!4249900))

(assert (= (and d!1249861 (not c!721724)) b!4249901))

(declare-fun m!4834933 () Bool)

(assert (=> b!4249901 m!4834933))

(assert (=> b!4249638 d!1249861))

(declare-fun d!1249863 () Bool)

(declare-fun lt!1508420 () Int)

(assert (=> d!1249863 (>= lt!1508420 0)))

(declare-fun e!2639604 () Int)

(assert (=> d!1249863 (= lt!1508420 e!2639604)))

(declare-fun c!721725 () Bool)

(assert (=> d!1249863 (= c!721725 ((_ is Nil!47074) shorterInput!62))))

(assert (=> d!1249863 (= (size!34465 shorterInput!62) lt!1508420)))

(declare-fun b!4249902 () Bool)

(assert (=> b!4249902 (= e!2639604 0)))

(declare-fun b!4249903 () Bool)

(assert (=> b!4249903 (= e!2639604 (+ 1 (size!34465 (t!352227 shorterInput!62))))))

(assert (= (and d!1249863 c!721725) b!4249902))

(assert (= (and d!1249863 (not c!721725)) b!4249903))

(declare-fun m!4834935 () Bool)

(assert (=> b!4249903 m!4834935))

(assert (=> b!4249638 d!1249863))

(declare-fun d!1249865 () Bool)

(assert (=> d!1249865 (= (inv!61844 (tag!8832 (h!52496 rules!2971))) (= (mod (str.len (value!247623 (tag!8832 (h!52496 rules!2971)))) 2) 0))))

(assert (=> b!4249643 d!1249865))

(declare-fun d!1249867 () Bool)

(declare-fun res!1747161 () Bool)

(declare-fun e!2639607 () Bool)

(assert (=> d!1249867 (=> (not res!1747161) (not e!2639607))))

(declare-fun semiInverseModEq!3473 (Int Int) Bool)

(assert (=> d!1249867 (= res!1747161 (semiInverseModEq!3473 (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toValue!10740 (transformation!7968 (h!52496 rules!2971)))))))

(assert (=> d!1249867 (= (inv!61848 (transformation!7968 (h!52496 rules!2971))) e!2639607)))

(declare-fun b!4249906 () Bool)

(declare-fun equivClasses!3372 (Int Int) Bool)

(assert (=> b!4249906 (= e!2639607 (equivClasses!3372 (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toValue!10740 (transformation!7968 (h!52496 rules!2971)))))))

(assert (= (and d!1249867 res!1747161) b!4249906))

(declare-fun m!4834937 () Bool)

(assert (=> d!1249867 m!4834937))

(declare-fun m!4834939 () Bool)

(assert (=> b!4249906 m!4834939))

(assert (=> b!4249643 d!1249867))

(declare-fun d!1249869 () Bool)

(assert (=> d!1249869 (= (inv!61844 (tag!8832 (rule!11102 (h!52495 tokens!592)))) (= (mod (str.len (value!247623 (tag!8832 (rule!11102 (h!52495 tokens!592))))) 2) 0))))

(assert (=> b!4249632 d!1249869))

(declare-fun d!1249871 () Bool)

(declare-fun res!1747162 () Bool)

(declare-fun e!2639608 () Bool)

(assert (=> d!1249871 (=> (not res!1747162) (not e!2639608))))

(assert (=> d!1249871 (= res!1747162 (semiInverseModEq!3473 (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (toValue!10740 (transformation!7968 (rule!11102 (h!52495 tokens!592))))))))

(assert (=> d!1249871 (= (inv!61848 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) e!2639608)))

(declare-fun b!4249907 () Bool)

(assert (=> b!4249907 (= e!2639608 (equivClasses!3372 (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))) (toValue!10740 (transformation!7968 (rule!11102 (h!52495 tokens!592))))))))

(assert (= (and d!1249871 res!1747162) b!4249907))

(declare-fun m!4834941 () Bool)

(assert (=> d!1249871 m!4834941))

(declare-fun m!4834943 () Bool)

(assert (=> b!4249907 m!4834943))

(assert (=> b!4249632 d!1249871))

(declare-fun d!1249873 () Bool)

(assert (=> d!1249873 (= (isEmpty!27848 longerInput!62) ((_ is Nil!47074) longerInput!62))))

(assert (=> b!4249641 d!1249873))

(declare-fun b!4249918 () Bool)

(declare-fun e!2639617 () Bool)

(declare-fun inv!15 (TokenValue!8198) Bool)

(assert (=> b!4249918 (= e!2639617 (inv!15 (value!247624 (h!52495 tokens!592))))))

(declare-fun b!4249919 () Bool)

(declare-fun e!2639615 () Bool)

(declare-fun e!2639616 () Bool)

(assert (=> b!4249919 (= e!2639615 e!2639616)))

(declare-fun c!721730 () Bool)

(assert (=> b!4249919 (= c!721730 ((_ is IntegerValue!24595) (value!247624 (h!52495 tokens!592))))))

(declare-fun b!4249920 () Bool)

(declare-fun inv!17 (TokenValue!8198) Bool)

(assert (=> b!4249920 (= e!2639616 (inv!17 (value!247624 (h!52495 tokens!592))))))

(declare-fun b!4249921 () Bool)

(declare-fun res!1747165 () Bool)

(assert (=> b!4249921 (=> res!1747165 e!2639617)))

(assert (=> b!4249921 (= res!1747165 (not ((_ is IntegerValue!24596) (value!247624 (h!52495 tokens!592)))))))

(assert (=> b!4249921 (= e!2639616 e!2639617)))

(declare-fun b!4249922 () Bool)

(declare-fun inv!16 (TokenValue!8198) Bool)

(assert (=> b!4249922 (= e!2639615 (inv!16 (value!247624 (h!52495 tokens!592))))))

(declare-fun d!1249875 () Bool)

(declare-fun c!721731 () Bool)

(assert (=> d!1249875 (= c!721731 ((_ is IntegerValue!24594) (value!247624 (h!52495 tokens!592))))))

(assert (=> d!1249875 (= (inv!21 (value!247624 (h!52495 tokens!592))) e!2639615)))

(assert (= (and d!1249875 c!721731) b!4249922))

(assert (= (and d!1249875 (not c!721731)) b!4249919))

(assert (= (and b!4249919 c!721730) b!4249920))

(assert (= (and b!4249919 (not c!721730)) b!4249921))

(assert (= (and b!4249921 (not res!1747165)) b!4249918))

(declare-fun m!4834945 () Bool)

(assert (=> b!4249918 m!4834945))

(declare-fun m!4834947 () Bool)

(assert (=> b!4249920 m!4834947))

(declare-fun m!4834949 () Bool)

(assert (=> b!4249922 m!4834949))

(assert (=> b!4249630 d!1249875))

(declare-fun d!1249877 () Bool)

(declare-fun res!1747168 () Bool)

(declare-fun e!2639620 () Bool)

(assert (=> d!1249877 (=> (not res!1747168) (not e!2639620))))

(declare-fun rulesValid!3095 (LexerInterface!7563 List!47200) Bool)

(assert (=> d!1249877 (= res!1747168 (rulesValid!3095 thiss!21641 rules!2971))))

(assert (=> d!1249877 (= (rulesInvariant!6674 thiss!21641 rules!2971) e!2639620)))

(declare-fun b!4249925 () Bool)

(declare-datatypes ((List!47202 0))(
  ( (Nil!47078) (Cons!47078 (h!52498 String!54920) (t!352279 List!47202)) )
))
(declare-fun noDuplicateTag!3256 (LexerInterface!7563 List!47200 List!47202) Bool)

(assert (=> b!4249925 (= e!2639620 (noDuplicateTag!3256 thiss!21641 rules!2971 Nil!47078))))

(assert (= (and d!1249877 res!1747168) b!4249925))

(declare-fun m!4834951 () Bool)

(assert (=> d!1249877 m!4834951))

(declare-fun m!4834953 () Bool)

(assert (=> b!4249925 m!4834953))

(assert (=> b!4249631 d!1249877))

(declare-fun b!4249939 () Bool)

(declare-fun b_free!126291 () Bool)

(declare-fun b_next!126995 () Bool)

(assert (=> b!4249939 (= b_free!126291 (not b_next!126995))))

(declare-fun tp!1303907 () Bool)

(declare-fun b_and!336885 () Bool)

(assert (=> b!4249939 (= tp!1303907 b_and!336885)))

(declare-fun b_free!126293 () Bool)

(declare-fun b_next!126997 () Bool)

(assert (=> b!4249939 (= b_free!126293 (not b_next!126997))))

(declare-fun tb!256247 () Bool)

(declare-fun t!352268 () Bool)

(assert (=> (and b!4249939 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 (t!352228 tokens!592))))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334)))))) t!352268) tb!256247))

(declare-fun result!312482 () Bool)

(assert (= result!312482 result!312432))

(assert (=> d!1249821 t!352268))

(declare-fun t!352270 () Bool)

(declare-fun tb!256249 () Bool)

(assert (=> (and b!4249939 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 (t!352228 tokens!592))))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592))))) t!352270) tb!256249))

(declare-fun result!312484 () Bool)

(assert (= result!312484 result!312472))

(assert (=> b!4249887 t!352270))

(declare-fun tb!256251 () Bool)

(declare-fun t!352272 () Bool)

(assert (=> (and b!4249939 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 (t!352228 tokens!592))))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333)))))) t!352272) tb!256251))

(declare-fun result!312486 () Bool)

(assert (= result!312486 result!312476))

(assert (=> d!1249859 t!352272))

(declare-fun b_and!336887 () Bool)

(declare-fun tp!1303906 () Bool)

(assert (=> b!4249939 (= tp!1303906 (and (=> t!352268 result!312482) (=> t!352270 result!312484) (=> t!352272 result!312486) b_and!336887))))

(declare-fun b!4249936 () Bool)

(declare-fun e!2639637 () Bool)

(declare-fun e!2639634 () Bool)

(declare-fun tp!1303905 () Bool)

(assert (=> b!4249936 (= e!2639634 (and (inv!61847 (h!52495 (t!352228 tokens!592))) e!2639637 tp!1303905))))

(declare-fun b!4249937 () Bool)

(declare-fun tp!1303908 () Bool)

(declare-fun e!2639635 () Bool)

(assert (=> b!4249937 (= e!2639637 (and (inv!21 (value!247624 (h!52495 (t!352228 tokens!592)))) e!2639635 tp!1303908))))

(declare-fun e!2639636 () Bool)

(assert (=> b!4249939 (= e!2639636 (and tp!1303907 tp!1303906))))

(assert (=> b!4249629 (= tp!1303830 e!2639634)))

(declare-fun b!4249938 () Bool)

(declare-fun tp!1303904 () Bool)

(assert (=> b!4249938 (= e!2639635 (and tp!1303904 (inv!61844 (tag!8832 (rule!11102 (h!52495 (t!352228 tokens!592))))) (inv!61848 (transformation!7968 (rule!11102 (h!52495 (t!352228 tokens!592))))) e!2639636))))

(assert (= b!4249938 b!4249939))

(assert (= b!4249937 b!4249938))

(assert (= b!4249936 b!4249937))

(assert (= (and b!4249629 ((_ is Cons!47075) (t!352228 tokens!592))) b!4249936))

(declare-fun m!4834955 () Bool)

(assert (=> b!4249936 m!4834955))

(declare-fun m!4834957 () Bool)

(assert (=> b!4249937 m!4834957))

(declare-fun m!4834959 () Bool)

(assert (=> b!4249938 m!4834959))

(declare-fun m!4834961 () Bool)

(assert (=> b!4249938 m!4834961))

(declare-fun b!4249944 () Bool)

(declare-fun e!2639641 () Bool)

(declare-fun tp!1303911 () Bool)

(assert (=> b!4249944 (= e!2639641 (and tp_is_empty!22737 tp!1303911))))

(assert (=> b!4249635 (= tp!1303824 e!2639641)))

(assert (= (and b!4249635 ((_ is Cons!47074) (t!352227 suffix!1284))) b!4249944))

(declare-fun b!4249945 () Bool)

(declare-fun e!2639642 () Bool)

(declare-fun tp!1303912 () Bool)

(assert (=> b!4249945 (= e!2639642 (and tp_is_empty!22737 tp!1303912))))

(assert (=> b!4249639 (= tp!1303825 e!2639642)))

(assert (= (and b!4249639 ((_ is Cons!47074) (t!352227 shorterInput!62))) b!4249945))

(declare-fun b!4249956 () Bool)

(declare-fun b_free!126295 () Bool)

(declare-fun b_next!126999 () Bool)

(assert (=> b!4249956 (= b_free!126295 (not b_next!126999))))

(declare-fun tp!1303922 () Bool)

(declare-fun b_and!336889 () Bool)

(assert (=> b!4249956 (= tp!1303922 b_and!336889)))

(declare-fun b_free!126297 () Bool)

(declare-fun b_next!127001 () Bool)

(assert (=> b!4249956 (= b_free!126297 (not b_next!127001))))

(declare-fun t!352274 () Bool)

(declare-fun tb!256253 () Bool)

(assert (=> (and b!4249956 (= (toChars!10599 (transformation!7968 (h!52496 (t!352229 rules!2971)))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508334)))))) t!352274) tb!256253))

(declare-fun result!312492 () Bool)

(assert (= result!312492 result!312432))

(assert (=> d!1249821 t!352274))

(declare-fun t!352276 () Bool)

(declare-fun tb!256255 () Bool)

(assert (=> (and b!4249956 (= (toChars!10599 (transformation!7968 (h!52496 (t!352229 rules!2971)))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592))))) t!352276) tb!256255))

(declare-fun result!312494 () Bool)

(assert (= result!312494 result!312472))

(assert (=> b!4249887 t!352276))

(declare-fun t!352278 () Bool)

(declare-fun tb!256257 () Bool)

(assert (=> (and b!4249956 (= (toChars!10599 (transformation!7968 (h!52496 (t!352229 rules!2971)))) (toChars!10599 (transformation!7968 (rule!11102 (_1!25453 (v!41059 lt!1508333)))))) t!352278) tb!256257))

(declare-fun result!312496 () Bool)

(assert (= result!312496 result!312476))

(assert (=> d!1249859 t!352278))

(declare-fun b_and!336891 () Bool)

(declare-fun tp!1303924 () Bool)

(assert (=> b!4249956 (= tp!1303924 (and (=> t!352274 result!312492) (=> t!352276 result!312494) (=> t!352278 result!312496) b_and!336891))))

(declare-fun e!2639653 () Bool)

(assert (=> b!4249956 (= e!2639653 (and tp!1303922 tp!1303924))))

(declare-fun b!4249955 () Bool)

(declare-fun e!2639652 () Bool)

(declare-fun tp!1303921 () Bool)

(assert (=> b!4249955 (= e!2639652 (and tp!1303921 (inv!61844 (tag!8832 (h!52496 (t!352229 rules!2971)))) (inv!61848 (transformation!7968 (h!52496 (t!352229 rules!2971)))) e!2639653))))

(declare-fun b!4249954 () Bool)

(declare-fun e!2639654 () Bool)

(declare-fun tp!1303923 () Bool)

(assert (=> b!4249954 (= e!2639654 (and e!2639652 tp!1303923))))

(assert (=> b!4249637 (= tp!1303823 e!2639654)))

(assert (= b!4249955 b!4249956))

(assert (= b!4249954 b!4249955))

(assert (= (and b!4249637 ((_ is Cons!47076) (t!352229 rules!2971))) b!4249954))

(declare-fun m!4834963 () Bool)

(assert (=> b!4249955 m!4834963))

(declare-fun m!4834965 () Bool)

(assert (=> b!4249955 m!4834965))

(declare-fun e!2639657 () Bool)

(assert (=> b!4249643 (= tp!1303829 e!2639657)))

(declare-fun b!4249968 () Bool)

(declare-fun tp!1303939 () Bool)

(declare-fun tp!1303938 () Bool)

(assert (=> b!4249968 (= e!2639657 (and tp!1303939 tp!1303938))))

(declare-fun b!4249969 () Bool)

(declare-fun tp!1303937 () Bool)

(assert (=> b!4249969 (= e!2639657 tp!1303937)))

(declare-fun b!4249967 () Bool)

(assert (=> b!4249967 (= e!2639657 tp_is_empty!22737)))

(declare-fun b!4249970 () Bool)

(declare-fun tp!1303935 () Bool)

(declare-fun tp!1303936 () Bool)

(assert (=> b!4249970 (= e!2639657 (and tp!1303935 tp!1303936))))

(assert (= (and b!4249643 ((_ is ElementMatch!12873) (regex!7968 (h!52496 rules!2971)))) b!4249967))

(assert (= (and b!4249643 ((_ is Concat!21072) (regex!7968 (h!52496 rules!2971)))) b!4249968))

(assert (= (and b!4249643 ((_ is Star!12873) (regex!7968 (h!52496 rules!2971)))) b!4249969))

(assert (= (and b!4249643 ((_ is Union!12873) (regex!7968 (h!52496 rules!2971)))) b!4249970))

(declare-fun b!4249971 () Bool)

(declare-fun e!2639658 () Bool)

(declare-fun tp!1303940 () Bool)

(assert (=> b!4249971 (= e!2639658 (and tp_is_empty!22737 tp!1303940))))

(assert (=> b!4249627 (= tp!1303826 e!2639658)))

(assert (= (and b!4249627 ((_ is Cons!47074) (t!352227 longerInput!62))) b!4249971))

(declare-fun e!2639659 () Bool)

(assert (=> b!4249632 (= tp!1303820 e!2639659)))

(declare-fun b!4249973 () Bool)

(declare-fun tp!1303945 () Bool)

(declare-fun tp!1303944 () Bool)

(assert (=> b!4249973 (= e!2639659 (and tp!1303945 tp!1303944))))

(declare-fun b!4249974 () Bool)

(declare-fun tp!1303943 () Bool)

(assert (=> b!4249974 (= e!2639659 tp!1303943)))

(declare-fun b!4249972 () Bool)

(assert (=> b!4249972 (= e!2639659 tp_is_empty!22737)))

(declare-fun b!4249975 () Bool)

(declare-fun tp!1303941 () Bool)

(declare-fun tp!1303942 () Bool)

(assert (=> b!4249975 (= e!2639659 (and tp!1303941 tp!1303942))))

(assert (= (and b!4249632 ((_ is ElementMatch!12873) (regex!7968 (rule!11102 (h!52495 tokens!592))))) b!4249972))

(assert (= (and b!4249632 ((_ is Concat!21072) (regex!7968 (rule!11102 (h!52495 tokens!592))))) b!4249973))

(assert (= (and b!4249632 ((_ is Star!12873) (regex!7968 (rule!11102 (h!52495 tokens!592))))) b!4249974))

(assert (= (and b!4249632 ((_ is Union!12873) (regex!7968 (rule!11102 (h!52495 tokens!592))))) b!4249975))

(declare-fun b!4249976 () Bool)

(declare-fun e!2639660 () Bool)

(declare-fun tp!1303946 () Bool)

(assert (=> b!4249976 (= e!2639660 (and tp_is_empty!22737 tp!1303946))))

(assert (=> b!4249630 (= tp!1303827 e!2639660)))

(assert (= (and b!4249630 ((_ is Cons!47074) (originalCharacters!8312 (h!52495 tokens!592)))) b!4249976))

(declare-fun b_lambda!125193 () Bool)

(assert (= b_lambda!125187 (or (and b!4249642 b_free!126277 (= (toChars!10599 (transformation!7968 (h!52496 rules!2971))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))))) (and b!4249645 b_free!126281) (and b!4249939 b_free!126293 (= (toChars!10599 (transformation!7968 (rule!11102 (h!52495 (t!352228 tokens!592))))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))))) (and b!4249956 b_free!126297 (= (toChars!10599 (transformation!7968 (h!52496 (t!352229 rules!2971)))) (toChars!10599 (transformation!7968 (rule!11102 (h!52495 tokens!592)))))) b_lambda!125193)))

(check-sat b_and!336887 (not b!4249755) (not d!1249871) (not b!4249938) (not b!4249903) (not tb!256239) (not bm!293950) (not b_next!126997) (not b_lambda!125179) (not b!4249711) (not b!4249896) (not d!1249859) (not d!1249813) (not b!4249712) (not b!4249725) (not b_next!126985) b_and!336889 (not d!1249829) (not b!4249887) (not bm!293951) (not b!4249705) (not b!4249741) b_and!336849 (not b!4249906) (not b!4249720) (not b!4249944) (not b_next!126979) (not b_next!126983) (not b!4249901) b_and!336881 (not b_next!126999) (not b!4249724) (not b!4249973) (not b_lambda!125193) (not b!4249970) (not b!4249722) b_and!336845 b_and!336885 (not b!4249974) (not b!4249706) (not tb!256243) (not d!1249791) (not b!4249954) (not d!1249819) (not b!4249845) (not b!4249922) (not b!4249899) (not b!4249888) (not b!4249955) (not b!4249968) (not b!4249897) (not b_next!126981) (not b!4249844) (not b!4249945) (not b!4249925) tp_is_empty!22737 (not b!4249713) (not b!4249843) (not d!1249817) b_and!336891 (not b!4249719) (not b!4249753) (not b!4249710) (not b_lambda!125191) (not b!4249747) (not tb!256211) (not b!4249726) (not b!4249969) (not d!1249855) (not b_next!126995) (not d!1249867) (not d!1249853) (not b!4249727) (not b!4249893) b_and!336883 (not b!4249920) (not b!4249975) (not b!4249708) (not b!4249918) (not b!4249907) (not b!4249971) (not d!1249857) (not b!4249707) (not b_next!127001) (not b!4249721) (not d!1249821) (not b!4249740) (not b!4249976) (not b!4249937) (not b!4249936) (not d!1249877))
(check-sat (not b_next!126997) b_and!336887 b_and!336849 (not b_next!126999) (not b_next!126981) b_and!336891 (not b_next!126995) b_and!336883 (not b_next!127001) (not b_next!126985) b_and!336889 (not b_next!126979) (not b_next!126983) b_and!336881 b_and!336845 b_and!336885)
