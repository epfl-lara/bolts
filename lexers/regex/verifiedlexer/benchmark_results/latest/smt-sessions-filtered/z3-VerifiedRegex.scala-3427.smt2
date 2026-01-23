; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192992 () Bool)

(assert start!192992)

(declare-fun b!1925669 () Bool)

(declare-fun b_free!55153 () Bool)

(declare-fun b_next!55857 () Bool)

(assert (=> b!1925669 (= b_free!55153 (not b_next!55857))))

(declare-fun tp!550167 () Bool)

(declare-fun b_and!150915 () Bool)

(assert (=> b!1925669 (= tp!550167 b_and!150915)))

(declare-fun b_free!55155 () Bool)

(declare-fun b_next!55859 () Bool)

(assert (=> b!1925669 (= b_free!55155 (not b_next!55859))))

(declare-fun tp!550165 () Bool)

(declare-fun b_and!150917 () Bool)

(assert (=> b!1925669 (= tp!550165 b_and!150917)))

(declare-fun b!1925650 () Bool)

(declare-fun b_free!55157 () Bool)

(declare-fun b_next!55861 () Bool)

(assert (=> b!1925650 (= b_free!55157 (not b_next!55861))))

(declare-fun tp!550176 () Bool)

(declare-fun b_and!150919 () Bool)

(assert (=> b!1925650 (= tp!550176 b_and!150919)))

(declare-fun b_free!55159 () Bool)

(declare-fun b_next!55863 () Bool)

(assert (=> b!1925650 (= b_free!55159 (not b_next!55863))))

(declare-fun tp!550166 () Bool)

(declare-fun b_and!150921 () Bool)

(assert (=> b!1925650 (= tp!550166 b_and!150921)))

(declare-fun b!1925663 () Bool)

(declare-fun b_free!55161 () Bool)

(declare-fun b_next!55865 () Bool)

(assert (=> b!1925663 (= b_free!55161 (not b_next!55865))))

(declare-fun tp!550171 () Bool)

(declare-fun b_and!150923 () Bool)

(assert (=> b!1925663 (= tp!550171 b_and!150923)))

(declare-fun b_free!55163 () Bool)

(declare-fun b_next!55867 () Bool)

(assert (=> b!1925663 (= b_free!55163 (not b_next!55867))))

(declare-fun tp!550174 () Bool)

(declare-fun b_and!150925 () Bool)

(assert (=> b!1925663 (= tp!550174 b_and!150925)))

(declare-fun b!1925643 () Bool)

(declare-fun e!1230929 () Bool)

(declare-datatypes ((List!21998 0))(
  ( (Nil!21916) (Cons!21916 (h!27317 (_ BitVec 16)) (t!179435 List!21998)) )
))
(declare-datatypes ((TokenValue!4066 0))(
  ( (FloatLiteralValue!8132 (text!28907 List!21998)) (TokenValueExt!4065 (__x!13630 Int)) (Broken!20330 (value!123570 List!21998)) (Object!4147) (End!4066) (Def!4066) (Underscore!4066) (Match!4066) (Else!4066) (Error!4066) (Case!4066) (If!4066) (Extends!4066) (Abstract!4066) (Class!4066) (Val!4066) (DelimiterValue!8132 (del!4126 List!21998)) (KeywordValue!4072 (value!123571 List!21998)) (CommentValue!8132 (value!123572 List!21998)) (WhitespaceValue!8132 (value!123573 List!21998)) (IndentationValue!4066 (value!123574 List!21998)) (String!25447) (Int32!4066) (Broken!20331 (value!123575 List!21998)) (Boolean!4067) (Unit!36253) (OperatorValue!4069 (op!4126 List!21998)) (IdentifierValue!8132 (value!123576 List!21998)) (IdentifierValue!8133 (value!123577 List!21998)) (WhitespaceValue!8133 (value!123578 List!21998)) (True!8132) (False!8132) (Broken!20332 (value!123579 List!21998)) (Broken!20333 (value!123580 List!21998)) (True!8133) (RightBrace!4066) (RightBracket!4066) (Colon!4066) (Null!4066) (Comma!4066) (LeftBracket!4066) (False!8133) (LeftBrace!4066) (ImaginaryLiteralValue!4066 (text!28908 List!21998)) (StringLiteralValue!12198 (value!123581 List!21998)) (EOFValue!4066 (value!123582 List!21998)) (IdentValue!4066 (value!123583 List!21998)) (DelimiterValue!8133 (value!123584 List!21998)) (DedentValue!4066 (value!123585 List!21998)) (NewLineValue!4066 (value!123586 List!21998)) (IntegerValue!12198 (value!123587 (_ BitVec 32)) (text!28909 List!21998)) (IntegerValue!12199 (value!123588 Int) (text!28910 List!21998)) (Times!4066) (Or!4066) (Equal!4066) (Minus!4066) (Broken!20334 (value!123589 List!21998)) (And!4066) (Div!4066) (LessEqual!4066) (Mod!4066) (Concat!9421) (Not!4066) (Plus!4066) (SpaceValue!4066 (value!123590 List!21998)) (IntegerValue!12200 (value!123591 Int) (text!28911 List!21998)) (StringLiteralValue!12199 (text!28912 List!21998)) (FloatLiteralValue!8133 (text!28913 List!21998)) (BytesLiteralValue!4066 (value!123592 List!21998)) (CommentValue!8133 (value!123593 List!21998)) (StringLiteralValue!12200 (value!123594 List!21998)) (ErrorTokenValue!4066 (msg!4127 List!21998)) )
))
(declare-datatypes ((C!10856 0))(
  ( (C!10857 (val!6380 Int)) )
))
(declare-datatypes ((List!21999 0))(
  ( (Nil!21917) (Cons!21917 (h!27318 C!10856) (t!179436 List!21999)) )
))
(declare-datatypes ((Regex!5355 0))(
  ( (ElementMatch!5355 (c!313078 C!10856)) (Concat!9422 (regOne!11222 Regex!5355) (regTwo!11222 Regex!5355)) (EmptyExpr!5355) (Star!5355 (reg!5684 Regex!5355)) (EmptyLang!5355) (Union!5355 (regOne!11223 Regex!5355) (regTwo!11223 Regex!5355)) )
))
(declare-datatypes ((String!25448 0))(
  ( (String!25449 (value!123595 String)) )
))
(declare-datatypes ((IArray!14633 0))(
  ( (IArray!14634 (innerList!7374 List!21999)) )
))
(declare-datatypes ((Conc!7314 0))(
  ( (Node!7314 (left!17433 Conc!7314) (right!17763 Conc!7314) (csize!14858 Int) (cheight!7525 Int)) (Leaf!10742 (xs!10208 IArray!14633) (csize!14859 Int)) (Empty!7314) )
))
(declare-datatypes ((BalanceConc!14444 0))(
  ( (BalanceConc!14445 (c!313079 Conc!7314)) )
))
(declare-datatypes ((TokenValueInjection!7716 0))(
  ( (TokenValueInjection!7717 (toValue!5563 Int) (toChars!5422 Int)) )
))
(declare-datatypes ((Rule!7660 0))(
  ( (Rule!7661 (regex!3930 Regex!5355) (tag!4374 String!25448) (isSeparator!3930 Bool) (transformation!3930 TokenValueInjection!7716)) )
))
(declare-datatypes ((Token!7412 0))(
  ( (Token!7413 (value!123596 TokenValue!4066) (rule!6135 Rule!7660) (size!17100 Int) (originalCharacters!4737 List!21999)) )
))
(declare-datatypes ((tuple2!20534 0))(
  ( (tuple2!20535 (_1!11736 Token!7412) (_2!11736 List!21999)) )
))
(declare-datatypes ((Option!4535 0))(
  ( (None!4534) (Some!4534 (v!26621 tuple2!20534)) )
))
(declare-fun lt!737958 () Option!4535)

(declare-datatypes ((List!22000 0))(
  ( (Nil!21918) (Cons!21918 (h!27319 Token!7412) (t!179437 List!22000)) )
))
(declare-fun tokens!598 () List!22000)

(declare-fun get!6897 (Option!4535) tuple2!20534)

(assert (=> b!1925643 (= e!1230929 (= (_1!11736 (get!6897 lt!737958)) (h!27319 tokens!598)))))

(declare-fun b!1925644 () Bool)

(declare-fun e!1230927 () Bool)

(assert (=> b!1925644 (= e!1230927 false)))

(declare-fun b!1925645 () Bool)

(declare-fun res!861064 () Bool)

(declare-fun e!1230931 () Bool)

(assert (=> b!1925645 (=> (not res!861064) (not e!1230931))))

(declare-datatypes ((List!22001 0))(
  ( (Nil!21919) (Cons!21919 (h!27320 Rule!7660) (t!179438 List!22001)) )
))
(declare-fun rules!3198 () List!22001)

(declare-fun isEmpty!13494 (List!22001) Bool)

(assert (=> b!1925645 (= res!861064 (not (isEmpty!13494 rules!3198)))))

(declare-fun b!1925646 () Bool)

(declare-fun lt!737949 () List!21999)

(declare-fun lt!737953 () List!21999)

(declare-fun e!1230918 () Bool)

(declare-fun lt!737942 () List!21999)

(assert (=> b!1925646 (= e!1230918 (or (not (= lt!737953 lt!737942)) (not (= lt!737942 lt!737949)) (= lt!737953 lt!737949)))))

(declare-datatypes ((LexerInterface!3543 0))(
  ( (LexerInterfaceExt!3540 (__x!13631 Int)) (Lexer!3541) )
))
(declare-fun thiss!23328 () LexerInterface!3543)

(declare-fun printList!1078 (LexerInterface!3543 List!22000) List!21999)

(assert (=> b!1925646 (= lt!737942 (printList!1078 thiss!23328 (Cons!21918 (h!27319 tokens!598) Nil!21918)))))

(declare-fun lt!737943 () BalanceConc!14444)

(declare-fun list!8863 (BalanceConc!14444) List!21999)

(assert (=> b!1925646 (= lt!737953 (list!8863 lt!737943))))

(declare-datatypes ((IArray!14635 0))(
  ( (IArray!14636 (innerList!7375 List!22000)) )
))
(declare-datatypes ((Conc!7315 0))(
  ( (Node!7315 (left!17434 Conc!7315) (right!17764 Conc!7315) (csize!14860 Int) (cheight!7526 Int)) (Leaf!10743 (xs!10209 IArray!14635) (csize!14861 Int)) (Empty!7315) )
))
(declare-datatypes ((BalanceConc!14446 0))(
  ( (BalanceConc!14447 (c!313080 Conc!7315)) )
))
(declare-fun lt!737964 () BalanceConc!14446)

(declare-fun printTailRec!1019 (LexerInterface!3543 BalanceConc!14446 Int BalanceConc!14444) BalanceConc!14444)

(assert (=> b!1925646 (= lt!737943 (printTailRec!1019 thiss!23328 lt!737964 0 (BalanceConc!14445 Empty!7314)))))

(declare-fun print!1513 (LexerInterface!3543 BalanceConc!14446) BalanceConc!14444)

(assert (=> b!1925646 (= lt!737943 (print!1513 thiss!23328 lt!737964))))

(declare-fun singletonSeq!1914 (Token!7412) BalanceConc!14446)

(assert (=> b!1925646 (= lt!737964 (singletonSeq!1914 (h!27319 tokens!598)))))

(declare-fun lt!737956 () C!10856)

(declare-fun contains!3959 (List!21999 C!10856) Bool)

(declare-fun usedCharacters!382 (Regex!5355) List!21999)

(assert (=> b!1925646 (not (contains!3959 (usedCharacters!382 (regex!3930 (rule!6135 (h!27319 tokens!598)))) lt!737956))))

(declare-fun separatorToken!354 () Token!7412)

(declare-datatypes ((Unit!36254 0))(
  ( (Unit!36255) )
))
(declare-fun lt!737951 () Unit!36254)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!78 (LexerInterface!3543 List!22001 List!22001 Rule!7660 Rule!7660 C!10856) Unit!36254)

(assert (=> b!1925646 (= lt!737951 (lemmaNonSepRuleNotContainsCharContainedInASepRule!78 thiss!23328 rules!3198 rules!3198 (rule!6135 (h!27319 tokens!598)) (rule!6135 separatorToken!354) lt!737956))))

(declare-fun lt!737946 () Unit!36254)

(declare-fun e!1230933 () Unit!36254)

(assert (=> b!1925646 (= lt!737946 e!1230933)))

(declare-fun c!313077 () Bool)

(assert (=> b!1925646 (= c!313077 (not (contains!3959 (usedCharacters!382 (regex!3930 (rule!6135 separatorToken!354))) lt!737956)))))

(declare-fun lt!737959 () List!21999)

(declare-fun head!4488 (List!21999) C!10856)

(assert (=> b!1925646 (= lt!737956 (head!4488 lt!737959))))

(declare-fun lt!737955 () List!21999)

(declare-fun ++!5875 (List!21999 List!21999) List!21999)

(assert (=> b!1925646 (= (++!5875 (++!5875 lt!737949 lt!737959) lt!737955) (++!5875 lt!737949 (++!5875 lt!737959 lt!737955)))))

(declare-fun lt!737961 () Unit!36254)

(declare-fun lemmaConcatAssociativity!1189 (List!21999 List!21999 List!21999) Unit!36254)

(assert (=> b!1925646 (= lt!737961 (lemmaConcatAssociativity!1189 lt!737949 lt!737959 lt!737955))))

(declare-fun res!861068 () Bool)

(assert (=> start!192992 (=> (not res!861068) (not e!1230931))))

(get-info :version)

(assert (=> start!192992 (= res!861068 ((_ is Lexer!3541) thiss!23328))))

(assert (=> start!192992 e!1230931))

(assert (=> start!192992 true))

(declare-fun e!1230916 () Bool)

(assert (=> start!192992 e!1230916))

(declare-fun e!1230934 () Bool)

(assert (=> start!192992 e!1230934))

(declare-fun e!1230917 () Bool)

(declare-fun inv!28997 (Token!7412) Bool)

(assert (=> start!192992 (and (inv!28997 separatorToken!354) e!1230917)))

(declare-fun b!1925647 () Bool)

(declare-fun e!1230925 () Bool)

(declare-fun lt!737962 () Rule!7660)

(assert (=> b!1925647 (= e!1230925 (= (rule!6135 separatorToken!354) lt!737962))))

(declare-fun b!1925648 () Bool)

(declare-fun tp!550175 () Bool)

(declare-fun e!1230920 () Bool)

(declare-fun inv!21 (TokenValue!4066) Bool)

(assert (=> b!1925648 (= e!1230917 (and (inv!21 (value!123596 separatorToken!354)) e!1230920 tp!550175))))

(declare-fun b!1925649 () Bool)

(declare-fun Unit!36256 () Unit!36254)

(assert (=> b!1925649 (= e!1230933 Unit!36256)))

(declare-fun lt!737947 () Unit!36254)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!282 (Regex!5355 List!21999 C!10856) Unit!36254)

(assert (=> b!1925649 (= lt!737947 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!282 (regex!3930 (rule!6135 separatorToken!354)) lt!737959 lt!737956))))

(declare-fun res!861057 () Bool)

(declare-fun matchR!2623 (Regex!5355 List!21999) Bool)

(assert (=> b!1925649 (= res!861057 (not (matchR!2623 (regex!3930 (rule!6135 separatorToken!354)) lt!737959)))))

(assert (=> b!1925649 (=> (not res!861057) (not e!1230927))))

(assert (=> b!1925649 e!1230927))

(declare-fun e!1230938 () Bool)

(assert (=> b!1925650 (= e!1230938 (and tp!550176 tp!550166))))

(declare-fun tp!550169 () Bool)

(declare-fun b!1925651 () Bool)

(declare-fun e!1230930 () Bool)

(assert (=> b!1925651 (= e!1230934 (and (inv!28997 (h!27319 tokens!598)) e!1230930 tp!550169))))

(declare-fun b!1925652 () Bool)

(declare-fun res!861066 () Bool)

(assert (=> b!1925652 (=> (not res!861066) (not e!1230931))))

(assert (=> b!1925652 (= res!861066 ((_ is Cons!21918) tokens!598))))

(declare-fun b!1925653 () Bool)

(declare-fun e!1230922 () Bool)

(assert (=> b!1925653 (= e!1230922 e!1230925)))

(declare-fun res!861059 () Bool)

(assert (=> b!1925653 (=> (not res!861059) (not e!1230925))))

(assert (=> b!1925653 (= res!861059 (matchR!2623 (regex!3930 lt!737962) lt!737959))))

(declare-datatypes ((Option!4536 0))(
  ( (None!4535) (Some!4535 (v!26622 Rule!7660)) )
))
(declare-fun lt!737948 () Option!4536)

(declare-fun get!6898 (Option!4536) Rule!7660)

(assert (=> b!1925653 (= lt!737962 (get!6898 lt!737948))))

(declare-fun b!1925654 () Bool)

(declare-fun res!861056 () Bool)

(assert (=> b!1925654 (=> (not res!861056) (not e!1230931))))

(declare-fun sepAndNonSepRulesDisjointChars!1028 (List!22001 List!22001) Bool)

(assert (=> b!1925654 (= res!861056 (sepAndNonSepRulesDisjointChars!1028 rules!3198 rules!3198))))

(declare-fun b!1925655 () Bool)

(declare-fun tp!550164 () Bool)

(declare-fun e!1230919 () Bool)

(declare-fun inv!28994 (String!25448) Bool)

(declare-fun inv!28998 (TokenValueInjection!7716) Bool)

(assert (=> b!1925655 (= e!1230920 (and tp!550164 (inv!28994 (tag!4374 (rule!6135 separatorToken!354))) (inv!28998 (transformation!3930 (rule!6135 separatorToken!354))) e!1230919))))

(declare-fun b!1925656 () Bool)

(declare-fun res!861069 () Bool)

(assert (=> b!1925656 (=> (not res!861069) (not e!1230931))))

(declare-fun rulesProduceEachTokenIndividuallyList!1274 (LexerInterface!3543 List!22001 List!22000) Bool)

(assert (=> b!1925656 (= res!861069 (rulesProduceEachTokenIndividuallyList!1274 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1925657 () Bool)

(declare-fun e!1230921 () Bool)

(declare-fun e!1230915 () Bool)

(assert (=> b!1925657 (= e!1230921 e!1230915)))

(declare-fun res!861061 () Bool)

(assert (=> b!1925657 (=> (not res!861061) (not e!1230915))))

(declare-fun lt!737954 () Rule!7660)

(assert (=> b!1925657 (= res!861061 (matchR!2623 (regex!3930 lt!737954) lt!737949))))

(declare-fun lt!737957 () Option!4536)

(assert (=> b!1925657 (= lt!737954 (get!6898 lt!737957))))

(declare-fun b!1925658 () Bool)

(declare-fun res!861063 () Bool)

(assert (=> b!1925658 (=> (not res!861063) (not e!1230931))))

(declare-fun rulesProduceIndividualToken!1715 (LexerInterface!3543 List!22001 Token!7412) Bool)

(assert (=> b!1925658 (= res!861063 (rulesProduceIndividualToken!1715 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1925659 () Bool)

(declare-fun tp!550170 () Bool)

(declare-fun e!1230936 () Bool)

(declare-fun e!1230935 () Bool)

(assert (=> b!1925659 (= e!1230935 (and tp!550170 (inv!28994 (tag!4374 (rule!6135 (h!27319 tokens!598)))) (inv!28998 (transformation!3930 (rule!6135 (h!27319 tokens!598)))) e!1230936))))

(declare-fun b!1925660 () Bool)

(declare-fun res!861060 () Bool)

(assert (=> b!1925660 (=> (not res!861060) (not e!1230931))))

(declare-fun lambda!75137 () Int)

(declare-fun forall!4632 (List!22000 Int) Bool)

(assert (=> b!1925660 (= res!861060 (forall!4632 tokens!598 lambda!75137))))

(declare-fun b!1925661 () Bool)

(assert (=> b!1925661 (= e!1230915 (= (rule!6135 (h!27319 tokens!598)) lt!737954))))

(declare-fun b!1925662 () Bool)

(declare-fun res!861055 () Bool)

(assert (=> b!1925662 (=> (not res!861055) (not e!1230931))))

(declare-fun rulesInvariant!3150 (LexerInterface!3543 List!22001) Bool)

(assert (=> b!1925662 (= res!861055 (rulesInvariant!3150 thiss!23328 rules!3198))))

(assert (=> b!1925663 (= e!1230919 (and tp!550171 tp!550174))))

(declare-fun b!1925664 () Bool)

(declare-fun Unit!36257 () Unit!36254)

(assert (=> b!1925664 (= e!1230933 Unit!36257)))

(declare-fun b!1925665 () Bool)

(declare-fun e!1230932 () Bool)

(declare-fun tp!550173 () Bool)

(assert (=> b!1925665 (= e!1230916 (and e!1230932 tp!550173))))

(declare-fun b!1925666 () Bool)

(assert (=> b!1925666 (= e!1230931 (not e!1230918))))

(declare-fun res!861062 () Bool)

(assert (=> b!1925666 (=> res!861062 e!1230918)))

(declare-fun lt!737963 () Bool)

(declare-fun lt!737960 () Option!4535)

(assert (=> b!1925666 (= res!861062 (or (and (not lt!737963) (= (_1!11736 (v!26621 lt!737960)) (h!27319 tokens!598))) lt!737963 (= (_1!11736 (v!26621 lt!737960)) (h!27319 tokens!598))))))

(assert (=> b!1925666 (= lt!737963 (not ((_ is Some!4534) lt!737960)))))

(declare-fun maxPrefix!1981 (LexerInterface!3543 List!22001 List!21999) Option!4535)

(assert (=> b!1925666 (= lt!737960 (maxPrefix!1981 thiss!23328 rules!3198 (++!5875 lt!737949 lt!737955)))))

(declare-fun printWithSeparatorTokenWhenNeededList!582 (LexerInterface!3543 List!22001 List!22000 Token!7412) List!21999)

(assert (=> b!1925666 (= lt!737955 (printWithSeparatorTokenWhenNeededList!582 thiss!23328 rules!3198 (t!179437 tokens!598) separatorToken!354))))

(assert (=> b!1925666 e!1230921))

(declare-fun res!861058 () Bool)

(assert (=> b!1925666 (=> (not res!861058) (not e!1230921))))

(declare-fun isDefined!3829 (Option!4536) Bool)

(assert (=> b!1925666 (= res!861058 (isDefined!3829 lt!737957))))

(declare-fun getRuleFromTag!751 (LexerInterface!3543 List!22001 String!25448) Option!4536)

(assert (=> b!1925666 (= lt!737957 (getRuleFromTag!751 thiss!23328 rules!3198 (tag!4374 (rule!6135 (h!27319 tokens!598)))))))

(declare-fun lt!737941 () Unit!36254)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!751 (LexerInterface!3543 List!22001 List!21999 Token!7412) Unit!36254)

(assert (=> b!1925666 (= lt!737941 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!751 thiss!23328 rules!3198 lt!737949 (h!27319 tokens!598)))))

(assert (=> b!1925666 e!1230929))

(declare-fun res!861067 () Bool)

(assert (=> b!1925666 (=> (not res!861067) (not e!1230929))))

(declare-fun isDefined!3830 (Option!4535) Bool)

(assert (=> b!1925666 (= res!861067 (isDefined!3830 lt!737958))))

(assert (=> b!1925666 (= lt!737958 (maxPrefix!1981 thiss!23328 rules!3198 lt!737949))))

(declare-fun lt!737950 () BalanceConc!14444)

(assert (=> b!1925666 (= lt!737949 (list!8863 lt!737950))))

(assert (=> b!1925666 e!1230922))

(declare-fun res!861065 () Bool)

(assert (=> b!1925666 (=> (not res!861065) (not e!1230922))))

(assert (=> b!1925666 (= res!861065 (isDefined!3829 lt!737948))))

(assert (=> b!1925666 (= lt!737948 (getRuleFromTag!751 thiss!23328 rules!3198 (tag!4374 (rule!6135 separatorToken!354))))))

(declare-fun lt!737944 () Unit!36254)

(assert (=> b!1925666 (= lt!737944 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!751 thiss!23328 rules!3198 lt!737959 separatorToken!354))))

(declare-fun charsOf!2470 (Token!7412) BalanceConc!14444)

(assert (=> b!1925666 (= lt!737959 (list!8863 (charsOf!2470 separatorToken!354)))))

(declare-fun lt!737945 () Unit!36254)

(declare-fun lemmaEqSameImage!616 (TokenValueInjection!7716 BalanceConc!14444 BalanceConc!14444) Unit!36254)

(declare-fun seqFromList!2784 (List!21999) BalanceConc!14444)

(assert (=> b!1925666 (= lt!737945 (lemmaEqSameImage!616 (transformation!3930 (rule!6135 (h!27319 tokens!598))) lt!737950 (seqFromList!2784 (originalCharacters!4737 (h!27319 tokens!598)))))))

(declare-fun lt!737952 () Unit!36254)

(declare-fun lemmaSemiInverse!887 (TokenValueInjection!7716 BalanceConc!14444) Unit!36254)

(assert (=> b!1925666 (= lt!737952 (lemmaSemiInverse!887 (transformation!3930 (rule!6135 (h!27319 tokens!598))) lt!737950))))

(assert (=> b!1925666 (= lt!737950 (charsOf!2470 (h!27319 tokens!598)))))

(declare-fun b!1925667 () Bool)

(declare-fun res!861070 () Bool)

(assert (=> b!1925667 (=> (not res!861070) (not e!1230931))))

(assert (=> b!1925667 (= res!861070 (isSeparator!3930 (rule!6135 separatorToken!354)))))

(declare-fun b!1925668 () Bool)

(declare-fun tp!550168 () Bool)

(assert (=> b!1925668 (= e!1230930 (and (inv!21 (value!123596 (h!27319 tokens!598))) e!1230935 tp!550168))))

(assert (=> b!1925669 (= e!1230936 (and tp!550167 tp!550165))))

(declare-fun tp!550172 () Bool)

(declare-fun b!1925670 () Bool)

(assert (=> b!1925670 (= e!1230932 (and tp!550172 (inv!28994 (tag!4374 (h!27320 rules!3198))) (inv!28998 (transformation!3930 (h!27320 rules!3198))) e!1230938))))

(assert (= (and start!192992 res!861068) b!1925645))

(assert (= (and b!1925645 res!861064) b!1925662))

(assert (= (and b!1925662 res!861055) b!1925656))

(assert (= (and b!1925656 res!861069) b!1925658))

(assert (= (and b!1925658 res!861063) b!1925667))

(assert (= (and b!1925667 res!861070) b!1925660))

(assert (= (and b!1925660 res!861060) b!1925654))

(assert (= (and b!1925654 res!861056) b!1925652))

(assert (= (and b!1925652 res!861066) b!1925666))

(assert (= (and b!1925666 res!861065) b!1925653))

(assert (= (and b!1925653 res!861059) b!1925647))

(assert (= (and b!1925666 res!861067) b!1925643))

(assert (= (and b!1925666 res!861058) b!1925657))

(assert (= (and b!1925657 res!861061) b!1925661))

(assert (= (and b!1925666 (not res!861062)) b!1925646))

(assert (= (and b!1925646 c!313077) b!1925649))

(assert (= (and b!1925646 (not c!313077)) b!1925664))

(assert (= (and b!1925649 res!861057) b!1925644))

(assert (= b!1925670 b!1925650))

(assert (= b!1925665 b!1925670))

(assert (= (and start!192992 ((_ is Cons!21919) rules!3198)) b!1925665))

(assert (= b!1925659 b!1925669))

(assert (= b!1925668 b!1925659))

(assert (= b!1925651 b!1925668))

(assert (= (and start!192992 ((_ is Cons!21918) tokens!598)) b!1925651))

(assert (= b!1925655 b!1925663))

(assert (= b!1925648 b!1925655))

(assert (= start!192992 b!1925648))

(declare-fun m!2361579 () Bool)

(assert (=> b!1925645 m!2361579))

(declare-fun m!2361581 () Bool)

(assert (=> b!1925654 m!2361581))

(declare-fun m!2361583 () Bool)

(assert (=> b!1925648 m!2361583))

(declare-fun m!2361585 () Bool)

(assert (=> b!1925660 m!2361585))

(declare-fun m!2361587 () Bool)

(assert (=> b!1925658 m!2361587))

(declare-fun m!2361589 () Bool)

(assert (=> b!1925643 m!2361589))

(declare-fun m!2361591 () Bool)

(assert (=> b!1925655 m!2361591))

(declare-fun m!2361593 () Bool)

(assert (=> b!1925655 m!2361593))

(declare-fun m!2361595 () Bool)

(assert (=> b!1925662 m!2361595))

(declare-fun m!2361597 () Bool)

(assert (=> b!1925666 m!2361597))

(declare-fun m!2361599 () Bool)

(assert (=> b!1925666 m!2361599))

(declare-fun m!2361601 () Bool)

(assert (=> b!1925666 m!2361601))

(declare-fun m!2361603 () Bool)

(assert (=> b!1925666 m!2361603))

(declare-fun m!2361605 () Bool)

(assert (=> b!1925666 m!2361605))

(assert (=> b!1925666 m!2361599))

(declare-fun m!2361607 () Bool)

(assert (=> b!1925666 m!2361607))

(declare-fun m!2361609 () Bool)

(assert (=> b!1925666 m!2361609))

(declare-fun m!2361611 () Bool)

(assert (=> b!1925666 m!2361611))

(declare-fun m!2361613 () Bool)

(assert (=> b!1925666 m!2361613))

(declare-fun m!2361615 () Bool)

(assert (=> b!1925666 m!2361615))

(declare-fun m!2361617 () Bool)

(assert (=> b!1925666 m!2361617))

(assert (=> b!1925666 m!2361617))

(declare-fun m!2361619 () Bool)

(assert (=> b!1925666 m!2361619))

(assert (=> b!1925666 m!2361613))

(declare-fun m!2361621 () Bool)

(assert (=> b!1925666 m!2361621))

(declare-fun m!2361623 () Bool)

(assert (=> b!1925666 m!2361623))

(declare-fun m!2361625 () Bool)

(assert (=> b!1925666 m!2361625))

(declare-fun m!2361627 () Bool)

(assert (=> b!1925666 m!2361627))

(declare-fun m!2361629 () Bool)

(assert (=> b!1925666 m!2361629))

(declare-fun m!2361631 () Bool)

(assert (=> b!1925666 m!2361631))

(declare-fun m!2361633 () Bool)

(assert (=> b!1925670 m!2361633))

(declare-fun m!2361635 () Bool)

(assert (=> b!1925670 m!2361635))

(declare-fun m!2361637 () Bool)

(assert (=> b!1925657 m!2361637))

(declare-fun m!2361639 () Bool)

(assert (=> b!1925657 m!2361639))

(declare-fun m!2361641 () Bool)

(assert (=> b!1925646 m!2361641))

(declare-fun m!2361643 () Bool)

(assert (=> b!1925646 m!2361643))

(declare-fun m!2361645 () Bool)

(assert (=> b!1925646 m!2361645))

(declare-fun m!2361647 () Bool)

(assert (=> b!1925646 m!2361647))

(declare-fun m!2361649 () Bool)

(assert (=> b!1925646 m!2361649))

(declare-fun m!2361651 () Bool)

(assert (=> b!1925646 m!2361651))

(declare-fun m!2361653 () Bool)

(assert (=> b!1925646 m!2361653))

(declare-fun m!2361655 () Bool)

(assert (=> b!1925646 m!2361655))

(declare-fun m!2361657 () Bool)

(assert (=> b!1925646 m!2361657))

(declare-fun m!2361659 () Bool)

(assert (=> b!1925646 m!2361659))

(declare-fun m!2361661 () Bool)

(assert (=> b!1925646 m!2361661))

(declare-fun m!2361663 () Bool)

(assert (=> b!1925646 m!2361663))

(declare-fun m!2361665 () Bool)

(assert (=> b!1925646 m!2361665))

(assert (=> b!1925646 m!2361655))

(declare-fun m!2361667 () Bool)

(assert (=> b!1925646 m!2361667))

(declare-fun m!2361669 () Bool)

(assert (=> b!1925646 m!2361669))

(declare-fun m!2361671 () Bool)

(assert (=> b!1925646 m!2361671))

(assert (=> b!1925646 m!2361641))

(assert (=> b!1925646 m!2361661))

(assert (=> b!1925646 m!2361651))

(declare-fun m!2361673 () Bool)

(assert (=> b!1925649 m!2361673))

(declare-fun m!2361675 () Bool)

(assert (=> b!1925649 m!2361675))

(declare-fun m!2361677 () Bool)

(assert (=> b!1925656 m!2361677))

(declare-fun m!2361679 () Bool)

(assert (=> b!1925668 m!2361679))

(declare-fun m!2361681 () Bool)

(assert (=> b!1925659 m!2361681))

(declare-fun m!2361683 () Bool)

(assert (=> b!1925659 m!2361683))

(declare-fun m!2361685 () Bool)

(assert (=> b!1925651 m!2361685))

(declare-fun m!2361687 () Bool)

(assert (=> b!1925653 m!2361687))

(declare-fun m!2361689 () Bool)

(assert (=> b!1925653 m!2361689))

(declare-fun m!2361691 () Bool)

(assert (=> start!192992 m!2361691))

(check-sat b_and!150921 b_and!150923 (not b!1925670) (not b!1925651) (not b!1925658) (not b!1925654) (not b!1925643) (not b!1925662) (not b!1925665) (not b!1925649) (not b!1925657) (not b!1925656) (not b_next!55857) (not b!1925659) (not start!192992) (not b_next!55859) b_and!150917 (not b_next!55863) (not b!1925666) (not b!1925646) (not b!1925645) (not b_next!55861) (not b!1925648) (not b!1925653) (not b!1925655) (not b_next!55865) b_and!150915 (not b_next!55867) (not b!1925660) b_and!150925 b_and!150919 (not b!1925668))
(check-sat b_and!150921 (not b_next!55857) (not b_next!55859) b_and!150923 (not b_next!55861) (not b_next!55865) b_and!150925 b_and!150919 b_and!150917 (not b_next!55863) b_and!150915 (not b_next!55867))
