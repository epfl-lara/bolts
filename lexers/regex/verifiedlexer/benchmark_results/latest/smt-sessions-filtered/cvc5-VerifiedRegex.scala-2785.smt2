; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!153924 () Bool)

(assert start!153924)

(declare-fun b!1622164 () Bool)

(declare-fun b_free!43727 () Bool)

(declare-fun b_next!44431 () Bool)

(assert (=> b!1622164 (= b_free!43727 (not b_next!44431))))

(declare-fun tp!472087 () Bool)

(declare-fun b_and!115053 () Bool)

(assert (=> b!1622164 (= tp!472087 b_and!115053)))

(declare-fun b_free!43729 () Bool)

(declare-fun b_next!44433 () Bool)

(assert (=> b!1622164 (= b_free!43729 (not b_next!44433))))

(declare-fun tp!472080 () Bool)

(declare-fun b_and!115055 () Bool)

(assert (=> b!1622164 (= tp!472080 b_and!115055)))

(declare-fun b!1622160 () Bool)

(declare-fun b_free!43731 () Bool)

(declare-fun b_next!44435 () Bool)

(assert (=> b!1622160 (= b_free!43731 (not b_next!44435))))

(declare-fun tp!472081 () Bool)

(declare-fun b_and!115057 () Bool)

(assert (=> b!1622160 (= tp!472081 b_and!115057)))

(declare-fun b_free!43733 () Bool)

(declare-fun b_next!44437 () Bool)

(assert (=> b!1622160 (= b_free!43733 (not b_next!44437))))

(declare-fun tp!472085 () Bool)

(declare-fun b_and!115059 () Bool)

(assert (=> b!1622160 (= tp!472085 b_and!115059)))

(declare-fun b!1622146 () Bool)

(declare-fun tp!472083 () Bool)

(declare-fun e!1040403 () Bool)

(declare-fun e!1040417 () Bool)

(declare-datatypes ((List!17839 0))(
  ( (Nil!17769) (Cons!17769 (h!23170 (_ BitVec 16)) (t!148804 List!17839)) )
))
(declare-datatypes ((TokenValue!3220 0))(
  ( (FloatLiteralValue!6440 (text!22985 List!17839)) (TokenValueExt!3219 (__x!11742 Int)) (Broken!16100 (value!98853 List!17839)) (Object!3289) (End!3220) (Def!3220) (Underscore!3220) (Match!3220) (Else!3220) (Error!3220) (Case!3220) (If!3220) (Extends!3220) (Abstract!3220) (Class!3220) (Val!3220) (DelimiterValue!6440 (del!3280 List!17839)) (KeywordValue!3226 (value!98854 List!17839)) (CommentValue!6440 (value!98855 List!17839)) (WhitespaceValue!6440 (value!98856 List!17839)) (IndentationValue!3220 (value!98857 List!17839)) (String!20433) (Int32!3220) (Broken!16101 (value!98858 List!17839)) (Boolean!3221) (Unit!28725) (OperatorValue!3223 (op!3280 List!17839)) (IdentifierValue!6440 (value!98859 List!17839)) (IdentifierValue!6441 (value!98860 List!17839)) (WhitespaceValue!6441 (value!98861 List!17839)) (True!6440) (False!6440) (Broken!16102 (value!98862 List!17839)) (Broken!16103 (value!98863 List!17839)) (True!6441) (RightBrace!3220) (RightBracket!3220) (Colon!3220) (Null!3220) (Comma!3220) (LeftBracket!3220) (False!6441) (LeftBrace!3220) (ImaginaryLiteralValue!3220 (text!22986 List!17839)) (StringLiteralValue!9660 (value!98864 List!17839)) (EOFValue!3220 (value!98865 List!17839)) (IdentValue!3220 (value!98866 List!17839)) (DelimiterValue!6441 (value!98867 List!17839)) (DedentValue!3220 (value!98868 List!17839)) (NewLineValue!3220 (value!98869 List!17839)) (IntegerValue!9660 (value!98870 (_ BitVec 32)) (text!22987 List!17839)) (IntegerValue!9661 (value!98871 Int) (text!22988 List!17839)) (Times!3220) (Or!3220) (Equal!3220) (Minus!3220) (Broken!16104 (value!98872 List!17839)) (And!3220) (Div!3220) (LessEqual!3220) (Mod!3220) (Concat!7678) (Not!3220) (Plus!3220) (SpaceValue!3220 (value!98873 List!17839)) (IntegerValue!9662 (value!98874 Int) (text!22989 List!17839)) (StringLiteralValue!9661 (text!22990 List!17839)) (FloatLiteralValue!6441 (text!22991 List!17839)) (BytesLiteralValue!3220 (value!98875 List!17839)) (CommentValue!6441 (value!98876 List!17839)) (StringLiteralValue!9662 (value!98877 List!17839)) (ErrorTokenValue!3220 (msg!3281 List!17839)) )
))
(declare-datatypes ((C!9090 0))(
  ( (C!9091 (val!5141 Int)) )
))
(declare-datatypes ((List!17840 0))(
  ( (Nil!17770) (Cons!17770 (h!23171 C!9090) (t!148805 List!17840)) )
))
(declare-datatypes ((IArray!11821 0))(
  ( (IArray!11822 (innerList!5968 List!17840)) )
))
(declare-datatypes ((Conc!5908 0))(
  ( (Node!5908 (left!14295 Conc!5908) (right!14625 Conc!5908) (csize!12046 Int) (cheight!6119 Int)) (Leaf!8694 (xs!8740 IArray!11821) (csize!12047 Int)) (Empty!5908) )
))
(declare-datatypes ((BalanceConc!11760 0))(
  ( (BalanceConc!11761 (c!264129 Conc!5908)) )
))
(declare-datatypes ((Regex!4458 0))(
  ( (ElementMatch!4458 (c!264130 C!9090)) (Concat!7679 (regOne!9428 Regex!4458) (regTwo!9428 Regex!4458)) (EmptyExpr!4458) (Star!4458 (reg!4787 Regex!4458)) (EmptyLang!4458) (Union!4458 (regOne!9429 Regex!4458) (regTwo!9429 Regex!4458)) )
))
(declare-datatypes ((String!20434 0))(
  ( (String!20435 (value!98878 String)) )
))
(declare-datatypes ((TokenValueInjection!6100 0))(
  ( (TokenValueInjection!6101 (toValue!4557 Int) (toChars!4416 Int)) )
))
(declare-datatypes ((Rule!6060 0))(
  ( (Rule!6061 (regex!3130 Regex!4458) (tag!3408 String!20434) (isSeparator!3130 Bool) (transformation!3130 TokenValueInjection!6100)) )
))
(declare-datatypes ((Token!5826 0))(
  ( (Token!5827 (value!98879 TokenValue!3220) (rule!4956 Rule!6060) (size!14239 Int) (originalCharacters!3944 List!17840)) )
))
(declare-datatypes ((List!17841 0))(
  ( (Nil!17771) (Cons!17771 (h!23172 Token!5826) (t!148806 List!17841)) )
))
(declare-fun tokens!457 () List!17841)

(declare-fun inv!23161 (Token!5826) Bool)

(assert (=> b!1622146 (= e!1040403 (and (inv!23161 (h!23172 tokens!457)) e!1040417 tp!472083))))

(declare-fun b!1622147 () Bool)

(declare-fun e!1040422 () Bool)

(declare-fun lt!584245 () List!17840)

(declare-fun matchR!1957 (Regex!4458 List!17840) Bool)

(assert (=> b!1622147 (= e!1040422 (matchR!1957 (regex!3130 (rule!4956 (h!23172 tokens!457))) lt!584245))))

(declare-fun b!1622148 () Bool)

(declare-fun e!1040421 () Bool)

(declare-fun e!1040409 () Bool)

(declare-fun tp!472082 () Bool)

(assert (=> b!1622148 (= e!1040421 (and e!1040409 tp!472082))))

(declare-fun b!1622149 () Bool)

(declare-fun e!1040419 () Bool)

(declare-fun e!1040415 () Bool)

(assert (=> b!1622149 (= e!1040419 e!1040415)))

(declare-fun res!724663 () Bool)

(assert (=> b!1622149 (=> res!724663 e!1040415)))

(declare-fun lt!584231 () List!17841)

(declare-fun lt!584252 () List!17841)

(declare-fun lt!584240 () List!17841)

(assert (=> b!1622149 (= res!724663 (or (not (= lt!584231 lt!584252)) (not (= lt!584252 lt!584240))))))

(declare-datatypes ((IArray!11823 0))(
  ( (IArray!11824 (innerList!5969 List!17841)) )
))
(declare-datatypes ((Conc!5909 0))(
  ( (Node!5909 (left!14296 Conc!5909) (right!14626 Conc!5909) (csize!12048 Int) (cheight!6120 Int)) (Leaf!8695 (xs!8741 IArray!11823) (csize!12049 Int)) (Empty!5909) )
))
(declare-datatypes ((BalanceConc!11762 0))(
  ( (BalanceConc!11763 (c!264131 Conc!5909)) )
))
(declare-fun lt!584227 () BalanceConc!11762)

(declare-fun list!6965 (BalanceConc!11762) List!17841)

(assert (=> b!1622149 (= lt!584252 (list!6965 lt!584227))))

(assert (=> b!1622149 (= lt!584231 lt!584240)))

(declare-fun prepend!650 (BalanceConc!11762 Token!5826) BalanceConc!11762)

(declare-fun seqFromList!2009 (List!17841) BalanceConc!11762)

(assert (=> b!1622149 (= lt!584240 (list!6965 (prepend!650 (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (h!23172 (t!148806 tokens!457)))))))

(declare-datatypes ((Unit!28726 0))(
  ( (Unit!28727) )
))
(declare-fun lt!584243 () Unit!28726)

(declare-datatypes ((tuple2!17324 0))(
  ( (tuple2!17325 (_1!10064 BalanceConc!11762) (_2!10064 BalanceConc!11760)) )
))
(declare-fun lt!584235 () tuple2!17324)

(declare-fun seqFromListBHdTlConstructive!207 (Token!5826 List!17841 BalanceConc!11762) Unit!28726)

(assert (=> b!1622149 (= lt!584243 (seqFromListBHdTlConstructive!207 (h!23172 (t!148806 tokens!457)) (t!148806 (t!148806 tokens!457)) (_1!10064 lt!584235)))))

(declare-fun b!1622150 () Bool)

(declare-fun e!1040401 () Bool)

(declare-fun e!1040408 () Bool)

(assert (=> b!1622150 (= e!1040401 e!1040408)))

(declare-fun res!724668 () Bool)

(assert (=> b!1622150 (=> (not res!724668) (not e!1040408))))

(declare-fun lt!584253 () List!17840)

(declare-fun lt!584236 () List!17840)

(assert (=> b!1622150 (= res!724668 (= lt!584253 lt!584236))))

(declare-fun lt!584247 () List!17840)

(declare-fun ++!4713 (List!17840 List!17840) List!17840)

(assert (=> b!1622150 (= lt!584236 (++!4713 lt!584245 lt!584247))))

(declare-fun lt!584238 () BalanceConc!11760)

(declare-fun list!6966 (BalanceConc!11760) List!17840)

(assert (=> b!1622150 (= lt!584253 (list!6966 lt!584238))))

(declare-fun lt!584233 () BalanceConc!11760)

(assert (=> b!1622150 (= lt!584247 (list!6966 lt!584233))))

(declare-fun lt!584250 () BalanceConc!11760)

(assert (=> b!1622150 (= lt!584245 (list!6966 lt!584250))))

(declare-fun charsOf!1779 (Token!5826) BalanceConc!11760)

(assert (=> b!1622150 (= lt!584250 (charsOf!1779 (h!23172 tokens!457)))))

(declare-datatypes ((List!17842 0))(
  ( (Nil!17772) (Cons!17772 (h!23173 Rule!6060) (t!148807 List!17842)) )
))
(declare-fun rules!1846 () List!17842)

(declare-datatypes ((LexerInterface!2759 0))(
  ( (LexerInterfaceExt!2756 (__x!11743 Int)) (Lexer!2757) )
))
(declare-fun thiss!17113 () LexerInterface!2759)

(declare-fun lex!1243 (LexerInterface!2759 List!17842 BalanceConc!11760) tuple2!17324)

(assert (=> b!1622150 (= lt!584235 (lex!1243 thiss!17113 rules!1846 lt!584233))))

(declare-fun print!1290 (LexerInterface!2759 BalanceConc!11762) BalanceConc!11760)

(assert (=> b!1622150 (= lt!584233 (print!1290 thiss!17113 lt!584227))))

(assert (=> b!1622150 (= lt!584227 (seqFromList!2009 (t!148806 tokens!457)))))

(assert (=> b!1622150 (= lt!584238 (print!1290 thiss!17113 (seqFromList!2009 tokens!457)))))

(declare-fun b!1622151 () Bool)

(declare-fun res!724655 () Bool)

(assert (=> b!1622151 (=> (not res!724655) (not e!1040401))))

(declare-fun isEmpty!10794 (List!17842) Bool)

(assert (=> b!1622151 (= res!724655 (not (isEmpty!10794 rules!1846)))))

(declare-fun b!1622152 () Bool)

(declare-fun e!1040406 () Bool)

(declare-fun e!1040404 () Bool)

(assert (=> b!1622152 (= e!1040406 e!1040404)))

(declare-fun res!724666 () Bool)

(assert (=> b!1622152 (=> res!724666 e!1040404)))

(declare-fun lt!584249 () List!17840)

(declare-fun lt!584242 () Regex!4458)

(declare-fun prefixMatch!393 (Regex!4458 List!17840) Bool)

(assert (=> b!1622152 (= res!724666 (prefixMatch!393 lt!584242 (++!4713 lt!584245 lt!584249)))))

(declare-fun lt!584230 () BalanceConc!11760)

(assert (=> b!1622152 (= lt!584249 (list!6966 lt!584230))))

(declare-fun b!1622153 () Bool)

(declare-fun e!1040407 () Bool)

(declare-fun e!1040414 () Bool)

(assert (=> b!1622153 (= e!1040407 e!1040414)))

(declare-fun res!724647 () Bool)

(assert (=> b!1622153 (=> res!724647 e!1040414)))

(declare-fun lt!584239 () List!17840)

(assert (=> b!1622153 (= res!724647 (prefixMatch!393 lt!584242 (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239)))))

(assert (=> b!1622153 e!1040422))

(declare-fun res!724651 () Bool)

(assert (=> b!1622153 (=> (not res!724651) (not e!1040422))))

(declare-datatypes ((tuple2!17326 0))(
  ( (tuple2!17327 (_1!10065 Token!5826) (_2!10065 List!17840)) )
))
(declare-fun lt!584228 () tuple2!17326)

(assert (=> b!1622153 (= res!724651 (= (_1!10065 lt!584228) (h!23172 tokens!457)))))

(declare-datatypes ((Option!3277 0))(
  ( (None!3276) (Some!3276 (v!24293 tuple2!17326)) )
))
(declare-fun lt!584246 () Option!3277)

(declare-fun get!5112 (Option!3277) tuple2!17326)

(assert (=> b!1622153 (= lt!584228 (get!5112 lt!584246))))

(declare-fun isDefined!2644 (Option!3277) Bool)

(assert (=> b!1622153 (isDefined!2644 lt!584246)))

(declare-fun maxPrefix!1323 (LexerInterface!2759 List!17842 List!17840) Option!3277)

(assert (=> b!1622153 (= lt!584246 (maxPrefix!1323 thiss!17113 rules!1846 lt!584245))))

(assert (=> b!1622153 (isDefined!2644 (maxPrefix!1323 thiss!17113 rules!1846 (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun b!1622154 () Bool)

(declare-fun res!724659 () Bool)

(assert (=> b!1622154 (=> (not res!724659) (not e!1040401))))

(declare-fun rulesInvariant!2428 (LexerInterface!2759 List!17842) Bool)

(assert (=> b!1622154 (= res!724659 (rulesInvariant!2428 thiss!17113 rules!1846))))

(declare-fun b!1622155 () Bool)

(declare-fun tp!472086 () Bool)

(declare-fun e!1040411 () Bool)

(declare-fun e!1040416 () Bool)

(declare-fun inv!23158 (String!20434) Bool)

(declare-fun inv!23162 (TokenValueInjection!6100) Bool)

(assert (=> b!1622155 (= e!1040411 (and tp!472086 (inv!23158 (tag!3408 (rule!4956 (h!23172 tokens!457)))) (inv!23162 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) e!1040416))))

(declare-fun b!1622156 () Bool)

(assert (=> b!1622156 (= e!1040408 (not e!1040419))))

(declare-fun res!724660 () Bool)

(assert (=> b!1622156 (=> res!724660 e!1040419)))

(assert (=> b!1622156 (= res!724660 (not (= lt!584231 (t!148806 tokens!457))))))

(assert (=> b!1622156 (= lt!584231 (list!6965 (_1!10064 lt!584235)))))

(declare-fun lt!584244 () Unit!28726)

(declare-fun theoremInvertabilityWhenTokenListSeparable!204 (LexerInterface!2759 List!17842 List!17841) Unit!28726)

(assert (=> b!1622156 (= lt!584244 (theoremInvertabilityWhenTokenListSeparable!204 thiss!17113 rules!1846 (t!148806 tokens!457)))))

(declare-fun isPrefix!1390 (List!17840 List!17840) Bool)

(assert (=> b!1622156 (isPrefix!1390 lt!584245 lt!584236)))

(declare-fun lt!584234 () Unit!28726)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!915 (List!17840 List!17840) Unit!28726)

(assert (=> b!1622156 (= lt!584234 (lemmaConcatTwoListThenFirstIsPrefix!915 lt!584245 lt!584247))))

(declare-fun b!1622157 () Bool)

(declare-fun res!724657 () Bool)

(assert (=> b!1622157 (=> (not res!724657) (not e!1040401))))

(declare-fun rulesProduceEachTokenIndividuallyList!961 (LexerInterface!2759 List!17842 List!17841) Bool)

(assert (=> b!1622157 (= res!724657 (rulesProduceEachTokenIndividuallyList!961 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!472084 () Bool)

(declare-fun b!1622158 () Bool)

(declare-fun e!1040410 () Bool)

(assert (=> b!1622158 (= e!1040409 (and tp!472084 (inv!23158 (tag!3408 (h!23173 rules!1846))) (inv!23162 (transformation!3130 (h!23173 rules!1846))) e!1040410))))

(declare-fun b!1622159 () Bool)

(declare-fun res!724662 () Bool)

(assert (=> b!1622159 (=> (not res!724662) (not e!1040401))))

(assert (=> b!1622159 (= res!724662 (and (not (is-Nil!17771 tokens!457)) (not (is-Nil!17771 (t!148806 tokens!457)))))))

(assert (=> b!1622160 (= e!1040410 (and tp!472081 tp!472085))))

(declare-fun b!1622161 () Bool)

(declare-fun res!724661 () Bool)

(declare-fun e!1040418 () Bool)

(assert (=> b!1622161 (=> (not res!724661) (not e!1040418))))

(declare-fun head!3402 (List!17840) C!9090)

(assert (=> b!1622161 (= res!724661 (= lt!584249 (Cons!17770 (head!3402 (originalCharacters!3944 (h!23172 (t!148806 tokens!457)))) Nil!17770)))))

(declare-fun b!1622145 () Bool)

(declare-fun e!1040405 () Bool)

(assert (=> b!1622145 (= e!1040415 e!1040405)))

(declare-fun res!724667 () Bool)

(assert (=> b!1622145 (=> res!724667 e!1040405)))

(declare-fun lt!584237 () List!17840)

(declare-fun lt!584248 () List!17840)

(assert (=> b!1622145 (= res!724667 (or (not (= lt!584237 lt!584248)) (not (= lt!584248 lt!584245)) (not (= lt!584237 lt!584245))))))

(declare-fun printList!874 (LexerInterface!2759 List!17841) List!17840)

(assert (=> b!1622145 (= lt!584248 (printList!874 thiss!17113 (Cons!17771 (h!23172 tokens!457) Nil!17771)))))

(declare-fun lt!584251 () BalanceConc!11760)

(assert (=> b!1622145 (= lt!584237 (list!6966 lt!584251))))

(declare-fun lt!584232 () BalanceConc!11762)

(declare-fun printTailRec!812 (LexerInterface!2759 BalanceConc!11762 Int BalanceConc!11760) BalanceConc!11760)

(assert (=> b!1622145 (= lt!584251 (printTailRec!812 thiss!17113 lt!584232 0 (BalanceConc!11761 Empty!5908)))))

(assert (=> b!1622145 (= lt!584251 (print!1290 thiss!17113 lt!584232))))

(declare-fun singletonSeq!1538 (Token!5826) BalanceConc!11762)

(assert (=> b!1622145 (= lt!584232 (singletonSeq!1538 (h!23172 tokens!457)))))

(declare-fun lt!584241 () Option!3277)

(assert (=> b!1622145 (= lt!584241 (maxPrefix!1323 thiss!17113 rules!1846 lt!584253))))

(declare-fun res!724648 () Bool)

(assert (=> start!153924 (=> (not res!724648) (not e!1040401))))

(assert (=> start!153924 (= res!724648 (is-Lexer!2757 thiss!17113))))

(assert (=> start!153924 e!1040401))

(assert (=> start!153924 true))

(assert (=> start!153924 e!1040421))

(assert (=> start!153924 e!1040403))

(declare-fun b!1622162 () Bool)

(declare-fun res!724665 () Bool)

(assert (=> b!1622162 (=> res!724665 e!1040405)))

(declare-fun rulesProduceIndividualToken!1411 (LexerInterface!2759 List!17842 Token!5826) Bool)

(assert (=> b!1622162 (= res!724665 (not (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 tokens!457))))))

(declare-fun b!1622163 () Bool)

(declare-fun res!724652 () Bool)

(assert (=> b!1622163 (=> (not res!724652) (not e!1040422))))

(declare-fun isEmpty!10795 (List!17840) Bool)

(assert (=> b!1622163 (= res!724652 (isEmpty!10795 (_2!10065 lt!584228)))))

(assert (=> b!1622164 (= e!1040416 (and tp!472087 tp!472080))))

(declare-fun b!1622165 () Bool)

(declare-fun res!724656 () Bool)

(assert (=> b!1622165 (=> res!724656 e!1040405)))

(declare-fun isEmpty!10796 (BalanceConc!11762) Bool)

(declare-fun seqFromList!2010 (List!17840) BalanceConc!11760)

(assert (=> b!1622165 (= res!724656 (isEmpty!10796 (_1!10064 (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245)))))))

(declare-fun b!1622166 () Bool)

(assert (=> b!1622166 (= e!1040404 e!1040407)))

(declare-fun res!724653 () Bool)

(assert (=> b!1622166 (=> res!724653 e!1040407)))

(declare-datatypes ((tuple2!17328 0))(
  ( (tuple2!17329 (_1!10066 Token!5826) (_2!10066 BalanceConc!11760)) )
))
(declare-datatypes ((Option!3278 0))(
  ( (None!3277) (Some!3277 (v!24294 tuple2!17328)) )
))
(declare-fun isDefined!2645 (Option!3278) Bool)

(declare-fun maxPrefixZipperSequence!654 (LexerInterface!2759 List!17842 BalanceConc!11760) Option!3278)

(assert (=> b!1622166 (= res!724653 (not (isDefined!2645 (maxPrefixZipperSequence!654 thiss!17113 rules!1846 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))

(assert (=> b!1622166 (= lt!584249 lt!584239)))

(declare-fun head!3403 (BalanceConc!11760) C!9090)

(assert (=> b!1622166 (= lt!584239 (Cons!17770 (head!3403 lt!584233) Nil!17770))))

(assert (=> b!1622166 e!1040418))

(declare-fun res!724658 () Bool)

(assert (=> b!1622166 (=> (not res!724658) (not e!1040418))))

(assert (=> b!1622166 (= res!724658 (= lt!584245 (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun b!1622167 () Bool)

(declare-fun tp!472079 () Bool)

(declare-fun inv!21 (TokenValue!3220) Bool)

(assert (=> b!1622167 (= e!1040417 (and (inv!21 (value!98879 (h!23172 tokens!457))) e!1040411 tp!472079))))

(declare-fun b!1622168 () Bool)

(declare-fun res!724650 () Bool)

(assert (=> b!1622168 (=> res!724650 e!1040415)))

(declare-fun separableTokensPredicate!701 (LexerInterface!2759 Token!5826 Token!5826 List!17842) Bool)

(assert (=> b!1622168 (= res!724650 (not (separableTokensPredicate!701 thiss!17113 (h!23172 tokens!457) (h!23172 (t!148806 tokens!457)) rules!1846)))))

(declare-fun b!1622169 () Bool)

(declare-fun e!1040412 () Bool)

(assert (=> b!1622169 (= e!1040412 e!1040406)))

(declare-fun res!724654 () Bool)

(assert (=> b!1622169 (=> res!724654 e!1040406)))

(declare-fun prefixMatchZipperSequence!512 (Regex!4458 BalanceConc!11760) Bool)

(declare-fun ++!4714 (BalanceConc!11760 BalanceConc!11760) BalanceConc!11760)

(assert (=> b!1622169 (= res!724654 (prefixMatchZipperSequence!512 lt!584242 (++!4714 lt!584250 lt!584230)))))

(declare-fun singletonSeq!1539 (C!9090) BalanceConc!11760)

(declare-fun apply!4513 (BalanceConc!11760 Int) C!9090)

(assert (=> b!1622169 (= lt!584230 (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0)))))

(declare-fun rulesRegex!520 (LexerInterface!2759 List!17842) Regex!4458)

(assert (=> b!1622169 (= lt!584242 (rulesRegex!520 thiss!17113 rules!1846))))

(declare-fun b!1622170 () Bool)

(declare-fun res!724664 () Bool)

(assert (=> b!1622170 (=> (not res!724664) (not e!1040401))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!452 (LexerInterface!2759 List!17841 List!17842) Bool)

(assert (=> b!1622170 (= res!724664 (tokensListTwoByTwoPredicateSeparableList!452 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1622171 () Bool)

(assert (=> b!1622171 (= e!1040418 (= lt!584249 (Cons!17770 (head!3402 lt!584247) Nil!17770)))))

(declare-fun b!1622172 () Bool)

(assert (=> b!1622172 (= e!1040405 e!1040412)))

(declare-fun res!724649 () Bool)

(assert (=> b!1622172 (=> res!724649 e!1040412)))

(assert (=> b!1622172 (= res!724649 (not (isDefined!2644 lt!584241)))))

(declare-fun lt!584229 () Unit!28726)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!333 (LexerInterface!2759 List!17842 List!17840 List!17840) Unit!28726)

(assert (=> b!1622172 (= lt!584229 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!333 thiss!17113 rules!1846 lt!584245 lt!584247))))

(declare-fun b!1622173 () Bool)

(declare-fun rulesValidInductive!965 (LexerInterface!2759 List!17842) Bool)

(assert (=> b!1622173 (= e!1040414 (rulesValidInductive!965 thiss!17113 rules!1846))))

(assert (= (and start!153924 res!724648) b!1622151))

(assert (= (and b!1622151 res!724655) b!1622154))

(assert (= (and b!1622154 res!724659) b!1622157))

(assert (= (and b!1622157 res!724657) b!1622170))

(assert (= (and b!1622170 res!724664) b!1622159))

(assert (= (and b!1622159 res!724662) b!1622150))

(assert (= (and b!1622150 res!724668) b!1622156))

(assert (= (and b!1622156 (not res!724660)) b!1622149))

(assert (= (and b!1622149 (not res!724663)) b!1622168))

(assert (= (and b!1622168 (not res!724650)) b!1622145))

(assert (= (and b!1622145 (not res!724667)) b!1622162))

(assert (= (and b!1622162 (not res!724665)) b!1622165))

(assert (= (and b!1622165 (not res!724656)) b!1622172))

(assert (= (and b!1622172 (not res!724649)) b!1622169))

(assert (= (and b!1622169 (not res!724654)) b!1622152))

(assert (= (and b!1622152 (not res!724666)) b!1622166))

(assert (= (and b!1622166 res!724658) b!1622161))

(assert (= (and b!1622161 res!724661) b!1622171))

(assert (= (and b!1622166 (not res!724653)) b!1622153))

(assert (= (and b!1622153 res!724651) b!1622163))

(assert (= (and b!1622163 res!724652) b!1622147))

(assert (= (and b!1622153 (not res!724647)) b!1622173))

(assert (= b!1622158 b!1622160))

(assert (= b!1622148 b!1622158))

(assert (= (and start!153924 (is-Cons!17772 rules!1846)) b!1622148))

(assert (= b!1622155 b!1622164))

(assert (= b!1622167 b!1622155))

(assert (= b!1622146 b!1622167))

(assert (= (and start!153924 (is-Cons!17771 tokens!457)) b!1622146))

(declare-fun m!1947673 () Bool)

(assert (=> b!1622161 m!1947673))

(declare-fun m!1947675 () Bool)

(assert (=> b!1622163 m!1947675))

(declare-fun m!1947677 () Bool)

(assert (=> b!1622158 m!1947677))

(declare-fun m!1947679 () Bool)

(assert (=> b!1622158 m!1947679))

(declare-fun m!1947681 () Bool)

(assert (=> b!1622147 m!1947681))

(declare-fun m!1947683 () Bool)

(assert (=> b!1622156 m!1947683))

(declare-fun m!1947685 () Bool)

(assert (=> b!1622156 m!1947685))

(declare-fun m!1947687 () Bool)

(assert (=> b!1622156 m!1947687))

(declare-fun m!1947689 () Bool)

(assert (=> b!1622156 m!1947689))

(declare-fun m!1947691 () Bool)

(assert (=> b!1622165 m!1947691))

(assert (=> b!1622165 m!1947691))

(declare-fun m!1947693 () Bool)

(assert (=> b!1622165 m!1947693))

(declare-fun m!1947695 () Bool)

(assert (=> b!1622165 m!1947695))

(declare-fun m!1947697 () Bool)

(assert (=> b!1622166 m!1947697))

(assert (=> b!1622166 m!1947697))

(declare-fun m!1947699 () Bool)

(assert (=> b!1622166 m!1947699))

(assert (=> b!1622166 m!1947699))

(declare-fun m!1947701 () Bool)

(assert (=> b!1622166 m!1947701))

(declare-fun m!1947703 () Bool)

(assert (=> b!1622166 m!1947703))

(declare-fun m!1947705 () Bool)

(assert (=> b!1622151 m!1947705))

(declare-fun m!1947707 () Bool)

(assert (=> b!1622162 m!1947707))

(declare-fun m!1947709 () Bool)

(assert (=> b!1622145 m!1947709))

(declare-fun m!1947711 () Bool)

(assert (=> b!1622145 m!1947711))

(declare-fun m!1947713 () Bool)

(assert (=> b!1622145 m!1947713))

(declare-fun m!1947715 () Bool)

(assert (=> b!1622145 m!1947715))

(declare-fun m!1947717 () Bool)

(assert (=> b!1622145 m!1947717))

(declare-fun m!1947719 () Bool)

(assert (=> b!1622145 m!1947719))

(declare-fun m!1947721 () Bool)

(assert (=> b!1622153 m!1947721))

(declare-fun m!1947723 () Bool)

(assert (=> b!1622153 m!1947723))

(declare-fun m!1947725 () Bool)

(assert (=> b!1622153 m!1947725))

(declare-fun m!1947727 () Bool)

(assert (=> b!1622153 m!1947727))

(assert (=> b!1622153 m!1947721))

(declare-fun m!1947729 () Bool)

(assert (=> b!1622153 m!1947729))

(declare-fun m!1947731 () Bool)

(assert (=> b!1622153 m!1947731))

(declare-fun m!1947733 () Bool)

(assert (=> b!1622153 m!1947733))

(assert (=> b!1622153 m!1947723))

(declare-fun m!1947735 () Bool)

(assert (=> b!1622169 m!1947735))

(declare-fun m!1947737 () Bool)

(assert (=> b!1622169 m!1947737))

(declare-fun m!1947739 () Bool)

(assert (=> b!1622169 m!1947739))

(declare-fun m!1947741 () Bool)

(assert (=> b!1622169 m!1947741))

(assert (=> b!1622169 m!1947739))

(assert (=> b!1622169 m!1947737))

(declare-fun m!1947743 () Bool)

(assert (=> b!1622169 m!1947743))

(assert (=> b!1622169 m!1947741))

(declare-fun m!1947745 () Bool)

(assert (=> b!1622169 m!1947745))

(declare-fun m!1947747 () Bool)

(assert (=> b!1622149 m!1947747))

(declare-fun m!1947749 () Bool)

(assert (=> b!1622149 m!1947749))

(declare-fun m!1947751 () Bool)

(assert (=> b!1622149 m!1947751))

(declare-fun m!1947753 () Bool)

(assert (=> b!1622149 m!1947753))

(declare-fun m!1947755 () Bool)

(assert (=> b!1622149 m!1947755))

(assert (=> b!1622149 m!1947749))

(assert (=> b!1622149 m!1947751))

(declare-fun m!1947757 () Bool)

(assert (=> b!1622173 m!1947757))

(declare-fun m!1947759 () Bool)

(assert (=> b!1622170 m!1947759))

(declare-fun m!1947761 () Bool)

(assert (=> b!1622171 m!1947761))

(declare-fun m!1947763 () Bool)

(assert (=> b!1622155 m!1947763))

(declare-fun m!1947765 () Bool)

(assert (=> b!1622155 m!1947765))

(declare-fun m!1947767 () Bool)

(assert (=> b!1622152 m!1947767))

(assert (=> b!1622152 m!1947767))

(declare-fun m!1947769 () Bool)

(assert (=> b!1622152 m!1947769))

(declare-fun m!1947771 () Bool)

(assert (=> b!1622152 m!1947771))

(declare-fun m!1947773 () Bool)

(assert (=> b!1622167 m!1947773))

(declare-fun m!1947775 () Bool)

(assert (=> b!1622146 m!1947775))

(declare-fun m!1947777 () Bool)

(assert (=> b!1622168 m!1947777))

(declare-fun m!1947779 () Bool)

(assert (=> b!1622172 m!1947779))

(declare-fun m!1947781 () Bool)

(assert (=> b!1622172 m!1947781))

(declare-fun m!1947783 () Bool)

(assert (=> b!1622150 m!1947783))

(declare-fun m!1947785 () Bool)

(assert (=> b!1622150 m!1947785))

(declare-fun m!1947787 () Bool)

(assert (=> b!1622150 m!1947787))

(declare-fun m!1947789 () Bool)

(assert (=> b!1622150 m!1947789))

(declare-fun m!1947791 () Bool)

(assert (=> b!1622150 m!1947791))

(declare-fun m!1947793 () Bool)

(assert (=> b!1622150 m!1947793))

(declare-fun m!1947795 () Bool)

(assert (=> b!1622150 m!1947795))

(declare-fun m!1947797 () Bool)

(assert (=> b!1622150 m!1947797))

(declare-fun m!1947799 () Bool)

(assert (=> b!1622150 m!1947799))

(assert (=> b!1622150 m!1947791))

(declare-fun m!1947801 () Bool)

(assert (=> b!1622150 m!1947801))

(declare-fun m!1947803 () Bool)

(assert (=> b!1622154 m!1947803))

(declare-fun m!1947805 () Bool)

(assert (=> b!1622157 m!1947805))

(push 1)

(assert (not b!1622153))

(assert (not b!1622167))

(assert (not b!1622149))

(assert (not b!1622172))

(assert (not b!1622170))

(assert (not b!1622155))

(assert b_and!115053)

(assert b_and!115057)

(assert (not b!1622158))

(assert (not b!1622157))

(assert (not b!1622151))

(assert (not b!1622163))

(assert (not b!1622171))

(assert (not b!1622150))

(assert (not b!1622152))

(assert (not b!1622162))

(assert (not b!1622154))

(assert (not b!1622156))

(assert (not b!1622145))

(assert (not b_next!44437))

(assert (not b_next!44435))

(assert (not b!1622173))

(assert (not b!1622148))

(assert (not b!1622169))

(assert (not b!1622161))

(assert (not b_next!44433))

(assert (not b!1622168))

(assert (not b!1622147))

(assert (not b!1622146))

(assert (not b_next!44431))

(assert b_and!115059)

(assert (not b!1622166))

(assert (not b!1622165))

(assert b_and!115055)

(check-sat)

(pop 1)

(push 1)

(assert b_and!115053)

(assert b_and!115057)

(assert (not b_next!44433))

(assert b_and!115055)

(assert (not b_next!44437))

(assert (not b_next!44435))

(assert (not b_next!44431))

(assert b_and!115059)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!488440 () Bool)

(assert (=> d!488440 (= (inv!23158 (tag!3408 (h!23173 rules!1846))) (= (mod (str.len (value!98878 (tag!3408 (h!23173 rules!1846)))) 2) 0))))

(assert (=> b!1622158 d!488440))

(declare-fun d!488442 () Bool)

(declare-fun res!724740 () Bool)

(declare-fun e!1040491 () Bool)

(assert (=> d!488442 (=> (not res!724740) (not e!1040491))))

(declare-fun semiInverseModEq!1193 (Int Int) Bool)

(assert (=> d!488442 (= res!724740 (semiInverseModEq!1193 (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toValue!4557 (transformation!3130 (h!23173 rules!1846)))))))

(assert (=> d!488442 (= (inv!23162 (transformation!3130 (h!23173 rules!1846))) e!1040491)))

(declare-fun b!1622263 () Bool)

(declare-fun equivClasses!1134 (Int Int) Bool)

(assert (=> b!1622263 (= e!1040491 (equivClasses!1134 (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toValue!4557 (transformation!3130 (h!23173 rules!1846)))))))

(assert (= (and d!488442 res!724740) b!1622263))

(declare-fun m!1947941 () Bool)

(assert (=> d!488442 m!1947941))

(declare-fun m!1947943 () Bool)

(assert (=> b!1622263 m!1947943))

(assert (=> b!1622158 d!488442))

(declare-fun d!488444 () Bool)

(assert (=> d!488444 (= (inv!23158 (tag!3408 (rule!4956 (h!23172 tokens!457)))) (= (mod (str.len (value!98878 (tag!3408 (rule!4956 (h!23172 tokens!457))))) 2) 0))))

(assert (=> b!1622155 d!488444))

(declare-fun d!488446 () Bool)

(declare-fun res!724741 () Bool)

(declare-fun e!1040492 () Bool)

(assert (=> d!488446 (=> (not res!724741) (not e!1040492))))

(assert (=> d!488446 (= res!724741 (semiInverseModEq!1193 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (toValue!4557 (transformation!3130 (rule!4956 (h!23172 tokens!457))))))))

(assert (=> d!488446 (= (inv!23162 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) e!1040492)))

(declare-fun b!1622264 () Bool)

(assert (=> b!1622264 (= e!1040492 (equivClasses!1134 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (toValue!4557 (transformation!3130 (rule!4956 (h!23172 tokens!457))))))))

(assert (= (and d!488446 res!724741) b!1622264))

(declare-fun m!1947945 () Bool)

(assert (=> d!488446 m!1947945))

(declare-fun m!1947947 () Bool)

(assert (=> b!1622264 m!1947947))

(assert (=> b!1622155 d!488446))

(declare-fun b!1622281 () Bool)

(declare-fun e!1040507 () Bool)

(assert (=> b!1622281 (= e!1040507 true)))

(declare-fun b!1622280 () Bool)

(declare-fun e!1040506 () Bool)

(assert (=> b!1622280 (= e!1040506 e!1040507)))

(declare-fun b!1622279 () Bool)

(declare-fun e!1040505 () Bool)

(assert (=> b!1622279 (= e!1040505 e!1040506)))

(declare-fun d!488448 () Bool)

(assert (=> d!488448 e!1040505))

(assert (= b!1622280 b!1622281))

(assert (= b!1622279 b!1622280))

(assert (= (and d!488448 (is-Cons!17772 rules!1846)) b!1622279))

(declare-fun order!10539 () Int)

(declare-fun lambda!67213 () Int)

(declare-fun order!10537 () Int)

(declare-fun dynLambda!7928 (Int Int) Int)

(declare-fun dynLambda!7929 (Int Int) Int)

(assert (=> b!1622281 (< (dynLambda!7928 order!10537 (toValue!4557 (transformation!3130 (h!23173 rules!1846)))) (dynLambda!7929 order!10539 lambda!67213))))

(declare-fun order!10541 () Int)

(declare-fun dynLambda!7930 (Int Int) Int)

(assert (=> b!1622281 (< (dynLambda!7930 order!10541 (toChars!4416 (transformation!3130 (h!23173 rules!1846)))) (dynLambda!7929 order!10539 lambda!67213))))

(assert (=> d!488448 true))

(declare-fun lt!584337 () Bool)

(declare-fun forall!4075 (List!17841 Int) Bool)

(assert (=> d!488448 (= lt!584337 (forall!4075 tokens!457 lambda!67213))))

(declare-fun e!1040497 () Bool)

(assert (=> d!488448 (= lt!584337 e!1040497)))

(declare-fun res!724752 () Bool)

(assert (=> d!488448 (=> res!724752 e!1040497)))

(assert (=> d!488448 (= res!724752 (not (is-Cons!17771 tokens!457)))))

(assert (=> d!488448 (not (isEmpty!10794 rules!1846))))

(assert (=> d!488448 (= (rulesProduceEachTokenIndividuallyList!961 thiss!17113 rules!1846 tokens!457) lt!584337)))

(declare-fun b!1622269 () Bool)

(declare-fun e!1040498 () Bool)

(assert (=> b!1622269 (= e!1040497 e!1040498)))

(declare-fun res!724751 () Bool)

(assert (=> b!1622269 (=> (not res!724751) (not e!1040498))))

(assert (=> b!1622269 (= res!724751 (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 tokens!457)))))

(declare-fun b!1622270 () Bool)

(assert (=> b!1622270 (= e!1040498 (rulesProduceEachTokenIndividuallyList!961 thiss!17113 rules!1846 (t!148806 tokens!457)))))

(assert (= (and d!488448 (not res!724752)) b!1622269))

(assert (= (and b!1622269 res!724751) b!1622270))

(declare-fun m!1947951 () Bool)

(assert (=> d!488448 m!1947951))

(assert (=> d!488448 m!1947705))

(assert (=> b!1622269 m!1947707))

(declare-fun m!1947953 () Bool)

(assert (=> b!1622270 m!1947953))

(assert (=> b!1622157 d!488448))

(declare-fun d!488456 () Bool)

(declare-fun list!6969 (Conc!5909) List!17841)

(assert (=> d!488456 (= (list!6965 (_1!10064 lt!584235)) (list!6969 (c!264131 (_1!10064 lt!584235))))))

(declare-fun bs!394571 () Bool)

(assert (= bs!394571 d!488456))

(declare-fun m!1947955 () Bool)

(assert (=> bs!394571 m!1947955))

(assert (=> b!1622156 d!488456))

(declare-fun d!488458 () Bool)

(declare-fun e!1040569 () Bool)

(assert (=> d!488458 e!1040569))

(declare-fun res!724809 () Bool)

(assert (=> d!488458 (=> (not res!724809) (not e!1040569))))

(assert (=> d!488458 (= res!724809 (= (list!6965 (_1!10064 (lex!1243 thiss!17113 rules!1846 (print!1290 thiss!17113 (seqFromList!2009 (t!148806 tokens!457)))))) (t!148806 tokens!457)))))

(declare-fun lt!584480 () Unit!28726)

(declare-fun e!1040570 () Unit!28726)

(assert (=> d!488458 (= lt!584480 e!1040570)))

(declare-fun c!264162 () Bool)

(assert (=> d!488458 (= c!264162 (or (is-Nil!17771 (t!148806 tokens!457)) (is-Nil!17771 (t!148806 (t!148806 tokens!457)))))))

(assert (=> d!488458 (not (isEmpty!10794 rules!1846))))

(assert (=> d!488458 (= (theoremInvertabilityWhenTokenListSeparable!204 thiss!17113 rules!1846 (t!148806 tokens!457)) lt!584480)))

(declare-fun b!1622392 () Bool)

(declare-fun Unit!28731 () Unit!28726)

(assert (=> b!1622392 (= e!1040570 Unit!28731)))

(declare-fun b!1622393 () Bool)

(declare-fun Unit!28732 () Unit!28726)

(assert (=> b!1622393 (= e!1040570 Unit!28732)))

(declare-fun lt!584493 () BalanceConc!11760)

(assert (=> b!1622393 (= lt!584493 (print!1290 thiss!17113 (seqFromList!2009 (t!148806 tokens!457))))))

(declare-fun lt!584502 () BalanceConc!11760)

(assert (=> b!1622393 (= lt!584502 (print!1290 thiss!17113 (seqFromList!2009 (t!148806 (t!148806 tokens!457)))))))

(declare-fun lt!584478 () tuple2!17324)

(assert (=> b!1622393 (= lt!584478 (lex!1243 thiss!17113 rules!1846 lt!584502))))

(declare-fun lt!584501 () List!17840)

(assert (=> b!1622393 (= lt!584501 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457)))))))

(declare-fun lt!584482 () List!17840)

(assert (=> b!1622393 (= lt!584482 (list!6966 lt!584502))))

(declare-fun lt!584494 () Unit!28726)

(assert (=> b!1622393 (= lt!584494 (lemmaConcatTwoListThenFirstIsPrefix!915 lt!584501 lt!584482))))

(assert (=> b!1622393 (isPrefix!1390 lt!584501 (++!4713 lt!584501 lt!584482))))

(declare-fun lt!584490 () Unit!28726)

(assert (=> b!1622393 (= lt!584490 lt!584494)))

(declare-fun lt!584487 () Unit!28726)

(assert (=> b!1622393 (= lt!584487 (theoremInvertabilityWhenTokenListSeparable!204 thiss!17113 rules!1846 (t!148806 (t!148806 tokens!457))))))

(declare-fun lt!584481 () Unit!28726)

(assert (=> b!1622393 (= lt!584481 (seqFromListBHdTlConstructive!207 (h!23172 (t!148806 (t!148806 tokens!457))) (t!148806 (t!148806 (t!148806 tokens!457))) (_1!10064 lt!584478)))))

(assert (=> b!1622393 (= (list!6965 (_1!10064 lt!584478)) (list!6965 (prepend!650 (seqFromList!2009 (t!148806 (t!148806 (t!148806 tokens!457)))) (h!23172 (t!148806 (t!148806 tokens!457))))))))

(declare-fun lt!584495 () Unit!28726)

(assert (=> b!1622393 (= lt!584495 lt!584481)))

(declare-fun lt!584477 () Option!3277)

(assert (=> b!1622393 (= lt!584477 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 lt!584493)))))

(assert (=> b!1622393 (= (print!1290 thiss!17113 (singletonSeq!1538 (h!23172 (t!148806 tokens!457)))) (printTailRec!812 thiss!17113 (singletonSeq!1538 (h!23172 (t!148806 tokens!457))) 0 (BalanceConc!11761 Empty!5908)))))

(declare-fun lt!584500 () Unit!28726)

(declare-fun Unit!28733 () Unit!28726)

(assert (=> b!1622393 (= lt!584500 Unit!28733)))

(declare-fun lt!584497 () Unit!28726)

(assert (=> b!1622393 (= lt!584497 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!333 thiss!17113 rules!1846 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457)))) (list!6966 lt!584502)))))

(assert (=> b!1622393 (= (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457)))) (originalCharacters!3944 (h!23172 (t!148806 tokens!457))))))

(declare-fun lt!584486 () Unit!28726)

(declare-fun Unit!28734 () Unit!28726)

(assert (=> b!1622393 (= lt!584486 Unit!28734)))

(assert (=> b!1622393 (= (list!6966 (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 (t!148806 tokens!457)))) 0))) (Cons!17770 (head!3402 (originalCharacters!3944 (h!23172 (t!148806 (t!148806 tokens!457))))) Nil!17770))))

(declare-fun lt!584496 () Unit!28726)

(declare-fun Unit!28735 () Unit!28726)

(assert (=> b!1622393 (= lt!584496 Unit!28735)))

(assert (=> b!1622393 (= (list!6966 (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 (t!148806 tokens!457)))) 0))) (Cons!17770 (head!3402 (list!6966 lt!584502)) Nil!17770))))

(declare-fun lt!584483 () Unit!28726)

(declare-fun Unit!28736 () Unit!28726)

(assert (=> b!1622393 (= lt!584483 Unit!28736)))

(assert (=> b!1622393 (= (list!6966 (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 (t!148806 tokens!457)))) 0))) (Cons!17770 (head!3403 lt!584502) Nil!17770))))

(declare-fun lt!584489 () Unit!28726)

(declare-fun Unit!28737 () Unit!28726)

(assert (=> b!1622393 (= lt!584489 Unit!28737)))

(assert (=> b!1622393 (isDefined!2644 (maxPrefix!1323 thiss!17113 rules!1846 (originalCharacters!3944 (h!23172 (t!148806 tokens!457)))))))

(declare-fun lt!584484 () Unit!28726)

(declare-fun Unit!28738 () Unit!28726)

(assert (=> b!1622393 (= lt!584484 Unit!28738)))

(assert (=> b!1622393 (isDefined!2644 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457))))))))

(declare-fun lt!584498 () Unit!28726)

(declare-fun Unit!28739 () Unit!28726)

(assert (=> b!1622393 (= lt!584498 Unit!28739)))

(declare-fun lt!584479 () Unit!28726)

(declare-fun Unit!28740 () Unit!28726)

(assert (=> b!1622393 (= lt!584479 Unit!28740)))

(assert (=> b!1622393 (= (_1!10065 (get!5112 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457))))))) (h!23172 (t!148806 tokens!457)))))

(declare-fun lt!584488 () Unit!28726)

(declare-fun Unit!28741 () Unit!28726)

(assert (=> b!1622393 (= lt!584488 Unit!28741)))

(assert (=> b!1622393 (isEmpty!10795 (_2!10065 (get!5112 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457))))))))))

(declare-fun lt!584492 () Unit!28726)

(declare-fun Unit!28742 () Unit!28726)

(assert (=> b!1622393 (= lt!584492 Unit!28742)))

(assert (=> b!1622393 (matchR!1957 (regex!3130 (rule!4956 (h!23172 (t!148806 tokens!457)))) (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457)))))))

(declare-fun lt!584491 () Unit!28726)

(declare-fun Unit!28743 () Unit!28726)

(assert (=> b!1622393 (= lt!584491 Unit!28743)))

(assert (=> b!1622393 (= (rule!4956 (h!23172 (t!148806 tokens!457))) (rule!4956 (h!23172 (t!148806 tokens!457))))))

(declare-fun lt!584485 () Unit!28726)

(declare-fun Unit!28744 () Unit!28726)

(assert (=> b!1622393 (= lt!584485 Unit!28744)))

(declare-fun lt!584499 () Unit!28726)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!103 (LexerInterface!2759 List!17842 Token!5826 Rule!6060 List!17840) Unit!28726)

(assert (=> b!1622393 (= lt!584499 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!103 thiss!17113 rules!1846 (h!23172 (t!148806 tokens!457)) (rule!4956 (h!23172 (t!148806 tokens!457))) (list!6966 lt!584502)))))

(declare-fun b!1622394 () Bool)

(declare-fun isEmpty!10800 (BalanceConc!11760) Bool)

(assert (=> b!1622394 (= e!1040569 (isEmpty!10800 (_2!10064 (lex!1243 thiss!17113 rules!1846 (print!1290 thiss!17113 (seqFromList!2009 (t!148806 tokens!457)))))))))

(assert (= (and d!488458 c!264162) b!1622392))

(assert (= (and d!488458 (not c!264162)) b!1622393))

(assert (= (and d!488458 res!724809) b!1622394))

(assert (=> d!488458 m!1947789))

(assert (=> d!488458 m!1947705))

(declare-fun m!1948083 () Bool)

(assert (=> d!488458 m!1948083))

(declare-fun m!1948085 () Bool)

(assert (=> d!488458 m!1948085))

(declare-fun m!1948087 () Bool)

(assert (=> d!488458 m!1948087))

(assert (=> d!488458 m!1947789))

(assert (=> d!488458 m!1948085))

(declare-fun m!1948089 () Bool)

(assert (=> b!1622393 m!1948089))

(declare-fun m!1948091 () Bool)

(assert (=> b!1622393 m!1948091))

(declare-fun m!1948093 () Bool)

(assert (=> b!1622393 m!1948093))

(declare-fun m!1948095 () Bool)

(assert (=> b!1622393 m!1948095))

(declare-fun m!1948097 () Bool)

(assert (=> b!1622393 m!1948097))

(declare-fun m!1948099 () Bool)

(assert (=> b!1622393 m!1948099))

(assert (=> b!1622393 m!1947789))

(declare-fun m!1948101 () Bool)

(assert (=> b!1622393 m!1948101))

(declare-fun m!1948103 () Bool)

(assert (=> b!1622393 m!1948103))

(declare-fun m!1948105 () Bool)

(assert (=> b!1622393 m!1948105))

(declare-fun m!1948107 () Bool)

(assert (=> b!1622393 m!1948107))

(declare-fun m!1948109 () Bool)

(assert (=> b!1622393 m!1948109))

(declare-fun m!1948111 () Bool)

(assert (=> b!1622393 m!1948111))

(declare-fun m!1948113 () Bool)

(assert (=> b!1622393 m!1948113))

(assert (=> b!1622393 m!1948109))

(assert (=> b!1622393 m!1947739))

(assert (=> b!1622393 m!1948109))

(declare-fun m!1948115 () Bool)

(assert (=> b!1622393 m!1948115))

(assert (=> b!1622393 m!1948091))

(assert (=> b!1622393 m!1948099))

(declare-fun m!1948117 () Bool)

(assert (=> b!1622393 m!1948117))

(assert (=> b!1622393 m!1948099))

(declare-fun m!1948119 () Bool)

(assert (=> b!1622393 m!1948119))

(assert (=> b!1622393 m!1947749))

(declare-fun m!1948121 () Bool)

(assert (=> b!1622393 m!1948121))

(assert (=> b!1622393 m!1948099))

(declare-fun m!1948123 () Bool)

(assert (=> b!1622393 m!1948123))

(declare-fun m!1948125 () Bool)

(assert (=> b!1622393 m!1948125))

(declare-fun m!1948127 () Bool)

(assert (=> b!1622393 m!1948127))

(assert (=> b!1622393 m!1948091))

(assert (=> b!1622393 m!1948125))

(declare-fun m!1948129 () Bool)

(assert (=> b!1622393 m!1948129))

(assert (=> b!1622393 m!1947739))

(assert (=> b!1622393 m!1948091))

(assert (=> b!1622393 m!1948095))

(assert (=> b!1622393 m!1948101))

(declare-fun m!1948131 () Bool)

(assert (=> b!1622393 m!1948131))

(declare-fun m!1948133 () Bool)

(assert (=> b!1622393 m!1948133))

(declare-fun m!1948135 () Bool)

(assert (=> b!1622393 m!1948135))

(declare-fun m!1948137 () Bool)

(assert (=> b!1622393 m!1948137))

(declare-fun m!1948139 () Bool)

(assert (=> b!1622393 m!1948139))

(assert (=> b!1622393 m!1948113))

(declare-fun m!1948141 () Bool)

(assert (=> b!1622393 m!1948141))

(assert (=> b!1622393 m!1948125))

(declare-fun m!1948143 () Bool)

(assert (=> b!1622393 m!1948143))

(declare-fun m!1948145 () Bool)

(assert (=> b!1622393 m!1948145))

(assert (=> b!1622393 m!1948135))

(declare-fun m!1948147 () Bool)

(assert (=> b!1622393 m!1948147))

(assert (=> b!1622393 m!1948145))

(assert (=> b!1622393 m!1947749))

(declare-fun m!1948149 () Bool)

(assert (=> b!1622393 m!1948149))

(assert (=> b!1622393 m!1948097))

(declare-fun m!1948151 () Bool)

(assert (=> b!1622393 m!1948151))

(declare-fun m!1948153 () Bool)

(assert (=> b!1622393 m!1948153))

(assert (=> b!1622393 m!1948147))

(assert (=> b!1622393 m!1948131))

(declare-fun m!1948155 () Bool)

(assert (=> b!1622393 m!1948155))

(assert (=> b!1622393 m!1947789))

(assert (=> b!1622393 m!1948085))

(assert (=> b!1622394 m!1947789))

(assert (=> b!1622394 m!1947789))

(assert (=> b!1622394 m!1948085))

(assert (=> b!1622394 m!1948085))

(assert (=> b!1622394 m!1948087))

(declare-fun m!1948157 () Bool)

(assert (=> b!1622394 m!1948157))

(assert (=> b!1622156 d!488458))

(declare-fun b!1622404 () Bool)

(declare-fun res!724820 () Bool)

(declare-fun e!1040577 () Bool)

(assert (=> b!1622404 (=> (not res!724820) (not e!1040577))))

(assert (=> b!1622404 (= res!724820 (= (head!3402 lt!584245) (head!3402 lt!584236)))))

(declare-fun b!1622403 () Bool)

(declare-fun e!1040579 () Bool)

(assert (=> b!1622403 (= e!1040579 e!1040577)))

(declare-fun res!724818 () Bool)

(assert (=> b!1622403 (=> (not res!724818) (not e!1040577))))

(assert (=> b!1622403 (= res!724818 (not (is-Nil!17770 lt!584236)))))

(declare-fun b!1622405 () Bool)

(declare-fun tail!2349 (List!17840) List!17840)

(assert (=> b!1622405 (= e!1040577 (isPrefix!1390 (tail!2349 lt!584245) (tail!2349 lt!584236)))))

(declare-fun d!488478 () Bool)

(declare-fun e!1040578 () Bool)

(assert (=> d!488478 e!1040578))

(declare-fun res!724821 () Bool)

(assert (=> d!488478 (=> res!724821 e!1040578)))

(declare-fun lt!584505 () Bool)

(assert (=> d!488478 (= res!724821 (not lt!584505))))

(assert (=> d!488478 (= lt!584505 e!1040579)))

(declare-fun res!724819 () Bool)

(assert (=> d!488478 (=> res!724819 e!1040579)))

(assert (=> d!488478 (= res!724819 (is-Nil!17770 lt!584245))))

(assert (=> d!488478 (= (isPrefix!1390 lt!584245 lt!584236) lt!584505)))

(declare-fun b!1622406 () Bool)

(declare-fun size!14241 (List!17840) Int)

(assert (=> b!1622406 (= e!1040578 (>= (size!14241 lt!584236) (size!14241 lt!584245)))))

(assert (= (and d!488478 (not res!724819)) b!1622403))

(assert (= (and b!1622403 res!724818) b!1622404))

(assert (= (and b!1622404 res!724820) b!1622405))

(assert (= (and d!488478 (not res!724821)) b!1622406))

(declare-fun m!1948159 () Bool)

(assert (=> b!1622404 m!1948159))

(declare-fun m!1948161 () Bool)

(assert (=> b!1622404 m!1948161))

(declare-fun m!1948163 () Bool)

(assert (=> b!1622405 m!1948163))

(declare-fun m!1948165 () Bool)

(assert (=> b!1622405 m!1948165))

(assert (=> b!1622405 m!1948163))

(assert (=> b!1622405 m!1948165))

(declare-fun m!1948167 () Bool)

(assert (=> b!1622405 m!1948167))

(declare-fun m!1948169 () Bool)

(assert (=> b!1622406 m!1948169))

(declare-fun m!1948171 () Bool)

(assert (=> b!1622406 m!1948171))

(assert (=> b!1622156 d!488478))

(declare-fun d!488480 () Bool)

(assert (=> d!488480 (isPrefix!1390 lt!584245 (++!4713 lt!584245 lt!584247))))

(declare-fun lt!584508 () Unit!28726)

(declare-fun choose!9761 (List!17840 List!17840) Unit!28726)

(assert (=> d!488480 (= lt!584508 (choose!9761 lt!584245 lt!584247))))

(assert (=> d!488480 (= (lemmaConcatTwoListThenFirstIsPrefix!915 lt!584245 lt!584247) lt!584508)))

(declare-fun bs!394574 () Bool)

(assert (= bs!394574 d!488480))

(assert (=> bs!394574 m!1947795))

(assert (=> bs!394574 m!1947795))

(declare-fun m!1948173 () Bool)

(assert (=> bs!394574 m!1948173))

(declare-fun m!1948175 () Bool)

(assert (=> bs!394574 m!1948175))

(assert (=> b!1622156 d!488480))

(declare-fun d!488482 () Bool)

(assert (=> d!488482 (= (isEmpty!10795 (_2!10065 lt!584228)) (is-Nil!17770 (_2!10065 lt!584228)))))

(assert (=> b!1622163 d!488482))

(declare-fun lt!584511 () Bool)

(declare-fun d!488484 () Bool)

(declare-fun isEmpty!10801 (List!17841) Bool)

(assert (=> d!488484 (= lt!584511 (isEmpty!10801 (list!6965 (_1!10064 (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245))))))))

(declare-fun isEmpty!10802 (Conc!5909) Bool)

(assert (=> d!488484 (= lt!584511 (isEmpty!10802 (c!264131 (_1!10064 (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245))))))))

(assert (=> d!488484 (= (isEmpty!10796 (_1!10064 (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245)))) lt!584511)))

(declare-fun bs!394575 () Bool)

(assert (= bs!394575 d!488484))

(declare-fun m!1948177 () Bool)

(assert (=> bs!394575 m!1948177))

(assert (=> bs!394575 m!1948177))

(declare-fun m!1948179 () Bool)

(assert (=> bs!394575 m!1948179))

(declare-fun m!1948181 () Bool)

(assert (=> bs!394575 m!1948181))

(assert (=> b!1622165 d!488484))

(declare-fun b!1622432 () Bool)

(declare-fun e!1040595 () Bool)

(declare-fun lt!584517 () tuple2!17324)

(assert (=> b!1622432 (= e!1040595 (= (_2!10064 lt!584517) (seqFromList!2010 lt!584245)))))

(declare-fun b!1622433 () Bool)

(declare-fun res!724839 () Bool)

(declare-fun e!1040596 () Bool)

(assert (=> b!1622433 (=> (not res!724839) (not e!1040596))))

(declare-datatypes ((tuple2!17336 0))(
  ( (tuple2!17337 (_1!10070 List!17841) (_2!10070 List!17840)) )
))
(declare-fun lexList!822 (LexerInterface!2759 List!17842 List!17840) tuple2!17336)

(assert (=> b!1622433 (= res!724839 (= (list!6965 (_1!10064 lt!584517)) (_1!10070 (lexList!822 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 lt!584245))))))))

(declare-fun b!1622434 () Bool)

(declare-fun e!1040597 () Bool)

(assert (=> b!1622434 (= e!1040595 e!1040597)))

(declare-fun res!724837 () Bool)

(declare-fun size!14242 (BalanceConc!11760) Int)

(assert (=> b!1622434 (= res!724837 (< (size!14242 (_2!10064 lt!584517)) (size!14242 (seqFromList!2010 lt!584245))))))

(assert (=> b!1622434 (=> (not res!724837) (not e!1040597))))

(declare-fun b!1622435 () Bool)

(assert (=> b!1622435 (= e!1040597 (not (isEmpty!10796 (_1!10064 lt!584517))))))

(declare-fun d!488486 () Bool)

(assert (=> d!488486 e!1040596))

(declare-fun res!724838 () Bool)

(assert (=> d!488486 (=> (not res!724838) (not e!1040596))))

(assert (=> d!488486 (= res!724838 e!1040595)))

(declare-fun c!264168 () Bool)

(declare-fun size!14243 (BalanceConc!11762) Int)

(assert (=> d!488486 (= c!264168 (> (size!14243 (_1!10064 lt!584517)) 0))))

(declare-fun lexTailRecV2!545 (LexerInterface!2759 List!17842 BalanceConc!11760 BalanceConc!11760 BalanceConc!11760 BalanceConc!11762) tuple2!17324)

(assert (=> d!488486 (= lt!584517 (lexTailRecV2!545 thiss!17113 rules!1846 (seqFromList!2010 lt!584245) (BalanceConc!11761 Empty!5908) (seqFromList!2010 lt!584245) (BalanceConc!11763 Empty!5909)))))

(assert (=> d!488486 (= (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245)) lt!584517)))

(declare-fun b!1622436 () Bool)

(assert (=> b!1622436 (= e!1040596 (= (list!6966 (_2!10064 lt!584517)) (_2!10070 (lexList!822 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 lt!584245))))))))

(assert (= (and d!488486 c!264168) b!1622434))

(assert (= (and d!488486 (not c!264168)) b!1622432))

(assert (= (and b!1622434 res!724837) b!1622435))

(assert (= (and d!488486 res!724838) b!1622433))

(assert (= (and b!1622433 res!724839) b!1622436))

(declare-fun m!1948205 () Bool)

(assert (=> b!1622434 m!1948205))

(assert (=> b!1622434 m!1947691))

(declare-fun m!1948207 () Bool)

(assert (=> b!1622434 m!1948207))

(declare-fun m!1948209 () Bool)

(assert (=> d!488486 m!1948209))

(assert (=> d!488486 m!1947691))

(assert (=> d!488486 m!1947691))

(declare-fun m!1948211 () Bool)

(assert (=> d!488486 m!1948211))

(declare-fun m!1948213 () Bool)

(assert (=> b!1622433 m!1948213))

(assert (=> b!1622433 m!1947691))

(declare-fun m!1948215 () Bool)

(assert (=> b!1622433 m!1948215))

(assert (=> b!1622433 m!1948215))

(declare-fun m!1948217 () Bool)

(assert (=> b!1622433 m!1948217))

(declare-fun m!1948219 () Bool)

(assert (=> b!1622436 m!1948219))

(assert (=> b!1622436 m!1947691))

(assert (=> b!1622436 m!1948215))

(assert (=> b!1622436 m!1948215))

(assert (=> b!1622436 m!1948217))

(declare-fun m!1948221 () Bool)

(assert (=> b!1622435 m!1948221))

(assert (=> b!1622165 d!488486))

(declare-fun d!488494 () Bool)

(declare-fun fromListB!880 (List!17840) BalanceConc!11760)

(assert (=> d!488494 (= (seqFromList!2010 lt!584245) (fromListB!880 lt!584245))))

(declare-fun bs!394578 () Bool)

(assert (= bs!394578 d!488494))

(declare-fun m!1948223 () Bool)

(assert (=> bs!394578 m!1948223))

(assert (=> b!1622165 d!488494))

(declare-fun d!488496 () Bool)

(assert (=> d!488496 (= (head!3402 (originalCharacters!3944 (h!23172 (t!148806 tokens!457)))) (h!23171 (originalCharacters!3944 (h!23172 (t!148806 tokens!457)))))))

(assert (=> b!1622161 d!488496))

(declare-fun d!488498 () Bool)

(declare-fun lt!584548 () Bool)

(declare-fun e!1040630 () Bool)

(assert (=> d!488498 (= lt!584548 e!1040630)))

(declare-fun res!724874 () Bool)

(assert (=> d!488498 (=> (not res!724874) (not e!1040630))))

(assert (=> d!488498 (= res!724874 (= (list!6965 (_1!10064 (lex!1243 thiss!17113 rules!1846 (print!1290 thiss!17113 (singletonSeq!1538 (h!23172 tokens!457)))))) (list!6965 (singletonSeq!1538 (h!23172 tokens!457)))))))

(declare-fun e!1040631 () Bool)

(assert (=> d!488498 (= lt!584548 e!1040631)))

(declare-fun res!724875 () Bool)

(assert (=> d!488498 (=> (not res!724875) (not e!1040631))))

(declare-fun lt!584549 () tuple2!17324)

(assert (=> d!488498 (= res!724875 (= (size!14243 (_1!10064 lt!584549)) 1))))

(assert (=> d!488498 (= lt!584549 (lex!1243 thiss!17113 rules!1846 (print!1290 thiss!17113 (singletonSeq!1538 (h!23172 tokens!457)))))))

(assert (=> d!488498 (not (isEmpty!10794 rules!1846))))

(assert (=> d!488498 (= (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 tokens!457)) lt!584548)))

(declare-fun b!1622477 () Bool)

(declare-fun res!724876 () Bool)

(assert (=> b!1622477 (=> (not res!724876) (not e!1040631))))

(declare-fun apply!4515 (BalanceConc!11762 Int) Token!5826)

(assert (=> b!1622477 (= res!724876 (= (apply!4515 (_1!10064 lt!584549) 0) (h!23172 tokens!457)))))

(declare-fun b!1622478 () Bool)

(assert (=> b!1622478 (= e!1040631 (isEmpty!10800 (_2!10064 lt!584549)))))

(declare-fun b!1622479 () Bool)

(assert (=> b!1622479 (= e!1040630 (isEmpty!10800 (_2!10064 (lex!1243 thiss!17113 rules!1846 (print!1290 thiss!17113 (singletonSeq!1538 (h!23172 tokens!457)))))))))

(assert (= (and d!488498 res!724875) b!1622477))

(assert (= (and b!1622477 res!724876) b!1622478))

(assert (= (and d!488498 res!724874) b!1622479))

(declare-fun m!1948267 () Bool)

(assert (=> d!488498 m!1948267))

(assert (=> d!488498 m!1947705))

(assert (=> d!488498 m!1947717))

(declare-fun m!1948269 () Bool)

(assert (=> d!488498 m!1948269))

(assert (=> d!488498 m!1948269))

(declare-fun m!1948271 () Bool)

(assert (=> d!488498 m!1948271))

(declare-fun m!1948273 () Bool)

(assert (=> d!488498 m!1948273))

(assert (=> d!488498 m!1947717))

(assert (=> d!488498 m!1947717))

(declare-fun m!1948275 () Bool)

(assert (=> d!488498 m!1948275))

(declare-fun m!1948277 () Bool)

(assert (=> b!1622477 m!1948277))

(declare-fun m!1948279 () Bool)

(assert (=> b!1622478 m!1948279))

(assert (=> b!1622479 m!1947717))

(assert (=> b!1622479 m!1947717))

(assert (=> b!1622479 m!1948269))

(assert (=> b!1622479 m!1948269))

(assert (=> b!1622479 m!1948271))

(declare-fun m!1948281 () Bool)

(assert (=> b!1622479 m!1948281))

(assert (=> b!1622162 d!488498))

(declare-fun d!488512 () Bool)

(declare-fun e!1040634 () Bool)

(assert (=> d!488512 e!1040634))

(declare-fun res!724879 () Bool)

(assert (=> d!488512 (=> (not res!724879) (not e!1040634))))

(declare-fun lt!584552 () BalanceConc!11760)

(assert (=> d!488512 (= res!724879 (= (list!6966 lt!584552) (Cons!17770 (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0) Nil!17770)))))

(declare-fun singleton!655 (C!9090) BalanceConc!11760)

(assert (=> d!488512 (= lt!584552 (singleton!655 (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0)))))

(assert (=> d!488512 (= (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0)) lt!584552)))

(declare-fun b!1622482 () Bool)

(declare-fun isBalanced!1775 (Conc!5908) Bool)

(assert (=> b!1622482 (= e!1040634 (isBalanced!1775 (c!264129 lt!584552)))))

(assert (= (and d!488512 res!724879) b!1622482))

(declare-fun m!1948283 () Bool)

(assert (=> d!488512 m!1948283))

(assert (=> d!488512 m!1947741))

(declare-fun m!1948285 () Bool)

(assert (=> d!488512 m!1948285))

(declare-fun m!1948287 () Bool)

(assert (=> b!1622482 m!1948287))

(assert (=> b!1622169 d!488512))

(declare-fun lt!584580 () Bool)

(declare-fun d!488514 () Bool)

(assert (=> d!488514 (= lt!584580 (prefixMatch!393 lt!584242 (list!6966 (++!4714 lt!584250 lt!584230))))))

(declare-datatypes ((List!17847 0))(
  ( (Nil!17777) (Cons!17777 (h!23178 Regex!4458) (t!148845 List!17847)) )
))
(declare-datatypes ((Context!1720 0))(
  ( (Context!1721 (exprs!1360 List!17847)) )
))
(declare-fun prefixMatchZipperSequence!514 ((Set Context!1720) BalanceConc!11760 Int) Bool)

(declare-fun focus!166 (Regex!4458) (Set Context!1720))

(assert (=> d!488514 (= lt!584580 (prefixMatchZipperSequence!514 (focus!166 lt!584242) (++!4714 lt!584250 lt!584230) 0))))

(declare-fun lt!584581 () Unit!28726)

(declare-fun lt!584575 () Unit!28726)

(assert (=> d!488514 (= lt!584581 lt!584575)))

(declare-fun lt!584577 () List!17840)

(declare-fun lt!584578 () (Set Context!1720))

(declare-fun prefixMatchZipper!145 ((Set Context!1720) List!17840) Bool)

(assert (=> d!488514 (= (prefixMatch!393 lt!584242 lt!584577) (prefixMatchZipper!145 lt!584578 lt!584577))))

(declare-datatypes ((List!17848 0))(
  ( (Nil!17778) (Cons!17778 (h!23179 Context!1720) (t!148846 List!17848)) )
))
(declare-fun lt!584574 () List!17848)

(declare-fun prefixMatchZipperRegexEquiv!145 ((Set Context!1720) List!17848 Regex!4458 List!17840) Unit!28726)

(assert (=> d!488514 (= lt!584575 (prefixMatchZipperRegexEquiv!145 lt!584578 lt!584574 lt!584242 lt!584577))))

(assert (=> d!488514 (= lt!584577 (list!6966 (++!4714 lt!584250 lt!584230)))))

(declare-fun toList!906 ((Set Context!1720)) List!17848)

(assert (=> d!488514 (= lt!584574 (toList!906 (focus!166 lt!584242)))))

(assert (=> d!488514 (= lt!584578 (focus!166 lt!584242))))

(declare-fun lt!584576 () Unit!28726)

(declare-fun lt!584579 () Unit!28726)

(assert (=> d!488514 (= lt!584576 lt!584579)))

(declare-fun lt!584573 () (Set Context!1720))

(declare-fun lt!584582 () Int)

(declare-fun dropList!593 (BalanceConc!11760 Int) List!17840)

(assert (=> d!488514 (= (prefixMatchZipper!145 lt!584573 (dropList!593 (++!4714 lt!584250 lt!584230) lt!584582)) (prefixMatchZipperSequence!514 lt!584573 (++!4714 lt!584250 lt!584230) lt!584582))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!145 ((Set Context!1720) BalanceConc!11760 Int) Unit!28726)

(assert (=> d!488514 (= lt!584579 (lemmaprefixMatchZipperSequenceEquivalent!145 lt!584573 (++!4714 lt!584250 lt!584230) lt!584582))))

(assert (=> d!488514 (= lt!584582 0)))

(assert (=> d!488514 (= lt!584573 (focus!166 lt!584242))))

(declare-fun validRegex!1771 (Regex!4458) Bool)

(assert (=> d!488514 (validRegex!1771 lt!584242)))

(assert (=> d!488514 (= (prefixMatchZipperSequence!512 lt!584242 (++!4714 lt!584250 lt!584230)) lt!584580)))

(declare-fun bs!394581 () Bool)

(assert (= bs!394581 d!488514))

(declare-fun m!1948289 () Bool)

(assert (=> bs!394581 m!1948289))

(declare-fun m!1948291 () Bool)

(assert (=> bs!394581 m!1948291))

(declare-fun m!1948293 () Bool)

(assert (=> bs!394581 m!1948293))

(declare-fun m!1948295 () Bool)

(assert (=> bs!394581 m!1948295))

(declare-fun m!1948297 () Bool)

(assert (=> bs!394581 m!1948297))

(declare-fun m!1948299 () Bool)

(assert (=> bs!394581 m!1948299))

(declare-fun m!1948301 () Bool)

(assert (=> bs!394581 m!1948301))

(assert (=> bs!394581 m!1948299))

(assert (=> bs!394581 m!1947737))

(declare-fun m!1948303 () Bool)

(assert (=> bs!394581 m!1948303))

(assert (=> bs!394581 m!1947737))

(assert (=> bs!394581 m!1948295))

(assert (=> bs!394581 m!1947737))

(assert (=> bs!394581 m!1948289))

(declare-fun m!1948305 () Bool)

(assert (=> bs!394581 m!1948305))

(declare-fun m!1948307 () Bool)

(assert (=> bs!394581 m!1948307))

(assert (=> bs!394581 m!1947737))

(declare-fun m!1948309 () Bool)

(assert (=> bs!394581 m!1948309))

(declare-fun m!1948311 () Bool)

(assert (=> bs!394581 m!1948311))

(assert (=> bs!394581 m!1948299))

(assert (=> bs!394581 m!1947737))

(declare-fun m!1948313 () Bool)

(assert (=> bs!394581 m!1948313))

(assert (=> b!1622169 d!488514))

(declare-fun b!1622491 () Bool)

(declare-fun res!724890 () Bool)

(declare-fun e!1040637 () Bool)

(assert (=> b!1622491 (=> (not res!724890) (not e!1040637))))

(declare-fun ++!4717 (Conc!5908 Conc!5908) Conc!5908)

(assert (=> b!1622491 (= res!724890 (isBalanced!1775 (++!4717 (c!264129 lt!584250) (c!264129 lt!584230))))))

(declare-fun b!1622493 () Bool)

(declare-fun res!724888 () Bool)

(assert (=> b!1622493 (=> (not res!724888) (not e!1040637))))

(declare-fun height!898 (Conc!5908) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1622493 (= res!724888 (>= (height!898 (++!4717 (c!264129 lt!584250) (c!264129 lt!584230))) (max!0 (height!898 (c!264129 lt!584250)) (height!898 (c!264129 lt!584230)))))))

(declare-fun lt!584585 () BalanceConc!11760)

(declare-fun b!1622494 () Bool)

(assert (=> b!1622494 (= e!1040637 (= (list!6966 lt!584585) (++!4713 (list!6966 lt!584250) (list!6966 lt!584230))))))

(declare-fun d!488516 () Bool)

(assert (=> d!488516 e!1040637))

(declare-fun res!724891 () Bool)

(assert (=> d!488516 (=> (not res!724891) (not e!1040637))))

(declare-fun appendAssocInst!428 (Conc!5908 Conc!5908) Bool)

(assert (=> d!488516 (= res!724891 (appendAssocInst!428 (c!264129 lt!584250) (c!264129 lt!584230)))))

(assert (=> d!488516 (= lt!584585 (BalanceConc!11761 (++!4717 (c!264129 lt!584250) (c!264129 lt!584230))))))

(assert (=> d!488516 (= (++!4714 lt!584250 lt!584230) lt!584585)))

(declare-fun b!1622492 () Bool)

(declare-fun res!724889 () Bool)

(assert (=> b!1622492 (=> (not res!724889) (not e!1040637))))

(assert (=> b!1622492 (= res!724889 (<= (height!898 (++!4717 (c!264129 lt!584250) (c!264129 lt!584230))) (+ (max!0 (height!898 (c!264129 lt!584250)) (height!898 (c!264129 lt!584230))) 1)))))

(assert (= (and d!488516 res!724891) b!1622491))

(assert (= (and b!1622491 res!724890) b!1622492))

(assert (= (and b!1622492 res!724889) b!1622493))

(assert (= (and b!1622493 res!724888) b!1622494))

(declare-fun m!1948315 () Bool)

(assert (=> d!488516 m!1948315))

(declare-fun m!1948317 () Bool)

(assert (=> d!488516 m!1948317))

(assert (=> b!1622491 m!1948317))

(assert (=> b!1622491 m!1948317))

(declare-fun m!1948319 () Bool)

(assert (=> b!1622491 m!1948319))

(declare-fun m!1948321 () Bool)

(assert (=> b!1622494 m!1948321))

(assert (=> b!1622494 m!1947783))

(assert (=> b!1622494 m!1947771))

(assert (=> b!1622494 m!1947783))

(assert (=> b!1622494 m!1947771))

(declare-fun m!1948323 () Bool)

(assert (=> b!1622494 m!1948323))

(declare-fun m!1948325 () Bool)

(assert (=> b!1622492 m!1948325))

(assert (=> b!1622492 m!1948325))

(declare-fun m!1948327 () Bool)

(assert (=> b!1622492 m!1948327))

(declare-fun m!1948329 () Bool)

(assert (=> b!1622492 m!1948329))

(assert (=> b!1622492 m!1948327))

(assert (=> b!1622492 m!1948317))

(assert (=> b!1622492 m!1948317))

(declare-fun m!1948331 () Bool)

(assert (=> b!1622492 m!1948331))

(assert (=> b!1622493 m!1948325))

(assert (=> b!1622493 m!1948325))

(assert (=> b!1622493 m!1948327))

(assert (=> b!1622493 m!1948329))

(assert (=> b!1622493 m!1948327))

(assert (=> b!1622493 m!1948317))

(assert (=> b!1622493 m!1948317))

(assert (=> b!1622493 m!1948331))

(assert (=> b!1622169 d!488516))

(declare-fun d!488518 () Bool)

(declare-fun lt!584588 () C!9090)

(declare-fun apply!4516 (List!17840 Int) C!9090)

(assert (=> d!488518 (= lt!584588 (apply!4516 (list!6966 (charsOf!1779 (h!23172 (t!148806 tokens!457)))) 0))))

(declare-fun apply!4517 (Conc!5908 Int) C!9090)

(assert (=> d!488518 (= lt!584588 (apply!4517 (c!264129 (charsOf!1779 (h!23172 (t!148806 tokens!457)))) 0))))

(declare-fun e!1040640 () Bool)

(assert (=> d!488518 e!1040640))

(declare-fun res!724894 () Bool)

(assert (=> d!488518 (=> (not res!724894) (not e!1040640))))

(assert (=> d!488518 (= res!724894 (<= 0 0))))

(assert (=> d!488518 (= (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0) lt!584588)))

(declare-fun b!1622497 () Bool)

(assert (=> b!1622497 (= e!1040640 (< 0 (size!14242 (charsOf!1779 (h!23172 (t!148806 tokens!457))))))))

(assert (= (and d!488518 res!724894) b!1622497))

(assert (=> d!488518 m!1947739))

(assert (=> d!488518 m!1948091))

(assert (=> d!488518 m!1948091))

(declare-fun m!1948333 () Bool)

(assert (=> d!488518 m!1948333))

(declare-fun m!1948335 () Bool)

(assert (=> d!488518 m!1948335))

(assert (=> b!1622497 m!1947739))

(declare-fun m!1948337 () Bool)

(assert (=> b!1622497 m!1948337))

(assert (=> b!1622169 d!488518))

(declare-fun d!488520 () Bool)

(declare-fun lt!584591 () Unit!28726)

(declare-fun lemma!232 (List!17842 LexerInterface!2759 List!17842) Unit!28726)

(assert (=> d!488520 (= lt!584591 (lemma!232 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67216 () Int)

(declare-fun generalisedUnion!240 (List!17847) Regex!4458)

(declare-fun map!3677 (List!17842 Int) List!17847)

(assert (=> d!488520 (= (rulesRegex!520 thiss!17113 rules!1846) (generalisedUnion!240 (map!3677 rules!1846 lambda!67216)))))

(declare-fun bs!394582 () Bool)

(assert (= bs!394582 d!488520))

(declare-fun m!1948339 () Bool)

(assert (=> bs!394582 m!1948339))

(declare-fun m!1948341 () Bool)

(assert (=> bs!394582 m!1948341))

(assert (=> bs!394582 m!1948341))

(declare-fun m!1948343 () Bool)

(assert (=> bs!394582 m!1948343))

(assert (=> b!1622169 d!488520))

(declare-fun d!488522 () Bool)

(declare-fun lt!584594 () BalanceConc!11760)

(assert (=> d!488522 (= (list!6966 lt!584594) (originalCharacters!3944 (h!23172 (t!148806 tokens!457))))))

(declare-fun dynLambda!7931 (Int TokenValue!3220) BalanceConc!11760)

(assert (=> d!488522 (= lt!584594 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (value!98879 (h!23172 (t!148806 tokens!457)))))))

(assert (=> d!488522 (= (charsOf!1779 (h!23172 (t!148806 tokens!457))) lt!584594)))

(declare-fun b_lambda!51129 () Bool)

(assert (=> (not b_lambda!51129) (not d!488522)))

(declare-fun t!148818 () Bool)

(declare-fun tb!93207 () Bool)

(assert (=> (and b!1622164 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457)))))) t!148818) tb!93207))

(declare-fun b!1622502 () Bool)

(declare-fun e!1040643 () Bool)

(declare-fun tp!472117 () Bool)

(declare-fun inv!23165 (Conc!5908) Bool)

(assert (=> b!1622502 (= e!1040643 (and (inv!23165 (c!264129 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (value!98879 (h!23172 (t!148806 tokens!457)))))) tp!472117))))

(declare-fun result!112366 () Bool)

(declare-fun inv!23166 (BalanceConc!11760) Bool)

(assert (=> tb!93207 (= result!112366 (and (inv!23166 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (value!98879 (h!23172 (t!148806 tokens!457))))) e!1040643))))

(assert (= tb!93207 b!1622502))

(declare-fun m!1948345 () Bool)

(assert (=> b!1622502 m!1948345))

(declare-fun m!1948347 () Bool)

(assert (=> tb!93207 m!1948347))

(assert (=> d!488522 t!148818))

(declare-fun b_and!115069 () Bool)

(assert (= b_and!115055 (and (=> t!148818 result!112366) b_and!115069)))

(declare-fun t!148820 () Bool)

(declare-fun tb!93209 () Bool)

(assert (=> (and b!1622160 (= (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457)))))) t!148820) tb!93209))

(declare-fun result!112370 () Bool)

(assert (= result!112370 result!112366))

(assert (=> d!488522 t!148820))

(declare-fun b_and!115071 () Bool)

(assert (= b_and!115059 (and (=> t!148820 result!112370) b_and!115071)))

(declare-fun m!1948349 () Bool)

(assert (=> d!488522 m!1948349))

(declare-fun m!1948351 () Bool)

(assert (=> d!488522 m!1948351))

(assert (=> b!1622169 d!488522))

(declare-fun d!488524 () Bool)

(assert (=> d!488524 (= (separableTokensPredicate!701 thiss!17113 (h!23172 tokens!457) (h!23172 (t!148806 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!512 (rulesRegex!520 thiss!17113 rules!1846) (++!4714 (charsOf!1779 (h!23172 tokens!457)) (singletonSeq!1539 (apply!4513 (charsOf!1779 (h!23172 (t!148806 tokens!457))) 0))))))))

(declare-fun bs!394583 () Bool)

(assert (= bs!394583 d!488524))

(assert (=> bs!394583 m!1947739))

(assert (=> bs!394583 m!1947735))

(declare-fun m!1948353 () Bool)

(assert (=> bs!394583 m!1948353))

(declare-fun m!1948355 () Bool)

(assert (=> bs!394583 m!1948355))

(assert (=> bs!394583 m!1947739))

(assert (=> bs!394583 m!1947741))

(assert (=> bs!394583 m!1947735))

(assert (=> bs!394583 m!1947741))

(assert (=> bs!394583 m!1947745))

(assert (=> bs!394583 m!1947787))

(assert (=> bs!394583 m!1947787))

(assert (=> bs!394583 m!1947745))

(assert (=> bs!394583 m!1948353))

(assert (=> b!1622168 d!488524))

(declare-fun b!1622531 () Bool)

(declare-fun res!724914 () Bool)

(declare-fun e!1040660 () Bool)

(assert (=> b!1622531 (=> (not res!724914) (not e!1040660))))

(assert (=> b!1622531 (= res!724914 (isEmpty!10795 (tail!2349 lt!584245)))))

(declare-fun b!1622532 () Bool)

(declare-fun res!724916 () Bool)

(declare-fun e!1040663 () Bool)

(assert (=> b!1622532 (=> res!724916 e!1040663)))

(assert (=> b!1622532 (= res!724916 e!1040660)))

(declare-fun res!724915 () Bool)

(assert (=> b!1622532 (=> (not res!724915) (not e!1040660))))

(declare-fun lt!584597 () Bool)

(assert (=> b!1622532 (= res!724915 lt!584597)))

(declare-fun b!1622533 () Bool)

(declare-fun e!1040662 () Bool)

(declare-fun nullable!1310 (Regex!4458) Bool)

(assert (=> b!1622533 (= e!1040662 (nullable!1310 (regex!3130 (rule!4956 (h!23172 tokens!457)))))))

(declare-fun b!1622534 () Bool)

(declare-fun res!724912 () Bool)

(declare-fun e!1040664 () Bool)

(assert (=> b!1622534 (=> res!724912 e!1040664)))

(assert (=> b!1622534 (= res!724912 (not (isEmpty!10795 (tail!2349 lt!584245))))))

(declare-fun b!1622535 () Bool)

(declare-fun e!1040661 () Bool)

(assert (=> b!1622535 (= e!1040663 e!1040661)))

(declare-fun res!724918 () Bool)

(assert (=> b!1622535 (=> (not res!724918) (not e!1040661))))

(assert (=> b!1622535 (= res!724918 (not lt!584597))))

(declare-fun b!1622536 () Bool)

(declare-fun res!724913 () Bool)

(assert (=> b!1622536 (=> (not res!724913) (not e!1040660))))

(declare-fun call!105157 () Bool)

(assert (=> b!1622536 (= res!724913 (not call!105157))))

(declare-fun b!1622537 () Bool)

(assert (=> b!1622537 (= e!1040661 e!1040664)))

(declare-fun res!724917 () Bool)

(assert (=> b!1622537 (=> res!724917 e!1040664)))

(assert (=> b!1622537 (= res!724917 call!105157)))

(declare-fun b!1622538 () Bool)

(declare-fun res!724911 () Bool)

(assert (=> b!1622538 (=> res!724911 e!1040663)))

(assert (=> b!1622538 (= res!724911 (not (is-ElementMatch!4458 (regex!3130 (rule!4956 (h!23172 tokens!457))))))))

(declare-fun e!1040659 () Bool)

(assert (=> b!1622538 (= e!1040659 e!1040663)))

(declare-fun b!1622539 () Bool)

(assert (=> b!1622539 (= e!1040659 (not lt!584597))))

(declare-fun b!1622540 () Bool)

(declare-fun e!1040658 () Bool)

(assert (=> b!1622540 (= e!1040658 e!1040659)))

(declare-fun c!264182 () Bool)

(assert (=> b!1622540 (= c!264182 (is-EmptyLang!4458 (regex!3130 (rule!4956 (h!23172 tokens!457)))))))

(declare-fun bm!105152 () Bool)

(assert (=> bm!105152 (= call!105157 (isEmpty!10795 lt!584245))))

(declare-fun b!1622542 () Bool)

(declare-fun derivativeStep!1075 (Regex!4458 C!9090) Regex!4458)

(assert (=> b!1622542 (= e!1040662 (matchR!1957 (derivativeStep!1075 (regex!3130 (rule!4956 (h!23172 tokens!457))) (head!3402 lt!584245)) (tail!2349 lt!584245)))))

(declare-fun b!1622543 () Bool)

(assert (=> b!1622543 (= e!1040660 (= (head!3402 lt!584245) (c!264130 (regex!3130 (rule!4956 (h!23172 tokens!457))))))))

(declare-fun b!1622544 () Bool)

(assert (=> b!1622544 (= e!1040664 (not (= (head!3402 lt!584245) (c!264130 (regex!3130 (rule!4956 (h!23172 tokens!457)))))))))

(declare-fun b!1622541 () Bool)

(assert (=> b!1622541 (= e!1040658 (= lt!584597 call!105157))))

(declare-fun d!488526 () Bool)

(assert (=> d!488526 e!1040658))

(declare-fun c!264183 () Bool)

(assert (=> d!488526 (= c!264183 (is-EmptyExpr!4458 (regex!3130 (rule!4956 (h!23172 tokens!457)))))))

(assert (=> d!488526 (= lt!584597 e!1040662)))

(declare-fun c!264181 () Bool)

(assert (=> d!488526 (= c!264181 (isEmpty!10795 lt!584245))))

(assert (=> d!488526 (validRegex!1771 (regex!3130 (rule!4956 (h!23172 tokens!457))))))

(assert (=> d!488526 (= (matchR!1957 (regex!3130 (rule!4956 (h!23172 tokens!457))) lt!584245) lt!584597)))

(assert (= (and d!488526 c!264181) b!1622533))

(assert (= (and d!488526 (not c!264181)) b!1622542))

(assert (= (and d!488526 c!264183) b!1622541))

(assert (= (and d!488526 (not c!264183)) b!1622540))

(assert (= (and b!1622540 c!264182) b!1622539))

(assert (= (and b!1622540 (not c!264182)) b!1622538))

(assert (= (and b!1622538 (not res!724911)) b!1622532))

(assert (= (and b!1622532 res!724915) b!1622536))

(assert (= (and b!1622536 res!724913) b!1622531))

(assert (= (and b!1622531 res!724914) b!1622543))

(assert (= (and b!1622532 (not res!724916)) b!1622535))

(assert (= (and b!1622535 res!724918) b!1622537))

(assert (= (and b!1622537 (not res!724917)) b!1622534))

(assert (= (and b!1622534 (not res!724912)) b!1622544))

(assert (= (or b!1622541 b!1622536 b!1622537) bm!105152))

(assert (=> b!1622542 m!1948159))

(assert (=> b!1622542 m!1948159))

(declare-fun m!1948357 () Bool)

(assert (=> b!1622542 m!1948357))

(assert (=> b!1622542 m!1948163))

(assert (=> b!1622542 m!1948357))

(assert (=> b!1622542 m!1948163))

(declare-fun m!1948359 () Bool)

(assert (=> b!1622542 m!1948359))

(assert (=> b!1622544 m!1948159))

(declare-fun m!1948361 () Bool)

(assert (=> d!488526 m!1948361))

(declare-fun m!1948363 () Bool)

(assert (=> d!488526 m!1948363))

(assert (=> b!1622543 m!1948159))

(declare-fun m!1948365 () Bool)

(assert (=> b!1622533 m!1948365))

(assert (=> bm!105152 m!1948361))

(assert (=> b!1622534 m!1948163))

(assert (=> b!1622534 m!1948163))

(declare-fun m!1948367 () Bool)

(assert (=> b!1622534 m!1948367))

(assert (=> b!1622531 m!1948163))

(assert (=> b!1622531 m!1948163))

(assert (=> b!1622531 m!1948367))

(assert (=> b!1622147 d!488526))

(declare-fun d!488528 () Bool)

(declare-fun res!724929 () Bool)

(declare-fun e!1040673 () Bool)

(assert (=> d!488528 (=> res!724929 e!1040673)))

(assert (=> d!488528 (= res!724929 (or (not (is-Cons!17771 tokens!457)) (not (is-Cons!17771 (t!148806 tokens!457)))))))

(assert (=> d!488528 (= (tokensListTwoByTwoPredicateSeparableList!452 thiss!17113 tokens!457 rules!1846) e!1040673)))

(declare-fun b!1622557 () Bool)

(declare-fun e!1040674 () Bool)

(assert (=> b!1622557 (= e!1040673 e!1040674)))

(declare-fun res!724930 () Bool)

(assert (=> b!1622557 (=> (not res!724930) (not e!1040674))))

(assert (=> b!1622557 (= res!724930 (separableTokensPredicate!701 thiss!17113 (h!23172 tokens!457) (h!23172 (t!148806 tokens!457)) rules!1846))))

(declare-fun lt!584619 () Unit!28726)

(declare-fun Unit!28745 () Unit!28726)

(assert (=> b!1622557 (= lt!584619 Unit!28745)))

(assert (=> b!1622557 (> (size!14242 (charsOf!1779 (h!23172 (t!148806 tokens!457)))) 0)))

(declare-fun lt!584618 () Unit!28726)

(declare-fun Unit!28746 () Unit!28726)

(assert (=> b!1622557 (= lt!584618 Unit!28746)))

(assert (=> b!1622557 (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 (t!148806 tokens!457)))))

(declare-fun lt!584614 () Unit!28726)

(declare-fun Unit!28747 () Unit!28726)

(assert (=> b!1622557 (= lt!584614 Unit!28747)))

(assert (=> b!1622557 (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 tokens!457))))

(declare-fun lt!584616 () Unit!28726)

(declare-fun lt!584617 () Unit!28726)

(assert (=> b!1622557 (= lt!584616 lt!584617)))

(assert (=> b!1622557 (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 (t!148806 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!558 (LexerInterface!2759 List!17842 List!17841 Token!5826) Unit!28726)

(assert (=> b!1622557 (= lt!584617 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!558 thiss!17113 rules!1846 tokens!457 (h!23172 (t!148806 tokens!457))))))

(declare-fun lt!584613 () Unit!28726)

(declare-fun lt!584615 () Unit!28726)

(assert (=> b!1622557 (= lt!584613 lt!584615)))

(assert (=> b!1622557 (rulesProduceIndividualToken!1411 thiss!17113 rules!1846 (h!23172 tokens!457))))

(assert (=> b!1622557 (= lt!584615 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!558 thiss!17113 rules!1846 tokens!457 (h!23172 tokens!457)))))

(declare-fun b!1622558 () Bool)

(assert (=> b!1622558 (= e!1040674 (tokensListTwoByTwoPredicateSeparableList!452 thiss!17113 (Cons!17771 (h!23172 (t!148806 tokens!457)) (t!148806 (t!148806 tokens!457))) rules!1846))))

(assert (= (and d!488528 (not res!724929)) b!1622557))

(assert (= (and b!1622557 res!724930) b!1622558))

(assert (=> b!1622557 m!1947777))

(assert (=> b!1622557 m!1947707))

(assert (=> b!1622557 m!1947739))

(assert (=> b!1622557 m!1947739))

(assert (=> b!1622557 m!1948337))

(declare-fun m!1948375 () Bool)

(assert (=> b!1622557 m!1948375))

(declare-fun m!1948377 () Bool)

(assert (=> b!1622557 m!1948377))

(declare-fun m!1948379 () Bool)

(assert (=> b!1622557 m!1948379))

(declare-fun m!1948381 () Bool)

(assert (=> b!1622558 m!1948381))

(assert (=> b!1622170 d!488528))

(declare-fun d!488532 () Bool)

(assert (=> d!488532 (= (list!6965 lt!584227) (list!6969 (c!264131 lt!584227)))))

(declare-fun bs!394584 () Bool)

(assert (= bs!394584 d!488532))

(declare-fun m!1948383 () Bool)

(assert (=> bs!394584 m!1948383))

(assert (=> b!1622149 d!488532))

(declare-fun d!488534 () Bool)

(declare-fun e!1040681 () Bool)

(assert (=> d!488534 e!1040681))

(declare-fun res!724935 () Bool)

(assert (=> d!488534 (=> (not res!724935) (not e!1040681))))

(declare-fun isBalanced!1776 (Conc!5909) Bool)

(declare-fun prepend!652 (Conc!5909 Token!5826) Conc!5909)

(assert (=> d!488534 (= res!724935 (isBalanced!1776 (prepend!652 (c!264131 (seqFromList!2009 (t!148806 (t!148806 tokens!457)))) (h!23172 (t!148806 tokens!457)))))))

(declare-fun lt!584622 () BalanceConc!11762)

(assert (=> d!488534 (= lt!584622 (BalanceConc!11763 (prepend!652 (c!264131 (seqFromList!2009 (t!148806 (t!148806 tokens!457)))) (h!23172 (t!148806 tokens!457)))))))

(assert (=> d!488534 (= (prepend!650 (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (h!23172 (t!148806 tokens!457))) lt!584622)))

(declare-fun b!1622568 () Bool)

(assert (=> b!1622568 (= e!1040681 (= (list!6965 lt!584622) (Cons!17771 (h!23172 (t!148806 tokens!457)) (list!6965 (seqFromList!2009 (t!148806 (t!148806 tokens!457)))))))))

(assert (= (and d!488534 res!724935) b!1622568))

(declare-fun m!1948397 () Bool)

(assert (=> d!488534 m!1948397))

(assert (=> d!488534 m!1948397))

(declare-fun m!1948399 () Bool)

(assert (=> d!488534 m!1948399))

(declare-fun m!1948401 () Bool)

(assert (=> b!1622568 m!1948401))

(assert (=> b!1622568 m!1947749))

(declare-fun m!1948403 () Bool)

(assert (=> b!1622568 m!1948403))

(assert (=> b!1622149 d!488534))

(declare-fun d!488538 () Bool)

(assert (=> d!488538 (= (list!6965 (prepend!650 (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (h!23172 (t!148806 tokens!457)))) (list!6969 (c!264131 (prepend!650 (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (h!23172 (t!148806 tokens!457))))))))

(declare-fun bs!394585 () Bool)

(assert (= bs!394585 d!488538))

(declare-fun m!1948405 () Bool)

(assert (=> bs!394585 m!1948405))

(assert (=> b!1622149 d!488538))

(declare-fun d!488540 () Bool)

(declare-fun fromListB!881 (List!17841) BalanceConc!11762)

(assert (=> d!488540 (= (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (fromListB!881 (t!148806 (t!148806 tokens!457))))))

(declare-fun bs!394586 () Bool)

(assert (= bs!394586 d!488540))

(declare-fun m!1948407 () Bool)

(assert (=> bs!394586 m!1948407))

(assert (=> b!1622149 d!488540))

(declare-fun d!488542 () Bool)

(assert (=> d!488542 (= (list!6965 (_1!10064 lt!584235)) (list!6965 (prepend!650 (seqFromList!2009 (t!148806 (t!148806 tokens!457))) (h!23172 (t!148806 tokens!457)))))))

(declare-fun lt!584630 () Unit!28726)

(declare-fun choose!9762 (Token!5826 List!17841 BalanceConc!11762) Unit!28726)

(assert (=> d!488542 (= lt!584630 (choose!9762 (h!23172 (t!148806 tokens!457)) (t!148806 (t!148806 tokens!457)) (_1!10064 lt!584235)))))

(declare-fun $colon$colon!322 (List!17841 Token!5826) List!17841)

(assert (=> d!488542 (= (list!6965 (_1!10064 lt!584235)) (list!6965 (seqFromList!2009 ($colon$colon!322 (t!148806 (t!148806 tokens!457)) (h!23172 (t!148806 tokens!457))))))))

(assert (=> d!488542 (= (seqFromListBHdTlConstructive!207 (h!23172 (t!148806 tokens!457)) (t!148806 (t!148806 tokens!457)) (_1!10064 lt!584235)) lt!584630)))

(declare-fun bs!394590 () Bool)

(assert (= bs!394590 d!488542))

(declare-fun m!1948435 () Bool)

(assert (=> bs!394590 m!1948435))

(declare-fun m!1948437 () Bool)

(assert (=> bs!394590 m!1948437))

(declare-fun m!1948439 () Bool)

(assert (=> bs!394590 m!1948439))

(assert (=> bs!394590 m!1947751))

(assert (=> bs!394590 m!1947753))

(assert (=> bs!394590 m!1947683))

(assert (=> bs!394590 m!1947749))

(assert (=> bs!394590 m!1947749))

(assert (=> bs!394590 m!1947751))

(assert (=> bs!394590 m!1948439))

(declare-fun m!1948441 () Bool)

(assert (=> bs!394590 m!1948441))

(assert (=> bs!394590 m!1948437))

(assert (=> b!1622149 d!488542))

(declare-fun d!488552 () Bool)

(declare-fun isEmpty!10803 (Option!3278) Bool)

(assert (=> d!488552 (= (isDefined!2645 (maxPrefixZipperSequence!654 thiss!17113 rules!1846 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457))))) (not (isEmpty!10803 (maxPrefixZipperSequence!654 thiss!17113 rules!1846 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))

(declare-fun bs!394592 () Bool)

(assert (= bs!394592 d!488552))

(assert (=> bs!394592 m!1947699))

(declare-fun m!1948445 () Bool)

(assert (=> bs!394592 m!1948445))

(assert (=> b!1622166 d!488552))

(declare-fun b!1622598 () Bool)

(declare-fun e!1040704 () Bool)

(declare-fun e!1040703 () Bool)

(assert (=> b!1622598 (= e!1040704 e!1040703)))

(declare-fun res!724959 () Bool)

(assert (=> b!1622598 (=> res!724959 e!1040703)))

(declare-fun lt!584661 () Option!3278)

(assert (=> b!1622598 (= res!724959 (not (isDefined!2645 lt!584661)))))

(declare-fun b!1622599 () Bool)

(declare-fun e!1040706 () Bool)

(declare-fun get!5114 (Option!3278) tuple2!17328)

(declare-fun maxPrefixZipper!299 (LexerInterface!2759 List!17842 List!17840) Option!3277)

(assert (=> b!1622599 (= e!1040706 (= (list!6966 (_2!10066 (get!5114 lt!584661))) (_2!10065 (get!5112 (maxPrefixZipper!299 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))))

(declare-fun b!1622600 () Bool)

(declare-fun e!1040708 () Option!3278)

(declare-fun call!105160 () Option!3278)

(assert (=> b!1622600 (= e!1040708 call!105160)))

(declare-fun bm!105155 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!309 (LexerInterface!2759 Rule!6060 BalanceConc!11760) Option!3278)

(assert (=> bm!105155 (= call!105160 (maxPrefixOneRuleZipperSequence!309 thiss!17113 (h!23173 rules!1846) (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))

(declare-fun d!488556 () Bool)

(assert (=> d!488556 e!1040704))

(declare-fun res!724958 () Bool)

(assert (=> d!488556 (=> (not res!724958) (not e!1040704))))

(assert (=> d!488556 (= res!724958 (= (isDefined!2645 lt!584661) (isDefined!2644 (maxPrefixZipper!299 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457))))))))))

(assert (=> d!488556 (= lt!584661 e!1040708)))

(declare-fun c!264190 () Bool)

(assert (=> d!488556 (= c!264190 (and (is-Cons!17772 rules!1846) (is-Nil!17772 (t!148807 rules!1846))))))

(declare-fun lt!584657 () Unit!28726)

(declare-fun lt!584656 () Unit!28726)

(assert (=> d!488556 (= lt!584657 lt!584656)))

(declare-fun lt!584655 () List!17840)

(declare-fun lt!584659 () List!17840)

(assert (=> d!488556 (isPrefix!1390 lt!584655 lt!584659)))

(declare-fun lemmaIsPrefixRefl!953 (List!17840 List!17840) Unit!28726)

(assert (=> d!488556 (= lt!584656 (lemmaIsPrefixRefl!953 lt!584655 lt!584659))))

(assert (=> d!488556 (= lt!584659 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))

(assert (=> d!488556 (= lt!584655 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))

(assert (=> d!488556 (rulesValidInductive!965 thiss!17113 rules!1846)))

(assert (=> d!488556 (= (maxPrefixZipperSequence!654 thiss!17113 rules!1846 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))) lt!584661)))

(declare-fun b!1622601 () Bool)

(declare-fun e!1040705 () Bool)

(assert (=> b!1622601 (= e!1040705 (= (list!6966 (_2!10066 (get!5114 lt!584661))) (_2!10065 (get!5112 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))))

(declare-fun b!1622602 () Bool)

(declare-fun lt!584660 () Option!3278)

(declare-fun lt!584658 () Option!3278)

(assert (=> b!1622602 (= e!1040708 (ite (and (is-None!3277 lt!584660) (is-None!3277 lt!584658)) None!3277 (ite (is-None!3277 lt!584658) lt!584660 (ite (is-None!3277 lt!584660) lt!584658 (ite (>= (size!14239 (_1!10066 (v!24294 lt!584660))) (size!14239 (_1!10066 (v!24294 lt!584658)))) lt!584660 lt!584658)))))))

(assert (=> b!1622602 (= lt!584660 call!105160)))

(assert (=> b!1622602 (= lt!584658 (maxPrefixZipperSequence!654 thiss!17113 (t!148807 rules!1846) (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))

(declare-fun b!1622603 () Bool)

(declare-fun res!724962 () Bool)

(assert (=> b!1622603 (=> (not res!724962) (not e!1040704))))

(declare-fun e!1040707 () Bool)

(assert (=> b!1622603 (= res!724962 e!1040707)))

(declare-fun res!724957 () Bool)

(assert (=> b!1622603 (=> res!724957 e!1040707)))

(assert (=> b!1622603 (= res!724957 (not (isDefined!2645 lt!584661)))))

(declare-fun b!1622604 () Bool)

(assert (=> b!1622604 (= e!1040707 e!1040706)))

(declare-fun res!724960 () Bool)

(assert (=> b!1622604 (=> (not res!724960) (not e!1040706))))

(assert (=> b!1622604 (= res!724960 (= (_1!10066 (get!5114 lt!584661)) (_1!10065 (get!5112 (maxPrefixZipper!299 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))))

(declare-fun b!1622605 () Bool)

(assert (=> b!1622605 (= e!1040703 e!1040705)))

(declare-fun res!724961 () Bool)

(assert (=> b!1622605 (=> (not res!724961) (not e!1040705))))

(assert (=> b!1622605 (= res!724961 (= (_1!10066 (get!5114 lt!584661)) (_1!10065 (get!5112 (maxPrefix!1323 thiss!17113 rules!1846 (list!6966 (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457)))))))))))

(assert (= (and d!488556 c!264190) b!1622600))

(assert (= (and d!488556 (not c!264190)) b!1622602))

(assert (= (or b!1622600 b!1622602) bm!105155))

(assert (= (and d!488556 res!724958) b!1622603))

(assert (= (and b!1622603 (not res!724957)) b!1622604))

(assert (= (and b!1622604 res!724960) b!1622599))

(assert (= (and b!1622603 res!724962) b!1622598))

(assert (= (and b!1622598 (not res!724959)) b!1622605))

(assert (= (and b!1622605 res!724961) b!1622601))

(declare-fun m!1948497 () Bool)

(assert (=> b!1622605 m!1948497))

(assert (=> b!1622605 m!1947697))

(declare-fun m!1948499 () Bool)

(assert (=> b!1622605 m!1948499))

(assert (=> b!1622605 m!1948499))

(declare-fun m!1948501 () Bool)

(assert (=> b!1622605 m!1948501))

(assert (=> b!1622605 m!1948501))

(declare-fun m!1948503 () Bool)

(assert (=> b!1622605 m!1948503))

(assert (=> d!488556 m!1947757))

(declare-fun m!1948505 () Bool)

(assert (=> d!488556 m!1948505))

(declare-fun m!1948507 () Bool)

(assert (=> d!488556 m!1948507))

(declare-fun m!1948509 () Bool)

(assert (=> d!488556 m!1948509))

(declare-fun m!1948511 () Bool)

(assert (=> d!488556 m!1948511))

(assert (=> d!488556 m!1947697))

(assert (=> d!488556 m!1948499))

(declare-fun m!1948513 () Bool)

(assert (=> d!488556 m!1948513))

(assert (=> d!488556 m!1948499))

(assert (=> d!488556 m!1948505))

(assert (=> b!1622601 m!1948499))

(assert (=> b!1622601 m!1948501))

(declare-fun m!1948515 () Bool)

(assert (=> b!1622601 m!1948515))

(assert (=> b!1622601 m!1948501))

(assert (=> b!1622601 m!1948503))

(assert (=> b!1622601 m!1947697))

(assert (=> b!1622601 m!1948499))

(assert (=> b!1622601 m!1948497))

(assert (=> bm!105155 m!1947697))

(declare-fun m!1948517 () Bool)

(assert (=> bm!105155 m!1948517))

(assert (=> b!1622598 m!1948511))

(assert (=> b!1622604 m!1948497))

(assert (=> b!1622604 m!1947697))

(assert (=> b!1622604 m!1948499))

(assert (=> b!1622604 m!1948499))

(assert (=> b!1622604 m!1948505))

(assert (=> b!1622604 m!1948505))

(declare-fun m!1948519 () Bool)

(assert (=> b!1622604 m!1948519))

(assert (=> b!1622603 m!1948511))

(assert (=> b!1622602 m!1947697))

(declare-fun m!1948521 () Bool)

(assert (=> b!1622602 m!1948521))

(assert (=> b!1622599 m!1948515))

(assert (=> b!1622599 m!1947697))

(assert (=> b!1622599 m!1948499))

(assert (=> b!1622599 m!1948497))

(assert (=> b!1622599 m!1948499))

(assert (=> b!1622599 m!1948505))

(assert (=> b!1622599 m!1948505))

(assert (=> b!1622599 m!1948519))

(assert (=> b!1622166 d!488556))

(declare-fun d!488582 () Bool)

(assert (=> d!488582 (= (seqFromList!2010 (originalCharacters!3944 (h!23172 tokens!457))) (fromListB!880 (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun bs!394600 () Bool)

(assert (= bs!394600 d!488582))

(declare-fun m!1948523 () Bool)

(assert (=> bs!394600 m!1948523))

(assert (=> b!1622166 d!488582))

(declare-fun d!488584 () Bool)

(declare-fun lt!584664 () C!9090)

(assert (=> d!488584 (= lt!584664 (head!3402 (list!6966 lt!584233)))))

(declare-fun head!3407 (Conc!5908) C!9090)

(assert (=> d!488584 (= lt!584664 (head!3407 (c!264129 lt!584233)))))

(assert (=> d!488584 (not (isEmpty!10800 lt!584233))))

(assert (=> d!488584 (= (head!3403 lt!584233) lt!584664)))

(declare-fun bs!394601 () Bool)

(assert (= bs!394601 d!488584))

(assert (=> bs!394601 m!1947797))

(assert (=> bs!394601 m!1947797))

(declare-fun m!1948525 () Bool)

(assert (=> bs!394601 m!1948525))

(declare-fun m!1948527 () Bool)

(assert (=> bs!394601 m!1948527))

(declare-fun m!1948529 () Bool)

(assert (=> bs!394601 m!1948529))

(assert (=> b!1622166 d!488584))

(declare-fun d!488586 () Bool)

(declare-fun list!6970 (Conc!5908) List!17840)

(assert (=> d!488586 (= (list!6966 lt!584251) (list!6970 (c!264129 lt!584251)))))

(declare-fun bs!394602 () Bool)

(assert (= bs!394602 d!488586))

(declare-fun m!1948531 () Bool)

(assert (=> bs!394602 m!1948531))

(assert (=> b!1622145 d!488586))

(declare-fun d!488588 () Bool)

(declare-fun lt!584667 () BalanceConc!11760)

(assert (=> d!488588 (= (list!6966 lt!584667) (printList!874 thiss!17113 (list!6965 lt!584232)))))

(assert (=> d!488588 (= lt!584667 (printTailRec!812 thiss!17113 lt!584232 0 (BalanceConc!11761 Empty!5908)))))

(assert (=> d!488588 (= (print!1290 thiss!17113 lt!584232) lt!584667)))

(declare-fun bs!394603 () Bool)

(assert (= bs!394603 d!488588))

(declare-fun m!1948533 () Bool)

(assert (=> bs!394603 m!1948533))

(declare-fun m!1948535 () Bool)

(assert (=> bs!394603 m!1948535))

(assert (=> bs!394603 m!1948535))

(declare-fun m!1948537 () Bool)

(assert (=> bs!394603 m!1948537))

(assert (=> bs!394603 m!1947709))

(assert (=> b!1622145 d!488588))

(declare-fun b!1622646 () Bool)

(declare-fun e!1040735 () Bool)

(declare-fun e!1040734 () Bool)

(assert (=> b!1622646 (= e!1040735 e!1040734)))

(declare-fun res!724990 () Bool)

(assert (=> b!1622646 (=> (not res!724990) (not e!1040734))))

(declare-fun lt!584685 () Option!3277)

(assert (=> b!1622646 (= res!724990 (isDefined!2644 lt!584685))))

(declare-fun b!1622647 () Bool)

(declare-fun e!1040733 () Option!3277)

(declare-fun lt!584687 () Option!3277)

(declare-fun lt!584684 () Option!3277)

(assert (=> b!1622647 (= e!1040733 (ite (and (is-None!3276 lt!584687) (is-None!3276 lt!584684)) None!3276 (ite (is-None!3276 lt!584684) lt!584687 (ite (is-None!3276 lt!584687) lt!584684 (ite (>= (size!14239 (_1!10065 (v!24293 lt!584687))) (size!14239 (_1!10065 (v!24293 lt!584684)))) lt!584687 lt!584684)))))))

(declare-fun call!105163 () Option!3277)

(assert (=> b!1622647 (= lt!584687 call!105163)))

(assert (=> b!1622647 (= lt!584684 (maxPrefix!1323 thiss!17113 (t!148807 rules!1846) lt!584253))))

(declare-fun b!1622648 () Bool)

(declare-fun res!724992 () Bool)

(assert (=> b!1622648 (=> (not res!724992) (not e!1040734))))

(assert (=> b!1622648 (= res!724992 (= (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584685)))) (originalCharacters!3944 (_1!10065 (get!5112 lt!584685)))))))

(declare-fun d!488590 () Bool)

(assert (=> d!488590 e!1040735))

(declare-fun res!724991 () Bool)

(assert (=> d!488590 (=> res!724991 e!1040735)))

(declare-fun isEmpty!10805 (Option!3277) Bool)

(assert (=> d!488590 (= res!724991 (isEmpty!10805 lt!584685))))

(assert (=> d!488590 (= lt!584685 e!1040733)))

(declare-fun c!264193 () Bool)

(assert (=> d!488590 (= c!264193 (and (is-Cons!17772 rules!1846) (is-Nil!17772 (t!148807 rules!1846))))))

(declare-fun lt!584688 () Unit!28726)

(declare-fun lt!584686 () Unit!28726)

(assert (=> d!488590 (= lt!584688 lt!584686)))

(assert (=> d!488590 (isPrefix!1390 lt!584253 lt!584253)))

(assert (=> d!488590 (= lt!584686 (lemmaIsPrefixRefl!953 lt!584253 lt!584253))))

(assert (=> d!488590 (rulesValidInductive!965 thiss!17113 rules!1846)))

(assert (=> d!488590 (= (maxPrefix!1323 thiss!17113 rules!1846 lt!584253) lt!584685)))

(declare-fun b!1622649 () Bool)

(declare-fun res!724987 () Bool)

(assert (=> b!1622649 (=> (not res!724987) (not e!1040734))))

(assert (=> b!1622649 (= res!724987 (matchR!1957 (regex!3130 (rule!4956 (_1!10065 (get!5112 lt!584685)))) (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584685))))))))

(declare-fun b!1622650 () Bool)

(assert (=> b!1622650 (= e!1040733 call!105163)))

(declare-fun b!1622651 () Bool)

(declare-fun res!724989 () Bool)

(assert (=> b!1622651 (=> (not res!724989) (not e!1040734))))

(assert (=> b!1622651 (= res!724989 (= (++!4713 (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584685)))) (_2!10065 (get!5112 lt!584685))) lt!584253))))

(declare-fun b!1622652 () Bool)

(declare-fun res!724988 () Bool)

(assert (=> b!1622652 (=> (not res!724988) (not e!1040734))))

(assert (=> b!1622652 (= res!724988 (< (size!14241 (_2!10065 (get!5112 lt!584685))) (size!14241 lt!584253)))))

(declare-fun b!1622653 () Bool)

(declare-fun res!724986 () Bool)

(assert (=> b!1622653 (=> (not res!724986) (not e!1040734))))

(declare-fun apply!4518 (TokenValueInjection!6100 BalanceConc!11760) TokenValue!3220)

(assert (=> b!1622653 (= res!724986 (= (value!98879 (_1!10065 (get!5112 lt!584685))) (apply!4518 (transformation!3130 (rule!4956 (_1!10065 (get!5112 lt!584685)))) (seqFromList!2010 (originalCharacters!3944 (_1!10065 (get!5112 lt!584685)))))))))

(declare-fun bm!105158 () Bool)

(declare-fun maxPrefixOneRule!769 (LexerInterface!2759 Rule!6060 List!17840) Option!3277)

(assert (=> bm!105158 (= call!105163 (maxPrefixOneRule!769 thiss!17113 (h!23173 rules!1846) lt!584253))))

(declare-fun b!1622654 () Bool)

(declare-fun contains!3107 (List!17842 Rule!6060) Bool)

(assert (=> b!1622654 (= e!1040734 (contains!3107 rules!1846 (rule!4956 (_1!10065 (get!5112 lt!584685)))))))

(assert (= (and d!488590 c!264193) b!1622650))

(assert (= (and d!488590 (not c!264193)) b!1622647))

(assert (= (or b!1622650 b!1622647) bm!105158))

(assert (= (and d!488590 (not res!724991)) b!1622646))

(assert (= (and b!1622646 res!724990) b!1622648))

(assert (= (and b!1622648 res!724992) b!1622652))

(assert (= (and b!1622652 res!724988) b!1622651))

(assert (= (and b!1622651 res!724989) b!1622653))

(assert (= (and b!1622653 res!724986) b!1622649))

(assert (= (and b!1622649 res!724987) b!1622654))

(declare-fun m!1948549 () Bool)

(assert (=> d!488590 m!1948549))

(declare-fun m!1948551 () Bool)

(assert (=> d!488590 m!1948551))

(declare-fun m!1948553 () Bool)

(assert (=> d!488590 m!1948553))

(assert (=> d!488590 m!1947757))

(declare-fun m!1948555 () Bool)

(assert (=> b!1622652 m!1948555))

(declare-fun m!1948557 () Bool)

(assert (=> b!1622652 m!1948557))

(declare-fun m!1948559 () Bool)

(assert (=> b!1622652 m!1948559))

(assert (=> b!1622653 m!1948555))

(declare-fun m!1948561 () Bool)

(assert (=> b!1622653 m!1948561))

(assert (=> b!1622653 m!1948561))

(declare-fun m!1948563 () Bool)

(assert (=> b!1622653 m!1948563))

(declare-fun m!1948565 () Bool)

(assert (=> b!1622647 m!1948565))

(assert (=> b!1622651 m!1948555))

(declare-fun m!1948567 () Bool)

(assert (=> b!1622651 m!1948567))

(assert (=> b!1622651 m!1948567))

(declare-fun m!1948569 () Bool)

(assert (=> b!1622651 m!1948569))

(assert (=> b!1622651 m!1948569))

(declare-fun m!1948571 () Bool)

(assert (=> b!1622651 m!1948571))

(declare-fun m!1948573 () Bool)

(assert (=> bm!105158 m!1948573))

(assert (=> b!1622648 m!1948555))

(assert (=> b!1622648 m!1948567))

(assert (=> b!1622648 m!1948567))

(assert (=> b!1622648 m!1948569))

(assert (=> b!1622654 m!1948555))

(declare-fun m!1948575 () Bool)

(assert (=> b!1622654 m!1948575))

(declare-fun m!1948577 () Bool)

(assert (=> b!1622646 m!1948577))

(assert (=> b!1622649 m!1948555))

(assert (=> b!1622649 m!1948567))

(assert (=> b!1622649 m!1948567))

(assert (=> b!1622649 m!1948569))

(assert (=> b!1622649 m!1948569))

(declare-fun m!1948579 () Bool)

(assert (=> b!1622649 m!1948579))

(assert (=> b!1622145 d!488590))

(declare-fun d!488596 () Bool)

(declare-fun c!264196 () Bool)

(assert (=> d!488596 (= c!264196 (is-Cons!17771 (Cons!17771 (h!23172 tokens!457) Nil!17771)))))

(declare-fun e!1040738 () List!17840)

(assert (=> d!488596 (= (printList!874 thiss!17113 (Cons!17771 (h!23172 tokens!457) Nil!17771)) e!1040738)))

(declare-fun b!1622659 () Bool)

(assert (=> b!1622659 (= e!1040738 (++!4713 (list!6966 (charsOf!1779 (h!23172 (Cons!17771 (h!23172 tokens!457) Nil!17771)))) (printList!874 thiss!17113 (t!148806 (Cons!17771 (h!23172 tokens!457) Nil!17771)))))))

(declare-fun b!1622660 () Bool)

(assert (=> b!1622660 (= e!1040738 Nil!17770)))

(assert (= (and d!488596 c!264196) b!1622659))

(assert (= (and d!488596 (not c!264196)) b!1622660))

(declare-fun m!1948581 () Bool)

(assert (=> b!1622659 m!1948581))

(assert (=> b!1622659 m!1948581))

(declare-fun m!1948583 () Bool)

(assert (=> b!1622659 m!1948583))

(declare-fun m!1948585 () Bool)

(assert (=> b!1622659 m!1948585))

(assert (=> b!1622659 m!1948583))

(assert (=> b!1622659 m!1948585))

(declare-fun m!1948587 () Bool)

(assert (=> b!1622659 m!1948587))

(assert (=> b!1622145 d!488596))

(declare-fun d!488598 () Bool)

(declare-fun e!1040741 () Bool)

(assert (=> d!488598 e!1040741))

(declare-fun res!724995 () Bool)

(assert (=> d!488598 (=> (not res!724995) (not e!1040741))))

(declare-fun lt!584691 () BalanceConc!11762)

(assert (=> d!488598 (= res!724995 (= (list!6965 lt!584691) (Cons!17771 (h!23172 tokens!457) Nil!17771)))))

(declare-fun singleton!656 (Token!5826) BalanceConc!11762)

(assert (=> d!488598 (= lt!584691 (singleton!656 (h!23172 tokens!457)))))

(assert (=> d!488598 (= (singletonSeq!1538 (h!23172 tokens!457)) lt!584691)))

(declare-fun b!1622663 () Bool)

(assert (=> b!1622663 (= e!1040741 (isBalanced!1776 (c!264131 lt!584691)))))

(assert (= (and d!488598 res!724995) b!1622663))

(declare-fun m!1948589 () Bool)

(assert (=> d!488598 m!1948589))

(declare-fun m!1948591 () Bool)

(assert (=> d!488598 m!1948591))

(declare-fun m!1948593 () Bool)

(assert (=> b!1622663 m!1948593))

(assert (=> b!1622145 d!488598))

(declare-fun d!488600 () Bool)

(declare-fun lt!584737 () BalanceConc!11760)

(declare-fun printListTailRec!348 (LexerInterface!2759 List!17841 List!17840) List!17840)

(declare-fun dropList!594 (BalanceConc!11762 Int) List!17841)

(assert (=> d!488600 (= (list!6966 lt!584737) (printListTailRec!348 thiss!17113 (dropList!594 lt!584232 0) (list!6966 (BalanceConc!11761 Empty!5908))))))

(declare-fun e!1040746 () BalanceConc!11760)

(assert (=> d!488600 (= lt!584737 e!1040746)))

(declare-fun c!264199 () Bool)

(assert (=> d!488600 (= c!264199 (>= 0 (size!14243 lt!584232)))))

(declare-fun e!1040747 () Bool)

(assert (=> d!488600 e!1040747))

(declare-fun res!724998 () Bool)

(assert (=> d!488600 (=> (not res!724998) (not e!1040747))))

(assert (=> d!488600 (= res!724998 (>= 0 0))))

(assert (=> d!488600 (= (printTailRec!812 thiss!17113 lt!584232 0 (BalanceConc!11761 Empty!5908)) lt!584737)))

(declare-fun b!1622670 () Bool)

(assert (=> b!1622670 (= e!1040747 (<= 0 (size!14243 lt!584232)))))

(declare-fun b!1622671 () Bool)

(assert (=> b!1622671 (= e!1040746 (BalanceConc!11761 Empty!5908))))

(declare-fun b!1622672 () Bool)

(assert (=> b!1622672 (= e!1040746 (printTailRec!812 thiss!17113 lt!584232 (+ 0 1) (++!4714 (BalanceConc!11761 Empty!5908) (charsOf!1779 (apply!4515 lt!584232 0)))))))

(declare-fun lt!584741 () List!17841)

(assert (=> b!1622672 (= lt!584741 (list!6965 lt!584232))))

(declare-fun lt!584739 () Unit!28726)

(declare-fun lemmaDropApply!555 (List!17841 Int) Unit!28726)

(assert (=> b!1622672 (= lt!584739 (lemmaDropApply!555 lt!584741 0))))

(declare-fun head!3408 (List!17841) Token!5826)

(declare-fun drop!865 (List!17841 Int) List!17841)

(declare-fun apply!4519 (List!17841 Int) Token!5826)

(assert (=> b!1622672 (= (head!3408 (drop!865 lt!584741 0)) (apply!4519 lt!584741 0))))

(declare-fun lt!584742 () Unit!28726)

(assert (=> b!1622672 (= lt!584742 lt!584739)))

(declare-fun lt!584738 () List!17841)

(assert (=> b!1622672 (= lt!584738 (list!6965 lt!584232))))

(declare-fun lt!584740 () Unit!28726)

(declare-fun lemmaDropTail!535 (List!17841 Int) Unit!28726)

(assert (=> b!1622672 (= lt!584740 (lemmaDropTail!535 lt!584738 0))))

(declare-fun tail!2351 (List!17841) List!17841)

(assert (=> b!1622672 (= (tail!2351 (drop!865 lt!584738 0)) (drop!865 lt!584738 (+ 0 1)))))

(declare-fun lt!584736 () Unit!28726)

(assert (=> b!1622672 (= lt!584736 lt!584740)))

(assert (= (and d!488600 res!724998) b!1622670))

(assert (= (and d!488600 c!264199) b!1622671))

(assert (= (and d!488600 (not c!264199)) b!1622672))

(declare-fun m!1948621 () Bool)

(assert (=> d!488600 m!1948621))

(declare-fun m!1948623 () Bool)

(assert (=> d!488600 m!1948623))

(assert (=> d!488600 m!1948621))

(assert (=> d!488600 m!1948623))

(declare-fun m!1948625 () Bool)

(assert (=> d!488600 m!1948625))

(declare-fun m!1948627 () Bool)

(assert (=> d!488600 m!1948627))

(declare-fun m!1948629 () Bool)

(assert (=> d!488600 m!1948629))

(assert (=> b!1622670 m!1948629))

(declare-fun m!1948631 () Bool)

(assert (=> b!1622672 m!1948631))

(declare-fun m!1948633 () Bool)

(assert (=> b!1622672 m!1948633))

(declare-fun m!1948635 () Bool)

(assert (=> b!1622672 m!1948635))

(declare-fun m!1948637 () Bool)

(assert (=> b!1622672 m!1948637))

(assert (=> b!1622672 m!1948633))

(declare-fun m!1948639 () Bool)

(assert (=> b!1622672 m!1948639))

(declare-fun m!1948641 () Bool)

(assert (=> b!1622672 m!1948641))

(declare-fun m!1948643 () Bool)

(assert (=> b!1622672 m!1948643))

(declare-fun m!1948645 () Bool)

(assert (=> b!1622672 m!1948645))

(declare-fun m!1948647 () Bool)

(assert (=> b!1622672 m!1948647))

(assert (=> b!1622672 m!1948639))

(declare-fun m!1948649 () Bool)

(assert (=> b!1622672 m!1948649))

(declare-fun m!1948651 () Bool)

(assert (=> b!1622672 m!1948651))

(assert (=> b!1622672 m!1948643))

(assert (=> b!1622672 m!1948647))

(assert (=> b!1622672 m!1948535))

(assert (=> b!1622672 m!1948631))

(declare-fun m!1948653 () Bool)

(assert (=> b!1622672 m!1948653))

(assert (=> b!1622145 d!488600))

(declare-fun d!488604 () Bool)

(declare-fun res!725011 () Bool)

(declare-fun e!1040752 () Bool)

(assert (=> d!488604 (=> (not res!725011) (not e!1040752))))

(assert (=> d!488604 (= res!725011 (not (isEmpty!10795 (originalCharacters!3944 (h!23172 tokens!457)))))))

(assert (=> d!488604 (= (inv!23161 (h!23172 tokens!457)) e!1040752)))

(declare-fun b!1622685 () Bool)

(declare-fun res!725012 () Bool)

(assert (=> b!1622685 (=> (not res!725012) (not e!1040752))))

(assert (=> b!1622685 (= res!725012 (= (originalCharacters!3944 (h!23172 tokens!457)) (list!6966 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (value!98879 (h!23172 tokens!457))))))))

(declare-fun b!1622686 () Bool)

(assert (=> b!1622686 (= e!1040752 (= (size!14239 (h!23172 tokens!457)) (size!14241 (originalCharacters!3944 (h!23172 tokens!457)))))))

(assert (= (and d!488604 res!725011) b!1622685))

(assert (= (and b!1622685 res!725012) b!1622686))

(declare-fun b_lambda!51135 () Bool)

(assert (=> (not b_lambda!51135) (not b!1622685)))

(declare-fun t!148830 () Bool)

(declare-fun tb!93215 () Bool)

(assert (=> (and b!1622164 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457))))) t!148830) tb!93215))

(declare-fun b!1622687 () Bool)

(declare-fun e!1040753 () Bool)

(declare-fun tp!472121 () Bool)

(assert (=> b!1622687 (= e!1040753 (and (inv!23165 (c!264129 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (value!98879 (h!23172 tokens!457))))) tp!472121))))

(declare-fun result!112378 () Bool)

(assert (=> tb!93215 (= result!112378 (and (inv!23166 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (value!98879 (h!23172 tokens!457)))) e!1040753))))

(assert (= tb!93215 b!1622687))

(declare-fun m!1948655 () Bool)

(assert (=> b!1622687 m!1948655))

(declare-fun m!1948657 () Bool)

(assert (=> tb!93215 m!1948657))

(assert (=> b!1622685 t!148830))

(declare-fun b_and!115081 () Bool)

(assert (= b_and!115069 (and (=> t!148830 result!112378) b_and!115081)))

(declare-fun tb!93217 () Bool)

(declare-fun t!148832 () Bool)

(assert (=> (and b!1622160 (= (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457))))) t!148832) tb!93217))

(declare-fun result!112380 () Bool)

(assert (= result!112380 result!112378))

(assert (=> b!1622685 t!148832))

(declare-fun b_and!115083 () Bool)

(assert (= b_and!115071 (and (=> t!148832 result!112380) b_and!115083)))

(declare-fun m!1948659 () Bool)

(assert (=> d!488604 m!1948659))

(declare-fun m!1948661 () Bool)

(assert (=> b!1622685 m!1948661))

(assert (=> b!1622685 m!1948661))

(declare-fun m!1948663 () Bool)

(assert (=> b!1622685 m!1948663))

(declare-fun m!1948665 () Bool)

(assert (=> b!1622686 m!1948665))

(assert (=> b!1622146 d!488604))

(declare-fun b!1622702 () Bool)

(declare-fun e!1040763 () Bool)

(declare-fun inv!15 (TokenValue!3220) Bool)

(assert (=> b!1622702 (= e!1040763 (inv!15 (value!98879 (h!23172 tokens!457))))))

(declare-fun d!488606 () Bool)

(declare-fun c!264208 () Bool)

(assert (=> d!488606 (= c!264208 (is-IntegerValue!9660 (value!98879 (h!23172 tokens!457))))))

(declare-fun e!1040761 () Bool)

(assert (=> d!488606 (= (inv!21 (value!98879 (h!23172 tokens!457))) e!1040761)))

(declare-fun b!1622703 () Bool)

(declare-fun inv!16 (TokenValue!3220) Bool)

(assert (=> b!1622703 (= e!1040761 (inv!16 (value!98879 (h!23172 tokens!457))))))

(declare-fun b!1622704 () Bool)

(declare-fun e!1040762 () Bool)

(assert (=> b!1622704 (= e!1040761 e!1040762)))

(declare-fun c!264207 () Bool)

(assert (=> b!1622704 (= c!264207 (is-IntegerValue!9661 (value!98879 (h!23172 tokens!457))))))

(declare-fun b!1622705 () Bool)

(declare-fun inv!17 (TokenValue!3220) Bool)

(assert (=> b!1622705 (= e!1040762 (inv!17 (value!98879 (h!23172 tokens!457))))))

(declare-fun b!1622706 () Bool)

(declare-fun res!725019 () Bool)

(assert (=> b!1622706 (=> res!725019 e!1040763)))

(assert (=> b!1622706 (= res!725019 (not (is-IntegerValue!9662 (value!98879 (h!23172 tokens!457)))))))

(assert (=> b!1622706 (= e!1040762 e!1040763)))

(assert (= (and d!488606 c!264208) b!1622703))

(assert (= (and d!488606 (not c!264208)) b!1622704))

(assert (= (and b!1622704 c!264207) b!1622705))

(assert (= (and b!1622704 (not c!264207)) b!1622706))

(assert (= (and b!1622706 (not res!725019)) b!1622702))

(declare-fun m!1948685 () Bool)

(assert (=> b!1622702 m!1948685))

(declare-fun m!1948687 () Bool)

(assert (=> b!1622703 m!1948687))

(declare-fun m!1948689 () Bool)

(assert (=> b!1622705 m!1948689))

(assert (=> b!1622167 d!488606))

(declare-fun b!1622707 () Bool)

(declare-fun e!1040766 () Bool)

(declare-fun e!1040765 () Bool)

(assert (=> b!1622707 (= e!1040766 e!1040765)))

(declare-fun res!725024 () Bool)

(assert (=> b!1622707 (=> (not res!725024) (not e!1040765))))

(declare-fun lt!584747 () Option!3277)

(assert (=> b!1622707 (= res!725024 (isDefined!2644 lt!584747))))

(declare-fun b!1622708 () Bool)

(declare-fun e!1040764 () Option!3277)

(declare-fun lt!584749 () Option!3277)

(declare-fun lt!584746 () Option!3277)

(assert (=> b!1622708 (= e!1040764 (ite (and (is-None!3276 lt!584749) (is-None!3276 lt!584746)) None!3276 (ite (is-None!3276 lt!584746) lt!584749 (ite (is-None!3276 lt!584749) lt!584746 (ite (>= (size!14239 (_1!10065 (v!24293 lt!584749))) (size!14239 (_1!10065 (v!24293 lt!584746)))) lt!584749 lt!584746)))))))

(declare-fun call!105164 () Option!3277)

(assert (=> b!1622708 (= lt!584749 call!105164)))

(assert (=> b!1622708 (= lt!584746 (maxPrefix!1323 thiss!17113 (t!148807 rules!1846) (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun b!1622709 () Bool)

(declare-fun res!725026 () Bool)

(assert (=> b!1622709 (=> (not res!725026) (not e!1040765))))

(assert (=> b!1622709 (= res!725026 (= (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584747)))) (originalCharacters!3944 (_1!10065 (get!5112 lt!584747)))))))

(declare-fun d!488610 () Bool)

(assert (=> d!488610 e!1040766))

(declare-fun res!725025 () Bool)

(assert (=> d!488610 (=> res!725025 e!1040766)))

(assert (=> d!488610 (= res!725025 (isEmpty!10805 lt!584747))))

(assert (=> d!488610 (= lt!584747 e!1040764)))

(declare-fun c!264209 () Bool)

(assert (=> d!488610 (= c!264209 (and (is-Cons!17772 rules!1846) (is-Nil!17772 (t!148807 rules!1846))))))

(declare-fun lt!584750 () Unit!28726)

(declare-fun lt!584748 () Unit!28726)

(assert (=> d!488610 (= lt!584750 lt!584748)))

(assert (=> d!488610 (isPrefix!1390 (originalCharacters!3944 (h!23172 tokens!457)) (originalCharacters!3944 (h!23172 tokens!457)))))

(assert (=> d!488610 (= lt!584748 (lemmaIsPrefixRefl!953 (originalCharacters!3944 (h!23172 tokens!457)) (originalCharacters!3944 (h!23172 tokens!457))))))

(assert (=> d!488610 (rulesValidInductive!965 thiss!17113 rules!1846)))

(assert (=> d!488610 (= (maxPrefix!1323 thiss!17113 rules!1846 (originalCharacters!3944 (h!23172 tokens!457))) lt!584747)))

(declare-fun b!1622710 () Bool)

(declare-fun res!725021 () Bool)

(assert (=> b!1622710 (=> (not res!725021) (not e!1040765))))

(assert (=> b!1622710 (= res!725021 (matchR!1957 (regex!3130 (rule!4956 (_1!10065 (get!5112 lt!584747)))) (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584747))))))))

(declare-fun b!1622711 () Bool)

(assert (=> b!1622711 (= e!1040764 call!105164)))

(declare-fun b!1622712 () Bool)

(declare-fun res!725023 () Bool)

(assert (=> b!1622712 (=> (not res!725023) (not e!1040765))))

(assert (=> b!1622712 (= res!725023 (= (++!4713 (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584747)))) (_2!10065 (get!5112 lt!584747))) (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun b!1622713 () Bool)

(declare-fun res!725022 () Bool)

(assert (=> b!1622713 (=> (not res!725022) (not e!1040765))))

(assert (=> b!1622713 (= res!725022 (< (size!14241 (_2!10065 (get!5112 lt!584747))) (size!14241 (originalCharacters!3944 (h!23172 tokens!457)))))))

(declare-fun b!1622714 () Bool)

(declare-fun res!725020 () Bool)

(assert (=> b!1622714 (=> (not res!725020) (not e!1040765))))

(assert (=> b!1622714 (= res!725020 (= (value!98879 (_1!10065 (get!5112 lt!584747))) (apply!4518 (transformation!3130 (rule!4956 (_1!10065 (get!5112 lt!584747)))) (seqFromList!2010 (originalCharacters!3944 (_1!10065 (get!5112 lt!584747)))))))))

(declare-fun bm!105159 () Bool)

(assert (=> bm!105159 (= call!105164 (maxPrefixOneRule!769 thiss!17113 (h!23173 rules!1846) (originalCharacters!3944 (h!23172 tokens!457))))))

(declare-fun b!1622715 () Bool)

(assert (=> b!1622715 (= e!1040765 (contains!3107 rules!1846 (rule!4956 (_1!10065 (get!5112 lt!584747)))))))

(assert (= (and d!488610 c!264209) b!1622711))

(assert (= (and d!488610 (not c!264209)) b!1622708))

(assert (= (or b!1622711 b!1622708) bm!105159))

(assert (= (and d!488610 (not res!725025)) b!1622707))

(assert (= (and b!1622707 res!725024) b!1622709))

(assert (= (and b!1622709 res!725026) b!1622713))

(assert (= (and b!1622713 res!725022) b!1622712))

(assert (= (and b!1622712 res!725023) b!1622714))

(assert (= (and b!1622714 res!725020) b!1622710))

(assert (= (and b!1622710 res!725021) b!1622715))

(declare-fun m!1948691 () Bool)

(assert (=> d!488610 m!1948691))

(declare-fun m!1948693 () Bool)

(assert (=> d!488610 m!1948693))

(declare-fun m!1948695 () Bool)

(assert (=> d!488610 m!1948695))

(assert (=> d!488610 m!1947757))

(declare-fun m!1948697 () Bool)

(assert (=> b!1622713 m!1948697))

(declare-fun m!1948699 () Bool)

(assert (=> b!1622713 m!1948699))

(assert (=> b!1622713 m!1948665))

(assert (=> b!1622714 m!1948697))

(declare-fun m!1948701 () Bool)

(assert (=> b!1622714 m!1948701))

(assert (=> b!1622714 m!1948701))

(declare-fun m!1948703 () Bool)

(assert (=> b!1622714 m!1948703))

(declare-fun m!1948705 () Bool)

(assert (=> b!1622708 m!1948705))

(assert (=> b!1622712 m!1948697))

(declare-fun m!1948707 () Bool)

(assert (=> b!1622712 m!1948707))

(assert (=> b!1622712 m!1948707))

(declare-fun m!1948709 () Bool)

(assert (=> b!1622712 m!1948709))

(assert (=> b!1622712 m!1948709))

(declare-fun m!1948711 () Bool)

(assert (=> b!1622712 m!1948711))

(declare-fun m!1948713 () Bool)

(assert (=> bm!105159 m!1948713))

(assert (=> b!1622709 m!1948697))

(assert (=> b!1622709 m!1948707))

(assert (=> b!1622709 m!1948707))

(assert (=> b!1622709 m!1948709))

(assert (=> b!1622715 m!1948697))

(declare-fun m!1948715 () Bool)

(assert (=> b!1622715 m!1948715))

(declare-fun m!1948717 () Bool)

(assert (=> b!1622707 m!1948717))

(assert (=> b!1622710 m!1948697))

(assert (=> b!1622710 m!1948707))

(assert (=> b!1622710 m!1948707))

(assert (=> b!1622710 m!1948709))

(assert (=> b!1622710 m!1948709))

(declare-fun m!1948719 () Bool)

(assert (=> b!1622710 m!1948719))

(assert (=> b!1622153 d!488610))

(declare-fun d!488612 () Bool)

(declare-fun c!264212 () Bool)

(assert (=> d!488612 (= c!264212 (isEmpty!10795 (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239)))))

(declare-fun e!1040772 () Bool)

(assert (=> d!488612 (= (prefixMatch!393 lt!584242 (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239)) e!1040772)))

(declare-fun b!1622723 () Bool)

(declare-fun lostCause!432 (Regex!4458) Bool)

(assert (=> b!1622723 (= e!1040772 (not (lostCause!432 lt!584242)))))

(declare-fun b!1622724 () Bool)

(assert (=> b!1622724 (= e!1040772 (prefixMatch!393 (derivativeStep!1075 lt!584242 (head!3402 (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239))) (tail!2349 (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239))))))

(assert (= (and d!488612 c!264212) b!1622723))

(assert (= (and d!488612 (not c!264212)) b!1622724))

(assert (=> d!488612 m!1947721))

(declare-fun m!1948727 () Bool)

(assert (=> d!488612 m!1948727))

(declare-fun m!1948729 () Bool)

(assert (=> b!1622723 m!1948729))

(assert (=> b!1622724 m!1947721))

(declare-fun m!1948731 () Bool)

(assert (=> b!1622724 m!1948731))

(assert (=> b!1622724 m!1948731))

(declare-fun m!1948733 () Bool)

(assert (=> b!1622724 m!1948733))

(assert (=> b!1622724 m!1947721))

(declare-fun m!1948735 () Bool)

(assert (=> b!1622724 m!1948735))

(assert (=> b!1622724 m!1948733))

(assert (=> b!1622724 m!1948735))

(declare-fun m!1948737 () Bool)

(assert (=> b!1622724 m!1948737))

(assert (=> b!1622153 d!488612))

(declare-fun d!488616 () Bool)

(assert (=> d!488616 (= (get!5112 lt!584246) (v!24293 lt!584246))))

(assert (=> b!1622153 d!488616))

(declare-fun b!1622725 () Bool)

(declare-fun e!1040775 () Bool)

(declare-fun e!1040774 () Bool)

(assert (=> b!1622725 (= e!1040775 e!1040774)))

(declare-fun res!725034 () Bool)

(assert (=> b!1622725 (=> (not res!725034) (not e!1040774))))

(declare-fun lt!584759 () Option!3277)

(assert (=> b!1622725 (= res!725034 (isDefined!2644 lt!584759))))

(declare-fun b!1622726 () Bool)

(declare-fun e!1040773 () Option!3277)

(declare-fun lt!584761 () Option!3277)

(declare-fun lt!584758 () Option!3277)

(assert (=> b!1622726 (= e!1040773 (ite (and (is-None!3276 lt!584761) (is-None!3276 lt!584758)) None!3276 (ite (is-None!3276 lt!584758) lt!584761 (ite (is-None!3276 lt!584761) lt!584758 (ite (>= (size!14239 (_1!10065 (v!24293 lt!584761))) (size!14239 (_1!10065 (v!24293 lt!584758)))) lt!584761 lt!584758)))))))

(declare-fun call!105165 () Option!3277)

(assert (=> b!1622726 (= lt!584761 call!105165)))

(assert (=> b!1622726 (= lt!584758 (maxPrefix!1323 thiss!17113 (t!148807 rules!1846) lt!584245))))

(declare-fun b!1622727 () Bool)

(declare-fun res!725036 () Bool)

(assert (=> b!1622727 (=> (not res!725036) (not e!1040774))))

(assert (=> b!1622727 (= res!725036 (= (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584759)))) (originalCharacters!3944 (_1!10065 (get!5112 lt!584759)))))))

(declare-fun d!488620 () Bool)

(assert (=> d!488620 e!1040775))

(declare-fun res!725035 () Bool)

(assert (=> d!488620 (=> res!725035 e!1040775)))

(assert (=> d!488620 (= res!725035 (isEmpty!10805 lt!584759))))

(assert (=> d!488620 (= lt!584759 e!1040773)))

(declare-fun c!264213 () Bool)

(assert (=> d!488620 (= c!264213 (and (is-Cons!17772 rules!1846) (is-Nil!17772 (t!148807 rules!1846))))))

(declare-fun lt!584762 () Unit!28726)

(declare-fun lt!584760 () Unit!28726)

(assert (=> d!488620 (= lt!584762 lt!584760)))

(assert (=> d!488620 (isPrefix!1390 lt!584245 lt!584245)))

(assert (=> d!488620 (= lt!584760 (lemmaIsPrefixRefl!953 lt!584245 lt!584245))))

(assert (=> d!488620 (rulesValidInductive!965 thiss!17113 rules!1846)))

(assert (=> d!488620 (= (maxPrefix!1323 thiss!17113 rules!1846 lt!584245) lt!584759)))

(declare-fun b!1622728 () Bool)

(declare-fun res!725031 () Bool)

(assert (=> b!1622728 (=> (not res!725031) (not e!1040774))))

(assert (=> b!1622728 (= res!725031 (matchR!1957 (regex!3130 (rule!4956 (_1!10065 (get!5112 lt!584759)))) (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584759))))))))

(declare-fun b!1622729 () Bool)

(assert (=> b!1622729 (= e!1040773 call!105165)))

(declare-fun b!1622730 () Bool)

(declare-fun res!725033 () Bool)

(assert (=> b!1622730 (=> (not res!725033) (not e!1040774))))

(assert (=> b!1622730 (= res!725033 (= (++!4713 (list!6966 (charsOf!1779 (_1!10065 (get!5112 lt!584759)))) (_2!10065 (get!5112 lt!584759))) lt!584245))))

(declare-fun b!1622731 () Bool)

(declare-fun res!725032 () Bool)

(assert (=> b!1622731 (=> (not res!725032) (not e!1040774))))

(assert (=> b!1622731 (= res!725032 (< (size!14241 (_2!10065 (get!5112 lt!584759))) (size!14241 lt!584245)))))

(declare-fun b!1622732 () Bool)

(declare-fun res!725030 () Bool)

(assert (=> b!1622732 (=> (not res!725030) (not e!1040774))))

(assert (=> b!1622732 (= res!725030 (= (value!98879 (_1!10065 (get!5112 lt!584759))) (apply!4518 (transformation!3130 (rule!4956 (_1!10065 (get!5112 lt!584759)))) (seqFromList!2010 (originalCharacters!3944 (_1!10065 (get!5112 lt!584759)))))))))

(declare-fun bm!105160 () Bool)

(assert (=> bm!105160 (= call!105165 (maxPrefixOneRule!769 thiss!17113 (h!23173 rules!1846) lt!584245))))

(declare-fun b!1622733 () Bool)

(assert (=> b!1622733 (= e!1040774 (contains!3107 rules!1846 (rule!4956 (_1!10065 (get!5112 lt!584759)))))))

(assert (= (and d!488620 c!264213) b!1622729))

(assert (= (and d!488620 (not c!264213)) b!1622726))

(assert (= (or b!1622729 b!1622726) bm!105160))

(assert (= (and d!488620 (not res!725035)) b!1622725))

(assert (= (and b!1622725 res!725034) b!1622727))

(assert (= (and b!1622727 res!725036) b!1622731))

(assert (= (and b!1622731 res!725032) b!1622730))

(assert (= (and b!1622730 res!725033) b!1622732))

(assert (= (and b!1622732 res!725030) b!1622728))

(assert (= (and b!1622728 res!725031) b!1622733))

(declare-fun m!1948753 () Bool)

(assert (=> d!488620 m!1948753))

(declare-fun m!1948755 () Bool)

(assert (=> d!488620 m!1948755))

(declare-fun m!1948757 () Bool)

(assert (=> d!488620 m!1948757))

(assert (=> d!488620 m!1947757))

(declare-fun m!1948759 () Bool)

(assert (=> b!1622731 m!1948759))

(declare-fun m!1948761 () Bool)

(assert (=> b!1622731 m!1948761))

(assert (=> b!1622731 m!1948171))

(assert (=> b!1622732 m!1948759))

(declare-fun m!1948763 () Bool)

(assert (=> b!1622732 m!1948763))

(assert (=> b!1622732 m!1948763))

(declare-fun m!1948765 () Bool)

(assert (=> b!1622732 m!1948765))

(declare-fun m!1948767 () Bool)

(assert (=> b!1622726 m!1948767))

(assert (=> b!1622730 m!1948759))

(declare-fun m!1948769 () Bool)

(assert (=> b!1622730 m!1948769))

(assert (=> b!1622730 m!1948769))

(declare-fun m!1948771 () Bool)

(assert (=> b!1622730 m!1948771))

(assert (=> b!1622730 m!1948771))

(declare-fun m!1948773 () Bool)

(assert (=> b!1622730 m!1948773))

(declare-fun m!1948775 () Bool)

(assert (=> bm!105160 m!1948775))

(assert (=> b!1622727 m!1948759))

(assert (=> b!1622727 m!1948769))

(assert (=> b!1622727 m!1948769))

(assert (=> b!1622727 m!1948771))

(assert (=> b!1622733 m!1948759))

(declare-fun m!1948777 () Bool)

(assert (=> b!1622733 m!1948777))

(declare-fun m!1948779 () Bool)

(assert (=> b!1622725 m!1948779))

(assert (=> b!1622728 m!1948759))

(assert (=> b!1622728 m!1948769))

(assert (=> b!1622728 m!1948769))

(assert (=> b!1622728 m!1948771))

(assert (=> b!1622728 m!1948771))

(declare-fun m!1948781 () Bool)

(assert (=> b!1622728 m!1948781))

(assert (=> b!1622153 d!488620))

(declare-fun d!488624 () Bool)

(assert (=> d!488624 (= (isDefined!2644 lt!584246) (not (isEmpty!10805 lt!584246)))))

(declare-fun bs!394606 () Bool)

(assert (= bs!394606 d!488624))

(declare-fun m!1948783 () Bool)

(assert (=> bs!394606 m!1948783))

(assert (=> b!1622153 d!488624))

(declare-fun b!1622744 () Bool)

(declare-fun e!1040782 () List!17840)

(assert (=> b!1622744 (= e!1040782 (Cons!17770 (h!23171 (originalCharacters!3944 (h!23172 tokens!457))) (++!4713 (t!148805 (originalCharacters!3944 (h!23172 tokens!457))) lt!584239)))))

(declare-fun b!1622743 () Bool)

(assert (=> b!1622743 (= e!1040782 lt!584239)))

(declare-fun b!1622745 () Bool)

(declare-fun res!725041 () Bool)

(declare-fun e!1040781 () Bool)

(assert (=> b!1622745 (=> (not res!725041) (not e!1040781))))

(declare-fun lt!584765 () List!17840)

(assert (=> b!1622745 (= res!725041 (= (size!14241 lt!584765) (+ (size!14241 (originalCharacters!3944 (h!23172 tokens!457))) (size!14241 lt!584239))))))

(declare-fun d!488626 () Bool)

(assert (=> d!488626 e!1040781))

(declare-fun res!725042 () Bool)

(assert (=> d!488626 (=> (not res!725042) (not e!1040781))))

(declare-fun content!2465 (List!17840) (Set C!9090))

(assert (=> d!488626 (= res!725042 (= (content!2465 lt!584765) (set.union (content!2465 (originalCharacters!3944 (h!23172 tokens!457))) (content!2465 lt!584239))))))

(assert (=> d!488626 (= lt!584765 e!1040782)))

(declare-fun c!264216 () Bool)

(assert (=> d!488626 (= c!264216 (is-Nil!17770 (originalCharacters!3944 (h!23172 tokens!457))))))

(assert (=> d!488626 (= (++!4713 (originalCharacters!3944 (h!23172 tokens!457)) lt!584239) lt!584765)))

(declare-fun b!1622746 () Bool)

(assert (=> b!1622746 (= e!1040781 (or (not (= lt!584239 Nil!17770)) (= lt!584765 (originalCharacters!3944 (h!23172 tokens!457)))))))

(assert (= (and d!488626 c!264216) b!1622743))

(assert (= (and d!488626 (not c!264216)) b!1622744))

(assert (= (and d!488626 res!725042) b!1622745))

(assert (= (and b!1622745 res!725041) b!1622746))

(declare-fun m!1948785 () Bool)

(assert (=> b!1622744 m!1948785))

(declare-fun m!1948787 () Bool)

(assert (=> b!1622745 m!1948787))

(assert (=> b!1622745 m!1948665))

(declare-fun m!1948789 () Bool)

(assert (=> b!1622745 m!1948789))

(declare-fun m!1948791 () Bool)

(assert (=> d!488626 m!1948791))

(declare-fun m!1948793 () Bool)

(assert (=> d!488626 m!1948793))

(declare-fun m!1948795 () Bool)

(assert (=> d!488626 m!1948795))

(assert (=> b!1622153 d!488626))

(declare-fun d!488628 () Bool)

(assert (=> d!488628 (= (isDefined!2644 (maxPrefix!1323 thiss!17113 rules!1846 (originalCharacters!3944 (h!23172 tokens!457)))) (not (isEmpty!10805 (maxPrefix!1323 thiss!17113 rules!1846 (originalCharacters!3944 (h!23172 tokens!457))))))))

(declare-fun bs!394607 () Bool)

(assert (= bs!394607 d!488628))

(assert (=> bs!394607 m!1947723))

(declare-fun m!1948797 () Bool)

(assert (=> bs!394607 m!1948797))

(assert (=> b!1622153 d!488628))

(declare-fun d!488630 () Bool)

(declare-fun c!264217 () Bool)

(assert (=> d!488630 (= c!264217 (isEmpty!10795 (++!4713 lt!584245 lt!584249)))))

(declare-fun e!1040783 () Bool)

(assert (=> d!488630 (= (prefixMatch!393 lt!584242 (++!4713 lt!584245 lt!584249)) e!1040783)))

(declare-fun b!1622747 () Bool)

(assert (=> b!1622747 (= e!1040783 (not (lostCause!432 lt!584242)))))

(declare-fun b!1622748 () Bool)

(assert (=> b!1622748 (= e!1040783 (prefixMatch!393 (derivativeStep!1075 lt!584242 (head!3402 (++!4713 lt!584245 lt!584249))) (tail!2349 (++!4713 lt!584245 lt!584249))))))

(assert (= (and d!488630 c!264217) b!1622747))

(assert (= (and d!488630 (not c!264217)) b!1622748))

(assert (=> d!488630 m!1947767))

(declare-fun m!1948799 () Bool)

(assert (=> d!488630 m!1948799))

(assert (=> b!1622747 m!1948729))

(assert (=> b!1622748 m!1947767))

(declare-fun m!1948801 () Bool)

(assert (=> b!1622748 m!1948801))

(assert (=> b!1622748 m!1948801))

(declare-fun m!1948803 () Bool)

(assert (=> b!1622748 m!1948803))

(assert (=> b!1622748 m!1947767))

(declare-fun m!1948805 () Bool)

(assert (=> b!1622748 m!1948805))

(assert (=> b!1622748 m!1948803))

(assert (=> b!1622748 m!1948805))

(declare-fun m!1948807 () Bool)

(assert (=> b!1622748 m!1948807))

(assert (=> b!1622152 d!488630))

(declare-fun b!1622750 () Bool)

(declare-fun e!1040785 () List!17840)

(assert (=> b!1622750 (= e!1040785 (Cons!17770 (h!23171 lt!584245) (++!4713 (t!148805 lt!584245) lt!584249)))))

(declare-fun b!1622749 () Bool)

(assert (=> b!1622749 (= e!1040785 lt!584249)))

(declare-fun b!1622751 () Bool)

(declare-fun res!725043 () Bool)

(declare-fun e!1040784 () Bool)

(assert (=> b!1622751 (=> (not res!725043) (not e!1040784))))

(declare-fun lt!584766 () List!17840)

(assert (=> b!1622751 (= res!725043 (= (size!14241 lt!584766) (+ (size!14241 lt!584245) (size!14241 lt!584249))))))

(declare-fun d!488632 () Bool)

(assert (=> d!488632 e!1040784))

(declare-fun res!725044 () Bool)

(assert (=> d!488632 (=> (not res!725044) (not e!1040784))))

(assert (=> d!488632 (= res!725044 (= (content!2465 lt!584766) (set.union (content!2465 lt!584245) (content!2465 lt!584249))))))

(assert (=> d!488632 (= lt!584766 e!1040785)))

(declare-fun c!264218 () Bool)

(assert (=> d!488632 (= c!264218 (is-Nil!17770 lt!584245))))

(assert (=> d!488632 (= (++!4713 lt!584245 lt!584249) lt!584766)))

(declare-fun b!1622752 () Bool)

(assert (=> b!1622752 (= e!1040784 (or (not (= lt!584249 Nil!17770)) (= lt!584766 lt!584245)))))

(assert (= (and d!488632 c!264218) b!1622749))

(assert (= (and d!488632 (not c!264218)) b!1622750))

(assert (= (and d!488632 res!725044) b!1622751))

(assert (= (and b!1622751 res!725043) b!1622752))

(declare-fun m!1948809 () Bool)

(assert (=> b!1622750 m!1948809))

(declare-fun m!1948811 () Bool)

(assert (=> b!1622751 m!1948811))

(assert (=> b!1622751 m!1948171))

(declare-fun m!1948813 () Bool)

(assert (=> b!1622751 m!1948813))

(declare-fun m!1948815 () Bool)

(assert (=> d!488632 m!1948815))

(declare-fun m!1948817 () Bool)

(assert (=> d!488632 m!1948817))

(declare-fun m!1948819 () Bool)

(assert (=> d!488632 m!1948819))

(assert (=> b!1622152 d!488632))

(declare-fun d!488634 () Bool)

(assert (=> d!488634 (= (list!6966 lt!584230) (list!6970 (c!264129 lt!584230)))))

(declare-fun bs!394608 () Bool)

(assert (= bs!394608 d!488634))

(declare-fun m!1948821 () Bool)

(assert (=> bs!394608 m!1948821))

(assert (=> b!1622152 d!488634))

(declare-fun d!488636 () Bool)

(declare-fun res!725047 () Bool)

(declare-fun e!1040788 () Bool)

(assert (=> d!488636 (=> (not res!725047) (not e!1040788))))

(declare-fun rulesValid!1122 (LexerInterface!2759 List!17842) Bool)

(assert (=> d!488636 (= res!725047 (rulesValid!1122 thiss!17113 rules!1846))))

(assert (=> d!488636 (= (rulesInvariant!2428 thiss!17113 rules!1846) e!1040788)))

(declare-fun b!1622755 () Bool)

(declare-datatypes ((List!17850 0))(
  ( (Nil!17780) (Cons!17780 (h!23181 String!20434) (t!148857 List!17850)) )
))
(declare-fun noDuplicateTag!1122 (LexerInterface!2759 List!17842 List!17850) Bool)

(assert (=> b!1622755 (= e!1040788 (noDuplicateTag!1122 thiss!17113 rules!1846 Nil!17780))))

(assert (= (and d!488636 res!725047) b!1622755))

(declare-fun m!1948823 () Bool)

(assert (=> d!488636 m!1948823))

(declare-fun m!1948825 () Bool)

(assert (=> b!1622755 m!1948825))

(assert (=> b!1622154 d!488636))

(declare-fun d!488638 () Bool)

(declare-fun lt!584767 () BalanceConc!11760)

(assert (=> d!488638 (= (list!6966 lt!584767) (printList!874 thiss!17113 (list!6965 (seqFromList!2009 tokens!457))))))

(assert (=> d!488638 (= lt!584767 (printTailRec!812 thiss!17113 (seqFromList!2009 tokens!457) 0 (BalanceConc!11761 Empty!5908)))))

(assert (=> d!488638 (= (print!1290 thiss!17113 (seqFromList!2009 tokens!457)) lt!584767)))

(declare-fun bs!394609 () Bool)

(assert (= bs!394609 d!488638))

(declare-fun m!1948827 () Bool)

(assert (=> bs!394609 m!1948827))

(assert (=> bs!394609 m!1947791))

(declare-fun m!1948829 () Bool)

(assert (=> bs!394609 m!1948829))

(assert (=> bs!394609 m!1948829))

(declare-fun m!1948831 () Bool)

(assert (=> bs!394609 m!1948831))

(assert (=> bs!394609 m!1947791))

(declare-fun m!1948833 () Bool)

(assert (=> bs!394609 m!1948833))

(assert (=> b!1622150 d!488638))

(declare-fun d!488640 () Bool)

(assert (=> d!488640 (= (list!6966 lt!584238) (list!6970 (c!264129 lt!584238)))))

(declare-fun bs!394610 () Bool)

(assert (= bs!394610 d!488640))

(declare-fun m!1948835 () Bool)

(assert (=> bs!394610 m!1948835))

(assert (=> b!1622150 d!488640))

(declare-fun d!488642 () Bool)

(assert (=> d!488642 (= (list!6966 lt!584233) (list!6970 (c!264129 lt!584233)))))

(declare-fun bs!394611 () Bool)

(assert (= bs!394611 d!488642))

(declare-fun m!1948837 () Bool)

(assert (=> bs!394611 m!1948837))

(assert (=> b!1622150 d!488642))

(declare-fun d!488644 () Bool)

(assert (=> d!488644 (= (seqFromList!2009 tokens!457) (fromListB!881 tokens!457))))

(declare-fun bs!394612 () Bool)

(assert (= bs!394612 d!488644))

(declare-fun m!1948839 () Bool)

(assert (=> bs!394612 m!1948839))

(assert (=> b!1622150 d!488644))

(declare-fun d!488646 () Bool)

(assert (=> d!488646 (= (seqFromList!2009 (t!148806 tokens!457)) (fromListB!881 (t!148806 tokens!457)))))

(declare-fun bs!394613 () Bool)

(assert (= bs!394613 d!488646))

(declare-fun m!1948841 () Bool)

(assert (=> bs!394613 m!1948841))

(assert (=> b!1622150 d!488646))

(declare-fun b!1622756 () Bool)

(declare-fun e!1040789 () Bool)

(declare-fun lt!584768 () tuple2!17324)

(assert (=> b!1622756 (= e!1040789 (= (_2!10064 lt!584768) lt!584233))))

(declare-fun b!1622757 () Bool)

(declare-fun res!725050 () Bool)

(declare-fun e!1040790 () Bool)

(assert (=> b!1622757 (=> (not res!725050) (not e!1040790))))

(assert (=> b!1622757 (= res!725050 (= (list!6965 (_1!10064 lt!584768)) (_1!10070 (lexList!822 thiss!17113 rules!1846 (list!6966 lt!584233)))))))

(declare-fun b!1622758 () Bool)

(declare-fun e!1040791 () Bool)

(assert (=> b!1622758 (= e!1040789 e!1040791)))

(declare-fun res!725048 () Bool)

(assert (=> b!1622758 (= res!725048 (< (size!14242 (_2!10064 lt!584768)) (size!14242 lt!584233)))))

(assert (=> b!1622758 (=> (not res!725048) (not e!1040791))))

(declare-fun b!1622759 () Bool)

(assert (=> b!1622759 (= e!1040791 (not (isEmpty!10796 (_1!10064 lt!584768))))))

(declare-fun d!488648 () Bool)

(assert (=> d!488648 e!1040790))

(declare-fun res!725049 () Bool)

(assert (=> d!488648 (=> (not res!725049) (not e!1040790))))

(assert (=> d!488648 (= res!725049 e!1040789)))

(declare-fun c!264219 () Bool)

(assert (=> d!488648 (= c!264219 (> (size!14243 (_1!10064 lt!584768)) 0))))

(assert (=> d!488648 (= lt!584768 (lexTailRecV2!545 thiss!17113 rules!1846 lt!584233 (BalanceConc!11761 Empty!5908) lt!584233 (BalanceConc!11763 Empty!5909)))))

(assert (=> d!488648 (= (lex!1243 thiss!17113 rules!1846 lt!584233) lt!584768)))

(declare-fun b!1622760 () Bool)

(assert (=> b!1622760 (= e!1040790 (= (list!6966 (_2!10064 lt!584768)) (_2!10070 (lexList!822 thiss!17113 rules!1846 (list!6966 lt!584233)))))))

(assert (= (and d!488648 c!264219) b!1622758))

(assert (= (and d!488648 (not c!264219)) b!1622756))

(assert (= (and b!1622758 res!725048) b!1622759))

(assert (= (and d!488648 res!725049) b!1622757))

(assert (= (and b!1622757 res!725050) b!1622760))

(declare-fun m!1948843 () Bool)

(assert (=> b!1622758 m!1948843))

(declare-fun m!1948845 () Bool)

(assert (=> b!1622758 m!1948845))

(declare-fun m!1948847 () Bool)

(assert (=> d!488648 m!1948847))

(declare-fun m!1948849 () Bool)

(assert (=> d!488648 m!1948849))

(declare-fun m!1948851 () Bool)

(assert (=> b!1622757 m!1948851))

(assert (=> b!1622757 m!1947797))

(assert (=> b!1622757 m!1947797))

(declare-fun m!1948853 () Bool)

(assert (=> b!1622757 m!1948853))

(declare-fun m!1948855 () Bool)

(assert (=> b!1622760 m!1948855))

(assert (=> b!1622760 m!1947797))

(assert (=> b!1622760 m!1947797))

(assert (=> b!1622760 m!1948853))

(declare-fun m!1948857 () Bool)

(assert (=> b!1622759 m!1948857))

(assert (=> b!1622150 d!488648))

(declare-fun d!488650 () Bool)

(assert (=> d!488650 (= (list!6966 lt!584250) (list!6970 (c!264129 lt!584250)))))

(declare-fun bs!394614 () Bool)

(assert (= bs!394614 d!488650))

(declare-fun m!1948859 () Bool)

(assert (=> bs!394614 m!1948859))

(assert (=> b!1622150 d!488650))

(declare-fun b!1622762 () Bool)

(declare-fun e!1040793 () List!17840)

(assert (=> b!1622762 (= e!1040793 (Cons!17770 (h!23171 lt!584245) (++!4713 (t!148805 lt!584245) lt!584247)))))

(declare-fun b!1622761 () Bool)

(assert (=> b!1622761 (= e!1040793 lt!584247)))

(declare-fun b!1622763 () Bool)

(declare-fun res!725051 () Bool)

(declare-fun e!1040792 () Bool)

(assert (=> b!1622763 (=> (not res!725051) (not e!1040792))))

(declare-fun lt!584769 () List!17840)

(assert (=> b!1622763 (= res!725051 (= (size!14241 lt!584769) (+ (size!14241 lt!584245) (size!14241 lt!584247))))))

(declare-fun d!488652 () Bool)

(assert (=> d!488652 e!1040792))

(declare-fun res!725052 () Bool)

(assert (=> d!488652 (=> (not res!725052) (not e!1040792))))

(assert (=> d!488652 (= res!725052 (= (content!2465 lt!584769) (set.union (content!2465 lt!584245) (content!2465 lt!584247))))))

(assert (=> d!488652 (= lt!584769 e!1040793)))

(declare-fun c!264220 () Bool)

(assert (=> d!488652 (= c!264220 (is-Nil!17770 lt!584245))))

(assert (=> d!488652 (= (++!4713 lt!584245 lt!584247) lt!584769)))

(declare-fun b!1622764 () Bool)

(assert (=> b!1622764 (= e!1040792 (or (not (= lt!584247 Nil!17770)) (= lt!584769 lt!584245)))))

(assert (= (and d!488652 c!264220) b!1622761))

(assert (= (and d!488652 (not c!264220)) b!1622762))

(assert (= (and d!488652 res!725052) b!1622763))

(assert (= (and b!1622763 res!725051) b!1622764))

(declare-fun m!1948861 () Bool)

(assert (=> b!1622762 m!1948861))

(declare-fun m!1948863 () Bool)

(assert (=> b!1622763 m!1948863))

(assert (=> b!1622763 m!1948171))

(declare-fun m!1948865 () Bool)

(assert (=> b!1622763 m!1948865))

(declare-fun m!1948867 () Bool)

(assert (=> d!488652 m!1948867))

(assert (=> d!488652 m!1948817))

(declare-fun m!1948869 () Bool)

(assert (=> d!488652 m!1948869))

(assert (=> b!1622150 d!488652))

(declare-fun d!488654 () Bool)

(declare-fun lt!584770 () BalanceConc!11760)

(assert (=> d!488654 (= (list!6966 lt!584770) (printList!874 thiss!17113 (list!6965 lt!584227)))))

(assert (=> d!488654 (= lt!584770 (printTailRec!812 thiss!17113 lt!584227 0 (BalanceConc!11761 Empty!5908)))))

(assert (=> d!488654 (= (print!1290 thiss!17113 lt!584227) lt!584770)))

(declare-fun bs!394615 () Bool)

(assert (= bs!394615 d!488654))

(declare-fun m!1948871 () Bool)

(assert (=> bs!394615 m!1948871))

(assert (=> bs!394615 m!1947755))

(assert (=> bs!394615 m!1947755))

(declare-fun m!1948873 () Bool)

(assert (=> bs!394615 m!1948873))

(declare-fun m!1948875 () Bool)

(assert (=> bs!394615 m!1948875))

(assert (=> b!1622150 d!488654))

(declare-fun d!488656 () Bool)

(declare-fun lt!584771 () BalanceConc!11760)

(assert (=> d!488656 (= (list!6966 lt!584771) (originalCharacters!3944 (h!23172 tokens!457)))))

(assert (=> d!488656 (= lt!584771 (dynLambda!7931 (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (value!98879 (h!23172 tokens!457))))))

(assert (=> d!488656 (= (charsOf!1779 (h!23172 tokens!457)) lt!584771)))

(declare-fun b_lambda!51139 () Bool)

(assert (=> (not b_lambda!51139) (not d!488656)))

(assert (=> d!488656 t!148830))

(declare-fun b_and!115089 () Bool)

(assert (= b_and!115081 (and (=> t!148830 result!112378) b_and!115089)))

(assert (=> d!488656 t!148832))

(declare-fun b_and!115091 () Bool)

(assert (= b_and!115083 (and (=> t!148832 result!112380) b_and!115091)))

(declare-fun m!1948877 () Bool)

(assert (=> d!488656 m!1948877))

(assert (=> d!488656 m!1948661))

(assert (=> b!1622150 d!488656))

(declare-fun d!488658 () Bool)

(assert (=> d!488658 (= (head!3402 lt!584247) (h!23171 lt!584247))))

(assert (=> b!1622171 d!488658))

(declare-fun d!488660 () Bool)

(assert (=> d!488660 true))

(declare-fun lt!584774 () Bool)

(declare-fun lambda!67228 () Int)

(declare-fun forall!4077 (List!17842 Int) Bool)

(assert (=> d!488660 (= lt!584774 (forall!4077 rules!1846 lambda!67228))))

(declare-fun e!1040799 () Bool)

(assert (=> d!488660 (= lt!584774 e!1040799)))

(declare-fun res!725057 () Bool)

(assert (=> d!488660 (=> res!725057 e!1040799)))

(assert (=> d!488660 (= res!725057 (not (is-Cons!17772 rules!1846)))))

(assert (=> d!488660 (= (rulesValidInductive!965 thiss!17113 rules!1846) lt!584774)))

(declare-fun b!1622769 () Bool)

(declare-fun e!1040798 () Bool)

(assert (=> b!1622769 (= e!1040799 e!1040798)))

(declare-fun res!725058 () Bool)

(assert (=> b!1622769 (=> (not res!725058) (not e!1040798))))

(declare-fun ruleValid!735 (LexerInterface!2759 Rule!6060) Bool)

(assert (=> b!1622769 (= res!725058 (ruleValid!735 thiss!17113 (h!23173 rules!1846)))))

(declare-fun b!1622770 () Bool)

(assert (=> b!1622770 (= e!1040798 (rulesValidInductive!965 thiss!17113 (t!148807 rules!1846)))))

(assert (= (and d!488660 (not res!725057)) b!1622769))

(assert (= (and b!1622769 res!725058) b!1622770))

(declare-fun m!1948879 () Bool)

(assert (=> d!488660 m!1948879))

(declare-fun m!1948881 () Bool)

(assert (=> b!1622769 m!1948881))

(declare-fun m!1948883 () Bool)

(assert (=> b!1622770 m!1948883))

(assert (=> b!1622173 d!488660))

(declare-fun d!488662 () Bool)

(assert (=> d!488662 (= (isDefined!2644 lt!584241) (not (isEmpty!10805 lt!584241)))))

(declare-fun bs!394616 () Bool)

(assert (= bs!394616 d!488662))

(declare-fun m!1948885 () Bool)

(assert (=> bs!394616 m!1948885))

(assert (=> b!1622172 d!488662))

(declare-fun b!1622826 () Bool)

(declare-fun e!1040820 () Unit!28726)

(declare-fun Unit!28753 () Unit!28726)

(assert (=> b!1622826 (= e!1040820 Unit!28753)))

(declare-fun b!1622825 () Bool)

(declare-fun Unit!28754 () Unit!28726)

(assert (=> b!1622825 (= e!1040820 Unit!28754)))

(declare-fun lt!584830 () List!17840)

(assert (=> b!1622825 (= lt!584830 (++!4713 lt!584245 lt!584247))))

(declare-fun lt!584837 () Token!5826)

(declare-fun lt!584841 () Unit!28726)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!172 (LexerInterface!2759 Rule!6060 List!17842 List!17840) Unit!28726)

(assert (=> b!1622825 (= lt!584841 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!172 thiss!17113 (rule!4956 lt!584837) rules!1846 lt!584830))))

(assert (=> b!1622825 (isEmpty!10805 (maxPrefixOneRule!769 thiss!17113 (rule!4956 lt!584837) lt!584830))))

(declare-fun lt!584846 () Unit!28726)

(assert (=> b!1622825 (= lt!584846 lt!584841)))

(declare-fun lt!584833 () List!17840)

(assert (=> b!1622825 (= lt!584833 (list!6966 (charsOf!1779 lt!584837)))))

(declare-fun lt!584838 () Unit!28726)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!168 (LexerInterface!2759 Rule!6060 List!17840 List!17840) Unit!28726)

(assert (=> b!1622825 (= lt!584838 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!168 thiss!17113 (rule!4956 lt!584837) lt!584833 (++!4713 lt!584245 lt!584247)))))

(assert (=> b!1622825 (not (matchR!1957 (regex!3130 (rule!4956 lt!584837)) lt!584833))))

(declare-fun lt!584842 () Unit!28726)

(assert (=> b!1622825 (= lt!584842 lt!584838)))

(assert (=> b!1622825 false))

(declare-fun b!1622823 () Bool)

(declare-fun res!725094 () Bool)

(declare-fun e!1040819 () Bool)

(assert (=> b!1622823 (=> (not res!725094) (not e!1040819))))

(declare-datatypes ((Option!3282 0))(
  ( (None!3281) (Some!3281 (v!24304 Rule!6060)) )
))
(declare-fun get!5117 (Option!3282) Rule!6060)

(declare-fun getRuleFromTag!278 (LexerInterface!2759 List!17842 String!20434) Option!3282)

(assert (=> b!1622823 (= res!725094 (matchR!1957 (regex!3130 (get!5117 (getRuleFromTag!278 thiss!17113 rules!1846 (tag!3408 (rule!4956 lt!584837))))) (list!6966 (charsOf!1779 lt!584837))))))

(declare-fun d!488664 () Bool)

(assert (=> d!488664 (isDefined!2644 (maxPrefix!1323 thiss!17113 rules!1846 (++!4713 lt!584245 lt!584247)))))

(declare-fun lt!584843 () Unit!28726)

(assert (=> d!488664 (= lt!584843 e!1040820)))

(declare-fun c!264229 () Bool)

(assert (=> d!488664 (= c!264229 (isEmpty!10805 (maxPrefix!1323 thiss!17113 rules!1846 (++!4713 lt!584245 lt!584247))))))

(declare-fun lt!584840 () Unit!28726)

(declare-fun lt!584844 () Unit!28726)

(assert (=> d!488664 (= lt!584840 lt!584844)))

(assert (=> d!488664 e!1040819))

(declare-fun res!725093 () Bool)

(assert (=> d!488664 (=> (not res!725093) (not e!1040819))))

(declare-fun isDefined!2649 (Option!3282) Bool)

(assert (=> d!488664 (= res!725093 (isDefined!2649 (getRuleFromTag!278 thiss!17113 rules!1846 (tag!3408 (rule!4956 lt!584837)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!278 (LexerInterface!2759 List!17842 List!17840 Token!5826) Unit!28726)

(assert (=> d!488664 (= lt!584844 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!278 thiss!17113 rules!1846 lt!584245 lt!584837))))

(declare-fun lt!584845 () Unit!28726)

(declare-fun lt!584836 () Unit!28726)

(assert (=> d!488664 (= lt!584845 lt!584836)))

(declare-fun lt!584835 () List!17840)

(assert (=> d!488664 (isPrefix!1390 lt!584835 (++!4713 lt!584245 lt!584247))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!164 (List!17840 List!17840 List!17840) Unit!28726)

(assert (=> d!488664 (= lt!584836 (lemmaPrefixStaysPrefixWhenAddingToSuffix!164 lt!584835 lt!584245 lt!584247))))

(assert (=> d!488664 (= lt!584835 (list!6966 (charsOf!1779 lt!584837)))))

(declare-fun lt!584832 () Unit!28726)

(declare-fun lt!584831 () Unit!28726)

(assert (=> d!488664 (= lt!584832 lt!584831)))

(declare-fun lt!584834 () List!17840)

(declare-fun lt!584839 () List!17840)

(assert (=> d!488664 (isPrefix!1390 lt!584834 (++!4713 lt!584834 lt!584839))))

(assert (=> d!488664 (= lt!584831 (lemmaConcatTwoListThenFirstIsPrefix!915 lt!584834 lt!584839))))

(assert (=> d!488664 (= lt!584839 (_2!10065 (get!5112 (maxPrefix!1323 thiss!17113 rules!1846 lt!584245))))))

(assert (=> d!488664 (= lt!584834 (list!6966 (charsOf!1779 lt!584837)))))

(assert (=> d!488664 (= lt!584837 (head!3408 (list!6965 (_1!10064 (lex!1243 thiss!17113 rules!1846 (seqFromList!2010 lt!584245))))))))

(assert (=> d!488664 (not (isEmpty!10794 rules!1846))))

(assert (=> d!488664 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!333 thiss!17113 rules!1846 lt!584245 lt!584247) lt!584843)))

(declare-fun b!1622824 () Bool)

(assert (=> b!1622824 (= e!1040819 (= (rule!4956 lt!584837) (get!5117 (getRuleFromTag!278 thiss!17113 rules!1846 (tag!3408 (rule!4956 lt!584837))))))))

(assert (= (and d!488664 res!725093) b!1622823))

(assert (= (and b!1622823 res!725094) b!1622824))

(assert (= (and d!488664 c!264229) b!1622825))

(assert (= (and d!488664 (not c!264229)) b!1622826))

(declare-fun m!1948975 () Bool)

(assert (=> b!1622825 m!1948975))

(assert (=> b!1622825 m!1947795))

(declare-fun m!1948977 () Bool)

(assert (=> b!1622825 m!1948977))

(declare-fun m!1948979 () Bool)

(assert (=> b!1622825 m!1948979))

(assert (=> b!1622825 m!1948977))

(declare-fun m!1948981 () Bool)

(assert (=> b!1622825 m!1948981))

(declare-fun m!1948983 () Bool)

(assert (=> b!1622825 m!1948983))

(declare-fun m!1948985 () Bool)

(assert (=> b!1622825 m!1948985))

(assert (=> b!1622825 m!1947795))

(declare-fun m!1948987 () Bool)

(assert (=> b!1622825 m!1948987))

(assert (=> b!1622825 m!1948981))

(assert (=> b!1622823 m!1948983))

(declare-fun m!1948989 () Bool)

(assert (=> b!1622823 m!1948989))

(declare-fun m!1948991 () Bool)

(assert (=> b!1622823 m!1948991))

(assert (=> b!1622823 m!1948981))

(assert (=> b!1622823 m!1948983))

(assert (=> b!1622823 m!1948981))

(assert (=> b!1622823 m!1948991))

(declare-fun m!1948993 () Bool)

(assert (=> b!1622823 m!1948993))

(assert (=> d!488664 m!1947795))

(declare-fun m!1948995 () Bool)

(assert (=> d!488664 m!1948995))

(declare-fun m!1948997 () Bool)

(assert (=> d!488664 m!1948997))

(declare-fun m!1948999 () Bool)

(assert (=> d!488664 m!1948999))

(assert (=> d!488664 m!1948981))

(assert (=> d!488664 m!1948983))

(assert (=> d!488664 m!1947731))

(assert (=> d!488664 m!1947705))

(assert (=> d!488664 m!1947795))

(declare-fun m!1949001 () Bool)

(assert (=> d!488664 m!1949001))

(assert (=> d!488664 m!1948177))

(assert (=> d!488664 m!1949001))

(declare-fun m!1949003 () Bool)

(assert (=> d!488664 m!1949003))

(assert (=> d!488664 m!1947691))

(assert (=> d!488664 m!1948177))

(declare-fun m!1949005 () Bool)

(assert (=> d!488664 m!1949005))

(declare-fun m!1949007 () Bool)

(assert (=> d!488664 m!1949007))

(declare-fun m!1949009 () Bool)

(assert (=> d!488664 m!1949009))

(assert (=> d!488664 m!1947795))

(assert (=> d!488664 m!1947691))

(assert (=> d!488664 m!1947693))

(assert (=> d!488664 m!1947731))

(declare-fun m!1949011 () Bool)

(assert (=> d!488664 m!1949011))

(assert (=> d!488664 m!1949001))

(declare-fun m!1949013 () Bool)

(assert (=> d!488664 m!1949013))

(assert (=> d!488664 m!1948991))

(assert (=> d!488664 m!1948991))

(declare-fun m!1949015 () Bool)

(assert (=> d!488664 m!1949015))

(assert (=> d!488664 m!1949009))

(declare-fun m!1949017 () Bool)

(assert (=> d!488664 m!1949017))

(assert (=> d!488664 m!1948981))

(assert (=> b!1622824 m!1948991))

(assert (=> b!1622824 m!1948991))

(assert (=> b!1622824 m!1948993))

(assert (=> b!1622172 d!488664))

(declare-fun d!488682 () Bool)

(assert (=> d!488682 (= (isEmpty!10794 rules!1846) (is-Nil!17772 rules!1846))))

(assert (=> b!1622151 d!488682))

(declare-fun b!1622840 () Bool)

(declare-fun e!1040823 () Bool)

(declare-fun tp!472135 () Bool)

(declare-fun tp!472137 () Bool)

(assert (=> b!1622840 (= e!1040823 (and tp!472135 tp!472137))))

(declare-fun b!1622837 () Bool)

(declare-fun tp_is_empty!7267 () Bool)

(assert (=> b!1622837 (= e!1040823 tp_is_empty!7267)))

(assert (=> b!1622158 (= tp!472084 e!1040823)))

(declare-fun b!1622839 () Bool)

(declare-fun tp!472134 () Bool)

(assert (=> b!1622839 (= e!1040823 tp!472134)))

(declare-fun b!1622838 () Bool)

(declare-fun tp!472133 () Bool)

(declare-fun tp!472136 () Bool)

(assert (=> b!1622838 (= e!1040823 (and tp!472133 tp!472136))))

(assert (= (and b!1622158 (is-ElementMatch!4458 (regex!3130 (h!23173 rules!1846)))) b!1622837))

(assert (= (and b!1622158 (is-Concat!7679 (regex!3130 (h!23173 rules!1846)))) b!1622838))

(assert (= (and b!1622158 (is-Star!4458 (regex!3130 (h!23173 rules!1846)))) b!1622839))

(assert (= (and b!1622158 (is-Union!4458 (regex!3130 (h!23173 rules!1846)))) b!1622840))

(declare-fun b!1622851 () Bool)

(declare-fun b_free!43743 () Bool)

(declare-fun b_next!44447 () Bool)

(assert (=> b!1622851 (= b_free!43743 (not b_next!44447))))

(declare-fun tp!472149 () Bool)

(declare-fun b_and!115093 () Bool)

(assert (=> b!1622851 (= tp!472149 b_and!115093)))

(declare-fun b_free!43745 () Bool)

(declare-fun b_next!44449 () Bool)

(assert (=> b!1622851 (= b_free!43745 (not b_next!44449))))

(declare-fun t!148838 () Bool)

(declare-fun tb!93223 () Bool)

(assert (=> (and b!1622851 (= (toChars!4416 (transformation!3130 (h!23173 (t!148807 rules!1846)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457)))))) t!148838) tb!93223))

(declare-fun result!112390 () Bool)

(assert (= result!112390 result!112366))

(assert (=> d!488522 t!148838))

(declare-fun tb!93225 () Bool)

(declare-fun t!148840 () Bool)

(assert (=> (and b!1622851 (= (toChars!4416 (transformation!3130 (h!23173 (t!148807 rules!1846)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457))))) t!148840) tb!93225))

(declare-fun result!112392 () Bool)

(assert (= result!112392 result!112378))

(assert (=> b!1622685 t!148840))

(assert (=> d!488656 t!148840))

(declare-fun b_and!115095 () Bool)

(declare-fun tp!472146 () Bool)

(assert (=> b!1622851 (= tp!472146 (and (=> t!148838 result!112390) (=> t!148840 result!112392) b_and!115095))))

(declare-fun e!1040832 () Bool)

(assert (=> b!1622851 (= e!1040832 (and tp!472149 tp!472146))))

(declare-fun b!1622850 () Bool)

(declare-fun e!1040834 () Bool)

(declare-fun tp!472148 () Bool)

(assert (=> b!1622850 (= e!1040834 (and tp!472148 (inv!23158 (tag!3408 (h!23173 (t!148807 rules!1846)))) (inv!23162 (transformation!3130 (h!23173 (t!148807 rules!1846)))) e!1040832))))

(declare-fun b!1622849 () Bool)

(declare-fun e!1040833 () Bool)

(declare-fun tp!472147 () Bool)

(assert (=> b!1622849 (= e!1040833 (and e!1040834 tp!472147))))

(assert (=> b!1622148 (= tp!472082 e!1040833)))

(assert (= b!1622850 b!1622851))

(assert (= b!1622849 b!1622850))

(assert (= (and b!1622148 (is-Cons!17772 (t!148807 rules!1846))) b!1622849))

(declare-fun m!1949019 () Bool)

(assert (=> b!1622850 m!1949019))

(declare-fun m!1949021 () Bool)

(assert (=> b!1622850 m!1949021))

(declare-fun b!1622855 () Bool)

(declare-fun e!1040836 () Bool)

(declare-fun tp!472152 () Bool)

(declare-fun tp!472154 () Bool)

(assert (=> b!1622855 (= e!1040836 (and tp!472152 tp!472154))))

(declare-fun b!1622852 () Bool)

(assert (=> b!1622852 (= e!1040836 tp_is_empty!7267)))

(assert (=> b!1622155 (= tp!472086 e!1040836)))

(declare-fun b!1622854 () Bool)

(declare-fun tp!472151 () Bool)

(assert (=> b!1622854 (= e!1040836 tp!472151)))

(declare-fun b!1622853 () Bool)

(declare-fun tp!472150 () Bool)

(declare-fun tp!472153 () Bool)

(assert (=> b!1622853 (= e!1040836 (and tp!472150 tp!472153))))

(assert (= (and b!1622155 (is-ElementMatch!4458 (regex!3130 (rule!4956 (h!23172 tokens!457))))) b!1622852))

(assert (= (and b!1622155 (is-Concat!7679 (regex!3130 (rule!4956 (h!23172 tokens!457))))) b!1622853))

(assert (= (and b!1622155 (is-Star!4458 (regex!3130 (rule!4956 (h!23172 tokens!457))))) b!1622854))

(assert (= (and b!1622155 (is-Union!4458 (regex!3130 (rule!4956 (h!23172 tokens!457))))) b!1622855))

(declare-fun b!1622869 () Bool)

(declare-fun b_free!43747 () Bool)

(declare-fun b_next!44451 () Bool)

(assert (=> b!1622869 (= b_free!43747 (not b_next!44451))))

(declare-fun tp!472169 () Bool)

(declare-fun b_and!115097 () Bool)

(assert (=> b!1622869 (= tp!472169 b_and!115097)))

(declare-fun b_free!43749 () Bool)

(declare-fun b_next!44453 () Bool)

(assert (=> b!1622869 (= b_free!43749 (not b_next!44453))))

(declare-fun t!148842 () Bool)

(declare-fun tb!93227 () Bool)

(assert (=> (and b!1622869 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457)))))) t!148842) tb!93227))

(declare-fun result!112396 () Bool)

(assert (= result!112396 result!112366))

(assert (=> d!488522 t!148842))

(declare-fun t!148844 () Bool)

(declare-fun tb!93229 () Bool)

(assert (=> (and b!1622869 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457))))) t!148844) tb!93229))

(declare-fun result!112398 () Bool)

(assert (= result!112398 result!112378))

(assert (=> b!1622685 t!148844))

(assert (=> d!488656 t!148844))

(declare-fun tp!472167 () Bool)

(declare-fun b_and!115099 () Bool)

(assert (=> b!1622869 (= tp!472167 (and (=> t!148842 result!112396) (=> t!148844 result!112398) b_and!115099))))

(declare-fun e!1040849 () Bool)

(assert (=> b!1622146 (= tp!472083 e!1040849)))

(declare-fun e!1040853 () Bool)

(declare-fun tp!472168 () Bool)

(declare-fun b!1622866 () Bool)

(assert (=> b!1622866 (= e!1040849 (and (inv!23161 (h!23172 (t!148806 tokens!457))) e!1040853 tp!472168))))

(declare-fun b!1622868 () Bool)

(declare-fun e!1040850 () Bool)

(declare-fun e!1040851 () Bool)

(declare-fun tp!472165 () Bool)

(assert (=> b!1622868 (= e!1040851 (and tp!472165 (inv!23158 (tag!3408 (rule!4956 (h!23172 (t!148806 tokens!457))))) (inv!23162 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) e!1040850))))

(declare-fun b!1622867 () Bool)

(declare-fun tp!472166 () Bool)

(assert (=> b!1622867 (= e!1040853 (and (inv!21 (value!98879 (h!23172 (t!148806 tokens!457)))) e!1040851 tp!472166))))

(assert (=> b!1622869 (= e!1040850 (and tp!472169 tp!472167))))

(assert (= b!1622868 b!1622869))

(assert (= b!1622867 b!1622868))

(assert (= b!1622866 b!1622867))

(assert (= (and b!1622146 (is-Cons!17771 (t!148806 tokens!457))) b!1622866))

(declare-fun m!1949023 () Bool)

(assert (=> b!1622866 m!1949023))

(declare-fun m!1949025 () Bool)

(assert (=> b!1622868 m!1949025))

(declare-fun m!1949027 () Bool)

(assert (=> b!1622868 m!1949027))

(declare-fun m!1949029 () Bool)

(assert (=> b!1622867 m!1949029))

(declare-fun b!1622874 () Bool)

(declare-fun e!1040857 () Bool)

(declare-fun tp!472172 () Bool)

(assert (=> b!1622874 (= e!1040857 (and tp_is_empty!7267 tp!472172))))

(assert (=> b!1622167 (= tp!472079 e!1040857)))

(assert (= (and b!1622167 (is-Cons!17770 (originalCharacters!3944 (h!23172 tokens!457)))) b!1622874))

(declare-fun b_lambda!51141 () Bool)

(assert (= b_lambda!51139 (or (and b!1622164 b_free!43729) (and b!1622160 b_free!43733 (= (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) (and b!1622851 b_free!43745 (= (toChars!4416 (transformation!3130 (h!23173 (t!148807 rules!1846)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) (and b!1622869 b_free!43749 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) b_lambda!51141)))

(declare-fun b_lambda!51143 () Bool)

(assert (= b_lambda!51135 (or (and b!1622164 b_free!43729) (and b!1622160 b_free!43733 (= (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) (and b!1622851 b_free!43745 (= (toChars!4416 (transformation!3130 (h!23173 (t!148807 rules!1846)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) (and b!1622869 b_free!43749 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))))) b_lambda!51143)))

(declare-fun b_lambda!51145 () Bool)

(assert (= b_lambda!51129 (or (and b!1622164 b_free!43729 (= (toChars!4416 (transformation!3130 (rule!4956 (h!23172 tokens!457)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))))) (and b!1622160 b_free!43733 (= (toChars!4416 (transformation!3130 (h!23173 rules!1846))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))))) (and b!1622851 b_free!43745 (= (toChars!4416 (transformation!3130 (h!23173 (t!148807 rules!1846)))) (toChars!4416 (transformation!3130 (rule!4956 (h!23172 (t!148806 tokens!457))))))) (and b!1622869 b_free!43749) b_lambda!51145)))

(push 1)

(assert (not b_next!44449))

(assert (not b!1622763))

(assert (not d!488524))

(assert (not b!1622264))

(assert (not b!1622659))

(assert (not b!1622478))

(assert (not b!1622685))

(assert (not b!1622758))

(assert (not b!1622558))

(assert (not b!1622477))

(assert b_and!115093)

(assert (not d!488634))

(assert (not b!1622542))

(assert (not d!488538))

(assert (not b!1622748))

(assert (not b!1622493))

(assert (not b!1622652))

(assert (not b!1622702))

(assert (not bm!105152))

(assert (not d!488448))

(assert (not b!1622705))

(assert (not b!1622433))

(assert (not d!488522))

(assert (not b!1622543))

(assert (not b!1622479))

(assert (not b!1622750))

(assert (not d!488626))

(assert (not b!1622604))

(assert (not b!1622670))

(assert (not b!1622850))

(assert (not b!1622405))

(assert b_and!115095)

(assert (not d!488526))

(assert (not d!488456))

(assert (not b!1622710))

(assert (not d!488640))

(assert b_and!115099)

(assert (not b!1622731))

(assert (not d!488636))

(assert (not b_next!44451))

(assert (not d!488660))

(assert (not b!1622755))

(assert (not b!1622726))

(assert (not b!1622687))

(assert (not d!488514))

(assert (not b!1622492))

(assert (not b!1622533))

(assert (not b!1622867))

(assert (not d!488652))

(assert (not bm!105160))

(assert (not d!488632))

(assert (not b!1622824))

(assert (not tb!93207))

(assert (not b!1622839))

(assert (not b!1622435))

(assert (not bm!105159))

(assert b_and!115091)

(assert (not b!1622534))

(assert (not b!1622654))

(assert (not b!1622544))

(assert (not d!488588))

(assert (not b!1622723))

(assert (not d!488534))

(assert (not b!1622868))

(assert (not b!1622769))

(assert (not d!488584))

(assert (not b!1622436))

(assert (not d!488498))

(assert (not d!488630))

(assert (not b!1622745))

(assert (not d!488458))

(assert (not d!488512))

(assert (not b!1622646))

(assert (not b!1622497))

(assert (not b!1622568))

(assert (not b!1622854))

(assert (not b!1622855))

(assert (not d!488598))

(assert (not d!488494))

(assert (not b!1622672))

(assert (not b!1622759))

(assert b_and!115053)

(assert tp_is_empty!7267)

(assert (not b_lambda!51145))

(assert (not d!488604))

(assert (not d!488590))

(assert b_and!115057)

(assert (not b!1622651))

(assert (not b!1622838))

(assert (not b!1622599))

(assert (not d!488446))

(assert (not b_lambda!51141))

(assert (not b!1622732))

(assert (not d!488646))

(assert (not b!1622727))

(assert (not b!1622840))

(assert (not b!1622703))

(assert (not b!1622874))

(assert (not b_next!44437))

(assert (not b!1622849))

(assert (not b!1622263))

(assert (not d!488624))

(assert (not b_next!44435))

(assert (not b!1622406))

(assert (not b!1622494))

(assert (not b!1622728))

(assert (not d!488518))

(assert (not b!1622605))

(assert (not d!488620))

(assert (not d!488600))

(assert (not d!488648))

(assert (not b_next!44447))

(assert (not d!488612))

(assert (not d!488484))

(assert (not d!488486))

(assert (not b!1622853))

(assert (not d!488628))

(assert b_and!115089)

(assert (not b!1622502))

(assert (not b!1622269))

(assert (not d!488442))

(assert (not b!1622751))

(assert (not b!1622648))

(assert (not b!1622393))

(assert (not b!1622760))

(assert (not d!488582))

(assert (not b!1622714))

(assert (not b!1622653))

(assert (not b!1622747))

(assert (not d!488586))

(assert (not b!1622557))

(assert (not d!488552))

(assert (not d!488610))

(assert (not d!488644))

(assert (not b!1622823))

(assert (not b!1622602))

(assert (not b!1622482))

(assert (not b!1622663))

(assert (not d!488654))

(assert (not b!1622270))

(assert (not b!1622404))

(assert (not b_next!44433))

(assert (not d!488540))

(assert (not b!1622733))

(assert (not d!488638))

(assert (not b!1622825))

(assert (not b!1622713))

(assert (not b!1622531))

(assert (not d!488516))

(assert (not d!488542))

(assert (not d!488642))

(assert (not d!488664))

(assert (not b!1622762))

(assert (not b!1622708))

(assert (not d!488650))

(assert (not b_lambda!51143))

(assert (not b_next!44431))

(assert (not b!1622709))

(assert (not b!1622434))

(assert (not bm!105158))

(assert (not b!1622603))

(assert (not d!488480))

(assert (not b!1622491))

(assert (not b!1622715))

(assert (not b!1622724))

(assert (not b!1622279))

(assert (not d!488656))

(assert (not b!1622757))

(assert (not b!1622394))

(assert (not d!488520))

(assert (not b!1622598))

(assert (not b!1622730))

(assert (not b!1622770))

(assert (not d!488532))

(assert (not tb!93215))

(assert (not b!1622649))

(assert (not bm!105155))

(assert (not b!1622725))

(assert (not b!1622707))

(assert (not b!1622647))

(assert (not b_next!44453))

(assert (not b!1622866))

(assert (not d!488662))

(assert (not b!1622744))

(assert (not d!488556))

(assert (not b!1622601))

(assert (not b!1622686))

(assert (not b!1622712))

(assert b_and!115097)

(check-sat)

(pop 1)

(push 1)

(assert b_and!115093)

(assert b_and!115095)

(assert b_and!115091)

(assert (not b_next!44449))

(assert b_and!115053)

(assert b_and!115057)

(assert (not b_next!44447))

(assert b_and!115089)

(assert (not b_next!44433))

(assert (not b_next!44431))

(assert b_and!115099)

(assert (not b_next!44451))

(assert (not b_next!44437))

(assert (not b_next!44435))

(assert (not b_next!44453))

(assert b_and!115097)

(check-sat)

(pop 1)

