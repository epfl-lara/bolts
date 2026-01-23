; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261972 () Bool)

(assert start!261972)

(declare-fun b!2694541 () Bool)

(declare-fun b_free!76077 () Bool)

(declare-fun b_next!76781 () Bool)

(assert (=> b!2694541 (= b_free!76077 (not b_next!76781))))

(declare-fun tp!852212 () Bool)

(declare-fun b_and!199203 () Bool)

(assert (=> b!2694541 (= tp!852212 b_and!199203)))

(declare-fun b!2694554 () Bool)

(declare-fun b_free!76079 () Bool)

(declare-fun b_next!76783 () Bool)

(assert (=> b!2694554 (= b_free!76079 (not b_next!76783))))

(declare-fun tp!852206 () Bool)

(declare-fun b_and!199205 () Bool)

(assert (=> b!2694554 (= tp!852206 b_and!199205)))

(declare-fun b!2694539 () Bool)

(declare-fun b_free!76081 () Bool)

(declare-fun b_next!76785 () Bool)

(assert (=> b!2694539 (= b_free!76081 (not b_next!76785))))

(declare-fun tp!852208 () Bool)

(declare-fun b_and!199207 () Bool)

(assert (=> b!2694539 (= tp!852208 b_and!199207)))

(declare-fun b!2694555 () Bool)

(declare-fun b_free!76083 () Bool)

(declare-fun b_next!76787 () Bool)

(assert (=> b!2694555 (= b_free!76083 (not b_next!76787))))

(declare-fun tp!852204 () Bool)

(declare-fun b_and!199209 () Bool)

(assert (=> b!2694555 (= tp!852204 b_and!199209)))

(declare-fun b_free!76085 () Bool)

(declare-fun b_next!76789 () Bool)

(assert (=> b!2694555 (= b_free!76085 (not b_next!76789))))

(declare-fun tp!852201 () Bool)

(declare-fun b_and!199211 () Bool)

(assert (=> b!2694555 (= tp!852201 b_and!199211)))

(declare-fun b!2694551 () Bool)

(declare-fun b_free!76087 () Bool)

(declare-fun b_next!76791 () Bool)

(assert (=> b!2694551 (= b_free!76087 (not b_next!76791))))

(declare-fun tp!852209 () Bool)

(declare-fun b_and!199213 () Bool)

(assert (=> b!2694551 (= tp!852209 b_and!199213)))

(declare-fun b!2694516 () Bool)

(declare-fun res!1132078 () Bool)

(declare-fun e!1698893 () Bool)

(assert (=> b!2694516 (=> res!1132078 e!1698893)))

(declare-datatypes ((C!15948 0))(
  ( (C!15949 (val!9908 Int)) )
))
(declare-datatypes ((Regex!7895 0))(
  ( (ElementMatch!7895 (c!434440 C!15948)) (Concat!12860 (regOne!16302 Regex!7895) (regTwo!16302 Regex!7895)) (EmptyExpr!7895) (Star!7895 (reg!8224 Regex!7895)) (EmptyLang!7895) (Union!7895 (regOne!16303 Regex!7895) (regTwo!16303 Regex!7895)) )
))
(declare-datatypes ((List!31171 0))(
  ( (Nil!31071) (Cons!31071 (h!36491 Regex!7895) (t!225170 List!31171)) )
))
(declare-datatypes ((Context!4338 0))(
  ( (Context!4339 (exprs!2669 List!31171)) )
))
(declare-datatypes ((tuple3!4256 0))(
  ( (tuple3!4257 (_1!17916 Regex!7895) (_2!17916 Context!4338) (_3!2598 C!15948)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30636 0))(
  ( (tuple2!30637 (_1!17917 tuple3!4256) (_2!17917 (InoxSet Context!4338))) )
))
(declare-datatypes ((List!31172 0))(
  ( (Nil!31072) (Cons!31072 (h!36492 tuple2!30636) (t!225171 List!31172)) )
))
(declare-datatypes ((array!12542 0))(
  ( (array!12543 (arr!5602 (Array (_ BitVec 32) (_ BitVec 64))) (size!24002 (_ BitVec 32))) )
))
(declare-datatypes ((array!12544 0))(
  ( (array!12545 (arr!5603 (Array (_ BitVec 32) List!31172)) (size!24003 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7036 0))(
  ( (LongMapFixedSize!7037 (defaultEntry!3903 Int) (mask!9202 (_ BitVec 32)) (extraKeys!3767 (_ BitVec 32)) (zeroValue!3777 List!31172) (minValue!3777 List!31172) (_size!7079 (_ BitVec 32)) (_keys!3818 array!12542) (_values!3799 array!12544) (_vacant!3579 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!30638 0))(
  ( (tuple2!30639 (_1!17918 Context!4338) (_2!17918 C!15948)) )
))
(declare-datatypes ((tuple2!30640 0))(
  ( (tuple2!30641 (_1!17919 tuple2!30638) (_2!17919 (InoxSet Context!4338))) )
))
(declare-datatypes ((List!31173 0))(
  ( (Nil!31073) (Cons!31073 (h!36493 tuple2!30640) (t!225172 List!31173)) )
))
(declare-datatypes ((array!12546 0))(
  ( (array!12547 (arr!5604 (Array (_ BitVec 32) List!31173)) (size!24004 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7038 0))(
  ( (LongMapFixedSize!7039 (defaultEntry!3904 Int) (mask!9203 (_ BitVec 32)) (extraKeys!3768 (_ BitVec 32)) (zeroValue!3778 List!31173) (minValue!3778 List!31173) (_size!7080 (_ BitVec 32)) (_keys!3819 array!12542) (_values!3800 array!12546) (_vacant!3580 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13881 0))(
  ( (Cell!13882 (v!32865 LongMapFixedSize!7038)) )
))
(declare-datatypes ((List!31174 0))(
  ( (Nil!31074) (Cons!31074 (h!36494 (_ BitVec 16)) (t!225173 List!31174)) )
))
(declare-datatypes ((TokenValue!4965 0))(
  ( (FloatLiteralValue!9930 (text!35200 List!31174)) (TokenValueExt!4964 (__x!19963 Int)) (Broken!24825 (value!152764 List!31174)) (Object!5064) (End!4965) (Def!4965) (Underscore!4965) (Match!4965) (Else!4965) (Error!4965) (Case!4965) (If!4965) (Extends!4965) (Abstract!4965) (Class!4965) (Val!4965) (DelimiterValue!9930 (del!5025 List!31174)) (KeywordValue!4971 (value!152765 List!31174)) (CommentValue!9930 (value!152766 List!31174)) (WhitespaceValue!9930 (value!152767 List!31174)) (IndentationValue!4965 (value!152768 List!31174)) (String!34724) (Int32!4965) (Broken!24826 (value!152769 List!31174)) (Boolean!4966) (Unit!45194) (OperatorValue!4968 (op!5025 List!31174)) (IdentifierValue!9930 (value!152770 List!31174)) (IdentifierValue!9931 (value!152771 List!31174)) (WhitespaceValue!9931 (value!152772 List!31174)) (True!9930) (False!9930) (Broken!24827 (value!152773 List!31174)) (Broken!24828 (value!152774 List!31174)) (True!9931) (RightBrace!4965) (RightBracket!4965) (Colon!4965) (Null!4965) (Comma!4965) (LeftBracket!4965) (False!9931) (LeftBrace!4965) (ImaginaryLiteralValue!4965 (text!35201 List!31174)) (StringLiteralValue!14895 (value!152775 List!31174)) (EOFValue!4965 (value!152776 List!31174)) (IdentValue!4965 (value!152777 List!31174)) (DelimiterValue!9931 (value!152778 List!31174)) (DedentValue!4965 (value!152779 List!31174)) (NewLineValue!4965 (value!152780 List!31174)) (IntegerValue!14895 (value!152781 (_ BitVec 32)) (text!35202 List!31174)) (IntegerValue!14896 (value!152782 Int) (text!35203 List!31174)) (Times!4965) (Or!4965) (Equal!4965) (Minus!4965) (Broken!24829 (value!152783 List!31174)) (And!4965) (Div!4965) (LessEqual!4965) (Mod!4965) (Concat!12861) (Not!4965) (Plus!4965) (SpaceValue!4965 (value!152784 List!31174)) (IntegerValue!14897 (value!152785 Int) (text!35204 List!31174)) (StringLiteralValue!14896 (text!35205 List!31174)) (FloatLiteralValue!9931 (text!35206 List!31174)) (BytesLiteralValue!4965 (value!152786 List!31174)) (CommentValue!9931 (value!152787 List!31174)) (StringLiteralValue!14897 (value!152788 List!31174)) (ErrorTokenValue!4965 (msg!5026 List!31174)) )
))
(declare-datatypes ((List!31175 0))(
  ( (Nil!31075) (Cons!31075 (h!36495 C!15948) (t!225174 List!31175)) )
))
(declare-datatypes ((IArray!19435 0))(
  ( (IArray!19436 (innerList!9775 List!31175)) )
))
(declare-datatypes ((Conc!9715 0))(
  ( (Node!9715 (left!23956 Conc!9715) (right!24286 Conc!9715) (csize!19660 Int) (cheight!9926 Int)) (Leaf!14831 (xs!12755 IArray!19435) (csize!19661 Int)) (Empty!9715) )
))
(declare-datatypes ((String!34725 0))(
  ( (String!34726 (value!152789 String)) )
))
(declare-datatypes ((BalanceConc!19044 0))(
  ( (BalanceConc!19045 (c!434441 Conc!9715)) )
))
(declare-datatypes ((TokenValueInjection!9370 0))(
  ( (TokenValueInjection!9371 (toValue!6701 Int) (toChars!6560 Int)) )
))
(declare-datatypes ((Rule!9286 0))(
  ( (Rule!9287 (regex!4743 Regex!7895) (tag!5247 String!34725) (isSeparator!4743 Bool) (transformation!4743 TokenValueInjection!9370)) )
))
(declare-datatypes ((Token!8952 0))(
  ( (Token!8953 (value!152790 TokenValue!4965) (rule!7160 Rule!9286) (size!24005 Int) (originalCharacters!5507 List!31175)) )
))
(declare-datatypes ((tuple2!30642 0))(
  ( (tuple2!30643 (_1!17920 Token!8952) (_2!17920 BalanceConc!19044)) )
))
(declare-datatypes ((Option!6137 0))(
  ( (None!6136) (Some!6136 (v!32866 tuple2!30642)) )
))
(declare-datatypes ((Hashable!3434 0))(
  ( (HashableExt!3433 (__x!19964 Int)) )
))
(declare-datatypes ((MutLongMap!3518 0))(
  ( (LongMap!3518 (underlying!7239 Cell!13881)) (MutLongMapExt!3517 (__x!19965 Int)) )
))
(declare-datatypes ((Cell!13883 0))(
  ( (Cell!13884 (v!32867 MutLongMap!3518)) )
))
(declare-datatypes ((MutableMap!3424 0))(
  ( (MutableMapExt!3423 (__x!19966 Int)) (HashMap!3424 (underlying!7240 Cell!13883) (hashF!5466 Hashable!3434) (_size!7081 (_ BitVec 32)) (defaultValue!3595 Int)) )
))
(declare-datatypes ((CacheUp!2134 0))(
  ( (CacheUp!2135 (cache!3567 MutableMap!3424)) )
))
(declare-datatypes ((Cell!13885 0))(
  ( (Cell!13886 (v!32868 LongMapFixedSize!7036)) )
))
(declare-datatypes ((MutLongMap!3519 0))(
  ( (LongMap!3519 (underlying!7241 Cell!13885)) (MutLongMapExt!3518 (__x!19967 Int)) )
))
(declare-datatypes ((Cell!13887 0))(
  ( (Cell!13888 (v!32869 MutLongMap!3519)) )
))
(declare-datatypes ((Hashable!3435 0))(
  ( (HashableExt!3434 (__x!19968 Int)) )
))
(declare-datatypes ((MutableMap!3425 0))(
  ( (MutableMapExt!3424 (__x!19969 Int)) (HashMap!3425 (underlying!7242 Cell!13887) (hashF!5467 Hashable!3435) (_size!7082 (_ BitVec 32)) (defaultValue!3596 Int)) )
))
(declare-datatypes ((CacheDown!2246 0))(
  ( (CacheDown!2247 (cache!3568 MutableMap!3425)) )
))
(declare-datatypes ((tuple3!4258 0))(
  ( (tuple3!4259 (_1!17921 Option!6137) (_2!17921 CacheUp!2134) (_3!2599 CacheDown!2246)) )
))
(declare-fun lt!951537 () tuple3!4258)

(declare-fun valid!2728 (CacheDown!2246) Bool)

(assert (=> b!2694516 (= res!1132078 (not (valid!2728 (_3!2599 lt!951537))))))

(declare-fun b!2694517 () Bool)

(declare-fun e!1698879 () Bool)

(declare-fun e!1698874 () Bool)

(assert (=> b!2694517 (= e!1698879 (not e!1698874))))

(declare-fun res!1132062 () Bool)

(assert (=> b!2694517 (=> res!1132062 e!1698874)))

(get-info :version)

(assert (=> b!2694517 (= res!1132062 (not ((_ is Some!6136) (_1!17921 lt!951537))))))

(declare-fun cacheUp!486 () CacheUp!2134)

(declare-fun input!780 () BalanceConc!19044)

(declare-datatypes ((List!31176 0))(
  ( (Nil!31076) (Cons!31076 (h!36496 Rule!9286) (t!225175 List!31176)) )
))
(declare-fun rules!1381 () List!31176)

(declare-datatypes ((LexerInterface!4339 0))(
  ( (LexerInterfaceExt!4336 (__x!19970 Int)) (Lexer!4337) )
))
(declare-fun thiss!12257 () LexerInterface!4339)

(declare-fun cacheDown!499 () CacheDown!2246)

(declare-fun maxPrefixZipperSequenceMem!14 (LexerInterface!4339 List!31176 BalanceConc!19044 CacheUp!2134 CacheDown!2246) tuple3!4258)

(assert (=> b!2694517 (= lt!951537 (maxPrefixZipperSequenceMem!14 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1698877 () Bool)

(assert (=> b!2694517 e!1698877))

(declare-fun res!1132072 () Bool)

(assert (=> b!2694517 (=> (not res!1132072) (not e!1698877))))

(declare-datatypes ((List!31177 0))(
  ( (Nil!31077) (Cons!31077 (h!36497 Token!8952) (t!225176 List!31177)) )
))
(declare-datatypes ((IArray!19437 0))(
  ( (IArray!19438 (innerList!9776 List!31177)) )
))
(declare-datatypes ((Conc!9716 0))(
  ( (Node!9716 (left!23957 Conc!9716) (right!24287 Conc!9716) (csize!19662 Int) (cheight!9927 Int)) (Leaf!14832 (xs!12756 IArray!19437) (csize!19663 Int)) (Empty!9716) )
))
(declare-datatypes ((BalanceConc!19046 0))(
  ( (BalanceConc!19047 (c!434442 Conc!9716)) )
))
(declare-fun acc!348 () BalanceConc!19046)

(declare-fun treated!26 () BalanceConc!19044)

(declare-fun totalInput!354 () BalanceConc!19044)

(declare-datatypes ((tuple2!30644 0))(
  ( (tuple2!30645 (_1!17922 BalanceConc!19046) (_2!17922 BalanceConc!19044)) )
))
(declare-fun e!1698899 () tuple2!30644)

(declare-fun lexTailRec!26 (LexerInterface!4339 List!31176 BalanceConc!19044 BalanceConc!19044 BalanceConc!19044 BalanceConc!19046) tuple2!30644)

(assert (=> b!2694517 (= res!1132072 (= (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1698899))))

(declare-fun c!434439 () Bool)

(declare-fun lt!951535 () Option!6137)

(assert (=> b!2694517 (= c!434439 ((_ is Some!6136) lt!951535))))

(declare-fun maxPrefixZipperSequence!1002 (LexerInterface!4339 List!31176 BalanceConc!19044) Option!6137)

(assert (=> b!2694517 (= lt!951535 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780))))

(declare-fun b!2694518 () Bool)

(declare-fun e!1698871 () Bool)

(declare-fun tp!852199 () Bool)

(declare-fun inv!42121 (Conc!9716) Bool)

(assert (=> b!2694518 (= e!1698871 (and (inv!42121 (c!434442 acc!348)) tp!852199))))

(declare-fun b!2694519 () Bool)

(declare-fun e!1698897 () Bool)

(assert (=> b!2694519 (= e!1698897 e!1698879)))

(declare-fun res!1132067 () Bool)

(assert (=> b!2694519 (=> (not res!1132067) (not e!1698879))))

(declare-fun lt!951531 () List!31175)

(declare-fun lt!951548 () tuple2!30644)

(declare-fun list!11727 (BalanceConc!19044) List!31175)

(assert (=> b!2694519 (= res!1132067 (= lt!951531 (list!11727 (_2!17922 lt!951548))))))

(declare-fun lt!951547 () tuple2!30644)

(assert (=> b!2694519 (= lt!951531 (list!11727 (_2!17922 lt!951547)))))

(declare-fun b!2694520 () Bool)

(declare-fun e!1698875 () Bool)

(declare-fun e!1698876 () Bool)

(assert (=> b!2694520 (= e!1698875 e!1698876)))

(declare-fun b!2694521 () Bool)

(declare-fun e!1698894 () Bool)

(declare-fun e!1698891 () Bool)

(assert (=> b!2694521 (= e!1698894 e!1698891)))

(declare-fun res!1132074 () Bool)

(assert (=> b!2694521 (=> res!1132074 e!1698891)))

(declare-fun lt!951546 () List!31177)

(declare-fun lt!951554 () tuple2!30644)

(declare-fun lt!951528 () BalanceConc!19046)

(declare-fun list!11728 (BalanceConc!19046) List!31177)

(declare-fun ++!7616 (BalanceConc!19046 BalanceConc!19046) BalanceConc!19046)

(assert (=> b!2694521 (= res!1132074 (not (= lt!951546 (list!11728 (++!7616 lt!951528 (_1!17922 lt!951554))))))))

(declare-fun lexRec!602 (LexerInterface!4339 List!31176 BalanceConc!19044) tuple2!30644)

(assert (=> b!2694521 (= lt!951554 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 (_1!17921 lt!951537)))))))

(declare-fun b!2694522 () Bool)

(declare-fun e!1698884 () Bool)

(assert (=> b!2694522 (= e!1698884 e!1698897)))

(declare-fun res!1132065 () Bool)

(assert (=> b!2694522 (=> (not res!1132065) (not e!1698897))))

(declare-fun lt!951543 () BalanceConc!19046)

(assert (=> b!2694522 (= res!1132065 (= lt!951546 (list!11728 lt!951543)))))

(assert (=> b!2694522 (= lt!951546 (list!11728 (_1!17922 lt!951547)))))

(assert (=> b!2694522 (= lt!951543 (++!7616 acc!348 (_1!17922 lt!951548)))))

(assert (=> b!2694522 (= lt!951548 (lexRec!602 thiss!12257 rules!1381 input!780))))

(assert (=> b!2694522 (= lt!951547 (lexRec!602 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2694523 () Bool)

(declare-fun e!1698873 () Bool)

(declare-fun tp!852196 () Bool)

(declare-fun mapRes!16097 () Bool)

(assert (=> b!2694523 (= e!1698873 (and tp!852196 mapRes!16097))))

(declare-fun condMapEmpty!16098 () Bool)

(declare-fun mapDefault!16097 () List!31172)

(assert (=> b!2694523 (= condMapEmpty!16098 (= (arr!5603 (_values!3799 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31172)) mapDefault!16097)))))

(declare-fun b!2694524 () Bool)

(assert (=> b!2694524 (= e!1698893 e!1698894)))

(declare-fun res!1132075 () Bool)

(assert (=> b!2694524 (=> res!1132075 e!1698894)))

(declare-fun lt!951534 () tuple2!30644)

(assert (=> b!2694524 (= res!1132075 (not (= (list!11728 (_1!17922 lt!951534)) (list!11728 lt!951528))))))

(declare-fun lt!951539 () BalanceConc!19044)

(assert (=> b!2694524 (= lt!951534 (lexRec!602 thiss!12257 rules!1381 lt!951539))))

(declare-fun b!2694525 () Bool)

(declare-fun e!1698868 () Bool)

(assert (=> b!2694525 (= e!1698868 e!1698884)))

(declare-fun res!1132073 () Bool)

(assert (=> b!2694525 (=> (not res!1132073) (not e!1698884))))

(declare-fun lt!951538 () List!31177)

(declare-fun lt!951545 () List!31177)

(assert (=> b!2694525 (= res!1132073 (= lt!951538 lt!951545))))

(assert (=> b!2694525 (= lt!951545 (list!11728 acc!348))))

(declare-fun lt!951529 () tuple2!30644)

(assert (=> b!2694525 (= lt!951538 (list!11728 (_1!17922 lt!951529)))))

(assert (=> b!2694525 (= lt!951529 (lexRec!602 thiss!12257 rules!1381 treated!26))))

(declare-fun res!1132070 () Bool)

(declare-fun e!1698898 () Bool)

(assert (=> start!261972 (=> (not res!1132070) (not e!1698898))))

(assert (=> start!261972 (= res!1132070 ((_ is Lexer!4337) thiss!12257))))

(assert (=> start!261972 e!1698898))

(declare-fun e!1698901 () Bool)

(declare-fun inv!42122 (BalanceConc!19044) Bool)

(assert (=> start!261972 (and (inv!42122 totalInput!354) e!1698901)))

(declare-fun e!1698888 () Bool)

(declare-fun inv!42123 (CacheUp!2134) Bool)

(assert (=> start!261972 (and (inv!42123 cacheUp!486) e!1698888)))

(declare-fun inv!42124 (BalanceConc!19046) Bool)

(assert (=> start!261972 (and (inv!42124 acc!348) e!1698871)))

(declare-fun e!1698902 () Bool)

(assert (=> start!261972 (and (inv!42122 input!780) e!1698902)))

(declare-fun e!1698900 () Bool)

(assert (=> start!261972 (and (inv!42122 treated!26) e!1698900)))

(declare-fun e!1698870 () Bool)

(assert (=> start!261972 e!1698870))

(assert (=> start!261972 true))

(declare-fun e!1698881 () Bool)

(declare-fun inv!42125 (CacheDown!2246) Bool)

(assert (=> start!261972 (and (inv!42125 cacheDown!499) e!1698881)))

(declare-fun lt!951555 () tuple2!30644)

(declare-fun lt!951525 () Option!6137)

(declare-fun b!2694515 () Bool)

(assert (=> b!2694515 (= lt!951555 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951525))))))

(declare-fun e!1698895 () tuple2!30644)

(declare-fun prepend!1076 (BalanceConc!19046 Token!8952) BalanceConc!19046)

(assert (=> b!2694515 (= e!1698895 (tuple2!30645 (prepend!1076 (_1!17922 lt!951555) (_1!17920 (v!32866 lt!951525))) (_2!17922 lt!951555)))))

(declare-fun b!2694526 () Bool)

(assert (=> b!2694526 (= e!1698899 (tuple2!30645 acc!348 input!780))))

(declare-fun mapNonEmpty!16097 () Bool)

(declare-fun tp!852213 () Bool)

(declare-fun tp!852202 () Bool)

(assert (=> mapNonEmpty!16097 (= mapRes!16097 (and tp!852213 tp!852202))))

(declare-fun mapRest!16097 () (Array (_ BitVec 32) List!31172))

(declare-fun mapKey!16097 () (_ BitVec 32))

(declare-fun mapValue!16097 () List!31172)

(assert (=> mapNonEmpty!16097 (= (arr!5603 (_values!3799 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) (store mapRest!16097 mapKey!16097 mapValue!16097))))

(declare-fun mapNonEmpty!16098 () Bool)

(declare-fun mapRes!16098 () Bool)

(declare-fun tp!852198 () Bool)

(declare-fun tp!852205 () Bool)

(assert (=> mapNonEmpty!16098 (= mapRes!16098 (and tp!852198 tp!852205))))

(declare-fun mapValue!16098 () List!31173)

(declare-fun mapKey!16098 () (_ BitVec 32))

(declare-fun mapRest!16098 () (Array (_ BitVec 32) List!31173))

(assert (=> mapNonEmpty!16098 (= (arr!5604 (_values!3800 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) (store mapRest!16098 mapKey!16098 mapValue!16098))))

(declare-fun b!2694527 () Bool)

(declare-fun e!1698867 () Bool)

(declare-fun e!1698882 () Bool)

(declare-fun lt!951536 () MutLongMap!3519)

(assert (=> b!2694527 (= e!1698867 (and e!1698882 ((_ is LongMap!3519) lt!951536)))))

(assert (=> b!2694527 (= lt!951536 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))

(declare-fun lt!951527 () BalanceConc!19046)

(declare-fun b!2694528 () Bool)

(declare-fun lt!951556 () BalanceConc!19044)

(assert (=> b!2694528 (= e!1698899 (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 lt!951556 (_2!17920 (v!32866 lt!951535)) lt!951527))))

(declare-fun lt!951526 () tuple2!30644)

(assert (=> b!2694528 (= lt!951526 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))))))

(declare-fun lt!951530 () BalanceConc!19044)

(declare-fun charsOf!2989 (Token!8952) BalanceConc!19044)

(assert (=> b!2694528 (= lt!951530 (charsOf!2989 (_1!17920 (v!32866 lt!951535))))))

(declare-fun lt!951541 () List!31175)

(assert (=> b!2694528 (= lt!951541 (list!11727 lt!951530))))

(declare-fun lt!951544 () List!31175)

(assert (=> b!2694528 (= lt!951544 (list!11727 (_2!17920 (v!32866 lt!951535))))))

(declare-fun lt!951557 () List!31175)

(declare-datatypes ((Unit!45195 0))(
  ( (Unit!45196) )
))
(declare-fun lt!951524 () Unit!45195)

(declare-fun lemmaConcatAssociativity!1550 (List!31175 List!31175 List!31175) Unit!45195)

(assert (=> b!2694528 (= lt!951524 (lemmaConcatAssociativity!1550 lt!951557 lt!951541 lt!951544))))

(declare-fun lt!951532 () List!31175)

(declare-fun ++!7617 (List!31175 List!31175) List!31175)

(assert (=> b!2694528 (= lt!951532 (++!7617 lt!951557 lt!951541))))

(declare-fun res!1132063 () Bool)

(assert (=> b!2694528 (= res!1132063 (= (++!7617 lt!951532 lt!951544) (++!7617 lt!951557 (++!7617 lt!951541 lt!951544))))))

(declare-fun e!1698872 () Bool)

(assert (=> b!2694528 (=> (not res!1132063) (not e!1698872))))

(assert (=> b!2694528 e!1698872))

(declare-fun lt!951549 () List!31177)

(assert (=> b!2694528 (= lt!951549 (Cons!31077 (_1!17920 (v!32866 lt!951535)) Nil!31077))))

(declare-fun lt!951540 () List!31177)

(assert (=> b!2694528 (= lt!951540 (list!11728 (_1!17922 lt!951526)))))

(declare-fun lt!951553 () Unit!45195)

(declare-fun lemmaConcatAssociativity!1551 (List!31177 List!31177 List!31177) Unit!45195)

(assert (=> b!2694528 (= lt!951553 (lemmaConcatAssociativity!1551 lt!951545 lt!951549 lt!951540))))

(declare-fun ++!7618 (List!31177 List!31177) List!31177)

(assert (=> b!2694528 (= (++!7618 (++!7618 lt!951545 lt!951549) lt!951540) (++!7618 lt!951545 (++!7618 lt!951549 lt!951540)))))

(declare-fun append!772 (BalanceConc!19046 Token!8952) BalanceConc!19046)

(assert (=> b!2694528 (= lt!951527 (append!772 acc!348 (_1!17920 (v!32866 lt!951535))))))

(declare-fun lt!951550 () List!31177)

(assert (=> b!2694528 (= lt!951550 (list!11728 lt!951527))))

(declare-fun lt!951551 () Unit!45195)

(declare-fun lemmaLexThenLexPrefix!405 (LexerInterface!4339 List!31176 List!31175 List!31175 List!31177 List!31177 List!31175) Unit!45195)

(assert (=> b!2694528 (= lt!951551 (lemmaLexThenLexPrefix!405 thiss!12257 rules!1381 lt!951532 lt!951544 lt!951550 lt!951540 (list!11727 (_2!17922 lt!951526))))))

(declare-datatypes ((tuple2!30646 0))(
  ( (tuple2!30647 (_1!17923 List!31177) (_2!17923 List!31175)) )
))
(declare-fun lexList!1192 (LexerInterface!4339 List!31176 List!31175) tuple2!30646)

(assert (=> b!2694528 (= (lexList!1192 thiss!12257 rules!1381 lt!951532) (tuple2!30647 lt!951550 Nil!31075))))

(declare-fun ++!7619 (BalanceConc!19044 BalanceConc!19044) BalanceConc!19044)

(assert (=> b!2694528 (= lt!951556 (++!7619 treated!26 lt!951530))))

(assert (=> b!2694528 (= lt!951525 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951556))))

(declare-fun c!434438 () Bool)

(assert (=> b!2694528 (= c!434438 ((_ is Some!6136) lt!951525))))

(assert (=> b!2694528 (= (lexRec!602 thiss!12257 rules!1381 lt!951556) e!1698895)))

(declare-fun b!2694529 () Bool)

(assert (=> b!2694529 (= e!1698891 (= lt!951531 (list!11727 (_2!17922 lt!951554))))))

(declare-fun b!2694530 () Bool)

(declare-fun e!1698885 () Bool)

(declare-fun lt!951533 () MutLongMap!3518)

(assert (=> b!2694530 (= e!1698885 (and e!1698875 ((_ is LongMap!3518) lt!951533)))))

(assert (=> b!2694530 (= lt!951533 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))

(declare-fun b!2694531 () Bool)

(declare-fun lex!1957 (LexerInterface!4339 List!31176 BalanceConc!19044) tuple2!30644)

(declare-fun lexTailRecV2!869 (LexerInterface!4339 List!31176 BalanceConc!19044 BalanceConc!19044 BalanceConc!19044 BalanceConc!19046) tuple2!30644)

(assert (=> b!2694531 (= e!1698877 (= (lex!1957 thiss!12257 rules!1381 input!780) (lexTailRecV2!869 thiss!12257 rules!1381 input!780 (BalanceConc!19045 Empty!9715) input!780 (BalanceConc!19047 Empty!9716))))))

(declare-fun b!2694532 () Bool)

(declare-fun res!1132076 () Bool)

(assert (=> b!2694532 (=> (not res!1132076) (not e!1698898))))

(declare-fun rulesInvariant!3829 (LexerInterface!4339 List!31176) Bool)

(assert (=> b!2694532 (= res!1132076 (rulesInvariant!3829 thiss!12257 rules!1381))))

(declare-fun b!2694533 () Bool)

(assert (=> b!2694533 (= e!1698874 e!1698893)))

(declare-fun res!1132077 () Bool)

(assert (=> b!2694533 (=> res!1132077 e!1698893)))

(declare-fun valid!2729 (CacheUp!2134) Bool)

(assert (=> b!2694533 (= res!1132077 (not (valid!2729 (_2!17921 lt!951537))))))

(assert (=> b!2694533 (= lt!951528 (append!772 acc!348 (_1!17920 (v!32866 (_1!17921 lt!951537)))))))

(assert (=> b!2694533 (= lt!951539 (++!7619 treated!26 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))))

(declare-fun b!2694534 () Bool)

(assert (=> b!2694534 (= e!1698872 (= lt!951548 (tuple2!30645 (prepend!1076 (_1!17922 lt!951526) (_1!17920 (v!32866 lt!951535))) (_2!17922 lt!951526))))))

(declare-fun b!2694535 () Bool)

(declare-fun tp!852194 () Bool)

(declare-fun inv!42126 (Conc!9715) Bool)

(assert (=> b!2694535 (= e!1698901 (and (inv!42126 (c!434441 totalInput!354)) tp!852194))))

(declare-fun b!2694536 () Bool)

(declare-fun e!1698880 () Bool)

(assert (=> b!2694536 (= e!1698876 e!1698880)))

(declare-fun b!2694537 () Bool)

(declare-fun res!1132079 () Bool)

(assert (=> b!2694537 (=> (not res!1132079) (not e!1698898))))

(assert (=> b!2694537 (= res!1132079 (valid!2728 cacheDown!499))))

(declare-fun b!2694538 () Bool)

(declare-fun e!1698886 () Bool)

(declare-fun e!1698883 () Bool)

(assert (=> b!2694538 (= e!1698886 e!1698883)))

(declare-fun e!1698892 () Bool)

(declare-fun tp!852207 () Bool)

(declare-fun tp!852193 () Bool)

(declare-fun array_inv!4000 (array!12542) Bool)

(declare-fun array_inv!4001 (array!12546) Bool)

(assert (=> b!2694539 (= e!1698880 (and tp!852208 tp!852207 tp!852193 (array_inv!4000 (_keys!3819 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) (array_inv!4001 (_values!3800 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) e!1698892))))

(declare-fun b!2694540 () Bool)

(assert (=> b!2694540 (= e!1698882 e!1698886)))

(declare-fun tp!852203 () Bool)

(declare-fun tp!852195 () Bool)

(declare-fun array_inv!4002 (array!12544) Bool)

(assert (=> b!2694541 (= e!1698883 (and tp!852212 tp!852203 tp!852195 (array_inv!4000 (_keys!3818 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) (array_inv!4002 (_values!3799 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) e!1698873))))

(declare-fun b!2694542 () Bool)

(declare-fun e!1698903 () Bool)

(assert (=> b!2694542 (= e!1698888 e!1698903)))

(declare-fun b!2694543 () Bool)

(declare-fun res!1132080 () Bool)

(assert (=> b!2694543 (=> (not res!1132080) (not e!1698898))))

(declare-fun isEmpty!17727 (List!31176) Bool)

(assert (=> b!2694543 (= res!1132080 (not (isEmpty!17727 rules!1381)))))

(declare-fun e!1698878 () Bool)

(declare-fun b!2694544 () Bool)

(declare-fun e!1698896 () Bool)

(declare-fun tp!852197 () Bool)

(declare-fun inv!42113 (String!34725) Bool)

(declare-fun inv!42127 (TokenValueInjection!9370) Bool)

(assert (=> b!2694544 (= e!1698878 (and tp!852197 (inv!42113 (tag!5247 (h!36496 rules!1381))) (inv!42127 (transformation!4743 (h!36496 rules!1381))) e!1698896))))

(declare-fun b!2694545 () Bool)

(declare-fun tp!852211 () Bool)

(assert (=> b!2694545 (= e!1698892 (and tp!852211 mapRes!16098))))

(declare-fun condMapEmpty!16097 () Bool)

(declare-fun mapDefault!16098 () List!31173)

(assert (=> b!2694545 (= condMapEmpty!16097 (= (arr!5604 (_values!3800 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31173)) mapDefault!16098)))))

(declare-fun b!2694546 () Bool)

(declare-fun e!1698889 () Bool)

(assert (=> b!2694546 (= e!1698881 e!1698889)))

(declare-fun b!2694547 () Bool)

(assert (=> b!2694547 (= e!1698895 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951556))))

(declare-fun b!2694548 () Bool)

(assert (=> b!2694548 (= e!1698898 e!1698868)))

(declare-fun res!1132069 () Bool)

(assert (=> b!2694548 (=> (not res!1132069) (not e!1698868))))

(declare-fun lt!951542 () List!31175)

(declare-fun lt!951552 () List!31175)

(assert (=> b!2694548 (= res!1132069 (= lt!951552 (++!7617 lt!951557 lt!951542)))))

(assert (=> b!2694548 (= lt!951552 (list!11727 totalInput!354))))

(assert (=> b!2694548 (= lt!951542 (list!11727 input!780))))

(assert (=> b!2694548 (= lt!951557 (list!11727 treated!26))))

(declare-fun b!2694549 () Bool)

(declare-fun tp!852200 () Bool)

(assert (=> b!2694549 (= e!1698900 (and (inv!42126 (c!434441 treated!26)) tp!852200))))

(declare-fun b!2694550 () Bool)

(declare-fun res!1132066 () Bool)

(assert (=> b!2694550 (=> res!1132066 e!1698894)))

(declare-fun isEmpty!17728 (List!31175) Bool)

(assert (=> b!2694550 (= res!1132066 (not (isEmpty!17728 (list!11727 (_2!17922 lt!951534)))))))

(assert (=> b!2694551 (= e!1698889 (and e!1698867 tp!852209))))

(declare-fun b!2694552 () Bool)

(declare-fun res!1132068 () Bool)

(assert (=> b!2694552 (=> (not res!1132068) (not e!1698898))))

(assert (=> b!2694552 (= res!1132068 (valid!2729 cacheUp!486))))

(declare-fun b!2694553 () Bool)

(declare-fun tp!852214 () Bool)

(assert (=> b!2694553 (= e!1698902 (and (inv!42126 (c!434441 input!780)) tp!852214))))

(assert (=> b!2694554 (= e!1698903 (and e!1698885 tp!852206))))

(declare-fun mapIsEmpty!16097 () Bool)

(assert (=> mapIsEmpty!16097 mapRes!16097))

(assert (=> b!2694555 (= e!1698896 (and tp!852204 tp!852201))))

(declare-fun b!2694556 () Bool)

(declare-fun res!1132064 () Bool)

(assert (=> b!2694556 (=> (not res!1132064) (not e!1698884))))

(assert (=> b!2694556 (= res!1132064 (isEmpty!17728 (list!11727 (_2!17922 lt!951529))))))

(declare-fun mapIsEmpty!16098 () Bool)

(assert (=> mapIsEmpty!16098 mapRes!16098))

(declare-fun b!2694557 () Bool)

(declare-fun tp!852210 () Bool)

(assert (=> b!2694557 (= e!1698870 (and e!1698878 tp!852210))))

(declare-fun b!2694558 () Bool)

(declare-fun res!1132071 () Bool)

(assert (=> b!2694558 (=> res!1132071 e!1698893)))

(assert (=> b!2694558 (= res!1132071 (not (= lt!951552 (++!7617 (list!11727 lt!951539) (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))))

(assert (= (and start!261972 res!1132070) b!2694543))

(assert (= (and b!2694543 res!1132080) b!2694532))

(assert (= (and b!2694532 res!1132076) b!2694552))

(assert (= (and b!2694552 res!1132068) b!2694537))

(assert (= (and b!2694537 res!1132079) b!2694548))

(assert (= (and b!2694548 res!1132069) b!2694525))

(assert (= (and b!2694525 res!1132073) b!2694556))

(assert (= (and b!2694556 res!1132064) b!2694522))

(assert (= (and b!2694522 res!1132065) b!2694519))

(assert (= (and b!2694519 res!1132067) b!2694517))

(assert (= (and b!2694517 c!434439) b!2694528))

(assert (= (and b!2694517 (not c!434439)) b!2694526))

(assert (= (and b!2694528 res!1132063) b!2694534))

(assert (= (and b!2694528 c!434438) b!2694515))

(assert (= (and b!2694528 (not c!434438)) b!2694547))

(assert (= (and b!2694517 res!1132072) b!2694531))

(assert (= (and b!2694517 (not res!1132062)) b!2694533))

(assert (= (and b!2694533 (not res!1132077)) b!2694516))

(assert (= (and b!2694516 (not res!1132078)) b!2694558))

(assert (= (and b!2694558 (not res!1132071)) b!2694524))

(assert (= (and b!2694524 (not res!1132075)) b!2694550))

(assert (= (and b!2694550 (not res!1132066)) b!2694521))

(assert (= (and b!2694521 (not res!1132074)) b!2694529))

(assert (= start!261972 b!2694535))

(assert (= (and b!2694545 condMapEmpty!16097) mapIsEmpty!16098))

(assert (= (and b!2694545 (not condMapEmpty!16097)) mapNonEmpty!16098))

(assert (= b!2694539 b!2694545))

(assert (= b!2694536 b!2694539))

(assert (= b!2694520 b!2694536))

(assert (= (and b!2694530 ((_ is LongMap!3518) (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))) b!2694520))

(assert (= b!2694554 b!2694530))

(assert (= (and b!2694542 ((_ is HashMap!3424) (cache!3567 cacheUp!486))) b!2694554))

(assert (= start!261972 b!2694542))

(assert (= start!261972 b!2694518))

(assert (= start!261972 b!2694553))

(assert (= start!261972 b!2694549))

(assert (= b!2694544 b!2694555))

(assert (= b!2694557 b!2694544))

(assert (= (and start!261972 ((_ is Cons!31076) rules!1381)) b!2694557))

(assert (= (and b!2694523 condMapEmpty!16098) mapIsEmpty!16097))

(assert (= (and b!2694523 (not condMapEmpty!16098)) mapNonEmpty!16097))

(assert (= b!2694541 b!2694523))

(assert (= b!2694538 b!2694541))

(assert (= b!2694540 b!2694538))

(assert (= (and b!2694527 ((_ is LongMap!3519) (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))) b!2694540))

(assert (= b!2694551 b!2694527))

(assert (= (and b!2694546 ((_ is HashMap!3425) (cache!3568 cacheDown!499))) b!2694551))

(assert (= start!261972 b!2694546))

(declare-fun m!3074869 () Bool)

(assert (=> b!2694558 m!3074869))

(declare-fun m!3074871 () Bool)

(assert (=> b!2694558 m!3074871))

(assert (=> b!2694558 m!3074869))

(assert (=> b!2694558 m!3074871))

(declare-fun m!3074873 () Bool)

(assert (=> b!2694558 m!3074873))

(declare-fun m!3074875 () Bool)

(assert (=> b!2694550 m!3074875))

(assert (=> b!2694550 m!3074875))

(declare-fun m!3074877 () Bool)

(assert (=> b!2694550 m!3074877))

(declare-fun m!3074879 () Bool)

(assert (=> b!2694543 m!3074879))

(declare-fun m!3074881 () Bool)

(assert (=> mapNonEmpty!16097 m!3074881))

(declare-fun m!3074883 () Bool)

(assert (=> b!2694521 m!3074883))

(assert (=> b!2694521 m!3074883))

(declare-fun m!3074885 () Bool)

(assert (=> b!2694521 m!3074885))

(declare-fun m!3074887 () Bool)

(assert (=> b!2694521 m!3074887))

(declare-fun m!3074889 () Bool)

(assert (=> b!2694515 m!3074889))

(declare-fun m!3074891 () Bool)

(assert (=> b!2694515 m!3074891))

(declare-fun m!3074893 () Bool)

(assert (=> b!2694544 m!3074893))

(declare-fun m!3074895 () Bool)

(assert (=> b!2694544 m!3074895))

(declare-fun m!3074897 () Bool)

(assert (=> b!2694531 m!3074897))

(declare-fun m!3074899 () Bool)

(assert (=> b!2694531 m!3074899))

(declare-fun m!3074901 () Bool)

(assert (=> b!2694524 m!3074901))

(declare-fun m!3074903 () Bool)

(assert (=> b!2694524 m!3074903))

(declare-fun m!3074905 () Bool)

(assert (=> b!2694524 m!3074905))

(declare-fun m!3074907 () Bool)

(assert (=> b!2694532 m!3074907))

(declare-fun m!3074909 () Bool)

(assert (=> b!2694525 m!3074909))

(declare-fun m!3074911 () Bool)

(assert (=> b!2694525 m!3074911))

(declare-fun m!3074913 () Bool)

(assert (=> b!2694525 m!3074913))

(declare-fun m!3074915 () Bool)

(assert (=> b!2694541 m!3074915))

(declare-fun m!3074917 () Bool)

(assert (=> b!2694541 m!3074917))

(declare-fun m!3074919 () Bool)

(assert (=> b!2694529 m!3074919))

(declare-fun m!3074921 () Bool)

(assert (=> b!2694518 m!3074921))

(declare-fun m!3074923 () Bool)

(assert (=> b!2694548 m!3074923))

(declare-fun m!3074925 () Bool)

(assert (=> b!2694548 m!3074925))

(declare-fun m!3074927 () Bool)

(assert (=> b!2694548 m!3074927))

(declare-fun m!3074929 () Bool)

(assert (=> b!2694548 m!3074929))

(declare-fun m!3074931 () Bool)

(assert (=> b!2694534 m!3074931))

(declare-fun m!3074933 () Bool)

(assert (=> b!2694537 m!3074933))

(declare-fun m!3074935 () Bool)

(assert (=> b!2694556 m!3074935))

(assert (=> b!2694556 m!3074935))

(declare-fun m!3074937 () Bool)

(assert (=> b!2694556 m!3074937))

(declare-fun m!3074939 () Bool)

(assert (=> b!2694549 m!3074939))

(declare-fun m!3074941 () Bool)

(assert (=> b!2694552 m!3074941))

(declare-fun m!3074943 () Bool)

(assert (=> b!2694516 m!3074943))

(declare-fun m!3074945 () Bool)

(assert (=> start!261972 m!3074945))

(declare-fun m!3074947 () Bool)

(assert (=> start!261972 m!3074947))

(declare-fun m!3074949 () Bool)

(assert (=> start!261972 m!3074949))

(declare-fun m!3074951 () Bool)

(assert (=> start!261972 m!3074951))

(declare-fun m!3074953 () Bool)

(assert (=> start!261972 m!3074953))

(declare-fun m!3074955 () Bool)

(assert (=> start!261972 m!3074955))

(declare-fun m!3074957 () Bool)

(assert (=> b!2694535 m!3074957))

(declare-fun m!3074959 () Bool)

(assert (=> b!2694553 m!3074959))

(declare-fun m!3074961 () Bool)

(assert (=> b!2694517 m!3074961))

(declare-fun m!3074963 () Bool)

(assert (=> b!2694517 m!3074963))

(declare-fun m!3074965 () Bool)

(assert (=> b!2694517 m!3074965))

(declare-fun m!3074967 () Bool)

(assert (=> b!2694528 m!3074967))

(declare-fun m!3074969 () Bool)

(assert (=> b!2694528 m!3074969))

(declare-fun m!3074971 () Bool)

(assert (=> b!2694528 m!3074971))

(declare-fun m!3074973 () Bool)

(assert (=> b!2694528 m!3074973))

(declare-fun m!3074975 () Bool)

(assert (=> b!2694528 m!3074975))

(declare-fun m!3074977 () Bool)

(assert (=> b!2694528 m!3074977))

(declare-fun m!3074979 () Bool)

(assert (=> b!2694528 m!3074979))

(declare-fun m!3074981 () Bool)

(assert (=> b!2694528 m!3074981))

(declare-fun m!3074983 () Bool)

(assert (=> b!2694528 m!3074983))

(declare-fun m!3074985 () Bool)

(assert (=> b!2694528 m!3074985))

(declare-fun m!3074987 () Bool)

(assert (=> b!2694528 m!3074987))

(assert (=> b!2694528 m!3074975))

(declare-fun m!3074989 () Bool)

(assert (=> b!2694528 m!3074989))

(declare-fun m!3074991 () Bool)

(assert (=> b!2694528 m!3074991))

(declare-fun m!3074993 () Bool)

(assert (=> b!2694528 m!3074993))

(declare-fun m!3074995 () Bool)

(assert (=> b!2694528 m!3074995))

(declare-fun m!3074997 () Bool)

(assert (=> b!2694528 m!3074997))

(assert (=> b!2694528 m!3074967))

(declare-fun m!3074999 () Bool)

(assert (=> b!2694528 m!3074999))

(declare-fun m!3075001 () Bool)

(assert (=> b!2694528 m!3075001))

(assert (=> b!2694528 m!3074991))

(declare-fun m!3075003 () Bool)

(assert (=> b!2694528 m!3075003))

(declare-fun m!3075005 () Bool)

(assert (=> b!2694528 m!3075005))

(assert (=> b!2694528 m!3074995))

(declare-fun m!3075007 () Bool)

(assert (=> b!2694528 m!3075007))

(declare-fun m!3075009 () Bool)

(assert (=> b!2694528 m!3075009))

(declare-fun m!3075011 () Bool)

(assert (=> b!2694528 m!3075011))

(declare-fun m!3075013 () Bool)

(assert (=> b!2694528 m!3075013))

(declare-fun m!3075015 () Bool)

(assert (=> b!2694519 m!3075015))

(declare-fun m!3075017 () Bool)

(assert (=> b!2694519 m!3075017))

(declare-fun m!3075019 () Bool)

(assert (=> b!2694522 m!3075019))

(declare-fun m!3075021 () Bool)

(assert (=> b!2694522 m!3075021))

(declare-fun m!3075023 () Bool)

(assert (=> b!2694522 m!3075023))

(declare-fun m!3075025 () Bool)

(assert (=> b!2694522 m!3075025))

(declare-fun m!3075027 () Bool)

(assert (=> b!2694522 m!3075027))

(declare-fun m!3075029 () Bool)

(assert (=> b!2694533 m!3075029))

(declare-fun m!3075031 () Bool)

(assert (=> b!2694533 m!3075031))

(declare-fun m!3075033 () Bool)

(assert (=> b!2694533 m!3075033))

(assert (=> b!2694533 m!3075033))

(declare-fun m!3075035 () Bool)

(assert (=> b!2694533 m!3075035))

(declare-fun m!3075037 () Bool)

(assert (=> mapNonEmpty!16098 m!3075037))

(declare-fun m!3075039 () Bool)

(assert (=> b!2694539 m!3075039))

(declare-fun m!3075041 () Bool)

(assert (=> b!2694539 m!3075041))

(check-sat (not b_next!76783) (not b!2694552) (not b!2694550) (not b!2694531) (not b!2694557) (not b_next!76789) (not b_next!76787) (not b!2694533) (not b!2694516) (not b_next!76791) (not b!2694535) (not b!2694522) (not b!2694544) (not b!2694519) b_and!199207 (not b!2694534) (not b!2694537) b_and!199211 b_and!199205 (not b!2694558) (not b!2694518) (not b!2694524) (not b!2694543) b_and!199209 (not b_next!76785) (not b!2694545) (not b!2694528) (not b!2694523) (not b!2694541) (not b!2694539) (not b!2694525) (not b!2694515) (not mapNonEmpty!16097) (not b_next!76781) (not start!261972) (not b!2694549) b_and!199213 (not b!2694548) (not b!2694556) (not b!2694517) (not mapNonEmpty!16098) (not b!2694521) (not b!2694532) (not b!2694553) (not b!2694529) b_and!199203)
(check-sat (not b_next!76791) (not b_next!76783) b_and!199207 b_and!199209 (not b_next!76785) (not b_next!76789) (not b_next!76781) b_and!199213 (not b_next!76787) b_and!199203 b_and!199211 b_and!199205)
(get-model)

(declare-fun d!772420 () Bool)

(declare-fun c!434445 () Bool)

(assert (=> d!772420 (= c!434445 ((_ is Node!9716) (c!434442 acc!348)))))

(declare-fun e!1698908 () Bool)

(assert (=> d!772420 (= (inv!42121 (c!434442 acc!348)) e!1698908)))

(declare-fun b!2694565 () Bool)

(declare-fun inv!42128 (Conc!9716) Bool)

(assert (=> b!2694565 (= e!1698908 (inv!42128 (c!434442 acc!348)))))

(declare-fun b!2694566 () Bool)

(declare-fun e!1698909 () Bool)

(assert (=> b!2694566 (= e!1698908 e!1698909)))

(declare-fun res!1132087 () Bool)

(assert (=> b!2694566 (= res!1132087 (not ((_ is Leaf!14832) (c!434442 acc!348))))))

(assert (=> b!2694566 (=> res!1132087 e!1698909)))

(declare-fun b!2694567 () Bool)

(declare-fun inv!42129 (Conc!9716) Bool)

(assert (=> b!2694567 (= e!1698909 (inv!42129 (c!434442 acc!348)))))

(assert (= (and d!772420 c!434445) b!2694565))

(assert (= (and d!772420 (not c!434445)) b!2694566))

(assert (= (and b!2694566 (not res!1132087)) b!2694567))

(declare-fun m!3075043 () Bool)

(assert (=> b!2694565 m!3075043))

(declare-fun m!3075045 () Bool)

(assert (=> b!2694567 m!3075045))

(assert (=> b!2694518 d!772420))

(declare-fun d!772422 () Bool)

(declare-fun validCacheMapDown!356 (MutableMap!3425) Bool)

(assert (=> d!772422 (= (valid!2728 cacheDown!499) (validCacheMapDown!356 (cache!3568 cacheDown!499)))))

(declare-fun bs!483820 () Bool)

(assert (= bs!483820 d!772422))

(declare-fun m!3075047 () Bool)

(assert (=> bs!483820 m!3075047))

(assert (=> b!2694537 d!772422))

(declare-fun b!2694576 () Bool)

(declare-fun res!1132092 () Bool)

(declare-fun e!1698914 () Bool)

(assert (=> b!2694576 (=> (not res!1132092) (not e!1698914))))

(declare-fun lt!951580 () tuple3!4258)

(assert (=> b!2694576 (= res!1132092 (valid!2729 (_2!17921 lt!951580)))))

(declare-fun b!2694577 () Bool)

(assert (=> b!2694577 (= e!1698914 (valid!2728 (_3!2599 lt!951580)))))

(declare-fun bm!173586 () Bool)

(declare-fun call!173591 () tuple3!4258)

(declare-fun maxPrefixOneRuleZipperSequenceMem!8 (LexerInterface!4339 Rule!9286 BalanceConc!19044 CacheUp!2134 CacheDown!2246) tuple3!4258)

(assert (=> bm!173586 (= call!173591 (maxPrefixOneRuleZipperSequenceMem!8 thiss!12257 (h!36496 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun b!2694578 () Bool)

(declare-fun e!1698915 () tuple3!4258)

(declare-fun lt!951581 () tuple3!4258)

(declare-fun lt!951578 () tuple3!4258)

(assert (=> b!2694578 (= e!1698915 (tuple3!4259 (ite (and ((_ is None!6136) (_1!17921 lt!951581)) ((_ is None!6136) (_1!17921 lt!951578))) None!6136 (ite ((_ is None!6136) (_1!17921 lt!951578)) (_1!17921 lt!951581) (ite ((_ is None!6136) (_1!17921 lt!951581)) (_1!17921 lt!951578) (ite (>= (size!24005 (_1!17920 (v!32866 (_1!17921 lt!951581)))) (size!24005 (_1!17920 (v!32866 (_1!17921 lt!951578))))) (_1!17921 lt!951581) (_1!17921 lt!951578))))) (_2!17921 lt!951578) (_3!2599 lt!951578)))))

(assert (=> b!2694578 (= lt!951581 call!173591)))

(assert (=> b!2694578 (= lt!951578 (maxPrefixZipperSequenceMem!14 thiss!12257 (t!225175 rules!1381) input!780 (_2!17921 lt!951581) (_3!2599 lt!951581)))))

(declare-fun b!2694579 () Bool)

(declare-fun lt!951575 () tuple3!4258)

(assert (=> b!2694579 (= e!1698915 (tuple3!4259 (_1!17921 lt!951575) (_2!17921 lt!951575) (_3!2599 lt!951575)))))

(assert (=> b!2694579 (= lt!951575 call!173591)))

(declare-fun d!772424 () Bool)

(assert (=> d!772424 e!1698914))

(declare-fun res!1132093 () Bool)

(assert (=> d!772424 (=> (not res!1132093) (not e!1698914))))

(assert (=> d!772424 (= res!1132093 (= (_1!17921 lt!951580) (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780)))))

(assert (=> d!772424 (= lt!951580 e!1698915)))

(declare-fun c!434448 () Bool)

(assert (=> d!772424 (= c!434448 (and ((_ is Cons!31076) rules!1381) ((_ is Nil!31076) (t!225175 rules!1381))))))

(declare-fun lt!951577 () Unit!45195)

(declare-fun lt!951579 () Unit!45195)

(assert (=> d!772424 (= lt!951577 lt!951579)))

(declare-fun lt!951576 () List!31175)

(declare-fun lt!951574 () List!31175)

(declare-fun isPrefix!2469 (List!31175 List!31175) Bool)

(assert (=> d!772424 (isPrefix!2469 lt!951576 lt!951574)))

(declare-fun lemmaIsPrefixRefl!1595 (List!31175 List!31175) Unit!45195)

(assert (=> d!772424 (= lt!951579 (lemmaIsPrefixRefl!1595 lt!951576 lt!951574))))

(assert (=> d!772424 (= lt!951574 (list!11727 input!780))))

(assert (=> d!772424 (= lt!951576 (list!11727 input!780))))

(declare-fun rulesValidInductive!1651 (LexerInterface!4339 List!31176) Bool)

(assert (=> d!772424 (rulesValidInductive!1651 thiss!12257 rules!1381)))

(assert (=> d!772424 (= (maxPrefixZipperSequenceMem!14 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!951580)))

(assert (= (and d!772424 c!434448) b!2694579))

(assert (= (and d!772424 (not c!434448)) b!2694578))

(assert (= (or b!2694579 b!2694578) bm!173586))

(assert (= (and d!772424 res!1132093) b!2694576))

(assert (= (and b!2694576 res!1132092) b!2694577))

(declare-fun m!3075049 () Bool)

(assert (=> b!2694577 m!3075049))

(declare-fun m!3075051 () Bool)

(assert (=> bm!173586 m!3075051))

(declare-fun m!3075053 () Bool)

(assert (=> b!2694578 m!3075053))

(assert (=> d!772424 m!3074927))

(declare-fun m!3075055 () Bool)

(assert (=> d!772424 m!3075055))

(assert (=> d!772424 m!3074965))

(declare-fun m!3075057 () Bool)

(assert (=> d!772424 m!3075057))

(declare-fun m!3075059 () Bool)

(assert (=> d!772424 m!3075059))

(declare-fun m!3075061 () Bool)

(assert (=> b!2694576 m!3075061))

(assert (=> b!2694517 d!772424))

(declare-fun b!2694594 () Bool)

(declare-fun e!1698925 () tuple2!30644)

(declare-fun lt!951646 () BalanceConc!19044)

(assert (=> b!2694594 (= e!1698925 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951646))))

(declare-fun b!2694595 () Bool)

(declare-fun e!1698927 () tuple2!30644)

(assert (=> b!2694595 (= e!1698927 (tuple2!30645 acc!348 input!780))))

(declare-fun b!2694597 () Bool)

(declare-fun e!1698926 () Bool)

(declare-fun lt!951639 () tuple2!30644)

(assert (=> b!2694597 (= e!1698926 (= (list!11727 (_2!17922 lt!951639)) (list!11727 (_2!17922 (lexRec!602 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2694598 () Bool)

(declare-fun e!1698924 () tuple2!30644)

(assert (=> b!2694598 (= e!1698924 (tuple2!30645 (BalanceConc!19047 Empty!9716) input!780))))

(declare-fun lt!951641 () Option!6137)

(declare-fun lt!951636 () tuple2!30644)

(declare-fun b!2694596 () Bool)

(assert (=> b!2694596 (= lt!951636 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951641))))))

(assert (=> b!2694596 (= e!1698925 (tuple2!30645 (prepend!1076 (_1!17922 lt!951636) (_1!17920 (v!32866 lt!951641))) (_2!17922 lt!951636)))))

(declare-fun d!772426 () Bool)

(assert (=> d!772426 e!1698926))

(declare-fun res!1132096 () Bool)

(assert (=> d!772426 (=> (not res!1132096) (not e!1698926))))

(assert (=> d!772426 (= res!1132096 (= (list!11728 (_1!17922 lt!951639)) (list!11728 (_1!17922 (lexRec!602 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!772426 (= lt!951639 e!1698927)))

(declare-fun c!434456 () Bool)

(declare-fun lt!951649 () Option!6137)

(assert (=> d!772426 (= c!434456 ((_ is Some!6136) lt!951649))))

(assert (=> d!772426 (= lt!951649 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780))))

(assert (=> d!772426 (= (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!951639)))

(declare-fun lt!951638 () tuple2!30644)

(declare-fun lt!951645 () Option!6137)

(declare-fun b!2694599 () Bool)

(assert (=> b!2694599 (= lt!951638 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951645))))))

(assert (=> b!2694599 (= e!1698924 (tuple2!30645 (prepend!1076 (_1!17922 lt!951638) (_1!17920 (v!32866 lt!951645))) (_2!17922 lt!951638)))))

(declare-fun b!2694600 () Bool)

(assert (=> b!2694600 (= e!1698927 (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 (++!7619 treated!26 (charsOf!2989 (_1!17920 (v!32866 lt!951649)))) (_2!17920 (v!32866 lt!951649)) (append!772 acc!348 (_1!17920 (v!32866 lt!951649)))))))

(declare-fun lt!951633 () tuple2!30644)

(assert (=> b!2694600 (= lt!951633 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951649))))))

(declare-fun lt!951650 () List!31175)

(assert (=> b!2694600 (= lt!951650 (list!11727 treated!26))))

(declare-fun lt!951634 () List!31175)

(assert (=> b!2694600 (= lt!951634 (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951649)))))))

(declare-fun lt!951632 () List!31175)

(assert (=> b!2694600 (= lt!951632 (list!11727 (_2!17920 (v!32866 lt!951649))))))

(declare-fun lt!951635 () Unit!45195)

(assert (=> b!2694600 (= lt!951635 (lemmaConcatAssociativity!1550 lt!951650 lt!951634 lt!951632))))

(assert (=> b!2694600 (= (++!7617 (++!7617 lt!951650 lt!951634) lt!951632) (++!7617 lt!951650 (++!7617 lt!951634 lt!951632)))))

(declare-fun lt!951642 () Unit!45195)

(assert (=> b!2694600 (= lt!951642 lt!951635)))

(assert (=> b!2694600 (= lt!951645 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780))))

(declare-fun c!434455 () Bool)

(assert (=> b!2694600 (= c!434455 ((_ is Some!6136) lt!951645))))

(assert (=> b!2694600 (= (lexRec!602 thiss!12257 rules!1381 input!780) e!1698924)))

(declare-fun lt!951654 () Unit!45195)

(declare-fun Unit!45197 () Unit!45195)

(assert (=> b!2694600 (= lt!951654 Unit!45197)))

(declare-fun lt!951653 () List!31177)

(assert (=> b!2694600 (= lt!951653 (list!11728 acc!348))))

(declare-fun lt!951644 () List!31177)

(assert (=> b!2694600 (= lt!951644 (Cons!31077 (_1!17920 (v!32866 lt!951649)) Nil!31077))))

(declare-fun lt!951655 () List!31177)

(assert (=> b!2694600 (= lt!951655 (list!11728 (_1!17922 lt!951633)))))

(declare-fun lt!951652 () Unit!45195)

(assert (=> b!2694600 (= lt!951652 (lemmaConcatAssociativity!1551 lt!951653 lt!951644 lt!951655))))

(assert (=> b!2694600 (= (++!7618 (++!7618 lt!951653 lt!951644) lt!951655) (++!7618 lt!951653 (++!7618 lt!951644 lt!951655)))))

(declare-fun lt!951637 () Unit!45195)

(assert (=> b!2694600 (= lt!951637 lt!951652)))

(declare-fun lt!951647 () List!31175)

(assert (=> b!2694600 (= lt!951647 (++!7617 (list!11727 treated!26) (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951649))))))))

(declare-fun lt!951651 () List!31175)

(assert (=> b!2694600 (= lt!951651 (list!11727 (_2!17920 (v!32866 lt!951649))))))

(declare-fun lt!951648 () List!31177)

(assert (=> b!2694600 (= lt!951648 (list!11728 (append!772 acc!348 (_1!17920 (v!32866 lt!951649)))))))

(declare-fun lt!951640 () Unit!45195)

(assert (=> b!2694600 (= lt!951640 (lemmaLexThenLexPrefix!405 thiss!12257 rules!1381 lt!951647 lt!951651 lt!951648 (list!11728 (_1!17922 lt!951633)) (list!11727 (_2!17922 lt!951633))))))

(assert (=> b!2694600 (= (lexList!1192 thiss!12257 rules!1381 lt!951647) (tuple2!30647 lt!951648 Nil!31075))))

(declare-fun lt!951656 () Unit!45195)

(assert (=> b!2694600 (= lt!951656 lt!951640)))

(assert (=> b!2694600 (= lt!951646 (++!7619 treated!26 (charsOf!2989 (_1!17920 (v!32866 lt!951649)))))))

(assert (=> b!2694600 (= lt!951641 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951646))))

(declare-fun c!434457 () Bool)

(assert (=> b!2694600 (= c!434457 ((_ is Some!6136) lt!951641))))

(assert (=> b!2694600 (= (lexRec!602 thiss!12257 rules!1381 (++!7619 treated!26 (charsOf!2989 (_1!17920 (v!32866 lt!951649))))) e!1698925)))

(declare-fun lt!951643 () Unit!45195)

(declare-fun Unit!45198 () Unit!45195)

(assert (=> b!2694600 (= lt!951643 Unit!45198)))

(assert (= (and d!772426 c!434456) b!2694600))

(assert (= (and d!772426 (not c!434456)) b!2694595))

(assert (= (and b!2694600 c!434455) b!2694599))

(assert (= (and b!2694600 (not c!434455)) b!2694598))

(assert (= (and b!2694600 c!434457) b!2694596))

(assert (= (and b!2694600 (not c!434457)) b!2694594))

(assert (= (and d!772426 res!1132096) b!2694597))

(declare-fun m!3075063 () Bool)

(assert (=> b!2694599 m!3075063))

(declare-fun m!3075065 () Bool)

(assert (=> b!2694599 m!3075065))

(assert (=> b!2694600 m!3074929))

(declare-fun m!3075067 () Bool)

(assert (=> b!2694600 m!3075067))

(declare-fun m!3075069 () Bool)

(assert (=> b!2694600 m!3075069))

(declare-fun m!3075071 () Bool)

(assert (=> b!2694600 m!3075071))

(declare-fun m!3075073 () Bool)

(assert (=> b!2694600 m!3075073))

(assert (=> b!2694600 m!3074929))

(declare-fun m!3075075 () Bool)

(assert (=> b!2694600 m!3075075))

(declare-fun m!3075077 () Bool)

(assert (=> b!2694600 m!3075077))

(declare-fun m!3075079 () Bool)

(assert (=> b!2694600 m!3075079))

(declare-fun m!3075081 () Bool)

(assert (=> b!2694600 m!3075081))

(declare-fun m!3075083 () Bool)

(assert (=> b!2694600 m!3075083))

(assert (=> b!2694600 m!3075069))

(declare-fun m!3075085 () Bool)

(assert (=> b!2694600 m!3075085))

(declare-fun m!3075087 () Bool)

(assert (=> b!2694600 m!3075087))

(declare-fun m!3075089 () Bool)

(assert (=> b!2694600 m!3075089))

(declare-fun m!3075091 () Bool)

(assert (=> b!2694600 m!3075091))

(assert (=> b!2694600 m!3075071))

(declare-fun m!3075093 () Bool)

(assert (=> b!2694600 m!3075093))

(declare-fun m!3075095 () Bool)

(assert (=> b!2694600 m!3075095))

(assert (=> b!2694600 m!3074965))

(assert (=> b!2694600 m!3075069))

(declare-fun m!3075097 () Bool)

(assert (=> b!2694600 m!3075097))

(declare-fun m!3075099 () Bool)

(assert (=> b!2694600 m!3075099))

(declare-fun m!3075101 () Bool)

(assert (=> b!2694600 m!3075101))

(assert (=> b!2694600 m!3075087))

(declare-fun m!3075103 () Bool)

(assert (=> b!2694600 m!3075103))

(assert (=> b!2694600 m!3075091))

(declare-fun m!3075105 () Bool)

(assert (=> b!2694600 m!3075105))

(assert (=> b!2694600 m!3075099))

(declare-fun m!3075107 () Bool)

(assert (=> b!2694600 m!3075107))

(assert (=> b!2694600 m!3075083))

(assert (=> b!2694600 m!3075075))

(assert (=> b!2694600 m!3075071))

(declare-fun m!3075109 () Bool)

(assert (=> b!2694600 m!3075109))

(assert (=> b!2694600 m!3074909))

(assert (=> b!2694600 m!3075079))

(assert (=> b!2694600 m!3075025))

(declare-fun m!3075111 () Bool)

(assert (=> b!2694600 m!3075111))

(assert (=> b!2694600 m!3075095))

(declare-fun m!3075113 () Bool)

(assert (=> b!2694600 m!3075113))

(assert (=> b!2694600 m!3075083))

(declare-fun m!3075115 () Bool)

(assert (=> b!2694600 m!3075115))

(assert (=> b!2694600 m!3075111))

(declare-fun m!3075117 () Bool)

(assert (=> d!772426 m!3075117))

(assert (=> d!772426 m!3075023))

(declare-fun m!3075119 () Bool)

(assert (=> d!772426 m!3075119))

(assert (=> d!772426 m!3074965))

(declare-fun m!3075121 () Bool)

(assert (=> b!2694597 m!3075121))

(assert (=> b!2694597 m!3075023))

(declare-fun m!3075123 () Bool)

(assert (=> b!2694597 m!3075123))

(declare-fun m!3075125 () Bool)

(assert (=> b!2694596 m!3075125))

(declare-fun m!3075127 () Bool)

(assert (=> b!2694596 m!3075127))

(assert (=> b!2694517 d!772426))

(declare-fun b!2694617 () Bool)

(declare-fun e!1698942 () Option!6137)

(declare-fun call!173594 () Option!6137)

(assert (=> b!2694617 (= e!1698942 call!173594)))

(declare-fun b!2694618 () Bool)

(declare-fun e!1698944 () Bool)

(declare-fun e!1698945 () Bool)

(assert (=> b!2694618 (= e!1698944 e!1698945)))

(declare-fun res!1132112 () Bool)

(assert (=> b!2694618 (=> (not res!1132112) (not e!1698945))))

(declare-fun lt!951677 () Option!6137)

(declare-fun get!9724 (Option!6137) tuple2!30642)

(declare-datatypes ((tuple2!30648 0))(
  ( (tuple2!30649 (_1!17924 Token!8952) (_2!17924 List!31175)) )
))
(declare-datatypes ((Option!6138 0))(
  ( (None!6137) (Some!6137 (v!32872 tuple2!30648)) )
))
(declare-fun get!9725 (Option!6138) tuple2!30648)

(declare-fun maxPrefix!2352 (LexerInterface!4339 List!31176 List!31175) Option!6138)

(assert (=> b!2694618 (= res!1132112 (= (_1!17920 (get!9724 lt!951677)) (_1!17924 (get!9725 (maxPrefix!2352 thiss!12257 rules!1381 (list!11727 input!780))))))))

(declare-fun b!2694619 () Bool)

(declare-fun e!1698943 () Bool)

(declare-fun maxPrefixZipper!456 (LexerInterface!4339 List!31176 List!31175) Option!6138)

(assert (=> b!2694619 (= e!1698943 (= (list!11727 (_2!17920 (get!9724 lt!951677))) (_2!17924 (get!9725 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 input!780))))))))

(declare-fun b!2694620 () Bool)

(assert (=> b!2694620 (= e!1698945 (= (list!11727 (_2!17920 (get!9724 lt!951677))) (_2!17924 (get!9725 (maxPrefix!2352 thiss!12257 rules!1381 (list!11727 input!780))))))))

(declare-fun b!2694621 () Bool)

(declare-fun res!1132111 () Bool)

(declare-fun e!1698941 () Bool)

(assert (=> b!2694621 (=> (not res!1132111) (not e!1698941))))

(declare-fun e!1698940 () Bool)

(assert (=> b!2694621 (= res!1132111 e!1698940)))

(declare-fun res!1132114 () Bool)

(assert (=> b!2694621 (=> res!1132114 e!1698940)))

(declare-fun isDefined!4865 (Option!6137) Bool)

(assert (=> b!2694621 (= res!1132114 (not (isDefined!4865 lt!951677)))))

(declare-fun b!2694622 () Bool)

(declare-fun lt!951675 () Option!6137)

(declare-fun lt!951676 () Option!6137)

(assert (=> b!2694622 (= e!1698942 (ite (and ((_ is None!6136) lt!951675) ((_ is None!6136) lt!951676)) None!6136 (ite ((_ is None!6136) lt!951676) lt!951675 (ite ((_ is None!6136) lt!951675) lt!951676 (ite (>= (size!24005 (_1!17920 (v!32866 lt!951675))) (size!24005 (_1!17920 (v!32866 lt!951676)))) lt!951675 lt!951676)))))))

(assert (=> b!2694622 (= lt!951675 call!173594)))

(assert (=> b!2694622 (= lt!951676 (maxPrefixZipperSequence!1002 thiss!12257 (t!225175 rules!1381) input!780))))

(declare-fun b!2694623 () Bool)

(assert (=> b!2694623 (= e!1698940 e!1698943)))

(declare-fun res!1132113 () Bool)

(assert (=> b!2694623 (=> (not res!1132113) (not e!1698943))))

(assert (=> b!2694623 (= res!1132113 (= (_1!17920 (get!9724 lt!951677)) (_1!17924 (get!9725 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 input!780))))))))

(declare-fun b!2694624 () Bool)

(assert (=> b!2694624 (= e!1698941 e!1698944)))

(declare-fun res!1132110 () Bool)

(assert (=> b!2694624 (=> res!1132110 e!1698944)))

(assert (=> b!2694624 (= res!1132110 (not (isDefined!4865 lt!951677)))))

(declare-fun bm!173589 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!465 (LexerInterface!4339 Rule!9286 BalanceConc!19044) Option!6137)

(assert (=> bm!173589 (= call!173594 (maxPrefixOneRuleZipperSequence!465 thiss!12257 (h!36496 rules!1381) input!780))))

(declare-fun d!772428 () Bool)

(assert (=> d!772428 e!1698941))

(declare-fun res!1132109 () Bool)

(assert (=> d!772428 (=> (not res!1132109) (not e!1698941))))

(declare-fun isDefined!4866 (Option!6138) Bool)

(assert (=> d!772428 (= res!1132109 (= (isDefined!4865 lt!951677) (isDefined!4866 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 input!780)))))))

(assert (=> d!772428 (= lt!951677 e!1698942)))

(declare-fun c!434460 () Bool)

(assert (=> d!772428 (= c!434460 (and ((_ is Cons!31076) rules!1381) ((_ is Nil!31076) (t!225175 rules!1381))))))

(declare-fun lt!951672 () Unit!45195)

(declare-fun lt!951671 () Unit!45195)

(assert (=> d!772428 (= lt!951672 lt!951671)))

(declare-fun lt!951674 () List!31175)

(declare-fun lt!951673 () List!31175)

(assert (=> d!772428 (isPrefix!2469 lt!951674 lt!951673)))

(assert (=> d!772428 (= lt!951671 (lemmaIsPrefixRefl!1595 lt!951674 lt!951673))))

(assert (=> d!772428 (= lt!951673 (list!11727 input!780))))

(assert (=> d!772428 (= lt!951674 (list!11727 input!780))))

(assert (=> d!772428 (rulesValidInductive!1651 thiss!12257 rules!1381)))

(assert (=> d!772428 (= (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780) lt!951677)))

(assert (= (and d!772428 c!434460) b!2694617))

(assert (= (and d!772428 (not c!434460)) b!2694622))

(assert (= (or b!2694617 b!2694622) bm!173589))

(assert (= (and d!772428 res!1132109) b!2694621))

(assert (= (and b!2694621 (not res!1132114)) b!2694623))

(assert (= (and b!2694623 res!1132113) b!2694619))

(assert (= (and b!2694621 res!1132111) b!2694624))

(assert (= (and b!2694624 (not res!1132110)) b!2694618))

(assert (= (and b!2694618 res!1132112) b!2694620))

(assert (=> b!2694620 m!3074927))

(declare-fun m!3075129 () Bool)

(assert (=> b!2694620 m!3075129))

(declare-fun m!3075131 () Bool)

(assert (=> b!2694620 m!3075131))

(assert (=> b!2694620 m!3074927))

(declare-fun m!3075133 () Bool)

(assert (=> b!2694620 m!3075133))

(assert (=> b!2694620 m!3075133))

(declare-fun m!3075135 () Bool)

(assert (=> b!2694620 m!3075135))

(assert (=> b!2694623 m!3075131))

(assert (=> b!2694623 m!3074927))

(assert (=> b!2694623 m!3074927))

(declare-fun m!3075137 () Bool)

(assert (=> b!2694623 m!3075137))

(assert (=> b!2694623 m!3075137))

(declare-fun m!3075139 () Bool)

(assert (=> b!2694623 m!3075139))

(declare-fun m!3075141 () Bool)

(assert (=> b!2694624 m!3075141))

(assert (=> d!772428 m!3074927))

(assert (=> d!772428 m!3075137))

(assert (=> d!772428 m!3074927))

(declare-fun m!3075143 () Bool)

(assert (=> d!772428 m!3075143))

(assert (=> d!772428 m!3075059))

(assert (=> d!772428 m!3075141))

(assert (=> d!772428 m!3075137))

(declare-fun m!3075145 () Bool)

(assert (=> d!772428 m!3075145))

(declare-fun m!3075147 () Bool)

(assert (=> d!772428 m!3075147))

(declare-fun m!3075149 () Bool)

(assert (=> b!2694622 m!3075149))

(assert (=> b!2694621 m!3075141))

(assert (=> b!2694619 m!3074927))

(assert (=> b!2694619 m!3075137))

(assert (=> b!2694619 m!3074927))

(assert (=> b!2694619 m!3075131))

(assert (=> b!2694619 m!3075137))

(assert (=> b!2694619 m!3075139))

(assert (=> b!2694619 m!3075129))

(declare-fun m!3075151 () Bool)

(assert (=> bm!173589 m!3075151))

(assert (=> b!2694618 m!3075131))

(assert (=> b!2694618 m!3074927))

(assert (=> b!2694618 m!3074927))

(assert (=> b!2694618 m!3075133))

(assert (=> b!2694618 m!3075133))

(assert (=> b!2694618 m!3075135))

(assert (=> b!2694517 d!772428))

(declare-fun d!772430 () Bool)

(assert (=> d!772430 (= (isEmpty!17728 (list!11727 (_2!17922 lt!951529))) ((_ is Nil!31075) (list!11727 (_2!17922 lt!951529))))))

(assert (=> b!2694556 d!772430))

(declare-fun d!772432 () Bool)

(declare-fun list!11729 (Conc!9715) List!31175)

(assert (=> d!772432 (= (list!11727 (_2!17922 lt!951529)) (list!11729 (c!434441 (_2!17922 lt!951529))))))

(declare-fun bs!483821 () Bool)

(assert (= bs!483821 d!772432))

(declare-fun m!3075153 () Bool)

(assert (=> bs!483821 m!3075153))

(assert (=> b!2694556 d!772432))

(declare-fun d!772434 () Bool)

(assert (=> d!772434 (= (valid!2728 (_3!2599 lt!951537)) (validCacheMapDown!356 (cache!3568 (_3!2599 lt!951537))))))

(declare-fun bs!483822 () Bool)

(assert (= bs!483822 d!772434))

(declare-fun m!3075155 () Bool)

(assert (=> bs!483822 m!3075155))

(assert (=> b!2694516 d!772434))

(declare-fun d!772436 () Bool)

(declare-fun c!434463 () Bool)

(assert (=> d!772436 (= c!434463 ((_ is Node!9715) (c!434441 totalInput!354)))))

(declare-fun e!1698950 () Bool)

(assert (=> d!772436 (= (inv!42126 (c!434441 totalInput!354)) e!1698950)))

(declare-fun b!2694631 () Bool)

(declare-fun inv!42130 (Conc!9715) Bool)

(assert (=> b!2694631 (= e!1698950 (inv!42130 (c!434441 totalInput!354)))))

(declare-fun b!2694632 () Bool)

(declare-fun e!1698951 () Bool)

(assert (=> b!2694632 (= e!1698950 e!1698951)))

(declare-fun res!1132117 () Bool)

(assert (=> b!2694632 (= res!1132117 (not ((_ is Leaf!14831) (c!434441 totalInput!354))))))

(assert (=> b!2694632 (=> res!1132117 e!1698951)))

(declare-fun b!2694633 () Bool)

(declare-fun inv!42131 (Conc!9715) Bool)

(assert (=> b!2694633 (= e!1698951 (inv!42131 (c!434441 totalInput!354)))))

(assert (= (and d!772436 c!434463) b!2694631))

(assert (= (and d!772436 (not c!434463)) b!2694632))

(assert (= (and b!2694632 (not res!1132117)) b!2694633))

(declare-fun m!3075157 () Bool)

(assert (=> b!2694631 m!3075157))

(declare-fun m!3075159 () Bool)

(assert (=> b!2694633 m!3075159))

(assert (=> b!2694535 d!772436))

(declare-fun b!2694648 () Bool)

(declare-fun e!1698963 () tuple2!30644)

(declare-fun lt!951686 () tuple2!30644)

(declare-fun lt!951685 () Option!6137)

(assert (=> b!2694648 (= e!1698963 (tuple2!30645 (prepend!1076 (_1!17922 lt!951686) (_1!17920 (v!32866 lt!951685))) (_2!17922 lt!951686)))))

(assert (=> b!2694648 (= lt!951686 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951685))))))

(declare-fun b!2694649 () Bool)

(assert (=> b!2694649 (= e!1698963 (tuple2!30645 (BalanceConc!19047 Empty!9716) (_2!17920 (v!32866 lt!951525))))))

(declare-fun b!2694650 () Bool)

(declare-fun lt!951684 () tuple2!30644)

(declare-fun e!1698962 () Bool)

(assert (=> b!2694650 (= e!1698962 (= (list!11727 (_2!17922 lt!951684)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 lt!951525)))))))))

(declare-fun b!2694651 () Bool)

(declare-fun res!1132124 () Bool)

(assert (=> b!2694651 (=> (not res!1132124) (not e!1698962))))

(assert (=> b!2694651 (= res!1132124 (= (list!11728 (_1!17922 lt!951684)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 lt!951525)))))))))

(declare-fun b!2694652 () Bool)

(declare-fun e!1698960 () Bool)

(declare-fun isEmpty!17729 (BalanceConc!19046) Bool)

(assert (=> b!2694652 (= e!1698960 (not (isEmpty!17729 (_1!17922 lt!951684))))))

(declare-fun d!772438 () Bool)

(assert (=> d!772438 e!1698962))

(declare-fun res!1132125 () Bool)

(assert (=> d!772438 (=> (not res!1132125) (not e!1698962))))

(declare-fun e!1698961 () Bool)

(assert (=> d!772438 (= res!1132125 e!1698961)))

(declare-fun c!434468 () Bool)

(declare-fun size!24006 (BalanceConc!19046) Int)

(assert (=> d!772438 (= c!434468 (> (size!24006 (_1!17922 lt!951684)) 0))))

(assert (=> d!772438 (= lt!951684 e!1698963)))

(declare-fun c!434469 () Bool)

(assert (=> d!772438 (= c!434469 ((_ is Some!6136) lt!951685))))

(assert (=> d!772438 (= lt!951685 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951525))))))

(assert (=> d!772438 (= (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951525))) lt!951684)))

(declare-fun b!2694653 () Bool)

(assert (=> b!2694653 (= e!1698961 e!1698960)))

(declare-fun res!1132126 () Bool)

(declare-fun size!24007 (BalanceConc!19044) Int)

(assert (=> b!2694653 (= res!1132126 (< (size!24007 (_2!17922 lt!951684)) (size!24007 (_2!17920 (v!32866 lt!951525)))))))

(assert (=> b!2694653 (=> (not res!1132126) (not e!1698960))))

(declare-fun b!2694654 () Bool)

(assert (=> b!2694654 (= e!1698961 (= (list!11727 (_2!17922 lt!951684)) (list!11727 (_2!17920 (v!32866 lt!951525)))))))

(assert (= (and d!772438 c!434469) b!2694648))

(assert (= (and d!772438 (not c!434469)) b!2694649))

(assert (= (and d!772438 c!434468) b!2694653))

(assert (= (and d!772438 (not c!434468)) b!2694654))

(assert (= (and b!2694653 res!1132126) b!2694652))

(assert (= (and d!772438 res!1132125) b!2694651))

(assert (= (and b!2694651 res!1132124) b!2694650))

(declare-fun m!3075161 () Bool)

(assert (=> b!2694654 m!3075161))

(declare-fun m!3075163 () Bool)

(assert (=> b!2694654 m!3075163))

(assert (=> b!2694650 m!3075161))

(assert (=> b!2694650 m!3075163))

(assert (=> b!2694650 m!3075163))

(declare-fun m!3075165 () Bool)

(assert (=> b!2694650 m!3075165))

(declare-fun m!3075167 () Bool)

(assert (=> b!2694648 m!3075167))

(declare-fun m!3075169 () Bool)

(assert (=> b!2694648 m!3075169))

(declare-fun m!3075171 () Bool)

(assert (=> b!2694652 m!3075171))

(declare-fun m!3075173 () Bool)

(assert (=> b!2694653 m!3075173))

(declare-fun m!3075175 () Bool)

(assert (=> b!2694653 m!3075175))

(declare-fun m!3075177 () Bool)

(assert (=> d!772438 m!3075177))

(declare-fun m!3075179 () Bool)

(assert (=> d!772438 m!3075179))

(declare-fun m!3075181 () Bool)

(assert (=> b!2694651 m!3075181))

(assert (=> b!2694651 m!3075163))

(assert (=> b!2694651 m!3075163))

(assert (=> b!2694651 m!3075165))

(assert (=> b!2694515 d!772438))

(declare-fun d!772440 () Bool)

(declare-fun e!1698966 () Bool)

(assert (=> d!772440 e!1698966))

(declare-fun res!1132129 () Bool)

(assert (=> d!772440 (=> (not res!1132129) (not e!1698966))))

(declare-fun isBalanced!2943 (Conc!9716) Bool)

(declare-fun prepend!1077 (Conc!9716 Token!8952) Conc!9716)

(assert (=> d!772440 (= res!1132129 (isBalanced!2943 (prepend!1077 (c!434442 (_1!17922 lt!951555)) (_1!17920 (v!32866 lt!951525)))))))

(declare-fun lt!951689 () BalanceConc!19046)

(assert (=> d!772440 (= lt!951689 (BalanceConc!19047 (prepend!1077 (c!434442 (_1!17922 lt!951555)) (_1!17920 (v!32866 lt!951525)))))))

(assert (=> d!772440 (= (prepend!1076 (_1!17922 lt!951555) (_1!17920 (v!32866 lt!951525))) lt!951689)))

(declare-fun b!2694657 () Bool)

(assert (=> b!2694657 (= e!1698966 (= (list!11728 lt!951689) (Cons!31077 (_1!17920 (v!32866 lt!951525)) (list!11728 (_1!17922 lt!951555)))))))

(assert (= (and d!772440 res!1132129) b!2694657))

(declare-fun m!3075183 () Bool)

(assert (=> d!772440 m!3075183))

(assert (=> d!772440 m!3075183))

(declare-fun m!3075185 () Bool)

(assert (=> d!772440 m!3075185))

(declare-fun m!3075187 () Bool)

(assert (=> b!2694657 m!3075187))

(declare-fun m!3075189 () Bool)

(assert (=> b!2694657 m!3075189))

(assert (=> b!2694515 d!772440))

(declare-fun d!772442 () Bool)

(declare-fun e!1698967 () Bool)

(assert (=> d!772442 e!1698967))

(declare-fun res!1132130 () Bool)

(assert (=> d!772442 (=> (not res!1132130) (not e!1698967))))

(assert (=> d!772442 (= res!1132130 (isBalanced!2943 (prepend!1077 (c!434442 (_1!17922 lt!951526)) (_1!17920 (v!32866 lt!951535)))))))

(declare-fun lt!951690 () BalanceConc!19046)

(assert (=> d!772442 (= lt!951690 (BalanceConc!19047 (prepend!1077 (c!434442 (_1!17922 lt!951526)) (_1!17920 (v!32866 lt!951535)))))))

(assert (=> d!772442 (= (prepend!1076 (_1!17922 lt!951526) (_1!17920 (v!32866 lt!951535))) lt!951690)))

(declare-fun b!2694658 () Bool)

(assert (=> b!2694658 (= e!1698967 (= (list!11728 lt!951690) (Cons!31077 (_1!17920 (v!32866 lt!951535)) (list!11728 (_1!17922 lt!951526)))))))

(assert (= (and d!772442 res!1132130) b!2694658))

(declare-fun m!3075191 () Bool)

(assert (=> d!772442 m!3075191))

(assert (=> d!772442 m!3075191))

(declare-fun m!3075193 () Bool)

(assert (=> d!772442 m!3075193))

(declare-fun m!3075195 () Bool)

(assert (=> b!2694658 m!3075195))

(assert (=> b!2694658 m!3075009))

(assert (=> b!2694534 d!772442))

(declare-fun d!772444 () Bool)

(declare-fun validCacheMapUp!325 (MutableMap!3424) Bool)

(assert (=> d!772444 (= (valid!2729 (_2!17921 lt!951537)) (validCacheMapUp!325 (cache!3567 (_2!17921 lt!951537))))))

(declare-fun bs!483823 () Bool)

(assert (= bs!483823 d!772444))

(declare-fun m!3075197 () Bool)

(assert (=> bs!483823 m!3075197))

(assert (=> b!2694533 d!772444))

(declare-fun d!772446 () Bool)

(declare-fun e!1698970 () Bool)

(assert (=> d!772446 e!1698970))

(declare-fun res!1132133 () Bool)

(assert (=> d!772446 (=> (not res!1132133) (not e!1698970))))

(declare-fun append!773 (Conc!9716 Token!8952) Conc!9716)

(assert (=> d!772446 (= res!1132133 (isBalanced!2943 (append!773 (c!434442 acc!348) (_1!17920 (v!32866 (_1!17921 lt!951537))))))))

(declare-fun lt!951693 () BalanceConc!19046)

(assert (=> d!772446 (= lt!951693 (BalanceConc!19047 (append!773 (c!434442 acc!348) (_1!17920 (v!32866 (_1!17921 lt!951537))))))))

(assert (=> d!772446 (= (append!772 acc!348 (_1!17920 (v!32866 (_1!17921 lt!951537)))) lt!951693)))

(declare-fun b!2694661 () Bool)

(declare-fun $colon+!169 (List!31177 Token!8952) List!31177)

(assert (=> b!2694661 (= e!1698970 (= (list!11728 lt!951693) ($colon+!169 (list!11728 acc!348) (_1!17920 (v!32866 (_1!17921 lt!951537))))))))

(assert (= (and d!772446 res!1132133) b!2694661))

(declare-fun m!3075199 () Bool)

(assert (=> d!772446 m!3075199))

(assert (=> d!772446 m!3075199))

(declare-fun m!3075201 () Bool)

(assert (=> d!772446 m!3075201))

(declare-fun m!3075203 () Bool)

(assert (=> b!2694661 m!3075203))

(assert (=> b!2694661 m!3074909))

(assert (=> b!2694661 m!3074909))

(declare-fun m!3075205 () Bool)

(assert (=> b!2694661 m!3075205))

(assert (=> b!2694533 d!772446))

(declare-fun lt!951696 () BalanceConc!19044)

(declare-fun b!2694673 () Bool)

(declare-fun e!1698973 () Bool)

(assert (=> b!2694673 (= e!1698973 (= (list!11727 lt!951696) (++!7617 (list!11727 treated!26) (list!11727 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))))))

(declare-fun b!2694670 () Bool)

(declare-fun res!1132143 () Bool)

(assert (=> b!2694670 (=> (not res!1132143) (not e!1698973))))

(declare-fun isBalanced!2944 (Conc!9715) Bool)

(declare-fun ++!7620 (Conc!9715 Conc!9715) Conc!9715)

(assert (=> b!2694670 (= res!1132143 (isBalanced!2944 (++!7620 (c!434441 treated!26) (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))))))

(declare-fun d!772448 () Bool)

(assert (=> d!772448 e!1698973))

(declare-fun res!1132144 () Bool)

(assert (=> d!772448 (=> (not res!1132144) (not e!1698973))))

(declare-fun appendAssocInst!665 (Conc!9715 Conc!9715) Bool)

(assert (=> d!772448 (= res!1132144 (appendAssocInst!665 (c!434441 treated!26) (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537)))))))))

(assert (=> d!772448 (= lt!951696 (BalanceConc!19045 (++!7620 (c!434441 treated!26) (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))))))

(assert (=> d!772448 (= (++!7619 treated!26 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))) lt!951696)))

(declare-fun b!2694671 () Bool)

(declare-fun res!1132145 () Bool)

(assert (=> b!2694671 (=> (not res!1132145) (not e!1698973))))

(declare-fun height!1425 (Conc!9715) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2694671 (= res!1132145 (<= (height!1425 (++!7620 (c!434441 treated!26) (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) (+ (max!0 (height!1425 (c!434441 treated!26)) (height!1425 (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) 1)))))

(declare-fun b!2694672 () Bool)

(declare-fun res!1132142 () Bool)

(assert (=> b!2694672 (=> (not res!1132142) (not e!1698973))))

(assert (=> b!2694672 (= res!1132142 (>= (height!1425 (++!7620 (c!434441 treated!26) (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) (max!0 (height!1425 (c!434441 treated!26)) (height!1425 (c!434441 (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537)))))))))))

(assert (= (and d!772448 res!1132144) b!2694670))

(assert (= (and b!2694670 res!1132143) b!2694671))

(assert (= (and b!2694671 res!1132145) b!2694672))

(assert (= (and b!2694672 res!1132142) b!2694673))

(declare-fun m!3075207 () Bool)

(assert (=> b!2694670 m!3075207))

(assert (=> b!2694670 m!3075207))

(declare-fun m!3075209 () Bool)

(assert (=> b!2694670 m!3075209))

(declare-fun m!3075211 () Bool)

(assert (=> d!772448 m!3075211))

(assert (=> d!772448 m!3075207))

(declare-fun m!3075213 () Bool)

(assert (=> b!2694672 m!3075213))

(declare-fun m!3075215 () Bool)

(assert (=> b!2694672 m!3075215))

(declare-fun m!3075217 () Bool)

(assert (=> b!2694672 m!3075217))

(assert (=> b!2694672 m!3075213))

(assert (=> b!2694672 m!3075207))

(declare-fun m!3075219 () Bool)

(assert (=> b!2694672 m!3075219))

(assert (=> b!2694672 m!3075215))

(assert (=> b!2694672 m!3075207))

(declare-fun m!3075221 () Bool)

(assert (=> b!2694673 m!3075221))

(assert (=> b!2694673 m!3074929))

(assert (=> b!2694673 m!3075033))

(declare-fun m!3075223 () Bool)

(assert (=> b!2694673 m!3075223))

(assert (=> b!2694673 m!3074929))

(assert (=> b!2694673 m!3075223))

(declare-fun m!3075225 () Bool)

(assert (=> b!2694673 m!3075225))

(assert (=> b!2694671 m!3075213))

(assert (=> b!2694671 m!3075215))

(assert (=> b!2694671 m!3075217))

(assert (=> b!2694671 m!3075213))

(assert (=> b!2694671 m!3075207))

(assert (=> b!2694671 m!3075219))

(assert (=> b!2694671 m!3075215))

(assert (=> b!2694671 m!3075207))

(assert (=> b!2694533 d!772448))

(declare-fun d!772450 () Bool)

(declare-fun lt!951699 () BalanceConc!19044)

(assert (=> d!772450 (= (list!11727 lt!951699) (originalCharacters!5507 (_1!17920 (v!32866 (_1!17921 lt!951537)))))))

(declare-fun dynLambda!13448 (Int TokenValue!4965) BalanceConc!19044)

(assert (=> d!772450 (= lt!951699 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 (_1!17921 lt!951537)))))) (value!152790 (_1!17920 (v!32866 (_1!17921 lt!951537))))))))

(assert (=> d!772450 (= (charsOf!2989 (_1!17920 (v!32866 (_1!17921 lt!951537)))) lt!951699)))

(declare-fun b_lambda!82153 () Bool)

(assert (=> (not b_lambda!82153) (not d!772450)))

(declare-fun tb!151065 () Bool)

(declare-fun t!225178 () Bool)

(assert (=> (and b!2694555 (= (toChars!6560 (transformation!4743 (h!36496 rules!1381))) (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) t!225178) tb!151065))

(declare-fun b!2694678 () Bool)

(declare-fun e!1698976 () Bool)

(declare-fun tp!852217 () Bool)

(assert (=> b!2694678 (= e!1698976 (and (inv!42126 (c!434441 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 (_1!17921 lt!951537)))))) (value!152790 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) tp!852217))))

(declare-fun result!186586 () Bool)

(assert (=> tb!151065 (= result!186586 (and (inv!42122 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 (_1!17921 lt!951537)))))) (value!152790 (_1!17920 (v!32866 (_1!17921 lt!951537)))))) e!1698976))))

(assert (= tb!151065 b!2694678))

(declare-fun m!3075227 () Bool)

(assert (=> b!2694678 m!3075227))

(declare-fun m!3075229 () Bool)

(assert (=> tb!151065 m!3075229))

(assert (=> d!772450 t!225178))

(declare-fun b_and!199215 () Bool)

(assert (= b_and!199211 (and (=> t!225178 result!186586) b_and!199215)))

(declare-fun m!3075231 () Bool)

(assert (=> d!772450 m!3075231))

(declare-fun m!3075233 () Bool)

(assert (=> d!772450 m!3075233))

(assert (=> b!2694533 d!772450))

(declare-fun d!772452 () Bool)

(assert (=> d!772452 (= (inv!42122 input!780) (isBalanced!2944 (c!434441 input!780)))))

(declare-fun bs!483824 () Bool)

(assert (= bs!483824 d!772452))

(declare-fun m!3075235 () Bool)

(assert (=> bs!483824 m!3075235))

(assert (=> start!261972 d!772452))

(declare-fun d!772454 () Bool)

(assert (=> d!772454 (= (inv!42122 treated!26) (isBalanced!2944 (c!434441 treated!26)))))

(declare-fun bs!483825 () Bool)

(assert (= bs!483825 d!772454))

(declare-fun m!3075237 () Bool)

(assert (=> bs!483825 m!3075237))

(assert (=> start!261972 d!772454))

(declare-fun d!772456 () Bool)

(declare-fun res!1132148 () Bool)

(declare-fun e!1698979 () Bool)

(assert (=> d!772456 (=> (not res!1132148) (not e!1698979))))

(assert (=> d!772456 (= res!1132148 ((_ is HashMap!3424) (cache!3567 cacheUp!486)))))

(assert (=> d!772456 (= (inv!42123 cacheUp!486) e!1698979)))

(declare-fun b!2694681 () Bool)

(assert (=> b!2694681 (= e!1698979 (validCacheMapUp!325 (cache!3567 cacheUp!486)))))

(assert (= (and d!772456 res!1132148) b!2694681))

(declare-fun m!3075239 () Bool)

(assert (=> b!2694681 m!3075239))

(assert (=> start!261972 d!772456))

(declare-fun d!772458 () Bool)

(declare-fun res!1132151 () Bool)

(declare-fun e!1698982 () Bool)

(assert (=> d!772458 (=> (not res!1132151) (not e!1698982))))

(assert (=> d!772458 (= res!1132151 ((_ is HashMap!3425) (cache!3568 cacheDown!499)))))

(assert (=> d!772458 (= (inv!42125 cacheDown!499) e!1698982)))

(declare-fun b!2694684 () Bool)

(assert (=> b!2694684 (= e!1698982 (validCacheMapDown!356 (cache!3568 cacheDown!499)))))

(assert (= (and d!772458 res!1132151) b!2694684))

(assert (=> b!2694684 m!3075047))

(assert (=> start!261972 d!772458))

(declare-fun d!772460 () Bool)

(assert (=> d!772460 (= (inv!42124 acc!348) (isBalanced!2943 (c!434442 acc!348)))))

(declare-fun bs!483826 () Bool)

(assert (= bs!483826 d!772460))

(declare-fun m!3075241 () Bool)

(assert (=> bs!483826 m!3075241))

(assert (=> start!261972 d!772460))

(declare-fun d!772462 () Bool)

(assert (=> d!772462 (= (inv!42122 totalInput!354) (isBalanced!2944 (c!434441 totalInput!354)))))

(declare-fun bs!483827 () Bool)

(assert (= bs!483827 d!772462))

(declare-fun m!3075243 () Bool)

(assert (=> bs!483827 m!3075243))

(assert (=> start!261972 d!772462))

(declare-fun d!772464 () Bool)

(declare-fun res!1132154 () Bool)

(declare-fun e!1698985 () Bool)

(assert (=> d!772464 (=> (not res!1132154) (not e!1698985))))

(declare-fun rulesValid!1768 (LexerInterface!4339 List!31176) Bool)

(assert (=> d!772464 (= res!1132154 (rulesValid!1768 thiss!12257 rules!1381))))

(assert (=> d!772464 (= (rulesInvariant!3829 thiss!12257 rules!1381) e!1698985)))

(declare-fun b!2694687 () Bool)

(declare-datatypes ((List!31178 0))(
  ( (Nil!31078) (Cons!31078 (h!36498 String!34725) (t!225185 List!31178)) )
))
(declare-fun noDuplicateTag!1764 (LexerInterface!4339 List!31176 List!31178) Bool)

(assert (=> b!2694687 (= e!1698985 (noDuplicateTag!1764 thiss!12257 rules!1381 Nil!31078))))

(assert (= (and d!772464 res!1132154) b!2694687))

(declare-fun m!3075245 () Bool)

(assert (=> d!772464 m!3075245))

(declare-fun m!3075247 () Bool)

(assert (=> b!2694687 m!3075247))

(assert (=> b!2694532 d!772464))

(declare-fun d!772466 () Bool)

(declare-fun c!434475 () Bool)

(assert (=> d!772466 (= c!434475 ((_ is Node!9715) (c!434441 input!780)))))

(declare-fun e!1698986 () Bool)

(assert (=> d!772466 (= (inv!42126 (c!434441 input!780)) e!1698986)))

(declare-fun b!2694688 () Bool)

(assert (=> b!2694688 (= e!1698986 (inv!42130 (c!434441 input!780)))))

(declare-fun b!2694689 () Bool)

(declare-fun e!1698987 () Bool)

(assert (=> b!2694689 (= e!1698986 e!1698987)))

(declare-fun res!1132155 () Bool)

(assert (=> b!2694689 (= res!1132155 (not ((_ is Leaf!14831) (c!434441 input!780))))))

(assert (=> b!2694689 (=> res!1132155 e!1698987)))

(declare-fun b!2694690 () Bool)

(assert (=> b!2694690 (= e!1698987 (inv!42131 (c!434441 input!780)))))

(assert (= (and d!772466 c!434475) b!2694688))

(assert (= (and d!772466 (not c!434475)) b!2694689))

(assert (= (and b!2694689 (not res!1132155)) b!2694690))

(declare-fun m!3075249 () Bool)

(assert (=> b!2694688 m!3075249))

(declare-fun m!3075251 () Bool)

(assert (=> b!2694690 m!3075251))

(assert (=> b!2694553 d!772466))

(declare-fun b!2694701 () Bool)

(declare-fun e!1698996 () Bool)

(declare-fun e!1698995 () Bool)

(assert (=> b!2694701 (= e!1698996 e!1698995)))

(declare-fun res!1132163 () Bool)

(declare-fun lt!951702 () tuple2!30644)

(assert (=> b!2694701 (= res!1132163 (< (size!24007 (_2!17922 lt!951702)) (size!24007 input!780)))))

(assert (=> b!2694701 (=> (not res!1132163) (not e!1698995))))

(declare-fun b!2694702 () Bool)

(assert (=> b!2694702 (= e!1698996 (= (_2!17922 lt!951702) input!780))))

(declare-fun d!772468 () Bool)

(declare-fun e!1698994 () Bool)

(assert (=> d!772468 e!1698994))

(declare-fun res!1132164 () Bool)

(assert (=> d!772468 (=> (not res!1132164) (not e!1698994))))

(assert (=> d!772468 (= res!1132164 e!1698996)))

(declare-fun c!434478 () Bool)

(assert (=> d!772468 (= c!434478 (> (size!24006 (_1!17922 lt!951702)) 0))))

(assert (=> d!772468 (= lt!951702 (lexTailRecV2!869 thiss!12257 rules!1381 input!780 (BalanceConc!19045 Empty!9715) input!780 (BalanceConc!19047 Empty!9716)))))

(assert (=> d!772468 (= (lex!1957 thiss!12257 rules!1381 input!780) lt!951702)))

(declare-fun b!2694703 () Bool)

(assert (=> b!2694703 (= e!1698994 (= (list!11727 (_2!17922 lt!951702)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 input!780)))))))

(declare-fun b!2694704 () Bool)

(declare-fun res!1132162 () Bool)

(assert (=> b!2694704 (=> (not res!1132162) (not e!1698994))))

(assert (=> b!2694704 (= res!1132162 (= (list!11728 (_1!17922 lt!951702)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 input!780)))))))

(declare-fun b!2694705 () Bool)

(assert (=> b!2694705 (= e!1698995 (not (isEmpty!17729 (_1!17922 lt!951702))))))

(assert (= (and d!772468 c!434478) b!2694701))

(assert (= (and d!772468 (not c!434478)) b!2694702))

(assert (= (and b!2694701 res!1132163) b!2694705))

(assert (= (and d!772468 res!1132164) b!2694704))

(assert (= (and b!2694704 res!1132162) b!2694703))

(declare-fun m!3075253 () Bool)

(assert (=> d!772468 m!3075253))

(assert (=> d!772468 m!3074899))

(declare-fun m!3075255 () Bool)

(assert (=> b!2694704 m!3075255))

(assert (=> b!2694704 m!3074927))

(assert (=> b!2694704 m!3074927))

(declare-fun m!3075257 () Bool)

(assert (=> b!2694704 m!3075257))

(declare-fun m!3075259 () Bool)

(assert (=> b!2694701 m!3075259))

(declare-fun m!3075261 () Bool)

(assert (=> b!2694701 m!3075261))

(declare-fun m!3075263 () Bool)

(assert (=> b!2694705 m!3075263))

(declare-fun m!3075265 () Bool)

(assert (=> b!2694703 m!3075265))

(assert (=> b!2694703 m!3074927))

(assert (=> b!2694703 m!3074927))

(assert (=> b!2694703 m!3075257))

(assert (=> b!2694531 d!772468))

(declare-fun d!772470 () Bool)

(declare-fun e!1699008 () Bool)

(assert (=> d!772470 e!1699008))

(declare-fun res!1132167 () Bool)

(assert (=> d!772470 (=> (not res!1132167) (not e!1699008))))

(declare-fun lt!951771 () tuple2!30644)

(assert (=> d!772470 (= res!1132167 (= (list!11728 (_1!17922 lt!951771)) (list!11728 (_1!17922 (lexRec!602 thiss!12257 rules!1381 input!780)))))))

(declare-fun e!1699007 () tuple2!30644)

(assert (=> d!772470 (= lt!951771 e!1699007)))

(declare-fun c!434485 () Bool)

(declare-fun lt!951792 () Option!6137)

(assert (=> d!772470 (= c!434485 ((_ is Some!6136) lt!951792))))

(declare-fun maxPrefixZipperSequenceV2!455 (LexerInterface!4339 List!31176 BalanceConc!19044 BalanceConc!19044) Option!6137)

(assert (=> d!772470 (= lt!951792 (maxPrefixZipperSequenceV2!455 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!951777 () Unit!45195)

(declare-fun lt!951796 () Unit!45195)

(assert (=> d!772470 (= lt!951777 lt!951796)))

(declare-fun lt!951793 () List!31175)

(declare-fun lt!951772 () List!31175)

(declare-fun isSuffix!830 (List!31175 List!31175) Bool)

(assert (=> d!772470 (isSuffix!830 lt!951793 (++!7617 lt!951772 lt!951793))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!515 (List!31175 List!31175) Unit!45195)

(assert (=> d!772470 (= lt!951796 (lemmaConcatTwoListThenFSndIsSuffix!515 lt!951772 lt!951793))))

(assert (=> d!772470 (= lt!951793 (list!11727 input!780))))

(assert (=> d!772470 (= lt!951772 (list!11727 (BalanceConc!19045 Empty!9715)))))

(assert (=> d!772470 (= (lexTailRecV2!869 thiss!12257 rules!1381 input!780 (BalanceConc!19045 Empty!9715) input!780 (BalanceConc!19047 Empty!9716)) lt!951771)))

(declare-fun b!2694720 () Bool)

(assert (=> b!2694720 (= e!1699007 (tuple2!30645 (BalanceConc!19047 Empty!9716) input!780))))

(declare-fun b!2694721 () Bool)

(declare-fun lt!951783 () tuple2!30644)

(declare-fun lt!951800 () Option!6137)

(assert (=> b!2694721 (= lt!951783 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951800))))))

(declare-fun e!1699005 () tuple2!30644)

(assert (=> b!2694721 (= e!1699005 (tuple2!30645 (prepend!1076 (_1!17922 lt!951783) (_1!17920 (v!32866 lt!951800))) (_2!17922 lt!951783)))))

(declare-fun b!2694722 () Bool)

(declare-fun e!1699006 () tuple2!30644)

(declare-fun lt!951802 () BalanceConc!19044)

(assert (=> b!2694722 (= e!1699006 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951802))))

(declare-fun lt!951785 () BalanceConc!19044)

(declare-fun b!2694723 () Bool)

(assert (=> b!2694723 (= e!1699007 (lexTailRecV2!869 thiss!12257 rules!1381 input!780 lt!951785 (_2!17920 (v!32866 lt!951792)) (append!772 (BalanceConc!19047 Empty!9716) (_1!17920 (v!32866 lt!951792)))))))

(declare-fun lt!951773 () tuple2!30644)

(assert (=> b!2694723 (= lt!951773 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951792))))))

(declare-fun lt!951803 () List!31175)

(assert (=> b!2694723 (= lt!951803 (list!11727 (BalanceConc!19045 Empty!9715)))))

(declare-fun lt!951778 () List!31175)

(assert (=> b!2694723 (= lt!951778 (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951792)))))))

(declare-fun lt!951798 () List!31175)

(assert (=> b!2694723 (= lt!951798 (list!11727 (_2!17920 (v!32866 lt!951792))))))

(declare-fun lt!951791 () Unit!45195)

(assert (=> b!2694723 (= lt!951791 (lemmaConcatAssociativity!1550 lt!951803 lt!951778 lt!951798))))

(assert (=> b!2694723 (= (++!7617 (++!7617 lt!951803 lt!951778) lt!951798) (++!7617 lt!951803 (++!7617 lt!951778 lt!951798)))))

(declare-fun lt!951774 () Unit!45195)

(assert (=> b!2694723 (= lt!951774 lt!951791)))

(assert (=> b!2694723 (= lt!951800 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780))))

(declare-fun c!434486 () Bool)

(assert (=> b!2694723 (= c!434486 ((_ is Some!6136) lt!951800))))

(assert (=> b!2694723 (= (lexRec!602 thiss!12257 rules!1381 input!780) e!1699005)))

(declare-fun lt!951780 () Unit!45195)

(declare-fun Unit!45199 () Unit!45195)

(assert (=> b!2694723 (= lt!951780 Unit!45199)))

(declare-fun lt!951788 () List!31177)

(assert (=> b!2694723 (= lt!951788 (list!11728 (BalanceConc!19047 Empty!9716)))))

(declare-fun lt!951790 () List!31177)

(assert (=> b!2694723 (= lt!951790 (Cons!31077 (_1!17920 (v!32866 lt!951792)) Nil!31077))))

(declare-fun lt!951781 () List!31177)

(assert (=> b!2694723 (= lt!951781 (list!11728 (_1!17922 lt!951773)))))

(declare-fun lt!951787 () Unit!45195)

(assert (=> b!2694723 (= lt!951787 (lemmaConcatAssociativity!1551 lt!951788 lt!951790 lt!951781))))

(assert (=> b!2694723 (= (++!7618 (++!7618 lt!951788 lt!951790) lt!951781) (++!7618 lt!951788 (++!7618 lt!951790 lt!951781)))))

(declare-fun lt!951794 () Unit!45195)

(assert (=> b!2694723 (= lt!951794 lt!951787)))

(declare-fun lt!951786 () List!31175)

(assert (=> b!2694723 (= lt!951786 (++!7617 (list!11727 (BalanceConc!19045 Empty!9715)) (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951792))))))))

(declare-fun lt!951775 () List!31175)

(assert (=> b!2694723 (= lt!951775 (list!11727 (_2!17920 (v!32866 lt!951792))))))

(declare-fun lt!951795 () List!31177)

(assert (=> b!2694723 (= lt!951795 (list!11728 (append!772 (BalanceConc!19047 Empty!9716) (_1!17920 (v!32866 lt!951792)))))))

(declare-fun lt!951782 () Unit!45195)

(assert (=> b!2694723 (= lt!951782 (lemmaLexThenLexPrefix!405 thiss!12257 rules!1381 lt!951786 lt!951775 lt!951795 (list!11728 (_1!17922 lt!951773)) (list!11727 (_2!17922 lt!951773))))))

(assert (=> b!2694723 (= (lexList!1192 thiss!12257 rules!1381 lt!951786) (tuple2!30647 lt!951795 Nil!31075))))

(declare-fun lt!951804 () Unit!45195)

(assert (=> b!2694723 (= lt!951804 lt!951782)))

(assert (=> b!2694723 (= lt!951802 (++!7619 (BalanceConc!19045 Empty!9715) (charsOf!2989 (_1!17920 (v!32866 lt!951792)))))))

(declare-fun lt!951776 () Option!6137)

(assert (=> b!2694723 (= lt!951776 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951802))))

(declare-fun c!434487 () Bool)

(assert (=> b!2694723 (= c!434487 ((_ is Some!6136) lt!951776))))

(assert (=> b!2694723 (= (lexRec!602 thiss!12257 rules!1381 (++!7619 (BalanceConc!19045 Empty!9715) (charsOf!2989 (_1!17920 (v!32866 lt!951792))))) e!1699006)))

(declare-fun lt!951799 () Unit!45195)

(declare-fun Unit!45200 () Unit!45195)

(assert (=> b!2694723 (= lt!951799 Unit!45200)))

(assert (=> b!2694723 (= lt!951785 (++!7619 (BalanceConc!19045 Empty!9715) (charsOf!2989 (_1!17920 (v!32866 lt!951792)))))))

(declare-fun lt!951779 () List!31175)

(assert (=> b!2694723 (= lt!951779 (list!11727 lt!951785))))

(declare-fun lt!951801 () List!31175)

(assert (=> b!2694723 (= lt!951801 (list!11727 (_2!17920 (v!32866 lt!951792))))))

(declare-fun lt!951784 () Unit!45195)

(assert (=> b!2694723 (= lt!951784 (lemmaConcatTwoListThenFSndIsSuffix!515 lt!951779 lt!951801))))

(assert (=> b!2694723 (isSuffix!830 lt!951801 (++!7617 lt!951779 lt!951801))))

(declare-fun lt!951789 () Unit!45195)

(assert (=> b!2694723 (= lt!951789 lt!951784)))

(declare-fun b!2694724 () Bool)

(assert (=> b!2694724 (= e!1699008 (= (list!11727 (_2!17922 lt!951771)) (list!11727 (_2!17922 (lexRec!602 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2694725 () Bool)

(assert (=> b!2694725 (= e!1699005 (tuple2!30645 (BalanceConc!19047 Empty!9716) input!780))))

(declare-fun lt!951797 () tuple2!30644)

(declare-fun b!2694726 () Bool)

(assert (=> b!2694726 (= lt!951797 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951776))))))

(assert (=> b!2694726 (= e!1699006 (tuple2!30645 (prepend!1076 (_1!17922 lt!951797) (_1!17920 (v!32866 lt!951776))) (_2!17922 lt!951797)))))

(assert (= (and d!772470 c!434485) b!2694723))

(assert (= (and d!772470 (not c!434485)) b!2694720))

(assert (= (and b!2694723 c!434486) b!2694721))

(assert (= (and b!2694723 (not c!434486)) b!2694725))

(assert (= (and b!2694723 c!434487) b!2694726))

(assert (= (and b!2694723 (not c!434487)) b!2694722))

(assert (= (and d!772470 res!1132167) b!2694724))

(declare-fun m!3075267 () Bool)

(assert (=> b!2694721 m!3075267))

(declare-fun m!3075269 () Bool)

(assert (=> b!2694721 m!3075269))

(declare-fun m!3075271 () Bool)

(assert (=> b!2694724 m!3075271))

(assert (=> b!2694724 m!3075025))

(declare-fun m!3075273 () Bool)

(assert (=> b!2694724 m!3075273))

(declare-fun m!3075275 () Bool)

(assert (=> b!2694726 m!3075275))

(declare-fun m!3075277 () Bool)

(assert (=> b!2694726 m!3075277))

(declare-fun m!3075279 () Bool)

(assert (=> d!772470 m!3075279))

(declare-fun m!3075281 () Bool)

(assert (=> d!772470 m!3075281))

(declare-fun m!3075283 () Bool)

(assert (=> d!772470 m!3075283))

(declare-fun m!3075285 () Bool)

(assert (=> d!772470 m!3075285))

(assert (=> d!772470 m!3074927))

(declare-fun m!3075287 () Bool)

(assert (=> d!772470 m!3075287))

(declare-fun m!3075289 () Bool)

(assert (=> d!772470 m!3075289))

(assert (=> d!772470 m!3075283))

(assert (=> d!772470 m!3075025))

(declare-fun m!3075291 () Bool)

(assert (=> d!772470 m!3075291))

(declare-fun m!3075293 () Bool)

(assert (=> b!2694723 m!3075293))

(declare-fun m!3075295 () Bool)

(assert (=> b!2694723 m!3075295))

(declare-fun m!3075297 () Bool)

(assert (=> b!2694723 m!3075297))

(declare-fun m!3075299 () Bool)

(assert (=> b!2694723 m!3075299))

(declare-fun m!3075301 () Bool)

(assert (=> b!2694723 m!3075301))

(declare-fun m!3075303 () Bool)

(assert (=> b!2694723 m!3075303))

(declare-fun m!3075305 () Bool)

(assert (=> b!2694723 m!3075305))

(assert (=> b!2694723 m!3075025))

(declare-fun m!3075307 () Bool)

(assert (=> b!2694723 m!3075307))

(declare-fun m!3075309 () Bool)

(assert (=> b!2694723 m!3075309))

(declare-fun m!3075311 () Bool)

(assert (=> b!2694723 m!3075311))

(declare-fun m!3075313 () Bool)

(assert (=> b!2694723 m!3075313))

(assert (=> b!2694723 m!3075297))

(assert (=> b!2694723 m!3075307))

(declare-fun m!3075315 () Bool)

(assert (=> b!2694723 m!3075315))

(declare-fun m!3075317 () Bool)

(assert (=> b!2694723 m!3075317))

(assert (=> b!2694723 m!3075279))

(declare-fun m!3075319 () Bool)

(assert (=> b!2694723 m!3075319))

(declare-fun m!3075321 () Bool)

(assert (=> b!2694723 m!3075321))

(assert (=> b!2694723 m!3075313))

(assert (=> b!2694723 m!3075319))

(declare-fun m!3075323 () Bool)

(assert (=> b!2694723 m!3075323))

(declare-fun m!3075325 () Bool)

(assert (=> b!2694723 m!3075325))

(assert (=> b!2694723 m!3075303))

(declare-fun m!3075327 () Bool)

(assert (=> b!2694723 m!3075327))

(declare-fun m!3075329 () Bool)

(assert (=> b!2694723 m!3075329))

(assert (=> b!2694723 m!3075315))

(declare-fun m!3075331 () Bool)

(assert (=> b!2694723 m!3075331))

(assert (=> b!2694723 m!3075279))

(assert (=> b!2694723 m!3075311))

(declare-fun m!3075333 () Bool)

(assert (=> b!2694723 m!3075333))

(declare-fun m!3075335 () Bool)

(assert (=> b!2694723 m!3075335))

(assert (=> b!2694723 m!3075315))

(assert (=> b!2694723 m!3075329))

(declare-fun m!3075337 () Bool)

(assert (=> b!2694723 m!3075337))

(assert (=> b!2694723 m!3074965))

(declare-fun m!3075339 () Bool)

(assert (=> b!2694723 m!3075339))

(declare-fun m!3075341 () Bool)

(assert (=> b!2694723 m!3075341))

(declare-fun m!3075343 () Bool)

(assert (=> b!2694723 m!3075343))

(assert (=> b!2694723 m!3075323))

(declare-fun m!3075345 () Bool)

(assert (=> b!2694723 m!3075345))

(declare-fun m!3075347 () Bool)

(assert (=> b!2694723 m!3075347))

(assert (=> b!2694723 m!3075301))

(assert (=> b!2694723 m!3075293))

(assert (=> b!2694723 m!3075313))

(declare-fun m!3075349 () Bool)

(assert (=> b!2694723 m!3075349))

(declare-fun m!3075351 () Bool)

(assert (=> b!2694723 m!3075351))

(assert (=> b!2694531 d!772470))

(declare-fun d!772472 () Bool)

(assert (=> d!772472 (= (valid!2729 cacheUp!486) (validCacheMapUp!325 (cache!3567 cacheUp!486)))))

(declare-fun bs!483828 () Bool)

(assert (= bs!483828 d!772472))

(assert (=> bs!483828 m!3075239))

(assert (=> b!2694552 d!772472))

(declare-fun d!772474 () Bool)

(assert (=> d!772474 (= (list!11727 (_2!17922 lt!951554)) (list!11729 (c!434441 (_2!17922 lt!951554))))))

(declare-fun bs!483829 () Bool)

(assert (= bs!483829 d!772474))

(declare-fun m!3075353 () Bool)

(assert (=> bs!483829 m!3075353))

(assert (=> b!2694529 d!772474))

(declare-fun d!772476 () Bool)

(assert (=> d!772476 (= (isEmpty!17728 (list!11727 (_2!17922 lt!951534))) ((_ is Nil!31075) (list!11727 (_2!17922 lt!951534))))))

(assert (=> b!2694550 d!772476))

(declare-fun d!772478 () Bool)

(assert (=> d!772478 (= (list!11727 (_2!17922 lt!951534)) (list!11729 (c!434441 (_2!17922 lt!951534))))))

(declare-fun bs!483830 () Bool)

(assert (= bs!483830 d!772478))

(declare-fun m!3075355 () Bool)

(assert (=> bs!483830 m!3075355))

(assert (=> b!2694550 d!772478))

(declare-fun b!2694727 () Bool)

(declare-fun e!1699010 () tuple2!30644)

(declare-fun lt!951819 () BalanceConc!19044)

(assert (=> b!2694727 (= e!1699010 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951819))))

(declare-fun b!2694728 () Bool)

(declare-fun e!1699012 () tuple2!30644)

(assert (=> b!2694728 (= e!1699012 (tuple2!30645 lt!951527 (_2!17920 (v!32866 lt!951535))))))

(declare-fun b!2694730 () Bool)

(declare-fun lt!951812 () tuple2!30644)

(declare-fun e!1699011 () Bool)

(assert (=> b!2694730 (= e!1699011 (= (list!11727 (_2!17922 lt!951812)) (list!11727 (_2!17922 (lexRec!602 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2694731 () Bool)

(declare-fun e!1699009 () tuple2!30644)

(assert (=> b!2694731 (= e!1699009 (tuple2!30645 (BalanceConc!19047 Empty!9716) (_2!17920 (v!32866 lt!951535))))))

(declare-fun lt!951814 () Option!6137)

(declare-fun lt!951809 () tuple2!30644)

(declare-fun b!2694729 () Bool)

(assert (=> b!2694729 (= lt!951809 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951814))))))

(assert (=> b!2694729 (= e!1699010 (tuple2!30645 (prepend!1076 (_1!17922 lt!951809) (_1!17920 (v!32866 lt!951814))) (_2!17922 lt!951809)))))

(declare-fun d!772480 () Bool)

(assert (=> d!772480 e!1699011))

(declare-fun res!1132168 () Bool)

(assert (=> d!772480 (=> (not res!1132168) (not e!1699011))))

(assert (=> d!772480 (= res!1132168 (= (list!11728 (_1!17922 lt!951812)) (list!11728 (_1!17922 (lexRec!602 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!772480 (= lt!951812 e!1699012)))

(declare-fun c!434489 () Bool)

(declare-fun lt!951822 () Option!6137)

(assert (=> d!772480 (= c!434489 ((_ is Some!6136) lt!951822))))

(assert (=> d!772480 (= lt!951822 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))))))

(assert (=> d!772480 (= (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 lt!951556 (_2!17920 (v!32866 lt!951535)) lt!951527) lt!951812)))

(declare-fun lt!951818 () Option!6137)

(declare-fun b!2694732 () Bool)

(declare-fun lt!951811 () tuple2!30644)

(assert (=> b!2694732 (= lt!951811 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951818))))))

(assert (=> b!2694732 (= e!1699009 (tuple2!30645 (prepend!1076 (_1!17922 lt!951811) (_1!17920 (v!32866 lt!951818))) (_2!17922 lt!951811)))))

(declare-fun b!2694733 () Bool)

(assert (=> b!2694733 (= e!1699012 (lexTailRec!26 thiss!12257 rules!1381 totalInput!354 (++!7619 lt!951556 (charsOf!2989 (_1!17920 (v!32866 lt!951822)))) (_2!17920 (v!32866 lt!951822)) (append!772 lt!951527 (_1!17920 (v!32866 lt!951822)))))))

(declare-fun lt!951806 () tuple2!30644)

(assert (=> b!2694733 (= lt!951806 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951822))))))

(declare-fun lt!951823 () List!31175)

(assert (=> b!2694733 (= lt!951823 (list!11727 lt!951556))))

(declare-fun lt!951807 () List!31175)

(assert (=> b!2694733 (= lt!951807 (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951822)))))))

(declare-fun lt!951805 () List!31175)

(assert (=> b!2694733 (= lt!951805 (list!11727 (_2!17920 (v!32866 lt!951822))))))

(declare-fun lt!951808 () Unit!45195)

(assert (=> b!2694733 (= lt!951808 (lemmaConcatAssociativity!1550 lt!951823 lt!951807 lt!951805))))

(assert (=> b!2694733 (= (++!7617 (++!7617 lt!951823 lt!951807) lt!951805) (++!7617 lt!951823 (++!7617 lt!951807 lt!951805)))))

(declare-fun lt!951815 () Unit!45195)

(assert (=> b!2694733 (= lt!951815 lt!951808)))

(assert (=> b!2694733 (= lt!951818 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))))))

(declare-fun c!434488 () Bool)

(assert (=> b!2694733 (= c!434488 ((_ is Some!6136) lt!951818))))

(assert (=> b!2694733 (= (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))) e!1699009)))

(declare-fun lt!951827 () Unit!45195)

(declare-fun Unit!45201 () Unit!45195)

(assert (=> b!2694733 (= lt!951827 Unit!45201)))

(declare-fun lt!951826 () List!31177)

(assert (=> b!2694733 (= lt!951826 (list!11728 lt!951527))))

(declare-fun lt!951817 () List!31177)

(assert (=> b!2694733 (= lt!951817 (Cons!31077 (_1!17920 (v!32866 lt!951822)) Nil!31077))))

(declare-fun lt!951828 () List!31177)

(assert (=> b!2694733 (= lt!951828 (list!11728 (_1!17922 lt!951806)))))

(declare-fun lt!951825 () Unit!45195)

(assert (=> b!2694733 (= lt!951825 (lemmaConcatAssociativity!1551 lt!951826 lt!951817 lt!951828))))

(assert (=> b!2694733 (= (++!7618 (++!7618 lt!951826 lt!951817) lt!951828) (++!7618 lt!951826 (++!7618 lt!951817 lt!951828)))))

(declare-fun lt!951810 () Unit!45195)

(assert (=> b!2694733 (= lt!951810 lt!951825)))

(declare-fun lt!951820 () List!31175)

(assert (=> b!2694733 (= lt!951820 (++!7617 (list!11727 lt!951556) (list!11727 (charsOf!2989 (_1!17920 (v!32866 lt!951822))))))))

(declare-fun lt!951824 () List!31175)

(assert (=> b!2694733 (= lt!951824 (list!11727 (_2!17920 (v!32866 lt!951822))))))

(declare-fun lt!951821 () List!31177)

(assert (=> b!2694733 (= lt!951821 (list!11728 (append!772 lt!951527 (_1!17920 (v!32866 lt!951822)))))))

(declare-fun lt!951813 () Unit!45195)

(assert (=> b!2694733 (= lt!951813 (lemmaLexThenLexPrefix!405 thiss!12257 rules!1381 lt!951820 lt!951824 lt!951821 (list!11728 (_1!17922 lt!951806)) (list!11727 (_2!17922 lt!951806))))))

(assert (=> b!2694733 (= (lexList!1192 thiss!12257 rules!1381 lt!951820) (tuple2!30647 lt!951821 Nil!31075))))

(declare-fun lt!951829 () Unit!45195)

(assert (=> b!2694733 (= lt!951829 lt!951813)))

(assert (=> b!2694733 (= lt!951819 (++!7619 lt!951556 (charsOf!2989 (_1!17920 (v!32866 lt!951822)))))))

(assert (=> b!2694733 (= lt!951814 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951819))))

(declare-fun c!434490 () Bool)

(assert (=> b!2694733 (= c!434490 ((_ is Some!6136) lt!951814))))

(assert (=> b!2694733 (= (lexRec!602 thiss!12257 rules!1381 (++!7619 lt!951556 (charsOf!2989 (_1!17920 (v!32866 lt!951822))))) e!1699010)))

(declare-fun lt!951816 () Unit!45195)

(declare-fun Unit!45202 () Unit!45195)

(assert (=> b!2694733 (= lt!951816 Unit!45202)))

(assert (= (and d!772480 c!434489) b!2694733))

(assert (= (and d!772480 (not c!434489)) b!2694728))

(assert (= (and b!2694733 c!434488) b!2694732))

(assert (= (and b!2694733 (not c!434488)) b!2694731))

(assert (= (and b!2694733 c!434490) b!2694729))

(assert (= (and b!2694733 (not c!434490)) b!2694727))

(assert (= (and d!772480 res!1132168) b!2694730))

(declare-fun m!3075357 () Bool)

(assert (=> b!2694732 m!3075357))

(declare-fun m!3075359 () Bool)

(assert (=> b!2694732 m!3075359))

(declare-fun m!3075361 () Bool)

(assert (=> b!2694733 m!3075361))

(declare-fun m!3075363 () Bool)

(assert (=> b!2694733 m!3075363))

(declare-fun m!3075365 () Bool)

(assert (=> b!2694733 m!3075365))

(declare-fun m!3075367 () Bool)

(assert (=> b!2694733 m!3075367))

(declare-fun m!3075369 () Bool)

(assert (=> b!2694733 m!3075369))

(assert (=> b!2694733 m!3075361))

(declare-fun m!3075371 () Bool)

(assert (=> b!2694733 m!3075371))

(declare-fun m!3075373 () Bool)

(assert (=> b!2694733 m!3075373))

(declare-fun m!3075375 () Bool)

(assert (=> b!2694733 m!3075375))

(declare-fun m!3075377 () Bool)

(assert (=> b!2694733 m!3075377))

(declare-fun m!3075379 () Bool)

(assert (=> b!2694733 m!3075379))

(assert (=> b!2694733 m!3075365))

(declare-fun m!3075381 () Bool)

(assert (=> b!2694733 m!3075381))

(declare-fun m!3075383 () Bool)

(assert (=> b!2694733 m!3075383))

(declare-fun m!3075385 () Bool)

(assert (=> b!2694733 m!3075385))

(declare-fun m!3075387 () Bool)

(assert (=> b!2694733 m!3075387))

(assert (=> b!2694733 m!3075367))

(declare-fun m!3075389 () Bool)

(assert (=> b!2694733 m!3075389))

(declare-fun m!3075391 () Bool)

(assert (=> b!2694733 m!3075391))

(declare-fun m!3075393 () Bool)

(assert (=> b!2694733 m!3075393))

(assert (=> b!2694733 m!3075365))

(declare-fun m!3075395 () Bool)

(assert (=> b!2694733 m!3075395))

(declare-fun m!3075397 () Bool)

(assert (=> b!2694733 m!3075397))

(declare-fun m!3075399 () Bool)

(assert (=> b!2694733 m!3075399))

(assert (=> b!2694733 m!3075383))

(declare-fun m!3075401 () Bool)

(assert (=> b!2694733 m!3075401))

(assert (=> b!2694733 m!3075387))

(declare-fun m!3075403 () Bool)

(assert (=> b!2694733 m!3075403))

(assert (=> b!2694733 m!3075397))

(declare-fun m!3075405 () Bool)

(assert (=> b!2694733 m!3075405))

(assert (=> b!2694733 m!3075379))

(assert (=> b!2694733 m!3075371))

(assert (=> b!2694733 m!3075367))

(declare-fun m!3075407 () Bool)

(assert (=> b!2694733 m!3075407))

(assert (=> b!2694733 m!3074971))

(assert (=> b!2694733 m!3075375))

(assert (=> b!2694733 m!3074983))

(declare-fun m!3075409 () Bool)

(assert (=> b!2694733 m!3075409))

(assert (=> b!2694733 m!3075391))

(declare-fun m!3075411 () Bool)

(assert (=> b!2694733 m!3075411))

(assert (=> b!2694733 m!3075379))

(declare-fun m!3075413 () Bool)

(assert (=> b!2694733 m!3075413))

(assert (=> b!2694733 m!3075409))

(declare-fun m!3075415 () Bool)

(assert (=> d!772480 m!3075415))

(assert (=> d!772480 m!3075023))

(assert (=> d!772480 m!3075119))

(assert (=> d!772480 m!3075393))

(declare-fun m!3075417 () Bool)

(assert (=> b!2694730 m!3075417))

(assert (=> b!2694730 m!3075023))

(assert (=> b!2694730 m!3075123))

(declare-fun m!3075419 () Bool)

(assert (=> b!2694729 m!3075419))

(declare-fun m!3075421 () Bool)

(assert (=> b!2694729 m!3075421))

(assert (=> b!2694528 d!772480))

(declare-fun d!772482 () Bool)

(declare-fun e!1699013 () Bool)

(assert (=> d!772482 e!1699013))

(declare-fun res!1132169 () Bool)

(assert (=> d!772482 (=> (not res!1132169) (not e!1699013))))

(assert (=> d!772482 (= res!1132169 (isBalanced!2943 (append!773 (c!434442 acc!348) (_1!17920 (v!32866 lt!951535)))))))

(declare-fun lt!951830 () BalanceConc!19046)

(assert (=> d!772482 (= lt!951830 (BalanceConc!19047 (append!773 (c!434442 acc!348) (_1!17920 (v!32866 lt!951535)))))))

(assert (=> d!772482 (= (append!772 acc!348 (_1!17920 (v!32866 lt!951535))) lt!951830)))

(declare-fun b!2694734 () Bool)

(assert (=> b!2694734 (= e!1699013 (= (list!11728 lt!951830) ($colon+!169 (list!11728 acc!348) (_1!17920 (v!32866 lt!951535)))))))

(assert (= (and d!772482 res!1132169) b!2694734))

(declare-fun m!3075423 () Bool)

(assert (=> d!772482 m!3075423))

(assert (=> d!772482 m!3075423))

(declare-fun m!3075425 () Bool)

(assert (=> d!772482 m!3075425))

(declare-fun m!3075427 () Bool)

(assert (=> b!2694734 m!3075427))

(assert (=> b!2694734 m!3074909))

(assert (=> b!2694734 m!3074909))

(declare-fun m!3075429 () Bool)

(assert (=> b!2694734 m!3075429))

(assert (=> b!2694528 d!772482))

(declare-fun e!1699018 () List!31175)

(declare-fun b!2694744 () Bool)

(assert (=> b!2694744 (= e!1699018 (Cons!31075 (h!36495 lt!951557) (++!7617 (t!225174 lt!951557) (++!7617 lt!951541 lt!951544))))))

(declare-fun d!772484 () Bool)

(declare-fun e!1699019 () Bool)

(assert (=> d!772484 e!1699019))

(declare-fun res!1132175 () Bool)

(assert (=> d!772484 (=> (not res!1132175) (not e!1699019))))

(declare-fun lt!951833 () List!31175)

(declare-fun content!4406 (List!31175) (InoxSet C!15948))

(assert (=> d!772484 (= res!1132175 (= (content!4406 lt!951833) ((_ map or) (content!4406 lt!951557) (content!4406 (++!7617 lt!951541 lt!951544)))))))

(assert (=> d!772484 (= lt!951833 e!1699018)))

(declare-fun c!434493 () Bool)

(assert (=> d!772484 (= c!434493 ((_ is Nil!31075) lt!951557))))

(assert (=> d!772484 (= (++!7617 lt!951557 (++!7617 lt!951541 lt!951544)) lt!951833)))

(declare-fun b!2694745 () Bool)

(declare-fun res!1132174 () Bool)

(assert (=> b!2694745 (=> (not res!1132174) (not e!1699019))))

(declare-fun size!24008 (List!31175) Int)

(assert (=> b!2694745 (= res!1132174 (= (size!24008 lt!951833) (+ (size!24008 lt!951557) (size!24008 (++!7617 lt!951541 lt!951544)))))))

(declare-fun b!2694743 () Bool)

(assert (=> b!2694743 (= e!1699018 (++!7617 lt!951541 lt!951544))))

(declare-fun b!2694746 () Bool)

(assert (=> b!2694746 (= e!1699019 (or (not (= (++!7617 lt!951541 lt!951544) Nil!31075)) (= lt!951833 lt!951557)))))

(assert (= (and d!772484 c!434493) b!2694743))

(assert (= (and d!772484 (not c!434493)) b!2694744))

(assert (= (and d!772484 res!1132175) b!2694745))

(assert (= (and b!2694745 res!1132174) b!2694746))

(assert (=> b!2694744 m!3074995))

(declare-fun m!3075431 () Bool)

(assert (=> b!2694744 m!3075431))

(declare-fun m!3075433 () Bool)

(assert (=> d!772484 m!3075433))

(declare-fun m!3075435 () Bool)

(assert (=> d!772484 m!3075435))

(assert (=> d!772484 m!3074995))

(declare-fun m!3075437 () Bool)

(assert (=> d!772484 m!3075437))

(declare-fun m!3075439 () Bool)

(assert (=> b!2694745 m!3075439))

(declare-fun m!3075441 () Bool)

(assert (=> b!2694745 m!3075441))

(assert (=> b!2694745 m!3074995))

(declare-fun m!3075443 () Bool)

(assert (=> b!2694745 m!3075443))

(assert (=> b!2694528 d!772484))

(declare-fun d!772486 () Bool)

(declare-fun list!11730 (Conc!9716) List!31177)

(assert (=> d!772486 (= (list!11728 (_1!17922 lt!951526)) (list!11730 (c!434442 (_1!17922 lt!951526))))))

(declare-fun bs!483831 () Bool)

(assert (= bs!483831 d!772486))

(declare-fun m!3075445 () Bool)

(assert (=> bs!483831 m!3075445))

(assert (=> b!2694528 d!772486))

(declare-fun e!1699024 () List!31177)

(declare-fun b!2694756 () Bool)

(assert (=> b!2694756 (= e!1699024 (Cons!31077 (h!36497 lt!951545) (++!7618 (t!225176 lt!951545) (++!7618 lt!951549 lt!951540))))))

(declare-fun d!772488 () Bool)

(declare-fun e!1699025 () Bool)

(assert (=> d!772488 e!1699025))

(declare-fun res!1132181 () Bool)

(assert (=> d!772488 (=> (not res!1132181) (not e!1699025))))

(declare-fun lt!951836 () List!31177)

(declare-fun content!4407 (List!31177) (InoxSet Token!8952))

(assert (=> d!772488 (= res!1132181 (= (content!4407 lt!951836) ((_ map or) (content!4407 lt!951545) (content!4407 (++!7618 lt!951549 lt!951540)))))))

(assert (=> d!772488 (= lt!951836 e!1699024)))

(declare-fun c!434496 () Bool)

(assert (=> d!772488 (= c!434496 ((_ is Nil!31077) lt!951545))))

(assert (=> d!772488 (= (++!7618 lt!951545 (++!7618 lt!951549 lt!951540)) lt!951836)))

(declare-fun b!2694757 () Bool)

(declare-fun res!1132180 () Bool)

(assert (=> b!2694757 (=> (not res!1132180) (not e!1699025))))

(declare-fun size!24009 (List!31177) Int)

(assert (=> b!2694757 (= res!1132180 (= (size!24009 lt!951836) (+ (size!24009 lt!951545) (size!24009 (++!7618 lt!951549 lt!951540)))))))

(declare-fun b!2694755 () Bool)

(assert (=> b!2694755 (= e!1699024 (++!7618 lt!951549 lt!951540))))

(declare-fun b!2694758 () Bool)

(assert (=> b!2694758 (= e!1699025 (or (not (= (++!7618 lt!951549 lt!951540) Nil!31077)) (= lt!951836 lt!951545)))))

(assert (= (and d!772488 c!434496) b!2694755))

(assert (= (and d!772488 (not c!434496)) b!2694756))

(assert (= (and d!772488 res!1132181) b!2694757))

(assert (= (and b!2694757 res!1132180) b!2694758))

(assert (=> b!2694756 m!3074967))

(declare-fun m!3075447 () Bool)

(assert (=> b!2694756 m!3075447))

(declare-fun m!3075449 () Bool)

(assert (=> d!772488 m!3075449))

(declare-fun m!3075451 () Bool)

(assert (=> d!772488 m!3075451))

(assert (=> d!772488 m!3074967))

(declare-fun m!3075453 () Bool)

(assert (=> d!772488 m!3075453))

(declare-fun m!3075455 () Bool)

(assert (=> b!2694757 m!3075455))

(declare-fun m!3075457 () Bool)

(assert (=> b!2694757 m!3075457))

(assert (=> b!2694757 m!3074967))

(declare-fun m!3075459 () Bool)

(assert (=> b!2694757 m!3075459))

(assert (=> b!2694528 d!772488))

(declare-fun d!772490 () Bool)

(declare-fun lt!951837 () BalanceConc!19044)

(assert (=> d!772490 (= (list!11727 lt!951837) (originalCharacters!5507 (_1!17920 (v!32866 lt!951535))))))

(assert (=> d!772490 (= lt!951837 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 lt!951535))))) (value!152790 (_1!17920 (v!32866 lt!951535)))))))

(assert (=> d!772490 (= (charsOf!2989 (_1!17920 (v!32866 lt!951535))) lt!951837)))

(declare-fun b_lambda!82155 () Bool)

(assert (=> (not b_lambda!82155) (not d!772490)))

(declare-fun tb!151067 () Bool)

(declare-fun t!225180 () Bool)

(assert (=> (and b!2694555 (= (toChars!6560 (transformation!4743 (h!36496 rules!1381))) (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 lt!951535)))))) t!225180) tb!151067))

(declare-fun b!2694759 () Bool)

(declare-fun e!1699026 () Bool)

(declare-fun tp!852218 () Bool)

(assert (=> b!2694759 (= e!1699026 (and (inv!42126 (c!434441 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 lt!951535))))) (value!152790 (_1!17920 (v!32866 lt!951535)))))) tp!852218))))

(declare-fun result!186590 () Bool)

(assert (=> tb!151067 (= result!186590 (and (inv!42122 (dynLambda!13448 (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 lt!951535))))) (value!152790 (_1!17920 (v!32866 lt!951535))))) e!1699026))))

(assert (= tb!151067 b!2694759))

(declare-fun m!3075461 () Bool)

(assert (=> b!2694759 m!3075461))

(declare-fun m!3075463 () Bool)

(assert (=> tb!151067 m!3075463))

(assert (=> d!772490 t!225180))

(declare-fun b_and!199217 () Bool)

(assert (= b_and!199215 (and (=> t!225180 result!186590) b_and!199217)))

(declare-fun m!3075465 () Bool)

(assert (=> d!772490 m!3075465))

(declare-fun m!3075467 () Bool)

(assert (=> d!772490 m!3075467))

(assert (=> b!2694528 d!772490))

(declare-fun b!2694760 () Bool)

(declare-fun e!1699030 () tuple2!30644)

(declare-fun lt!951840 () tuple2!30644)

(declare-fun lt!951839 () Option!6137)

(assert (=> b!2694760 (= e!1699030 (tuple2!30645 (prepend!1076 (_1!17922 lt!951840) (_1!17920 (v!32866 lt!951839))) (_2!17922 lt!951840)))))

(assert (=> b!2694760 (= lt!951840 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951839))))))

(declare-fun b!2694761 () Bool)

(assert (=> b!2694761 (= e!1699030 (tuple2!30645 (BalanceConc!19047 Empty!9716) (_2!17920 (v!32866 lt!951535))))))

(declare-fun b!2694762 () Bool)

(declare-fun lt!951838 () tuple2!30644)

(declare-fun e!1699029 () Bool)

(assert (=> b!2694762 (= e!1699029 (= (list!11727 (_2!17922 lt!951838)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 lt!951535)))))))))

(declare-fun b!2694763 () Bool)

(declare-fun res!1132182 () Bool)

(assert (=> b!2694763 (=> (not res!1132182) (not e!1699029))))

(assert (=> b!2694763 (= res!1132182 (= (list!11728 (_1!17922 lt!951838)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 lt!951535)))))))))

(declare-fun b!2694764 () Bool)

(declare-fun e!1699027 () Bool)

(assert (=> b!2694764 (= e!1699027 (not (isEmpty!17729 (_1!17922 lt!951838))))))

(declare-fun d!772492 () Bool)

(assert (=> d!772492 e!1699029))

(declare-fun res!1132183 () Bool)

(assert (=> d!772492 (=> (not res!1132183) (not e!1699029))))

(declare-fun e!1699028 () Bool)

(assert (=> d!772492 (= res!1132183 e!1699028)))

(declare-fun c!434497 () Bool)

(assert (=> d!772492 (= c!434497 (> (size!24006 (_1!17922 lt!951838)) 0))))

(assert (=> d!772492 (= lt!951838 e!1699030)))

(declare-fun c!434498 () Bool)

(assert (=> d!772492 (= c!434498 ((_ is Some!6136) lt!951839))))

(assert (=> d!772492 (= lt!951839 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))))))

(assert (=> d!772492 (= (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951535))) lt!951838)))

(declare-fun b!2694765 () Bool)

(assert (=> b!2694765 (= e!1699028 e!1699027)))

(declare-fun res!1132184 () Bool)

(assert (=> b!2694765 (= res!1132184 (< (size!24007 (_2!17922 lt!951838)) (size!24007 (_2!17920 (v!32866 lt!951535)))))))

(assert (=> b!2694765 (=> (not res!1132184) (not e!1699027))))

(declare-fun b!2694766 () Bool)

(assert (=> b!2694766 (= e!1699028 (= (list!11727 (_2!17922 lt!951838)) (list!11727 (_2!17920 (v!32866 lt!951535)))))))

(assert (= (and d!772492 c!434498) b!2694760))

(assert (= (and d!772492 (not c!434498)) b!2694761))

(assert (= (and d!772492 c!434497) b!2694765))

(assert (= (and d!772492 (not c!434497)) b!2694766))

(assert (= (and b!2694765 res!1132184) b!2694764))

(assert (= (and d!772492 res!1132183) b!2694763))

(assert (= (and b!2694763 res!1132182) b!2694762))

(declare-fun m!3075469 () Bool)

(assert (=> b!2694766 m!3075469))

(assert (=> b!2694766 m!3075001))

(assert (=> b!2694762 m!3075469))

(assert (=> b!2694762 m!3075001))

(assert (=> b!2694762 m!3075001))

(declare-fun m!3075471 () Bool)

(assert (=> b!2694762 m!3075471))

(declare-fun m!3075473 () Bool)

(assert (=> b!2694760 m!3075473))

(declare-fun m!3075475 () Bool)

(assert (=> b!2694760 m!3075475))

(declare-fun m!3075477 () Bool)

(assert (=> b!2694764 m!3075477))

(declare-fun m!3075479 () Bool)

(assert (=> b!2694765 m!3075479))

(declare-fun m!3075481 () Bool)

(assert (=> b!2694765 m!3075481))

(declare-fun m!3075483 () Bool)

(assert (=> d!772492 m!3075483))

(assert (=> d!772492 m!3075393))

(declare-fun m!3075485 () Bool)

(assert (=> b!2694763 m!3075485))

(assert (=> b!2694763 m!3075001))

(assert (=> b!2694763 m!3075001))

(assert (=> b!2694763 m!3075471))

(assert (=> b!2694528 d!772492))

(declare-fun d!772494 () Bool)

(assert (=> d!772494 (= (list!11727 lt!951530) (list!11729 (c!434441 lt!951530)))))

(declare-fun bs!483832 () Bool)

(assert (= bs!483832 d!772494))

(declare-fun m!3075487 () Bool)

(assert (=> bs!483832 m!3075487))

(assert (=> b!2694528 d!772494))

(declare-fun d!772496 () Bool)

(assert (=> d!772496 (= (++!7618 (++!7618 lt!951545 lt!951549) lt!951540) (++!7618 lt!951545 (++!7618 lt!951549 lt!951540)))))

(declare-fun lt!951843 () Unit!45195)

(declare-fun choose!15916 (List!31177 List!31177 List!31177) Unit!45195)

(assert (=> d!772496 (= lt!951843 (choose!15916 lt!951545 lt!951549 lt!951540))))

(assert (=> d!772496 (= (lemmaConcatAssociativity!1551 lt!951545 lt!951549 lt!951540) lt!951843)))

(declare-fun bs!483833 () Bool)

(assert (= bs!483833 d!772496))

(declare-fun m!3075489 () Bool)

(assert (=> bs!483833 m!3075489))

(assert (=> bs!483833 m!3074991))

(assert (=> bs!483833 m!3074991))

(assert (=> bs!483833 m!3075003))

(assert (=> bs!483833 m!3074967))

(assert (=> bs!483833 m!3074967))

(assert (=> bs!483833 m!3074969))

(assert (=> b!2694528 d!772496))

(declare-fun b!2694767 () Bool)

(declare-fun e!1699033 () Option!6137)

(declare-fun call!173595 () Option!6137)

(assert (=> b!2694767 (= e!1699033 call!173595)))

(declare-fun b!2694768 () Bool)

(declare-fun e!1699035 () Bool)

(declare-fun e!1699036 () Bool)

(assert (=> b!2694768 (= e!1699035 e!1699036)))

(declare-fun res!1132188 () Bool)

(assert (=> b!2694768 (=> (not res!1132188) (not e!1699036))))

(declare-fun lt!951850 () Option!6137)

(assert (=> b!2694768 (= res!1132188 (= (_1!17920 (get!9724 lt!951850)) (_1!17924 (get!9725 (maxPrefix!2352 thiss!12257 rules!1381 (list!11727 lt!951556))))))))

(declare-fun e!1699034 () Bool)

(declare-fun b!2694769 () Bool)

(assert (=> b!2694769 (= e!1699034 (= (list!11727 (_2!17920 (get!9724 lt!951850))) (_2!17924 (get!9725 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 lt!951556))))))))

(declare-fun b!2694770 () Bool)

(assert (=> b!2694770 (= e!1699036 (= (list!11727 (_2!17920 (get!9724 lt!951850))) (_2!17924 (get!9725 (maxPrefix!2352 thiss!12257 rules!1381 (list!11727 lt!951556))))))))

(declare-fun b!2694771 () Bool)

(declare-fun res!1132187 () Bool)

(declare-fun e!1699032 () Bool)

(assert (=> b!2694771 (=> (not res!1132187) (not e!1699032))))

(declare-fun e!1699031 () Bool)

(assert (=> b!2694771 (= res!1132187 e!1699031)))

(declare-fun res!1132190 () Bool)

(assert (=> b!2694771 (=> res!1132190 e!1699031)))

(assert (=> b!2694771 (= res!1132190 (not (isDefined!4865 lt!951850)))))

(declare-fun b!2694772 () Bool)

(declare-fun lt!951848 () Option!6137)

(declare-fun lt!951849 () Option!6137)

(assert (=> b!2694772 (= e!1699033 (ite (and ((_ is None!6136) lt!951848) ((_ is None!6136) lt!951849)) None!6136 (ite ((_ is None!6136) lt!951849) lt!951848 (ite ((_ is None!6136) lt!951848) lt!951849 (ite (>= (size!24005 (_1!17920 (v!32866 lt!951848))) (size!24005 (_1!17920 (v!32866 lt!951849)))) lt!951848 lt!951849)))))))

(assert (=> b!2694772 (= lt!951848 call!173595)))

(assert (=> b!2694772 (= lt!951849 (maxPrefixZipperSequence!1002 thiss!12257 (t!225175 rules!1381) lt!951556))))

(declare-fun b!2694773 () Bool)

(assert (=> b!2694773 (= e!1699031 e!1699034)))

(declare-fun res!1132189 () Bool)

(assert (=> b!2694773 (=> (not res!1132189) (not e!1699034))))

(assert (=> b!2694773 (= res!1132189 (= (_1!17920 (get!9724 lt!951850)) (_1!17924 (get!9725 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 lt!951556))))))))

(declare-fun b!2694774 () Bool)

(assert (=> b!2694774 (= e!1699032 e!1699035)))

(declare-fun res!1132186 () Bool)

(assert (=> b!2694774 (=> res!1132186 e!1699035)))

(assert (=> b!2694774 (= res!1132186 (not (isDefined!4865 lt!951850)))))

(declare-fun bm!173590 () Bool)

(assert (=> bm!173590 (= call!173595 (maxPrefixOneRuleZipperSequence!465 thiss!12257 (h!36496 rules!1381) lt!951556))))

(declare-fun d!772498 () Bool)

(assert (=> d!772498 e!1699032))

(declare-fun res!1132185 () Bool)

(assert (=> d!772498 (=> (not res!1132185) (not e!1699032))))

(assert (=> d!772498 (= res!1132185 (= (isDefined!4865 lt!951850) (isDefined!4866 (maxPrefixZipper!456 thiss!12257 rules!1381 (list!11727 lt!951556)))))))

(assert (=> d!772498 (= lt!951850 e!1699033)))

(declare-fun c!434499 () Bool)

(assert (=> d!772498 (= c!434499 (and ((_ is Cons!31076) rules!1381) ((_ is Nil!31076) (t!225175 rules!1381))))))

(declare-fun lt!951845 () Unit!45195)

(declare-fun lt!951844 () Unit!45195)

(assert (=> d!772498 (= lt!951845 lt!951844)))

(declare-fun lt!951847 () List!31175)

(declare-fun lt!951846 () List!31175)

(assert (=> d!772498 (isPrefix!2469 lt!951847 lt!951846)))

(assert (=> d!772498 (= lt!951844 (lemmaIsPrefixRefl!1595 lt!951847 lt!951846))))

(assert (=> d!772498 (= lt!951846 (list!11727 lt!951556))))

(assert (=> d!772498 (= lt!951847 (list!11727 lt!951556))))

(assert (=> d!772498 (rulesValidInductive!1651 thiss!12257 rules!1381)))

(assert (=> d!772498 (= (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951556) lt!951850)))

(assert (= (and d!772498 c!434499) b!2694767))

(assert (= (and d!772498 (not c!434499)) b!2694772))

(assert (= (or b!2694767 b!2694772) bm!173590))

(assert (= (and d!772498 res!1132185) b!2694771))

(assert (= (and b!2694771 (not res!1132190)) b!2694773))

(assert (= (and b!2694773 res!1132189) b!2694769))

(assert (= (and b!2694771 res!1132187) b!2694774))

(assert (= (and b!2694774 (not res!1132186)) b!2694768))

(assert (= (and b!2694768 res!1132188) b!2694770))

(assert (=> b!2694770 m!3075361))

(declare-fun m!3075491 () Bool)

(assert (=> b!2694770 m!3075491))

(declare-fun m!3075493 () Bool)

(assert (=> b!2694770 m!3075493))

(assert (=> b!2694770 m!3075361))

(declare-fun m!3075495 () Bool)

(assert (=> b!2694770 m!3075495))

(assert (=> b!2694770 m!3075495))

(declare-fun m!3075497 () Bool)

(assert (=> b!2694770 m!3075497))

(assert (=> b!2694773 m!3075493))

(assert (=> b!2694773 m!3075361))

(assert (=> b!2694773 m!3075361))

(declare-fun m!3075499 () Bool)

(assert (=> b!2694773 m!3075499))

(assert (=> b!2694773 m!3075499))

(declare-fun m!3075501 () Bool)

(assert (=> b!2694773 m!3075501))

(declare-fun m!3075503 () Bool)

(assert (=> b!2694774 m!3075503))

(assert (=> d!772498 m!3075361))

(assert (=> d!772498 m!3075499))

(assert (=> d!772498 m!3075361))

(declare-fun m!3075505 () Bool)

(assert (=> d!772498 m!3075505))

(assert (=> d!772498 m!3075059))

(assert (=> d!772498 m!3075503))

(assert (=> d!772498 m!3075499))

(declare-fun m!3075507 () Bool)

(assert (=> d!772498 m!3075507))

(declare-fun m!3075509 () Bool)

(assert (=> d!772498 m!3075509))

(declare-fun m!3075511 () Bool)

(assert (=> b!2694772 m!3075511))

(assert (=> b!2694771 m!3075503))

(assert (=> b!2694769 m!3075361))

(assert (=> b!2694769 m!3075499))

(assert (=> b!2694769 m!3075361))

(assert (=> b!2694769 m!3075493))

(assert (=> b!2694769 m!3075499))

(assert (=> b!2694769 m!3075501))

(assert (=> b!2694769 m!3075491))

(declare-fun m!3075513 () Bool)

(assert (=> bm!173590 m!3075513))

(assert (=> b!2694768 m!3075493))

(assert (=> b!2694768 m!3075361))

(assert (=> b!2694768 m!3075361))

(assert (=> b!2694768 m!3075495))

(assert (=> b!2694768 m!3075495))

(assert (=> b!2694768 m!3075497))

(assert (=> b!2694528 d!772498))

(declare-fun d!772500 () Bool)

(assert (=> d!772500 (= (list!11728 lt!951527) (list!11730 (c!434442 lt!951527)))))

(declare-fun bs!483834 () Bool)

(assert (= bs!483834 d!772500))

(declare-fun m!3075515 () Bool)

(assert (=> bs!483834 m!3075515))

(assert (=> b!2694528 d!772500))

(declare-fun d!772502 () Bool)

(assert (=> d!772502 (= (list!11727 (_2!17920 (v!32866 lt!951535))) (list!11729 (c!434441 (_2!17920 (v!32866 lt!951535)))))))

(declare-fun bs!483835 () Bool)

(assert (= bs!483835 d!772502))

(declare-fun m!3075517 () Bool)

(assert (=> bs!483835 m!3075517))

(assert (=> b!2694528 d!772502))

(declare-fun d!772504 () Bool)

(assert (=> d!772504 (= (++!7617 (++!7617 lt!951557 lt!951541) lt!951544) (++!7617 lt!951557 (++!7617 lt!951541 lt!951544)))))

(declare-fun lt!951853 () Unit!45195)

(declare-fun choose!15917 (List!31175 List!31175 List!31175) Unit!45195)

(assert (=> d!772504 (= lt!951853 (choose!15917 lt!951557 lt!951541 lt!951544))))

(assert (=> d!772504 (= (lemmaConcatAssociativity!1550 lt!951557 lt!951541 lt!951544) lt!951853)))

(declare-fun bs!483836 () Bool)

(assert (= bs!483836 d!772504))

(assert (=> bs!483836 m!3074981))

(assert (=> bs!483836 m!3074995))

(assert (=> bs!483836 m!3075007))

(declare-fun m!3075519 () Bool)

(assert (=> bs!483836 m!3075519))

(assert (=> bs!483836 m!3074981))

(declare-fun m!3075521 () Bool)

(assert (=> bs!483836 m!3075521))

(assert (=> bs!483836 m!3074995))

(assert (=> b!2694528 d!772504))

(declare-fun d!772506 () Bool)

(assert (=> d!772506 (= (lexList!1192 thiss!12257 rules!1381 lt!951532) (tuple2!30647 lt!951550 Nil!31075))))

(declare-fun lt!951856 () Unit!45195)

(declare-fun choose!15918 (LexerInterface!4339 List!31176 List!31175 List!31175 List!31177 List!31177 List!31175) Unit!45195)

(assert (=> d!772506 (= lt!951856 (choose!15918 thiss!12257 rules!1381 lt!951532 lt!951544 lt!951550 lt!951540 (list!11727 (_2!17922 lt!951526))))))

(assert (=> d!772506 (not (isEmpty!17727 rules!1381))))

(assert (=> d!772506 (= (lemmaLexThenLexPrefix!405 thiss!12257 rules!1381 lt!951532 lt!951544 lt!951550 lt!951540 (list!11727 (_2!17922 lt!951526))) lt!951856)))

(declare-fun bs!483837 () Bool)

(assert (= bs!483837 d!772506))

(assert (=> bs!483837 m!3074973))

(assert (=> bs!483837 m!3074975))

(declare-fun m!3075523 () Bool)

(assert (=> bs!483837 m!3075523))

(assert (=> bs!483837 m!3074879))

(assert (=> b!2694528 d!772506))

(declare-fun d!772508 () Bool)

(declare-fun e!1699043 () Bool)

(assert (=> d!772508 e!1699043))

(declare-fun c!434504 () Bool)

(declare-fun lt!951863 () tuple2!30646)

(assert (=> d!772508 (= c!434504 (> (size!24009 (_1!17923 lt!951863)) 0))))

(declare-fun e!1699045 () tuple2!30646)

(assert (=> d!772508 (= lt!951863 e!1699045)))

(declare-fun c!434505 () Bool)

(declare-fun lt!951865 () Option!6138)

(assert (=> d!772508 (= c!434505 ((_ is Some!6137) lt!951865))))

(assert (=> d!772508 (= lt!951865 (maxPrefix!2352 thiss!12257 rules!1381 lt!951532))))

(assert (=> d!772508 (= (lexList!1192 thiss!12257 rules!1381 lt!951532) lt!951863)))

(declare-fun b!2694785 () Bool)

(declare-fun e!1699044 () Bool)

(assert (=> b!2694785 (= e!1699043 e!1699044)))

(declare-fun res!1132193 () Bool)

(assert (=> b!2694785 (= res!1132193 (< (size!24008 (_2!17923 lt!951863)) (size!24008 lt!951532)))))

(assert (=> b!2694785 (=> (not res!1132193) (not e!1699044))))

(declare-fun b!2694786 () Bool)

(assert (=> b!2694786 (= e!1699045 (tuple2!30647 Nil!31077 lt!951532))))

(declare-fun b!2694787 () Bool)

(declare-fun lt!951864 () tuple2!30646)

(assert (=> b!2694787 (= e!1699045 (tuple2!30647 (Cons!31077 (_1!17924 (v!32872 lt!951865)) (_1!17923 lt!951864)) (_2!17923 lt!951864)))))

(assert (=> b!2694787 (= lt!951864 (lexList!1192 thiss!12257 rules!1381 (_2!17924 (v!32872 lt!951865))))))

(declare-fun b!2694788 () Bool)

(assert (=> b!2694788 (= e!1699043 (= (_2!17923 lt!951863) lt!951532))))

(declare-fun b!2694789 () Bool)

(declare-fun isEmpty!17730 (List!31177) Bool)

(assert (=> b!2694789 (= e!1699044 (not (isEmpty!17730 (_1!17923 lt!951863))))))

(assert (= (and d!772508 c!434505) b!2694787))

(assert (= (and d!772508 (not c!434505)) b!2694786))

(assert (= (and d!772508 c!434504) b!2694785))

(assert (= (and d!772508 (not c!434504)) b!2694788))

(assert (= (and b!2694785 res!1132193) b!2694789))

(declare-fun m!3075525 () Bool)

(assert (=> d!772508 m!3075525))

(declare-fun m!3075527 () Bool)

(assert (=> d!772508 m!3075527))

(declare-fun m!3075529 () Bool)

(assert (=> b!2694785 m!3075529))

(declare-fun m!3075531 () Bool)

(assert (=> b!2694785 m!3075531))

(declare-fun m!3075533 () Bool)

(assert (=> b!2694787 m!3075533))

(declare-fun m!3075535 () Bool)

(assert (=> b!2694789 m!3075535))

(assert (=> b!2694528 d!772508))

(declare-fun lt!951866 () BalanceConc!19044)

(declare-fun e!1699046 () Bool)

(declare-fun b!2694793 () Bool)

(assert (=> b!2694793 (= e!1699046 (= (list!11727 lt!951866) (++!7617 (list!11727 treated!26) (list!11727 lt!951530))))))

(declare-fun b!2694790 () Bool)

(declare-fun res!1132195 () Bool)

(assert (=> b!2694790 (=> (not res!1132195) (not e!1699046))))

(assert (=> b!2694790 (= res!1132195 (isBalanced!2944 (++!7620 (c!434441 treated!26) (c!434441 lt!951530))))))

(declare-fun d!772510 () Bool)

(assert (=> d!772510 e!1699046))

(declare-fun res!1132196 () Bool)

(assert (=> d!772510 (=> (not res!1132196) (not e!1699046))))

(assert (=> d!772510 (= res!1132196 (appendAssocInst!665 (c!434441 treated!26) (c!434441 lt!951530)))))

(assert (=> d!772510 (= lt!951866 (BalanceConc!19045 (++!7620 (c!434441 treated!26) (c!434441 lt!951530))))))

(assert (=> d!772510 (= (++!7619 treated!26 lt!951530) lt!951866)))

(declare-fun b!2694791 () Bool)

(declare-fun res!1132197 () Bool)

(assert (=> b!2694791 (=> (not res!1132197) (not e!1699046))))

(assert (=> b!2694791 (= res!1132197 (<= (height!1425 (++!7620 (c!434441 treated!26) (c!434441 lt!951530))) (+ (max!0 (height!1425 (c!434441 treated!26)) (height!1425 (c!434441 lt!951530))) 1)))))

(declare-fun b!2694792 () Bool)

(declare-fun res!1132194 () Bool)

(assert (=> b!2694792 (=> (not res!1132194) (not e!1699046))))

(assert (=> b!2694792 (= res!1132194 (>= (height!1425 (++!7620 (c!434441 treated!26) (c!434441 lt!951530))) (max!0 (height!1425 (c!434441 treated!26)) (height!1425 (c!434441 lt!951530)))))))

(assert (= (and d!772510 res!1132196) b!2694790))

(assert (= (and b!2694790 res!1132195) b!2694791))

(assert (= (and b!2694791 res!1132197) b!2694792))

(assert (= (and b!2694792 res!1132194) b!2694793))

(declare-fun m!3075537 () Bool)

(assert (=> b!2694790 m!3075537))

(assert (=> b!2694790 m!3075537))

(declare-fun m!3075539 () Bool)

(assert (=> b!2694790 m!3075539))

(declare-fun m!3075541 () Bool)

(assert (=> d!772510 m!3075541))

(assert (=> d!772510 m!3075537))

(assert (=> b!2694792 m!3075213))

(declare-fun m!3075543 () Bool)

(assert (=> b!2694792 m!3075543))

(declare-fun m!3075545 () Bool)

(assert (=> b!2694792 m!3075545))

(assert (=> b!2694792 m!3075213))

(assert (=> b!2694792 m!3075537))

(declare-fun m!3075547 () Bool)

(assert (=> b!2694792 m!3075547))

(assert (=> b!2694792 m!3075543))

(assert (=> b!2694792 m!3075537))

(declare-fun m!3075549 () Bool)

(assert (=> b!2694793 m!3075549))

(assert (=> b!2694793 m!3074929))

(assert (=> b!2694793 m!3074999))

(assert (=> b!2694793 m!3074929))

(assert (=> b!2694793 m!3074999))

(declare-fun m!3075551 () Bool)

(assert (=> b!2694793 m!3075551))

(assert (=> b!2694791 m!3075213))

(assert (=> b!2694791 m!3075543))

(assert (=> b!2694791 m!3075545))

(assert (=> b!2694791 m!3075213))

(assert (=> b!2694791 m!3075537))

(assert (=> b!2694791 m!3075547))

(assert (=> b!2694791 m!3075543))

(assert (=> b!2694791 m!3075537))

(assert (=> b!2694528 d!772510))

(declare-fun b!2694795 () Bool)

(declare-fun e!1699047 () List!31175)

(assert (=> b!2694795 (= e!1699047 (Cons!31075 (h!36495 lt!951532) (++!7617 (t!225174 lt!951532) lt!951544)))))

(declare-fun d!772512 () Bool)

(declare-fun e!1699048 () Bool)

(assert (=> d!772512 e!1699048))

(declare-fun res!1132199 () Bool)

(assert (=> d!772512 (=> (not res!1132199) (not e!1699048))))

(declare-fun lt!951867 () List!31175)

(assert (=> d!772512 (= res!1132199 (= (content!4406 lt!951867) ((_ map or) (content!4406 lt!951532) (content!4406 lt!951544))))))

(assert (=> d!772512 (= lt!951867 e!1699047)))

(declare-fun c!434506 () Bool)

(assert (=> d!772512 (= c!434506 ((_ is Nil!31075) lt!951532))))

(assert (=> d!772512 (= (++!7617 lt!951532 lt!951544) lt!951867)))

(declare-fun b!2694796 () Bool)

(declare-fun res!1132198 () Bool)

(assert (=> b!2694796 (=> (not res!1132198) (not e!1699048))))

(assert (=> b!2694796 (= res!1132198 (= (size!24008 lt!951867) (+ (size!24008 lt!951532) (size!24008 lt!951544))))))

(declare-fun b!2694794 () Bool)

(assert (=> b!2694794 (= e!1699047 lt!951544)))

(declare-fun b!2694797 () Bool)

(assert (=> b!2694797 (= e!1699048 (or (not (= lt!951544 Nil!31075)) (= lt!951867 lt!951532)))))

(assert (= (and d!772512 c!434506) b!2694794))

(assert (= (and d!772512 (not c!434506)) b!2694795))

(assert (= (and d!772512 res!1132199) b!2694796))

(assert (= (and b!2694796 res!1132198) b!2694797))

(declare-fun m!3075553 () Bool)

(assert (=> b!2694795 m!3075553))

(declare-fun m!3075555 () Bool)

(assert (=> d!772512 m!3075555))

(declare-fun m!3075557 () Bool)

(assert (=> d!772512 m!3075557))

(declare-fun m!3075559 () Bool)

(assert (=> d!772512 m!3075559))

(declare-fun m!3075561 () Bool)

(assert (=> b!2694796 m!3075561))

(assert (=> b!2694796 m!3075531))

(declare-fun m!3075563 () Bool)

(assert (=> b!2694796 m!3075563))

(assert (=> b!2694528 d!772512))

(declare-fun b!2694799 () Bool)

(declare-fun e!1699049 () List!31177)

(assert (=> b!2694799 (= e!1699049 (Cons!31077 (h!36497 lt!951545) (++!7618 (t!225176 lt!951545) lt!951549)))))

(declare-fun d!772514 () Bool)

(declare-fun e!1699050 () Bool)

(assert (=> d!772514 e!1699050))

(declare-fun res!1132201 () Bool)

(assert (=> d!772514 (=> (not res!1132201) (not e!1699050))))

(declare-fun lt!951868 () List!31177)

(assert (=> d!772514 (= res!1132201 (= (content!4407 lt!951868) ((_ map or) (content!4407 lt!951545) (content!4407 lt!951549))))))

(assert (=> d!772514 (= lt!951868 e!1699049)))

(declare-fun c!434507 () Bool)

(assert (=> d!772514 (= c!434507 ((_ is Nil!31077) lt!951545))))

(assert (=> d!772514 (= (++!7618 lt!951545 lt!951549) lt!951868)))

(declare-fun b!2694800 () Bool)

(declare-fun res!1132200 () Bool)

(assert (=> b!2694800 (=> (not res!1132200) (not e!1699050))))

(assert (=> b!2694800 (= res!1132200 (= (size!24009 lt!951868) (+ (size!24009 lt!951545) (size!24009 lt!951549))))))

(declare-fun b!2694798 () Bool)

(assert (=> b!2694798 (= e!1699049 lt!951549)))

(declare-fun b!2694801 () Bool)

(assert (=> b!2694801 (= e!1699050 (or (not (= lt!951549 Nil!31077)) (= lt!951868 lt!951545)))))

(assert (= (and d!772514 c!434507) b!2694798))

(assert (= (and d!772514 (not c!434507)) b!2694799))

(assert (= (and d!772514 res!1132201) b!2694800))

(assert (= (and b!2694800 res!1132200) b!2694801))

(declare-fun m!3075565 () Bool)

(assert (=> b!2694799 m!3075565))

(declare-fun m!3075567 () Bool)

(assert (=> d!772514 m!3075567))

(assert (=> d!772514 m!3075451))

(declare-fun m!3075569 () Bool)

(assert (=> d!772514 m!3075569))

(declare-fun m!3075571 () Bool)

(assert (=> b!2694800 m!3075571))

(assert (=> b!2694800 m!3075457))

(declare-fun m!3075573 () Bool)

(assert (=> b!2694800 m!3075573))

(assert (=> b!2694528 d!772514))

(declare-fun d!772516 () Bool)

(assert (=> d!772516 (= (list!11727 (_2!17922 lt!951526)) (list!11729 (c!434441 (_2!17922 lt!951526))))))

(declare-fun bs!483838 () Bool)

(assert (= bs!483838 d!772516))

(declare-fun m!3075575 () Bool)

(assert (=> bs!483838 m!3075575))

(assert (=> b!2694528 d!772516))

(declare-fun b!2694803 () Bool)

(declare-fun e!1699051 () List!31175)

(assert (=> b!2694803 (= e!1699051 (Cons!31075 (h!36495 lt!951541) (++!7617 (t!225174 lt!951541) lt!951544)))))

(declare-fun d!772518 () Bool)

(declare-fun e!1699052 () Bool)

(assert (=> d!772518 e!1699052))

(declare-fun res!1132203 () Bool)

(assert (=> d!772518 (=> (not res!1132203) (not e!1699052))))

(declare-fun lt!951869 () List!31175)

(assert (=> d!772518 (= res!1132203 (= (content!4406 lt!951869) ((_ map or) (content!4406 lt!951541) (content!4406 lt!951544))))))

(assert (=> d!772518 (= lt!951869 e!1699051)))

(declare-fun c!434508 () Bool)

(assert (=> d!772518 (= c!434508 ((_ is Nil!31075) lt!951541))))

(assert (=> d!772518 (= (++!7617 lt!951541 lt!951544) lt!951869)))

(declare-fun b!2694804 () Bool)

(declare-fun res!1132202 () Bool)

(assert (=> b!2694804 (=> (not res!1132202) (not e!1699052))))

(assert (=> b!2694804 (= res!1132202 (= (size!24008 lt!951869) (+ (size!24008 lt!951541) (size!24008 lt!951544))))))

(declare-fun b!2694802 () Bool)

(assert (=> b!2694802 (= e!1699051 lt!951544)))

(declare-fun b!2694805 () Bool)

(assert (=> b!2694805 (= e!1699052 (or (not (= lt!951544 Nil!31075)) (= lt!951869 lt!951541)))))

(assert (= (and d!772518 c!434508) b!2694802))

(assert (= (and d!772518 (not c!434508)) b!2694803))

(assert (= (and d!772518 res!1132203) b!2694804))

(assert (= (and b!2694804 res!1132202) b!2694805))

(declare-fun m!3075577 () Bool)

(assert (=> b!2694803 m!3075577))

(declare-fun m!3075579 () Bool)

(assert (=> d!772518 m!3075579))

(declare-fun m!3075581 () Bool)

(assert (=> d!772518 m!3075581))

(assert (=> d!772518 m!3075559))

(declare-fun m!3075583 () Bool)

(assert (=> b!2694804 m!3075583))

(declare-fun m!3075585 () Bool)

(assert (=> b!2694804 m!3075585))

(assert (=> b!2694804 m!3075563))

(assert (=> b!2694528 d!772518))

(declare-fun b!2694807 () Bool)

(declare-fun e!1699053 () List!31175)

(assert (=> b!2694807 (= e!1699053 (Cons!31075 (h!36495 lt!951557) (++!7617 (t!225174 lt!951557) lt!951541)))))

(declare-fun d!772520 () Bool)

(declare-fun e!1699054 () Bool)

(assert (=> d!772520 e!1699054))

(declare-fun res!1132205 () Bool)

(assert (=> d!772520 (=> (not res!1132205) (not e!1699054))))

(declare-fun lt!951870 () List!31175)

(assert (=> d!772520 (= res!1132205 (= (content!4406 lt!951870) ((_ map or) (content!4406 lt!951557) (content!4406 lt!951541))))))

(assert (=> d!772520 (= lt!951870 e!1699053)))

(declare-fun c!434509 () Bool)

(assert (=> d!772520 (= c!434509 ((_ is Nil!31075) lt!951557))))

(assert (=> d!772520 (= (++!7617 lt!951557 lt!951541) lt!951870)))

(declare-fun b!2694808 () Bool)

(declare-fun res!1132204 () Bool)

(assert (=> b!2694808 (=> (not res!1132204) (not e!1699054))))

(assert (=> b!2694808 (= res!1132204 (= (size!24008 lt!951870) (+ (size!24008 lt!951557) (size!24008 lt!951541))))))

(declare-fun b!2694806 () Bool)

(assert (=> b!2694806 (= e!1699053 lt!951541)))

(declare-fun b!2694809 () Bool)

(assert (=> b!2694809 (= e!1699054 (or (not (= lt!951541 Nil!31075)) (= lt!951870 lt!951557)))))

(assert (= (and d!772520 c!434509) b!2694806))

(assert (= (and d!772520 (not c!434509)) b!2694807))

(assert (= (and d!772520 res!1132205) b!2694808))

(assert (= (and b!2694808 res!1132204) b!2694809))

(declare-fun m!3075587 () Bool)

(assert (=> b!2694807 m!3075587))

(declare-fun m!3075589 () Bool)

(assert (=> d!772520 m!3075589))

(assert (=> d!772520 m!3075435))

(assert (=> d!772520 m!3075581))

(declare-fun m!3075591 () Bool)

(assert (=> b!2694808 m!3075591))

(assert (=> b!2694808 m!3075441))

(assert (=> b!2694808 m!3075585))

(assert (=> b!2694528 d!772520))

(declare-fun b!2694810 () Bool)

(declare-fun e!1699058 () tuple2!30644)

(declare-fun lt!951873 () tuple2!30644)

(declare-fun lt!951872 () Option!6137)

(assert (=> b!2694810 (= e!1699058 (tuple2!30645 (prepend!1076 (_1!17922 lt!951873) (_1!17920 (v!32866 lt!951872))) (_2!17922 lt!951873)))))

(assert (=> b!2694810 (= lt!951873 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951872))))))

(declare-fun b!2694811 () Bool)

(assert (=> b!2694811 (= e!1699058 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951556))))

(declare-fun e!1699057 () Bool)

(declare-fun b!2694812 () Bool)

(declare-fun lt!951871 () tuple2!30644)

(assert (=> b!2694812 (= e!1699057 (= (list!11727 (_2!17922 lt!951871)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 lt!951556)))))))

(declare-fun b!2694813 () Bool)

(declare-fun res!1132206 () Bool)

(assert (=> b!2694813 (=> (not res!1132206) (not e!1699057))))

(assert (=> b!2694813 (= res!1132206 (= (list!11728 (_1!17922 lt!951871)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 lt!951556)))))))

(declare-fun b!2694814 () Bool)

(declare-fun e!1699055 () Bool)

(assert (=> b!2694814 (= e!1699055 (not (isEmpty!17729 (_1!17922 lt!951871))))))

(declare-fun d!772522 () Bool)

(assert (=> d!772522 e!1699057))

(declare-fun res!1132207 () Bool)

(assert (=> d!772522 (=> (not res!1132207) (not e!1699057))))

(declare-fun e!1699056 () Bool)

(assert (=> d!772522 (= res!1132207 e!1699056)))

(declare-fun c!434510 () Bool)

(assert (=> d!772522 (= c!434510 (> (size!24006 (_1!17922 lt!951871)) 0))))

(assert (=> d!772522 (= lt!951871 e!1699058)))

(declare-fun c!434511 () Bool)

(assert (=> d!772522 (= c!434511 ((_ is Some!6136) lt!951872))))

(assert (=> d!772522 (= lt!951872 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951556))))

(assert (=> d!772522 (= (lexRec!602 thiss!12257 rules!1381 lt!951556) lt!951871)))

(declare-fun b!2694815 () Bool)

(assert (=> b!2694815 (= e!1699056 e!1699055)))

(declare-fun res!1132208 () Bool)

(assert (=> b!2694815 (= res!1132208 (< (size!24007 (_2!17922 lt!951871)) (size!24007 lt!951556)))))

(assert (=> b!2694815 (=> (not res!1132208) (not e!1699055))))

(declare-fun b!2694816 () Bool)

(assert (=> b!2694816 (= e!1699056 (= (list!11727 (_2!17922 lt!951871)) (list!11727 lt!951556)))))

(assert (= (and d!772522 c!434511) b!2694810))

(assert (= (and d!772522 (not c!434511)) b!2694811))

(assert (= (and d!772522 c!434510) b!2694815))

(assert (= (and d!772522 (not c!434510)) b!2694816))

(assert (= (and b!2694815 res!1132208) b!2694814))

(assert (= (and d!772522 res!1132207) b!2694813))

(assert (= (and b!2694813 res!1132206) b!2694812))

(declare-fun m!3075593 () Bool)

(assert (=> b!2694816 m!3075593))

(assert (=> b!2694816 m!3075361))

(assert (=> b!2694812 m!3075593))

(assert (=> b!2694812 m!3075361))

(assert (=> b!2694812 m!3075361))

(declare-fun m!3075595 () Bool)

(assert (=> b!2694812 m!3075595))

(declare-fun m!3075597 () Bool)

(assert (=> b!2694810 m!3075597))

(declare-fun m!3075599 () Bool)

(assert (=> b!2694810 m!3075599))

(declare-fun m!3075601 () Bool)

(assert (=> b!2694814 m!3075601))

(declare-fun m!3075603 () Bool)

(assert (=> b!2694815 m!3075603))

(declare-fun m!3075605 () Bool)

(assert (=> b!2694815 m!3075605))

(declare-fun m!3075607 () Bool)

(assert (=> d!772522 m!3075607))

(assert (=> d!772522 m!3074979))

(declare-fun m!3075609 () Bool)

(assert (=> b!2694813 m!3075609))

(assert (=> b!2694813 m!3075361))

(assert (=> b!2694813 m!3075361))

(assert (=> b!2694813 m!3075595))

(assert (=> b!2694528 d!772522))

(declare-fun b!2694818 () Bool)

(declare-fun e!1699059 () List!31177)

(assert (=> b!2694818 (= e!1699059 (Cons!31077 (h!36497 lt!951549) (++!7618 (t!225176 lt!951549) lt!951540)))))

(declare-fun d!772524 () Bool)

(declare-fun e!1699060 () Bool)

(assert (=> d!772524 e!1699060))

(declare-fun res!1132210 () Bool)

(assert (=> d!772524 (=> (not res!1132210) (not e!1699060))))

(declare-fun lt!951874 () List!31177)

(assert (=> d!772524 (= res!1132210 (= (content!4407 lt!951874) ((_ map or) (content!4407 lt!951549) (content!4407 lt!951540))))))

(assert (=> d!772524 (= lt!951874 e!1699059)))

(declare-fun c!434512 () Bool)

(assert (=> d!772524 (= c!434512 ((_ is Nil!31077) lt!951549))))

(assert (=> d!772524 (= (++!7618 lt!951549 lt!951540) lt!951874)))

(declare-fun b!2694819 () Bool)

(declare-fun res!1132209 () Bool)

(assert (=> b!2694819 (=> (not res!1132209) (not e!1699060))))

(assert (=> b!2694819 (= res!1132209 (= (size!24009 lt!951874) (+ (size!24009 lt!951549) (size!24009 lt!951540))))))

(declare-fun b!2694817 () Bool)

(assert (=> b!2694817 (= e!1699059 lt!951540)))

(declare-fun b!2694820 () Bool)

(assert (=> b!2694820 (= e!1699060 (or (not (= lt!951540 Nil!31077)) (= lt!951874 lt!951549)))))

(assert (= (and d!772524 c!434512) b!2694817))

(assert (= (and d!772524 (not c!434512)) b!2694818))

(assert (= (and d!772524 res!1132210) b!2694819))

(assert (= (and b!2694819 res!1132209) b!2694820))

(declare-fun m!3075611 () Bool)

(assert (=> b!2694818 m!3075611))

(declare-fun m!3075613 () Bool)

(assert (=> d!772524 m!3075613))

(assert (=> d!772524 m!3075569))

(declare-fun m!3075615 () Bool)

(assert (=> d!772524 m!3075615))

(declare-fun m!3075617 () Bool)

(assert (=> b!2694819 m!3075617))

(assert (=> b!2694819 m!3075573))

(declare-fun m!3075619 () Bool)

(assert (=> b!2694819 m!3075619))

(assert (=> b!2694528 d!772524))

(declare-fun b!2694822 () Bool)

(declare-fun e!1699061 () List!31177)

(assert (=> b!2694822 (= e!1699061 (Cons!31077 (h!36497 (++!7618 lt!951545 lt!951549)) (++!7618 (t!225176 (++!7618 lt!951545 lt!951549)) lt!951540)))))

(declare-fun d!772526 () Bool)

(declare-fun e!1699062 () Bool)

(assert (=> d!772526 e!1699062))

(declare-fun res!1132212 () Bool)

(assert (=> d!772526 (=> (not res!1132212) (not e!1699062))))

(declare-fun lt!951875 () List!31177)

(assert (=> d!772526 (= res!1132212 (= (content!4407 lt!951875) ((_ map or) (content!4407 (++!7618 lt!951545 lt!951549)) (content!4407 lt!951540))))))

(assert (=> d!772526 (= lt!951875 e!1699061)))

(declare-fun c!434513 () Bool)

(assert (=> d!772526 (= c!434513 ((_ is Nil!31077) (++!7618 lt!951545 lt!951549)))))

(assert (=> d!772526 (= (++!7618 (++!7618 lt!951545 lt!951549) lt!951540) lt!951875)))

(declare-fun b!2694823 () Bool)

(declare-fun res!1132211 () Bool)

(assert (=> b!2694823 (=> (not res!1132211) (not e!1699062))))

(assert (=> b!2694823 (= res!1132211 (= (size!24009 lt!951875) (+ (size!24009 (++!7618 lt!951545 lt!951549)) (size!24009 lt!951540))))))

(declare-fun b!2694821 () Bool)

(assert (=> b!2694821 (= e!1699061 lt!951540)))

(declare-fun b!2694824 () Bool)

(assert (=> b!2694824 (= e!1699062 (or (not (= lt!951540 Nil!31077)) (= lt!951875 (++!7618 lt!951545 lt!951549))))))

(assert (= (and d!772526 c!434513) b!2694821))

(assert (= (and d!772526 (not c!434513)) b!2694822))

(assert (= (and d!772526 res!1132212) b!2694823))

(assert (= (and b!2694823 res!1132211) b!2694824))

(declare-fun m!3075621 () Bool)

(assert (=> b!2694822 m!3075621))

(declare-fun m!3075623 () Bool)

(assert (=> d!772526 m!3075623))

(assert (=> d!772526 m!3074991))

(declare-fun m!3075625 () Bool)

(assert (=> d!772526 m!3075625))

(assert (=> d!772526 m!3075615))

(declare-fun m!3075627 () Bool)

(assert (=> b!2694823 m!3075627))

(assert (=> b!2694823 m!3074991))

(declare-fun m!3075629 () Bool)

(assert (=> b!2694823 m!3075629))

(assert (=> b!2694823 m!3075619))

(assert (=> b!2694528 d!772526))

(declare-fun d!772528 () Bool)

(declare-fun c!434514 () Bool)

(assert (=> d!772528 (= c!434514 ((_ is Node!9715) (c!434441 treated!26)))))

(declare-fun e!1699063 () Bool)

(assert (=> d!772528 (= (inv!42126 (c!434441 treated!26)) e!1699063)))

(declare-fun b!2694825 () Bool)

(assert (=> b!2694825 (= e!1699063 (inv!42130 (c!434441 treated!26)))))

(declare-fun b!2694826 () Bool)

(declare-fun e!1699064 () Bool)

(assert (=> b!2694826 (= e!1699063 e!1699064)))

(declare-fun res!1132213 () Bool)

(assert (=> b!2694826 (= res!1132213 (not ((_ is Leaf!14831) (c!434441 treated!26))))))

(assert (=> b!2694826 (=> res!1132213 e!1699064)))

(declare-fun b!2694827 () Bool)

(assert (=> b!2694827 (= e!1699064 (inv!42131 (c!434441 treated!26)))))

(assert (= (and d!772528 c!434514) b!2694825))

(assert (= (and d!772528 (not c!434514)) b!2694826))

(assert (= (and b!2694826 (not res!1132213)) b!2694827))

(declare-fun m!3075631 () Bool)

(assert (=> b!2694825 m!3075631))

(declare-fun m!3075633 () Bool)

(assert (=> b!2694827 m!3075633))

(assert (=> b!2694549 d!772528))

(declare-fun b!2694829 () Bool)

(declare-fun e!1699065 () List!31175)

(assert (=> b!2694829 (= e!1699065 (Cons!31075 (h!36495 lt!951557) (++!7617 (t!225174 lt!951557) lt!951542)))))

(declare-fun d!772530 () Bool)

(declare-fun e!1699066 () Bool)

(assert (=> d!772530 e!1699066))

(declare-fun res!1132215 () Bool)

(assert (=> d!772530 (=> (not res!1132215) (not e!1699066))))

(declare-fun lt!951876 () List!31175)

(assert (=> d!772530 (= res!1132215 (= (content!4406 lt!951876) ((_ map or) (content!4406 lt!951557) (content!4406 lt!951542))))))

(assert (=> d!772530 (= lt!951876 e!1699065)))

(declare-fun c!434515 () Bool)

(assert (=> d!772530 (= c!434515 ((_ is Nil!31075) lt!951557))))

(assert (=> d!772530 (= (++!7617 lt!951557 lt!951542) lt!951876)))

(declare-fun b!2694830 () Bool)

(declare-fun res!1132214 () Bool)

(assert (=> b!2694830 (=> (not res!1132214) (not e!1699066))))

(assert (=> b!2694830 (= res!1132214 (= (size!24008 lt!951876) (+ (size!24008 lt!951557) (size!24008 lt!951542))))))

(declare-fun b!2694828 () Bool)

(assert (=> b!2694828 (= e!1699065 lt!951542)))

(declare-fun b!2694831 () Bool)

(assert (=> b!2694831 (= e!1699066 (or (not (= lt!951542 Nil!31075)) (= lt!951876 lt!951557)))))

(assert (= (and d!772530 c!434515) b!2694828))

(assert (= (and d!772530 (not c!434515)) b!2694829))

(assert (= (and d!772530 res!1132215) b!2694830))

(assert (= (and b!2694830 res!1132214) b!2694831))

(declare-fun m!3075635 () Bool)

(assert (=> b!2694829 m!3075635))

(declare-fun m!3075637 () Bool)

(assert (=> d!772530 m!3075637))

(assert (=> d!772530 m!3075435))

(declare-fun m!3075639 () Bool)

(assert (=> d!772530 m!3075639))

(declare-fun m!3075641 () Bool)

(assert (=> b!2694830 m!3075641))

(assert (=> b!2694830 m!3075441))

(declare-fun m!3075643 () Bool)

(assert (=> b!2694830 m!3075643))

(assert (=> b!2694548 d!772530))

(declare-fun d!772532 () Bool)

(assert (=> d!772532 (= (list!11727 totalInput!354) (list!11729 (c!434441 totalInput!354)))))

(declare-fun bs!483839 () Bool)

(assert (= bs!483839 d!772532))

(declare-fun m!3075645 () Bool)

(assert (=> bs!483839 m!3075645))

(assert (=> b!2694548 d!772532))

(declare-fun d!772534 () Bool)

(assert (=> d!772534 (= (list!11727 input!780) (list!11729 (c!434441 input!780)))))

(declare-fun bs!483840 () Bool)

(assert (= bs!483840 d!772534))

(declare-fun m!3075647 () Bool)

(assert (=> bs!483840 m!3075647))

(assert (=> b!2694548 d!772534))

(declare-fun d!772536 () Bool)

(assert (=> d!772536 (= (list!11727 treated!26) (list!11729 (c!434441 treated!26)))))

(declare-fun bs!483841 () Bool)

(assert (= bs!483841 d!772536))

(declare-fun m!3075649 () Bool)

(assert (=> bs!483841 m!3075649))

(assert (=> b!2694548 d!772536))

(declare-fun d!772538 () Bool)

(assert (=> d!772538 (= (list!11728 acc!348) (list!11730 (c!434442 acc!348)))))

(declare-fun bs!483842 () Bool)

(assert (= bs!483842 d!772538))

(declare-fun m!3075651 () Bool)

(assert (=> bs!483842 m!3075651))

(assert (=> b!2694525 d!772538))

(declare-fun d!772540 () Bool)

(assert (=> d!772540 (= (list!11728 (_1!17922 lt!951529)) (list!11730 (c!434442 (_1!17922 lt!951529))))))

(declare-fun bs!483843 () Bool)

(assert (= bs!483843 d!772540))

(declare-fun m!3075653 () Bool)

(assert (=> bs!483843 m!3075653))

(assert (=> b!2694525 d!772540))

(declare-fun b!2694832 () Bool)

(declare-fun e!1699070 () tuple2!30644)

(declare-fun lt!951879 () tuple2!30644)

(declare-fun lt!951878 () Option!6137)

(assert (=> b!2694832 (= e!1699070 (tuple2!30645 (prepend!1076 (_1!17922 lt!951879) (_1!17920 (v!32866 lt!951878))) (_2!17922 lt!951879)))))

(assert (=> b!2694832 (= lt!951879 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951878))))))

(declare-fun b!2694833 () Bool)

(assert (=> b!2694833 (= e!1699070 (tuple2!30645 (BalanceConc!19047 Empty!9716) treated!26))))

(declare-fun b!2694834 () Bool)

(declare-fun e!1699069 () Bool)

(declare-fun lt!951877 () tuple2!30644)

(assert (=> b!2694834 (= e!1699069 (= (list!11727 (_2!17922 lt!951877)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 treated!26)))))))

(declare-fun b!2694835 () Bool)

(declare-fun res!1132216 () Bool)

(assert (=> b!2694835 (=> (not res!1132216) (not e!1699069))))

(assert (=> b!2694835 (= res!1132216 (= (list!11728 (_1!17922 lt!951877)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 treated!26)))))))

(declare-fun b!2694836 () Bool)

(declare-fun e!1699067 () Bool)

(assert (=> b!2694836 (= e!1699067 (not (isEmpty!17729 (_1!17922 lt!951877))))))

(declare-fun d!772542 () Bool)

(assert (=> d!772542 e!1699069))

(declare-fun res!1132217 () Bool)

(assert (=> d!772542 (=> (not res!1132217) (not e!1699069))))

(declare-fun e!1699068 () Bool)

(assert (=> d!772542 (= res!1132217 e!1699068)))

(declare-fun c!434516 () Bool)

(assert (=> d!772542 (= c!434516 (> (size!24006 (_1!17922 lt!951877)) 0))))

(assert (=> d!772542 (= lt!951877 e!1699070)))

(declare-fun c!434517 () Bool)

(assert (=> d!772542 (= c!434517 ((_ is Some!6136) lt!951878))))

(assert (=> d!772542 (= lt!951878 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 treated!26))))

(assert (=> d!772542 (= (lexRec!602 thiss!12257 rules!1381 treated!26) lt!951877)))

(declare-fun b!2694837 () Bool)

(assert (=> b!2694837 (= e!1699068 e!1699067)))

(declare-fun res!1132218 () Bool)

(assert (=> b!2694837 (= res!1132218 (< (size!24007 (_2!17922 lt!951877)) (size!24007 treated!26)))))

(assert (=> b!2694837 (=> (not res!1132218) (not e!1699067))))

(declare-fun b!2694838 () Bool)

(assert (=> b!2694838 (= e!1699068 (= (list!11727 (_2!17922 lt!951877)) (list!11727 treated!26)))))

(assert (= (and d!772542 c!434517) b!2694832))

(assert (= (and d!772542 (not c!434517)) b!2694833))

(assert (= (and d!772542 c!434516) b!2694837))

(assert (= (and d!772542 (not c!434516)) b!2694838))

(assert (= (and b!2694837 res!1132218) b!2694836))

(assert (= (and d!772542 res!1132217) b!2694835))

(assert (= (and b!2694835 res!1132216) b!2694834))

(declare-fun m!3075655 () Bool)

(assert (=> b!2694838 m!3075655))

(assert (=> b!2694838 m!3074929))

(assert (=> b!2694834 m!3075655))

(assert (=> b!2694834 m!3074929))

(assert (=> b!2694834 m!3074929))

(declare-fun m!3075657 () Bool)

(assert (=> b!2694834 m!3075657))

(declare-fun m!3075659 () Bool)

(assert (=> b!2694832 m!3075659))

(declare-fun m!3075661 () Bool)

(assert (=> b!2694832 m!3075661))

(declare-fun m!3075663 () Bool)

(assert (=> b!2694836 m!3075663))

(declare-fun m!3075665 () Bool)

(assert (=> b!2694837 m!3075665))

(declare-fun m!3075667 () Bool)

(assert (=> b!2694837 m!3075667))

(declare-fun m!3075669 () Bool)

(assert (=> d!772542 m!3075669))

(declare-fun m!3075671 () Bool)

(assert (=> d!772542 m!3075671))

(declare-fun m!3075673 () Bool)

(assert (=> b!2694835 m!3075673))

(assert (=> b!2694835 m!3074929))

(assert (=> b!2694835 m!3074929))

(assert (=> b!2694835 m!3075657))

(assert (=> b!2694525 d!772542))

(declare-fun d!772544 () Bool)

(assert (=> d!772544 (= (inv!42113 (tag!5247 (h!36496 rules!1381))) (= (mod (str.len (value!152789 (tag!5247 (h!36496 rules!1381)))) 2) 0))))

(assert (=> b!2694544 d!772544))

(declare-fun d!772546 () Bool)

(declare-fun res!1132221 () Bool)

(declare-fun e!1699073 () Bool)

(assert (=> d!772546 (=> (not res!1132221) (not e!1699073))))

(declare-fun semiInverseModEq!1962 (Int Int) Bool)

(assert (=> d!772546 (= res!1132221 (semiInverseModEq!1962 (toChars!6560 (transformation!4743 (h!36496 rules!1381))) (toValue!6701 (transformation!4743 (h!36496 rules!1381)))))))

(assert (=> d!772546 (= (inv!42127 (transformation!4743 (h!36496 rules!1381))) e!1699073)))

(declare-fun b!2694841 () Bool)

(declare-fun equivClasses!1863 (Int Int) Bool)

(assert (=> b!2694841 (= e!1699073 (equivClasses!1863 (toChars!6560 (transformation!4743 (h!36496 rules!1381))) (toValue!6701 (transformation!4743 (h!36496 rules!1381)))))))

(assert (= (and d!772546 res!1132221) b!2694841))

(declare-fun m!3075675 () Bool)

(assert (=> d!772546 m!3075675))

(declare-fun m!3075677 () Bool)

(assert (=> b!2694841 m!3075677))

(assert (=> b!2694544 d!772546))

(declare-fun d!772548 () Bool)

(assert (=> d!772548 (= (list!11728 (_1!17922 lt!951534)) (list!11730 (c!434442 (_1!17922 lt!951534))))))

(declare-fun bs!483844 () Bool)

(assert (= bs!483844 d!772548))

(declare-fun m!3075679 () Bool)

(assert (=> bs!483844 m!3075679))

(assert (=> b!2694524 d!772548))

(declare-fun d!772550 () Bool)

(assert (=> d!772550 (= (list!11728 lt!951528) (list!11730 (c!434442 lt!951528)))))

(declare-fun bs!483845 () Bool)

(assert (= bs!483845 d!772550))

(declare-fun m!3075681 () Bool)

(assert (=> bs!483845 m!3075681))

(assert (=> b!2694524 d!772550))

(declare-fun b!2694842 () Bool)

(declare-fun e!1699077 () tuple2!30644)

(declare-fun lt!951882 () tuple2!30644)

(declare-fun lt!951881 () Option!6137)

(assert (=> b!2694842 (= e!1699077 (tuple2!30645 (prepend!1076 (_1!17922 lt!951882) (_1!17920 (v!32866 lt!951881))) (_2!17922 lt!951882)))))

(assert (=> b!2694842 (= lt!951882 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951881))))))

(declare-fun b!2694843 () Bool)

(assert (=> b!2694843 (= e!1699077 (tuple2!30645 (BalanceConc!19047 Empty!9716) lt!951539))))

(declare-fun e!1699076 () Bool)

(declare-fun b!2694844 () Bool)

(declare-fun lt!951880 () tuple2!30644)

(assert (=> b!2694844 (= e!1699076 (= (list!11727 (_2!17922 lt!951880)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 lt!951539)))))))

(declare-fun b!2694845 () Bool)

(declare-fun res!1132222 () Bool)

(assert (=> b!2694845 (=> (not res!1132222) (not e!1699076))))

(assert (=> b!2694845 (= res!1132222 (= (list!11728 (_1!17922 lt!951880)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 lt!951539)))))))

(declare-fun b!2694846 () Bool)

(declare-fun e!1699074 () Bool)

(assert (=> b!2694846 (= e!1699074 (not (isEmpty!17729 (_1!17922 lt!951880))))))

(declare-fun d!772552 () Bool)

(assert (=> d!772552 e!1699076))

(declare-fun res!1132223 () Bool)

(assert (=> d!772552 (=> (not res!1132223) (not e!1699076))))

(declare-fun e!1699075 () Bool)

(assert (=> d!772552 (= res!1132223 e!1699075)))

(declare-fun c!434518 () Bool)

(assert (=> d!772552 (= c!434518 (> (size!24006 (_1!17922 lt!951880)) 0))))

(assert (=> d!772552 (= lt!951880 e!1699077)))

(declare-fun c!434519 () Bool)

(assert (=> d!772552 (= c!434519 ((_ is Some!6136) lt!951881))))

(assert (=> d!772552 (= lt!951881 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 lt!951539))))

(assert (=> d!772552 (= (lexRec!602 thiss!12257 rules!1381 lt!951539) lt!951880)))

(declare-fun b!2694847 () Bool)

(assert (=> b!2694847 (= e!1699075 e!1699074)))

(declare-fun res!1132224 () Bool)

(assert (=> b!2694847 (= res!1132224 (< (size!24007 (_2!17922 lt!951880)) (size!24007 lt!951539)))))

(assert (=> b!2694847 (=> (not res!1132224) (not e!1699074))))

(declare-fun b!2694848 () Bool)

(assert (=> b!2694848 (= e!1699075 (= (list!11727 (_2!17922 lt!951880)) (list!11727 lt!951539)))))

(assert (= (and d!772552 c!434519) b!2694842))

(assert (= (and d!772552 (not c!434519)) b!2694843))

(assert (= (and d!772552 c!434518) b!2694847))

(assert (= (and d!772552 (not c!434518)) b!2694848))

(assert (= (and b!2694847 res!1132224) b!2694846))

(assert (= (and d!772552 res!1132223) b!2694845))

(assert (= (and b!2694845 res!1132222) b!2694844))

(declare-fun m!3075683 () Bool)

(assert (=> b!2694848 m!3075683))

(assert (=> b!2694848 m!3074869))

(assert (=> b!2694844 m!3075683))

(assert (=> b!2694844 m!3074869))

(assert (=> b!2694844 m!3074869))

(declare-fun m!3075685 () Bool)

(assert (=> b!2694844 m!3075685))

(declare-fun m!3075687 () Bool)

(assert (=> b!2694842 m!3075687))

(declare-fun m!3075689 () Bool)

(assert (=> b!2694842 m!3075689))

(declare-fun m!3075691 () Bool)

(assert (=> b!2694846 m!3075691))

(declare-fun m!3075693 () Bool)

(assert (=> b!2694847 m!3075693))

(declare-fun m!3075695 () Bool)

(assert (=> b!2694847 m!3075695))

(declare-fun m!3075697 () Bool)

(assert (=> d!772552 m!3075697))

(declare-fun m!3075699 () Bool)

(assert (=> d!772552 m!3075699))

(declare-fun m!3075701 () Bool)

(assert (=> b!2694845 m!3075701))

(assert (=> b!2694845 m!3074869))

(assert (=> b!2694845 m!3074869))

(assert (=> b!2694845 m!3075685))

(assert (=> b!2694524 d!772552))

(declare-fun d!772554 () Bool)

(assert (=> d!772554 (= (isEmpty!17727 rules!1381) ((_ is Nil!31076) rules!1381))))

(assert (=> b!2694543 d!772554))

(declare-fun d!772556 () Bool)

(assert (=> d!772556 (= (list!11728 (_1!17922 lt!951547)) (list!11730 (c!434442 (_1!17922 lt!951547))))))

(declare-fun bs!483846 () Bool)

(assert (= bs!483846 d!772556))

(declare-fun m!3075703 () Bool)

(assert (=> bs!483846 m!3075703))

(assert (=> b!2694522 d!772556))

(declare-fun b!2694860 () Bool)

(declare-fun lt!951885 () BalanceConc!19046)

(declare-fun e!1699080 () Bool)

(assert (=> b!2694860 (= e!1699080 (= (list!11728 lt!951885) (++!7618 (list!11728 acc!348) (list!11728 (_1!17922 lt!951548)))))))

(declare-fun b!2694858 () Bool)

(declare-fun res!1132233 () Bool)

(assert (=> b!2694858 (=> (not res!1132233) (not e!1699080))))

(declare-fun height!1426 (Conc!9716) Int)

(declare-fun ++!7621 (Conc!9716 Conc!9716) Conc!9716)

(assert (=> b!2694858 (= res!1132233 (<= (height!1426 (++!7621 (c!434442 acc!348) (c!434442 (_1!17922 lt!951548)))) (+ (max!0 (height!1426 (c!434442 acc!348)) (height!1426 (c!434442 (_1!17922 lt!951548)))) 1)))))

(declare-fun d!772558 () Bool)

(assert (=> d!772558 e!1699080))

(declare-fun res!1132235 () Bool)

(assert (=> d!772558 (=> (not res!1132235) (not e!1699080))))

(declare-fun appendAssocInst!666 (Conc!9716 Conc!9716) Bool)

(assert (=> d!772558 (= res!1132235 (appendAssocInst!666 (c!434442 acc!348) (c!434442 (_1!17922 lt!951548))))))

(assert (=> d!772558 (= lt!951885 (BalanceConc!19047 (++!7621 (c!434442 acc!348) (c!434442 (_1!17922 lt!951548)))))))

(assert (=> d!772558 (= (++!7616 acc!348 (_1!17922 lt!951548)) lt!951885)))

(declare-fun b!2694859 () Bool)

(declare-fun res!1132234 () Bool)

(assert (=> b!2694859 (=> (not res!1132234) (not e!1699080))))

(assert (=> b!2694859 (= res!1132234 (>= (height!1426 (++!7621 (c!434442 acc!348) (c!434442 (_1!17922 lt!951548)))) (max!0 (height!1426 (c!434442 acc!348)) (height!1426 (c!434442 (_1!17922 lt!951548))))))))

(declare-fun b!2694857 () Bool)

(declare-fun res!1132236 () Bool)

(assert (=> b!2694857 (=> (not res!1132236) (not e!1699080))))

(assert (=> b!2694857 (= res!1132236 (isBalanced!2943 (++!7621 (c!434442 acc!348) (c!434442 (_1!17922 lt!951548)))))))

(assert (= (and d!772558 res!1132235) b!2694857))

(assert (= (and b!2694857 res!1132236) b!2694858))

(assert (= (and b!2694858 res!1132233) b!2694859))

(assert (= (and b!2694859 res!1132234) b!2694860))

(declare-fun m!3075705 () Bool)

(assert (=> d!772558 m!3075705))

(declare-fun m!3075707 () Bool)

(assert (=> d!772558 m!3075707))

(assert (=> b!2694857 m!3075707))

(assert (=> b!2694857 m!3075707))

(declare-fun m!3075709 () Bool)

(assert (=> b!2694857 m!3075709))

(assert (=> b!2694858 m!3075707))

(declare-fun m!3075711 () Bool)

(assert (=> b!2694858 m!3075711))

(assert (=> b!2694858 m!3075707))

(declare-fun m!3075713 () Bool)

(assert (=> b!2694858 m!3075713))

(declare-fun m!3075715 () Bool)

(assert (=> b!2694858 m!3075715))

(assert (=> b!2694858 m!3075713))

(assert (=> b!2694858 m!3075715))

(declare-fun m!3075717 () Bool)

(assert (=> b!2694858 m!3075717))

(assert (=> b!2694859 m!3075707))

(assert (=> b!2694859 m!3075711))

(assert (=> b!2694859 m!3075707))

(assert (=> b!2694859 m!3075713))

(assert (=> b!2694859 m!3075715))

(assert (=> b!2694859 m!3075713))

(assert (=> b!2694859 m!3075715))

(assert (=> b!2694859 m!3075717))

(declare-fun m!3075719 () Bool)

(assert (=> b!2694860 m!3075719))

(assert (=> b!2694860 m!3074909))

(declare-fun m!3075721 () Bool)

(assert (=> b!2694860 m!3075721))

(assert (=> b!2694860 m!3074909))

(assert (=> b!2694860 m!3075721))

(declare-fun m!3075723 () Bool)

(assert (=> b!2694860 m!3075723))

(assert (=> b!2694522 d!772558))

(declare-fun b!2694861 () Bool)

(declare-fun e!1699084 () tuple2!30644)

(declare-fun lt!951888 () tuple2!30644)

(declare-fun lt!951887 () Option!6137)

(assert (=> b!2694861 (= e!1699084 (tuple2!30645 (prepend!1076 (_1!17922 lt!951888) (_1!17920 (v!32866 lt!951887))) (_2!17922 lt!951888)))))

(assert (=> b!2694861 (= lt!951888 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951887))))))

(declare-fun b!2694862 () Bool)

(assert (=> b!2694862 (= e!1699084 (tuple2!30645 (BalanceConc!19047 Empty!9716) totalInput!354))))

(declare-fun e!1699083 () Bool)

(declare-fun b!2694863 () Bool)

(declare-fun lt!951886 () tuple2!30644)

(assert (=> b!2694863 (= e!1699083 (= (list!11727 (_2!17922 lt!951886)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 totalInput!354)))))))

(declare-fun b!2694864 () Bool)

(declare-fun res!1132237 () Bool)

(assert (=> b!2694864 (=> (not res!1132237) (not e!1699083))))

(assert (=> b!2694864 (= res!1132237 (= (list!11728 (_1!17922 lt!951886)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 totalInput!354)))))))

(declare-fun b!2694865 () Bool)

(declare-fun e!1699081 () Bool)

(assert (=> b!2694865 (= e!1699081 (not (isEmpty!17729 (_1!17922 lt!951886))))))

(declare-fun d!772560 () Bool)

(assert (=> d!772560 e!1699083))

(declare-fun res!1132238 () Bool)

(assert (=> d!772560 (=> (not res!1132238) (not e!1699083))))

(declare-fun e!1699082 () Bool)

(assert (=> d!772560 (= res!1132238 e!1699082)))

(declare-fun c!434523 () Bool)

(assert (=> d!772560 (= c!434523 (> (size!24006 (_1!17922 lt!951886)) 0))))

(assert (=> d!772560 (= lt!951886 e!1699084)))

(declare-fun c!434524 () Bool)

(assert (=> d!772560 (= c!434524 ((_ is Some!6136) lt!951887))))

(assert (=> d!772560 (= lt!951887 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!772560 (= (lexRec!602 thiss!12257 rules!1381 totalInput!354) lt!951886)))

(declare-fun b!2694866 () Bool)

(assert (=> b!2694866 (= e!1699082 e!1699081)))

(declare-fun res!1132239 () Bool)

(assert (=> b!2694866 (= res!1132239 (< (size!24007 (_2!17922 lt!951886)) (size!24007 totalInput!354)))))

(assert (=> b!2694866 (=> (not res!1132239) (not e!1699081))))

(declare-fun b!2694867 () Bool)

(assert (=> b!2694867 (= e!1699082 (= (list!11727 (_2!17922 lt!951886)) (list!11727 totalInput!354)))))

(assert (= (and d!772560 c!434524) b!2694861))

(assert (= (and d!772560 (not c!434524)) b!2694862))

(assert (= (and d!772560 c!434523) b!2694866))

(assert (= (and d!772560 (not c!434523)) b!2694867))

(assert (= (and b!2694866 res!1132239) b!2694865))

(assert (= (and d!772560 res!1132238) b!2694864))

(assert (= (and b!2694864 res!1132237) b!2694863))

(declare-fun m!3075725 () Bool)

(assert (=> b!2694867 m!3075725))

(assert (=> b!2694867 m!3074925))

(assert (=> b!2694863 m!3075725))

(assert (=> b!2694863 m!3074925))

(assert (=> b!2694863 m!3074925))

(declare-fun m!3075727 () Bool)

(assert (=> b!2694863 m!3075727))

(declare-fun m!3075729 () Bool)

(assert (=> b!2694861 m!3075729))

(declare-fun m!3075731 () Bool)

(assert (=> b!2694861 m!3075731))

(declare-fun m!3075733 () Bool)

(assert (=> b!2694865 m!3075733))

(declare-fun m!3075735 () Bool)

(assert (=> b!2694866 m!3075735))

(declare-fun m!3075737 () Bool)

(assert (=> b!2694866 m!3075737))

(declare-fun m!3075739 () Bool)

(assert (=> d!772560 m!3075739))

(declare-fun m!3075741 () Bool)

(assert (=> d!772560 m!3075741))

(declare-fun m!3075743 () Bool)

(assert (=> b!2694864 m!3075743))

(assert (=> b!2694864 m!3074925))

(assert (=> b!2694864 m!3074925))

(assert (=> b!2694864 m!3075727))

(assert (=> b!2694522 d!772560))

(declare-fun d!772562 () Bool)

(assert (=> d!772562 (= (list!11728 lt!951543) (list!11730 (c!434442 lt!951543)))))

(declare-fun bs!483847 () Bool)

(assert (= bs!483847 d!772562))

(declare-fun m!3075745 () Bool)

(assert (=> bs!483847 m!3075745))

(assert (=> b!2694522 d!772562))

(declare-fun b!2694868 () Bool)

(declare-fun e!1699088 () tuple2!30644)

(declare-fun lt!951891 () tuple2!30644)

(declare-fun lt!951890 () Option!6137)

(assert (=> b!2694868 (= e!1699088 (tuple2!30645 (prepend!1076 (_1!17922 lt!951891) (_1!17920 (v!32866 lt!951890))) (_2!17922 lt!951891)))))

(assert (=> b!2694868 (= lt!951891 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951890))))))

(declare-fun b!2694869 () Bool)

(assert (=> b!2694869 (= e!1699088 (tuple2!30645 (BalanceConc!19047 Empty!9716) input!780))))

(declare-fun e!1699087 () Bool)

(declare-fun b!2694870 () Bool)

(declare-fun lt!951889 () tuple2!30644)

(assert (=> b!2694870 (= e!1699087 (= (list!11727 (_2!17922 lt!951889)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 input!780)))))))

(declare-fun b!2694871 () Bool)

(declare-fun res!1132240 () Bool)

(assert (=> b!2694871 (=> (not res!1132240) (not e!1699087))))

(assert (=> b!2694871 (= res!1132240 (= (list!11728 (_1!17922 lt!951889)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 input!780)))))))

(declare-fun b!2694872 () Bool)

(declare-fun e!1699085 () Bool)

(assert (=> b!2694872 (= e!1699085 (not (isEmpty!17729 (_1!17922 lt!951889))))))

(declare-fun d!772564 () Bool)

(assert (=> d!772564 e!1699087))

(declare-fun res!1132241 () Bool)

(assert (=> d!772564 (=> (not res!1132241) (not e!1699087))))

(declare-fun e!1699086 () Bool)

(assert (=> d!772564 (= res!1132241 e!1699086)))

(declare-fun c!434525 () Bool)

(assert (=> d!772564 (= c!434525 (> (size!24006 (_1!17922 lt!951889)) 0))))

(assert (=> d!772564 (= lt!951889 e!1699088)))

(declare-fun c!434526 () Bool)

(assert (=> d!772564 (= c!434526 ((_ is Some!6136) lt!951890))))

(assert (=> d!772564 (= lt!951890 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 input!780))))

(assert (=> d!772564 (= (lexRec!602 thiss!12257 rules!1381 input!780) lt!951889)))

(declare-fun b!2694873 () Bool)

(assert (=> b!2694873 (= e!1699086 e!1699085)))

(declare-fun res!1132242 () Bool)

(assert (=> b!2694873 (= res!1132242 (< (size!24007 (_2!17922 lt!951889)) (size!24007 input!780)))))

(assert (=> b!2694873 (=> (not res!1132242) (not e!1699085))))

(declare-fun b!2694874 () Bool)

(assert (=> b!2694874 (= e!1699086 (= (list!11727 (_2!17922 lt!951889)) (list!11727 input!780)))))

(assert (= (and d!772564 c!434526) b!2694868))

(assert (= (and d!772564 (not c!434526)) b!2694869))

(assert (= (and d!772564 c!434525) b!2694873))

(assert (= (and d!772564 (not c!434525)) b!2694874))

(assert (= (and b!2694873 res!1132242) b!2694872))

(assert (= (and d!772564 res!1132241) b!2694871))

(assert (= (and b!2694871 res!1132240) b!2694870))

(declare-fun m!3075747 () Bool)

(assert (=> b!2694874 m!3075747))

(assert (=> b!2694874 m!3074927))

(assert (=> b!2694870 m!3075747))

(assert (=> b!2694870 m!3074927))

(assert (=> b!2694870 m!3074927))

(assert (=> b!2694870 m!3075257))

(declare-fun m!3075749 () Bool)

(assert (=> b!2694868 m!3075749))

(declare-fun m!3075751 () Bool)

(assert (=> b!2694868 m!3075751))

(declare-fun m!3075753 () Bool)

(assert (=> b!2694872 m!3075753))

(declare-fun m!3075755 () Bool)

(assert (=> b!2694873 m!3075755))

(assert (=> b!2694873 m!3075261))

(declare-fun m!3075757 () Bool)

(assert (=> d!772564 m!3075757))

(assert (=> d!772564 m!3074965))

(declare-fun m!3075759 () Bool)

(assert (=> b!2694871 m!3075759))

(assert (=> b!2694871 m!3074927))

(assert (=> b!2694871 m!3074927))

(assert (=> b!2694871 m!3075257))

(assert (=> b!2694522 d!772564))

(declare-fun d!772566 () Bool)

(assert (=> d!772566 (= (array_inv!4000 (_keys!3818 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) (bvsge (size!24002 (_keys!3818 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2694541 d!772566))

(declare-fun d!772568 () Bool)

(assert (=> d!772568 (= (array_inv!4002 (_values!3799 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) (bvsge (size!24003 (_values!3799 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2694541 d!772568))

(declare-fun d!772570 () Bool)

(assert (=> d!772570 (= (list!11728 (++!7616 lt!951528 (_1!17922 lt!951554))) (list!11730 (c!434442 (++!7616 lt!951528 (_1!17922 lt!951554)))))))

(declare-fun bs!483848 () Bool)

(assert (= bs!483848 d!772570))

(declare-fun m!3075761 () Bool)

(assert (=> bs!483848 m!3075761))

(assert (=> b!2694521 d!772570))

(declare-fun b!2694878 () Bool)

(declare-fun e!1699089 () Bool)

(declare-fun lt!951892 () BalanceConc!19046)

(assert (=> b!2694878 (= e!1699089 (= (list!11728 lt!951892) (++!7618 (list!11728 lt!951528) (list!11728 (_1!17922 lt!951554)))))))

(declare-fun b!2694876 () Bool)

(declare-fun res!1132243 () Bool)

(assert (=> b!2694876 (=> (not res!1132243) (not e!1699089))))

(assert (=> b!2694876 (= res!1132243 (<= (height!1426 (++!7621 (c!434442 lt!951528) (c!434442 (_1!17922 lt!951554)))) (+ (max!0 (height!1426 (c!434442 lt!951528)) (height!1426 (c!434442 (_1!17922 lt!951554)))) 1)))))

(declare-fun d!772572 () Bool)

(assert (=> d!772572 e!1699089))

(declare-fun res!1132245 () Bool)

(assert (=> d!772572 (=> (not res!1132245) (not e!1699089))))

(assert (=> d!772572 (= res!1132245 (appendAssocInst!666 (c!434442 lt!951528) (c!434442 (_1!17922 lt!951554))))))

(assert (=> d!772572 (= lt!951892 (BalanceConc!19047 (++!7621 (c!434442 lt!951528) (c!434442 (_1!17922 lt!951554)))))))

(assert (=> d!772572 (= (++!7616 lt!951528 (_1!17922 lt!951554)) lt!951892)))

(declare-fun b!2694877 () Bool)

(declare-fun res!1132244 () Bool)

(assert (=> b!2694877 (=> (not res!1132244) (not e!1699089))))

(assert (=> b!2694877 (= res!1132244 (>= (height!1426 (++!7621 (c!434442 lt!951528) (c!434442 (_1!17922 lt!951554)))) (max!0 (height!1426 (c!434442 lt!951528)) (height!1426 (c!434442 (_1!17922 lt!951554))))))))

(declare-fun b!2694875 () Bool)

(declare-fun res!1132246 () Bool)

(assert (=> b!2694875 (=> (not res!1132246) (not e!1699089))))

(assert (=> b!2694875 (= res!1132246 (isBalanced!2943 (++!7621 (c!434442 lt!951528) (c!434442 (_1!17922 lt!951554)))))))

(assert (= (and d!772572 res!1132245) b!2694875))

(assert (= (and b!2694875 res!1132246) b!2694876))

(assert (= (and b!2694876 res!1132243) b!2694877))

(assert (= (and b!2694877 res!1132244) b!2694878))

(declare-fun m!3075763 () Bool)

(assert (=> d!772572 m!3075763))

(declare-fun m!3075765 () Bool)

(assert (=> d!772572 m!3075765))

(assert (=> b!2694875 m!3075765))

(assert (=> b!2694875 m!3075765))

(declare-fun m!3075767 () Bool)

(assert (=> b!2694875 m!3075767))

(assert (=> b!2694876 m!3075765))

(declare-fun m!3075769 () Bool)

(assert (=> b!2694876 m!3075769))

(assert (=> b!2694876 m!3075765))

(declare-fun m!3075771 () Bool)

(assert (=> b!2694876 m!3075771))

(declare-fun m!3075773 () Bool)

(assert (=> b!2694876 m!3075773))

(assert (=> b!2694876 m!3075771))

(assert (=> b!2694876 m!3075773))

(declare-fun m!3075775 () Bool)

(assert (=> b!2694876 m!3075775))

(assert (=> b!2694877 m!3075765))

(assert (=> b!2694877 m!3075769))

(assert (=> b!2694877 m!3075765))

(assert (=> b!2694877 m!3075771))

(assert (=> b!2694877 m!3075773))

(assert (=> b!2694877 m!3075771))

(assert (=> b!2694877 m!3075773))

(assert (=> b!2694877 m!3075775))

(declare-fun m!3075777 () Bool)

(assert (=> b!2694878 m!3075777))

(assert (=> b!2694878 m!3074903))

(declare-fun m!3075779 () Bool)

(assert (=> b!2694878 m!3075779))

(assert (=> b!2694878 m!3074903))

(assert (=> b!2694878 m!3075779))

(declare-fun m!3075781 () Bool)

(assert (=> b!2694878 m!3075781))

(assert (=> b!2694521 d!772572))

(declare-fun b!2694879 () Bool)

(declare-fun e!1699093 () tuple2!30644)

(declare-fun lt!951895 () tuple2!30644)

(declare-fun lt!951894 () Option!6137)

(assert (=> b!2694879 (= e!1699093 (tuple2!30645 (prepend!1076 (_1!17922 lt!951895) (_1!17920 (v!32866 lt!951894))) (_2!17922 lt!951895)))))

(assert (=> b!2694879 (= lt!951895 (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 lt!951894))))))

(declare-fun b!2694880 () Bool)

(assert (=> b!2694880 (= e!1699093 (tuple2!30645 (BalanceConc!19047 Empty!9716) (_2!17920 (v!32866 (_1!17921 lt!951537)))))))

(declare-fun e!1699092 () Bool)

(declare-fun lt!951893 () tuple2!30644)

(declare-fun b!2694881 () Bool)

(assert (=> b!2694881 (= e!1699092 (= (list!11727 (_2!17922 lt!951893)) (_2!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))))

(declare-fun b!2694882 () Bool)

(declare-fun res!1132247 () Bool)

(assert (=> b!2694882 (=> (not res!1132247) (not e!1699092))))

(assert (=> b!2694882 (= res!1132247 (= (list!11728 (_1!17922 lt!951893)) (_1!17923 (lexList!1192 thiss!12257 rules!1381 (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))))

(declare-fun b!2694883 () Bool)

(declare-fun e!1699090 () Bool)

(assert (=> b!2694883 (= e!1699090 (not (isEmpty!17729 (_1!17922 lt!951893))))))

(declare-fun d!772574 () Bool)

(assert (=> d!772574 e!1699092))

(declare-fun res!1132248 () Bool)

(assert (=> d!772574 (=> (not res!1132248) (not e!1699092))))

(declare-fun e!1699091 () Bool)

(assert (=> d!772574 (= res!1132248 e!1699091)))

(declare-fun c!434527 () Bool)

(assert (=> d!772574 (= c!434527 (> (size!24006 (_1!17922 lt!951893)) 0))))

(assert (=> d!772574 (= lt!951893 e!1699093)))

(declare-fun c!434528 () Bool)

(assert (=> d!772574 (= c!434528 ((_ is Some!6136) lt!951894))))

(assert (=> d!772574 (= lt!951894 (maxPrefixZipperSequence!1002 thiss!12257 rules!1381 (_2!17920 (v!32866 (_1!17921 lt!951537)))))))

(assert (=> d!772574 (= (lexRec!602 thiss!12257 rules!1381 (_2!17920 (v!32866 (_1!17921 lt!951537)))) lt!951893)))

(declare-fun b!2694884 () Bool)

(assert (=> b!2694884 (= e!1699091 e!1699090)))

(declare-fun res!1132249 () Bool)

(assert (=> b!2694884 (= res!1132249 (< (size!24007 (_2!17922 lt!951893)) (size!24007 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))

(assert (=> b!2694884 (=> (not res!1132249) (not e!1699090))))

(declare-fun b!2694885 () Bool)

(assert (=> b!2694885 (= e!1699091 (= (list!11727 (_2!17922 lt!951893)) (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))

(assert (= (and d!772574 c!434528) b!2694879))

(assert (= (and d!772574 (not c!434528)) b!2694880))

(assert (= (and d!772574 c!434527) b!2694884))

(assert (= (and d!772574 (not c!434527)) b!2694885))

(assert (= (and b!2694884 res!1132249) b!2694883))

(assert (= (and d!772574 res!1132248) b!2694882))

(assert (= (and b!2694882 res!1132247) b!2694881))

(declare-fun m!3075783 () Bool)

(assert (=> b!2694885 m!3075783))

(assert (=> b!2694885 m!3074871))

(assert (=> b!2694881 m!3075783))

(assert (=> b!2694881 m!3074871))

(assert (=> b!2694881 m!3074871))

(declare-fun m!3075785 () Bool)

(assert (=> b!2694881 m!3075785))

(declare-fun m!3075787 () Bool)

(assert (=> b!2694879 m!3075787))

(declare-fun m!3075789 () Bool)

(assert (=> b!2694879 m!3075789))

(declare-fun m!3075791 () Bool)

(assert (=> b!2694883 m!3075791))

(declare-fun m!3075793 () Bool)

(assert (=> b!2694884 m!3075793))

(declare-fun m!3075795 () Bool)

(assert (=> b!2694884 m!3075795))

(declare-fun m!3075797 () Bool)

(assert (=> d!772574 m!3075797))

(declare-fun m!3075799 () Bool)

(assert (=> d!772574 m!3075799))

(declare-fun m!3075801 () Bool)

(assert (=> b!2694882 m!3075801))

(assert (=> b!2694882 m!3074871))

(assert (=> b!2694882 m!3074871))

(assert (=> b!2694882 m!3075785))

(assert (=> b!2694521 d!772574))

(declare-fun d!772576 () Bool)

(assert (=> d!772576 (= (array_inv!4000 (_keys!3819 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) (bvsge (size!24002 (_keys!3819 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2694539 d!772576))

(declare-fun d!772578 () Bool)

(assert (=> d!772578 (= (array_inv!4001 (_values!3800 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) (bvsge (size!24004 (_values!3800 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2694539 d!772578))

(declare-fun b!2694887 () Bool)

(declare-fun e!1699094 () List!31175)

(assert (=> b!2694887 (= e!1699094 (Cons!31075 (h!36495 (list!11727 lt!951539)) (++!7617 (t!225174 (list!11727 lt!951539)) (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537)))))))))

(declare-fun d!772580 () Bool)

(declare-fun e!1699095 () Bool)

(assert (=> d!772580 e!1699095))

(declare-fun res!1132251 () Bool)

(assert (=> d!772580 (=> (not res!1132251) (not e!1699095))))

(declare-fun lt!951896 () List!31175)

(assert (=> d!772580 (= res!1132251 (= (content!4406 lt!951896) ((_ map or) (content!4406 (list!11727 lt!951539)) (content!4406 (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))))

(assert (=> d!772580 (= lt!951896 e!1699094)))

(declare-fun c!434529 () Bool)

(assert (=> d!772580 (= c!434529 ((_ is Nil!31075) (list!11727 lt!951539)))))

(assert (=> d!772580 (= (++!7617 (list!11727 lt!951539) (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))) lt!951896)))

(declare-fun b!2694888 () Bool)

(declare-fun res!1132250 () Bool)

(assert (=> b!2694888 (=> (not res!1132250) (not e!1699095))))

(assert (=> b!2694888 (= res!1132250 (= (size!24008 lt!951896) (+ (size!24008 (list!11727 lt!951539)) (size!24008 (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))))

(declare-fun b!2694886 () Bool)

(assert (=> b!2694886 (= e!1699094 (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537)))))))

(declare-fun b!2694889 () Bool)

(assert (=> b!2694889 (= e!1699095 (or (not (= (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537)))) Nil!31075)) (= lt!951896 (list!11727 lt!951539))))))

(assert (= (and d!772580 c!434529) b!2694886))

(assert (= (and d!772580 (not c!434529)) b!2694887))

(assert (= (and d!772580 res!1132251) b!2694888))

(assert (= (and b!2694888 res!1132250) b!2694889))

(assert (=> b!2694887 m!3074871))

(declare-fun m!3075803 () Bool)

(assert (=> b!2694887 m!3075803))

(declare-fun m!3075805 () Bool)

(assert (=> d!772580 m!3075805))

(assert (=> d!772580 m!3074869))

(declare-fun m!3075807 () Bool)

(assert (=> d!772580 m!3075807))

(assert (=> d!772580 m!3074871))

(declare-fun m!3075809 () Bool)

(assert (=> d!772580 m!3075809))

(declare-fun m!3075811 () Bool)

(assert (=> b!2694888 m!3075811))

(assert (=> b!2694888 m!3074869))

(declare-fun m!3075813 () Bool)

(assert (=> b!2694888 m!3075813))

(assert (=> b!2694888 m!3074871))

(declare-fun m!3075815 () Bool)

(assert (=> b!2694888 m!3075815))

(assert (=> b!2694558 d!772580))

(declare-fun d!772582 () Bool)

(assert (=> d!772582 (= (list!11727 lt!951539) (list!11729 (c!434441 lt!951539)))))

(declare-fun bs!483849 () Bool)

(assert (= bs!483849 d!772582))

(declare-fun m!3075817 () Bool)

(assert (=> bs!483849 m!3075817))

(assert (=> b!2694558 d!772582))

(declare-fun d!772584 () Bool)

(assert (=> d!772584 (= (list!11727 (_2!17920 (v!32866 (_1!17921 lt!951537)))) (list!11729 (c!434441 (_2!17920 (v!32866 (_1!17921 lt!951537))))))))

(declare-fun bs!483850 () Bool)

(assert (= bs!483850 d!772584))

(declare-fun m!3075819 () Bool)

(assert (=> bs!483850 m!3075819))

(assert (=> b!2694558 d!772584))

(declare-fun d!772586 () Bool)

(assert (=> d!772586 (= (list!11727 (_2!17922 lt!951548)) (list!11729 (c!434441 (_2!17922 lt!951548))))))

(declare-fun bs!483851 () Bool)

(assert (= bs!483851 d!772586))

(declare-fun m!3075821 () Bool)

(assert (=> bs!483851 m!3075821))

(assert (=> b!2694519 d!772586))

(declare-fun d!772588 () Bool)

(assert (=> d!772588 (= (list!11727 (_2!17922 lt!951547)) (list!11729 (c!434441 (_2!17922 lt!951547))))))

(declare-fun bs!483852 () Bool)

(assert (= bs!483852 d!772588))

(declare-fun m!3075823 () Bool)

(assert (=> bs!483852 m!3075823))

(assert (=> b!2694519 d!772588))

(declare-fun e!1699101 () Bool)

(declare-fun tp!852225 () Bool)

(declare-fun tp!852227 () Bool)

(declare-fun b!2694898 () Bool)

(assert (=> b!2694898 (= e!1699101 (and (inv!42121 (left!23957 (c!434442 acc!348))) tp!852227 (inv!42121 (right!24287 (c!434442 acc!348))) tp!852225))))

(declare-fun b!2694900 () Bool)

(declare-fun e!1699100 () Bool)

(declare-fun tp!852226 () Bool)

(assert (=> b!2694900 (= e!1699100 tp!852226)))

(declare-fun b!2694899 () Bool)

(declare-fun inv!42132 (IArray!19437) Bool)

(assert (=> b!2694899 (= e!1699101 (and (inv!42132 (xs!12756 (c!434442 acc!348))) e!1699100))))

(assert (=> b!2694518 (= tp!852199 (and (inv!42121 (c!434442 acc!348)) e!1699101))))

(assert (= (and b!2694518 ((_ is Node!9716) (c!434442 acc!348))) b!2694898))

(assert (= b!2694899 b!2694900))

(assert (= (and b!2694518 ((_ is Leaf!14832) (c!434442 acc!348))) b!2694899))

(declare-fun m!3075825 () Bool)

(assert (=> b!2694898 m!3075825))

(declare-fun m!3075827 () Bool)

(assert (=> b!2694898 m!3075827))

(declare-fun m!3075829 () Bool)

(assert (=> b!2694899 m!3075829))

(assert (=> b!2694518 m!3074921))

(declare-fun e!1699117 () Bool)

(declare-fun e!1699115 () Bool)

(declare-fun tp!852251 () Bool)

(declare-fun setRes!21227 () Bool)

(declare-fun tp_is_empty!13853 () Bool)

(declare-fun mapValue!16101 () List!31173)

(declare-fun b!2694915 () Bool)

(declare-fun inv!42133 (Context!4338) Bool)

(assert (=> b!2694915 (= e!1699115 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 mapValue!16101)))) e!1699117 tp_is_empty!13853 setRes!21227 tp!852251))))

(declare-fun condSetEmpty!21228 () Bool)

(assert (=> b!2694915 (= condSetEmpty!21228 (= (_2!17919 (h!36493 mapValue!16101)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun mapNonEmpty!16101 () Bool)

(declare-fun mapRes!16101 () Bool)

(declare-fun tp!852247 () Bool)

(assert (=> mapNonEmpty!16101 (= mapRes!16101 (and tp!852247 e!1699115))))

(declare-fun mapRest!16101 () (Array (_ BitVec 32) List!31173))

(declare-fun mapKey!16101 () (_ BitVec 32))

(assert (=> mapNonEmpty!16101 (= mapRest!16098 (store mapRest!16101 mapKey!16101 mapValue!16101))))

(declare-fun e!1699116 () Bool)

(declare-fun b!2694916 () Bool)

(declare-fun mapDefault!16101 () List!31173)

(declare-fun setRes!21228 () Bool)

(declare-fun e!1699119 () Bool)

(declare-fun tp!852254 () Bool)

(assert (=> b!2694916 (= e!1699116 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 mapDefault!16101)))) e!1699119 tp_is_empty!13853 setRes!21228 tp!852254))))

(declare-fun condSetEmpty!21227 () Bool)

(assert (=> b!2694916 (= condSetEmpty!21227 (= (_2!17919 (h!36493 mapDefault!16101)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setIsEmpty!21227 () Bool)

(assert (=> setIsEmpty!21227 setRes!21228))

(declare-fun setIsEmpty!21228 () Bool)

(assert (=> setIsEmpty!21228 setRes!21227))

(declare-fun condMapEmpty!16101 () Bool)

(assert (=> mapNonEmpty!16098 (= condMapEmpty!16101 (= mapRest!16098 ((as const (Array (_ BitVec 32) List!31173)) mapDefault!16101)))))

(assert (=> mapNonEmpty!16098 (= tp!852198 (and e!1699116 mapRes!16101))))

(declare-fun e!1699114 () Bool)

(declare-fun setElem!21228 () Context!4338)

(declare-fun setNonEmpty!21227 () Bool)

(declare-fun tp!852250 () Bool)

(assert (=> setNonEmpty!21227 (= setRes!21227 (and tp!852250 (inv!42133 setElem!21228) e!1699114))))

(declare-fun setRest!21228 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21227 (= (_2!17919 (h!36493 mapValue!16101)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21228 true) setRest!21228))))

(declare-fun b!2694917 () Bool)

(declare-fun e!1699118 () Bool)

(declare-fun tp!852249 () Bool)

(assert (=> b!2694917 (= e!1699118 tp!852249)))

(declare-fun b!2694918 () Bool)

(declare-fun tp!852246 () Bool)

(assert (=> b!2694918 (= e!1699119 tp!852246)))

(declare-fun setNonEmpty!21228 () Bool)

(declare-fun setElem!21227 () Context!4338)

(declare-fun tp!852248 () Bool)

(assert (=> setNonEmpty!21228 (= setRes!21228 (and tp!852248 (inv!42133 setElem!21227) e!1699118))))

(declare-fun setRest!21227 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21228 (= (_2!17919 (h!36493 mapDefault!16101)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21227 true) setRest!21227))))

(declare-fun mapIsEmpty!16101 () Bool)

(assert (=> mapIsEmpty!16101 mapRes!16101))

(declare-fun b!2694919 () Bool)

(declare-fun tp!852253 () Bool)

(assert (=> b!2694919 (= e!1699117 tp!852253)))

(declare-fun b!2694920 () Bool)

(declare-fun tp!852252 () Bool)

(assert (=> b!2694920 (= e!1699114 tp!852252)))

(assert (= (and mapNonEmpty!16098 condMapEmpty!16101) mapIsEmpty!16101))

(assert (= (and mapNonEmpty!16098 (not condMapEmpty!16101)) mapNonEmpty!16101))

(assert (= b!2694915 b!2694919))

(assert (= (and b!2694915 condSetEmpty!21228) setIsEmpty!21228))

(assert (= (and b!2694915 (not condSetEmpty!21228)) setNonEmpty!21227))

(assert (= setNonEmpty!21227 b!2694920))

(assert (= (and mapNonEmpty!16101 ((_ is Cons!31073) mapValue!16101)) b!2694915))

(assert (= b!2694916 b!2694918))

(assert (= (and b!2694916 condSetEmpty!21227) setIsEmpty!21227))

(assert (= (and b!2694916 (not condSetEmpty!21227)) setNonEmpty!21228))

(assert (= setNonEmpty!21228 b!2694917))

(assert (= (and mapNonEmpty!16098 ((_ is Cons!31073) mapDefault!16101)) b!2694916))

(declare-fun m!3075831 () Bool)

(assert (=> b!2694916 m!3075831))

(declare-fun m!3075833 () Bool)

(assert (=> setNonEmpty!21227 m!3075833))

(declare-fun m!3075835 () Bool)

(assert (=> b!2694915 m!3075835))

(declare-fun m!3075837 () Bool)

(assert (=> setNonEmpty!21228 m!3075837))

(declare-fun m!3075839 () Bool)

(assert (=> mapNonEmpty!16101 m!3075839))

(declare-fun e!1699126 () Bool)

(declare-fun e!1699128 () Bool)

(declare-fun setRes!21231 () Bool)

(declare-fun b!2694929 () Bool)

(declare-fun tp!852263 () Bool)

(assert (=> b!2694929 (= e!1699126 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 mapValue!16098)))) e!1699128 tp_is_empty!13853 setRes!21231 tp!852263))))

(declare-fun condSetEmpty!21231 () Bool)

(assert (=> b!2694929 (= condSetEmpty!21231 (= (_2!17919 (h!36493 mapValue!16098)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setNonEmpty!21231 () Bool)

(declare-fun e!1699127 () Bool)

(declare-fun setElem!21231 () Context!4338)

(declare-fun tp!852266 () Bool)

(assert (=> setNonEmpty!21231 (= setRes!21231 (and tp!852266 (inv!42133 setElem!21231) e!1699127))))

(declare-fun setRest!21231 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21231 (= (_2!17919 (h!36493 mapValue!16098)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21231 true) setRest!21231))))

(assert (=> mapNonEmpty!16098 (= tp!852205 e!1699126)))

(declare-fun setIsEmpty!21231 () Bool)

(assert (=> setIsEmpty!21231 setRes!21231))

(declare-fun b!2694930 () Bool)

(declare-fun tp!852265 () Bool)

(assert (=> b!2694930 (= e!1699128 tp!852265)))

(declare-fun b!2694931 () Bool)

(declare-fun tp!852264 () Bool)

(assert (=> b!2694931 (= e!1699127 tp!852264)))

(assert (= b!2694929 b!2694930))

(assert (= (and b!2694929 condSetEmpty!21231) setIsEmpty!21231))

(assert (= (and b!2694929 (not condSetEmpty!21231)) setNonEmpty!21231))

(assert (= setNonEmpty!21231 b!2694931))

(assert (= (and mapNonEmpty!16098 ((_ is Cons!31073) mapValue!16098)) b!2694929))

(declare-fun m!3075841 () Bool)

(assert (=> b!2694929 m!3075841))

(declare-fun m!3075843 () Bool)

(assert (=> setNonEmpty!21231 m!3075843))

(declare-fun setElem!21236 () Context!4338)

(declare-fun setRes!21237 () Bool)

(declare-fun setNonEmpty!21236 () Bool)

(declare-fun tp!852290 () Bool)

(declare-fun e!1699144 () Bool)

(assert (=> setNonEmpty!21236 (= setRes!21237 (and tp!852290 (inv!42133 setElem!21236) e!1699144))))

(declare-fun mapValue!16104 () List!31172)

(declare-fun setRest!21237 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21236 (= (_2!17917 (h!36492 mapValue!16104)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21236 true) setRest!21237))))

(declare-fun setIsEmpty!21236 () Bool)

(declare-fun setRes!21236 () Bool)

(assert (=> setIsEmpty!21236 setRes!21236))

(declare-fun b!2694946 () Bool)

(declare-fun e!1699141 () Bool)

(declare-fun tp!852293 () Bool)

(assert (=> b!2694946 (= e!1699141 tp!852293)))

(declare-fun setIsEmpty!21237 () Bool)

(assert (=> setIsEmpty!21237 setRes!21237))

(declare-fun e!1699142 () Bool)

(declare-fun tp!852294 () Bool)

(declare-fun e!1699143 () Bool)

(declare-fun b!2694947 () Bool)

(declare-fun mapDefault!16104 () List!31172)

(declare-fun tp!852298 () Bool)

(assert (=> b!2694947 (= e!1699143 (and tp!852298 (inv!42133 (_2!17916 (_1!17917 (h!36492 mapDefault!16104)))) e!1699142 tp_is_empty!13853 setRes!21236 tp!852294))))

(declare-fun condSetEmpty!21236 () Bool)

(assert (=> b!2694947 (= condSetEmpty!21236 (= (_2!17917 (h!36492 mapDefault!16104)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun b!2694948 () Bool)

(declare-fun e!1699145 () Bool)

(declare-fun tp!852295 () Bool)

(assert (=> b!2694948 (= e!1699145 tp!852295)))

(declare-fun tp!852291 () Bool)

(declare-fun e!1699146 () Bool)

(declare-fun b!2694949 () Bool)

(declare-fun tp!852297 () Bool)

(assert (=> b!2694949 (= e!1699146 (and tp!852291 (inv!42133 (_2!17916 (_1!17917 (h!36492 mapValue!16104)))) e!1699145 tp_is_empty!13853 setRes!21237 tp!852297))))

(declare-fun condSetEmpty!21237 () Bool)

(assert (=> b!2694949 (= condSetEmpty!21237 (= (_2!17917 (h!36492 mapValue!16104)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun mapNonEmpty!16104 () Bool)

(declare-fun mapRes!16104 () Bool)

(declare-fun tp!852289 () Bool)

(assert (=> mapNonEmpty!16104 (= mapRes!16104 (and tp!852289 e!1699146))))

(declare-fun mapKey!16104 () (_ BitVec 32))

(declare-fun mapRest!16104 () (Array (_ BitVec 32) List!31172))

(assert (=> mapNonEmpty!16104 (= mapRest!16097 (store mapRest!16104 mapKey!16104 mapValue!16104))))

(declare-fun b!2694950 () Bool)

(declare-fun tp!852292 () Bool)

(assert (=> b!2694950 (= e!1699144 tp!852292)))

(declare-fun mapIsEmpty!16104 () Bool)

(assert (=> mapIsEmpty!16104 mapRes!16104))

(declare-fun condMapEmpty!16104 () Bool)

(assert (=> mapNonEmpty!16097 (= condMapEmpty!16104 (= mapRest!16097 ((as const (Array (_ BitVec 32) List!31172)) mapDefault!16104)))))

(assert (=> mapNonEmpty!16097 (= tp!852213 (and e!1699143 mapRes!16104))))

(declare-fun setNonEmpty!21237 () Bool)

(declare-fun tp!852296 () Bool)

(declare-fun setElem!21237 () Context!4338)

(assert (=> setNonEmpty!21237 (= setRes!21236 (and tp!852296 (inv!42133 setElem!21237) e!1699141))))

(declare-fun setRest!21236 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21237 (= (_2!17917 (h!36492 mapDefault!16104)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21237 true) setRest!21236))))

(declare-fun b!2694951 () Bool)

(declare-fun tp!852299 () Bool)

(assert (=> b!2694951 (= e!1699142 tp!852299)))

(assert (= (and mapNonEmpty!16097 condMapEmpty!16104) mapIsEmpty!16104))

(assert (= (and mapNonEmpty!16097 (not condMapEmpty!16104)) mapNonEmpty!16104))

(assert (= b!2694949 b!2694948))

(assert (= (and b!2694949 condSetEmpty!21237) setIsEmpty!21237))

(assert (= (and b!2694949 (not condSetEmpty!21237)) setNonEmpty!21236))

(assert (= setNonEmpty!21236 b!2694950))

(assert (= (and mapNonEmpty!16104 ((_ is Cons!31072) mapValue!16104)) b!2694949))

(assert (= b!2694947 b!2694951))

(assert (= (and b!2694947 condSetEmpty!21236) setIsEmpty!21236))

(assert (= (and b!2694947 (not condSetEmpty!21236)) setNonEmpty!21237))

(assert (= setNonEmpty!21237 b!2694946))

(assert (= (and mapNonEmpty!16097 ((_ is Cons!31072) mapDefault!16104)) b!2694947))

(declare-fun m!3075845 () Bool)

(assert (=> b!2694947 m!3075845))

(declare-fun m!3075847 () Bool)

(assert (=> b!2694949 m!3075847))

(declare-fun m!3075849 () Bool)

(assert (=> setNonEmpty!21236 m!3075849))

(declare-fun m!3075851 () Bool)

(assert (=> setNonEmpty!21237 m!3075851))

(declare-fun m!3075853 () Bool)

(assert (=> mapNonEmpty!16104 m!3075853))

(declare-fun tp!852314 () Bool)

(declare-fun e!1699155 () Bool)

(declare-fun setRes!21240 () Bool)

(declare-fun b!2694960 () Bool)

(declare-fun e!1699154 () Bool)

(declare-fun tp!852313 () Bool)

(assert (=> b!2694960 (= e!1699155 (and tp!852314 (inv!42133 (_2!17916 (_1!17917 (h!36492 mapValue!16097)))) e!1699154 tp_is_empty!13853 setRes!21240 tp!852313))))

(declare-fun condSetEmpty!21240 () Bool)

(assert (=> b!2694960 (= condSetEmpty!21240 (= (_2!17917 (h!36492 mapValue!16097)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun e!1699153 () Bool)

(declare-fun setNonEmpty!21240 () Bool)

(declare-fun setElem!21240 () Context!4338)

(declare-fun tp!852311 () Bool)

(assert (=> setNonEmpty!21240 (= setRes!21240 (and tp!852311 (inv!42133 setElem!21240) e!1699153))))

(declare-fun setRest!21240 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21240 (= (_2!17917 (h!36492 mapValue!16097)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21240 true) setRest!21240))))

(declare-fun b!2694961 () Bool)

(declare-fun tp!852312 () Bool)

(assert (=> b!2694961 (= e!1699153 tp!852312)))

(declare-fun setIsEmpty!21240 () Bool)

(assert (=> setIsEmpty!21240 setRes!21240))

(declare-fun b!2694962 () Bool)

(declare-fun tp!852310 () Bool)

(assert (=> b!2694962 (= e!1699154 tp!852310)))

(assert (=> mapNonEmpty!16097 (= tp!852202 e!1699155)))

(assert (= b!2694960 b!2694962))

(assert (= (and b!2694960 condSetEmpty!21240) setIsEmpty!21240))

(assert (= (and b!2694960 (not condSetEmpty!21240)) setNonEmpty!21240))

(assert (= setNonEmpty!21240 b!2694961))

(assert (= (and mapNonEmpty!16097 ((_ is Cons!31072) mapValue!16097)) b!2694960))

(declare-fun m!3075855 () Bool)

(assert (=> b!2694960 m!3075855))

(declare-fun m!3075857 () Bool)

(assert (=> setNonEmpty!21240 m!3075857))

(declare-fun b!2694971 () Bool)

(declare-fun e!1699160 () Bool)

(declare-fun tp!852322 () Bool)

(declare-fun tp!852323 () Bool)

(assert (=> b!2694971 (= e!1699160 (and (inv!42126 (left!23956 (c!434441 totalInput!354))) tp!852322 (inv!42126 (right!24286 (c!434441 totalInput!354))) tp!852323))))

(declare-fun b!2694973 () Bool)

(declare-fun e!1699161 () Bool)

(declare-fun tp!852321 () Bool)

(assert (=> b!2694973 (= e!1699161 tp!852321)))

(declare-fun b!2694972 () Bool)

(declare-fun inv!42134 (IArray!19435) Bool)

(assert (=> b!2694972 (= e!1699160 (and (inv!42134 (xs!12755 (c!434441 totalInput!354))) e!1699161))))

(assert (=> b!2694535 (= tp!852194 (and (inv!42126 (c!434441 totalInput!354)) e!1699160))))

(assert (= (and b!2694535 ((_ is Node!9715) (c!434441 totalInput!354))) b!2694971))

(assert (= b!2694972 b!2694973))

(assert (= (and b!2694535 ((_ is Leaf!14831) (c!434441 totalInput!354))) b!2694972))

(declare-fun m!3075859 () Bool)

(assert (=> b!2694971 m!3075859))

(declare-fun m!3075861 () Bool)

(assert (=> b!2694971 m!3075861))

(declare-fun m!3075863 () Bool)

(assert (=> b!2694972 m!3075863))

(assert (=> b!2694535 m!3074957))

(declare-fun tp!852324 () Bool)

(declare-fun e!1699164 () Bool)

(declare-fun setRes!21241 () Bool)

(declare-fun e!1699162 () Bool)

(declare-fun b!2694974 () Bool)

(assert (=> b!2694974 (= e!1699162 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 mapDefault!16098)))) e!1699164 tp_is_empty!13853 setRes!21241 tp!852324))))

(declare-fun condSetEmpty!21241 () Bool)

(assert (=> b!2694974 (= condSetEmpty!21241 (= (_2!17919 (h!36493 mapDefault!16098)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setElem!21241 () Context!4338)

(declare-fun e!1699163 () Bool)

(declare-fun setNonEmpty!21241 () Bool)

(declare-fun tp!852327 () Bool)

(assert (=> setNonEmpty!21241 (= setRes!21241 (and tp!852327 (inv!42133 setElem!21241) e!1699163))))

(declare-fun setRest!21241 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21241 (= (_2!17919 (h!36493 mapDefault!16098)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21241 true) setRest!21241))))

(assert (=> b!2694545 (= tp!852211 e!1699162)))

(declare-fun setIsEmpty!21241 () Bool)

(assert (=> setIsEmpty!21241 setRes!21241))

(declare-fun b!2694975 () Bool)

(declare-fun tp!852326 () Bool)

(assert (=> b!2694975 (= e!1699164 tp!852326)))

(declare-fun b!2694976 () Bool)

(declare-fun tp!852325 () Bool)

(assert (=> b!2694976 (= e!1699163 tp!852325)))

(assert (= b!2694974 b!2694975))

(assert (= (and b!2694974 condSetEmpty!21241) setIsEmpty!21241))

(assert (= (and b!2694974 (not condSetEmpty!21241)) setNonEmpty!21241))

(assert (= setNonEmpty!21241 b!2694976))

(assert (= (and b!2694545 ((_ is Cons!31073) mapDefault!16098)) b!2694974))

(declare-fun m!3075865 () Bool)

(assert (=> b!2694974 m!3075865))

(declare-fun m!3075867 () Bool)

(assert (=> setNonEmpty!21241 m!3075867))

(declare-fun b!2694989 () Bool)

(declare-fun e!1699167 () Bool)

(declare-fun tp!852339 () Bool)

(assert (=> b!2694989 (= e!1699167 tp!852339)))

(assert (=> b!2694544 (= tp!852197 e!1699167)))

(declare-fun b!2694987 () Bool)

(assert (=> b!2694987 (= e!1699167 tp_is_empty!13853)))

(declare-fun b!2694988 () Bool)

(declare-fun tp!852342 () Bool)

(declare-fun tp!852338 () Bool)

(assert (=> b!2694988 (= e!1699167 (and tp!852342 tp!852338))))

(declare-fun b!2694990 () Bool)

(declare-fun tp!852341 () Bool)

(declare-fun tp!852340 () Bool)

(assert (=> b!2694990 (= e!1699167 (and tp!852341 tp!852340))))

(assert (= (and b!2694544 ((_ is ElementMatch!7895) (regex!4743 (h!36496 rules!1381)))) b!2694987))

(assert (= (and b!2694544 ((_ is Concat!12860) (regex!4743 (h!36496 rules!1381)))) b!2694988))

(assert (= (and b!2694544 ((_ is Star!7895) (regex!4743 (h!36496 rules!1381)))) b!2694989))

(assert (= (and b!2694544 ((_ is Union!7895) (regex!4743 (h!36496 rules!1381)))) b!2694990))

(declare-fun e!1699169 () Bool)

(declare-fun tp!852346 () Bool)

(declare-fun setRes!21242 () Bool)

(declare-fun e!1699170 () Bool)

(declare-fun tp!852347 () Bool)

(declare-fun b!2694991 () Bool)

(assert (=> b!2694991 (= e!1699170 (and tp!852347 (inv!42133 (_2!17916 (_1!17917 (h!36492 mapDefault!16097)))) e!1699169 tp_is_empty!13853 setRes!21242 tp!852346))))

(declare-fun condSetEmpty!21242 () Bool)

(assert (=> b!2694991 (= condSetEmpty!21242 (= (_2!17917 (h!36492 mapDefault!16097)) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setNonEmpty!21242 () Bool)

(declare-fun tp!852344 () Bool)

(declare-fun e!1699168 () Bool)

(declare-fun setElem!21242 () Context!4338)

(assert (=> setNonEmpty!21242 (= setRes!21242 (and tp!852344 (inv!42133 setElem!21242) e!1699168))))

(declare-fun setRest!21242 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21242 (= (_2!17917 (h!36492 mapDefault!16097)) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21242 true) setRest!21242))))

(declare-fun b!2694992 () Bool)

(declare-fun tp!852345 () Bool)

(assert (=> b!2694992 (= e!1699168 tp!852345)))

(declare-fun setIsEmpty!21242 () Bool)

(assert (=> setIsEmpty!21242 setRes!21242))

(declare-fun b!2694993 () Bool)

(declare-fun tp!852343 () Bool)

(assert (=> b!2694993 (= e!1699169 tp!852343)))

(assert (=> b!2694523 (= tp!852196 e!1699170)))

(assert (= b!2694991 b!2694993))

(assert (= (and b!2694991 condSetEmpty!21242) setIsEmpty!21242))

(assert (= (and b!2694991 (not condSetEmpty!21242)) setNonEmpty!21242))

(assert (= setNonEmpty!21242 b!2694992))

(assert (= (and b!2694523 ((_ is Cons!31072) mapDefault!16097)) b!2694991))

(declare-fun m!3075869 () Bool)

(assert (=> b!2694991 m!3075869))

(declare-fun m!3075871 () Bool)

(assert (=> setNonEmpty!21242 m!3075871))

(declare-fun tp!852350 () Bool)

(declare-fun e!1699171 () Bool)

(declare-fun tp!852349 () Bool)

(declare-fun b!2694994 () Bool)

(assert (=> b!2694994 (= e!1699171 (and (inv!42126 (left!23956 (c!434441 input!780))) tp!852349 (inv!42126 (right!24286 (c!434441 input!780))) tp!852350))))

(declare-fun b!2694996 () Bool)

(declare-fun e!1699172 () Bool)

(declare-fun tp!852348 () Bool)

(assert (=> b!2694996 (= e!1699172 tp!852348)))

(declare-fun b!2694995 () Bool)

(assert (=> b!2694995 (= e!1699171 (and (inv!42134 (xs!12755 (c!434441 input!780))) e!1699172))))

(assert (=> b!2694553 (= tp!852214 (and (inv!42126 (c!434441 input!780)) e!1699171))))

(assert (= (and b!2694553 ((_ is Node!9715) (c!434441 input!780))) b!2694994))

(assert (= b!2694995 b!2694996))

(assert (= (and b!2694553 ((_ is Leaf!14831) (c!434441 input!780))) b!2694995))

(declare-fun m!3075873 () Bool)

(assert (=> b!2694994 m!3075873))

(declare-fun m!3075875 () Bool)

(assert (=> b!2694994 m!3075875))

(declare-fun m!3075877 () Bool)

(assert (=> b!2694995 m!3075877))

(assert (=> b!2694553 m!3074959))

(declare-fun b!2694997 () Bool)

(declare-fun setRes!21243 () Bool)

(declare-fun tp!852355 () Bool)

(declare-fun e!1699174 () Bool)

(declare-fun tp!852354 () Bool)

(declare-fun e!1699175 () Bool)

(assert (=> b!2694997 (= e!1699175 (and tp!852355 (inv!42133 (_2!17916 (_1!17917 (h!36492 (zeroValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))))) e!1699174 tp_is_empty!13853 setRes!21243 tp!852354))))

(declare-fun condSetEmpty!21243 () Bool)

(assert (=> b!2694997 (= condSetEmpty!21243 (= (_2!17917 (h!36492 (zeroValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun e!1699173 () Bool)

(declare-fun setNonEmpty!21243 () Bool)

(declare-fun setElem!21243 () Context!4338)

(declare-fun tp!852352 () Bool)

(assert (=> setNonEmpty!21243 (= setRes!21243 (and tp!852352 (inv!42133 setElem!21243) e!1699173))))

(declare-fun setRest!21243 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21243 (= (_2!17917 (h!36492 (zeroValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21243 true) setRest!21243))))

(declare-fun b!2694998 () Bool)

(declare-fun tp!852353 () Bool)

(assert (=> b!2694998 (= e!1699173 tp!852353)))

(declare-fun setIsEmpty!21243 () Bool)

(assert (=> setIsEmpty!21243 setRes!21243))

(declare-fun b!2694999 () Bool)

(declare-fun tp!852351 () Bool)

(assert (=> b!2694999 (= e!1699174 tp!852351)))

(assert (=> b!2694541 (= tp!852203 e!1699175)))

(assert (= b!2694997 b!2694999))

(assert (= (and b!2694997 condSetEmpty!21243) setIsEmpty!21243))

(assert (= (and b!2694997 (not condSetEmpty!21243)) setNonEmpty!21243))

(assert (= setNonEmpty!21243 b!2694998))

(assert (= (and b!2694541 ((_ is Cons!31072) (zeroValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) b!2694997))

(declare-fun m!3075879 () Bool)

(assert (=> b!2694997 m!3075879))

(declare-fun m!3075881 () Bool)

(assert (=> setNonEmpty!21243 m!3075881))

(declare-fun tp!852359 () Bool)

(declare-fun b!2695000 () Bool)

(declare-fun e!1699177 () Bool)

(declare-fun tp!852360 () Bool)

(declare-fun e!1699178 () Bool)

(declare-fun setRes!21244 () Bool)

(assert (=> b!2695000 (= e!1699178 (and tp!852360 (inv!42133 (_2!17916 (_1!17917 (h!36492 (minValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))))) e!1699177 tp_is_empty!13853 setRes!21244 tp!852359))))

(declare-fun condSetEmpty!21244 () Bool)

(assert (=> b!2695000 (= condSetEmpty!21244 (= (_2!17917 (h!36492 (minValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun e!1699176 () Bool)

(declare-fun setNonEmpty!21244 () Bool)

(declare-fun tp!852357 () Bool)

(declare-fun setElem!21244 () Context!4338)

(assert (=> setNonEmpty!21244 (= setRes!21244 (and tp!852357 (inv!42133 setElem!21244) e!1699176))))

(declare-fun setRest!21244 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21244 (= (_2!17917 (h!36492 (minValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21244 true) setRest!21244))))

(declare-fun b!2695001 () Bool)

(declare-fun tp!852358 () Bool)

(assert (=> b!2695001 (= e!1699176 tp!852358)))

(declare-fun setIsEmpty!21244 () Bool)

(assert (=> setIsEmpty!21244 setRes!21244))

(declare-fun b!2695002 () Bool)

(declare-fun tp!852356 () Bool)

(assert (=> b!2695002 (= e!1699177 tp!852356)))

(assert (=> b!2694541 (= tp!852195 e!1699178)))

(assert (= b!2695000 b!2695002))

(assert (= (and b!2695000 condSetEmpty!21244) setIsEmpty!21244))

(assert (= (and b!2695000 (not condSetEmpty!21244)) setNonEmpty!21244))

(assert (= setNonEmpty!21244 b!2695001))

(assert (= (and b!2694541 ((_ is Cons!31072) (minValue!3777 (v!32868 (underlying!7241 (v!32869 (underlying!7242 (cache!3568 cacheDown!499)))))))) b!2695000))

(declare-fun m!3075883 () Bool)

(assert (=> b!2695000 m!3075883))

(declare-fun m!3075885 () Bool)

(assert (=> setNonEmpty!21244 m!3075885))

(declare-fun e!1699181 () Bool)

(declare-fun setRes!21245 () Bool)

(declare-fun tp!852361 () Bool)

(declare-fun e!1699179 () Bool)

(declare-fun b!2695003 () Bool)

(assert (=> b!2695003 (= e!1699179 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 (zeroValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))))) e!1699181 tp_is_empty!13853 setRes!21245 tp!852361))))

(declare-fun condSetEmpty!21245 () Bool)

(assert (=> b!2695003 (= condSetEmpty!21245 (= (_2!17919 (h!36493 (zeroValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setElem!21245 () Context!4338)

(declare-fun tp!852364 () Bool)

(declare-fun setNonEmpty!21245 () Bool)

(declare-fun e!1699180 () Bool)

(assert (=> setNonEmpty!21245 (= setRes!21245 (and tp!852364 (inv!42133 setElem!21245) e!1699180))))

(declare-fun setRest!21245 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21245 (= (_2!17919 (h!36493 (zeroValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21245 true) setRest!21245))))

(assert (=> b!2694539 (= tp!852207 e!1699179)))

(declare-fun setIsEmpty!21245 () Bool)

(assert (=> setIsEmpty!21245 setRes!21245))

(declare-fun b!2695004 () Bool)

(declare-fun tp!852363 () Bool)

(assert (=> b!2695004 (= e!1699181 tp!852363)))

(declare-fun b!2695005 () Bool)

(declare-fun tp!852362 () Bool)

(assert (=> b!2695005 (= e!1699180 tp!852362)))

(assert (= b!2695003 b!2695004))

(assert (= (and b!2695003 condSetEmpty!21245) setIsEmpty!21245))

(assert (= (and b!2695003 (not condSetEmpty!21245)) setNonEmpty!21245))

(assert (= setNonEmpty!21245 b!2695005))

(assert (= (and b!2694539 ((_ is Cons!31073) (zeroValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) b!2695003))

(declare-fun m!3075887 () Bool)

(assert (=> b!2695003 m!3075887))

(declare-fun m!3075889 () Bool)

(assert (=> setNonEmpty!21245 m!3075889))

(declare-fun e!1699182 () Bool)

(declare-fun e!1699184 () Bool)

(declare-fun b!2695006 () Bool)

(declare-fun setRes!21246 () Bool)

(declare-fun tp!852365 () Bool)

(assert (=> b!2695006 (= e!1699182 (and (inv!42133 (_1!17918 (_1!17919 (h!36493 (minValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))))) e!1699184 tp_is_empty!13853 setRes!21246 tp!852365))))

(declare-fun condSetEmpty!21246 () Bool)

(assert (=> b!2695006 (= condSetEmpty!21246 (= (_2!17919 (h!36493 (minValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) ((as const (Array Context!4338 Bool)) false)))))

(declare-fun setElem!21246 () Context!4338)

(declare-fun e!1699183 () Bool)

(declare-fun tp!852368 () Bool)

(declare-fun setNonEmpty!21246 () Bool)

(assert (=> setNonEmpty!21246 (= setRes!21246 (and tp!852368 (inv!42133 setElem!21246) e!1699183))))

(declare-fun setRest!21246 () (InoxSet Context!4338))

(assert (=> setNonEmpty!21246 (= (_2!17919 (h!36493 (minValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4338 Bool)) false) setElem!21246 true) setRest!21246))))

(assert (=> b!2694539 (= tp!852193 e!1699182)))

(declare-fun setIsEmpty!21246 () Bool)

(assert (=> setIsEmpty!21246 setRes!21246))

(declare-fun b!2695007 () Bool)

(declare-fun tp!852367 () Bool)

(assert (=> b!2695007 (= e!1699184 tp!852367)))

(declare-fun b!2695008 () Bool)

(declare-fun tp!852366 () Bool)

(assert (=> b!2695008 (= e!1699183 tp!852366)))

(assert (= b!2695006 b!2695007))

(assert (= (and b!2695006 condSetEmpty!21246) setIsEmpty!21246))

(assert (= (and b!2695006 (not condSetEmpty!21246)) setNonEmpty!21246))

(assert (= setNonEmpty!21246 b!2695008))

(assert (= (and b!2694539 ((_ is Cons!31073) (minValue!3778 (v!32865 (underlying!7239 (v!32867 (underlying!7240 (cache!3567 cacheUp!486)))))))) b!2695006))

(declare-fun m!3075891 () Bool)

(assert (=> b!2695006 m!3075891))

(declare-fun m!3075893 () Bool)

(assert (=> setNonEmpty!21246 m!3075893))

(declare-fun tp!852370 () Bool)

(declare-fun e!1699185 () Bool)

(declare-fun b!2695009 () Bool)

(declare-fun tp!852371 () Bool)

(assert (=> b!2695009 (= e!1699185 (and (inv!42126 (left!23956 (c!434441 treated!26))) tp!852370 (inv!42126 (right!24286 (c!434441 treated!26))) tp!852371))))

(declare-fun b!2695011 () Bool)

(declare-fun e!1699186 () Bool)

(declare-fun tp!852369 () Bool)

(assert (=> b!2695011 (= e!1699186 tp!852369)))

(declare-fun b!2695010 () Bool)

(assert (=> b!2695010 (= e!1699185 (and (inv!42134 (xs!12755 (c!434441 treated!26))) e!1699186))))

(assert (=> b!2694549 (= tp!852200 (and (inv!42126 (c!434441 treated!26)) e!1699185))))

(assert (= (and b!2694549 ((_ is Node!9715) (c!434441 treated!26))) b!2695009))

(assert (= b!2695010 b!2695011))

(assert (= (and b!2694549 ((_ is Leaf!14831) (c!434441 treated!26))) b!2695010))

(declare-fun m!3075895 () Bool)

(assert (=> b!2695009 m!3075895))

(declare-fun m!3075897 () Bool)

(assert (=> b!2695009 m!3075897))

(declare-fun m!3075899 () Bool)

(assert (=> b!2695010 m!3075899))

(assert (=> b!2694549 m!3074939))

(declare-fun b!2695022 () Bool)

(declare-fun b_free!76089 () Bool)

(declare-fun b_next!76793 () Bool)

(assert (=> b!2695022 (= b_free!76089 (not b_next!76793))))

(declare-fun tp!852381 () Bool)

(declare-fun b_and!199219 () Bool)

(assert (=> b!2695022 (= tp!852381 b_and!199219)))

(declare-fun b_free!76091 () Bool)

(declare-fun b_next!76795 () Bool)

(assert (=> b!2695022 (= b_free!76091 (not b_next!76795))))

(declare-fun t!225182 () Bool)

(declare-fun tb!151069 () Bool)

(assert (=> (and b!2695022 (= (toChars!6560 (transformation!4743 (h!36496 (t!225175 rules!1381)))) (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 (_1!17921 lt!951537))))))) t!225182) tb!151069))

(declare-fun result!186608 () Bool)

(assert (= result!186608 result!186586))

(assert (=> d!772450 t!225182))

(declare-fun tb!151071 () Bool)

(declare-fun t!225184 () Bool)

(assert (=> (and b!2695022 (= (toChars!6560 (transformation!4743 (h!36496 (t!225175 rules!1381)))) (toChars!6560 (transformation!4743 (rule!7160 (_1!17920 (v!32866 lt!951535)))))) t!225184) tb!151071))

(declare-fun result!186610 () Bool)

(assert (= result!186610 result!186590))

(assert (=> d!772490 t!225184))

(declare-fun tp!852383 () Bool)

(declare-fun b_and!199221 () Bool)

(assert (=> b!2695022 (= tp!852383 (and (=> t!225182 result!186608) (=> t!225184 result!186610) b_and!199221))))

(declare-fun e!1699198 () Bool)

(assert (=> b!2695022 (= e!1699198 (and tp!852381 tp!852383))))

(declare-fun b!2695021 () Bool)

(declare-fun e!1699197 () Bool)

(declare-fun tp!852380 () Bool)

(assert (=> b!2695021 (= e!1699197 (and tp!852380 (inv!42113 (tag!5247 (h!36496 (t!225175 rules!1381)))) (inv!42127 (transformation!4743 (h!36496 (t!225175 rules!1381)))) e!1699198))))

(declare-fun b!2695020 () Bool)

(declare-fun e!1699196 () Bool)

(declare-fun tp!852382 () Bool)

(assert (=> b!2695020 (= e!1699196 (and e!1699197 tp!852382))))

(assert (=> b!2694557 (= tp!852210 e!1699196)))

(assert (= b!2695021 b!2695022))

(assert (= b!2695020 b!2695021))

(assert (= (and b!2694557 ((_ is Cons!31076) (t!225175 rules!1381))) b!2695020))

(declare-fun m!3075901 () Bool)

(assert (=> b!2695021 m!3075901))

(declare-fun m!3075903 () Bool)

(assert (=> b!2695021 m!3075903))

(check-sat (not b_next!76791) (not d!772460) (not b!2694863) (not b!2694600) (not b!2694789) (not b!2694874) (not b!2694868) (not b!2694865) (not d!772462) (not b!2694535) (not b!2694795) (not b!2694653) (not b!2694621) (not b!2694807) (not b!2694993) (not b!2694846) (not d!772448) (not b!2694766) (not b!2694745) (not b!2694757) (not b!2694624) (not b!2694620) (not d!772452) (not b!2694877) (not b_next!76783) (not d!772510) (not d!772494) (not b!2694949) (not b!2694772) (not d!772484) b_and!199207 (not d!772440) (not b!2694819) (not b!2694791) (not b!2694657) (not d!772480) (not b!2695009) (not b!2694800) (not b!2694991) (not setNonEmpty!21231) (not b!2694658) (not b!2694930) (not b!2694803) (not b!2694857) (not d!772516) (not b!2694884) (not b!2694619) (not d!772490) (not b!2694878) (not b!2695000) (not b!2694799) (not d!772502) (not setNonEmpty!21242) (not b!2694861) (not b!2694730) (not b!2694726) (not b!2694732) (not d!772540) (not d!772438) (not mapNonEmpty!16104) (not setNonEmpty!21227) (not b!2694960) (not d!772464) (not b!2694763) (not b!2694866) (not d!772534) (not d!772454) (not b!2695020) (not d!772478) (not setNonEmpty!21245) (not b!2694876) (not d!772542) b_and!199205 (not b!2694771) (not b!2694946) (not b!2694818) (not b!2694518) (not b!2694768) (not b!2694724) (not b_next!76793) (not setNonEmpty!21241) (not b!2694764) (not setNonEmpty!21246) (not b!2694864) (not d!772450) (not d!772588) (not b!2694759) (not b!2694672) (not mapNonEmpty!16101) (not b!2694962) (not b!2694787) (not b!2695001) (not b!2694810) (not d!772526) (not b!2694765) (not d!772562) (not b!2694815) (not b!2694976) (not b!2694599) b_and!199209 (not b!2694885) (not b!2694836) (not b!2694989) (not b!2694830) (not d!772552) (not b!2694756) (not b!2694860) (not b!2694623) (not b_next!76785) (not b!2694990) (not b!2694971) (not b!2694690) (not d!772500) (not b!2694858) (not b!2694883) (not b!2695006) (not b!2695003) (not d!772486) (not d!772574) (not b_lambda!82155) (not b!2694973) (not d!772530) (not d!772496) (not b!2695005) (not b!2694898) (not b!2694670) (not b!2694652) (not b!2694848) (not setNonEmpty!21244) (not b!2694832) (not b!2694762) (not b!2694948) (not b!2694929) (not d!772504) (not b!2694881) b_and!199221 (not b!2694915) (not b!2695004) (not b!2694947) (not d!772584) (not b!2694723) (not b!2694705) b_and!199219 (not b!2694651) (not b!2694916) (not b!2694887) b_and!199217 (not d!772560) (not d!772446) (not b!2694631) (not b!2694661) (not b!2694995) (not b!2694704) (not d!772422) (not b!2694804) (not b!2694703) (not b!2694770) (not d!772468) (not setNonEmpty!21237) (not tb!151065) (not b!2694847) (not b!2694633) (not b!2695008) (not b!2694729) (not b!2694650) (not b!2694681) (not b!2694875) (not b!2694760) (not b!2694988) (not b!2694974) (not d!772524) (not b!2694701) (not b!2694812) (not d!772538) (not d!772432) (not b!2694931) (not b!2694618) (not d!772442) (not b!2694654) (not b!2694687) (not b_lambda!82153) (not b!2694829) (not b!2694790) (not b!2694835) (not b!2694578) (not b!2694769) (not d!772492) (not b!2694785) (not b!2694577) (not b!2694872) (not b!2694998) (not d!772514) (not setNonEmpty!21228) (not b!2694838) (not b!2694919) (not b!2694996) (not b!2694879) (not setNonEmpty!21236) (not b!2694870) (not b!2694837) (not b_next!76789) (not b!2694834) (not b!2694673) (not b!2694975) (not b!2694792) (not b!2694917) (not b!2694859) (not b!2694920) (not setNonEmpty!21243) (not b!2694972) (not b!2695010) (not b!2694873) (not b!2694773) (not b!2694814) (not d!772518) (not d!772532) (not b!2694844) (not b!2694567) (not b_next!76781) (not d!772550) (not b!2694822) (not d!772488) (not b!2694994) (not b!2694951) (not b!2694796) (not d!772508) b_and!199213 (not b!2695002) (not b!2694871) (not b!2694816) (not b!2694734) (not bm!173589) (not b!2694549) tp_is_empty!13853 (not d!772482) (not d!772548) (not b!2694576) (not tb!151067) (not d!772428) (not d!772498) (not d!772556) (not b!2694688) (not b!2694900) (not b!2694671) (not b!2695007) (not bm!173586) (not b!2694825) (not b!2694992) (not d!772472) (not d!772582) (not b!2694648) (not d!772564) (not b!2694882) (not b!2694823) (not b!2694793) (not d!772426) (not b!2695011) (not d!772536) (not d!772444) (not b!2694845) (not b!2694721) (not d!772546) (not b!2694888) (not b_next!76787) (not d!772586) (not b!2694997) (not b!2695021) (not b!2694999) (not b!2694918) (not b!2694950) (not b!2694842) (not d!772570) (not b!2694684) (not d!772474) (not b!2694597) (not d!772580) (not d!772558) (not b_next!76795) (not b!2694841) (not b!2694596) (not b!2694565) (not b!2694622) (not b!2694813) (not d!772506) (not b!2694733) (not setNonEmpty!21240) (not b!2694827) (not b!2694899) (not d!772520) (not b!2694867) (not d!772522) (not b!2694744) (not b!2694961) (not b!2694553) (not bm!173590) (not d!772512) (not b!2694774) (not b!2694808) (not d!772424) (not d!772470) (not d!772434) (not b!2694678) (not d!772572) b_and!199203)
(check-sat (not b_next!76791) (not b_next!76783) b_and!199207 b_and!199205 (not b_next!76793) b_and!199209 (not b_next!76785) b_and!199221 b_and!199219 b_and!199217 (not b_next!76789) (not b_next!76781) b_and!199213 (not b_next!76787) (not b_next!76795) b_and!199203)
