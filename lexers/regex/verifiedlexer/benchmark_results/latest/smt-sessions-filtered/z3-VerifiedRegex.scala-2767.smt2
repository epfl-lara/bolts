; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152170 () Bool)

(assert start!152170)

(declare-fun b!1611758 () Bool)

(declare-fun b_free!43303 () Bool)

(declare-fun b_next!44007 () Bool)

(assert (=> b!1611758 (= b_free!43303 (not b_next!44007))))

(declare-fun tp!470097 () Bool)

(declare-fun b_and!114261 () Bool)

(assert (=> b!1611758 (= tp!470097 b_and!114261)))

(declare-fun b_free!43305 () Bool)

(declare-fun b_next!44009 () Bool)

(assert (=> b!1611758 (= b_free!43305 (not b_next!44009))))

(declare-fun tp!470090 () Bool)

(declare-fun b_and!114263 () Bool)

(assert (=> b!1611758 (= tp!470090 b_and!114263)))

(declare-fun b!1611746 () Bool)

(declare-fun b_free!43307 () Bool)

(declare-fun b_next!44011 () Bool)

(assert (=> b!1611746 (= b_free!43307 (not b_next!44011))))

(declare-fun tp!470091 () Bool)

(declare-fun b_and!114265 () Bool)

(assert (=> b!1611746 (= tp!470091 b_and!114265)))

(declare-fun b_free!43309 () Bool)

(declare-fun b_next!44013 () Bool)

(assert (=> b!1611746 (= b_free!43309 (not b_next!44013))))

(declare-fun tp!470094 () Bool)

(declare-fun b_and!114267 () Bool)

(assert (=> b!1611746 (= tp!470094 b_and!114267)))

(declare-fun b!1611739 () Bool)

(declare-fun e!1033657 () Bool)

(declare-fun e!1033659 () Bool)

(assert (=> b!1611739 (= e!1033657 e!1033659)))

(declare-fun res!718621 () Bool)

(assert (=> b!1611739 (=> (not res!718621) (not e!1033659))))

(declare-datatypes ((C!9020 0))(
  ( (C!9021 (val!5106 Int)) )
))
(declare-datatypes ((List!17651 0))(
  ( (Nil!17581) (Cons!17581 (h!22982 C!9020) (t!147998 List!17651)) )
))
(declare-fun lt!575049 () List!17651)

(declare-fun lt!575043 () List!17651)

(assert (=> b!1611739 (= res!718621 (= lt!575049 lt!575043))))

(declare-fun lt!575055 () List!17651)

(declare-fun lt!575057 () List!17651)

(declare-fun ++!4623 (List!17651 List!17651) List!17651)

(assert (=> b!1611739 (= lt!575043 (++!4623 lt!575055 lt!575057))))

(declare-datatypes ((IArray!11681 0))(
  ( (IArray!11682 (innerList!5898 List!17651)) )
))
(declare-datatypes ((Conc!5838 0))(
  ( (Node!5838 (left!14175 Conc!5838) (right!14505 Conc!5838) (csize!11906 Int) (cheight!6049 Int)) (Leaf!8606 (xs!8666 IArray!11681) (csize!11907 Int)) (Empty!5838) )
))
(declare-datatypes ((BalanceConc!11620 0))(
  ( (BalanceConc!11621 (c!262703 Conc!5838)) )
))
(declare-fun lt!575037 () BalanceConc!11620)

(declare-fun list!6859 (BalanceConc!11620) List!17651)

(assert (=> b!1611739 (= lt!575049 (list!6859 lt!575037))))

(declare-fun lt!575052 () BalanceConc!11620)

(assert (=> b!1611739 (= lt!575057 (list!6859 lt!575052))))

(declare-fun lt!575050 () BalanceConc!11620)

(assert (=> b!1611739 (= lt!575055 (list!6859 lt!575050))))

(declare-datatypes ((List!17652 0))(
  ( (Nil!17582) (Cons!17582 (h!22983 (_ BitVec 16)) (t!147999 List!17652)) )
))
(declare-datatypes ((TokenValue!3185 0))(
  ( (FloatLiteralValue!6370 (text!22740 List!17652)) (TokenValueExt!3184 (__x!11672 Int)) (Broken!15925 (value!97854 List!17652)) (Object!3254) (End!3185) (Def!3185) (Underscore!3185) (Match!3185) (Else!3185) (Error!3185) (Case!3185) (If!3185) (Extends!3185) (Abstract!3185) (Class!3185) (Val!3185) (DelimiterValue!6370 (del!3245 List!17652)) (KeywordValue!3191 (value!97855 List!17652)) (CommentValue!6370 (value!97856 List!17652)) (WhitespaceValue!6370 (value!97857 List!17652)) (IndentationValue!3185 (value!97858 List!17652)) (String!20256) (Int32!3185) (Broken!15926 (value!97859 List!17652)) (Boolean!3186) (Unit!28240) (OperatorValue!3188 (op!3245 List!17652)) (IdentifierValue!6370 (value!97860 List!17652)) (IdentifierValue!6371 (value!97861 List!17652)) (WhitespaceValue!6371 (value!97862 List!17652)) (True!6370) (False!6370) (Broken!15927 (value!97863 List!17652)) (Broken!15928 (value!97864 List!17652)) (True!6371) (RightBrace!3185) (RightBracket!3185) (Colon!3185) (Null!3185) (Comma!3185) (LeftBracket!3185) (False!6371) (LeftBrace!3185) (ImaginaryLiteralValue!3185 (text!22741 List!17652)) (StringLiteralValue!9555 (value!97865 List!17652)) (EOFValue!3185 (value!97866 List!17652)) (IdentValue!3185 (value!97867 List!17652)) (DelimiterValue!6371 (value!97868 List!17652)) (DedentValue!3185 (value!97869 List!17652)) (NewLineValue!3185 (value!97870 List!17652)) (IntegerValue!9555 (value!97871 (_ BitVec 32)) (text!22742 List!17652)) (IntegerValue!9556 (value!97872 Int) (text!22743 List!17652)) (Times!3185) (Or!3185) (Equal!3185) (Minus!3185) (Broken!15929 (value!97873 List!17652)) (And!3185) (Div!3185) (LessEqual!3185) (Mod!3185) (Concat!7608) (Not!3185) (Plus!3185) (SpaceValue!3185 (value!97874 List!17652)) (IntegerValue!9557 (value!97875 Int) (text!22744 List!17652)) (StringLiteralValue!9556 (text!22745 List!17652)) (FloatLiteralValue!6371 (text!22746 List!17652)) (BytesLiteralValue!3185 (value!97876 List!17652)) (CommentValue!6371 (value!97877 List!17652)) (StringLiteralValue!9557 (value!97878 List!17652)) (ErrorTokenValue!3185 (msg!3246 List!17652)) )
))
(declare-datatypes ((Regex!4423 0))(
  ( (ElementMatch!4423 (c!262704 C!9020)) (Concat!7609 (regOne!9358 Regex!4423) (regTwo!9358 Regex!4423)) (EmptyExpr!4423) (Star!4423 (reg!4752 Regex!4423)) (EmptyLang!4423) (Union!4423 (regOne!9359 Regex!4423) (regTwo!9359 Regex!4423)) )
))
(declare-datatypes ((String!20257 0))(
  ( (String!20258 (value!97879 String)) )
))
(declare-datatypes ((TokenValueInjection!6030 0))(
  ( (TokenValueInjection!6031 (toValue!4518 Int) (toChars!4377 Int)) )
))
(declare-datatypes ((Rule!5990 0))(
  ( (Rule!5991 (regex!3095 Regex!4423) (tag!3371 String!20257) (isSeparator!3095 Bool) (transformation!3095 TokenValueInjection!6030)) )
))
(declare-datatypes ((Token!5756 0))(
  ( (Token!5757 (value!97880 TokenValue!3185) (rule!4915 Rule!5990) (size!14146 Int) (originalCharacters!3909 List!17651)) )
))
(declare-datatypes ((List!17653 0))(
  ( (Nil!17583) (Cons!17583 (h!22984 Token!5756) (t!148000 List!17653)) )
))
(declare-fun tokens!457 () List!17653)

(declare-fun charsOf!1744 (Token!5756) BalanceConc!11620)

(assert (=> b!1611739 (= lt!575050 (charsOf!1744 (h!22984 tokens!457)))))

(declare-datatypes ((List!17654 0))(
  ( (Nil!17584) (Cons!17584 (h!22985 Rule!5990) (t!148001 List!17654)) )
))
(declare-fun rules!1846 () List!17654)

(declare-datatypes ((LexerInterface!2724 0))(
  ( (LexerInterfaceExt!2721 (__x!11673 Int)) (Lexer!2722) )
))
(declare-fun thiss!17113 () LexerInterface!2724)

(declare-datatypes ((IArray!11683 0))(
  ( (IArray!11684 (innerList!5899 List!17653)) )
))
(declare-datatypes ((Conc!5839 0))(
  ( (Node!5839 (left!14176 Conc!5839) (right!14506 Conc!5839) (csize!11908 Int) (cheight!6050 Int)) (Leaf!8607 (xs!8667 IArray!11683) (csize!11909 Int)) (Empty!5839) )
))
(declare-datatypes ((BalanceConc!11622 0))(
  ( (BalanceConc!11623 (c!262705 Conc!5839)) )
))
(declare-datatypes ((tuple2!17074 0))(
  ( (tuple2!17075 (_1!9939 BalanceConc!11622) (_2!9939 BalanceConc!11620)) )
))
(declare-fun lt!575047 () tuple2!17074)

(declare-fun lex!1208 (LexerInterface!2724 List!17654 BalanceConc!11620) tuple2!17074)

(assert (=> b!1611739 (= lt!575047 (lex!1208 thiss!17113 rules!1846 lt!575052))))

(declare-fun lt!575039 () BalanceConc!11622)

(declare-fun print!1255 (LexerInterface!2724 BalanceConc!11622) BalanceConc!11620)

(assert (=> b!1611739 (= lt!575052 (print!1255 thiss!17113 lt!575039))))

(declare-fun seqFromList!1939 (List!17653) BalanceConc!11622)

(assert (=> b!1611739 (= lt!575039 (seqFromList!1939 (t!148000 tokens!457)))))

(assert (=> b!1611739 (= lt!575037 (print!1255 thiss!17113 (seqFromList!1939 tokens!457)))))

(declare-fun e!1033666 () Bool)

(declare-fun b!1611740 () Bool)

(declare-fun tp!470093 () Bool)

(declare-fun e!1033658 () Bool)

(declare-fun inv!22999 (Token!5756) Bool)

(assert (=> b!1611740 (= e!1033658 (and (inv!22999 (h!22984 tokens!457)) e!1033666 tp!470093))))

(declare-fun b!1611741 () Bool)

(declare-fun res!718623 () Bool)

(declare-fun e!1033672 () Bool)

(assert (=> b!1611741 (=> (not res!718623) (not e!1033672))))

(declare-fun lt!575042 () List!17651)

(declare-fun head!3298 (List!17651) C!9020)

(assert (=> b!1611741 (= res!718623 (= lt!575042 (Cons!17581 (head!3298 (originalCharacters!3909 (h!22984 (t!148000 tokens!457)))) Nil!17581)))))

(declare-fun res!718622 () Bool)

(assert (=> start!152170 (=> (not res!718622) (not e!1033657))))

(get-info :version)

(assert (=> start!152170 (= res!718622 ((_ is Lexer!2722) thiss!17113))))

(assert (=> start!152170 e!1033657))

(assert (=> start!152170 true))

(declare-fun e!1033663 () Bool)

(assert (=> start!152170 e!1033663))

(assert (=> start!152170 e!1033658))

(declare-fun b!1611742 () Bool)

(declare-fun e!1033668 () Bool)

(assert (=> b!1611742 (= e!1033668 true)))

(declare-datatypes ((tuple2!17076 0))(
  ( (tuple2!17077 (_1!9940 Token!5756) (_2!9940 BalanceConc!11620)) )
))
(declare-datatypes ((Option!3191 0))(
  ( (None!3190) (Some!3190 (v!24155 tuple2!17076)) )
))
(declare-fun lt!575046 () Option!3191)

(declare-fun maxPrefixZipperSequence!619 (LexerInterface!2724 List!17654 BalanceConc!11620) Option!3191)

(declare-fun seqFromList!1940 (List!17651) BalanceConc!11620)

(assert (=> b!1611742 (= lt!575046 (maxPrefixZipperSequence!619 thiss!17113 rules!1846 (seqFromList!1940 (originalCharacters!3909 (h!22984 tokens!457)))))))

(assert (=> b!1611742 e!1033672))

(declare-fun res!718628 () Bool)

(assert (=> b!1611742 (=> (not res!718628) (not e!1033672))))

(assert (=> b!1611742 (= res!718628 (= lt!575055 (originalCharacters!3909 (h!22984 tokens!457))))))

(declare-fun b!1611743 () Bool)

(declare-fun res!718633 () Bool)

(assert (=> b!1611743 (=> (not res!718633) (not e!1033657))))

(declare-fun rulesInvariant!2393 (LexerInterface!2724 List!17654) Bool)

(assert (=> b!1611743 (= res!718633 (rulesInvariant!2393 thiss!17113 rules!1846))))

(declare-fun b!1611744 () Bool)

(declare-fun tp!470092 () Bool)

(declare-fun e!1033661 () Bool)

(declare-fun inv!21 (TokenValue!3185) Bool)

(assert (=> b!1611744 (= e!1033666 (and (inv!21 (value!97880 (h!22984 tokens!457))) e!1033661 tp!470092))))

(declare-fun b!1611745 () Bool)

(declare-fun e!1033660 () Bool)

(declare-fun tp!470098 () Bool)

(assert (=> b!1611745 (= e!1033663 (and e!1033660 tp!470098))))

(declare-fun e!1033669 () Bool)

(assert (=> b!1611746 (= e!1033669 (and tp!470091 tp!470094))))

(declare-fun b!1611747 () Bool)

(declare-fun res!718635 () Bool)

(assert (=> b!1611747 (=> (not res!718635) (not e!1033657))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!417 (LexerInterface!2724 List!17653 List!17654) Bool)

(assert (=> b!1611747 (= res!718635 (tokensListTwoByTwoPredicateSeparableList!417 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1611748 () Bool)

(declare-fun e!1033671 () Bool)

(declare-fun tp!470096 () Bool)

(declare-fun inv!22996 (String!20257) Bool)

(declare-fun inv!23000 (TokenValueInjection!6030) Bool)

(assert (=> b!1611748 (= e!1033661 (and tp!470096 (inv!22996 (tag!3371 (rule!4915 (h!22984 tokens!457)))) (inv!23000 (transformation!3095 (rule!4915 (h!22984 tokens!457)))) e!1033671))))

(declare-fun b!1611749 () Bool)

(declare-fun head!3299 (BalanceConc!11620) C!9020)

(assert (=> b!1611749 (= e!1033672 (= lt!575042 (Cons!17581 (head!3299 lt!575052) Nil!17581)))))

(declare-fun b!1611750 () Bool)

(declare-fun e!1033665 () Bool)

(declare-fun e!1033656 () Bool)

(assert (=> b!1611750 (= e!1033665 e!1033656)))

(declare-fun res!718639 () Bool)

(assert (=> b!1611750 (=> res!718639 e!1033656)))

(declare-fun lt!575056 () List!17653)

(declare-fun lt!575040 () List!17653)

(declare-fun lt!575054 () List!17653)

(assert (=> b!1611750 (= res!718639 (or (not (= lt!575056 lt!575040)) (not (= lt!575040 lt!575054))))))

(declare-fun list!6860 (BalanceConc!11622) List!17653)

(assert (=> b!1611750 (= lt!575040 (list!6860 lt!575039))))

(assert (=> b!1611750 (= lt!575056 lt!575054)))

(declare-fun prepend!599 (BalanceConc!11622 Token!5756) BalanceConc!11622)

(assert (=> b!1611750 (= lt!575054 (list!6860 (prepend!599 (seqFromList!1939 (t!148000 (t!148000 tokens!457))) (h!22984 (t!148000 tokens!457)))))))

(declare-datatypes ((Unit!28241 0))(
  ( (Unit!28242) )
))
(declare-fun lt!575036 () Unit!28241)

(declare-fun seqFromListBHdTlConstructive!172 (Token!5756 List!17653 BalanceConc!11622) Unit!28241)

(assert (=> b!1611750 (= lt!575036 (seqFromListBHdTlConstructive!172 (h!22984 (t!148000 tokens!457)) (t!148000 (t!148000 tokens!457)) (_1!9939 lt!575047)))))

(declare-fun b!1611751 () Bool)

(declare-fun tp!470095 () Bool)

(assert (=> b!1611751 (= e!1033660 (and tp!470095 (inv!22996 (tag!3371 (h!22985 rules!1846))) (inv!23000 (transformation!3095 (h!22985 rules!1846))) e!1033669))))

(declare-fun b!1611752 () Bool)

(declare-fun res!718637 () Bool)

(assert (=> b!1611752 (=> (not res!718637) (not e!1033657))))

(declare-fun isEmpty!10616 (List!17654) Bool)

(assert (=> b!1611752 (= res!718637 (not (isEmpty!10616 rules!1846)))))

(declare-fun b!1611753 () Bool)

(declare-fun res!718631 () Bool)

(assert (=> b!1611753 (=> (not res!718631) (not e!1033672))))

(assert (=> b!1611753 (= res!718631 (= lt!575042 (Cons!17581 (head!3298 lt!575057) Nil!17581)))))

(declare-fun b!1611754 () Bool)

(assert (=> b!1611754 (= e!1033659 (not e!1033665))))

(declare-fun res!718624 () Bool)

(assert (=> b!1611754 (=> res!718624 e!1033665)))

(assert (=> b!1611754 (= res!718624 (not (= lt!575056 (t!148000 tokens!457))))))

(assert (=> b!1611754 (= lt!575056 (list!6860 (_1!9939 lt!575047)))))

(declare-fun lt!575048 () Unit!28241)

(declare-fun theoremInvertabilityWhenTokenListSeparable!169 (LexerInterface!2724 List!17654 List!17653) Unit!28241)

(assert (=> b!1611754 (= lt!575048 (theoremInvertabilityWhenTokenListSeparable!169 thiss!17113 rules!1846 (t!148000 tokens!457)))))

(declare-fun isPrefix!1355 (List!17651 List!17651) Bool)

(assert (=> b!1611754 (isPrefix!1355 lt!575055 lt!575043)))

(declare-fun lt!575041 () Unit!28241)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!880 (List!17651 List!17651) Unit!28241)

(assert (=> b!1611754 (= lt!575041 (lemmaConcatTwoListThenFirstIsPrefix!880 lt!575055 lt!575057))))

(declare-fun b!1611755 () Bool)

(declare-fun res!718638 () Bool)

(assert (=> b!1611755 (=> (not res!718638) (not e!1033657))))

(declare-fun rulesProduceEachTokenIndividuallyList!926 (LexerInterface!2724 List!17654 List!17653) Bool)

(assert (=> b!1611755 (= res!718638 (rulesProduceEachTokenIndividuallyList!926 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1611756 () Bool)

(declare-fun e!1033667 () Bool)

(assert (=> b!1611756 (= e!1033656 e!1033667)))

(declare-fun res!718625 () Bool)

(assert (=> b!1611756 (=> res!718625 e!1033667)))

(declare-fun lt!575060 () List!17651)

(declare-fun lt!575059 () List!17651)

(assert (=> b!1611756 (= res!718625 (or (not (= lt!575059 lt!575060)) (not (= lt!575060 lt!575055)) (not (= lt!575059 lt!575055))))))

(declare-fun printList!839 (LexerInterface!2724 List!17653) List!17651)

(assert (=> b!1611756 (= lt!575060 (printList!839 thiss!17113 (Cons!17583 (h!22984 tokens!457) Nil!17583)))))

(declare-fun lt!575038 () BalanceConc!11620)

(assert (=> b!1611756 (= lt!575059 (list!6859 lt!575038))))

(declare-fun lt!575058 () BalanceConc!11622)

(declare-fun printTailRec!777 (LexerInterface!2724 BalanceConc!11622 Int BalanceConc!11620) BalanceConc!11620)

(assert (=> b!1611756 (= lt!575038 (printTailRec!777 thiss!17113 lt!575058 0 (BalanceConc!11621 Empty!5838)))))

(assert (=> b!1611756 (= lt!575038 (print!1255 thiss!17113 lt!575058))))

(declare-fun singletonSeq!1468 (Token!5756) BalanceConc!11622)

(assert (=> b!1611756 (= lt!575058 (singletonSeq!1468 (h!22984 tokens!457)))))

(declare-datatypes ((tuple2!17078 0))(
  ( (tuple2!17079 (_1!9941 Token!5756) (_2!9941 List!17651)) )
))
(declare-datatypes ((Option!3192 0))(
  ( (None!3191) (Some!3191 (v!24156 tuple2!17078)) )
))
(declare-fun lt!575051 () Option!3192)

(declare-fun maxPrefix!1288 (LexerInterface!2724 List!17654 List!17651) Option!3192)

(assert (=> b!1611756 (= lt!575051 (maxPrefix!1288 thiss!17113 rules!1846 lt!575049))))

(declare-fun b!1611757 () Bool)

(declare-fun res!718627 () Bool)

(assert (=> b!1611757 (=> res!718627 e!1033667)))

(declare-fun rulesProduceIndividualToken!1376 (LexerInterface!2724 List!17654 Token!5756) Bool)

(assert (=> b!1611757 (= res!718627 (not (rulesProduceIndividualToken!1376 thiss!17113 rules!1846 (h!22984 tokens!457))))))

(assert (=> b!1611758 (= e!1033671 (and tp!470097 tp!470090))))

(declare-fun b!1611759 () Bool)

(declare-fun res!718629 () Bool)

(assert (=> b!1611759 (=> res!718629 e!1033656)))

(declare-fun separableTokensPredicate!666 (LexerInterface!2724 Token!5756 Token!5756 List!17654) Bool)

(assert (=> b!1611759 (= res!718629 (not (separableTokensPredicate!666 thiss!17113 (h!22984 tokens!457) (h!22984 (t!148000 tokens!457)) rules!1846)))))

(declare-fun b!1611760 () Bool)

(declare-fun e!1033655 () Bool)

(assert (=> b!1611760 (= e!1033655 e!1033668)))

(declare-fun res!718636 () Bool)

(assert (=> b!1611760 (=> res!718636 e!1033668)))

(declare-fun lt!575053 () Regex!4423)

(declare-fun prefixMatch!358 (Regex!4423 List!17651) Bool)

(assert (=> b!1611760 (= res!718636 (prefixMatch!358 lt!575053 (++!4623 lt!575055 lt!575042)))))

(declare-fun lt!575045 () BalanceConc!11620)

(assert (=> b!1611760 (= lt!575042 (list!6859 lt!575045))))

(declare-fun b!1611761 () Bool)

(declare-fun e!1033654 () Bool)

(assert (=> b!1611761 (= e!1033654 e!1033655)))

(declare-fun res!718630 () Bool)

(assert (=> b!1611761 (=> res!718630 e!1033655)))

(declare-fun prefixMatchZipperSequence!461 (Regex!4423 BalanceConc!11620) Bool)

(declare-fun ++!4624 (BalanceConc!11620 BalanceConc!11620) BalanceConc!11620)

(assert (=> b!1611761 (= res!718630 (prefixMatchZipperSequence!461 lt!575053 (++!4624 lt!575050 lt!575045)))))

(declare-fun singletonSeq!1469 (C!9020) BalanceConc!11620)

(declare-fun apply!4394 (BalanceConc!11620 Int) C!9020)

(assert (=> b!1611761 (= lt!575045 (singletonSeq!1469 (apply!4394 (charsOf!1744 (h!22984 (t!148000 tokens!457))) 0)))))

(declare-fun rulesRegex!485 (LexerInterface!2724 List!17654) Regex!4423)

(assert (=> b!1611761 (= lt!575053 (rulesRegex!485 thiss!17113 rules!1846))))

(declare-fun b!1611762 () Bool)

(assert (=> b!1611762 (= e!1033667 e!1033654)))

(declare-fun res!718634 () Bool)

(assert (=> b!1611762 (=> res!718634 e!1033654)))

(declare-fun isDefined!2559 (Option!3192) Bool)

(assert (=> b!1611762 (= res!718634 (not (isDefined!2559 lt!575051)))))

(declare-fun lt!575044 () Unit!28241)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!298 (LexerInterface!2724 List!17654 List!17651 List!17651) Unit!28241)

(assert (=> b!1611762 (= lt!575044 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!298 thiss!17113 rules!1846 lt!575055 lt!575057))))

(declare-fun b!1611763 () Bool)

(declare-fun res!718626 () Bool)

(assert (=> b!1611763 (=> res!718626 e!1033667)))

(declare-fun isEmpty!10617 (BalanceConc!11622) Bool)

(assert (=> b!1611763 (= res!718626 (isEmpty!10617 (_1!9939 (lex!1208 thiss!17113 rules!1846 (seqFromList!1940 lt!575055)))))))

(declare-fun b!1611764 () Bool)

(declare-fun res!718632 () Bool)

(assert (=> b!1611764 (=> (not res!718632) (not e!1033657))))

(assert (=> b!1611764 (= res!718632 (and (not ((_ is Nil!17583) tokens!457)) (not ((_ is Nil!17583) (t!148000 tokens!457)))))))

(assert (= (and start!152170 res!718622) b!1611752))

(assert (= (and b!1611752 res!718637) b!1611743))

(assert (= (and b!1611743 res!718633) b!1611755))

(assert (= (and b!1611755 res!718638) b!1611747))

(assert (= (and b!1611747 res!718635) b!1611764))

(assert (= (and b!1611764 res!718632) b!1611739))

(assert (= (and b!1611739 res!718621) b!1611754))

(assert (= (and b!1611754 (not res!718624)) b!1611750))

(assert (= (and b!1611750 (not res!718639)) b!1611759))

(assert (= (and b!1611759 (not res!718629)) b!1611756))

(assert (= (and b!1611756 (not res!718625)) b!1611757))

(assert (= (and b!1611757 (not res!718627)) b!1611763))

(assert (= (and b!1611763 (not res!718626)) b!1611762))

(assert (= (and b!1611762 (not res!718634)) b!1611761))

(assert (= (and b!1611761 (not res!718630)) b!1611760))

(assert (= (and b!1611760 (not res!718636)) b!1611742))

(assert (= (and b!1611742 res!718628) b!1611741))

(assert (= (and b!1611741 res!718623) b!1611753))

(assert (= (and b!1611753 res!718631) b!1611749))

(assert (= b!1611751 b!1611746))

(assert (= b!1611745 b!1611751))

(assert (= (and start!152170 ((_ is Cons!17584) rules!1846)) b!1611745))

(assert (= b!1611748 b!1611758))

(assert (= b!1611744 b!1611748))

(assert (= b!1611740 b!1611744))

(assert (= (and start!152170 ((_ is Cons!17583) tokens!457)) b!1611740))

(declare-fun m!1928861 () Bool)

(assert (=> b!1611754 m!1928861))

(declare-fun m!1928863 () Bool)

(assert (=> b!1611754 m!1928863))

(declare-fun m!1928865 () Bool)

(assert (=> b!1611754 m!1928865))

(declare-fun m!1928867 () Bool)

(assert (=> b!1611754 m!1928867))

(declare-fun m!1928869 () Bool)

(assert (=> b!1611757 m!1928869))

(declare-fun m!1928871 () Bool)

(assert (=> b!1611743 m!1928871))

(declare-fun m!1928873 () Bool)

(assert (=> b!1611742 m!1928873))

(assert (=> b!1611742 m!1928873))

(declare-fun m!1928875 () Bool)

(assert (=> b!1611742 m!1928875))

(declare-fun m!1928877 () Bool)

(assert (=> b!1611744 m!1928877))

(declare-fun m!1928879 () Bool)

(assert (=> b!1611759 m!1928879))

(declare-fun m!1928881 () Bool)

(assert (=> b!1611741 m!1928881))

(declare-fun m!1928883 () Bool)

(assert (=> b!1611752 m!1928883))

(declare-fun m!1928885 () Bool)

(assert (=> b!1611740 m!1928885))

(declare-fun m!1928887 () Bool)

(assert (=> b!1611753 m!1928887))

(declare-fun m!1928889 () Bool)

(assert (=> b!1611747 m!1928889))

(declare-fun m!1928891 () Bool)

(assert (=> b!1611755 m!1928891))

(declare-fun m!1928893 () Bool)

(assert (=> b!1611749 m!1928893))

(declare-fun m!1928895 () Bool)

(assert (=> b!1611760 m!1928895))

(assert (=> b!1611760 m!1928895))

(declare-fun m!1928897 () Bool)

(assert (=> b!1611760 m!1928897))

(declare-fun m!1928899 () Bool)

(assert (=> b!1611760 m!1928899))

(declare-fun m!1928901 () Bool)

(assert (=> b!1611748 m!1928901))

(declare-fun m!1928903 () Bool)

(assert (=> b!1611748 m!1928903))

(declare-fun m!1928905 () Bool)

(assert (=> b!1611761 m!1928905))

(declare-fun m!1928907 () Bool)

(assert (=> b!1611761 m!1928907))

(declare-fun m!1928909 () Bool)

(assert (=> b!1611761 m!1928909))

(declare-fun m!1928911 () Bool)

(assert (=> b!1611761 m!1928911))

(assert (=> b!1611761 m!1928907))

(declare-fun m!1928913 () Bool)

(assert (=> b!1611761 m!1928913))

(declare-fun m!1928915 () Bool)

(assert (=> b!1611761 m!1928915))

(assert (=> b!1611761 m!1928909))

(assert (=> b!1611761 m!1928915))

(declare-fun m!1928917 () Bool)

(assert (=> b!1611763 m!1928917))

(assert (=> b!1611763 m!1928917))

(declare-fun m!1928919 () Bool)

(assert (=> b!1611763 m!1928919))

(declare-fun m!1928921 () Bool)

(assert (=> b!1611763 m!1928921))

(declare-fun m!1928923 () Bool)

(assert (=> b!1611762 m!1928923))

(declare-fun m!1928925 () Bool)

(assert (=> b!1611762 m!1928925))

(declare-fun m!1928927 () Bool)

(assert (=> b!1611756 m!1928927))

(declare-fun m!1928929 () Bool)

(assert (=> b!1611756 m!1928929))

(declare-fun m!1928931 () Bool)

(assert (=> b!1611756 m!1928931))

(declare-fun m!1928933 () Bool)

(assert (=> b!1611756 m!1928933))

(declare-fun m!1928935 () Bool)

(assert (=> b!1611756 m!1928935))

(declare-fun m!1928937 () Bool)

(assert (=> b!1611756 m!1928937))

(declare-fun m!1928939 () Bool)

(assert (=> b!1611750 m!1928939))

(declare-fun m!1928941 () Bool)

(assert (=> b!1611750 m!1928941))

(declare-fun m!1928943 () Bool)

(assert (=> b!1611750 m!1928943))

(declare-fun m!1928945 () Bool)

(assert (=> b!1611750 m!1928945))

(declare-fun m!1928947 () Bool)

(assert (=> b!1611750 m!1928947))

(assert (=> b!1611750 m!1928941))

(assert (=> b!1611750 m!1928945))

(declare-fun m!1928949 () Bool)

(assert (=> b!1611739 m!1928949))

(declare-fun m!1928951 () Bool)

(assert (=> b!1611739 m!1928951))

(declare-fun m!1928953 () Bool)

(assert (=> b!1611739 m!1928953))

(declare-fun m!1928955 () Bool)

(assert (=> b!1611739 m!1928955))

(declare-fun m!1928957 () Bool)

(assert (=> b!1611739 m!1928957))

(declare-fun m!1928959 () Bool)

(assert (=> b!1611739 m!1928959))

(declare-fun m!1928961 () Bool)

(assert (=> b!1611739 m!1928961))

(declare-fun m!1928963 () Bool)

(assert (=> b!1611739 m!1928963))

(declare-fun m!1928965 () Bool)

(assert (=> b!1611739 m!1928965))

(assert (=> b!1611739 m!1928959))

(declare-fun m!1928967 () Bool)

(assert (=> b!1611739 m!1928967))

(declare-fun m!1928969 () Bool)

(assert (=> b!1611751 m!1928969))

(declare-fun m!1928971 () Bool)

(assert (=> b!1611751 m!1928971))

(check-sat b_and!114265 (not b!1611763) (not b!1611754) b_and!114263 (not b!1611750) (not b!1611762) (not b!1611759) (not b!1611752) (not b!1611745) (not b!1611741) (not b!1611761) (not b!1611744) (not b!1611743) (not b!1611753) (not b!1611739) (not b!1611756) (not b!1611747) (not b!1611742) (not b!1611740) (not b!1611751) (not b!1611748) (not b!1611760) (not b_next!44007) (not b_next!44009) (not b_next!44011) (not b!1611749) (not b!1611755) (not b_next!44013) b_and!114261 b_and!114267 (not b!1611757))
(check-sat b_and!114265 b_and!114263 (not b_next!44013) (not b_next!44007) (not b_next!44009) (not b_next!44011) b_and!114261 b_and!114267)
