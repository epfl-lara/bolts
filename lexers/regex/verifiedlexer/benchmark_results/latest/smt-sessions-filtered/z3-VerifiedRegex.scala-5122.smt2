; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262454 () Bool)

(assert start!262454)

(declare-fun b!2703838 () Bool)

(declare-fun b_free!76289 () Bool)

(declare-fun b_next!76993 () Bool)

(assert (=> b!2703838 (= b_free!76289 (not b_next!76993))))

(declare-fun tp!855035 () Bool)

(declare-fun b_and!199715 () Bool)

(assert (=> b!2703838 (= tp!855035 b_and!199715)))

(declare-fun b!2703842 () Bool)

(declare-fun b_free!76291 () Bool)

(declare-fun b_next!76995 () Bool)

(assert (=> b!2703842 (= b_free!76291 (not b_next!76995))))

(declare-fun tp!855021 () Bool)

(declare-fun b_and!199717 () Bool)

(assert (=> b!2703842 (= tp!855021 b_and!199717)))

(declare-fun b_free!76293 () Bool)

(declare-fun b_next!76997 () Bool)

(assert (=> b!2703842 (= b_free!76293 (not b_next!76997))))

(declare-fun tp!855026 () Bool)

(declare-fun b_and!199719 () Bool)

(assert (=> b!2703842 (= tp!855026 b_and!199719)))

(declare-fun b!2703833 () Bool)

(declare-fun b_free!76295 () Bool)

(declare-fun b_next!76999 () Bool)

(assert (=> b!2703833 (= b_free!76295 (not b_next!76999))))

(declare-fun tp!855025 () Bool)

(declare-fun b_and!199721 () Bool)

(assert (=> b!2703833 (= tp!855025 b_and!199721)))

(declare-fun b!2703818 () Bool)

(declare-fun b_free!76297 () Bool)

(declare-fun b_next!77001 () Bool)

(assert (=> b!2703818 (= b_free!76297 (not b_next!77001))))

(declare-fun tp!855023 () Bool)

(declare-fun b_and!199723 () Bool)

(assert (=> b!2703818 (= tp!855023 b_and!199723)))

(declare-fun b!2703841 () Bool)

(declare-fun b_free!76299 () Bool)

(declare-fun b_next!77003 () Bool)

(assert (=> b!2703841 (= b_free!76299 (not b_next!77003))))

(declare-fun tp!855033 () Bool)

(declare-fun b_and!199725 () Bool)

(assert (=> b!2703841 (= tp!855033 b_and!199725)))

(declare-datatypes ((List!31274 0))(
  ( (Nil!31174) (Cons!31174 (h!36594 (_ BitVec 16)) (t!225700 List!31274)) )
))
(declare-datatypes ((TokenValue!4979 0))(
  ( (FloatLiteralValue!9958 (text!35298 List!31274)) (TokenValueExt!4978 (__x!20075 Int)) (Broken!24895 (value!153163 List!31274)) (Object!5078) (End!4979) (Def!4979) (Underscore!4979) (Match!4979) (Else!4979) (Error!4979) (Case!4979) (If!4979) (Extends!4979) (Abstract!4979) (Class!4979) (Val!4979) (DelimiterValue!9958 (del!5039 List!31274)) (KeywordValue!4985 (value!153164 List!31274)) (CommentValue!9958 (value!153165 List!31274)) (WhitespaceValue!9958 (value!153166 List!31274)) (IndentationValue!4979 (value!153167 List!31274)) (String!34794) (Int32!4979) (Broken!24896 (value!153168 List!31274)) (Boolean!4980) (Unit!45258) (OperatorValue!4982 (op!5039 List!31274)) (IdentifierValue!9958 (value!153169 List!31274)) (IdentifierValue!9959 (value!153170 List!31274)) (WhitespaceValue!9959 (value!153171 List!31274)) (True!9958) (False!9958) (Broken!24897 (value!153172 List!31274)) (Broken!24898 (value!153173 List!31274)) (True!9959) (RightBrace!4979) (RightBracket!4979) (Colon!4979) (Null!4979) (Comma!4979) (LeftBracket!4979) (False!9959) (LeftBrace!4979) (ImaginaryLiteralValue!4979 (text!35299 List!31274)) (StringLiteralValue!14937 (value!153174 List!31274)) (EOFValue!4979 (value!153175 List!31274)) (IdentValue!4979 (value!153176 List!31274)) (DelimiterValue!9959 (value!153177 List!31274)) (DedentValue!4979 (value!153178 List!31274)) (NewLineValue!4979 (value!153179 List!31274)) (IntegerValue!14937 (value!153180 (_ BitVec 32)) (text!35300 List!31274)) (IntegerValue!14938 (value!153181 Int) (text!35301 List!31274)) (Times!4979) (Or!4979) (Equal!4979) (Minus!4979) (Broken!24899 (value!153182 List!31274)) (And!4979) (Div!4979) (LessEqual!4979) (Mod!4979) (Concat!12888) (Not!4979) (Plus!4979) (SpaceValue!4979 (value!153183 List!31274)) (IntegerValue!14939 (value!153184 Int) (text!35302 List!31274)) (StringLiteralValue!14938 (text!35303 List!31274)) (FloatLiteralValue!9959 (text!35304 List!31274)) (BytesLiteralValue!4979 (value!153185 List!31274)) (CommentValue!9959 (value!153186 List!31274)) (StringLiteralValue!14939 (value!153187 List!31274)) (ErrorTokenValue!4979 (msg!5040 List!31274)) )
))
(declare-datatypes ((C!15976 0))(
  ( (C!15977 (val!9922 Int)) )
))
(declare-datatypes ((Regex!7909 0))(
  ( (ElementMatch!7909 (c!436280 C!15976)) (Concat!12889 (regOne!16330 Regex!7909) (regTwo!16330 Regex!7909)) (EmptyExpr!7909) (Star!7909 (reg!8238 Regex!7909)) (EmptyLang!7909) (Union!7909 (regOne!16331 Regex!7909) (regTwo!16331 Regex!7909)) )
))
(declare-datatypes ((String!34795 0))(
  ( (String!34796 (value!153188 String)) )
))
(declare-datatypes ((List!31275 0))(
  ( (Nil!31175) (Cons!31175 (h!36595 C!15976) (t!225701 List!31275)) )
))
(declare-datatypes ((IArray!19491 0))(
  ( (IArray!19492 (innerList!9803 List!31275)) )
))
(declare-datatypes ((Conc!9743 0))(
  ( (Node!9743 (left!23995 Conc!9743) (right!24325 Conc!9743) (csize!19716 Int) (cheight!9954 Int)) (Leaf!14866 (xs!12791 IArray!19491) (csize!19717 Int)) (Empty!9743) )
))
(declare-datatypes ((BalanceConc!19100 0))(
  ( (BalanceConc!19101 (c!436281 Conc!9743)) )
))
(declare-datatypes ((TokenValueInjection!9398 0))(
  ( (TokenValueInjection!9399 (toValue!6719 Int) (toChars!6578 Int)) )
))
(declare-datatypes ((Rule!9314 0))(
  ( (Rule!9315 (regex!4757 Regex!7909) (tag!5261 String!34795) (isSeparator!4757 Bool) (transformation!4757 TokenValueInjection!9398)) )
))
(declare-datatypes ((Token!8980 0))(
  ( (Token!8981 (value!153189 TokenValue!4979) (rule!7179 Rule!9314) (size!24076 Int) (originalCharacters!5521 List!31275)) )
))
(declare-datatypes ((tuple2!30800 0))(
  ( (tuple2!30801 (_1!18026 Token!8980) (_2!18026 BalanceConc!19100)) )
))
(declare-datatypes ((Option!6151 0))(
  ( (None!6150) (Some!6150 (v!32944 tuple2!30800)) )
))
(declare-fun lt!955668 () Option!6151)

(declare-fun b!2703811 () Bool)

(declare-fun e!1704679 () Bool)

(declare-datatypes ((List!31276 0))(
  ( (Nil!31176) (Cons!31176 (h!36596 Token!8980) (t!225702 List!31276)) )
))
(declare-datatypes ((IArray!19493 0))(
  ( (IArray!19494 (innerList!9804 List!31276)) )
))
(declare-datatypes ((Conc!9744 0))(
  ( (Node!9744 (left!23996 Conc!9744) (right!24326 Conc!9744) (csize!19718 Int) (cheight!9955 Int)) (Leaf!14867 (xs!12792 IArray!19493) (csize!19719 Int)) (Empty!9744) )
))
(declare-datatypes ((BalanceConc!19102 0))(
  ( (BalanceConc!19103 (c!436282 Conc!9744)) )
))
(declare-datatypes ((tuple2!30802 0))(
  ( (tuple2!30803 (_1!18027 BalanceConc!19102) (_2!18027 BalanceConc!19100)) )
))
(declare-fun lt!955678 () tuple2!30802)

(declare-fun lt!955675 () tuple2!30802)

(declare-fun prepend!1089 (BalanceConc!19102 Token!8980) BalanceConc!19102)

(assert (=> b!2703811 (= e!1704679 (= lt!955675 (tuple2!30803 (prepend!1089 (_1!18027 lt!955678) (_1!18026 (v!32944 lt!955668))) (_2!18027 lt!955678))))))

(declare-fun b!2703812 () Bool)

(declare-fun e!1704677 () Bool)

(declare-fun totalInput!354 () BalanceConc!19100)

(declare-fun tp!855040 () Bool)

(declare-fun inv!42236 (Conc!9743) Bool)

(assert (=> b!2703812 (= e!1704677 (and (inv!42236 (c!436281 totalInput!354)) tp!855040))))

(declare-fun b!2703813 () Bool)

(declare-fun e!1704680 () tuple2!30802)

(declare-fun acc!348 () BalanceConc!19102)

(declare-fun input!780 () BalanceConc!19100)

(assert (=> b!2703813 (= e!1704680 (tuple2!30803 acc!348 input!780))))

(declare-fun b!2703814 () Bool)

(declare-fun e!1704671 () Bool)

(declare-fun e!1704683 () Bool)

(assert (=> b!2703814 (= e!1704671 (not e!1704683))))

(declare-fun res!1135478 () Bool)

(assert (=> b!2703814 (=> res!1135478 e!1704683)))

(declare-datatypes ((List!31277 0))(
  ( (Nil!31177) (Cons!31177 (h!36597 Regex!7909) (t!225703 List!31277)) )
))
(declare-datatypes ((Context!4366 0))(
  ( (Context!4367 (exprs!2683 List!31277)) )
))
(declare-datatypes ((tuple3!4312 0))(
  ( (tuple3!4313 (_1!18028 Regex!7909) (_2!18028 Context!4366) (_3!2626 C!15976)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30804 0))(
  ( (tuple2!30805 (_1!18029 tuple3!4312) (_2!18029 (InoxSet Context!4366))) )
))
(declare-datatypes ((List!31278 0))(
  ( (Nil!31178) (Cons!31178 (h!36598 tuple2!30804) (t!225704 List!31278)) )
))
(declare-datatypes ((array!12635 0))(
  ( (array!12636 (arr!5644 (Array (_ BitVec 32) (_ BitVec 64))) (size!24077 (_ BitVec 32))) )
))
(declare-datatypes ((array!12637 0))(
  ( (array!12638 (arr!5645 (Array (_ BitVec 32) List!31278)) (size!24078 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7092 0))(
  ( (LongMapFixedSize!7093 (defaultEntry!3931 Int) (mask!9237 (_ BitVec 32)) (extraKeys!3795 (_ BitVec 32)) (zeroValue!3805 List!31278) (minValue!3805 List!31278) (_size!7135 (_ BitVec 32)) (_keys!3846 array!12635) (_values!3827 array!12637) (_vacant!3607 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!30806 0))(
  ( (tuple2!30807 (_1!18030 Context!4366) (_2!18030 C!15976)) )
))
(declare-datatypes ((tuple2!30808 0))(
  ( (tuple2!30809 (_1!18031 tuple2!30806) (_2!18031 (InoxSet Context!4366))) )
))
(declare-datatypes ((List!31279 0))(
  ( (Nil!31179) (Cons!31179 (h!36599 tuple2!30808) (t!225705 List!31279)) )
))
(declare-datatypes ((array!12639 0))(
  ( (array!12640 (arr!5646 (Array (_ BitVec 32) List!31279)) (size!24079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7094 0))(
  ( (LongMapFixedSize!7095 (defaultEntry!3932 Int) (mask!9238 (_ BitVec 32)) (extraKeys!3796 (_ BitVec 32)) (zeroValue!3806 List!31279) (minValue!3806 List!31279) (_size!7136 (_ BitVec 32)) (_keys!3847 array!12635) (_values!3828 array!12639) (_vacant!3608 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13993 0))(
  ( (Cell!13994 (v!32945 LongMapFixedSize!7094)) )
))
(declare-datatypes ((Hashable!3462 0))(
  ( (HashableExt!3461 (__x!20076 Int)) )
))
(declare-datatypes ((MutLongMap!3546 0))(
  ( (LongMap!3546 (underlying!7295 Cell!13993)) (MutLongMapExt!3545 (__x!20077 Int)) )
))
(declare-datatypes ((Cell!13995 0))(
  ( (Cell!13996 (v!32946 MutLongMap!3546)) )
))
(declare-datatypes ((MutableMap!3452 0))(
  ( (MutableMapExt!3451 (__x!20078 Int)) (HashMap!3452 (underlying!7296 Cell!13995) (hashF!5494 Hashable!3462) (_size!7137 (_ BitVec 32)) (defaultValue!3623 Int)) )
))
(declare-datatypes ((CacheUp!2162 0))(
  ( (CacheUp!2163 (cache!3595 MutableMap!3452)) )
))
(declare-datatypes ((Cell!13997 0))(
  ( (Cell!13998 (v!32947 LongMapFixedSize!7092)) )
))
(declare-datatypes ((MutLongMap!3547 0))(
  ( (LongMap!3547 (underlying!7297 Cell!13997)) (MutLongMapExt!3546 (__x!20079 Int)) )
))
(declare-datatypes ((Cell!13999 0))(
  ( (Cell!14000 (v!32948 MutLongMap!3547)) )
))
(declare-datatypes ((Hashable!3463 0))(
  ( (HashableExt!3462 (__x!20080 Int)) )
))
(declare-datatypes ((MutableMap!3453 0))(
  ( (MutableMapExt!3452 (__x!20081 Int)) (HashMap!3453 (underlying!7298 Cell!13999) (hashF!5495 Hashable!3463) (_size!7138 (_ BitVec 32)) (defaultValue!3624 Int)) )
))
(declare-datatypes ((CacheDown!2274 0))(
  ( (CacheDown!2275 (cache!3596 MutableMap!3453)) )
))
(declare-datatypes ((tuple3!4314 0))(
  ( (tuple3!4315 (_1!18032 Option!6151) (_2!18032 CacheUp!2162) (_3!2627 CacheDown!2274)) )
))
(declare-fun lt!955663 () tuple3!4314)

(get-info :version)

(assert (=> b!2703814 (= res!1135478 (not ((_ is Some!6150) (_1!18032 lt!955663))))))

(declare-fun cacheUp!486 () CacheUp!2162)

(declare-datatypes ((List!31280 0))(
  ( (Nil!31180) (Cons!31180 (h!36600 Rule!9314) (t!225706 List!31280)) )
))
(declare-fun rules!1381 () List!31280)

(declare-datatypes ((LexerInterface!4353 0))(
  ( (LexerInterfaceExt!4350 (__x!20082 Int)) (Lexer!4351) )
))
(declare-fun thiss!12257 () LexerInterface!4353)

(declare-fun cacheDown!499 () CacheDown!2274)

(declare-fun maxPrefixZipperSequenceMem!24 (LexerInterface!4353 List!31280 BalanceConc!19100 CacheUp!2162 CacheDown!2274) tuple3!4314)

(assert (=> b!2703814 (= lt!955663 (maxPrefixZipperSequenceMem!24 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1704668 () Bool)

(assert (=> b!2703814 e!1704668))

(declare-fun res!1135488 () Bool)

(assert (=> b!2703814 (=> (not res!1135488) (not e!1704668))))

(declare-fun lt!955681 () tuple2!30802)

(assert (=> b!2703814 (= res!1135488 (= lt!955681 e!1704680))))

(declare-fun c!436279 () Bool)

(assert (=> b!2703814 (= c!436279 ((_ is Some!6150) lt!955668))))

(declare-fun treated!26 () BalanceConc!19100)

(declare-fun lexTailRec!36 (LexerInterface!4353 List!31280 BalanceConc!19100 BalanceConc!19100 BalanceConc!19100 BalanceConc!19102) tuple2!30802)

(assert (=> b!2703814 (= lt!955681 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348))))

(declare-fun maxPrefixZipperSequence!1013 (LexerInterface!4353 List!31280 BalanceConc!19100) Option!6151)

(assert (=> b!2703814 (= lt!955668 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780))))

(declare-fun b!2703815 () Bool)

(declare-fun e!1704674 () Bool)

(declare-fun e!1704667 () Bool)

(assert (=> b!2703815 (= e!1704674 e!1704667)))

(declare-fun res!1135480 () Bool)

(assert (=> b!2703815 (=> (not res!1135480) (not e!1704667))))

(declare-fun lt!955659 () List!31275)

(declare-fun list!11762 (BalanceConc!19100) List!31275)

(declare-fun ++!7658 (List!31275 List!31275) List!31275)

(assert (=> b!2703815 (= res!1135480 (= (list!11762 totalInput!354) (++!7658 lt!955659 (list!11762 input!780))))))

(assert (=> b!2703815 (= lt!955659 (list!11762 treated!26))))

(declare-fun b!2703816 () Bool)

(declare-fun e!1704672 () Bool)

(declare-fun e!1704682 () Bool)

(declare-fun lt!955672 () MutLongMap!3546)

(assert (=> b!2703816 (= e!1704672 (and e!1704682 ((_ is LongMap!3546) lt!955672)))))

(assert (=> b!2703816 (= lt!955672 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))

(declare-fun b!2703817 () Bool)

(declare-fun e!1704663 () Bool)

(declare-fun e!1704684 () Bool)

(assert (=> b!2703817 (= e!1704663 e!1704684)))

(declare-fun mapIsEmpty!16205 () Bool)

(declare-fun mapRes!16205 () Bool)

(assert (=> mapIsEmpty!16205 mapRes!16205))

(declare-fun e!1704666 () Bool)

(declare-fun tp!855019 () Bool)

(declare-fun e!1704658 () Bool)

(declare-fun tp!855029 () Bool)

(declare-fun array_inv!4033 (array!12635) Bool)

(declare-fun array_inv!4034 (array!12639) Bool)

(assert (=> b!2703818 (= e!1704658 (and tp!855023 tp!855029 tp!855019 (array_inv!4033 (_keys!3847 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) (array_inv!4034 (_values!3828 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) e!1704666))))

(declare-fun b!2703819 () Bool)

(declare-fun e!1704670 () Bool)

(assert (=> b!2703819 (= e!1704670 e!1704671)))

(declare-fun res!1135484 () Bool)

(assert (=> b!2703819 (=> (not res!1135484) (not e!1704671))))

(declare-fun lt!955661 () tuple2!30802)

(declare-fun list!11763 (BalanceConc!19102) List!31276)

(declare-fun ++!7659 (BalanceConc!19102 BalanceConc!19102) BalanceConc!19102)

(assert (=> b!2703819 (= res!1135484 (= (list!11763 (_1!18027 lt!955661)) (list!11763 (++!7659 acc!348 (_1!18027 lt!955675)))))))

(declare-fun lexRec!615 (LexerInterface!4353 List!31280 BalanceConc!19100) tuple2!30802)

(assert (=> b!2703819 (= lt!955675 (lexRec!615 thiss!12257 rules!1381 input!780))))

(assert (=> b!2703819 (= lt!955661 (lexRec!615 thiss!12257 rules!1381 totalInput!354))))

(declare-fun res!1135481 () Bool)

(assert (=> start!262454 (=> (not res!1135481) (not e!1704674))))

(assert (=> start!262454 (= res!1135481 ((_ is Lexer!4351) thiss!12257))))

(assert (=> start!262454 e!1704674))

(declare-fun inv!42237 (BalanceConc!19100) Bool)

(assert (=> start!262454 (and (inv!42237 totalInput!354) e!1704677)))

(declare-fun e!1704654 () Bool)

(declare-fun inv!42238 (CacheUp!2162) Bool)

(assert (=> start!262454 (and (inv!42238 cacheUp!486) e!1704654)))

(declare-fun e!1704656 () Bool)

(declare-fun inv!42239 (BalanceConc!19102) Bool)

(assert (=> start!262454 (and (inv!42239 acc!348) e!1704656)))

(declare-fun e!1704662 () Bool)

(assert (=> start!262454 (and (inv!42237 input!780) e!1704662)))

(declare-fun e!1704660 () Bool)

(assert (=> start!262454 (and (inv!42237 treated!26) e!1704660)))

(declare-fun e!1704687 () Bool)

(assert (=> start!262454 e!1704687))

(assert (=> start!262454 true))

(declare-fun inv!42240 (CacheDown!2274) Bool)

(assert (=> start!262454 (and (inv!42240 cacheDown!499) e!1704663)))

(declare-fun b!2703820 () Bool)

(declare-fun tp!855028 () Bool)

(assert (=> b!2703820 (= e!1704662 (and (inv!42236 (c!436281 input!780)) tp!855028))))

(declare-fun b!2703821 () Bool)

(assert (=> b!2703821 (= e!1704667 e!1704670)))

(declare-fun res!1135490 () Bool)

(assert (=> b!2703821 (=> (not res!1135490) (not e!1704670))))

(declare-fun lt!955666 () List!31276)

(declare-fun lt!955662 () List!31276)

(assert (=> b!2703821 (= res!1135490 (= lt!955666 lt!955662))))

(assert (=> b!2703821 (= lt!955662 (list!11763 acc!348))))

(declare-fun lt!955682 () tuple2!30802)

(assert (=> b!2703821 (= lt!955666 (list!11763 (_1!18027 lt!955682)))))

(assert (=> b!2703821 (= lt!955682 (lexRec!615 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2703822 () Bool)

(declare-fun res!1135485 () Bool)

(assert (=> b!2703822 (=> (not res!1135485) (not e!1704674))))

(declare-fun rulesInvariant!3839 (LexerInterface!4353 List!31280) Bool)

(assert (=> b!2703822 (= res!1135485 (rulesInvariant!3839 thiss!12257 rules!1381))))

(declare-fun mapIsEmpty!16206 () Bool)

(declare-fun mapRes!16206 () Bool)

(assert (=> mapIsEmpty!16206 mapRes!16206))

(declare-fun b!2703823 () Bool)

(declare-fun e!1704659 () Bool)

(assert (=> b!2703823 (= e!1704683 e!1704659)))

(declare-fun res!1135489 () Bool)

(assert (=> b!2703823 (=> (not res!1135489) (not e!1704659))))

(declare-datatypes ((tuple3!4316 0))(
  ( (tuple3!4317 (_1!18033 tuple2!30802) (_2!18033 CacheUp!2162) (_3!2628 CacheDown!2274)) )
))
(declare-fun lt!955658 () tuple3!4316)

(assert (=> b!2703823 (= res!1135489 (= (list!11763 (_1!18027 (_1!18033 lt!955658))) (list!11763 (_1!18027 lt!955681))))))

(declare-fun lexTailRecMem!12 (LexerInterface!4353 List!31280 BalanceConc!19100 BalanceConc!19100 BalanceConc!19100 BalanceConc!19102 CacheUp!2162 CacheDown!2274) tuple3!4316)

(declare-fun ++!7660 (BalanceConc!19100 BalanceConc!19100) BalanceConc!19100)

(declare-fun charsOf!2996 (Token!8980) BalanceConc!19100)

(declare-fun append!782 (BalanceConc!19102 Token!8980) BalanceConc!19102)

(assert (=> b!2703823 (= lt!955658 (lexTailRecMem!12 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (_2!18026 (v!32944 (_1!18032 lt!955663))) (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_2!18032 lt!955663) (_3!2627 lt!955663)))))

(declare-fun b!2703824 () Bool)

(declare-fun e!1704665 () Bool)

(declare-fun tp!855027 () Bool)

(assert (=> b!2703824 (= e!1704665 (and tp!855027 mapRes!16205))))

(declare-fun condMapEmpty!16206 () Bool)

(declare-fun mapDefault!16205 () List!31278)

(assert (=> b!2703824 (= condMapEmpty!16206 (= (arr!5645 (_values!3827 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31278)) mapDefault!16205)))))

(declare-fun b!2703825 () Bool)

(declare-fun e!1704678 () Bool)

(assert (=> b!2703825 (= e!1704654 e!1704678)))

(declare-fun b!2703826 () Bool)

(declare-fun tp!855038 () Bool)

(declare-fun inv!42241 (Conc!9744) Bool)

(assert (=> b!2703826 (= e!1704656 (and (inv!42241 (c!436282 acc!348)) tp!855038))))

(declare-fun b!2703827 () Bool)

(declare-fun res!1135487 () Bool)

(assert (=> b!2703827 (=> (not res!1135487) (not e!1704674))))

(declare-fun valid!2756 (CacheUp!2162) Bool)

(assert (=> b!2703827 (= res!1135487 (valid!2756 cacheUp!486))))

(declare-fun b!2703828 () Bool)

(declare-fun tp!855031 () Bool)

(assert (=> b!2703828 (= e!1704666 (and tp!855031 mapRes!16206))))

(declare-fun condMapEmpty!16205 () Bool)

(declare-fun mapDefault!16206 () List!31279)

(assert (=> b!2703828 (= condMapEmpty!16205 (= (arr!5646 (_values!3828 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31279)) mapDefault!16206)))))

(declare-fun tp!855022 () Bool)

(declare-fun e!1704686 () Bool)

(declare-fun b!2703829 () Bool)

(declare-fun e!1704685 () Bool)

(declare-fun inv!42234 (String!34795) Bool)

(declare-fun inv!42242 (TokenValueInjection!9398) Bool)

(assert (=> b!2703829 (= e!1704685 (and tp!855022 (inv!42234 (tag!5261 (h!36600 rules!1381))) (inv!42242 (transformation!4757 (h!36600 rules!1381))) e!1704686))))

(declare-fun lt!955677 () tuple2!30802)

(declare-fun b!2703830 () Bool)

(declare-fun lt!955671 () Option!6151)

(assert (=> b!2703830 (= lt!955677 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955671))))))

(declare-fun e!1704675 () tuple2!30802)

(assert (=> b!2703830 (= e!1704675 (tuple2!30803 (prepend!1089 (_1!18027 lt!955677) (_1!18026 (v!32944 lt!955671))) (_2!18027 lt!955677)))))

(declare-fun lt!955669 () BalanceConc!19102)

(declare-fun b!2703831 () Bool)

(declare-fun lt!955657 () BalanceConc!19100)

(assert (=> b!2703831 (= e!1704680 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 lt!955657 (_2!18026 (v!32944 lt!955668)) lt!955669))))

(assert (=> b!2703831 (= lt!955678 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))))))

(declare-fun lt!955667 () BalanceConc!19100)

(assert (=> b!2703831 (= lt!955667 (charsOf!2996 (_1!18026 (v!32944 lt!955668))))))

(declare-fun lt!955676 () List!31275)

(assert (=> b!2703831 (= lt!955676 (list!11762 lt!955667))))

(declare-fun lt!955680 () List!31275)

(assert (=> b!2703831 (= lt!955680 (list!11762 (_2!18026 (v!32944 lt!955668))))))

(declare-datatypes ((Unit!45259 0))(
  ( (Unit!45260) )
))
(declare-fun lt!955673 () Unit!45259)

(declare-fun lemmaConcatAssociativity!1565 (List!31275 List!31275 List!31275) Unit!45259)

(assert (=> b!2703831 (= lt!955673 (lemmaConcatAssociativity!1565 lt!955659 lt!955676 lt!955680))))

(declare-fun lt!955660 () List!31275)

(assert (=> b!2703831 (= lt!955660 (++!7658 lt!955659 lt!955676))))

(declare-fun res!1135479 () Bool)

(assert (=> b!2703831 (= res!1135479 (= (++!7658 lt!955660 lt!955680) (++!7658 lt!955659 (++!7658 lt!955676 lt!955680))))))

(assert (=> b!2703831 (=> (not res!1135479) (not e!1704679))))

(assert (=> b!2703831 e!1704679))

(declare-fun lt!955674 () List!31276)

(assert (=> b!2703831 (= lt!955674 (Cons!31176 (_1!18026 (v!32944 lt!955668)) Nil!31176))))

(declare-fun lt!955664 () List!31276)

(assert (=> b!2703831 (= lt!955664 (list!11763 (_1!18027 lt!955678)))))

(declare-fun lt!955683 () Unit!45259)

(declare-fun lemmaConcatAssociativity!1566 (List!31276 List!31276 List!31276) Unit!45259)

(assert (=> b!2703831 (= lt!955683 (lemmaConcatAssociativity!1566 lt!955662 lt!955674 lt!955664))))

(declare-fun ++!7661 (List!31276 List!31276) List!31276)

(assert (=> b!2703831 (= (++!7661 (++!7661 lt!955662 lt!955674) lt!955664) (++!7661 lt!955662 (++!7661 lt!955674 lt!955664)))))

(assert (=> b!2703831 (= lt!955669 (append!782 acc!348 (_1!18026 (v!32944 lt!955668))))))

(declare-fun lt!955679 () List!31276)

(assert (=> b!2703831 (= lt!955679 (list!11763 lt!955669))))

(declare-fun lt!955665 () Unit!45259)

(declare-fun lemmaLexThenLexPrefix!412 (LexerInterface!4353 List!31280 List!31275 List!31275 List!31276 List!31276 List!31275) Unit!45259)

(assert (=> b!2703831 (= lt!955665 (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!955660 lt!955680 lt!955679 lt!955664 (list!11762 (_2!18027 lt!955678))))))

(declare-datatypes ((tuple2!30810 0))(
  ( (tuple2!30811 (_1!18034 List!31276) (_2!18034 List!31275)) )
))
(declare-fun lexList!1200 (LexerInterface!4353 List!31280 List!31275) tuple2!30810)

(assert (=> b!2703831 (= (lexList!1200 thiss!12257 rules!1381 lt!955660) (tuple2!30811 lt!955679 Nil!31175))))

(assert (=> b!2703831 (= lt!955657 (++!7660 treated!26 lt!955667))))

(assert (=> b!2703831 (= lt!955671 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955657))))

(declare-fun c!436278 () Bool)

(assert (=> b!2703831 (= c!436278 ((_ is Some!6150) lt!955671))))

(assert (=> b!2703831 (= (lexRec!615 thiss!12257 rules!1381 lt!955657) e!1704675)))

(declare-fun b!2703832 () Bool)

(declare-fun res!1135486 () Bool)

(assert (=> b!2703832 (=> (not res!1135486) (not e!1704674))))

(declare-fun valid!2757 (CacheDown!2274) Bool)

(assert (=> b!2703832 (= res!1135486 (valid!2757 cacheDown!499))))

(assert (=> b!2703833 (= e!1704678 (and e!1704672 tp!855025))))

(declare-fun b!2703834 () Bool)

(declare-fun tp!855036 () Bool)

(assert (=> b!2703834 (= e!1704660 (and (inv!42236 (c!436281 treated!26)) tp!855036))))

(declare-fun b!2703835 () Bool)

(assert (=> b!2703835 (= e!1704675 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!955657))))

(declare-fun b!2703836 () Bool)

(declare-fun tp!855037 () Bool)

(assert (=> b!2703836 (= e!1704687 (and e!1704685 tp!855037))))

(declare-fun b!2703837 () Bool)

(declare-fun lex!1964 (LexerInterface!4353 List!31280 BalanceConc!19100) tuple2!30802)

(declare-fun lexTailRecV2!876 (LexerInterface!4353 List!31280 BalanceConc!19100 BalanceConc!19100 BalanceConc!19100 BalanceConc!19102) tuple2!30802)

(assert (=> b!2703837 (= e!1704668 (= (lex!1964 thiss!12257 rules!1381 input!780) (lexTailRecV2!876 thiss!12257 rules!1381 input!780 (BalanceConc!19101 Empty!9743) input!780 (BalanceConc!19103 Empty!9744))))))

(declare-fun e!1704676 () Bool)

(assert (=> b!2703838 (= e!1704684 (and e!1704676 tp!855035))))

(declare-fun b!2703839 () Bool)

(declare-fun e!1704669 () Bool)

(assert (=> b!2703839 (= e!1704669 e!1704658)))

(declare-fun b!2703840 () Bool)

(declare-fun e!1704655 () Bool)

(declare-fun e!1704681 () Bool)

(assert (=> b!2703840 (= e!1704655 e!1704681)))

(declare-fun tp!855034 () Bool)

(declare-fun tp!855024 () Bool)

(declare-fun array_inv!4035 (array!12637) Bool)

(assert (=> b!2703841 (= e!1704681 (and tp!855033 tp!855034 tp!855024 (array_inv!4033 (_keys!3846 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) (array_inv!4035 (_values!3827 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) e!1704665))))

(assert (=> b!2703842 (= e!1704686 (and tp!855021 tp!855026))))

(declare-fun mapNonEmpty!16205 () Bool)

(declare-fun tp!855030 () Bool)

(declare-fun tp!855020 () Bool)

(assert (=> mapNonEmpty!16205 (= mapRes!16206 (and tp!855030 tp!855020))))

(declare-fun mapValue!16205 () List!31279)

(declare-fun mapRest!16205 () (Array (_ BitVec 32) List!31279))

(declare-fun mapKey!16205 () (_ BitVec 32))

(assert (=> mapNonEmpty!16205 (= (arr!5646 (_values!3828 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) (store mapRest!16205 mapKey!16205 mapValue!16205))))

(declare-fun b!2703843 () Bool)

(declare-fun res!1135483 () Bool)

(assert (=> b!2703843 (=> (not res!1135483) (not e!1704670))))

(declare-fun isEmpty!17760 (List!31275) Bool)

(assert (=> b!2703843 (= res!1135483 (isEmpty!17760 (list!11762 (_2!18027 lt!955682))))))

(declare-fun b!2703844 () Bool)

(declare-fun res!1135491 () Bool)

(assert (=> b!2703844 (=> (not res!1135491) (not e!1704674))))

(declare-fun isEmpty!17761 (List!31280) Bool)

(assert (=> b!2703844 (= res!1135491 (not (isEmpty!17761 rules!1381)))))

(declare-fun b!2703845 () Bool)

(declare-fun e!1704657 () Bool)

(declare-fun lt!955670 () MutLongMap!3547)

(assert (=> b!2703845 (= e!1704676 (and e!1704657 ((_ is LongMap!3547) lt!955670)))))

(assert (=> b!2703845 (= lt!955670 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))

(declare-fun b!2703846 () Bool)

(assert (=> b!2703846 (= e!1704659 (= (list!11762 (_2!18027 (_1!18033 lt!955658))) (list!11762 (_2!18027 lt!955681))))))

(declare-fun b!2703847 () Bool)

(assert (=> b!2703847 (= e!1704682 e!1704669)))

(declare-fun b!2703848 () Bool)

(assert (=> b!2703848 (= e!1704657 e!1704655)))

(declare-fun b!2703849 () Bool)

(declare-fun res!1135482 () Bool)

(assert (=> b!2703849 (=> (not res!1135482) (not e!1704671))))

(assert (=> b!2703849 (= res!1135482 (= (list!11762 (_2!18027 lt!955661)) (list!11762 (_2!18027 lt!955675))))))

(declare-fun mapNonEmpty!16206 () Bool)

(declare-fun tp!855032 () Bool)

(declare-fun tp!855039 () Bool)

(assert (=> mapNonEmpty!16206 (= mapRes!16205 (and tp!855032 tp!855039))))

(declare-fun mapValue!16206 () List!31278)

(declare-fun mapKey!16206 () (_ BitVec 32))

(declare-fun mapRest!16206 () (Array (_ BitVec 32) List!31278))

(assert (=> mapNonEmpty!16206 (= (arr!5645 (_values!3827 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) (store mapRest!16206 mapKey!16206 mapValue!16206))))

(assert (= (and start!262454 res!1135481) b!2703844))

(assert (= (and b!2703844 res!1135491) b!2703822))

(assert (= (and b!2703822 res!1135485) b!2703827))

(assert (= (and b!2703827 res!1135487) b!2703832))

(assert (= (and b!2703832 res!1135486) b!2703815))

(assert (= (and b!2703815 res!1135480) b!2703821))

(assert (= (and b!2703821 res!1135490) b!2703843))

(assert (= (and b!2703843 res!1135483) b!2703819))

(assert (= (and b!2703819 res!1135484) b!2703849))

(assert (= (and b!2703849 res!1135482) b!2703814))

(assert (= (and b!2703814 c!436279) b!2703831))

(assert (= (and b!2703814 (not c!436279)) b!2703813))

(assert (= (and b!2703831 res!1135479) b!2703811))

(assert (= (and b!2703831 c!436278) b!2703830))

(assert (= (and b!2703831 (not c!436278)) b!2703835))

(assert (= (and b!2703814 res!1135488) b!2703837))

(assert (= (and b!2703814 (not res!1135478)) b!2703823))

(assert (= (and b!2703823 res!1135489) b!2703846))

(assert (= start!262454 b!2703812))

(assert (= (and b!2703828 condMapEmpty!16205) mapIsEmpty!16206))

(assert (= (and b!2703828 (not condMapEmpty!16205)) mapNonEmpty!16205))

(assert (= b!2703818 b!2703828))

(assert (= b!2703839 b!2703818))

(assert (= b!2703847 b!2703839))

(assert (= (and b!2703816 ((_ is LongMap!3546) (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))) b!2703847))

(assert (= b!2703833 b!2703816))

(assert (= (and b!2703825 ((_ is HashMap!3452) (cache!3595 cacheUp!486))) b!2703833))

(assert (= start!262454 b!2703825))

(assert (= start!262454 b!2703826))

(assert (= start!262454 b!2703820))

(assert (= start!262454 b!2703834))

(assert (= b!2703829 b!2703842))

(assert (= b!2703836 b!2703829))

(assert (= (and start!262454 ((_ is Cons!31180) rules!1381)) b!2703836))

(assert (= (and b!2703824 condMapEmpty!16206) mapIsEmpty!16205))

(assert (= (and b!2703824 (not condMapEmpty!16206)) mapNonEmpty!16206))

(assert (= b!2703841 b!2703824))

(assert (= b!2703840 b!2703841))

(assert (= b!2703848 b!2703840))

(assert (= (and b!2703845 ((_ is LongMap!3547) (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))) b!2703848))

(assert (= b!2703838 b!2703845))

(assert (= (and b!2703817 ((_ is HashMap!3453) (cache!3596 cacheDown!499))) b!2703838))

(assert (= start!262454 b!2703817))

(declare-fun m!3092715 () Bool)

(assert (=> start!262454 m!3092715))

(declare-fun m!3092717 () Bool)

(assert (=> start!262454 m!3092717))

(declare-fun m!3092719 () Bool)

(assert (=> start!262454 m!3092719))

(declare-fun m!3092721 () Bool)

(assert (=> start!262454 m!3092721))

(declare-fun m!3092723 () Bool)

(assert (=> start!262454 m!3092723))

(declare-fun m!3092725 () Bool)

(assert (=> start!262454 m!3092725))

(declare-fun m!3092727 () Bool)

(assert (=> b!2703849 m!3092727))

(declare-fun m!3092729 () Bool)

(assert (=> b!2703849 m!3092729))

(declare-fun m!3092731 () Bool)

(assert (=> b!2703822 m!3092731))

(declare-fun m!3092733 () Bool)

(assert (=> b!2703818 m!3092733))

(declare-fun m!3092735 () Bool)

(assert (=> b!2703818 m!3092735))

(declare-fun m!3092737 () Bool)

(assert (=> b!2703821 m!3092737))

(declare-fun m!3092739 () Bool)

(assert (=> b!2703821 m!3092739))

(declare-fun m!3092741 () Bool)

(assert (=> b!2703821 m!3092741))

(declare-fun m!3092743 () Bool)

(assert (=> b!2703834 m!3092743))

(declare-fun m!3092745 () Bool)

(assert (=> b!2703826 m!3092745))

(declare-fun m!3092747 () Bool)

(assert (=> b!2703820 m!3092747))

(declare-fun m!3092749 () Bool)

(assert (=> b!2703843 m!3092749))

(assert (=> b!2703843 m!3092749))

(declare-fun m!3092751 () Bool)

(assert (=> b!2703843 m!3092751))

(declare-fun m!3092753 () Bool)

(assert (=> b!2703837 m!3092753))

(declare-fun m!3092755 () Bool)

(assert (=> b!2703837 m!3092755))

(declare-fun m!3092757 () Bool)

(assert (=> b!2703841 m!3092757))

(declare-fun m!3092759 () Bool)

(assert (=> b!2703841 m!3092759))

(declare-fun m!3092761 () Bool)

(assert (=> b!2703811 m!3092761))

(declare-fun m!3092763 () Bool)

(assert (=> b!2703831 m!3092763))

(declare-fun m!3092765 () Bool)

(assert (=> b!2703831 m!3092765))

(declare-fun m!3092767 () Bool)

(assert (=> b!2703831 m!3092767))

(declare-fun m!3092769 () Bool)

(assert (=> b!2703831 m!3092769))

(declare-fun m!3092771 () Bool)

(assert (=> b!2703831 m!3092771))

(declare-fun m!3092773 () Bool)

(assert (=> b!2703831 m!3092773))

(declare-fun m!3092775 () Bool)

(assert (=> b!2703831 m!3092775))

(declare-fun m!3092777 () Bool)

(assert (=> b!2703831 m!3092777))

(declare-fun m!3092779 () Bool)

(assert (=> b!2703831 m!3092779))

(declare-fun m!3092781 () Bool)

(assert (=> b!2703831 m!3092781))

(declare-fun m!3092783 () Bool)

(assert (=> b!2703831 m!3092783))

(declare-fun m!3092785 () Bool)

(assert (=> b!2703831 m!3092785))

(declare-fun m!3092787 () Bool)

(assert (=> b!2703831 m!3092787))

(assert (=> b!2703831 m!3092767))

(declare-fun m!3092789 () Bool)

(assert (=> b!2703831 m!3092789))

(declare-fun m!3092791 () Bool)

(assert (=> b!2703831 m!3092791))

(declare-fun m!3092793 () Bool)

(assert (=> b!2703831 m!3092793))

(declare-fun m!3092795 () Bool)

(assert (=> b!2703831 m!3092795))

(declare-fun m!3092797 () Bool)

(assert (=> b!2703831 m!3092797))

(declare-fun m!3092799 () Bool)

(assert (=> b!2703831 m!3092799))

(declare-fun m!3092801 () Bool)

(assert (=> b!2703831 m!3092801))

(assert (=> b!2703831 m!3092773))

(declare-fun m!3092803 () Bool)

(assert (=> b!2703831 m!3092803))

(assert (=> b!2703831 m!3092777))

(declare-fun m!3092805 () Bool)

(assert (=> b!2703831 m!3092805))

(declare-fun m!3092807 () Bool)

(assert (=> b!2703831 m!3092807))

(assert (=> b!2703831 m!3092781))

(declare-fun m!3092809 () Bool)

(assert (=> b!2703831 m!3092809))

(declare-fun m!3092811 () Bool)

(assert (=> b!2703823 m!3092811))

(declare-fun m!3092813 () Bool)

(assert (=> b!2703823 m!3092813))

(declare-fun m!3092815 () Bool)

(assert (=> b!2703823 m!3092815))

(declare-fun m!3092817 () Bool)

(assert (=> b!2703823 m!3092817))

(declare-fun m!3092819 () Bool)

(assert (=> b!2703823 m!3092819))

(assert (=> b!2703823 m!3092811))

(assert (=> b!2703823 m!3092819))

(assert (=> b!2703823 m!3092813))

(declare-fun m!3092821 () Bool)

(assert (=> b!2703823 m!3092821))

(declare-fun m!3092823 () Bool)

(assert (=> b!2703846 m!3092823))

(declare-fun m!3092825 () Bool)

(assert (=> b!2703846 m!3092825))

(declare-fun m!3092827 () Bool)

(assert (=> mapNonEmpty!16206 m!3092827))

(declare-fun m!3092829 () Bool)

(assert (=> b!2703829 m!3092829))

(declare-fun m!3092831 () Bool)

(assert (=> b!2703829 m!3092831))

(declare-fun m!3092833 () Bool)

(assert (=> b!2703830 m!3092833))

(declare-fun m!3092835 () Bool)

(assert (=> b!2703830 m!3092835))

(declare-fun m!3092837 () Bool)

(assert (=> b!2703815 m!3092837))

(declare-fun m!3092839 () Bool)

(assert (=> b!2703815 m!3092839))

(assert (=> b!2703815 m!3092839))

(declare-fun m!3092841 () Bool)

(assert (=> b!2703815 m!3092841))

(declare-fun m!3092843 () Bool)

(assert (=> b!2703815 m!3092843))

(declare-fun m!3092845 () Bool)

(assert (=> b!2703827 m!3092845))

(declare-fun m!3092847 () Bool)

(assert (=> b!2703814 m!3092847))

(declare-fun m!3092849 () Bool)

(assert (=> b!2703814 m!3092849))

(declare-fun m!3092851 () Bool)

(assert (=> b!2703814 m!3092851))

(declare-fun m!3092853 () Bool)

(assert (=> b!2703832 m!3092853))

(declare-fun m!3092855 () Bool)

(assert (=> b!2703844 m!3092855))

(declare-fun m!3092857 () Bool)

(assert (=> mapNonEmpty!16205 m!3092857))

(declare-fun m!3092859 () Bool)

(assert (=> b!2703812 m!3092859))

(declare-fun m!3092861 () Bool)

(assert (=> b!2703819 m!3092861))

(declare-fun m!3092863 () Bool)

(assert (=> b!2703819 m!3092863))

(declare-fun m!3092865 () Bool)

(assert (=> b!2703819 m!3092865))

(declare-fun m!3092867 () Bool)

(assert (=> b!2703819 m!3092867))

(declare-fun m!3092869 () Bool)

(assert (=> b!2703819 m!3092869))

(assert (=> b!2703819 m!3092867))

(check-sat (not b!2703815) (not b!2703844) (not b_next!77001) b_and!199723 (not start!262454) (not b!2703822) (not b_next!76995) (not b!2703823) (not b!2703849) b_and!199725 (not b!2703831) (not b!2703829) (not b!2703846) (not b!2703843) (not b!2703837) (not b_next!76999) b_and!199717 (not b!2703824) (not b!2703818) (not b!2703811) (not b!2703814) (not b!2703827) (not b_next!77003) (not b!2703821) b_and!199719 (not b!2703812) (not mapNonEmpty!16205) (not b_next!76993) (not b_next!76997) (not b!2703836) (not b!2703832) (not b!2703826) (not b!2703820) (not b!2703819) (not b!2703834) b_and!199721 (not b!2703828) b_and!199715 (not b!2703830) (not b!2703841) (not mapNonEmpty!16206))
(check-sat (not b_next!76999) b_and!199717 (not b_next!77001) b_and!199723 (not b_next!77003) b_and!199719 (not b_next!76995) b_and!199725 (not b_next!76997) (not b_next!76993) b_and!199721 b_and!199715)
(get-model)

(declare-fun b!2703864 () Bool)

(declare-fun e!1704699 () Bool)

(declare-fun lt!955691 () tuple2!30802)

(assert (=> b!2703864 (= e!1704699 (= (list!11762 (_2!18027 lt!955691)) (list!11762 input!780)))))

(declare-fun b!2703865 () Bool)

(declare-fun res!1135502 () Bool)

(declare-fun e!1704697 () Bool)

(assert (=> b!2703865 (=> (not res!1135502) (not e!1704697))))

(assert (=> b!2703865 (= res!1135502 (= (list!11763 (_1!18027 lt!955691)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 input!780)))))))

(declare-fun d!776885 () Bool)

(assert (=> d!776885 e!1704697))

(declare-fun res!1135503 () Bool)

(assert (=> d!776885 (=> (not res!1135503) (not e!1704697))))

(assert (=> d!776885 (= res!1135503 e!1704699)))

(declare-fun c!436287 () Bool)

(declare-fun size!24080 (BalanceConc!19102) Int)

(assert (=> d!776885 (= c!436287 (> (size!24080 (_1!18027 lt!955691)) 0))))

(declare-fun e!1704698 () tuple2!30802)

(assert (=> d!776885 (= lt!955691 e!1704698)))

(declare-fun c!436288 () Bool)

(declare-fun lt!955692 () Option!6151)

(assert (=> d!776885 (= c!436288 ((_ is Some!6150) lt!955692))))

(assert (=> d!776885 (= lt!955692 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780))))

(assert (=> d!776885 (= (lexRec!615 thiss!12257 rules!1381 input!780) lt!955691)))

(declare-fun b!2703866 () Bool)

(declare-fun e!1704696 () Bool)

(declare-fun isEmpty!17762 (BalanceConc!19102) Bool)

(assert (=> b!2703866 (= e!1704696 (not (isEmpty!17762 (_1!18027 lt!955691))))))

(declare-fun b!2703867 () Bool)

(declare-fun lt!955690 () tuple2!30802)

(assert (=> b!2703867 (= e!1704698 (tuple2!30803 (prepend!1089 (_1!18027 lt!955690) (_1!18026 (v!32944 lt!955692))) (_2!18027 lt!955690)))))

(assert (=> b!2703867 (= lt!955690 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955692))))))

(declare-fun b!2703868 () Bool)

(assert (=> b!2703868 (= e!1704699 e!1704696)))

(declare-fun res!1135504 () Bool)

(declare-fun size!24081 (BalanceConc!19100) Int)

(assert (=> b!2703868 (= res!1135504 (< (size!24081 (_2!18027 lt!955691)) (size!24081 input!780)))))

(assert (=> b!2703868 (=> (not res!1135504) (not e!1704696))))

(declare-fun b!2703869 () Bool)

(assert (=> b!2703869 (= e!1704698 (tuple2!30803 (BalanceConc!19103 Empty!9744) input!780))))

(declare-fun b!2703870 () Bool)

(assert (=> b!2703870 (= e!1704697 (= (list!11762 (_2!18027 lt!955691)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 input!780)))))))

(assert (= (and d!776885 c!436288) b!2703867))

(assert (= (and d!776885 (not c!436288)) b!2703869))

(assert (= (and d!776885 c!436287) b!2703868))

(assert (= (and d!776885 (not c!436287)) b!2703864))

(assert (= (and b!2703868 res!1135504) b!2703866))

(assert (= (and d!776885 res!1135503) b!2703865))

(assert (= (and b!2703865 res!1135502) b!2703870))

(declare-fun m!3092871 () Bool)

(assert (=> b!2703866 m!3092871))

(declare-fun m!3092873 () Bool)

(assert (=> b!2703865 m!3092873))

(assert (=> b!2703865 m!3092839))

(assert (=> b!2703865 m!3092839))

(declare-fun m!3092875 () Bool)

(assert (=> b!2703865 m!3092875))

(declare-fun m!3092877 () Bool)

(assert (=> b!2703868 m!3092877))

(declare-fun m!3092879 () Bool)

(assert (=> b!2703868 m!3092879))

(declare-fun m!3092881 () Bool)

(assert (=> b!2703864 m!3092881))

(assert (=> b!2703864 m!3092839))

(assert (=> b!2703870 m!3092881))

(assert (=> b!2703870 m!3092839))

(assert (=> b!2703870 m!3092839))

(assert (=> b!2703870 m!3092875))

(declare-fun m!3092883 () Bool)

(assert (=> b!2703867 m!3092883))

(declare-fun m!3092885 () Bool)

(assert (=> b!2703867 m!3092885))

(declare-fun m!3092887 () Bool)

(assert (=> d!776885 m!3092887))

(assert (=> d!776885 m!3092851))

(assert (=> b!2703819 d!776885))

(declare-fun b!2703871 () Bool)

(declare-fun e!1704703 () Bool)

(declare-fun lt!955694 () tuple2!30802)

(assert (=> b!2703871 (= e!1704703 (= (list!11762 (_2!18027 lt!955694)) (list!11762 totalInput!354)))))

(declare-fun b!2703872 () Bool)

(declare-fun res!1135505 () Bool)

(declare-fun e!1704701 () Bool)

(assert (=> b!2703872 (=> (not res!1135505) (not e!1704701))))

(assert (=> b!2703872 (= res!1135505 (= (list!11763 (_1!18027 lt!955694)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 totalInput!354)))))))

(declare-fun d!776887 () Bool)

(assert (=> d!776887 e!1704701))

(declare-fun res!1135506 () Bool)

(assert (=> d!776887 (=> (not res!1135506) (not e!1704701))))

(assert (=> d!776887 (= res!1135506 e!1704703)))

(declare-fun c!436289 () Bool)

(assert (=> d!776887 (= c!436289 (> (size!24080 (_1!18027 lt!955694)) 0))))

(declare-fun e!1704702 () tuple2!30802)

(assert (=> d!776887 (= lt!955694 e!1704702)))

(declare-fun c!436290 () Bool)

(declare-fun lt!955695 () Option!6151)

(assert (=> d!776887 (= c!436290 ((_ is Some!6150) lt!955695))))

(assert (=> d!776887 (= lt!955695 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!776887 (= (lexRec!615 thiss!12257 rules!1381 totalInput!354) lt!955694)))

(declare-fun b!2703873 () Bool)

(declare-fun e!1704700 () Bool)

(assert (=> b!2703873 (= e!1704700 (not (isEmpty!17762 (_1!18027 lt!955694))))))

(declare-fun b!2703874 () Bool)

(declare-fun lt!955693 () tuple2!30802)

(assert (=> b!2703874 (= e!1704702 (tuple2!30803 (prepend!1089 (_1!18027 lt!955693) (_1!18026 (v!32944 lt!955695))) (_2!18027 lt!955693)))))

(assert (=> b!2703874 (= lt!955693 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955695))))))

(declare-fun b!2703875 () Bool)

(assert (=> b!2703875 (= e!1704703 e!1704700)))

(declare-fun res!1135507 () Bool)

(assert (=> b!2703875 (= res!1135507 (< (size!24081 (_2!18027 lt!955694)) (size!24081 totalInput!354)))))

(assert (=> b!2703875 (=> (not res!1135507) (not e!1704700))))

(declare-fun b!2703876 () Bool)

(assert (=> b!2703876 (= e!1704702 (tuple2!30803 (BalanceConc!19103 Empty!9744) totalInput!354))))

(declare-fun b!2703877 () Bool)

(assert (=> b!2703877 (= e!1704701 (= (list!11762 (_2!18027 lt!955694)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 totalInput!354)))))))

(assert (= (and d!776887 c!436290) b!2703874))

(assert (= (and d!776887 (not c!436290)) b!2703876))

(assert (= (and d!776887 c!436289) b!2703875))

(assert (= (and d!776887 (not c!436289)) b!2703871))

(assert (= (and b!2703875 res!1135507) b!2703873))

(assert (= (and d!776887 res!1135506) b!2703872))

(assert (= (and b!2703872 res!1135505) b!2703877))

(declare-fun m!3092889 () Bool)

(assert (=> b!2703873 m!3092889))

(declare-fun m!3092891 () Bool)

(assert (=> b!2703872 m!3092891))

(assert (=> b!2703872 m!3092837))

(assert (=> b!2703872 m!3092837))

(declare-fun m!3092893 () Bool)

(assert (=> b!2703872 m!3092893))

(declare-fun m!3092895 () Bool)

(assert (=> b!2703875 m!3092895))

(declare-fun m!3092897 () Bool)

(assert (=> b!2703875 m!3092897))

(declare-fun m!3092899 () Bool)

(assert (=> b!2703871 m!3092899))

(assert (=> b!2703871 m!3092837))

(assert (=> b!2703877 m!3092899))

(assert (=> b!2703877 m!3092837))

(assert (=> b!2703877 m!3092837))

(assert (=> b!2703877 m!3092893))

(declare-fun m!3092901 () Bool)

(assert (=> b!2703874 m!3092901))

(declare-fun m!3092903 () Bool)

(assert (=> b!2703874 m!3092903))

(declare-fun m!3092905 () Bool)

(assert (=> d!776887 m!3092905))

(declare-fun m!3092907 () Bool)

(assert (=> d!776887 m!3092907))

(assert (=> b!2703819 d!776887))

(declare-fun d!776889 () Bool)

(declare-fun list!11764 (Conc!9744) List!31276)

(assert (=> d!776889 (= (list!11763 (++!7659 acc!348 (_1!18027 lt!955675))) (list!11764 (c!436282 (++!7659 acc!348 (_1!18027 lt!955675)))))))

(declare-fun bs!487221 () Bool)

(assert (= bs!487221 d!776889))

(declare-fun m!3092909 () Bool)

(assert (=> bs!487221 m!3092909))

(assert (=> b!2703819 d!776889))

(declare-fun d!776891 () Bool)

(assert (=> d!776891 (= (list!11763 (_1!18027 lt!955661)) (list!11764 (c!436282 (_1!18027 lt!955661))))))

(declare-fun bs!487222 () Bool)

(assert (= bs!487222 d!776891))

(declare-fun m!3092911 () Bool)

(assert (=> bs!487222 m!3092911))

(assert (=> b!2703819 d!776891))

(declare-fun b!2703887 () Bool)

(declare-fun res!1135517 () Bool)

(declare-fun e!1704706 () Bool)

(assert (=> b!2703887 (=> (not res!1135517) (not e!1704706))))

(declare-fun height!1431 (Conc!9744) Int)

(declare-fun ++!7662 (Conc!9744 Conc!9744) Conc!9744)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2703887 (= res!1135517 (<= (height!1431 (++!7662 (c!436282 acc!348) (c!436282 (_1!18027 lt!955675)))) (+ (max!0 (height!1431 (c!436282 acc!348)) (height!1431 (c!436282 (_1!18027 lt!955675)))) 1)))))

(declare-fun d!776893 () Bool)

(assert (=> d!776893 e!1704706))

(declare-fun res!1135519 () Bool)

(assert (=> d!776893 (=> (not res!1135519) (not e!1704706))))

(declare-fun appendAssocInst!670 (Conc!9744 Conc!9744) Bool)

(assert (=> d!776893 (= res!1135519 (appendAssocInst!670 (c!436282 acc!348) (c!436282 (_1!18027 lt!955675))))))

(declare-fun lt!955698 () BalanceConc!19102)

(assert (=> d!776893 (= lt!955698 (BalanceConc!19103 (++!7662 (c!436282 acc!348) (c!436282 (_1!18027 lt!955675)))))))

(assert (=> d!776893 (= (++!7659 acc!348 (_1!18027 lt!955675)) lt!955698)))

(declare-fun b!2703889 () Bool)

(assert (=> b!2703889 (= e!1704706 (= (list!11763 lt!955698) (++!7661 (list!11763 acc!348) (list!11763 (_1!18027 lt!955675)))))))

(declare-fun b!2703886 () Bool)

(declare-fun res!1135516 () Bool)

(assert (=> b!2703886 (=> (not res!1135516) (not e!1704706))))

(declare-fun isBalanced!2949 (Conc!9744) Bool)

(assert (=> b!2703886 (= res!1135516 (isBalanced!2949 (++!7662 (c!436282 acc!348) (c!436282 (_1!18027 lt!955675)))))))

(declare-fun b!2703888 () Bool)

(declare-fun res!1135518 () Bool)

(assert (=> b!2703888 (=> (not res!1135518) (not e!1704706))))

(assert (=> b!2703888 (= res!1135518 (>= (height!1431 (++!7662 (c!436282 acc!348) (c!436282 (_1!18027 lt!955675)))) (max!0 (height!1431 (c!436282 acc!348)) (height!1431 (c!436282 (_1!18027 lt!955675))))))))

(assert (= (and d!776893 res!1135519) b!2703886))

(assert (= (and b!2703886 res!1135516) b!2703887))

(assert (= (and b!2703887 res!1135517) b!2703888))

(assert (= (and b!2703888 res!1135518) b!2703889))

(declare-fun m!3092913 () Bool)

(assert (=> b!2703888 m!3092913))

(declare-fun m!3092915 () Bool)

(assert (=> b!2703888 m!3092915))

(declare-fun m!3092917 () Bool)

(assert (=> b!2703888 m!3092917))

(assert (=> b!2703888 m!3092917))

(declare-fun m!3092919 () Bool)

(assert (=> b!2703888 m!3092919))

(declare-fun m!3092921 () Bool)

(assert (=> b!2703888 m!3092921))

(assert (=> b!2703888 m!3092919))

(assert (=> b!2703888 m!3092913))

(declare-fun m!3092923 () Bool)

(assert (=> b!2703889 m!3092923))

(assert (=> b!2703889 m!3092737))

(declare-fun m!3092925 () Bool)

(assert (=> b!2703889 m!3092925))

(assert (=> b!2703889 m!3092737))

(assert (=> b!2703889 m!3092925))

(declare-fun m!3092927 () Bool)

(assert (=> b!2703889 m!3092927))

(assert (=> b!2703886 m!3092913))

(assert (=> b!2703886 m!3092913))

(declare-fun m!3092929 () Bool)

(assert (=> b!2703886 m!3092929))

(assert (=> b!2703887 m!3092913))

(assert (=> b!2703887 m!3092915))

(assert (=> b!2703887 m!3092917))

(assert (=> b!2703887 m!3092917))

(assert (=> b!2703887 m!3092919))

(assert (=> b!2703887 m!3092921))

(assert (=> b!2703887 m!3092919))

(assert (=> b!2703887 m!3092913))

(declare-fun m!3092931 () Bool)

(assert (=> d!776893 m!3092931))

(assert (=> d!776893 m!3092913))

(assert (=> b!2703819 d!776893))

(declare-fun d!776895 () Bool)

(assert (=> d!776895 (= (array_inv!4033 (_keys!3847 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) (bvsge (size!24077 (_keys!3847 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2703818 d!776895))

(declare-fun d!776897 () Bool)

(assert (=> d!776897 (= (array_inv!4034 (_values!3828 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) (bvsge (size!24079 (_values!3828 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2703818 d!776897))

(declare-fun e!1704713 () Bool)

(declare-fun b!2703900 () Bool)

(declare-fun lt!955701 () tuple2!30802)

(assert (=> b!2703900 (= e!1704713 (= (list!11762 (_2!18027 lt!955701)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 input!780)))))))

(declare-fun b!2703901 () Bool)

(declare-fun e!1704714 () Bool)

(declare-fun e!1704715 () Bool)

(assert (=> b!2703901 (= e!1704714 e!1704715)))

(declare-fun res!1135528 () Bool)

(assert (=> b!2703901 (= res!1135528 (< (size!24081 (_2!18027 lt!955701)) (size!24081 input!780)))))

(assert (=> b!2703901 (=> (not res!1135528) (not e!1704715))))

(declare-fun d!776899 () Bool)

(assert (=> d!776899 e!1704713))

(declare-fun res!1135527 () Bool)

(assert (=> d!776899 (=> (not res!1135527) (not e!1704713))))

(assert (=> d!776899 (= res!1135527 e!1704714)))

(declare-fun c!436296 () Bool)

(assert (=> d!776899 (= c!436296 (> (size!24080 (_1!18027 lt!955701)) 0))))

(assert (=> d!776899 (= lt!955701 (lexTailRecV2!876 thiss!12257 rules!1381 input!780 (BalanceConc!19101 Empty!9743) input!780 (BalanceConc!19103 Empty!9744)))))

(assert (=> d!776899 (= (lex!1964 thiss!12257 rules!1381 input!780) lt!955701)))

(declare-fun b!2703902 () Bool)

(assert (=> b!2703902 (= e!1704715 (not (isEmpty!17762 (_1!18027 lt!955701))))))

(declare-fun b!2703903 () Bool)

(assert (=> b!2703903 (= e!1704714 (= (_2!18027 lt!955701) input!780))))

(declare-fun b!2703904 () Bool)

(declare-fun res!1135526 () Bool)

(assert (=> b!2703904 (=> (not res!1135526) (not e!1704713))))

(assert (=> b!2703904 (= res!1135526 (= (list!11763 (_1!18027 lt!955701)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 input!780)))))))

(assert (= (and d!776899 c!436296) b!2703901))

(assert (= (and d!776899 (not c!436296)) b!2703903))

(assert (= (and b!2703901 res!1135528) b!2703902))

(assert (= (and d!776899 res!1135527) b!2703904))

(assert (= (and b!2703904 res!1135526) b!2703900))

(declare-fun m!3092933 () Bool)

(assert (=> b!2703900 m!3092933))

(assert (=> b!2703900 m!3092839))

(assert (=> b!2703900 m!3092839))

(assert (=> b!2703900 m!3092875))

(declare-fun m!3092935 () Bool)

(assert (=> b!2703901 m!3092935))

(assert (=> b!2703901 m!3092879))

(declare-fun m!3092937 () Bool)

(assert (=> d!776899 m!3092937))

(assert (=> d!776899 m!3092755))

(declare-fun m!3092939 () Bool)

(assert (=> b!2703902 m!3092939))

(declare-fun m!3092941 () Bool)

(assert (=> b!2703904 m!3092941))

(assert (=> b!2703904 m!3092839))

(assert (=> b!2703904 m!3092839))

(assert (=> b!2703904 m!3092875))

(assert (=> b!2703837 d!776899))

(declare-fun d!776901 () Bool)

(declare-fun e!1704725 () Bool)

(assert (=> d!776901 e!1704725))

(declare-fun res!1135531 () Bool)

(assert (=> d!776901 (=> (not res!1135531) (not e!1704725))))

(declare-fun lt!955790 () tuple2!30802)

(assert (=> d!776901 (= res!1135531 (= (list!11763 (_1!18027 lt!955790)) (list!11763 (_1!18027 (lexRec!615 thiss!12257 rules!1381 input!780)))))))

(declare-fun e!1704726 () tuple2!30802)

(assert (=> d!776901 (= lt!955790 e!1704726)))

(declare-fun c!436305 () Bool)

(declare-fun lt!955771 () Option!6151)

(assert (=> d!776901 (= c!436305 ((_ is Some!6150) lt!955771))))

(declare-fun maxPrefixZipperSequenceV2!457 (LexerInterface!4353 List!31280 BalanceConc!19100 BalanceConc!19100) Option!6151)

(assert (=> d!776901 (= lt!955771 (maxPrefixZipperSequenceV2!457 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!955774 () Unit!45259)

(declare-fun lt!955794 () Unit!45259)

(assert (=> d!776901 (= lt!955774 lt!955794)))

(declare-fun lt!955778 () List!31275)

(declare-fun lt!955772 () List!31275)

(declare-fun isSuffix!832 (List!31275 List!31275) Bool)

(assert (=> d!776901 (isSuffix!832 lt!955778 (++!7658 lt!955772 lt!955778))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!517 (List!31275 List!31275) Unit!45259)

(assert (=> d!776901 (= lt!955794 (lemmaConcatTwoListThenFSndIsSuffix!517 lt!955772 lt!955778))))

(assert (=> d!776901 (= lt!955778 (list!11762 input!780))))

(assert (=> d!776901 (= lt!955772 (list!11762 (BalanceConc!19101 Empty!9743)))))

(assert (=> d!776901 (= (lexTailRecV2!876 thiss!12257 rules!1381 input!780 (BalanceConc!19101 Empty!9743) input!780 (BalanceConc!19103 Empty!9744)) lt!955790)))

(declare-fun b!2703919 () Bool)

(declare-fun lt!955787 () Option!6151)

(declare-fun lt!955783 () tuple2!30802)

(assert (=> b!2703919 (= lt!955783 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955787))))))

(declare-fun e!1704727 () tuple2!30802)

(assert (=> b!2703919 (= e!1704727 (tuple2!30803 (prepend!1089 (_1!18027 lt!955783) (_1!18026 (v!32944 lt!955787))) (_2!18027 lt!955783)))))

(declare-fun b!2703920 () Bool)

(assert (=> b!2703920 (= e!1704725 (= (list!11762 (_2!18027 lt!955790)) (list!11762 (_2!18027 (lexRec!615 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2703921 () Bool)

(declare-fun e!1704724 () tuple2!30802)

(declare-fun lt!955780 () BalanceConc!19100)

(assert (=> b!2703921 (= e!1704724 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!955780))))

(declare-fun lt!955788 () tuple2!30802)

(declare-fun lt!955796 () Option!6151)

(declare-fun b!2703922 () Bool)

(assert (=> b!2703922 (= lt!955788 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955796))))))

(assert (=> b!2703922 (= e!1704724 (tuple2!30803 (prepend!1089 (_1!18027 lt!955788) (_1!18026 (v!32944 lt!955796))) (_2!18027 lt!955788)))))

(declare-fun b!2703923 () Bool)

(assert (=> b!2703923 (= e!1704727 (tuple2!30803 (BalanceConc!19103 Empty!9744) input!780))))

(declare-fun b!2703924 () Bool)

(assert (=> b!2703924 (= e!1704726 (tuple2!30803 (BalanceConc!19103 Empty!9744) input!780))))

(declare-fun b!2703925 () Bool)

(declare-fun lt!955795 () BalanceConc!19100)

(assert (=> b!2703925 (= e!1704726 (lexTailRecV2!876 thiss!12257 rules!1381 input!780 lt!955795 (_2!18026 (v!32944 lt!955771)) (append!782 (BalanceConc!19103 Empty!9744) (_1!18026 (v!32944 lt!955771)))))))

(declare-fun lt!955800 () tuple2!30802)

(assert (=> b!2703925 (= lt!955800 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955771))))))

(declare-fun lt!955779 () List!31275)

(assert (=> b!2703925 (= lt!955779 (list!11762 (BalanceConc!19101 Empty!9743)))))

(declare-fun lt!955791 () List!31275)

(assert (=> b!2703925 (= lt!955791 (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955771)))))))

(declare-fun lt!955777 () List!31275)

(assert (=> b!2703925 (= lt!955777 (list!11762 (_2!18026 (v!32944 lt!955771))))))

(declare-fun lt!955799 () Unit!45259)

(assert (=> b!2703925 (= lt!955799 (lemmaConcatAssociativity!1565 lt!955779 lt!955791 lt!955777))))

(assert (=> b!2703925 (= (++!7658 (++!7658 lt!955779 lt!955791) lt!955777) (++!7658 lt!955779 (++!7658 lt!955791 lt!955777)))))

(declare-fun lt!955789 () Unit!45259)

(assert (=> b!2703925 (= lt!955789 lt!955799)))

(assert (=> b!2703925 (= lt!955787 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780))))

(declare-fun c!436304 () Bool)

(assert (=> b!2703925 (= c!436304 ((_ is Some!6150) lt!955787))))

(assert (=> b!2703925 (= (lexRec!615 thiss!12257 rules!1381 input!780) e!1704727)))

(declare-fun lt!955798 () Unit!45259)

(declare-fun Unit!45261 () Unit!45259)

(assert (=> b!2703925 (= lt!955798 Unit!45261)))

(declare-fun lt!955801 () List!31276)

(assert (=> b!2703925 (= lt!955801 (list!11763 (BalanceConc!19103 Empty!9744)))))

(declare-fun lt!955773 () List!31276)

(assert (=> b!2703925 (= lt!955773 (Cons!31176 (_1!18026 (v!32944 lt!955771)) Nil!31176))))

(declare-fun lt!955776 () List!31276)

(assert (=> b!2703925 (= lt!955776 (list!11763 (_1!18027 lt!955800)))))

(declare-fun lt!955781 () Unit!45259)

(assert (=> b!2703925 (= lt!955781 (lemmaConcatAssociativity!1566 lt!955801 lt!955773 lt!955776))))

(assert (=> b!2703925 (= (++!7661 (++!7661 lt!955801 lt!955773) lt!955776) (++!7661 lt!955801 (++!7661 lt!955773 lt!955776)))))

(declare-fun lt!955797 () Unit!45259)

(assert (=> b!2703925 (= lt!955797 lt!955781)))

(declare-fun lt!955793 () List!31275)

(assert (=> b!2703925 (= lt!955793 (++!7658 (list!11762 (BalanceConc!19101 Empty!9743)) (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955771))))))))

(declare-fun lt!955803 () List!31275)

(assert (=> b!2703925 (= lt!955803 (list!11762 (_2!18026 (v!32944 lt!955771))))))

(declare-fun lt!955782 () List!31276)

(assert (=> b!2703925 (= lt!955782 (list!11763 (append!782 (BalanceConc!19103 Empty!9744) (_1!18026 (v!32944 lt!955771)))))))

(declare-fun lt!955784 () Unit!45259)

(assert (=> b!2703925 (= lt!955784 (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!955793 lt!955803 lt!955782 (list!11763 (_1!18027 lt!955800)) (list!11762 (_2!18027 lt!955800))))))

(assert (=> b!2703925 (= (lexList!1200 thiss!12257 rules!1381 lt!955793) (tuple2!30811 lt!955782 Nil!31175))))

(declare-fun lt!955785 () Unit!45259)

(assert (=> b!2703925 (= lt!955785 lt!955784)))

(assert (=> b!2703925 (= lt!955780 (++!7660 (BalanceConc!19101 Empty!9743) (charsOf!2996 (_1!18026 (v!32944 lt!955771)))))))

(assert (=> b!2703925 (= lt!955796 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955780))))

(declare-fun c!436303 () Bool)

(assert (=> b!2703925 (= c!436303 ((_ is Some!6150) lt!955796))))

(assert (=> b!2703925 (= (lexRec!615 thiss!12257 rules!1381 (++!7660 (BalanceConc!19101 Empty!9743) (charsOf!2996 (_1!18026 (v!32944 lt!955771))))) e!1704724)))

(declare-fun lt!955802 () Unit!45259)

(declare-fun Unit!45262 () Unit!45259)

(assert (=> b!2703925 (= lt!955802 Unit!45262)))

(assert (=> b!2703925 (= lt!955795 (++!7660 (BalanceConc!19101 Empty!9743) (charsOf!2996 (_1!18026 (v!32944 lt!955771)))))))

(declare-fun lt!955775 () List!31275)

(assert (=> b!2703925 (= lt!955775 (list!11762 lt!955795))))

(declare-fun lt!955786 () List!31275)

(assert (=> b!2703925 (= lt!955786 (list!11762 (_2!18026 (v!32944 lt!955771))))))

(declare-fun lt!955770 () Unit!45259)

(assert (=> b!2703925 (= lt!955770 (lemmaConcatTwoListThenFSndIsSuffix!517 lt!955775 lt!955786))))

(assert (=> b!2703925 (isSuffix!832 lt!955786 (++!7658 lt!955775 lt!955786))))

(declare-fun lt!955792 () Unit!45259)

(assert (=> b!2703925 (= lt!955792 lt!955770)))

(assert (= (and d!776901 c!436305) b!2703925))

(assert (= (and d!776901 (not c!436305)) b!2703924))

(assert (= (and b!2703925 c!436304) b!2703919))

(assert (= (and b!2703925 (not c!436304)) b!2703923))

(assert (= (and b!2703925 c!436303) b!2703922))

(assert (= (and b!2703925 (not c!436303)) b!2703921))

(assert (= (and d!776901 res!1135531) b!2703920))

(declare-fun m!3092943 () Bool)

(assert (=> d!776901 m!3092943))

(declare-fun m!3092945 () Bool)

(assert (=> d!776901 m!3092945))

(declare-fun m!3092947 () Bool)

(assert (=> d!776901 m!3092947))

(declare-fun m!3092949 () Bool)

(assert (=> d!776901 m!3092949))

(declare-fun m!3092951 () Bool)

(assert (=> d!776901 m!3092951))

(assert (=> d!776901 m!3092949))

(declare-fun m!3092953 () Bool)

(assert (=> d!776901 m!3092953))

(assert (=> d!776901 m!3092839))

(assert (=> d!776901 m!3092865))

(declare-fun m!3092955 () Bool)

(assert (=> d!776901 m!3092955))

(declare-fun m!3092957 () Bool)

(assert (=> b!2703925 m!3092957))

(assert (=> b!2703925 m!3092955))

(declare-fun m!3092959 () Bool)

(assert (=> b!2703925 m!3092959))

(assert (=> b!2703925 m!3092959))

(declare-fun m!3092961 () Bool)

(assert (=> b!2703925 m!3092961))

(declare-fun m!3092963 () Bool)

(assert (=> b!2703925 m!3092963))

(declare-fun m!3092965 () Bool)

(assert (=> b!2703925 m!3092965))

(assert (=> b!2703925 m!3092955))

(declare-fun m!3092967 () Bool)

(assert (=> b!2703925 m!3092967))

(declare-fun m!3092969 () Bool)

(assert (=> b!2703925 m!3092969))

(declare-fun m!3092971 () Bool)

(assert (=> b!2703925 m!3092971))

(assert (=> b!2703925 m!3092967))

(declare-fun m!3092973 () Bool)

(assert (=> b!2703925 m!3092973))

(declare-fun m!3092975 () Bool)

(assert (=> b!2703925 m!3092975))

(declare-fun m!3092977 () Bool)

(assert (=> b!2703925 m!3092977))

(declare-fun m!3092979 () Bool)

(assert (=> b!2703925 m!3092979))

(declare-fun m!3092981 () Bool)

(assert (=> b!2703925 m!3092981))

(declare-fun m!3092983 () Bool)

(assert (=> b!2703925 m!3092983))

(declare-fun m!3092985 () Bool)

(assert (=> b!2703925 m!3092985))

(declare-fun m!3092987 () Bool)

(assert (=> b!2703925 m!3092987))

(declare-fun m!3092989 () Bool)

(assert (=> b!2703925 m!3092989))

(declare-fun m!3092991 () Bool)

(assert (=> b!2703925 m!3092991))

(declare-fun m!3092993 () Bool)

(assert (=> b!2703925 m!3092993))

(assert (=> b!2703925 m!3092985))

(declare-fun m!3092995 () Bool)

(assert (=> b!2703925 m!3092995))

(declare-fun m!3092997 () Bool)

(assert (=> b!2703925 m!3092997))

(declare-fun m!3092999 () Bool)

(assert (=> b!2703925 m!3092999))

(assert (=> b!2703925 m!3092991))

(declare-fun m!3093001 () Bool)

(assert (=> b!2703925 m!3093001))

(declare-fun m!3093003 () Bool)

(assert (=> b!2703925 m!3093003))

(declare-fun m!3093005 () Bool)

(assert (=> b!2703925 m!3093005))

(declare-fun m!3093007 () Bool)

(assert (=> b!2703925 m!3093007))

(declare-fun m!3093009 () Bool)

(assert (=> b!2703925 m!3093009))

(assert (=> b!2703925 m!3092973))

(declare-fun m!3093011 () Bool)

(assert (=> b!2703925 m!3093011))

(assert (=> b!2703925 m!3092851))

(assert (=> b!2703925 m!3093001))

(assert (=> b!2703925 m!3092971))

(assert (=> b!2703925 m!3092977))

(assert (=> b!2703925 m!3092971))

(assert (=> b!2703925 m!3092963))

(assert (=> b!2703925 m!3092987))

(declare-fun m!3093013 () Bool)

(assert (=> b!2703925 m!3093013))

(assert (=> b!2703925 m!3092973))

(assert (=> b!2703925 m!3092995))

(declare-fun m!3093015 () Bool)

(assert (=> b!2703925 m!3093015))

(assert (=> b!2703925 m!3092865))

(declare-fun m!3093017 () Bool)

(assert (=> b!2703919 m!3093017))

(declare-fun m!3093019 () Bool)

(assert (=> b!2703919 m!3093019))

(declare-fun m!3093021 () Bool)

(assert (=> b!2703920 m!3093021))

(assert (=> b!2703920 m!3092865))

(declare-fun m!3093023 () Bool)

(assert (=> b!2703920 m!3093023))

(declare-fun m!3093025 () Bool)

(assert (=> b!2703922 m!3093025))

(declare-fun m!3093027 () Bool)

(assert (=> b!2703922 m!3093027))

(assert (=> b!2703837 d!776901))

(declare-fun d!776903 () Bool)

(declare-fun c!436308 () Bool)

(assert (=> d!776903 (= c!436308 ((_ is Node!9743) (c!436281 treated!26)))))

(declare-fun e!1704732 () Bool)

(assert (=> d!776903 (= (inv!42236 (c!436281 treated!26)) e!1704732)))

(declare-fun b!2703932 () Bool)

(declare-fun inv!42243 (Conc!9743) Bool)

(assert (=> b!2703932 (= e!1704732 (inv!42243 (c!436281 treated!26)))))

(declare-fun b!2703933 () Bool)

(declare-fun e!1704733 () Bool)

(assert (=> b!2703933 (= e!1704732 e!1704733)))

(declare-fun res!1135534 () Bool)

(assert (=> b!2703933 (= res!1135534 (not ((_ is Leaf!14866) (c!436281 treated!26))))))

(assert (=> b!2703933 (=> res!1135534 e!1704733)))

(declare-fun b!2703934 () Bool)

(declare-fun inv!42244 (Conc!9743) Bool)

(assert (=> b!2703934 (= e!1704733 (inv!42244 (c!436281 treated!26)))))

(assert (= (and d!776903 c!436308) b!2703932))

(assert (= (and d!776903 (not c!436308)) b!2703933))

(assert (= (and b!2703933 (not res!1135534)) b!2703934))

(declare-fun m!3093029 () Bool)

(assert (=> b!2703932 m!3093029))

(declare-fun m!3093031 () Bool)

(assert (=> b!2703934 m!3093031))

(assert (=> b!2703834 d!776903))

(declare-fun d!776905 () Bool)

(declare-fun list!11765 (Conc!9743) List!31275)

(assert (=> d!776905 (= (list!11762 totalInput!354) (list!11765 (c!436281 totalInput!354)))))

(declare-fun bs!487223 () Bool)

(assert (= bs!487223 d!776905))

(declare-fun m!3093033 () Bool)

(assert (=> bs!487223 m!3093033))

(assert (=> b!2703815 d!776905))

(declare-fun d!776907 () Bool)

(declare-fun e!1704738 () Bool)

(assert (=> d!776907 e!1704738))

(declare-fun res!1135539 () Bool)

(assert (=> d!776907 (=> (not res!1135539) (not e!1704738))))

(declare-fun lt!955806 () List!31275)

(declare-fun content!4414 (List!31275) (InoxSet C!15976))

(assert (=> d!776907 (= res!1135539 (= (content!4414 lt!955806) ((_ map or) (content!4414 lt!955659) (content!4414 (list!11762 input!780)))))))

(declare-fun e!1704739 () List!31275)

(assert (=> d!776907 (= lt!955806 e!1704739)))

(declare-fun c!436311 () Bool)

(assert (=> d!776907 (= c!436311 ((_ is Nil!31175) lt!955659))))

(assert (=> d!776907 (= (++!7658 lt!955659 (list!11762 input!780)) lt!955806)))

(declare-fun b!2703944 () Bool)

(assert (=> b!2703944 (= e!1704739 (Cons!31175 (h!36595 lt!955659) (++!7658 (t!225701 lt!955659) (list!11762 input!780))))))

(declare-fun b!2703946 () Bool)

(assert (=> b!2703946 (= e!1704738 (or (not (= (list!11762 input!780) Nil!31175)) (= lt!955806 lt!955659)))))

(declare-fun b!2703945 () Bool)

(declare-fun res!1135540 () Bool)

(assert (=> b!2703945 (=> (not res!1135540) (not e!1704738))))

(declare-fun size!24082 (List!31275) Int)

(assert (=> b!2703945 (= res!1135540 (= (size!24082 lt!955806) (+ (size!24082 lt!955659) (size!24082 (list!11762 input!780)))))))

(declare-fun b!2703943 () Bool)

(assert (=> b!2703943 (= e!1704739 (list!11762 input!780))))

(assert (= (and d!776907 c!436311) b!2703943))

(assert (= (and d!776907 (not c!436311)) b!2703944))

(assert (= (and d!776907 res!1135539) b!2703945))

(assert (= (and b!2703945 res!1135540) b!2703946))

(declare-fun m!3093035 () Bool)

(assert (=> d!776907 m!3093035))

(declare-fun m!3093037 () Bool)

(assert (=> d!776907 m!3093037))

(assert (=> d!776907 m!3092839))

(declare-fun m!3093039 () Bool)

(assert (=> d!776907 m!3093039))

(assert (=> b!2703944 m!3092839))

(declare-fun m!3093041 () Bool)

(assert (=> b!2703944 m!3093041))

(declare-fun m!3093043 () Bool)

(assert (=> b!2703945 m!3093043))

(declare-fun m!3093045 () Bool)

(assert (=> b!2703945 m!3093045))

(assert (=> b!2703945 m!3092839))

(declare-fun m!3093047 () Bool)

(assert (=> b!2703945 m!3093047))

(assert (=> b!2703815 d!776907))

(declare-fun d!776909 () Bool)

(assert (=> d!776909 (= (list!11762 input!780) (list!11765 (c!436281 input!780)))))

(declare-fun bs!487224 () Bool)

(assert (= bs!487224 d!776909))

(declare-fun m!3093049 () Bool)

(assert (=> bs!487224 m!3093049))

(assert (=> b!2703815 d!776909))

(declare-fun d!776911 () Bool)

(assert (=> d!776911 (= (list!11762 treated!26) (list!11765 (c!436281 treated!26)))))

(declare-fun bs!487225 () Bool)

(assert (= bs!487225 d!776911))

(declare-fun m!3093051 () Bool)

(assert (=> bs!487225 m!3093051))

(assert (=> b!2703815 d!776911))

(declare-fun b!2703955 () Bool)

(declare-fun e!1704745 () tuple3!4314)

(declare-fun lt!955824 () tuple3!4314)

(assert (=> b!2703955 (= e!1704745 (tuple3!4315 (_1!18032 lt!955824) (_2!18032 lt!955824) (_3!2627 lt!955824)))))

(declare-fun call!174232 () tuple3!4314)

(assert (=> b!2703955 (= lt!955824 call!174232)))

(declare-fun d!776913 () Bool)

(declare-fun e!1704744 () Bool)

(assert (=> d!776913 e!1704744))

(declare-fun res!1135546 () Bool)

(assert (=> d!776913 (=> (not res!1135546) (not e!1704744))))

(declare-fun lt!955825 () tuple3!4314)

(assert (=> d!776913 (= res!1135546 (= (_1!18032 lt!955825) (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780)))))

(assert (=> d!776913 (= lt!955825 e!1704745)))

(declare-fun c!436314 () Bool)

(assert (=> d!776913 (= c!436314 (and ((_ is Cons!31180) rules!1381) ((_ is Nil!31180) (t!225706 rules!1381))))))

(declare-fun lt!955826 () Unit!45259)

(declare-fun lt!955830 () Unit!45259)

(assert (=> d!776913 (= lt!955826 lt!955830)))

(declare-fun lt!955823 () List!31275)

(declare-fun lt!955827 () List!31275)

(declare-fun isPrefix!2472 (List!31275 List!31275) Bool)

(assert (=> d!776913 (isPrefix!2472 lt!955823 lt!955827)))

(declare-fun lemmaIsPrefixRefl!1598 (List!31275 List!31275) Unit!45259)

(assert (=> d!776913 (= lt!955830 (lemmaIsPrefixRefl!1598 lt!955823 lt!955827))))

(assert (=> d!776913 (= lt!955827 (list!11762 input!780))))

(assert (=> d!776913 (= lt!955823 (list!11762 input!780))))

(declare-fun rulesValidInductive!1654 (LexerInterface!4353 List!31280) Bool)

(assert (=> d!776913 (rulesValidInductive!1654 thiss!12257 rules!1381)))

(assert (=> d!776913 (= (maxPrefixZipperSequenceMem!24 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!955825)))

(declare-fun b!2703956 () Bool)

(declare-fun lt!955829 () tuple3!4314)

(declare-fun lt!955828 () tuple3!4314)

(assert (=> b!2703956 (= e!1704745 (tuple3!4315 (ite (and ((_ is None!6150) (_1!18032 lt!955829)) ((_ is None!6150) (_1!18032 lt!955828))) None!6150 (ite ((_ is None!6150) (_1!18032 lt!955828)) (_1!18032 lt!955829) (ite ((_ is None!6150) (_1!18032 lt!955829)) (_1!18032 lt!955828) (ite (>= (size!24076 (_1!18026 (v!32944 (_1!18032 lt!955829)))) (size!24076 (_1!18026 (v!32944 (_1!18032 lt!955828))))) (_1!18032 lt!955829) (_1!18032 lt!955828))))) (_2!18032 lt!955828) (_3!2627 lt!955828)))))

(assert (=> b!2703956 (= lt!955829 call!174232)))

(assert (=> b!2703956 (= lt!955828 (maxPrefixZipperSequenceMem!24 thiss!12257 (t!225706 rules!1381) input!780 (_2!18032 lt!955829) (_3!2627 lt!955829)))))

(declare-fun b!2703957 () Bool)

(assert (=> b!2703957 (= e!1704744 (valid!2757 (_3!2627 lt!955825)))))

(declare-fun bm!174227 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!10 (LexerInterface!4353 Rule!9314 BalanceConc!19100 CacheUp!2162 CacheDown!2274) tuple3!4314)

(assert (=> bm!174227 (= call!174232 (maxPrefixOneRuleZipperSequenceMem!10 thiss!12257 (h!36600 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun b!2703958 () Bool)

(declare-fun res!1135545 () Bool)

(assert (=> b!2703958 (=> (not res!1135545) (not e!1704744))))

(assert (=> b!2703958 (= res!1135545 (valid!2756 (_2!18032 lt!955825)))))

(assert (= (and d!776913 c!436314) b!2703955))

(assert (= (and d!776913 (not c!436314)) b!2703956))

(assert (= (or b!2703955 b!2703956) bm!174227))

(assert (= (and d!776913 res!1135546) b!2703958))

(assert (= (and b!2703958 res!1135545) b!2703957))

(declare-fun m!3093053 () Bool)

(assert (=> bm!174227 m!3093053))

(declare-fun m!3093055 () Bool)

(assert (=> b!2703957 m!3093055))

(declare-fun m!3093057 () Bool)

(assert (=> b!2703958 m!3093057))

(assert (=> d!776913 m!3092839))

(declare-fun m!3093059 () Bool)

(assert (=> d!776913 m!3093059))

(declare-fun m!3093061 () Bool)

(assert (=> d!776913 m!3093061))

(declare-fun m!3093063 () Bool)

(assert (=> d!776913 m!3093063))

(assert (=> d!776913 m!3092851))

(declare-fun m!3093065 () Bool)

(assert (=> b!2703956 m!3093065))

(assert (=> b!2703814 d!776913))

(declare-fun b!2703973 () Bool)

(declare-fun e!1704755 () tuple2!30802)

(assert (=> b!2703973 (= e!1704755 (tuple2!30803 (BalanceConc!19103 Empty!9744) input!780))))

(declare-fun b!2703974 () Bool)

(declare-fun e!1704756 () tuple2!30802)

(declare-fun lt!955889 () BalanceConc!19100)

(assert (=> b!2703974 (= e!1704756 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!955889))))

(declare-fun e!1704757 () Bool)

(declare-fun b!2703976 () Bool)

(declare-fun lt!955900 () tuple2!30802)

(assert (=> b!2703976 (= e!1704757 (= (list!11762 (_2!18027 lt!955900)) (list!11762 (_2!18027 (lexRec!615 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun lt!955887 () Option!6151)

(declare-fun b!2703977 () Bool)

(declare-fun lt!955896 () tuple2!30802)

(assert (=> b!2703977 (= lt!955896 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955887))))))

(assert (=> b!2703977 (= e!1704755 (tuple2!30803 (prepend!1089 (_1!18027 lt!955896) (_1!18026 (v!32944 lt!955887))) (_2!18027 lt!955896)))))

(declare-fun b!2703978 () Bool)

(declare-fun e!1704754 () tuple2!30802)

(assert (=> b!2703978 (= e!1704754 (tuple2!30803 acc!348 input!780))))

(declare-fun b!2703979 () Bool)

(declare-fun lt!955901 () tuple2!30802)

(declare-fun lt!955898 () Option!6151)

(assert (=> b!2703979 (= lt!955901 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955898))))))

(assert (=> b!2703979 (= e!1704756 (tuple2!30803 (prepend!1089 (_1!18027 lt!955901) (_1!18026 (v!32944 lt!955898))) (_2!18027 lt!955901)))))

(declare-fun b!2703975 () Bool)

(declare-fun lt!955893 () Option!6151)

(assert (=> b!2703975 (= e!1704754 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 lt!955893)))) (_2!18026 (v!32944 lt!955893)) (append!782 acc!348 (_1!18026 (v!32944 lt!955893)))))))

(declare-fun lt!955883 () tuple2!30802)

(assert (=> b!2703975 (= lt!955883 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955893))))))

(declare-fun lt!955885 () List!31275)

(assert (=> b!2703975 (= lt!955885 (list!11762 treated!26))))

(declare-fun lt!955884 () List!31275)

(assert (=> b!2703975 (= lt!955884 (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955893)))))))

(declare-fun lt!955890 () List!31275)

(assert (=> b!2703975 (= lt!955890 (list!11762 (_2!18026 (v!32944 lt!955893))))))

(declare-fun lt!955882 () Unit!45259)

(assert (=> b!2703975 (= lt!955882 (lemmaConcatAssociativity!1565 lt!955885 lt!955884 lt!955890))))

(assert (=> b!2703975 (= (++!7658 (++!7658 lt!955885 lt!955884) lt!955890) (++!7658 lt!955885 (++!7658 lt!955884 lt!955890)))))

(declare-fun lt!955895 () Unit!45259)

(assert (=> b!2703975 (= lt!955895 lt!955882)))

(assert (=> b!2703975 (= lt!955887 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780))))

(declare-fun c!436322 () Bool)

(assert (=> b!2703975 (= c!436322 ((_ is Some!6150) lt!955887))))

(assert (=> b!2703975 (= (lexRec!615 thiss!12257 rules!1381 input!780) e!1704755)))

(declare-fun lt!955903 () Unit!45259)

(declare-fun Unit!45263 () Unit!45259)

(assert (=> b!2703975 (= lt!955903 Unit!45263)))

(declare-fun lt!955888 () List!31276)

(assert (=> b!2703975 (= lt!955888 (list!11763 acc!348))))

(declare-fun lt!955905 () List!31276)

(assert (=> b!2703975 (= lt!955905 (Cons!31176 (_1!18026 (v!32944 lt!955893)) Nil!31176))))

(declare-fun lt!955891 () List!31276)

(assert (=> b!2703975 (= lt!955891 (list!11763 (_1!18027 lt!955883)))))

(declare-fun lt!955902 () Unit!45259)

(assert (=> b!2703975 (= lt!955902 (lemmaConcatAssociativity!1566 lt!955888 lt!955905 lt!955891))))

(assert (=> b!2703975 (= (++!7661 (++!7661 lt!955888 lt!955905) lt!955891) (++!7661 lt!955888 (++!7661 lt!955905 lt!955891)))))

(declare-fun lt!955886 () Unit!45259)

(assert (=> b!2703975 (= lt!955886 lt!955902)))

(declare-fun lt!955892 () List!31275)

(assert (=> b!2703975 (= lt!955892 (++!7658 (list!11762 treated!26) (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955893))))))))

(declare-fun lt!955881 () List!31275)

(assert (=> b!2703975 (= lt!955881 (list!11762 (_2!18026 (v!32944 lt!955893))))))

(declare-fun lt!955899 () List!31276)

(assert (=> b!2703975 (= lt!955899 (list!11763 (append!782 acc!348 (_1!18026 (v!32944 lt!955893)))))))

(declare-fun lt!955904 () Unit!45259)

(assert (=> b!2703975 (= lt!955904 (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!955892 lt!955881 lt!955899 (list!11763 (_1!18027 lt!955883)) (list!11762 (_2!18027 lt!955883))))))

(assert (=> b!2703975 (= (lexList!1200 thiss!12257 rules!1381 lt!955892) (tuple2!30811 lt!955899 Nil!31175))))

(declare-fun lt!955897 () Unit!45259)

(assert (=> b!2703975 (= lt!955897 lt!955904)))

(assert (=> b!2703975 (= lt!955889 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 lt!955893)))))))

(assert (=> b!2703975 (= lt!955898 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955889))))

(declare-fun c!436321 () Bool)

(assert (=> b!2703975 (= c!436321 ((_ is Some!6150) lt!955898))))

(assert (=> b!2703975 (= (lexRec!615 thiss!12257 rules!1381 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 lt!955893))))) e!1704756)))

(declare-fun lt!955894 () Unit!45259)

(declare-fun Unit!45264 () Unit!45259)

(assert (=> b!2703975 (= lt!955894 Unit!45264)))

(declare-fun d!776915 () Bool)

(assert (=> d!776915 e!1704757))

(declare-fun res!1135549 () Bool)

(assert (=> d!776915 (=> (not res!1135549) (not e!1704757))))

(assert (=> d!776915 (= res!1135549 (= (list!11763 (_1!18027 lt!955900)) (list!11763 (_1!18027 (lexRec!615 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!776915 (= lt!955900 e!1704754)))

(declare-fun c!436323 () Bool)

(assert (=> d!776915 (= c!436323 ((_ is Some!6150) lt!955893))))

(assert (=> d!776915 (= lt!955893 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780))))

(assert (=> d!776915 (= (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!955900)))

(assert (= (and d!776915 c!436323) b!2703975))

(assert (= (and d!776915 (not c!436323)) b!2703978))

(assert (= (and b!2703975 c!436322) b!2703977))

(assert (= (and b!2703975 (not c!436322)) b!2703973))

(assert (= (and b!2703975 c!436321) b!2703979))

(assert (= (and b!2703975 (not c!436321)) b!2703974))

(assert (= (and d!776915 res!1135549) b!2703976))

(declare-fun m!3093067 () Bool)

(assert (=> b!2703977 m!3093067))

(declare-fun m!3093069 () Bool)

(assert (=> b!2703977 m!3093069))

(declare-fun m!3093071 () Bool)

(assert (=> b!2703979 m!3093071))

(declare-fun m!3093073 () Bool)

(assert (=> b!2703979 m!3093073))

(declare-fun m!3093075 () Bool)

(assert (=> b!2703975 m!3093075))

(declare-fun m!3093077 () Bool)

(assert (=> b!2703975 m!3093077))

(declare-fun m!3093079 () Bool)

(assert (=> b!2703975 m!3093079))

(declare-fun m!3093081 () Bool)

(assert (=> b!2703975 m!3093081))

(assert (=> b!2703975 m!3092843))

(declare-fun m!3093083 () Bool)

(assert (=> b!2703975 m!3093083))

(declare-fun m!3093085 () Bool)

(assert (=> b!2703975 m!3093085))

(declare-fun m!3093087 () Bool)

(assert (=> b!2703975 m!3093087))

(declare-fun m!3093089 () Bool)

(assert (=> b!2703975 m!3093089))

(declare-fun m!3093091 () Bool)

(assert (=> b!2703975 m!3093091))

(declare-fun m!3093093 () Bool)

(assert (=> b!2703975 m!3093093))

(assert (=> b!2703975 m!3093085))

(declare-fun m!3093095 () Bool)

(assert (=> b!2703975 m!3093095))

(declare-fun m!3093097 () Bool)

(assert (=> b!2703975 m!3093097))

(declare-fun m!3093099 () Bool)

(assert (=> b!2703975 m!3093099))

(assert (=> b!2703975 m!3092865))

(assert (=> b!2703975 m!3093075))

(declare-fun m!3093101 () Bool)

(assert (=> b!2703975 m!3093101))

(declare-fun m!3093103 () Bool)

(assert (=> b!2703975 m!3093103))

(declare-fun m!3093105 () Bool)

(assert (=> b!2703975 m!3093105))

(assert (=> b!2703975 m!3092737))

(assert (=> b!2703975 m!3093101))

(assert (=> b!2703975 m!3092851))

(declare-fun m!3093107 () Bool)

(assert (=> b!2703975 m!3093107))

(assert (=> b!2703975 m!3093087))

(declare-fun m!3093109 () Bool)

(assert (=> b!2703975 m!3093109))

(declare-fun m!3093111 () Bool)

(assert (=> b!2703975 m!3093111))

(assert (=> b!2703975 m!3093101))

(declare-fun m!3093113 () Bool)

(assert (=> b!2703975 m!3093113))

(assert (=> b!2703975 m!3093091))

(assert (=> b!2703975 m!3092843))

(assert (=> b!2703975 m!3093089))

(declare-fun m!3093115 () Bool)

(assert (=> b!2703975 m!3093115))

(assert (=> b!2703975 m!3093087))

(assert (=> b!2703975 m!3093075))

(assert (=> b!2703975 m!3093105))

(declare-fun m!3093117 () Bool)

(assert (=> b!2703975 m!3093117))

(declare-fun m!3093119 () Bool)

(assert (=> b!2703975 m!3093119))

(declare-fun m!3093121 () Bool)

(assert (=> b!2703975 m!3093121))

(assert (=> b!2703975 m!3093079))

(assert (=> b!2703975 m!3093099))

(declare-fun m!3093123 () Bool)

(assert (=> b!2703975 m!3093123))

(assert (=> b!2703975 m!3093119))

(declare-fun m!3093125 () Bool)

(assert (=> d!776915 m!3093125))

(assert (=> d!776915 m!3092863))

(declare-fun m!3093127 () Bool)

(assert (=> d!776915 m!3093127))

(assert (=> d!776915 m!3092851))

(declare-fun m!3093129 () Bool)

(assert (=> b!2703976 m!3093129))

(assert (=> b!2703976 m!3092863))

(declare-fun m!3093131 () Bool)

(assert (=> b!2703976 m!3093131))

(assert (=> b!2703814 d!776915))

(declare-fun b!2703996 () Bool)

(declare-fun res!1135565 () Bool)

(declare-fun e!1704772 () Bool)

(assert (=> b!2703996 (=> (not res!1135565) (not e!1704772))))

(declare-fun e!1704775 () Bool)

(assert (=> b!2703996 (= res!1135565 e!1704775)))

(declare-fun res!1135562 () Bool)

(assert (=> b!2703996 (=> res!1135562 e!1704775)))

(declare-fun lt!955923 () Option!6151)

(declare-fun isDefined!4871 (Option!6151) Bool)

(assert (=> b!2703996 (= res!1135562 (not (isDefined!4871 lt!955923)))))

(declare-fun b!2703997 () Bool)

(declare-fun e!1704774 () Option!6151)

(declare-fun call!174235 () Option!6151)

(assert (=> b!2703997 (= e!1704774 call!174235)))

(declare-fun b!2703998 () Bool)

(declare-fun e!1704771 () Bool)

(declare-fun get!9737 (Option!6151) tuple2!30800)

(declare-datatypes ((tuple2!30812 0))(
  ( (tuple2!30813 (_1!18035 Token!8980) (_2!18035 List!31275)) )
))
(declare-datatypes ((Option!6152 0))(
  ( (None!6151) (Some!6151 (v!32951 tuple2!30812)) )
))
(declare-fun get!9738 (Option!6152) tuple2!30812)

(declare-fun maxPrefix!2355 (LexerInterface!4353 List!31280 List!31275) Option!6152)

(assert (=> b!2703998 (= e!1704771 (= (list!11762 (_2!18026 (get!9737 lt!955923))) (_2!18035 (get!9738 (maxPrefix!2355 thiss!12257 rules!1381 (list!11762 input!780))))))))

(declare-fun b!2703999 () Bool)

(declare-fun e!1704773 () Bool)

(assert (=> b!2703999 (= e!1704772 e!1704773)))

(declare-fun res!1135566 () Bool)

(assert (=> b!2703999 (=> res!1135566 e!1704773)))

(assert (=> b!2703999 (= res!1135566 (not (isDefined!4871 lt!955923)))))

(declare-fun b!2704000 () Bool)

(declare-fun lt!955922 () Option!6151)

(declare-fun lt!955925 () Option!6151)

(assert (=> b!2704000 (= e!1704774 (ite (and ((_ is None!6150) lt!955922) ((_ is None!6150) lt!955925)) None!6150 (ite ((_ is None!6150) lt!955925) lt!955922 (ite ((_ is None!6150) lt!955922) lt!955925 (ite (>= (size!24076 (_1!18026 (v!32944 lt!955922))) (size!24076 (_1!18026 (v!32944 lt!955925)))) lt!955922 lt!955925)))))))

(assert (=> b!2704000 (= lt!955922 call!174235)))

(assert (=> b!2704000 (= lt!955925 (maxPrefixZipperSequence!1013 thiss!12257 (t!225706 rules!1381) input!780))))

(declare-fun e!1704770 () Bool)

(declare-fun b!2704001 () Bool)

(declare-fun maxPrefixZipper!459 (LexerInterface!4353 List!31280 List!31275) Option!6152)

(assert (=> b!2704001 (= e!1704770 (= (list!11762 (_2!18026 (get!9737 lt!955923))) (_2!18035 (get!9738 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 input!780))))))))

(declare-fun b!2704002 () Bool)

(assert (=> b!2704002 (= e!1704775 e!1704770)))

(declare-fun res!1135564 () Bool)

(assert (=> b!2704002 (=> (not res!1135564) (not e!1704770))))

(assert (=> b!2704002 (= res!1135564 (= (_1!18026 (get!9737 lt!955923)) (_1!18035 (get!9738 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 input!780))))))))

(declare-fun bm!174230 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!468 (LexerInterface!4353 Rule!9314 BalanceConc!19100) Option!6151)

(assert (=> bm!174230 (= call!174235 (maxPrefixOneRuleZipperSequence!468 thiss!12257 (h!36600 rules!1381) input!780))))

(declare-fun d!776917 () Bool)

(assert (=> d!776917 e!1704772))

(declare-fun res!1135567 () Bool)

(assert (=> d!776917 (=> (not res!1135567) (not e!1704772))))

(declare-fun isDefined!4872 (Option!6152) Bool)

(assert (=> d!776917 (= res!1135567 (= (isDefined!4871 lt!955923) (isDefined!4872 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 input!780)))))))

(assert (=> d!776917 (= lt!955923 e!1704774)))

(declare-fun c!436326 () Bool)

(assert (=> d!776917 (= c!436326 (and ((_ is Cons!31180) rules!1381) ((_ is Nil!31180) (t!225706 rules!1381))))))

(declare-fun lt!955921 () Unit!45259)

(declare-fun lt!955920 () Unit!45259)

(assert (=> d!776917 (= lt!955921 lt!955920)))

(declare-fun lt!955924 () List!31275)

(declare-fun lt!955926 () List!31275)

(assert (=> d!776917 (isPrefix!2472 lt!955924 lt!955926)))

(assert (=> d!776917 (= lt!955920 (lemmaIsPrefixRefl!1598 lt!955924 lt!955926))))

(assert (=> d!776917 (= lt!955926 (list!11762 input!780))))

(assert (=> d!776917 (= lt!955924 (list!11762 input!780))))

(assert (=> d!776917 (rulesValidInductive!1654 thiss!12257 rules!1381)))

(assert (=> d!776917 (= (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 input!780) lt!955923)))

(declare-fun b!2704003 () Bool)

(assert (=> b!2704003 (= e!1704773 e!1704771)))

(declare-fun res!1135563 () Bool)

(assert (=> b!2704003 (=> (not res!1135563) (not e!1704771))))

(assert (=> b!2704003 (= res!1135563 (= (_1!18026 (get!9737 lt!955923)) (_1!18035 (get!9738 (maxPrefix!2355 thiss!12257 rules!1381 (list!11762 input!780))))))))

(assert (= (and d!776917 c!436326) b!2703997))

(assert (= (and d!776917 (not c!436326)) b!2704000))

(assert (= (or b!2703997 b!2704000) bm!174230))

(assert (= (and d!776917 res!1135567) b!2703996))

(assert (= (and b!2703996 (not res!1135562)) b!2704002))

(assert (= (and b!2704002 res!1135564) b!2704001))

(assert (= (and b!2703996 res!1135565) b!2703999))

(assert (= (and b!2703999 (not res!1135566)) b!2704003))

(assert (= (and b!2704003 res!1135563) b!2703998))

(declare-fun m!3093133 () Bool)

(assert (=> b!2704003 m!3093133))

(assert (=> b!2704003 m!3092839))

(assert (=> b!2704003 m!3092839))

(declare-fun m!3093135 () Bool)

(assert (=> b!2704003 m!3093135))

(assert (=> b!2704003 m!3093135))

(declare-fun m!3093137 () Bool)

(assert (=> b!2704003 m!3093137))

(declare-fun m!3093139 () Bool)

(assert (=> b!2703996 m!3093139))

(assert (=> b!2704002 m!3093133))

(assert (=> b!2704002 m!3092839))

(assert (=> b!2704002 m!3092839))

(declare-fun m!3093141 () Bool)

(assert (=> b!2704002 m!3093141))

(assert (=> b!2704002 m!3093141))

(declare-fun m!3093143 () Bool)

(assert (=> b!2704002 m!3093143))

(assert (=> d!776917 m!3093141))

(declare-fun m!3093145 () Bool)

(assert (=> d!776917 m!3093145))

(assert (=> d!776917 m!3093059))

(assert (=> d!776917 m!3093139))

(assert (=> d!776917 m!3092839))

(assert (=> d!776917 m!3093141))

(declare-fun m!3093147 () Bool)

(assert (=> d!776917 m!3093147))

(declare-fun m!3093149 () Bool)

(assert (=> d!776917 m!3093149))

(assert (=> d!776917 m!3092839))

(declare-fun m!3093151 () Bool)

(assert (=> bm!174230 m!3093151))

(assert (=> b!2703999 m!3093139))

(declare-fun m!3093153 () Bool)

(assert (=> b!2703998 m!3093153))

(assert (=> b!2703998 m!3093135))

(assert (=> b!2703998 m!3093137))

(assert (=> b!2703998 m!3093133))

(assert (=> b!2703998 m!3092839))

(assert (=> b!2703998 m!3093135))

(assert (=> b!2703998 m!3092839))

(declare-fun m!3093155 () Bool)

(assert (=> b!2704000 m!3093155))

(assert (=> b!2704001 m!3093153))

(assert (=> b!2704001 m!3093141))

(assert (=> b!2704001 m!3093143))

(assert (=> b!2704001 m!3093133))

(assert (=> b!2704001 m!3092839))

(assert (=> b!2704001 m!3093141))

(assert (=> b!2704001 m!3092839))

(assert (=> b!2703814 d!776917))

(declare-fun b!2704014 () Bool)

(declare-fun e!1704783 () Bool)

(declare-fun lt!955934 () tuple2!30810)

(assert (=> b!2704014 (= e!1704783 (= (_2!18034 lt!955934) lt!955660))))

(declare-fun b!2704015 () Bool)

(declare-fun e!1704782 () Bool)

(assert (=> b!2704015 (= e!1704783 e!1704782)))

(declare-fun res!1135570 () Bool)

(assert (=> b!2704015 (= res!1135570 (< (size!24082 (_2!18034 lt!955934)) (size!24082 lt!955660)))))

(assert (=> b!2704015 (=> (not res!1135570) (not e!1704782))))

(declare-fun d!776919 () Bool)

(assert (=> d!776919 e!1704783))

(declare-fun c!436331 () Bool)

(declare-fun size!24083 (List!31276) Int)

(assert (=> d!776919 (= c!436331 (> (size!24083 (_1!18034 lt!955934)) 0))))

(declare-fun e!1704784 () tuple2!30810)

(assert (=> d!776919 (= lt!955934 e!1704784)))

(declare-fun c!436332 () Bool)

(declare-fun lt!955935 () Option!6152)

(assert (=> d!776919 (= c!436332 ((_ is Some!6151) lt!955935))))

(assert (=> d!776919 (= lt!955935 (maxPrefix!2355 thiss!12257 rules!1381 lt!955660))))

(assert (=> d!776919 (= (lexList!1200 thiss!12257 rules!1381 lt!955660) lt!955934)))

(declare-fun b!2704016 () Bool)

(declare-fun lt!955933 () tuple2!30810)

(assert (=> b!2704016 (= e!1704784 (tuple2!30811 (Cons!31176 (_1!18035 (v!32951 lt!955935)) (_1!18034 lt!955933)) (_2!18034 lt!955933)))))

(assert (=> b!2704016 (= lt!955933 (lexList!1200 thiss!12257 rules!1381 (_2!18035 (v!32951 lt!955935))))))

(declare-fun b!2704017 () Bool)

(declare-fun isEmpty!17763 (List!31276) Bool)

(assert (=> b!2704017 (= e!1704782 (not (isEmpty!17763 (_1!18034 lt!955934))))))

(declare-fun b!2704018 () Bool)

(assert (=> b!2704018 (= e!1704784 (tuple2!30811 Nil!31176 lt!955660))))

(assert (= (and d!776919 c!436332) b!2704016))

(assert (= (and d!776919 (not c!436332)) b!2704018))

(assert (= (and d!776919 c!436331) b!2704015))

(assert (= (and d!776919 (not c!436331)) b!2704014))

(assert (= (and b!2704015 res!1135570) b!2704017))

(declare-fun m!3093157 () Bool)

(assert (=> b!2704015 m!3093157))

(declare-fun m!3093159 () Bool)

(assert (=> b!2704015 m!3093159))

(declare-fun m!3093161 () Bool)

(assert (=> d!776919 m!3093161))

(declare-fun m!3093163 () Bool)

(assert (=> d!776919 m!3093163))

(declare-fun m!3093165 () Bool)

(assert (=> b!2704016 m!3093165))

(declare-fun m!3093167 () Bool)

(assert (=> b!2704017 m!3093167))

(assert (=> b!2703831 d!776919))

(declare-fun d!776921 () Bool)

(declare-fun e!1704785 () Bool)

(assert (=> d!776921 e!1704785))

(declare-fun res!1135571 () Bool)

(assert (=> d!776921 (=> (not res!1135571) (not e!1704785))))

(declare-fun lt!955936 () List!31275)

(assert (=> d!776921 (= res!1135571 (= (content!4414 lt!955936) ((_ map or) (content!4414 lt!955659) (content!4414 lt!955676))))))

(declare-fun e!1704786 () List!31275)

(assert (=> d!776921 (= lt!955936 e!1704786)))

(declare-fun c!436333 () Bool)

(assert (=> d!776921 (= c!436333 ((_ is Nil!31175) lt!955659))))

(assert (=> d!776921 (= (++!7658 lt!955659 lt!955676) lt!955936)))

(declare-fun b!2704020 () Bool)

(assert (=> b!2704020 (= e!1704786 (Cons!31175 (h!36595 lt!955659) (++!7658 (t!225701 lt!955659) lt!955676)))))

(declare-fun b!2704022 () Bool)

(assert (=> b!2704022 (= e!1704785 (or (not (= lt!955676 Nil!31175)) (= lt!955936 lt!955659)))))

(declare-fun b!2704021 () Bool)

(declare-fun res!1135572 () Bool)

(assert (=> b!2704021 (=> (not res!1135572) (not e!1704785))))

(assert (=> b!2704021 (= res!1135572 (= (size!24082 lt!955936) (+ (size!24082 lt!955659) (size!24082 lt!955676))))))

(declare-fun b!2704019 () Bool)

(assert (=> b!2704019 (= e!1704786 lt!955676)))

(assert (= (and d!776921 c!436333) b!2704019))

(assert (= (and d!776921 (not c!436333)) b!2704020))

(assert (= (and d!776921 res!1135571) b!2704021))

(assert (= (and b!2704021 res!1135572) b!2704022))

(declare-fun m!3093169 () Bool)

(assert (=> d!776921 m!3093169))

(assert (=> d!776921 m!3093037))

(declare-fun m!3093171 () Bool)

(assert (=> d!776921 m!3093171))

(declare-fun m!3093173 () Bool)

(assert (=> b!2704020 m!3093173))

(declare-fun m!3093175 () Bool)

(assert (=> b!2704021 m!3093175))

(assert (=> b!2704021 m!3093045))

(declare-fun m!3093177 () Bool)

(assert (=> b!2704021 m!3093177))

(assert (=> b!2703831 d!776921))

(declare-fun d!776923 () Bool)

(declare-fun lt!955939 () BalanceConc!19100)

(assert (=> d!776923 (= (list!11762 lt!955939) (originalCharacters!5521 (_1!18026 (v!32944 lt!955668))))))

(declare-fun dynLambda!13464 (Int TokenValue!4979) BalanceConc!19100)

(assert (=> d!776923 (= lt!955939 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 lt!955668))))) (value!153189 (_1!18026 (v!32944 lt!955668)))))))

(assert (=> d!776923 (= (charsOf!2996 (_1!18026 (v!32944 lt!955668))) lt!955939)))

(declare-fun b_lambda!82379 () Bool)

(assert (=> (not b_lambda!82379) (not d!776923)))

(declare-fun t!225708 () Bool)

(declare-fun tb!151473 () Bool)

(assert (=> (and b!2703842 (= (toChars!6578 (transformation!4757 (h!36600 rules!1381))) (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 lt!955668)))))) t!225708) tb!151473))

(declare-fun b!2704027 () Bool)

(declare-fun e!1704789 () Bool)

(declare-fun tp!855043 () Bool)

(assert (=> b!2704027 (= e!1704789 (and (inv!42236 (c!436281 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 lt!955668))))) (value!153189 (_1!18026 (v!32944 lt!955668)))))) tp!855043))))

(declare-fun result!187066 () Bool)

(assert (=> tb!151473 (= result!187066 (and (inv!42237 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 lt!955668))))) (value!153189 (_1!18026 (v!32944 lt!955668))))) e!1704789))))

(assert (= tb!151473 b!2704027))

(declare-fun m!3093179 () Bool)

(assert (=> b!2704027 m!3093179))

(declare-fun m!3093181 () Bool)

(assert (=> tb!151473 m!3093181))

(assert (=> d!776923 t!225708))

(declare-fun b_and!199727 () Bool)

(assert (= b_and!199719 (and (=> t!225708 result!187066) b_and!199727)))

(declare-fun m!3093183 () Bool)

(assert (=> d!776923 m!3093183))

(declare-fun m!3093185 () Bool)

(assert (=> d!776923 m!3093185))

(assert (=> b!2703831 d!776923))

(declare-fun d!776925 () Bool)

(assert (=> d!776925 (= (lexList!1200 thiss!12257 rules!1381 lt!955660) (tuple2!30811 lt!955679 Nil!31175))))

(declare-fun lt!955942 () Unit!45259)

(declare-fun choose!15933 (LexerInterface!4353 List!31280 List!31275 List!31275 List!31276 List!31276 List!31275) Unit!45259)

(assert (=> d!776925 (= lt!955942 (choose!15933 thiss!12257 rules!1381 lt!955660 lt!955680 lt!955679 lt!955664 (list!11762 (_2!18027 lt!955678))))))

(assert (=> d!776925 (not (isEmpty!17761 rules!1381))))

(assert (=> d!776925 (= (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!955660 lt!955680 lt!955679 lt!955664 (list!11762 (_2!18027 lt!955678))) lt!955942)))

(declare-fun bs!487226 () Bool)

(assert (= bs!487226 d!776925))

(assert (=> bs!487226 m!3092807))

(assert (=> bs!487226 m!3092777))

(declare-fun m!3093187 () Bool)

(assert (=> bs!487226 m!3093187))

(assert (=> bs!487226 m!3092855))

(assert (=> b!2703831 d!776925))

(declare-fun d!776927 () Bool)

(declare-fun e!1704790 () Bool)

(assert (=> d!776927 e!1704790))

(declare-fun res!1135573 () Bool)

(assert (=> d!776927 (=> (not res!1135573) (not e!1704790))))

(declare-fun lt!955943 () List!31275)

(assert (=> d!776927 (= res!1135573 (= (content!4414 lt!955943) ((_ map or) (content!4414 lt!955660) (content!4414 lt!955680))))))

(declare-fun e!1704791 () List!31275)

(assert (=> d!776927 (= lt!955943 e!1704791)))

(declare-fun c!436334 () Bool)

(assert (=> d!776927 (= c!436334 ((_ is Nil!31175) lt!955660))))

(assert (=> d!776927 (= (++!7658 lt!955660 lt!955680) lt!955943)))

(declare-fun b!2704029 () Bool)

(assert (=> b!2704029 (= e!1704791 (Cons!31175 (h!36595 lt!955660) (++!7658 (t!225701 lt!955660) lt!955680)))))

(declare-fun b!2704031 () Bool)

(assert (=> b!2704031 (= e!1704790 (or (not (= lt!955680 Nil!31175)) (= lt!955943 lt!955660)))))

(declare-fun b!2704030 () Bool)

(declare-fun res!1135574 () Bool)

(assert (=> b!2704030 (=> (not res!1135574) (not e!1704790))))

(assert (=> b!2704030 (= res!1135574 (= (size!24082 lt!955943) (+ (size!24082 lt!955660) (size!24082 lt!955680))))))

(declare-fun b!2704028 () Bool)

(assert (=> b!2704028 (= e!1704791 lt!955680)))

(assert (= (and d!776927 c!436334) b!2704028))

(assert (= (and d!776927 (not c!436334)) b!2704029))

(assert (= (and d!776927 res!1135573) b!2704030))

(assert (= (and b!2704030 res!1135574) b!2704031))

(declare-fun m!3093189 () Bool)

(assert (=> d!776927 m!3093189))

(declare-fun m!3093191 () Bool)

(assert (=> d!776927 m!3093191))

(declare-fun m!3093193 () Bool)

(assert (=> d!776927 m!3093193))

(declare-fun m!3093195 () Bool)

(assert (=> b!2704029 m!3093195))

(declare-fun m!3093197 () Bool)

(assert (=> b!2704030 m!3093197))

(assert (=> b!2704030 m!3093159))

(declare-fun m!3093199 () Bool)

(assert (=> b!2704030 m!3093199))

(assert (=> b!2703831 d!776927))

(declare-fun d!776929 () Bool)

(declare-fun e!1704792 () Bool)

(assert (=> d!776929 e!1704792))

(declare-fun res!1135575 () Bool)

(assert (=> d!776929 (=> (not res!1135575) (not e!1704792))))

(declare-fun lt!955944 () List!31275)

(assert (=> d!776929 (= res!1135575 (= (content!4414 lt!955944) ((_ map or) (content!4414 lt!955676) (content!4414 lt!955680))))))

(declare-fun e!1704793 () List!31275)

(assert (=> d!776929 (= lt!955944 e!1704793)))

(declare-fun c!436335 () Bool)

(assert (=> d!776929 (= c!436335 ((_ is Nil!31175) lt!955676))))

(assert (=> d!776929 (= (++!7658 lt!955676 lt!955680) lt!955944)))

(declare-fun b!2704033 () Bool)

(assert (=> b!2704033 (= e!1704793 (Cons!31175 (h!36595 lt!955676) (++!7658 (t!225701 lt!955676) lt!955680)))))

(declare-fun b!2704035 () Bool)

(assert (=> b!2704035 (= e!1704792 (or (not (= lt!955680 Nil!31175)) (= lt!955944 lt!955676)))))

(declare-fun b!2704034 () Bool)

(declare-fun res!1135576 () Bool)

(assert (=> b!2704034 (=> (not res!1135576) (not e!1704792))))

(assert (=> b!2704034 (= res!1135576 (= (size!24082 lt!955944) (+ (size!24082 lt!955676) (size!24082 lt!955680))))))

(declare-fun b!2704032 () Bool)

(assert (=> b!2704032 (= e!1704793 lt!955680)))

(assert (= (and d!776929 c!436335) b!2704032))

(assert (= (and d!776929 (not c!436335)) b!2704033))

(assert (= (and d!776929 res!1135575) b!2704034))

(assert (= (and b!2704034 res!1135576) b!2704035))

(declare-fun m!3093201 () Bool)

(assert (=> d!776929 m!3093201))

(assert (=> d!776929 m!3093171))

(assert (=> d!776929 m!3093193))

(declare-fun m!3093203 () Bool)

(assert (=> b!2704033 m!3093203))

(declare-fun m!3093205 () Bool)

(assert (=> b!2704034 m!3093205))

(assert (=> b!2704034 m!3093177))

(assert (=> b!2704034 m!3093199))

(assert (=> b!2703831 d!776929))

(declare-fun d!776931 () Bool)

(assert (=> d!776931 (= (list!11762 lt!955667) (list!11765 (c!436281 lt!955667)))))

(declare-fun bs!487227 () Bool)

(assert (= bs!487227 d!776931))

(declare-fun m!3093207 () Bool)

(assert (=> bs!487227 m!3093207))

(assert (=> b!2703831 d!776931))

(declare-fun d!776933 () Bool)

(declare-fun e!1704796 () Bool)

(assert (=> d!776933 e!1704796))

(declare-fun res!1135579 () Bool)

(assert (=> d!776933 (=> (not res!1135579) (not e!1704796))))

(declare-fun append!783 (Conc!9744 Token!8980) Conc!9744)

(assert (=> d!776933 (= res!1135579 (isBalanced!2949 (append!783 (c!436282 acc!348) (_1!18026 (v!32944 lt!955668)))))))

(declare-fun lt!955947 () BalanceConc!19102)

(assert (=> d!776933 (= lt!955947 (BalanceConc!19103 (append!783 (c!436282 acc!348) (_1!18026 (v!32944 lt!955668)))))))

(assert (=> d!776933 (= (append!782 acc!348 (_1!18026 (v!32944 lt!955668))) lt!955947)))

(declare-fun b!2704038 () Bool)

(declare-fun $colon+!171 (List!31276 Token!8980) List!31276)

(assert (=> b!2704038 (= e!1704796 (= (list!11763 lt!955947) ($colon+!171 (list!11763 acc!348) (_1!18026 (v!32944 lt!955668)))))))

(assert (= (and d!776933 res!1135579) b!2704038))

(declare-fun m!3093209 () Bool)

(assert (=> d!776933 m!3093209))

(assert (=> d!776933 m!3093209))

(declare-fun m!3093211 () Bool)

(assert (=> d!776933 m!3093211))

(declare-fun m!3093213 () Bool)

(assert (=> b!2704038 m!3093213))

(assert (=> b!2704038 m!3092737))

(assert (=> b!2704038 m!3092737))

(declare-fun m!3093215 () Bool)

(assert (=> b!2704038 m!3093215))

(assert (=> b!2703831 d!776933))

(declare-fun d!776935 () Bool)

(declare-fun e!1704801 () Bool)

(assert (=> d!776935 e!1704801))

(declare-fun res!1135585 () Bool)

(assert (=> d!776935 (=> (not res!1135585) (not e!1704801))))

(declare-fun lt!955950 () List!31276)

(declare-fun content!4415 (List!31276) (InoxSet Token!8980))

(assert (=> d!776935 (= res!1135585 (= (content!4415 lt!955950) ((_ map or) (content!4415 lt!955662) (content!4415 lt!955674))))))

(declare-fun e!1704802 () List!31276)

(assert (=> d!776935 (= lt!955950 e!1704802)))

(declare-fun c!436339 () Bool)

(assert (=> d!776935 (= c!436339 ((_ is Nil!31176) lt!955662))))

(assert (=> d!776935 (= (++!7661 lt!955662 lt!955674) lt!955950)))

(declare-fun b!2704049 () Bool)

(declare-fun res!1135584 () Bool)

(assert (=> b!2704049 (=> (not res!1135584) (not e!1704801))))

(assert (=> b!2704049 (= res!1135584 (= (size!24083 lt!955950) (+ (size!24083 lt!955662) (size!24083 lt!955674))))))

(declare-fun b!2704047 () Bool)

(assert (=> b!2704047 (= e!1704802 lt!955674)))

(declare-fun b!2704050 () Bool)

(assert (=> b!2704050 (= e!1704801 (or (not (= lt!955674 Nil!31176)) (= lt!955950 lt!955662)))))

(declare-fun b!2704048 () Bool)

(assert (=> b!2704048 (= e!1704802 (Cons!31176 (h!36596 lt!955662) (++!7661 (t!225702 lt!955662) lt!955674)))))

(assert (= (and d!776935 c!436339) b!2704047))

(assert (= (and d!776935 (not c!436339)) b!2704048))

(assert (= (and d!776935 res!1135585) b!2704049))

(assert (= (and b!2704049 res!1135584) b!2704050))

(declare-fun m!3093217 () Bool)

(assert (=> d!776935 m!3093217))

(declare-fun m!3093219 () Bool)

(assert (=> d!776935 m!3093219))

(declare-fun m!3093221 () Bool)

(assert (=> d!776935 m!3093221))

(declare-fun m!3093223 () Bool)

(assert (=> b!2704049 m!3093223))

(declare-fun m!3093225 () Bool)

(assert (=> b!2704049 m!3093225))

(declare-fun m!3093227 () Bool)

(assert (=> b!2704049 m!3093227))

(declare-fun m!3093229 () Bool)

(assert (=> b!2704048 m!3093229))

(assert (=> b!2703831 d!776935))

(declare-fun b!2704051 () Bool)

(declare-fun e!1704806 () Bool)

(declare-fun lt!955952 () tuple2!30802)

(assert (=> b!2704051 (= e!1704806 (= (list!11762 (_2!18027 lt!955952)) (list!11762 (_2!18026 (v!32944 lt!955668)))))))

(declare-fun b!2704052 () Bool)

(declare-fun res!1135586 () Bool)

(declare-fun e!1704804 () Bool)

(assert (=> b!2704052 (=> (not res!1135586) (not e!1704804))))

(assert (=> b!2704052 (= res!1135586 (= (list!11763 (_1!18027 lt!955952)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 (_2!18026 (v!32944 lt!955668)))))))))

(declare-fun d!776937 () Bool)

(assert (=> d!776937 e!1704804))

(declare-fun res!1135587 () Bool)

(assert (=> d!776937 (=> (not res!1135587) (not e!1704804))))

(assert (=> d!776937 (= res!1135587 e!1704806)))

(declare-fun c!436340 () Bool)

(assert (=> d!776937 (= c!436340 (> (size!24080 (_1!18027 lt!955952)) 0))))

(declare-fun e!1704805 () tuple2!30802)

(assert (=> d!776937 (= lt!955952 e!1704805)))

(declare-fun c!436341 () Bool)

(declare-fun lt!955953 () Option!6151)

(assert (=> d!776937 (= c!436341 ((_ is Some!6150) lt!955953))))

(assert (=> d!776937 (= lt!955953 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))))))

(assert (=> d!776937 (= (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))) lt!955952)))

(declare-fun b!2704053 () Bool)

(declare-fun e!1704803 () Bool)

(assert (=> b!2704053 (= e!1704803 (not (isEmpty!17762 (_1!18027 lt!955952))))))

(declare-fun b!2704054 () Bool)

(declare-fun lt!955951 () tuple2!30802)

(assert (=> b!2704054 (= e!1704805 (tuple2!30803 (prepend!1089 (_1!18027 lt!955951) (_1!18026 (v!32944 lt!955953))) (_2!18027 lt!955951)))))

(assert (=> b!2704054 (= lt!955951 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955953))))))

(declare-fun b!2704055 () Bool)

(assert (=> b!2704055 (= e!1704806 e!1704803)))

(declare-fun res!1135588 () Bool)

(assert (=> b!2704055 (= res!1135588 (< (size!24081 (_2!18027 lt!955952)) (size!24081 (_2!18026 (v!32944 lt!955668)))))))

(assert (=> b!2704055 (=> (not res!1135588) (not e!1704803))))

(declare-fun b!2704056 () Bool)

(assert (=> b!2704056 (= e!1704805 (tuple2!30803 (BalanceConc!19103 Empty!9744) (_2!18026 (v!32944 lt!955668))))))

(declare-fun b!2704057 () Bool)

(assert (=> b!2704057 (= e!1704804 (= (list!11762 (_2!18027 lt!955952)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 (_2!18026 (v!32944 lt!955668)))))))))

(assert (= (and d!776937 c!436341) b!2704054))

(assert (= (and d!776937 (not c!436341)) b!2704056))

(assert (= (and d!776937 c!436340) b!2704055))

(assert (= (and d!776937 (not c!436340)) b!2704051))

(assert (= (and b!2704055 res!1135588) b!2704053))

(assert (= (and d!776937 res!1135587) b!2704052))

(assert (= (and b!2704052 res!1135586) b!2704057))

(declare-fun m!3093231 () Bool)

(assert (=> b!2704053 m!3093231))

(declare-fun m!3093233 () Bool)

(assert (=> b!2704052 m!3093233))

(assert (=> b!2704052 m!3092799))

(assert (=> b!2704052 m!3092799))

(declare-fun m!3093235 () Bool)

(assert (=> b!2704052 m!3093235))

(declare-fun m!3093237 () Bool)

(assert (=> b!2704055 m!3093237))

(declare-fun m!3093239 () Bool)

(assert (=> b!2704055 m!3093239))

(declare-fun m!3093241 () Bool)

(assert (=> b!2704051 m!3093241))

(assert (=> b!2704051 m!3092799))

(assert (=> b!2704057 m!3093241))

(assert (=> b!2704057 m!3092799))

(assert (=> b!2704057 m!3092799))

(assert (=> b!2704057 m!3093235))

(declare-fun m!3093243 () Bool)

(assert (=> b!2704054 m!3093243))

(declare-fun m!3093245 () Bool)

(assert (=> b!2704054 m!3093245))

(declare-fun m!3093247 () Bool)

(assert (=> d!776937 m!3093247))

(declare-fun m!3093249 () Bool)

(assert (=> d!776937 m!3093249))

(assert (=> b!2703831 d!776937))

(declare-fun b!2704066 () Bool)

(declare-fun res!1135598 () Bool)

(declare-fun e!1704809 () Bool)

(assert (=> b!2704066 (=> (not res!1135598) (not e!1704809))))

(declare-fun isBalanced!2950 (Conc!9743) Bool)

(declare-fun ++!7663 (Conc!9743 Conc!9743) Conc!9743)

(assert (=> b!2704066 (= res!1135598 (isBalanced!2950 (++!7663 (c!436281 treated!26) (c!436281 lt!955667))))))

(declare-fun d!776939 () Bool)

(assert (=> d!776939 e!1704809))

(declare-fun res!1135597 () Bool)

(assert (=> d!776939 (=> (not res!1135597) (not e!1704809))))

(declare-fun appendAssocInst!671 (Conc!9743 Conc!9743) Bool)

(assert (=> d!776939 (= res!1135597 (appendAssocInst!671 (c!436281 treated!26) (c!436281 lt!955667)))))

(declare-fun lt!955956 () BalanceConc!19100)

(assert (=> d!776939 (= lt!955956 (BalanceConc!19101 (++!7663 (c!436281 treated!26) (c!436281 lt!955667))))))

(assert (=> d!776939 (= (++!7660 treated!26 lt!955667) lt!955956)))

(declare-fun b!2704067 () Bool)

(declare-fun res!1135599 () Bool)

(assert (=> b!2704067 (=> (not res!1135599) (not e!1704809))))

(declare-fun height!1432 (Conc!9743) Int)

(assert (=> b!2704067 (= res!1135599 (<= (height!1432 (++!7663 (c!436281 treated!26) (c!436281 lt!955667))) (+ (max!0 (height!1432 (c!436281 treated!26)) (height!1432 (c!436281 lt!955667))) 1)))))

(declare-fun b!2704069 () Bool)

(assert (=> b!2704069 (= e!1704809 (= (list!11762 lt!955956) (++!7658 (list!11762 treated!26) (list!11762 lt!955667))))))

(declare-fun b!2704068 () Bool)

(declare-fun res!1135600 () Bool)

(assert (=> b!2704068 (=> (not res!1135600) (not e!1704809))))

(assert (=> b!2704068 (= res!1135600 (>= (height!1432 (++!7663 (c!436281 treated!26) (c!436281 lt!955667))) (max!0 (height!1432 (c!436281 treated!26)) (height!1432 (c!436281 lt!955667)))))))

(assert (= (and d!776939 res!1135597) b!2704066))

(assert (= (and b!2704066 res!1135598) b!2704067))

(assert (= (and b!2704067 res!1135599) b!2704068))

(assert (= (and b!2704068 res!1135600) b!2704069))

(declare-fun m!3093251 () Bool)

(assert (=> b!2704068 m!3093251))

(declare-fun m!3093253 () Bool)

(assert (=> b!2704068 m!3093253))

(declare-fun m!3093255 () Bool)

(assert (=> b!2704068 m!3093255))

(assert (=> b!2704068 m!3093253))

(declare-fun m!3093257 () Bool)

(assert (=> b!2704068 m!3093257))

(assert (=> b!2704068 m!3093257))

(declare-fun m!3093259 () Bool)

(assert (=> b!2704068 m!3093259))

(assert (=> b!2704068 m!3093251))

(declare-fun m!3093261 () Bool)

(assert (=> d!776939 m!3093261))

(assert (=> d!776939 m!3093257))

(assert (=> b!2704066 m!3093257))

(assert (=> b!2704066 m!3093257))

(declare-fun m!3093263 () Bool)

(assert (=> b!2704066 m!3093263))

(assert (=> b!2704067 m!3093251))

(assert (=> b!2704067 m!3093253))

(assert (=> b!2704067 m!3093255))

(assert (=> b!2704067 m!3093253))

(assert (=> b!2704067 m!3093257))

(assert (=> b!2704067 m!3093257))

(assert (=> b!2704067 m!3093259))

(assert (=> b!2704067 m!3093251))

(declare-fun m!3093265 () Bool)

(assert (=> b!2704069 m!3093265))

(assert (=> b!2704069 m!3092843))

(assert (=> b!2704069 m!3092793))

(assert (=> b!2704069 m!3092843))

(assert (=> b!2704069 m!3092793))

(declare-fun m!3093267 () Bool)

(assert (=> b!2704069 m!3093267))

(assert (=> b!2703831 d!776939))

(declare-fun d!776941 () Bool)

(declare-fun e!1704810 () Bool)

(assert (=> d!776941 e!1704810))

(declare-fun res!1135602 () Bool)

(assert (=> d!776941 (=> (not res!1135602) (not e!1704810))))

(declare-fun lt!955957 () List!31276)

(assert (=> d!776941 (= res!1135602 (= (content!4415 lt!955957) ((_ map or) (content!4415 lt!955674) (content!4415 lt!955664))))))

(declare-fun e!1704811 () List!31276)

(assert (=> d!776941 (= lt!955957 e!1704811)))

(declare-fun c!436345 () Bool)

(assert (=> d!776941 (= c!436345 ((_ is Nil!31176) lt!955674))))

(assert (=> d!776941 (= (++!7661 lt!955674 lt!955664) lt!955957)))

(declare-fun b!2704072 () Bool)

(declare-fun res!1135601 () Bool)

(assert (=> b!2704072 (=> (not res!1135601) (not e!1704810))))

(assert (=> b!2704072 (= res!1135601 (= (size!24083 lt!955957) (+ (size!24083 lt!955674) (size!24083 lt!955664))))))

(declare-fun b!2704070 () Bool)

(assert (=> b!2704070 (= e!1704811 lt!955664)))

(declare-fun b!2704073 () Bool)

(assert (=> b!2704073 (= e!1704810 (or (not (= lt!955664 Nil!31176)) (= lt!955957 lt!955674)))))

(declare-fun b!2704071 () Bool)

(assert (=> b!2704071 (= e!1704811 (Cons!31176 (h!36596 lt!955674) (++!7661 (t!225702 lt!955674) lt!955664)))))

(assert (= (and d!776941 c!436345) b!2704070))

(assert (= (and d!776941 (not c!436345)) b!2704071))

(assert (= (and d!776941 res!1135602) b!2704072))

(assert (= (and b!2704072 res!1135601) b!2704073))

(declare-fun m!3093269 () Bool)

(assert (=> d!776941 m!3093269))

(assert (=> d!776941 m!3093221))

(declare-fun m!3093271 () Bool)

(assert (=> d!776941 m!3093271))

(declare-fun m!3093273 () Bool)

(assert (=> b!2704072 m!3093273))

(assert (=> b!2704072 m!3093227))

(declare-fun m!3093275 () Bool)

(assert (=> b!2704072 m!3093275))

(declare-fun m!3093277 () Bool)

(assert (=> b!2704071 m!3093277))

(assert (=> b!2703831 d!776941))

(declare-fun d!776943 () Bool)

(assert (=> d!776943 (= (list!11762 (_2!18026 (v!32944 lt!955668))) (list!11765 (c!436281 (_2!18026 (v!32944 lt!955668)))))))

(declare-fun bs!487228 () Bool)

(assert (= bs!487228 d!776943))

(declare-fun m!3093279 () Bool)

(assert (=> bs!487228 m!3093279))

(assert (=> b!2703831 d!776943))

(declare-fun b!2704074 () Bool)

(declare-fun e!1704813 () tuple2!30802)

(assert (=> b!2704074 (= e!1704813 (tuple2!30803 (BalanceConc!19103 Empty!9744) (_2!18026 (v!32944 lt!955668))))))

(declare-fun b!2704075 () Bool)

(declare-fun e!1704814 () tuple2!30802)

(declare-fun lt!955966 () BalanceConc!19100)

(assert (=> b!2704075 (= e!1704814 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!955966))))

(declare-fun lt!955977 () tuple2!30802)

(declare-fun e!1704815 () Bool)

(declare-fun b!2704077 () Bool)

(assert (=> b!2704077 (= e!1704815 (= (list!11762 (_2!18027 lt!955977)) (list!11762 (_2!18027 (lexRec!615 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun lt!955964 () Option!6151)

(declare-fun lt!955973 () tuple2!30802)

(declare-fun b!2704078 () Bool)

(assert (=> b!2704078 (= lt!955973 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955964))))))

(assert (=> b!2704078 (= e!1704813 (tuple2!30803 (prepend!1089 (_1!18027 lt!955973) (_1!18026 (v!32944 lt!955964))) (_2!18027 lt!955973)))))

(declare-fun b!2704079 () Bool)

(declare-fun e!1704812 () tuple2!30802)

(assert (=> b!2704079 (= e!1704812 (tuple2!30803 lt!955669 (_2!18026 (v!32944 lt!955668))))))

(declare-fun lt!955975 () Option!6151)

(declare-fun b!2704080 () Bool)

(declare-fun lt!955978 () tuple2!30802)

(assert (=> b!2704080 (= lt!955978 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955975))))))

(assert (=> b!2704080 (= e!1704814 (tuple2!30803 (prepend!1089 (_1!18027 lt!955978) (_1!18026 (v!32944 lt!955975))) (_2!18027 lt!955978)))))

(declare-fun b!2704076 () Bool)

(declare-fun lt!955970 () Option!6151)

(assert (=> b!2704076 (= e!1704812 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 lt!955657 (charsOf!2996 (_1!18026 (v!32944 lt!955970)))) (_2!18026 (v!32944 lt!955970)) (append!782 lt!955669 (_1!18026 (v!32944 lt!955970)))))))

(declare-fun lt!955960 () tuple2!30802)

(assert (=> b!2704076 (= lt!955960 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955970))))))

(declare-fun lt!955962 () List!31275)

(assert (=> b!2704076 (= lt!955962 (list!11762 lt!955657))))

(declare-fun lt!955961 () List!31275)

(assert (=> b!2704076 (= lt!955961 (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955970)))))))

(declare-fun lt!955967 () List!31275)

(assert (=> b!2704076 (= lt!955967 (list!11762 (_2!18026 (v!32944 lt!955970))))))

(declare-fun lt!955959 () Unit!45259)

(assert (=> b!2704076 (= lt!955959 (lemmaConcatAssociativity!1565 lt!955962 lt!955961 lt!955967))))

(assert (=> b!2704076 (= (++!7658 (++!7658 lt!955962 lt!955961) lt!955967) (++!7658 lt!955962 (++!7658 lt!955961 lt!955967)))))

(declare-fun lt!955972 () Unit!45259)

(assert (=> b!2704076 (= lt!955972 lt!955959)))

(assert (=> b!2704076 (= lt!955964 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))))))

(declare-fun c!436347 () Bool)

(assert (=> b!2704076 (= c!436347 ((_ is Some!6150) lt!955964))))

(assert (=> b!2704076 (= (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))) e!1704813)))

(declare-fun lt!955980 () Unit!45259)

(declare-fun Unit!45265 () Unit!45259)

(assert (=> b!2704076 (= lt!955980 Unit!45265)))

(declare-fun lt!955965 () List!31276)

(assert (=> b!2704076 (= lt!955965 (list!11763 lt!955669))))

(declare-fun lt!955982 () List!31276)

(assert (=> b!2704076 (= lt!955982 (Cons!31176 (_1!18026 (v!32944 lt!955970)) Nil!31176))))

(declare-fun lt!955968 () List!31276)

(assert (=> b!2704076 (= lt!955968 (list!11763 (_1!18027 lt!955960)))))

(declare-fun lt!955979 () Unit!45259)

(assert (=> b!2704076 (= lt!955979 (lemmaConcatAssociativity!1566 lt!955965 lt!955982 lt!955968))))

(assert (=> b!2704076 (= (++!7661 (++!7661 lt!955965 lt!955982) lt!955968) (++!7661 lt!955965 (++!7661 lt!955982 lt!955968)))))

(declare-fun lt!955963 () Unit!45259)

(assert (=> b!2704076 (= lt!955963 lt!955979)))

(declare-fun lt!955969 () List!31275)

(assert (=> b!2704076 (= lt!955969 (++!7658 (list!11762 lt!955657) (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!955970))))))))

(declare-fun lt!955958 () List!31275)

(assert (=> b!2704076 (= lt!955958 (list!11762 (_2!18026 (v!32944 lt!955970))))))

(declare-fun lt!955976 () List!31276)

(assert (=> b!2704076 (= lt!955976 (list!11763 (append!782 lt!955669 (_1!18026 (v!32944 lt!955970)))))))

(declare-fun lt!955981 () Unit!45259)

(assert (=> b!2704076 (= lt!955981 (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!955969 lt!955958 lt!955976 (list!11763 (_1!18027 lt!955960)) (list!11762 (_2!18027 lt!955960))))))

(assert (=> b!2704076 (= (lexList!1200 thiss!12257 rules!1381 lt!955969) (tuple2!30811 lt!955976 Nil!31175))))

(declare-fun lt!955974 () Unit!45259)

(assert (=> b!2704076 (= lt!955974 lt!955981)))

(assert (=> b!2704076 (= lt!955966 (++!7660 lt!955657 (charsOf!2996 (_1!18026 (v!32944 lt!955970)))))))

(assert (=> b!2704076 (= lt!955975 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955966))))

(declare-fun c!436346 () Bool)

(assert (=> b!2704076 (= c!436346 ((_ is Some!6150) lt!955975))))

(assert (=> b!2704076 (= (lexRec!615 thiss!12257 rules!1381 (++!7660 lt!955657 (charsOf!2996 (_1!18026 (v!32944 lt!955970))))) e!1704814)))

(declare-fun lt!955971 () Unit!45259)

(declare-fun Unit!45266 () Unit!45259)

(assert (=> b!2704076 (= lt!955971 Unit!45266)))

(declare-fun d!776945 () Bool)

(assert (=> d!776945 e!1704815))

(declare-fun res!1135603 () Bool)

(assert (=> d!776945 (=> (not res!1135603) (not e!1704815))))

(assert (=> d!776945 (= res!1135603 (= (list!11763 (_1!18027 lt!955977)) (list!11763 (_1!18027 (lexRec!615 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!776945 (= lt!955977 e!1704812)))

(declare-fun c!436348 () Bool)

(assert (=> d!776945 (= c!436348 ((_ is Some!6150) lt!955970))))

(assert (=> d!776945 (= lt!955970 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955668))))))

(assert (=> d!776945 (= (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 lt!955657 (_2!18026 (v!32944 lt!955668)) lt!955669) lt!955977)))

(assert (= (and d!776945 c!436348) b!2704076))

(assert (= (and d!776945 (not c!436348)) b!2704079))

(assert (= (and b!2704076 c!436347) b!2704078))

(assert (= (and b!2704076 (not c!436347)) b!2704074))

(assert (= (and b!2704076 c!436346) b!2704080))

(assert (= (and b!2704076 (not c!436346)) b!2704075))

(assert (= (and d!776945 res!1135603) b!2704077))

(declare-fun m!3093281 () Bool)

(assert (=> b!2704078 m!3093281))

(declare-fun m!3093283 () Bool)

(assert (=> b!2704078 m!3093283))

(declare-fun m!3093285 () Bool)

(assert (=> b!2704080 m!3093285))

(declare-fun m!3093287 () Bool)

(assert (=> b!2704080 m!3093287))

(declare-fun m!3093289 () Bool)

(assert (=> b!2704076 m!3093289))

(declare-fun m!3093291 () Bool)

(assert (=> b!2704076 m!3093291))

(declare-fun m!3093293 () Bool)

(assert (=> b!2704076 m!3093293))

(declare-fun m!3093295 () Bool)

(assert (=> b!2704076 m!3093295))

(declare-fun m!3093297 () Bool)

(assert (=> b!2704076 m!3093297))

(declare-fun m!3093299 () Bool)

(assert (=> b!2704076 m!3093299))

(declare-fun m!3093301 () Bool)

(assert (=> b!2704076 m!3093301))

(declare-fun m!3093303 () Bool)

(assert (=> b!2704076 m!3093303))

(declare-fun m!3093305 () Bool)

(assert (=> b!2704076 m!3093305))

(declare-fun m!3093307 () Bool)

(assert (=> b!2704076 m!3093307))

(declare-fun m!3093309 () Bool)

(assert (=> b!2704076 m!3093309))

(assert (=> b!2704076 m!3093301))

(declare-fun m!3093311 () Bool)

(assert (=> b!2704076 m!3093311))

(declare-fun m!3093313 () Bool)

(assert (=> b!2704076 m!3093313))

(declare-fun m!3093315 () Bool)

(assert (=> b!2704076 m!3093315))

(assert (=> b!2704076 m!3092787))

(assert (=> b!2704076 m!3093289))

(declare-fun m!3093317 () Bool)

(assert (=> b!2704076 m!3093317))

(declare-fun m!3093319 () Bool)

(assert (=> b!2704076 m!3093319))

(declare-fun m!3093321 () Bool)

(assert (=> b!2704076 m!3093321))

(assert (=> b!2704076 m!3092795))

(assert (=> b!2704076 m!3093317))

(assert (=> b!2704076 m!3093249))

(declare-fun m!3093323 () Bool)

(assert (=> b!2704076 m!3093323))

(assert (=> b!2704076 m!3093303))

(declare-fun m!3093325 () Bool)

(assert (=> b!2704076 m!3093325))

(declare-fun m!3093327 () Bool)

(assert (=> b!2704076 m!3093327))

(assert (=> b!2704076 m!3093317))

(declare-fun m!3093329 () Bool)

(assert (=> b!2704076 m!3093329))

(assert (=> b!2704076 m!3093307))

(assert (=> b!2704076 m!3093297))

(assert (=> b!2704076 m!3093305))

(declare-fun m!3093331 () Bool)

(assert (=> b!2704076 m!3093331))

(assert (=> b!2704076 m!3093303))

(assert (=> b!2704076 m!3093289))

(assert (=> b!2704076 m!3093321))

(declare-fun m!3093333 () Bool)

(assert (=> b!2704076 m!3093333))

(declare-fun m!3093335 () Bool)

(assert (=> b!2704076 m!3093335))

(declare-fun m!3093337 () Bool)

(assert (=> b!2704076 m!3093337))

(assert (=> b!2704076 m!3093293))

(assert (=> b!2704076 m!3093315))

(declare-fun m!3093339 () Bool)

(assert (=> b!2704076 m!3093339))

(assert (=> b!2704076 m!3093335))

(declare-fun m!3093341 () Bool)

(assert (=> d!776945 m!3093341))

(assert (=> d!776945 m!3092863))

(assert (=> d!776945 m!3093127))

(assert (=> d!776945 m!3093249))

(declare-fun m!3093343 () Bool)

(assert (=> b!2704077 m!3093343))

(assert (=> b!2704077 m!3092863))

(assert (=> b!2704077 m!3093131))

(assert (=> b!2703831 d!776945))

(declare-fun d!776947 () Bool)

(declare-fun e!1704816 () Bool)

(assert (=> d!776947 e!1704816))

(declare-fun res!1135605 () Bool)

(assert (=> d!776947 (=> (not res!1135605) (not e!1704816))))

(declare-fun lt!955983 () List!31276)

(assert (=> d!776947 (= res!1135605 (= (content!4415 lt!955983) ((_ map or) (content!4415 lt!955662) (content!4415 (++!7661 lt!955674 lt!955664)))))))

(declare-fun e!1704817 () List!31276)

(assert (=> d!776947 (= lt!955983 e!1704817)))

(declare-fun c!436349 () Bool)

(assert (=> d!776947 (= c!436349 ((_ is Nil!31176) lt!955662))))

(assert (=> d!776947 (= (++!7661 lt!955662 (++!7661 lt!955674 lt!955664)) lt!955983)))

(declare-fun b!2704083 () Bool)

(declare-fun res!1135604 () Bool)

(assert (=> b!2704083 (=> (not res!1135604) (not e!1704816))))

(assert (=> b!2704083 (= res!1135604 (= (size!24083 lt!955983) (+ (size!24083 lt!955662) (size!24083 (++!7661 lt!955674 lt!955664)))))))

(declare-fun b!2704081 () Bool)

(assert (=> b!2704081 (= e!1704817 (++!7661 lt!955674 lt!955664))))

(declare-fun b!2704084 () Bool)

(assert (=> b!2704084 (= e!1704816 (or (not (= (++!7661 lt!955674 lt!955664) Nil!31176)) (= lt!955983 lt!955662)))))

(declare-fun b!2704082 () Bool)

(assert (=> b!2704082 (= e!1704817 (Cons!31176 (h!36596 lt!955662) (++!7661 (t!225702 lt!955662) (++!7661 lt!955674 lt!955664))))))

(assert (= (and d!776947 c!436349) b!2704081))

(assert (= (and d!776947 (not c!436349)) b!2704082))

(assert (= (and d!776947 res!1135605) b!2704083))

(assert (= (and b!2704083 res!1135604) b!2704084))

(declare-fun m!3093345 () Bool)

(assert (=> d!776947 m!3093345))

(assert (=> d!776947 m!3093219))

(assert (=> d!776947 m!3092767))

(declare-fun m!3093347 () Bool)

(assert (=> d!776947 m!3093347))

(declare-fun m!3093349 () Bool)

(assert (=> b!2704083 m!3093349))

(assert (=> b!2704083 m!3093225))

(assert (=> b!2704083 m!3092767))

(declare-fun m!3093351 () Bool)

(assert (=> b!2704083 m!3093351))

(assert (=> b!2704082 m!3092767))

(declare-fun m!3093353 () Bool)

(assert (=> b!2704082 m!3093353))

(assert (=> b!2703831 d!776947))

(declare-fun d!776949 () Bool)

(assert (=> d!776949 (= (list!11762 (_2!18027 lt!955678)) (list!11765 (c!436281 (_2!18027 lt!955678))))))

(declare-fun bs!487229 () Bool)

(assert (= bs!487229 d!776949))

(declare-fun m!3093355 () Bool)

(assert (=> bs!487229 m!3093355))

(assert (=> b!2703831 d!776949))

(declare-fun d!776951 () Bool)

(declare-fun e!1704818 () Bool)

(assert (=> d!776951 e!1704818))

(declare-fun res!1135606 () Bool)

(assert (=> d!776951 (=> (not res!1135606) (not e!1704818))))

(declare-fun lt!955984 () List!31275)

(assert (=> d!776951 (= res!1135606 (= (content!4414 lt!955984) ((_ map or) (content!4414 lt!955659) (content!4414 (++!7658 lt!955676 lt!955680)))))))

(declare-fun e!1704819 () List!31275)

(assert (=> d!776951 (= lt!955984 e!1704819)))

(declare-fun c!436350 () Bool)

(assert (=> d!776951 (= c!436350 ((_ is Nil!31175) lt!955659))))

(assert (=> d!776951 (= (++!7658 lt!955659 (++!7658 lt!955676 lt!955680)) lt!955984)))

(declare-fun b!2704086 () Bool)

(assert (=> b!2704086 (= e!1704819 (Cons!31175 (h!36595 lt!955659) (++!7658 (t!225701 lt!955659) (++!7658 lt!955676 lt!955680))))))

(declare-fun b!2704088 () Bool)

(assert (=> b!2704088 (= e!1704818 (or (not (= (++!7658 lt!955676 lt!955680) Nil!31175)) (= lt!955984 lt!955659)))))

(declare-fun b!2704087 () Bool)

(declare-fun res!1135607 () Bool)

(assert (=> b!2704087 (=> (not res!1135607) (not e!1704818))))

(assert (=> b!2704087 (= res!1135607 (= (size!24082 lt!955984) (+ (size!24082 lt!955659) (size!24082 (++!7658 lt!955676 lt!955680)))))))

(declare-fun b!2704085 () Bool)

(assert (=> b!2704085 (= e!1704819 (++!7658 lt!955676 lt!955680))))

(assert (= (and d!776951 c!436350) b!2704085))

(assert (= (and d!776951 (not c!436350)) b!2704086))

(assert (= (and d!776951 res!1135606) b!2704087))

(assert (= (and b!2704087 res!1135607) b!2704088))

(declare-fun m!3093357 () Bool)

(assert (=> d!776951 m!3093357))

(assert (=> d!776951 m!3093037))

(assert (=> d!776951 m!3092773))

(declare-fun m!3093359 () Bool)

(assert (=> d!776951 m!3093359))

(assert (=> b!2704086 m!3092773))

(declare-fun m!3093361 () Bool)

(assert (=> b!2704086 m!3093361))

(declare-fun m!3093363 () Bool)

(assert (=> b!2704087 m!3093363))

(assert (=> b!2704087 m!3093045))

(assert (=> b!2704087 m!3092773))

(declare-fun m!3093365 () Bool)

(assert (=> b!2704087 m!3093365))

(assert (=> b!2703831 d!776951))

(declare-fun d!776953 () Bool)

(assert (=> d!776953 (= (list!11763 (_1!18027 lt!955678)) (list!11764 (c!436282 (_1!18027 lt!955678))))))

(declare-fun bs!487230 () Bool)

(assert (= bs!487230 d!776953))

(declare-fun m!3093367 () Bool)

(assert (=> bs!487230 m!3093367))

(assert (=> b!2703831 d!776953))

(declare-fun b!2704089 () Bool)

(declare-fun e!1704823 () Bool)

(declare-fun lt!955986 () tuple2!30802)

(assert (=> b!2704089 (= e!1704823 (= (list!11762 (_2!18027 lt!955986)) (list!11762 lt!955657)))))

(declare-fun b!2704090 () Bool)

(declare-fun res!1135608 () Bool)

(declare-fun e!1704821 () Bool)

(assert (=> b!2704090 (=> (not res!1135608) (not e!1704821))))

(assert (=> b!2704090 (= res!1135608 (= (list!11763 (_1!18027 lt!955986)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 lt!955657)))))))

(declare-fun d!776955 () Bool)

(assert (=> d!776955 e!1704821))

(declare-fun res!1135609 () Bool)

(assert (=> d!776955 (=> (not res!1135609) (not e!1704821))))

(assert (=> d!776955 (= res!1135609 e!1704823)))

(declare-fun c!436351 () Bool)

(assert (=> d!776955 (= c!436351 (> (size!24080 (_1!18027 lt!955986)) 0))))

(declare-fun e!1704822 () tuple2!30802)

(assert (=> d!776955 (= lt!955986 e!1704822)))

(declare-fun c!436352 () Bool)

(declare-fun lt!955987 () Option!6151)

(assert (=> d!776955 (= c!436352 ((_ is Some!6150) lt!955987))))

(assert (=> d!776955 (= lt!955987 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955657))))

(assert (=> d!776955 (= (lexRec!615 thiss!12257 rules!1381 lt!955657) lt!955986)))

(declare-fun b!2704091 () Bool)

(declare-fun e!1704820 () Bool)

(assert (=> b!2704091 (= e!1704820 (not (isEmpty!17762 (_1!18027 lt!955986))))))

(declare-fun b!2704092 () Bool)

(declare-fun lt!955985 () tuple2!30802)

(assert (=> b!2704092 (= e!1704822 (tuple2!30803 (prepend!1089 (_1!18027 lt!955985) (_1!18026 (v!32944 lt!955987))) (_2!18027 lt!955985)))))

(assert (=> b!2704092 (= lt!955985 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955987))))))

(declare-fun b!2704093 () Bool)

(assert (=> b!2704093 (= e!1704823 e!1704820)))

(declare-fun res!1135610 () Bool)

(assert (=> b!2704093 (= res!1135610 (< (size!24081 (_2!18027 lt!955986)) (size!24081 lt!955657)))))

(assert (=> b!2704093 (=> (not res!1135610) (not e!1704820))))

(declare-fun b!2704094 () Bool)

(assert (=> b!2704094 (= e!1704822 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!955657))))

(declare-fun b!2704095 () Bool)

(assert (=> b!2704095 (= e!1704821 (= (list!11762 (_2!18027 lt!955986)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 lt!955657)))))))

(assert (= (and d!776955 c!436352) b!2704092))

(assert (= (and d!776955 (not c!436352)) b!2704094))

(assert (= (and d!776955 c!436351) b!2704093))

(assert (= (and d!776955 (not c!436351)) b!2704089))

(assert (= (and b!2704093 res!1135610) b!2704091))

(assert (= (and d!776955 res!1135609) b!2704090))

(assert (= (and b!2704090 res!1135608) b!2704095))

(declare-fun m!3093369 () Bool)

(assert (=> b!2704091 m!3093369))

(declare-fun m!3093371 () Bool)

(assert (=> b!2704090 m!3093371))

(assert (=> b!2704090 m!3093297))

(assert (=> b!2704090 m!3093297))

(declare-fun m!3093373 () Bool)

(assert (=> b!2704090 m!3093373))

(declare-fun m!3093375 () Bool)

(assert (=> b!2704093 m!3093375))

(declare-fun m!3093377 () Bool)

(assert (=> b!2704093 m!3093377))

(declare-fun m!3093379 () Bool)

(assert (=> b!2704089 m!3093379))

(assert (=> b!2704089 m!3093297))

(assert (=> b!2704095 m!3093379))

(assert (=> b!2704095 m!3093297))

(assert (=> b!2704095 m!3093297))

(assert (=> b!2704095 m!3093373))

(declare-fun m!3093381 () Bool)

(assert (=> b!2704092 m!3093381))

(declare-fun m!3093383 () Bool)

(assert (=> b!2704092 m!3093383))

(declare-fun m!3093385 () Bool)

(assert (=> d!776955 m!3093385))

(assert (=> d!776955 m!3092797))

(assert (=> b!2703831 d!776955))

(declare-fun d!776957 () Bool)

(declare-fun e!1704824 () Bool)

(assert (=> d!776957 e!1704824))

(declare-fun res!1135612 () Bool)

(assert (=> d!776957 (=> (not res!1135612) (not e!1704824))))

(declare-fun lt!955988 () List!31276)

(assert (=> d!776957 (= res!1135612 (= (content!4415 lt!955988) ((_ map or) (content!4415 (++!7661 lt!955662 lt!955674)) (content!4415 lt!955664))))))

(declare-fun e!1704825 () List!31276)

(assert (=> d!776957 (= lt!955988 e!1704825)))

(declare-fun c!436353 () Bool)

(assert (=> d!776957 (= c!436353 ((_ is Nil!31176) (++!7661 lt!955662 lt!955674)))))

(assert (=> d!776957 (= (++!7661 (++!7661 lt!955662 lt!955674) lt!955664) lt!955988)))

(declare-fun b!2704098 () Bool)

(declare-fun res!1135611 () Bool)

(assert (=> b!2704098 (=> (not res!1135611) (not e!1704824))))

(assert (=> b!2704098 (= res!1135611 (= (size!24083 lt!955988) (+ (size!24083 (++!7661 lt!955662 lt!955674)) (size!24083 lt!955664))))))

(declare-fun b!2704096 () Bool)

(assert (=> b!2704096 (= e!1704825 lt!955664)))

(declare-fun b!2704099 () Bool)

(assert (=> b!2704099 (= e!1704824 (or (not (= lt!955664 Nil!31176)) (= lt!955988 (++!7661 lt!955662 lt!955674))))))

(declare-fun b!2704097 () Bool)

(assert (=> b!2704097 (= e!1704825 (Cons!31176 (h!36596 (++!7661 lt!955662 lt!955674)) (++!7661 (t!225702 (++!7661 lt!955662 lt!955674)) lt!955664)))))

(assert (= (and d!776957 c!436353) b!2704096))

(assert (= (and d!776957 (not c!436353)) b!2704097))

(assert (= (and d!776957 res!1135612) b!2704098))

(assert (= (and b!2704098 res!1135611) b!2704099))

(declare-fun m!3093387 () Bool)

(assert (=> d!776957 m!3093387))

(assert (=> d!776957 m!3092781))

(declare-fun m!3093389 () Bool)

(assert (=> d!776957 m!3093389))

(assert (=> d!776957 m!3093271))

(declare-fun m!3093391 () Bool)

(assert (=> b!2704098 m!3093391))

(assert (=> b!2704098 m!3092781))

(declare-fun m!3093393 () Bool)

(assert (=> b!2704098 m!3093393))

(assert (=> b!2704098 m!3093275))

(declare-fun m!3093395 () Bool)

(assert (=> b!2704097 m!3093395))

(assert (=> b!2703831 d!776957))

(declare-fun d!776959 () Bool)

(assert (=> d!776959 (= (list!11763 lt!955669) (list!11764 (c!436282 lt!955669)))))

(declare-fun bs!487231 () Bool)

(assert (= bs!487231 d!776959))

(declare-fun m!3093397 () Bool)

(assert (=> bs!487231 m!3093397))

(assert (=> b!2703831 d!776959))

(declare-fun b!2704100 () Bool)

(declare-fun res!1135616 () Bool)

(declare-fun e!1704828 () Bool)

(assert (=> b!2704100 (=> (not res!1135616) (not e!1704828))))

(declare-fun e!1704831 () Bool)

(assert (=> b!2704100 (= res!1135616 e!1704831)))

(declare-fun res!1135613 () Bool)

(assert (=> b!2704100 (=> res!1135613 e!1704831)))

(declare-fun lt!955992 () Option!6151)

(assert (=> b!2704100 (= res!1135613 (not (isDefined!4871 lt!955992)))))

(declare-fun b!2704101 () Bool)

(declare-fun e!1704830 () Option!6151)

(declare-fun call!174236 () Option!6151)

(assert (=> b!2704101 (= e!1704830 call!174236)))

(declare-fun e!1704827 () Bool)

(declare-fun b!2704102 () Bool)

(assert (=> b!2704102 (= e!1704827 (= (list!11762 (_2!18026 (get!9737 lt!955992))) (_2!18035 (get!9738 (maxPrefix!2355 thiss!12257 rules!1381 (list!11762 lt!955657))))))))

(declare-fun b!2704103 () Bool)

(declare-fun e!1704829 () Bool)

(assert (=> b!2704103 (= e!1704828 e!1704829)))

(declare-fun res!1135617 () Bool)

(assert (=> b!2704103 (=> res!1135617 e!1704829)))

(assert (=> b!2704103 (= res!1135617 (not (isDefined!4871 lt!955992)))))

(declare-fun b!2704104 () Bool)

(declare-fun lt!955991 () Option!6151)

(declare-fun lt!955994 () Option!6151)

(assert (=> b!2704104 (= e!1704830 (ite (and ((_ is None!6150) lt!955991) ((_ is None!6150) lt!955994)) None!6150 (ite ((_ is None!6150) lt!955994) lt!955991 (ite ((_ is None!6150) lt!955991) lt!955994 (ite (>= (size!24076 (_1!18026 (v!32944 lt!955991))) (size!24076 (_1!18026 (v!32944 lt!955994)))) lt!955991 lt!955994)))))))

(assert (=> b!2704104 (= lt!955991 call!174236)))

(assert (=> b!2704104 (= lt!955994 (maxPrefixZipperSequence!1013 thiss!12257 (t!225706 rules!1381) lt!955657))))

(declare-fun e!1704826 () Bool)

(declare-fun b!2704105 () Bool)

(assert (=> b!2704105 (= e!1704826 (= (list!11762 (_2!18026 (get!9737 lt!955992))) (_2!18035 (get!9738 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 lt!955657))))))))

(declare-fun b!2704106 () Bool)

(assert (=> b!2704106 (= e!1704831 e!1704826)))

(declare-fun res!1135615 () Bool)

(assert (=> b!2704106 (=> (not res!1135615) (not e!1704826))))

(assert (=> b!2704106 (= res!1135615 (= (_1!18026 (get!9737 lt!955992)) (_1!18035 (get!9738 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 lt!955657))))))))

(declare-fun bm!174231 () Bool)

(assert (=> bm!174231 (= call!174236 (maxPrefixOneRuleZipperSequence!468 thiss!12257 (h!36600 rules!1381) lt!955657))))

(declare-fun d!776961 () Bool)

(assert (=> d!776961 e!1704828))

(declare-fun res!1135618 () Bool)

(assert (=> d!776961 (=> (not res!1135618) (not e!1704828))))

(assert (=> d!776961 (= res!1135618 (= (isDefined!4871 lt!955992) (isDefined!4872 (maxPrefixZipper!459 thiss!12257 rules!1381 (list!11762 lt!955657)))))))

(assert (=> d!776961 (= lt!955992 e!1704830)))

(declare-fun c!436354 () Bool)

(assert (=> d!776961 (= c!436354 (and ((_ is Cons!31180) rules!1381) ((_ is Nil!31180) (t!225706 rules!1381))))))

(declare-fun lt!955990 () Unit!45259)

(declare-fun lt!955989 () Unit!45259)

(assert (=> d!776961 (= lt!955990 lt!955989)))

(declare-fun lt!955993 () List!31275)

(declare-fun lt!955995 () List!31275)

(assert (=> d!776961 (isPrefix!2472 lt!955993 lt!955995)))

(assert (=> d!776961 (= lt!955989 (lemmaIsPrefixRefl!1598 lt!955993 lt!955995))))

(assert (=> d!776961 (= lt!955995 (list!11762 lt!955657))))

(assert (=> d!776961 (= lt!955993 (list!11762 lt!955657))))

(assert (=> d!776961 (rulesValidInductive!1654 thiss!12257 rules!1381)))

(assert (=> d!776961 (= (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!955657) lt!955992)))

(declare-fun b!2704107 () Bool)

(assert (=> b!2704107 (= e!1704829 e!1704827)))

(declare-fun res!1135614 () Bool)

(assert (=> b!2704107 (=> (not res!1135614) (not e!1704827))))

(assert (=> b!2704107 (= res!1135614 (= (_1!18026 (get!9737 lt!955992)) (_1!18035 (get!9738 (maxPrefix!2355 thiss!12257 rules!1381 (list!11762 lt!955657))))))))

(assert (= (and d!776961 c!436354) b!2704101))

(assert (= (and d!776961 (not c!436354)) b!2704104))

(assert (= (or b!2704101 b!2704104) bm!174231))

(assert (= (and d!776961 res!1135618) b!2704100))

(assert (= (and b!2704100 (not res!1135613)) b!2704106))

(assert (= (and b!2704106 res!1135615) b!2704105))

(assert (= (and b!2704100 res!1135616) b!2704103))

(assert (= (and b!2704103 (not res!1135617)) b!2704107))

(assert (= (and b!2704107 res!1135614) b!2704102))

(declare-fun m!3093399 () Bool)

(assert (=> b!2704107 m!3093399))

(assert (=> b!2704107 m!3093297))

(assert (=> b!2704107 m!3093297))

(declare-fun m!3093401 () Bool)

(assert (=> b!2704107 m!3093401))

(assert (=> b!2704107 m!3093401))

(declare-fun m!3093403 () Bool)

(assert (=> b!2704107 m!3093403))

(declare-fun m!3093405 () Bool)

(assert (=> b!2704100 m!3093405))

(assert (=> b!2704106 m!3093399))

(assert (=> b!2704106 m!3093297))

(assert (=> b!2704106 m!3093297))

(declare-fun m!3093407 () Bool)

(assert (=> b!2704106 m!3093407))

(assert (=> b!2704106 m!3093407))

(declare-fun m!3093409 () Bool)

(assert (=> b!2704106 m!3093409))

(assert (=> d!776961 m!3093407))

(declare-fun m!3093411 () Bool)

(assert (=> d!776961 m!3093411))

(assert (=> d!776961 m!3093059))

(assert (=> d!776961 m!3093405))

(assert (=> d!776961 m!3093297))

(assert (=> d!776961 m!3093407))

(declare-fun m!3093413 () Bool)

(assert (=> d!776961 m!3093413))

(declare-fun m!3093415 () Bool)

(assert (=> d!776961 m!3093415))

(assert (=> d!776961 m!3093297))

(declare-fun m!3093417 () Bool)

(assert (=> bm!174231 m!3093417))

(assert (=> b!2704103 m!3093405))

(declare-fun m!3093419 () Bool)

(assert (=> b!2704102 m!3093419))

(assert (=> b!2704102 m!3093401))

(assert (=> b!2704102 m!3093403))

(assert (=> b!2704102 m!3093399))

(assert (=> b!2704102 m!3093297))

(assert (=> b!2704102 m!3093401))

(assert (=> b!2704102 m!3093297))

(declare-fun m!3093421 () Bool)

(assert (=> b!2704104 m!3093421))

(assert (=> b!2704105 m!3093419))

(assert (=> b!2704105 m!3093407))

(assert (=> b!2704105 m!3093409))

(assert (=> b!2704105 m!3093399))

(assert (=> b!2704105 m!3093297))

(assert (=> b!2704105 m!3093407))

(assert (=> b!2704105 m!3093297))

(assert (=> b!2703831 d!776961))

(declare-fun d!776963 () Bool)

(assert (=> d!776963 (= (++!7661 (++!7661 lt!955662 lt!955674) lt!955664) (++!7661 lt!955662 (++!7661 lt!955674 lt!955664)))))

(declare-fun lt!955998 () Unit!45259)

(declare-fun choose!15934 (List!31276 List!31276 List!31276) Unit!45259)

(assert (=> d!776963 (= lt!955998 (choose!15934 lt!955662 lt!955674 lt!955664))))

(assert (=> d!776963 (= (lemmaConcatAssociativity!1566 lt!955662 lt!955674 lt!955664) lt!955998)))

(declare-fun bs!487232 () Bool)

(assert (= bs!487232 d!776963))

(assert (=> bs!487232 m!3092781))

(assert (=> bs!487232 m!3092809))

(assert (=> bs!487232 m!3092767))

(assert (=> bs!487232 m!3092769))

(declare-fun m!3093423 () Bool)

(assert (=> bs!487232 m!3093423))

(assert (=> bs!487232 m!3092781))

(assert (=> bs!487232 m!3092767))

(assert (=> b!2703831 d!776963))

(declare-fun d!776965 () Bool)

(assert (=> d!776965 (= (++!7658 (++!7658 lt!955659 lt!955676) lt!955680) (++!7658 lt!955659 (++!7658 lt!955676 lt!955680)))))

(declare-fun lt!956001 () Unit!45259)

(declare-fun choose!15935 (List!31275 List!31275 List!31275) Unit!45259)

(assert (=> d!776965 (= lt!956001 (choose!15935 lt!955659 lt!955676 lt!955680))))

(assert (=> d!776965 (= (lemmaConcatAssociativity!1565 lt!955659 lt!955676 lt!955680) lt!956001)))

(declare-fun bs!487233 () Bool)

(assert (= bs!487233 d!776965))

(assert (=> bs!487233 m!3092773))

(assert (=> bs!487233 m!3092775))

(assert (=> bs!487233 m!3092765))

(assert (=> bs!487233 m!3092765))

(declare-fun m!3093425 () Bool)

(assert (=> bs!487233 m!3093425))

(declare-fun m!3093427 () Bool)

(assert (=> bs!487233 m!3093427))

(assert (=> bs!487233 m!3092773))

(assert (=> b!2703831 d!776965))

(declare-fun d!776967 () Bool)

(declare-fun c!436355 () Bool)

(assert (=> d!776967 (= c!436355 ((_ is Node!9743) (c!436281 totalInput!354)))))

(declare-fun e!1704832 () Bool)

(assert (=> d!776967 (= (inv!42236 (c!436281 totalInput!354)) e!1704832)))

(declare-fun b!2704108 () Bool)

(assert (=> b!2704108 (= e!1704832 (inv!42243 (c!436281 totalInput!354)))))

(declare-fun b!2704109 () Bool)

(declare-fun e!1704833 () Bool)

(assert (=> b!2704109 (= e!1704832 e!1704833)))

(declare-fun res!1135619 () Bool)

(assert (=> b!2704109 (= res!1135619 (not ((_ is Leaf!14866) (c!436281 totalInput!354))))))

(assert (=> b!2704109 (=> res!1135619 e!1704833)))

(declare-fun b!2704110 () Bool)

(assert (=> b!2704110 (= e!1704833 (inv!42244 (c!436281 totalInput!354)))))

(assert (= (and d!776967 c!436355) b!2704108))

(assert (= (and d!776967 (not c!436355)) b!2704109))

(assert (= (and b!2704109 (not res!1135619)) b!2704110))

(declare-fun m!3093429 () Bool)

(assert (=> b!2704108 m!3093429))

(declare-fun m!3093431 () Bool)

(assert (=> b!2704110 m!3093431))

(assert (=> b!2703812 d!776967))

(declare-fun d!776969 () Bool)

(declare-fun validCacheMapDown!359 (MutableMap!3453) Bool)

(assert (=> d!776969 (= (valid!2757 cacheDown!499) (validCacheMapDown!359 (cache!3596 cacheDown!499)))))

(declare-fun bs!487234 () Bool)

(assert (= bs!487234 d!776969))

(declare-fun m!3093433 () Bool)

(assert (=> bs!487234 m!3093433))

(assert (=> b!2703832 d!776969))

(declare-fun d!776971 () Bool)

(assert (=> d!776971 (= (inv!42237 input!780) (isBalanced!2950 (c!436281 input!780)))))

(declare-fun bs!487235 () Bool)

(assert (= bs!487235 d!776971))

(declare-fun m!3093435 () Bool)

(assert (=> bs!487235 m!3093435))

(assert (=> start!262454 d!776971))

(declare-fun d!776973 () Bool)

(assert (=> d!776973 (= (inv!42237 treated!26) (isBalanced!2950 (c!436281 treated!26)))))

(declare-fun bs!487236 () Bool)

(assert (= bs!487236 d!776973))

(declare-fun m!3093437 () Bool)

(assert (=> bs!487236 m!3093437))

(assert (=> start!262454 d!776973))

(declare-fun d!776975 () Bool)

(declare-fun res!1135622 () Bool)

(declare-fun e!1704836 () Bool)

(assert (=> d!776975 (=> (not res!1135622) (not e!1704836))))

(assert (=> d!776975 (= res!1135622 ((_ is HashMap!3452) (cache!3595 cacheUp!486)))))

(assert (=> d!776975 (= (inv!42238 cacheUp!486) e!1704836)))

(declare-fun b!2704113 () Bool)

(declare-fun validCacheMapUp!328 (MutableMap!3452) Bool)

(assert (=> b!2704113 (= e!1704836 (validCacheMapUp!328 (cache!3595 cacheUp!486)))))

(assert (= (and d!776975 res!1135622) b!2704113))

(declare-fun m!3093439 () Bool)

(assert (=> b!2704113 m!3093439))

(assert (=> start!262454 d!776975))

(declare-fun d!776977 () Bool)

(declare-fun res!1135625 () Bool)

(declare-fun e!1704839 () Bool)

(assert (=> d!776977 (=> (not res!1135625) (not e!1704839))))

(assert (=> d!776977 (= res!1135625 ((_ is HashMap!3453) (cache!3596 cacheDown!499)))))

(assert (=> d!776977 (= (inv!42240 cacheDown!499) e!1704839)))

(declare-fun b!2704116 () Bool)

(assert (=> b!2704116 (= e!1704839 (validCacheMapDown!359 (cache!3596 cacheDown!499)))))

(assert (= (and d!776977 res!1135625) b!2704116))

(assert (=> b!2704116 m!3093433))

(assert (=> start!262454 d!776977))

(declare-fun d!776979 () Bool)

(assert (=> d!776979 (= (inv!42239 acc!348) (isBalanced!2949 (c!436282 acc!348)))))

(declare-fun bs!487237 () Bool)

(assert (= bs!487237 d!776979))

(declare-fun m!3093441 () Bool)

(assert (=> bs!487237 m!3093441))

(assert (=> start!262454 d!776979))

(declare-fun d!776981 () Bool)

(assert (=> d!776981 (= (inv!42237 totalInput!354) (isBalanced!2950 (c!436281 totalInput!354)))))

(declare-fun bs!487238 () Bool)

(assert (= bs!487238 d!776981))

(declare-fun m!3093443 () Bool)

(assert (=> bs!487238 m!3093443))

(assert (=> start!262454 d!776981))

(declare-fun b!2704117 () Bool)

(declare-fun e!1704843 () Bool)

(declare-fun lt!956003 () tuple2!30802)

(assert (=> b!2704117 (= e!1704843 (= (list!11762 (_2!18027 lt!956003)) (list!11762 (_2!18026 (v!32944 lt!955671)))))))

(declare-fun b!2704118 () Bool)

(declare-fun res!1135626 () Bool)

(declare-fun e!1704841 () Bool)

(assert (=> b!2704118 (=> (not res!1135626) (not e!1704841))))

(assert (=> b!2704118 (= res!1135626 (= (list!11763 (_1!18027 lt!956003)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 (_2!18026 (v!32944 lt!955671)))))))))

(declare-fun d!776983 () Bool)

(assert (=> d!776983 e!1704841))

(declare-fun res!1135627 () Bool)

(assert (=> d!776983 (=> (not res!1135627) (not e!1704841))))

(assert (=> d!776983 (= res!1135627 e!1704843)))

(declare-fun c!436356 () Bool)

(assert (=> d!776983 (= c!436356 (> (size!24080 (_1!18027 lt!956003)) 0))))

(declare-fun e!1704842 () tuple2!30802)

(assert (=> d!776983 (= lt!956003 e!1704842)))

(declare-fun c!436357 () Bool)

(declare-fun lt!956004 () Option!6151)

(assert (=> d!776983 (= c!436357 ((_ is Some!6150) lt!956004))))

(assert (=> d!776983 (= lt!956004 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955671))))))

(assert (=> d!776983 (= (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!955671))) lt!956003)))

(declare-fun b!2704119 () Bool)

(declare-fun e!1704840 () Bool)

(assert (=> b!2704119 (= e!1704840 (not (isEmpty!17762 (_1!18027 lt!956003))))))

(declare-fun b!2704120 () Bool)

(declare-fun lt!956002 () tuple2!30802)

(assert (=> b!2704120 (= e!1704842 (tuple2!30803 (prepend!1089 (_1!18027 lt!956002) (_1!18026 (v!32944 lt!956004))) (_2!18027 lt!956002)))))

(assert (=> b!2704120 (= lt!956002 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!956004))))))

(declare-fun b!2704121 () Bool)

(assert (=> b!2704121 (= e!1704843 e!1704840)))

(declare-fun res!1135628 () Bool)

(assert (=> b!2704121 (= res!1135628 (< (size!24081 (_2!18027 lt!956003)) (size!24081 (_2!18026 (v!32944 lt!955671)))))))

(assert (=> b!2704121 (=> (not res!1135628) (not e!1704840))))

(declare-fun b!2704122 () Bool)

(assert (=> b!2704122 (= e!1704842 (tuple2!30803 (BalanceConc!19103 Empty!9744) (_2!18026 (v!32944 lt!955671))))))

(declare-fun b!2704123 () Bool)

(assert (=> b!2704123 (= e!1704841 (= (list!11762 (_2!18027 lt!956003)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 (_2!18026 (v!32944 lt!955671)))))))))

(assert (= (and d!776983 c!436357) b!2704120))

(assert (= (and d!776983 (not c!436357)) b!2704122))

(assert (= (and d!776983 c!436356) b!2704121))

(assert (= (and d!776983 (not c!436356)) b!2704117))

(assert (= (and b!2704121 res!1135628) b!2704119))

(assert (= (and d!776983 res!1135627) b!2704118))

(assert (= (and b!2704118 res!1135626) b!2704123))

(declare-fun m!3093445 () Bool)

(assert (=> b!2704119 m!3093445))

(declare-fun m!3093447 () Bool)

(assert (=> b!2704118 m!3093447))

(declare-fun m!3093449 () Bool)

(assert (=> b!2704118 m!3093449))

(assert (=> b!2704118 m!3093449))

(declare-fun m!3093451 () Bool)

(assert (=> b!2704118 m!3093451))

(declare-fun m!3093453 () Bool)

(assert (=> b!2704121 m!3093453))

(declare-fun m!3093455 () Bool)

(assert (=> b!2704121 m!3093455))

(declare-fun m!3093457 () Bool)

(assert (=> b!2704117 m!3093457))

(assert (=> b!2704117 m!3093449))

(assert (=> b!2704123 m!3093457))

(assert (=> b!2704123 m!3093449))

(assert (=> b!2704123 m!3093449))

(assert (=> b!2704123 m!3093451))

(declare-fun m!3093459 () Bool)

(assert (=> b!2704120 m!3093459))

(declare-fun m!3093461 () Bool)

(assert (=> b!2704120 m!3093461))

(declare-fun m!3093463 () Bool)

(assert (=> d!776983 m!3093463))

(declare-fun m!3093465 () Bool)

(assert (=> d!776983 m!3093465))

(assert (=> b!2703830 d!776983))

(declare-fun d!776985 () Bool)

(declare-fun e!1704846 () Bool)

(assert (=> d!776985 e!1704846))

(declare-fun res!1135631 () Bool)

(assert (=> d!776985 (=> (not res!1135631) (not e!1704846))))

(declare-fun prepend!1090 (Conc!9744 Token!8980) Conc!9744)

(assert (=> d!776985 (= res!1135631 (isBalanced!2949 (prepend!1090 (c!436282 (_1!18027 lt!955677)) (_1!18026 (v!32944 lt!955671)))))))

(declare-fun lt!956007 () BalanceConc!19102)

(assert (=> d!776985 (= lt!956007 (BalanceConc!19103 (prepend!1090 (c!436282 (_1!18027 lt!955677)) (_1!18026 (v!32944 lt!955671)))))))

(assert (=> d!776985 (= (prepend!1089 (_1!18027 lt!955677) (_1!18026 (v!32944 lt!955671))) lt!956007)))

(declare-fun b!2704126 () Bool)

(assert (=> b!2704126 (= e!1704846 (= (list!11763 lt!956007) (Cons!31176 (_1!18026 (v!32944 lt!955671)) (list!11763 (_1!18027 lt!955677)))))))

(assert (= (and d!776985 res!1135631) b!2704126))

(declare-fun m!3093467 () Bool)

(assert (=> d!776985 m!3093467))

(assert (=> d!776985 m!3093467))

(declare-fun m!3093469 () Bool)

(assert (=> d!776985 m!3093469))

(declare-fun m!3093471 () Bool)

(assert (=> b!2704126 m!3093471))

(declare-fun m!3093473 () Bool)

(assert (=> b!2704126 m!3093473))

(assert (=> b!2703830 d!776985))

(declare-fun d!776987 () Bool)

(declare-fun e!1704847 () Bool)

(assert (=> d!776987 e!1704847))

(declare-fun res!1135632 () Bool)

(assert (=> d!776987 (=> (not res!1135632) (not e!1704847))))

(assert (=> d!776987 (= res!1135632 (isBalanced!2949 (prepend!1090 (c!436282 (_1!18027 lt!955678)) (_1!18026 (v!32944 lt!955668)))))))

(declare-fun lt!956008 () BalanceConc!19102)

(assert (=> d!776987 (= lt!956008 (BalanceConc!19103 (prepend!1090 (c!436282 (_1!18027 lt!955678)) (_1!18026 (v!32944 lt!955668)))))))

(assert (=> d!776987 (= (prepend!1089 (_1!18027 lt!955678) (_1!18026 (v!32944 lt!955668))) lt!956008)))

(declare-fun b!2704127 () Bool)

(assert (=> b!2704127 (= e!1704847 (= (list!11763 lt!956008) (Cons!31176 (_1!18026 (v!32944 lt!955668)) (list!11763 (_1!18027 lt!955678)))))))

(assert (= (and d!776987 res!1135632) b!2704127))

(declare-fun m!3093475 () Bool)

(assert (=> d!776987 m!3093475))

(assert (=> d!776987 m!3093475))

(declare-fun m!3093477 () Bool)

(assert (=> d!776987 m!3093477))

(declare-fun m!3093479 () Bool)

(assert (=> b!2704127 m!3093479))

(assert (=> b!2704127 m!3092801))

(assert (=> b!2703811 d!776987))

(declare-fun d!776989 () Bool)

(assert (=> d!776989 (= (list!11762 (_2!18027 lt!955661)) (list!11765 (c!436281 (_2!18027 lt!955661))))))

(declare-fun bs!487239 () Bool)

(assert (= bs!487239 d!776989))

(declare-fun m!3093481 () Bool)

(assert (=> bs!487239 m!3093481))

(assert (=> b!2703849 d!776989))

(declare-fun d!776991 () Bool)

(assert (=> d!776991 (= (list!11762 (_2!18027 lt!955675)) (list!11765 (c!436281 (_2!18027 lt!955675))))))

(declare-fun bs!487240 () Bool)

(assert (= bs!487240 d!776991))

(declare-fun m!3093483 () Bool)

(assert (=> bs!487240 m!3093483))

(assert (=> b!2703849 d!776991))

(declare-fun d!776993 () Bool)

(assert (=> d!776993 (= (inv!42234 (tag!5261 (h!36600 rules!1381))) (= (mod (str.len (value!153188 (tag!5261 (h!36600 rules!1381)))) 2) 0))))

(assert (=> b!2703829 d!776993))

(declare-fun d!776995 () Bool)

(declare-fun res!1135635 () Bool)

(declare-fun e!1704850 () Bool)

(assert (=> d!776995 (=> (not res!1135635) (not e!1704850))))

(declare-fun semiInverseModEq!1965 (Int Int) Bool)

(assert (=> d!776995 (= res!1135635 (semiInverseModEq!1965 (toChars!6578 (transformation!4757 (h!36600 rules!1381))) (toValue!6719 (transformation!4757 (h!36600 rules!1381)))))))

(assert (=> d!776995 (= (inv!42242 (transformation!4757 (h!36600 rules!1381))) e!1704850)))

(declare-fun b!2704130 () Bool)

(declare-fun equivClasses!1866 (Int Int) Bool)

(assert (=> b!2704130 (= e!1704850 (equivClasses!1866 (toChars!6578 (transformation!4757 (h!36600 rules!1381))) (toValue!6719 (transformation!4757 (h!36600 rules!1381)))))))

(assert (= (and d!776995 res!1135635) b!2704130))

(declare-fun m!3093485 () Bool)

(assert (=> d!776995 m!3093485))

(declare-fun m!3093487 () Bool)

(assert (=> b!2704130 m!3093487))

(assert (=> b!2703829 d!776995))

(declare-fun d!776997 () Bool)

(assert (=> d!776997 (= (valid!2756 cacheUp!486) (validCacheMapUp!328 (cache!3595 cacheUp!486)))))

(declare-fun bs!487241 () Bool)

(assert (= bs!487241 d!776997))

(assert (=> bs!487241 m!3093439))

(assert (=> b!2703827 d!776997))

(declare-fun d!776999 () Bool)

(assert (=> d!776999 (= (list!11762 (_2!18027 (_1!18033 lt!955658))) (list!11765 (c!436281 (_2!18027 (_1!18033 lt!955658)))))))

(declare-fun bs!487242 () Bool)

(assert (= bs!487242 d!776999))

(declare-fun m!3093489 () Bool)

(assert (=> bs!487242 m!3093489))

(assert (=> b!2703846 d!776999))

(declare-fun d!777001 () Bool)

(assert (=> d!777001 (= (list!11762 (_2!18027 lt!955681)) (list!11765 (c!436281 (_2!18027 lt!955681))))))

(declare-fun bs!487243 () Bool)

(assert (= bs!487243 d!777001))

(declare-fun m!3093491 () Bool)

(assert (=> bs!487243 m!3093491))

(assert (=> b!2703846 d!777001))

(declare-fun d!777003 () Bool)

(declare-fun c!436361 () Bool)

(assert (=> d!777003 (= c!436361 ((_ is Node!9744) (c!436282 acc!348)))))

(declare-fun e!1704855 () Bool)

(assert (=> d!777003 (= (inv!42241 (c!436282 acc!348)) e!1704855)))

(declare-fun b!2704137 () Bool)

(declare-fun inv!42245 (Conc!9744) Bool)

(assert (=> b!2704137 (= e!1704855 (inv!42245 (c!436282 acc!348)))))

(declare-fun b!2704138 () Bool)

(declare-fun e!1704856 () Bool)

(assert (=> b!2704138 (= e!1704855 e!1704856)))

(declare-fun res!1135638 () Bool)

(assert (=> b!2704138 (= res!1135638 (not ((_ is Leaf!14867) (c!436282 acc!348))))))

(assert (=> b!2704138 (=> res!1135638 e!1704856)))

(declare-fun b!2704139 () Bool)

(declare-fun inv!42246 (Conc!9744) Bool)

(assert (=> b!2704139 (= e!1704856 (inv!42246 (c!436282 acc!348)))))

(assert (= (and d!777003 c!436361) b!2704137))

(assert (= (and d!777003 (not c!436361)) b!2704138))

(assert (= (and b!2704138 (not res!1135638)) b!2704139))

(declare-fun m!3093493 () Bool)

(assert (=> b!2704137 m!3093493))

(declare-fun m!3093495 () Bool)

(assert (=> b!2704139 m!3093495))

(assert (=> b!2703826 d!777003))

(declare-fun d!777005 () Bool)

(assert (=> d!777005 (= (list!11763 (_1!18027 lt!955681)) (list!11764 (c!436282 (_1!18027 lt!955681))))))

(declare-fun bs!487244 () Bool)

(assert (= bs!487244 d!777005))

(declare-fun m!3093497 () Bool)

(assert (=> bs!487244 m!3093497))

(assert (=> b!2703823 d!777005))

(declare-fun d!777007 () Bool)

(assert (=> d!777007 (= (list!11763 (_1!18027 (_1!18033 lt!955658))) (list!11764 (c!436282 (_1!18027 (_1!18033 lt!955658)))))))

(declare-fun bs!487245 () Bool)

(assert (= bs!487245 d!777007))

(declare-fun m!3093499 () Bool)

(assert (=> bs!487245 m!3093499))

(assert (=> b!2703823 d!777007))

(declare-fun d!777009 () Bool)

(declare-fun e!1704857 () Bool)

(assert (=> d!777009 e!1704857))

(declare-fun res!1135639 () Bool)

(assert (=> d!777009 (=> (not res!1135639) (not e!1704857))))

(assert (=> d!777009 (= res!1135639 (isBalanced!2949 (append!783 (c!436282 acc!348) (_1!18026 (v!32944 (_1!18032 lt!955663))))))))

(declare-fun lt!956009 () BalanceConc!19102)

(assert (=> d!777009 (= lt!956009 (BalanceConc!19103 (append!783 (c!436282 acc!348) (_1!18026 (v!32944 (_1!18032 lt!955663))))))))

(assert (=> d!777009 (= (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) lt!956009)))

(declare-fun b!2704140 () Bool)

(assert (=> b!2704140 (= e!1704857 (= (list!11763 lt!956009) ($colon+!171 (list!11763 acc!348) (_1!18026 (v!32944 (_1!18032 lt!955663))))))))

(assert (= (and d!777009 res!1135639) b!2704140))

(declare-fun m!3093501 () Bool)

(assert (=> d!777009 m!3093501))

(assert (=> d!777009 m!3093501))

(declare-fun m!3093503 () Bool)

(assert (=> d!777009 m!3093503))

(declare-fun m!3093505 () Bool)

(assert (=> b!2704140 m!3093505))

(assert (=> b!2704140 m!3092737))

(assert (=> b!2704140 m!3092737))

(declare-fun m!3093507 () Bool)

(assert (=> b!2704140 m!3093507))

(assert (=> b!2703823 d!777009))

(declare-fun b!2704159 () Bool)

(declare-fun lt!956069 () tuple3!4316)

(declare-fun e!1704871 () Bool)

(assert (=> b!2704159 (= e!1704871 (= (list!11762 (_2!18027 (_1!18033 lt!956069))) (list!11762 (_2!18027 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (_2!18026 (v!32944 (_1!18032 lt!955663))) (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))))))

(declare-fun lt!956090 () tuple3!4314)

(declare-fun e!1704872 () tuple3!4316)

(declare-fun b!2704160 () Bool)

(assert (=> b!2704160 (= e!1704872 (tuple3!4317 (tuple2!30803 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_2!18026 (v!32944 (_1!18032 lt!955663)))) (_2!18032 lt!956090) (_3!2627 lt!956090)))))

(declare-fun e!1704870 () tuple2!30802)

(declare-fun lt!956080 () Option!6151)

(declare-fun b!2704161 () Bool)

(assert (=> b!2704161 (= e!1704870 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (charsOf!2996 (_1!18026 (v!32944 lt!956080)))) (_2!18026 (v!32944 lt!956080)) (append!782 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_1!18026 (v!32944 lt!956080)))))))

(declare-fun lt!956085 () tuple2!30802)

(assert (=> b!2704161 (= lt!956085 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!956080))))))

(declare-fun lt!956087 () List!31275)

(assert (=> b!2704161 (= lt!956087 (list!11762 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))))

(declare-fun lt!956073 () List!31275)

(assert (=> b!2704161 (= lt!956073 (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!956080)))))))

(declare-fun lt!956096 () List!31275)

(assert (=> b!2704161 (= lt!956096 (list!11762 (_2!18026 (v!32944 lt!956080))))))

(declare-fun lt!956082 () Unit!45259)

(assert (=> b!2704161 (= lt!956082 (lemmaConcatAssociativity!1565 lt!956087 lt!956073 lt!956096))))

(assert (=> b!2704161 (= (++!7658 (++!7658 lt!956087 lt!956073) lt!956096) (++!7658 lt!956087 (++!7658 lt!956073 lt!956096)))))

(declare-fun lt!956092 () Unit!45259)

(assert (=> b!2704161 (= lt!956092 lt!956082)))

(declare-fun lt!956075 () Option!6151)

(assert (=> b!2704161 (= lt!956075 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663)))))))

(declare-fun c!436370 () Bool)

(assert (=> b!2704161 (= c!436370 ((_ is Some!6150) lt!956075))))

(declare-fun e!1704869 () tuple2!30802)

(assert (=> b!2704161 (= (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663)))) e!1704869)))

(declare-fun lt!956086 () Unit!45259)

(declare-fun Unit!45267 () Unit!45259)

(assert (=> b!2704161 (= lt!956086 Unit!45267)))

(declare-fun lt!956094 () List!31276)

(assert (=> b!2704161 (= lt!956094 (list!11763 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663))))))))

(declare-fun lt!956088 () List!31276)

(assert (=> b!2704161 (= lt!956088 (Cons!31176 (_1!18026 (v!32944 lt!956080)) Nil!31176))))

(declare-fun lt!956068 () List!31276)

(assert (=> b!2704161 (= lt!956068 (list!11763 (_1!18027 lt!956085)))))

(declare-fun lt!956074 () Unit!45259)

(assert (=> b!2704161 (= lt!956074 (lemmaConcatAssociativity!1566 lt!956094 lt!956088 lt!956068))))

(assert (=> b!2704161 (= (++!7661 (++!7661 lt!956094 lt!956088) lt!956068) (++!7661 lt!956094 (++!7661 lt!956088 lt!956068)))))

(declare-fun lt!956091 () Unit!45259)

(assert (=> b!2704161 (= lt!956091 lt!956074)))

(declare-fun lt!956072 () List!31275)

(assert (=> b!2704161 (= lt!956072 (++!7658 (list!11762 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663)))))) (list!11762 (charsOf!2996 (_1!18026 (v!32944 lt!956080))))))))

(declare-fun lt!956095 () List!31275)

(assert (=> b!2704161 (= lt!956095 (list!11762 (_2!18026 (v!32944 lt!956080))))))

(declare-fun lt!956070 () List!31276)

(assert (=> b!2704161 (= lt!956070 (list!11763 (append!782 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_1!18026 (v!32944 lt!956080)))))))

(declare-fun lt!956083 () Unit!45259)

(assert (=> b!2704161 (= lt!956083 (lemmaLexThenLexPrefix!412 thiss!12257 rules!1381 lt!956072 lt!956095 lt!956070 (list!11763 (_1!18027 lt!956085)) (list!11762 (_2!18027 lt!956085))))))

(assert (=> b!2704161 (= (lexList!1200 thiss!12257 rules!1381 lt!956072) (tuple2!30811 lt!956070 Nil!31175))))

(declare-fun lt!956089 () Unit!45259)

(assert (=> b!2704161 (= lt!956089 lt!956083)))

(declare-fun lt!956076 () BalanceConc!19100)

(assert (=> b!2704161 (= lt!956076 (++!7660 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (charsOf!2996 (_1!18026 (v!32944 lt!956080)))))))

(declare-fun lt!956077 () Option!6151)

(assert (=> b!2704161 (= lt!956077 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 lt!956076))))

(declare-fun c!436371 () Bool)

(assert (=> b!2704161 (= c!436371 ((_ is Some!6150) lt!956077))))

(declare-fun e!1704868 () tuple2!30802)

(assert (=> b!2704161 (= (lexRec!615 thiss!12257 rules!1381 (++!7660 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (charsOf!2996 (_1!18026 (v!32944 lt!956080))))) e!1704868)))

(declare-fun lt!956079 () Unit!45259)

(declare-fun Unit!45268 () Unit!45259)

(assert (=> b!2704161 (= lt!956079 Unit!45268)))

(declare-fun lt!956081 () tuple2!30802)

(declare-fun b!2704162 () Bool)

(assert (=> b!2704162 (= lt!956081 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!956077))))))

(assert (=> b!2704162 (= e!1704868 (tuple2!30803 (prepend!1089 (_1!18027 lt!956081) (_1!18026 (v!32944 lt!956077))) (_2!18027 lt!956081)))))

(declare-fun b!2704163 () Bool)

(assert (=> b!2704163 (= e!1704868 (tuple2!30803 (BalanceConc!19103 Empty!9744) lt!956076))))

(declare-fun d!777011 () Bool)

(assert (=> d!777011 e!1704871))

(declare-fun res!1135642 () Bool)

(assert (=> d!777011 (=> (not res!1135642) (not e!1704871))))

(assert (=> d!777011 (= res!1135642 (= (list!11763 (_1!18027 (_1!18033 lt!956069))) (list!11763 (_1!18027 (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (_2!18026 (v!32944 (_1!18032 lt!955663))) (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))))))

(assert (=> d!777011 (= lt!956069 e!1704872)))

(declare-fun c!436373 () Bool)

(assert (=> d!777011 (= c!436373 ((_ is Some!6150) (_1!18032 lt!956090)))))

(assert (=> d!777011 (= lt!956090 (maxPrefixZipperSequenceMem!24 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663))) (_2!18032 lt!955663) (_3!2627 lt!955663)))))

(declare-fun lt!956084 () Unit!45259)

(declare-fun Unit!45269 () Unit!45259)

(assert (=> d!777011 (= lt!956084 Unit!45269)))

(assert (=> d!777011 (= (lex!1964 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663)))) (lexTailRecV2!876 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663))) (BalanceConc!19101 Empty!9743) (_2!18026 (v!32944 (_1!18032 lt!955663))) (BalanceConc!19103 Empty!9744)))))

(declare-fun lt!956093 () Unit!45259)

(declare-fun Unit!45270 () Unit!45259)

(assert (=> d!777011 (= lt!956093 Unit!45270)))

(assert (=> d!777011 (= (lexTailRec!36 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (_2!18026 (v!32944 (_1!18032 lt!955663))) (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663))))) e!1704870)))

(declare-fun c!436372 () Bool)

(assert (=> d!777011 (= c!436372 ((_ is Some!6150) lt!956080))))

(assert (=> d!777011 (= lt!956080 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 (_2!18026 (v!32944 (_1!18032 lt!955663)))))))

(assert (=> d!777011 (= (lexTailRecMem!12 thiss!12257 rules!1381 totalInput!354 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (_2!18026 (v!32944 (_1!18032 lt!955663))) (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_2!18032 lt!955663) (_3!2627 lt!955663)) lt!956069)))

(declare-fun b!2704164 () Bool)

(assert (=> b!2704164 (= e!1704869 (tuple2!30803 (BalanceConc!19103 Empty!9744) (_2!18026 (v!32944 (_1!18032 lt!955663)))))))

(declare-fun b!2704165 () Bool)

(declare-fun lt!956071 () tuple2!30802)

(assert (=> b!2704165 (= lt!956071 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!956075))))))

(assert (=> b!2704165 (= e!1704869 (tuple2!30803 (prepend!1089 (_1!18027 lt!956071) (_1!18026 (v!32944 lt!956075))) (_2!18027 lt!956071)))))

(declare-fun b!2704166 () Bool)

(declare-fun lt!956078 () tuple3!4316)

(assert (=> b!2704166 (= e!1704872 (tuple3!4317 (_1!18033 lt!956078) (_2!18033 lt!956078) (_3!2628 lt!956078)))))

(assert (=> b!2704166 (= lt!956078 (lexTailRecMem!12 thiss!12257 rules!1381 totalInput!354 (++!7660 (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!956090))))) (_2!18026 (v!32944 (_1!18032 lt!956090))) (append!782 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_1!18026 (v!32944 (_1!18032 lt!956090)))) (_2!18032 lt!956090) (_3!2627 lt!956090)))))

(declare-fun b!2704167 () Bool)

(assert (=> b!2704167 (= e!1704870 (tuple2!30803 (append!782 acc!348 (_1!18026 (v!32944 (_1!18032 lt!955663)))) (_2!18026 (v!32944 (_1!18032 lt!955663)))))))

(assert (= (and d!777011 c!436372) b!2704161))

(assert (= (and d!777011 (not c!436372)) b!2704167))

(assert (= (and b!2704161 c!436370) b!2704165))

(assert (= (and b!2704161 (not c!436370)) b!2704164))

(assert (= (and b!2704161 c!436371) b!2704162))

(assert (= (and b!2704161 (not c!436371)) b!2704163))

(assert (= (and d!777011 c!436373) b!2704166))

(assert (= (and d!777011 (not c!436373)) b!2704160))

(assert (= (and d!777011 res!1135642) b!2704159))

(assert (=> b!2704161 m!3092811))

(declare-fun m!3093509 () Bool)

(assert (=> b!2704161 m!3093509))

(declare-fun m!3093511 () Bool)

(assert (=> b!2704161 m!3093511))

(declare-fun m!3093513 () Bool)

(assert (=> b!2704161 m!3093513))

(assert (=> b!2704161 m!3093511))

(declare-fun m!3093515 () Bool)

(assert (=> b!2704161 m!3093515))

(declare-fun m!3093517 () Bool)

(assert (=> b!2704161 m!3093517))

(declare-fun m!3093519 () Bool)

(assert (=> b!2704161 m!3093519))

(declare-fun m!3093521 () Bool)

(assert (=> b!2704161 m!3093521))

(assert (=> b!2704161 m!3092811))

(declare-fun m!3093523 () Bool)

(assert (=> b!2704161 m!3093523))

(declare-fun m!3093525 () Bool)

(assert (=> b!2704161 m!3093525))

(declare-fun m!3093527 () Bool)

(assert (=> b!2704161 m!3093527))

(declare-fun m!3093529 () Bool)

(assert (=> b!2704161 m!3093529))

(declare-fun m!3093531 () Bool)

(assert (=> b!2704161 m!3093531))

(assert (=> b!2704161 m!3093515))

(declare-fun m!3093533 () Bool)

(assert (=> b!2704161 m!3093533))

(assert (=> b!2704161 m!3093519))

(assert (=> b!2704161 m!3093511))

(declare-fun m!3093535 () Bool)

(assert (=> b!2704161 m!3093535))

(declare-fun m!3093537 () Bool)

(assert (=> b!2704161 m!3093537))

(declare-fun m!3093539 () Bool)

(assert (=> b!2704161 m!3093539))

(declare-fun m!3093541 () Bool)

(assert (=> b!2704161 m!3093541))

(assert (=> b!2704161 m!3093513))

(declare-fun m!3093543 () Bool)

(assert (=> b!2704161 m!3093543))

(assert (=> b!2704161 m!3093527))

(declare-fun m!3093545 () Bool)

(assert (=> b!2704161 m!3093545))

(declare-fun m!3093547 () Bool)

(assert (=> b!2704161 m!3093547))

(declare-fun m!3093549 () Bool)

(assert (=> b!2704161 m!3093549))

(assert (=> b!2704161 m!3092813))

(assert (=> b!2704161 m!3093515))

(assert (=> b!2704161 m!3093509))

(declare-fun m!3093551 () Bool)

(assert (=> b!2704161 m!3093551))

(assert (=> b!2704161 m!3092813))

(declare-fun m!3093553 () Bool)

(assert (=> b!2704161 m!3093553))

(assert (=> b!2704161 m!3093523))

(assert (=> b!2704161 m!3093551))

(declare-fun m!3093555 () Bool)

(assert (=> b!2704161 m!3093555))

(assert (=> b!2704161 m!3093509))

(declare-fun m!3093557 () Bool)

(assert (=> b!2704161 m!3093557))

(assert (=> b!2704161 m!3093545))

(assert (=> b!2704161 m!3093529))

(declare-fun m!3093559 () Bool)

(assert (=> b!2704161 m!3093559))

(declare-fun m!3093561 () Bool)

(assert (=> b!2704161 m!3093561))

(assert (=> b!2704161 m!3093559))

(declare-fun m!3093563 () Bool)

(assert (=> b!2704161 m!3093563))

(declare-fun m!3093565 () Bool)

(assert (=> b!2704161 m!3093565))

(declare-fun m!3093567 () Bool)

(assert (=> b!2704165 m!3093567))

(declare-fun m!3093569 () Bool)

(assert (=> b!2704165 m!3093569))

(declare-fun m!3093571 () Bool)

(assert (=> b!2704166 m!3093571))

(assert (=> b!2704166 m!3092811))

(assert (=> b!2704166 m!3093571))

(declare-fun m!3093573 () Bool)

(assert (=> b!2704166 m!3093573))

(assert (=> b!2704166 m!3092813))

(declare-fun m!3093575 () Bool)

(assert (=> b!2704166 m!3093575))

(assert (=> b!2704166 m!3093573))

(assert (=> b!2704166 m!3093575))

(declare-fun m!3093577 () Bool)

(assert (=> b!2704166 m!3093577))

(declare-fun m!3093579 () Bool)

(assert (=> d!777011 m!3093579))

(declare-fun m!3093581 () Bool)

(assert (=> d!777011 m!3093581))

(declare-fun m!3093583 () Bool)

(assert (=> d!777011 m!3093583))

(declare-fun m!3093585 () Bool)

(assert (=> d!777011 m!3093585))

(assert (=> d!777011 m!3092811))

(assert (=> d!777011 m!3092813))

(declare-fun m!3093587 () Bool)

(assert (=> d!777011 m!3093587))

(assert (=> d!777011 m!3093565))

(declare-fun m!3093589 () Bool)

(assert (=> d!777011 m!3093589))

(declare-fun m!3093591 () Bool)

(assert (=> b!2704159 m!3093591))

(assert (=> b!2704159 m!3092811))

(assert (=> b!2704159 m!3092813))

(assert (=> b!2704159 m!3093587))

(declare-fun m!3093593 () Bool)

(assert (=> b!2704159 m!3093593))

(declare-fun m!3093595 () Bool)

(assert (=> b!2704162 m!3093595))

(declare-fun m!3093597 () Bool)

(assert (=> b!2704162 m!3093597))

(assert (=> b!2703823 d!777011))

(declare-fun b!2704168 () Bool)

(declare-fun res!1135644 () Bool)

(declare-fun e!1704873 () Bool)

(assert (=> b!2704168 (=> (not res!1135644) (not e!1704873))))

(assert (=> b!2704168 (= res!1135644 (isBalanced!2950 (++!7663 (c!436281 treated!26) (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))))))

(declare-fun d!777013 () Bool)

(assert (=> d!777013 e!1704873))

(declare-fun res!1135643 () Bool)

(assert (=> d!777013 (=> (not res!1135643) (not e!1704873))))

(assert (=> d!777013 (= res!1135643 (appendAssocInst!671 (c!436281 treated!26) (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))))

(declare-fun lt!956097 () BalanceConc!19100)

(assert (=> d!777013 (= lt!956097 (BalanceConc!19101 (++!7663 (c!436281 treated!26) (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))))))

(assert (=> d!777013 (= (++!7660 treated!26 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))) lt!956097)))

(declare-fun b!2704169 () Bool)

(declare-fun res!1135645 () Bool)

(assert (=> b!2704169 (=> (not res!1135645) (not e!1704873))))

(assert (=> b!2704169 (= res!1135645 (<= (height!1432 (++!7663 (c!436281 treated!26) (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) (+ (max!0 (height!1432 (c!436281 treated!26)) (height!1432 (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) 1)))))

(declare-fun b!2704171 () Bool)

(assert (=> b!2704171 (= e!1704873 (= (list!11762 lt!956097) (++!7658 (list!11762 treated!26) (list!11762 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))))))

(declare-fun b!2704170 () Bool)

(declare-fun res!1135646 () Bool)

(assert (=> b!2704170 (=> (not res!1135646) (not e!1704873))))

(assert (=> b!2704170 (= res!1135646 (>= (height!1432 (++!7663 (c!436281 treated!26) (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) (max!0 (height!1432 (c!436281 treated!26)) (height!1432 (c!436281 (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))))))

(assert (= (and d!777013 res!1135643) b!2704168))

(assert (= (and b!2704168 res!1135644) b!2704169))

(assert (= (and b!2704169 res!1135645) b!2704170))

(assert (= (and b!2704170 res!1135646) b!2704171))

(assert (=> b!2704170 m!3093251))

(declare-fun m!3093599 () Bool)

(assert (=> b!2704170 m!3093599))

(declare-fun m!3093601 () Bool)

(assert (=> b!2704170 m!3093601))

(assert (=> b!2704170 m!3093599))

(declare-fun m!3093603 () Bool)

(assert (=> b!2704170 m!3093603))

(assert (=> b!2704170 m!3093603))

(declare-fun m!3093605 () Bool)

(assert (=> b!2704170 m!3093605))

(assert (=> b!2704170 m!3093251))

(declare-fun m!3093607 () Bool)

(assert (=> d!777013 m!3093607))

(assert (=> d!777013 m!3093603))

(assert (=> b!2704168 m!3093603))

(assert (=> b!2704168 m!3093603))

(declare-fun m!3093609 () Bool)

(assert (=> b!2704168 m!3093609))

(assert (=> b!2704169 m!3093251))

(assert (=> b!2704169 m!3093599))

(assert (=> b!2704169 m!3093601))

(assert (=> b!2704169 m!3093599))

(assert (=> b!2704169 m!3093603))

(assert (=> b!2704169 m!3093603))

(assert (=> b!2704169 m!3093605))

(assert (=> b!2704169 m!3093251))

(declare-fun m!3093611 () Bool)

(assert (=> b!2704171 m!3093611))

(assert (=> b!2704171 m!3092843))

(assert (=> b!2704171 m!3092819))

(declare-fun m!3093613 () Bool)

(assert (=> b!2704171 m!3093613))

(assert (=> b!2704171 m!3092843))

(assert (=> b!2704171 m!3093613))

(declare-fun m!3093615 () Bool)

(assert (=> b!2704171 m!3093615))

(assert (=> b!2703823 d!777013))

(declare-fun d!777015 () Bool)

(declare-fun lt!956098 () BalanceConc!19100)

(assert (=> d!777015 (= (list!11762 lt!956098) (originalCharacters!5521 (_1!18026 (v!32944 (_1!18032 lt!955663)))))))

(assert (=> d!777015 (= lt!956098 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 (_1!18032 lt!955663)))))) (value!153189 (_1!18026 (v!32944 (_1!18032 lt!955663))))))))

(assert (=> d!777015 (= (charsOf!2996 (_1!18026 (v!32944 (_1!18032 lt!955663)))) lt!956098)))

(declare-fun b_lambda!82381 () Bool)

(assert (=> (not b_lambda!82381) (not d!777015)))

(declare-fun t!225710 () Bool)

(declare-fun tb!151475 () Bool)

(assert (=> (and b!2703842 (= (toChars!6578 (transformation!4757 (h!36600 rules!1381))) (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) t!225710) tb!151475))

(declare-fun b!2704172 () Bool)

(declare-fun e!1704874 () Bool)

(declare-fun tp!855044 () Bool)

(assert (=> b!2704172 (= e!1704874 (and (inv!42236 (c!436281 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 (_1!18032 lt!955663)))))) (value!153189 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) tp!855044))))

(declare-fun result!187070 () Bool)

(assert (=> tb!151475 (= result!187070 (and (inv!42237 (dynLambda!13464 (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 (_1!18032 lt!955663)))))) (value!153189 (_1!18026 (v!32944 (_1!18032 lt!955663)))))) e!1704874))))

(assert (= tb!151475 b!2704172))

(declare-fun m!3093617 () Bool)

(assert (=> b!2704172 m!3093617))

(declare-fun m!3093619 () Bool)

(assert (=> tb!151475 m!3093619))

(assert (=> d!777015 t!225710))

(declare-fun b_and!199729 () Bool)

(assert (= b_and!199727 (and (=> t!225710 result!187070) b_and!199729)))

(declare-fun m!3093621 () Bool)

(assert (=> d!777015 m!3093621))

(declare-fun m!3093623 () Bool)

(assert (=> d!777015 m!3093623))

(assert (=> b!2703823 d!777015))

(declare-fun d!777017 () Bool)

(assert (=> d!777017 (= (isEmpty!17761 rules!1381) ((_ is Nil!31180) rules!1381))))

(assert (=> b!2703844 d!777017))

(declare-fun d!777019 () Bool)

(assert (=> d!777019 (= (isEmpty!17760 (list!11762 (_2!18027 lt!955682))) ((_ is Nil!31175) (list!11762 (_2!18027 lt!955682))))))

(assert (=> b!2703843 d!777019))

(declare-fun d!777021 () Bool)

(assert (=> d!777021 (= (list!11762 (_2!18027 lt!955682)) (list!11765 (c!436281 (_2!18027 lt!955682))))))

(declare-fun bs!487246 () Bool)

(assert (= bs!487246 d!777021))

(declare-fun m!3093625 () Bool)

(assert (=> bs!487246 m!3093625))

(assert (=> b!2703843 d!777021))

(declare-fun d!777023 () Bool)

(declare-fun res!1135649 () Bool)

(declare-fun e!1704877 () Bool)

(assert (=> d!777023 (=> (not res!1135649) (not e!1704877))))

(declare-fun rulesValid!1771 (LexerInterface!4353 List!31280) Bool)

(assert (=> d!777023 (= res!1135649 (rulesValid!1771 thiss!12257 rules!1381))))

(assert (=> d!777023 (= (rulesInvariant!3839 thiss!12257 rules!1381) e!1704877)))

(declare-fun b!2704175 () Bool)

(declare-datatypes ((List!31281 0))(
  ( (Nil!31181) (Cons!31181 (h!36601 String!34795) (t!225715 List!31281)) )
))
(declare-fun noDuplicateTag!1767 (LexerInterface!4353 List!31280 List!31281) Bool)

(assert (=> b!2704175 (= e!1704877 (noDuplicateTag!1767 thiss!12257 rules!1381 Nil!31181))))

(assert (= (and d!777023 res!1135649) b!2704175))

(declare-fun m!3093627 () Bool)

(assert (=> d!777023 m!3093627))

(declare-fun m!3093629 () Bool)

(assert (=> b!2704175 m!3093629))

(assert (=> b!2703822 d!777023))

(declare-fun d!777025 () Bool)

(declare-fun c!436374 () Bool)

(assert (=> d!777025 (= c!436374 ((_ is Node!9743) (c!436281 input!780)))))

(declare-fun e!1704878 () Bool)

(assert (=> d!777025 (= (inv!42236 (c!436281 input!780)) e!1704878)))

(declare-fun b!2704176 () Bool)

(assert (=> b!2704176 (= e!1704878 (inv!42243 (c!436281 input!780)))))

(declare-fun b!2704177 () Bool)

(declare-fun e!1704879 () Bool)

(assert (=> b!2704177 (= e!1704878 e!1704879)))

(declare-fun res!1135650 () Bool)

(assert (=> b!2704177 (= res!1135650 (not ((_ is Leaf!14866) (c!436281 input!780))))))

(assert (=> b!2704177 (=> res!1135650 e!1704879)))

(declare-fun b!2704178 () Bool)

(assert (=> b!2704178 (= e!1704879 (inv!42244 (c!436281 input!780)))))

(assert (= (and d!777025 c!436374) b!2704176))

(assert (= (and d!777025 (not c!436374)) b!2704177))

(assert (= (and b!2704177 (not res!1135650)) b!2704178))

(declare-fun m!3093631 () Bool)

(assert (=> b!2704176 m!3093631))

(declare-fun m!3093633 () Bool)

(assert (=> b!2704178 m!3093633))

(assert (=> b!2703820 d!777025))

(declare-fun d!777027 () Bool)

(assert (=> d!777027 (= (array_inv!4033 (_keys!3846 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) (bvsge (size!24077 (_keys!3846 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2703841 d!777027))

(declare-fun d!777029 () Bool)

(assert (=> d!777029 (= (array_inv!4035 (_values!3827 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) (bvsge (size!24078 (_values!3827 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2703841 d!777029))

(declare-fun d!777031 () Bool)

(assert (=> d!777031 (= (list!11763 acc!348) (list!11764 (c!436282 acc!348)))))

(declare-fun bs!487247 () Bool)

(assert (= bs!487247 d!777031))

(declare-fun m!3093635 () Bool)

(assert (=> bs!487247 m!3093635))

(assert (=> b!2703821 d!777031))

(declare-fun d!777033 () Bool)

(assert (=> d!777033 (= (list!11763 (_1!18027 lt!955682)) (list!11764 (c!436282 (_1!18027 lt!955682))))))

(declare-fun bs!487248 () Bool)

(assert (= bs!487248 d!777033))

(declare-fun m!3093637 () Bool)

(assert (=> bs!487248 m!3093637))

(assert (=> b!2703821 d!777033))

(declare-fun b!2704179 () Bool)

(declare-fun e!1704883 () Bool)

(declare-fun lt!956100 () tuple2!30802)

(assert (=> b!2704179 (= e!1704883 (= (list!11762 (_2!18027 lt!956100)) (list!11762 treated!26)))))

(declare-fun b!2704180 () Bool)

(declare-fun res!1135651 () Bool)

(declare-fun e!1704881 () Bool)

(assert (=> b!2704180 (=> (not res!1135651) (not e!1704881))))

(assert (=> b!2704180 (= res!1135651 (= (list!11763 (_1!18027 lt!956100)) (_1!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 treated!26)))))))

(declare-fun d!777035 () Bool)

(assert (=> d!777035 e!1704881))

(declare-fun res!1135652 () Bool)

(assert (=> d!777035 (=> (not res!1135652) (not e!1704881))))

(assert (=> d!777035 (= res!1135652 e!1704883)))

(declare-fun c!436375 () Bool)

(assert (=> d!777035 (= c!436375 (> (size!24080 (_1!18027 lt!956100)) 0))))

(declare-fun e!1704882 () tuple2!30802)

(assert (=> d!777035 (= lt!956100 e!1704882)))

(declare-fun c!436376 () Bool)

(declare-fun lt!956101 () Option!6151)

(assert (=> d!777035 (= c!436376 ((_ is Some!6150) lt!956101))))

(assert (=> d!777035 (= lt!956101 (maxPrefixZipperSequence!1013 thiss!12257 rules!1381 treated!26))))

(assert (=> d!777035 (= (lexRec!615 thiss!12257 rules!1381 treated!26) lt!956100)))

(declare-fun b!2704181 () Bool)

(declare-fun e!1704880 () Bool)

(assert (=> b!2704181 (= e!1704880 (not (isEmpty!17762 (_1!18027 lt!956100))))))

(declare-fun b!2704182 () Bool)

(declare-fun lt!956099 () tuple2!30802)

(assert (=> b!2704182 (= e!1704882 (tuple2!30803 (prepend!1089 (_1!18027 lt!956099) (_1!18026 (v!32944 lt!956101))) (_2!18027 lt!956099)))))

(assert (=> b!2704182 (= lt!956099 (lexRec!615 thiss!12257 rules!1381 (_2!18026 (v!32944 lt!956101))))))

(declare-fun b!2704183 () Bool)

(assert (=> b!2704183 (= e!1704883 e!1704880)))

(declare-fun res!1135653 () Bool)

(assert (=> b!2704183 (= res!1135653 (< (size!24081 (_2!18027 lt!956100)) (size!24081 treated!26)))))

(assert (=> b!2704183 (=> (not res!1135653) (not e!1704880))))

(declare-fun b!2704184 () Bool)

(assert (=> b!2704184 (= e!1704882 (tuple2!30803 (BalanceConc!19103 Empty!9744) treated!26))))

(declare-fun b!2704185 () Bool)

(assert (=> b!2704185 (= e!1704881 (= (list!11762 (_2!18027 lt!956100)) (_2!18034 (lexList!1200 thiss!12257 rules!1381 (list!11762 treated!26)))))))

(assert (= (and d!777035 c!436376) b!2704182))

(assert (= (and d!777035 (not c!436376)) b!2704184))

(assert (= (and d!777035 c!436375) b!2704183))

(assert (= (and d!777035 (not c!436375)) b!2704179))

(assert (= (and b!2704183 res!1135653) b!2704181))

(assert (= (and d!777035 res!1135652) b!2704180))

(assert (= (and b!2704180 res!1135651) b!2704185))

(declare-fun m!3093639 () Bool)

(assert (=> b!2704181 m!3093639))

(declare-fun m!3093641 () Bool)

(assert (=> b!2704180 m!3093641))

(assert (=> b!2704180 m!3092843))

(assert (=> b!2704180 m!3092843))

(declare-fun m!3093643 () Bool)

(assert (=> b!2704180 m!3093643))

(declare-fun m!3093645 () Bool)

(assert (=> b!2704183 m!3093645))

(declare-fun m!3093647 () Bool)

(assert (=> b!2704183 m!3093647))

(declare-fun m!3093649 () Bool)

(assert (=> b!2704179 m!3093649))

(assert (=> b!2704179 m!3092843))

(assert (=> b!2704185 m!3093649))

(assert (=> b!2704185 m!3092843))

(assert (=> b!2704185 m!3092843))

(assert (=> b!2704185 m!3093643))

(declare-fun m!3093651 () Bool)

(assert (=> b!2704182 m!3093651))

(declare-fun m!3093653 () Bool)

(assert (=> b!2704182 m!3093653))

(declare-fun m!3093655 () Bool)

(assert (=> d!777035 m!3093655))

(declare-fun m!3093657 () Bool)

(assert (=> d!777035 m!3093657))

(assert (=> b!2703821 d!777035))

(declare-fun b!2704197 () Bool)

(declare-fun e!1704886 () Bool)

(declare-fun tp!855055 () Bool)

(declare-fun tp!855057 () Bool)

(assert (=> b!2704197 (= e!1704886 (and tp!855055 tp!855057))))

(declare-fun b!2704198 () Bool)

(declare-fun tp!855059 () Bool)

(assert (=> b!2704198 (= e!1704886 tp!855059)))

(declare-fun b!2704199 () Bool)

(declare-fun tp!855056 () Bool)

(declare-fun tp!855058 () Bool)

(assert (=> b!2704199 (= e!1704886 (and tp!855056 tp!855058))))

(declare-fun b!2704196 () Bool)

(declare-fun tp_is_empty!13859 () Bool)

(assert (=> b!2704196 (= e!1704886 tp_is_empty!13859)))

(assert (=> b!2703829 (= tp!855022 e!1704886)))

(assert (= (and b!2703829 ((_ is ElementMatch!7909) (regex!4757 (h!36600 rules!1381)))) b!2704196))

(assert (= (and b!2703829 ((_ is Concat!12889) (regex!4757 (h!36600 rules!1381)))) b!2704197))

(assert (= (and b!2703829 ((_ is Star!7909) (regex!4757 (h!36600 rules!1381)))) b!2704198))

(assert (= (and b!2703829 ((_ is Union!7909) (regex!4757 (h!36600 rules!1381)))) b!2704199))

(declare-fun b!2704208 () Bool)

(declare-fun e!1704894 () Bool)

(declare-fun tp!855069 () Bool)

(assert (=> b!2704208 (= e!1704894 tp!855069)))

(declare-fun setIsEmpty!21405 () Bool)

(declare-fun setRes!21405 () Bool)

(assert (=> setIsEmpty!21405 setRes!21405))

(declare-fun setNonEmpty!21405 () Bool)

(declare-fun setElem!21405 () Context!4366)

(declare-fun tp!855070 () Bool)

(declare-fun inv!42247 (Context!4366) Bool)

(assert (=> setNonEmpty!21405 (= setRes!21405 (and tp!855070 (inv!42247 setElem!21405) e!1704894))))

(declare-fun setRest!21405 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21405 (= (_2!18031 (h!36599 (zeroValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21405 true) setRest!21405))))

(declare-fun b!2704210 () Bool)

(declare-fun e!1704895 () Bool)

(declare-fun e!1704893 () Bool)

(declare-fun tp!855071 () Bool)

(assert (=> b!2704210 (= e!1704893 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 (zeroValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))))) e!1704895 tp_is_empty!13859 setRes!21405 tp!855071))))

(declare-fun condSetEmpty!21405 () Bool)

(assert (=> b!2704210 (= condSetEmpty!21405 (= (_2!18031 (h!36599 (zeroValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704209 () Bool)

(declare-fun tp!855068 () Bool)

(assert (=> b!2704209 (= e!1704895 tp!855068)))

(assert (=> b!2703818 (= tp!855029 e!1704893)))

(assert (= b!2704210 b!2704209))

(assert (= (and b!2704210 condSetEmpty!21405) setIsEmpty!21405))

(assert (= (and b!2704210 (not condSetEmpty!21405)) setNonEmpty!21405))

(assert (= setNonEmpty!21405 b!2704208))

(assert (= (and b!2703818 ((_ is Cons!31179) (zeroValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) b!2704210))

(declare-fun m!3093659 () Bool)

(assert (=> setNonEmpty!21405 m!3093659))

(declare-fun m!3093661 () Bool)

(assert (=> b!2704210 m!3093661))

(declare-fun b!2704211 () Bool)

(declare-fun e!1704897 () Bool)

(declare-fun tp!855073 () Bool)

(assert (=> b!2704211 (= e!1704897 tp!855073)))

(declare-fun setIsEmpty!21406 () Bool)

(declare-fun setRes!21406 () Bool)

(assert (=> setIsEmpty!21406 setRes!21406))

(declare-fun setNonEmpty!21406 () Bool)

(declare-fun setElem!21406 () Context!4366)

(declare-fun tp!855074 () Bool)

(assert (=> setNonEmpty!21406 (= setRes!21406 (and tp!855074 (inv!42247 setElem!21406) e!1704897))))

(declare-fun setRest!21406 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21406 (= (_2!18031 (h!36599 (minValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21406 true) setRest!21406))))

(declare-fun tp!855075 () Bool)

(declare-fun b!2704213 () Bool)

(declare-fun e!1704898 () Bool)

(declare-fun e!1704896 () Bool)

(assert (=> b!2704213 (= e!1704896 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 (minValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))))) e!1704898 tp_is_empty!13859 setRes!21406 tp!855075))))

(declare-fun condSetEmpty!21406 () Bool)

(assert (=> b!2704213 (= condSetEmpty!21406 (= (_2!18031 (h!36599 (minValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704212 () Bool)

(declare-fun tp!855072 () Bool)

(assert (=> b!2704212 (= e!1704898 tp!855072)))

(assert (=> b!2703818 (= tp!855019 e!1704896)))

(assert (= b!2704213 b!2704212))

(assert (= (and b!2704213 condSetEmpty!21406) setIsEmpty!21406))

(assert (= (and b!2704213 (not condSetEmpty!21406)) setNonEmpty!21406))

(assert (= setNonEmpty!21406 b!2704211))

(assert (= (and b!2703818 ((_ is Cons!31179) (minValue!3806 (v!32945 (underlying!7295 (v!32946 (underlying!7296 (cache!3595 cacheUp!486)))))))) b!2704213))

(declare-fun m!3093663 () Bool)

(assert (=> setNonEmpty!21406 m!3093663))

(declare-fun m!3093665 () Bool)

(assert (=> b!2704213 m!3093665))

(declare-fun b!2704214 () Bool)

(declare-fun e!1704900 () Bool)

(declare-fun tp!855077 () Bool)

(assert (=> b!2704214 (= e!1704900 tp!855077)))

(declare-fun setIsEmpty!21407 () Bool)

(declare-fun setRes!21407 () Bool)

(assert (=> setIsEmpty!21407 setRes!21407))

(declare-fun tp!855078 () Bool)

(declare-fun setElem!21407 () Context!4366)

(declare-fun setNonEmpty!21407 () Bool)

(assert (=> setNonEmpty!21407 (= setRes!21407 (and tp!855078 (inv!42247 setElem!21407) e!1704900))))

(declare-fun setRest!21407 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21407 (= (_2!18031 (h!36599 mapDefault!16206)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21407 true) setRest!21407))))

(declare-fun tp!855079 () Bool)

(declare-fun e!1704901 () Bool)

(declare-fun e!1704899 () Bool)

(declare-fun b!2704216 () Bool)

(assert (=> b!2704216 (= e!1704899 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 mapDefault!16206)))) e!1704901 tp_is_empty!13859 setRes!21407 tp!855079))))

(declare-fun condSetEmpty!21407 () Bool)

(assert (=> b!2704216 (= condSetEmpty!21407 (= (_2!18031 (h!36599 mapDefault!16206)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704215 () Bool)

(declare-fun tp!855076 () Bool)

(assert (=> b!2704215 (= e!1704901 tp!855076)))

(assert (=> b!2703828 (= tp!855031 e!1704899)))

(assert (= b!2704216 b!2704215))

(assert (= (and b!2704216 condSetEmpty!21407) setIsEmpty!21407))

(assert (= (and b!2704216 (not condSetEmpty!21407)) setNonEmpty!21407))

(assert (= setNonEmpty!21407 b!2704214))

(assert (= (and b!2703828 ((_ is Cons!31179) mapDefault!16206)) b!2704216))

(declare-fun m!3093667 () Bool)

(assert (=> setNonEmpty!21407 m!3093667))

(declare-fun m!3093669 () Bool)

(assert (=> b!2704216 m!3093669))

(declare-fun e!1704907 () Bool)

(declare-fun tp!855088 () Bool)

(declare-fun b!2704225 () Bool)

(declare-fun tp!855087 () Bool)

(assert (=> b!2704225 (= e!1704907 (and (inv!42241 (left!23996 (c!436282 acc!348))) tp!855088 (inv!42241 (right!24326 (c!436282 acc!348))) tp!855087))))

(declare-fun b!2704227 () Bool)

(declare-fun e!1704906 () Bool)

(declare-fun tp!855086 () Bool)

(assert (=> b!2704227 (= e!1704906 tp!855086)))

(declare-fun b!2704226 () Bool)

(declare-fun inv!42248 (IArray!19493) Bool)

(assert (=> b!2704226 (= e!1704907 (and (inv!42248 (xs!12792 (c!436282 acc!348))) e!1704906))))

(assert (=> b!2703826 (= tp!855038 (and (inv!42241 (c!436282 acc!348)) e!1704907))))

(assert (= (and b!2703826 ((_ is Node!9744) (c!436282 acc!348))) b!2704225))

(assert (= b!2704226 b!2704227))

(assert (= (and b!2703826 ((_ is Leaf!14867) (c!436282 acc!348))) b!2704226))

(declare-fun m!3093671 () Bool)

(assert (=> b!2704225 m!3093671))

(declare-fun m!3093673 () Bool)

(assert (=> b!2704225 m!3093673))

(declare-fun m!3093675 () Bool)

(assert (=> b!2704226 m!3093675))

(assert (=> b!2703826 m!3092745))

(declare-fun b!2704238 () Bool)

(declare-fun b_free!76301 () Bool)

(declare-fun b_next!77005 () Bool)

(assert (=> b!2704238 (= b_free!76301 (not b_next!77005))))

(declare-fun tp!855100 () Bool)

(declare-fun b_and!199731 () Bool)

(assert (=> b!2704238 (= tp!855100 b_and!199731)))

(declare-fun b_free!76303 () Bool)

(declare-fun b_next!77007 () Bool)

(assert (=> b!2704238 (= b_free!76303 (not b_next!77007))))

(declare-fun tb!151477 () Bool)

(declare-fun t!225712 () Bool)

(assert (=> (and b!2704238 (= (toChars!6578 (transformation!4757 (h!36600 (t!225706 rules!1381)))) (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 lt!955668)))))) t!225712) tb!151477))

(declare-fun result!187080 () Bool)

(assert (= result!187080 result!187066))

(assert (=> d!776923 t!225712))

(declare-fun t!225714 () Bool)

(declare-fun tb!151479 () Bool)

(assert (=> (and b!2704238 (= (toChars!6578 (transformation!4757 (h!36600 (t!225706 rules!1381)))) (toChars!6578 (transformation!4757 (rule!7179 (_1!18026 (v!32944 (_1!18032 lt!955663))))))) t!225714) tb!151479))

(declare-fun result!187082 () Bool)

(assert (= result!187082 result!187070))

(assert (=> d!777015 t!225714))

(declare-fun tp!855097 () Bool)

(declare-fun b_and!199733 () Bool)

(assert (=> b!2704238 (= tp!855097 (and (=> t!225712 result!187080) (=> t!225714 result!187082) b_and!199733))))

(declare-fun e!1704916 () Bool)

(assert (=> b!2704238 (= e!1704916 (and tp!855100 tp!855097))))

(declare-fun tp!855099 () Bool)

(declare-fun b!2704237 () Bool)

(declare-fun e!1704918 () Bool)

(assert (=> b!2704237 (= e!1704918 (and tp!855099 (inv!42234 (tag!5261 (h!36600 (t!225706 rules!1381)))) (inv!42242 (transformation!4757 (h!36600 (t!225706 rules!1381)))) e!1704916))))

(declare-fun b!2704236 () Bool)

(declare-fun e!1704917 () Bool)

(declare-fun tp!855098 () Bool)

(assert (=> b!2704236 (= e!1704917 (and e!1704918 tp!855098))))

(assert (=> b!2703836 (= tp!855037 e!1704917)))

(assert (= b!2704237 b!2704238))

(assert (= b!2704236 b!2704237))

(assert (= (and b!2703836 ((_ is Cons!31180) (t!225706 rules!1381))) b!2704236))

(declare-fun m!3093677 () Bool)

(assert (=> b!2704237 m!3093677))

(declare-fun m!3093679 () Bool)

(assert (=> b!2704237 m!3093679))

(declare-fun tp!855109 () Bool)

(declare-fun tp!855107 () Bool)

(declare-fun b!2704247 () Bool)

(declare-fun e!1704925 () Bool)

(assert (=> b!2704247 (= e!1704925 (and (inv!42236 (left!23995 (c!436281 treated!26))) tp!855107 (inv!42236 (right!24325 (c!436281 treated!26))) tp!855109))))

(declare-fun b!2704249 () Bool)

(declare-fun e!1704924 () Bool)

(declare-fun tp!855108 () Bool)

(assert (=> b!2704249 (= e!1704924 tp!855108)))

(declare-fun b!2704248 () Bool)

(declare-fun inv!42249 (IArray!19491) Bool)

(assert (=> b!2704248 (= e!1704925 (and (inv!42249 (xs!12791 (c!436281 treated!26))) e!1704924))))

(assert (=> b!2703834 (= tp!855036 (and (inv!42236 (c!436281 treated!26)) e!1704925))))

(assert (= (and b!2703834 ((_ is Node!9743) (c!436281 treated!26))) b!2704247))

(assert (= b!2704248 b!2704249))

(assert (= (and b!2703834 ((_ is Leaf!14866) (c!436281 treated!26))) b!2704248))

(declare-fun m!3093681 () Bool)

(assert (=> b!2704247 m!3093681))

(declare-fun m!3093683 () Bool)

(assert (=> b!2704247 m!3093683))

(declare-fun m!3093685 () Bool)

(assert (=> b!2704248 m!3093685))

(assert (=> b!2703834 m!3092743))

(declare-fun b!2704258 () Bool)

(declare-fun e!1704934 () Bool)

(declare-fun tp!855120 () Bool)

(assert (=> b!2704258 (= e!1704934 tp!855120)))

(declare-fun e!1704933 () Bool)

(assert (=> b!2703824 (= tp!855027 e!1704933)))

(declare-fun setElem!21410 () Context!4366)

(declare-fun tp!855124 () Bool)

(declare-fun e!1704932 () Bool)

(declare-fun setNonEmpty!21410 () Bool)

(declare-fun setRes!21410 () Bool)

(assert (=> setNonEmpty!21410 (= setRes!21410 (and tp!855124 (inv!42247 setElem!21410) e!1704932))))

(declare-fun setRest!21410 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21410 (= (_2!18029 (h!36598 mapDefault!16205)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21410 true) setRest!21410))))

(declare-fun setIsEmpty!21410 () Bool)

(assert (=> setIsEmpty!21410 setRes!21410))

(declare-fun tp!855123 () Bool)

(declare-fun b!2704259 () Bool)

(declare-fun tp!855122 () Bool)

(assert (=> b!2704259 (= e!1704933 (and tp!855123 (inv!42247 (_2!18028 (_1!18029 (h!36598 mapDefault!16205)))) e!1704934 tp_is_empty!13859 setRes!21410 tp!855122))))

(declare-fun condSetEmpty!21410 () Bool)

(assert (=> b!2704259 (= condSetEmpty!21410 (= (_2!18029 (h!36598 mapDefault!16205)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704260 () Bool)

(declare-fun tp!855121 () Bool)

(assert (=> b!2704260 (= e!1704932 tp!855121)))

(assert (= b!2704259 b!2704258))

(assert (= (and b!2704259 condSetEmpty!21410) setIsEmpty!21410))

(assert (= (and b!2704259 (not condSetEmpty!21410)) setNonEmpty!21410))

(assert (= setNonEmpty!21410 b!2704260))

(assert (= (and b!2703824 ((_ is Cons!31178) mapDefault!16205)) b!2704259))

(declare-fun m!3093687 () Bool)

(assert (=> setNonEmpty!21410 m!3093687))

(declare-fun m!3093689 () Bool)

(assert (=> b!2704259 m!3093689))

(declare-fun mapNonEmpty!16209 () Bool)

(declare-fun mapRes!16209 () Bool)

(declare-fun tp!855150 () Bool)

(declare-fun e!1704948 () Bool)

(assert (=> mapNonEmpty!16209 (= mapRes!16209 (and tp!855150 e!1704948))))

(declare-fun mapValue!16209 () List!31279)

(declare-fun mapKey!16209 () (_ BitVec 32))

(declare-fun mapRest!16209 () (Array (_ BitVec 32) List!31279))

(assert (=> mapNonEmpty!16209 (= mapRest!16205 (store mapRest!16209 mapKey!16209 mapValue!16209))))

(declare-fun b!2704275 () Bool)

(declare-fun e!1704951 () Bool)

(declare-fun tp!855146 () Bool)

(assert (=> b!2704275 (= e!1704951 tp!855146)))

(declare-fun b!2704276 () Bool)

(declare-fun e!1704949 () Bool)

(declare-fun tp!855151 () Bool)

(assert (=> b!2704276 (= e!1704949 tp!855151)))

(declare-fun setIsEmpty!21415 () Bool)

(declare-fun setRes!21416 () Bool)

(assert (=> setIsEmpty!21415 setRes!21416))

(declare-fun tp!855148 () Bool)

(declare-fun b!2704277 () Bool)

(assert (=> b!2704277 (= e!1704948 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 mapValue!16209)))) e!1704949 tp_is_empty!13859 setRes!21416 tp!855148))))

(declare-fun condSetEmpty!21415 () Bool)

(assert (=> b!2704277 (= condSetEmpty!21415 (= (_2!18031 (h!36599 mapValue!16209)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun setIsEmpty!21416 () Bool)

(declare-fun setRes!21415 () Bool)

(assert (=> setIsEmpty!21416 setRes!21415))

(declare-fun mapIsEmpty!16209 () Bool)

(assert (=> mapIsEmpty!16209 mapRes!16209))

(declare-fun e!1704950 () Bool)

(declare-fun b!2704278 () Bool)

(declare-fun mapDefault!16209 () List!31279)

(declare-fun e!1704947 () Bool)

(declare-fun tp!855149 () Bool)

(assert (=> b!2704278 (= e!1704950 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 mapDefault!16209)))) e!1704947 tp_is_empty!13859 setRes!21415 tp!855149))))

(declare-fun condSetEmpty!21416 () Bool)

(assert (=> b!2704278 (= condSetEmpty!21416 (= (_2!18031 (h!36599 mapDefault!16209)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun setNonEmpty!21415 () Bool)

(declare-fun setElem!21415 () Context!4366)

(declare-fun tp!855143 () Bool)

(assert (=> setNonEmpty!21415 (= setRes!21415 (and tp!855143 (inv!42247 setElem!21415) e!1704951))))

(declare-fun setRest!21416 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21415 (= (_2!18031 (h!36599 mapDefault!16209)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21415 true) setRest!21416))))

(declare-fun b!2704279 () Bool)

(declare-fun e!1704952 () Bool)

(declare-fun tp!855147 () Bool)

(assert (=> b!2704279 (= e!1704952 tp!855147)))

(declare-fun b!2704280 () Bool)

(declare-fun tp!855144 () Bool)

(assert (=> b!2704280 (= e!1704947 tp!855144)))

(declare-fun condMapEmpty!16209 () Bool)

(assert (=> mapNonEmpty!16205 (= condMapEmpty!16209 (= mapRest!16205 ((as const (Array (_ BitVec 32) List!31279)) mapDefault!16209)))))

(assert (=> mapNonEmpty!16205 (= tp!855030 (and e!1704950 mapRes!16209))))

(declare-fun setElem!21416 () Context!4366)

(declare-fun setNonEmpty!21416 () Bool)

(declare-fun tp!855145 () Bool)

(assert (=> setNonEmpty!21416 (= setRes!21416 (and tp!855145 (inv!42247 setElem!21416) e!1704952))))

(declare-fun setRest!21415 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21416 (= (_2!18031 (h!36599 mapValue!16209)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21416 true) setRest!21415))))

(assert (= (and mapNonEmpty!16205 condMapEmpty!16209) mapIsEmpty!16209))

(assert (= (and mapNonEmpty!16205 (not condMapEmpty!16209)) mapNonEmpty!16209))

(assert (= b!2704277 b!2704276))

(assert (= (and b!2704277 condSetEmpty!21415) setIsEmpty!21415))

(assert (= (and b!2704277 (not condSetEmpty!21415)) setNonEmpty!21416))

(assert (= setNonEmpty!21416 b!2704279))

(assert (= (and mapNonEmpty!16209 ((_ is Cons!31179) mapValue!16209)) b!2704277))

(assert (= b!2704278 b!2704280))

(assert (= (and b!2704278 condSetEmpty!21416) setIsEmpty!21416))

(assert (= (and b!2704278 (not condSetEmpty!21416)) setNonEmpty!21415))

(assert (= setNonEmpty!21415 b!2704275))

(assert (= (and mapNonEmpty!16205 ((_ is Cons!31179) mapDefault!16209)) b!2704278))

(declare-fun m!3093691 () Bool)

(assert (=> setNonEmpty!21415 m!3093691))

(declare-fun m!3093693 () Bool)

(assert (=> b!2704278 m!3093693))

(declare-fun m!3093695 () Bool)

(assert (=> b!2704277 m!3093695))

(declare-fun m!3093697 () Bool)

(assert (=> setNonEmpty!21416 m!3093697))

(declare-fun m!3093699 () Bool)

(assert (=> mapNonEmpty!16209 m!3093699))

(declare-fun b!2704281 () Bool)

(declare-fun e!1704954 () Bool)

(declare-fun tp!855153 () Bool)

(assert (=> b!2704281 (= e!1704954 tp!855153)))

(declare-fun setIsEmpty!21417 () Bool)

(declare-fun setRes!21417 () Bool)

(assert (=> setIsEmpty!21417 setRes!21417))

(declare-fun tp!855154 () Bool)

(declare-fun setElem!21417 () Context!4366)

(declare-fun setNonEmpty!21417 () Bool)

(assert (=> setNonEmpty!21417 (= setRes!21417 (and tp!855154 (inv!42247 setElem!21417) e!1704954))))

(declare-fun setRest!21417 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21417 (= (_2!18031 (h!36599 mapValue!16205)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21417 true) setRest!21417))))

(declare-fun tp!855155 () Bool)

(declare-fun b!2704283 () Bool)

(declare-fun e!1704953 () Bool)

(declare-fun e!1704955 () Bool)

(assert (=> b!2704283 (= e!1704953 (and (inv!42247 (_1!18030 (_1!18031 (h!36599 mapValue!16205)))) e!1704955 tp_is_empty!13859 setRes!21417 tp!855155))))

(declare-fun condSetEmpty!21417 () Bool)

(assert (=> b!2704283 (= condSetEmpty!21417 (= (_2!18031 (h!36599 mapValue!16205)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704282 () Bool)

(declare-fun tp!855152 () Bool)

(assert (=> b!2704282 (= e!1704955 tp!855152)))

(assert (=> mapNonEmpty!16205 (= tp!855020 e!1704953)))

(assert (= b!2704283 b!2704282))

(assert (= (and b!2704283 condSetEmpty!21417) setIsEmpty!21417))

(assert (= (and b!2704283 (not condSetEmpty!21417)) setNonEmpty!21417))

(assert (= setNonEmpty!21417 b!2704281))

(assert (= (and mapNonEmpty!16205 ((_ is Cons!31179) mapValue!16205)) b!2704283))

(declare-fun m!3093701 () Bool)

(assert (=> setNonEmpty!21417 m!3093701))

(declare-fun m!3093703 () Bool)

(assert (=> b!2704283 m!3093703))

(declare-fun tp!855158 () Bool)

(declare-fun tp!855156 () Bool)

(declare-fun e!1704957 () Bool)

(declare-fun b!2704284 () Bool)

(assert (=> b!2704284 (= e!1704957 (and (inv!42236 (left!23995 (c!436281 totalInput!354))) tp!855156 (inv!42236 (right!24325 (c!436281 totalInput!354))) tp!855158))))

(declare-fun b!2704286 () Bool)

(declare-fun e!1704956 () Bool)

(declare-fun tp!855157 () Bool)

(assert (=> b!2704286 (= e!1704956 tp!855157)))

(declare-fun b!2704285 () Bool)

(assert (=> b!2704285 (= e!1704957 (and (inv!42249 (xs!12791 (c!436281 totalInput!354))) e!1704956))))

(assert (=> b!2703812 (= tp!855040 (and (inv!42236 (c!436281 totalInput!354)) e!1704957))))

(assert (= (and b!2703812 ((_ is Node!9743) (c!436281 totalInput!354))) b!2704284))

(assert (= b!2704285 b!2704286))

(assert (= (and b!2703812 ((_ is Leaf!14866) (c!436281 totalInput!354))) b!2704285))

(declare-fun m!3093705 () Bool)

(assert (=> b!2704284 m!3093705))

(declare-fun m!3093707 () Bool)

(assert (=> b!2704284 m!3093707))

(declare-fun m!3093709 () Bool)

(assert (=> b!2704285 m!3093709))

(assert (=> b!2703812 m!3092859))

(declare-fun setIsEmpty!21422 () Bool)

(declare-fun setRes!21423 () Bool)

(assert (=> setIsEmpty!21422 setRes!21423))

(declare-fun mapIsEmpty!16212 () Bool)

(declare-fun mapRes!16212 () Bool)

(assert (=> mapIsEmpty!16212 mapRes!16212))

(declare-fun setIsEmpty!21423 () Bool)

(declare-fun setRes!21422 () Bool)

(assert (=> setIsEmpty!21423 setRes!21422))

(declare-fun b!2704301 () Bool)

(declare-fun e!1704975 () Bool)

(declare-fun mapValue!16212 () List!31278)

(declare-fun tp!855185 () Bool)

(declare-fun e!1704972 () Bool)

(declare-fun tp!855191 () Bool)

(assert (=> b!2704301 (= e!1704972 (and tp!855191 (inv!42247 (_2!18028 (_1!18029 (h!36598 mapValue!16212)))) e!1704975 tp_is_empty!13859 setRes!21423 tp!855185))))

(declare-fun condSetEmpty!21423 () Bool)

(assert (=> b!2704301 (= condSetEmpty!21423 (= (_2!18029 (h!36598 mapValue!16212)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704302 () Bool)

(declare-fun tp!855183 () Bool)

(declare-fun e!1704971 () Bool)

(declare-fun mapDefault!16212 () List!31278)

(declare-fun e!1704974 () Bool)

(declare-fun tp!855189 () Bool)

(assert (=> b!2704302 (= e!1704974 (and tp!855189 (inv!42247 (_2!18028 (_1!18029 (h!36598 mapDefault!16212)))) e!1704971 tp_is_empty!13859 setRes!21422 tp!855183))))

(declare-fun condSetEmpty!21422 () Bool)

(assert (=> b!2704302 (= condSetEmpty!21422 (= (_2!18029 (h!36598 mapDefault!16212)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun setNonEmpty!21422 () Bool)

(declare-fun e!1704973 () Bool)

(declare-fun setElem!21423 () Context!4366)

(declare-fun tp!855182 () Bool)

(assert (=> setNonEmpty!21422 (= setRes!21422 (and tp!855182 (inv!42247 setElem!21423) e!1704973))))

(declare-fun setRest!21422 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21422 (= (_2!18029 (h!36598 mapDefault!16212)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21423 true) setRest!21422))))

(declare-fun condMapEmpty!16212 () Bool)

(assert (=> mapNonEmpty!16206 (= condMapEmpty!16212 (= mapRest!16206 ((as const (Array (_ BitVec 32) List!31278)) mapDefault!16212)))))

(assert (=> mapNonEmpty!16206 (= tp!855032 (and e!1704974 mapRes!16212))))

(declare-fun b!2704303 () Bool)

(declare-fun e!1704970 () Bool)

(declare-fun tp!855190 () Bool)

(assert (=> b!2704303 (= e!1704970 tp!855190)))

(declare-fun b!2704304 () Bool)

(declare-fun tp!855186 () Bool)

(assert (=> b!2704304 (= e!1704973 tp!855186)))

(declare-fun b!2704305 () Bool)

(declare-fun tp!855187 () Bool)

(assert (=> b!2704305 (= e!1704971 tp!855187)))

(declare-fun mapNonEmpty!16212 () Bool)

(declare-fun tp!855181 () Bool)

(assert (=> mapNonEmpty!16212 (= mapRes!16212 (and tp!855181 e!1704972))))

(declare-fun mapKey!16212 () (_ BitVec 32))

(declare-fun mapRest!16212 () (Array (_ BitVec 32) List!31278))

(assert (=> mapNonEmpty!16212 (= mapRest!16206 (store mapRest!16212 mapKey!16212 mapValue!16212))))

(declare-fun setNonEmpty!21423 () Bool)

(declare-fun tp!855188 () Bool)

(declare-fun setElem!21422 () Context!4366)

(assert (=> setNonEmpty!21423 (= setRes!21423 (and tp!855188 (inv!42247 setElem!21422) e!1704970))))

(declare-fun setRest!21423 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21423 (= (_2!18029 (h!36598 mapValue!16212)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21422 true) setRest!21423))))

(declare-fun b!2704306 () Bool)

(declare-fun tp!855184 () Bool)

(assert (=> b!2704306 (= e!1704975 tp!855184)))

(assert (= (and mapNonEmpty!16206 condMapEmpty!16212) mapIsEmpty!16212))

(assert (= (and mapNonEmpty!16206 (not condMapEmpty!16212)) mapNonEmpty!16212))

(assert (= b!2704301 b!2704306))

(assert (= (and b!2704301 condSetEmpty!21423) setIsEmpty!21422))

(assert (= (and b!2704301 (not condSetEmpty!21423)) setNonEmpty!21423))

(assert (= setNonEmpty!21423 b!2704303))

(assert (= (and mapNonEmpty!16212 ((_ is Cons!31178) mapValue!16212)) b!2704301))

(assert (= b!2704302 b!2704305))

(assert (= (and b!2704302 condSetEmpty!21422) setIsEmpty!21423))

(assert (= (and b!2704302 (not condSetEmpty!21422)) setNonEmpty!21422))

(assert (= setNonEmpty!21422 b!2704304))

(assert (= (and mapNonEmpty!16206 ((_ is Cons!31178) mapDefault!16212)) b!2704302))

(declare-fun m!3093711 () Bool)

(assert (=> b!2704301 m!3093711))

(declare-fun m!3093713 () Bool)

(assert (=> setNonEmpty!21423 m!3093713))

(declare-fun m!3093715 () Bool)

(assert (=> mapNonEmpty!16212 m!3093715))

(declare-fun m!3093717 () Bool)

(assert (=> setNonEmpty!21422 m!3093717))

(declare-fun m!3093719 () Bool)

(assert (=> b!2704302 m!3093719))

(declare-fun b!2704307 () Bool)

(declare-fun e!1704978 () Bool)

(declare-fun tp!855192 () Bool)

(assert (=> b!2704307 (= e!1704978 tp!855192)))

(declare-fun e!1704977 () Bool)

(assert (=> mapNonEmpty!16206 (= tp!855039 e!1704977)))

(declare-fun e!1704976 () Bool)

(declare-fun setRes!21424 () Bool)

(declare-fun setNonEmpty!21424 () Bool)

(declare-fun setElem!21424 () Context!4366)

(declare-fun tp!855196 () Bool)

(assert (=> setNonEmpty!21424 (= setRes!21424 (and tp!855196 (inv!42247 setElem!21424) e!1704976))))

(declare-fun setRest!21424 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21424 (= (_2!18029 (h!36598 mapValue!16206)) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21424 true) setRest!21424))))

(declare-fun setIsEmpty!21424 () Bool)

(assert (=> setIsEmpty!21424 setRes!21424))

(declare-fun tp!855194 () Bool)

(declare-fun tp!855195 () Bool)

(declare-fun b!2704308 () Bool)

(assert (=> b!2704308 (= e!1704977 (and tp!855195 (inv!42247 (_2!18028 (_1!18029 (h!36598 mapValue!16206)))) e!1704978 tp_is_empty!13859 setRes!21424 tp!855194))))

(declare-fun condSetEmpty!21424 () Bool)

(assert (=> b!2704308 (= condSetEmpty!21424 (= (_2!18029 (h!36598 mapValue!16206)) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704309 () Bool)

(declare-fun tp!855193 () Bool)

(assert (=> b!2704309 (= e!1704976 tp!855193)))

(assert (= b!2704308 b!2704307))

(assert (= (and b!2704308 condSetEmpty!21424) setIsEmpty!21424))

(assert (= (and b!2704308 (not condSetEmpty!21424)) setNonEmpty!21424))

(assert (= setNonEmpty!21424 b!2704309))

(assert (= (and mapNonEmpty!16206 ((_ is Cons!31178) mapValue!16206)) b!2704308))

(declare-fun m!3093721 () Bool)

(assert (=> setNonEmpty!21424 m!3093721))

(declare-fun m!3093723 () Bool)

(assert (=> b!2704308 m!3093723))

(declare-fun b!2704310 () Bool)

(declare-fun tp!855197 () Bool)

(declare-fun tp!855199 () Bool)

(declare-fun e!1704980 () Bool)

(assert (=> b!2704310 (= e!1704980 (and (inv!42236 (left!23995 (c!436281 input!780))) tp!855197 (inv!42236 (right!24325 (c!436281 input!780))) tp!855199))))

(declare-fun b!2704312 () Bool)

(declare-fun e!1704979 () Bool)

(declare-fun tp!855198 () Bool)

(assert (=> b!2704312 (= e!1704979 tp!855198)))

(declare-fun b!2704311 () Bool)

(assert (=> b!2704311 (= e!1704980 (and (inv!42249 (xs!12791 (c!436281 input!780))) e!1704979))))

(assert (=> b!2703820 (= tp!855028 (and (inv!42236 (c!436281 input!780)) e!1704980))))

(assert (= (and b!2703820 ((_ is Node!9743) (c!436281 input!780))) b!2704310))

(assert (= b!2704311 b!2704312))

(assert (= (and b!2703820 ((_ is Leaf!14866) (c!436281 input!780))) b!2704311))

(declare-fun m!3093725 () Bool)

(assert (=> b!2704310 m!3093725))

(declare-fun m!3093727 () Bool)

(assert (=> b!2704310 m!3093727))

(declare-fun m!3093729 () Bool)

(assert (=> b!2704311 m!3093729))

(assert (=> b!2703820 m!3092747))

(declare-fun b!2704313 () Bool)

(declare-fun e!1704983 () Bool)

(declare-fun tp!855200 () Bool)

(assert (=> b!2704313 (= e!1704983 tp!855200)))

(declare-fun e!1704982 () Bool)

(assert (=> b!2703841 (= tp!855034 e!1704982)))

(declare-fun setNonEmpty!21425 () Bool)

(declare-fun tp!855204 () Bool)

(declare-fun setElem!21425 () Context!4366)

(declare-fun setRes!21425 () Bool)

(declare-fun e!1704981 () Bool)

(assert (=> setNonEmpty!21425 (= setRes!21425 (and tp!855204 (inv!42247 setElem!21425) e!1704981))))

(declare-fun setRest!21425 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21425 (= (_2!18029 (h!36598 (zeroValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21425 true) setRest!21425))))

(declare-fun setIsEmpty!21425 () Bool)

(assert (=> setIsEmpty!21425 setRes!21425))

(declare-fun tp!855202 () Bool)

(declare-fun tp!855203 () Bool)

(declare-fun b!2704314 () Bool)

(assert (=> b!2704314 (= e!1704982 (and tp!855203 (inv!42247 (_2!18028 (_1!18029 (h!36598 (zeroValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))))) e!1704983 tp_is_empty!13859 setRes!21425 tp!855202))))

(declare-fun condSetEmpty!21425 () Bool)

(assert (=> b!2704314 (= condSetEmpty!21425 (= (_2!18029 (h!36598 (zeroValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704315 () Bool)

(declare-fun tp!855201 () Bool)

(assert (=> b!2704315 (= e!1704981 tp!855201)))

(assert (= b!2704314 b!2704313))

(assert (= (and b!2704314 condSetEmpty!21425) setIsEmpty!21425))

(assert (= (and b!2704314 (not condSetEmpty!21425)) setNonEmpty!21425))

(assert (= setNonEmpty!21425 b!2704315))

(assert (= (and b!2703841 ((_ is Cons!31178) (zeroValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) b!2704314))

(declare-fun m!3093731 () Bool)

(assert (=> setNonEmpty!21425 m!3093731))

(declare-fun m!3093733 () Bool)

(assert (=> b!2704314 m!3093733))

(declare-fun b!2704316 () Bool)

(declare-fun e!1704986 () Bool)

(declare-fun tp!855205 () Bool)

(assert (=> b!2704316 (= e!1704986 tp!855205)))

(declare-fun e!1704985 () Bool)

(assert (=> b!2703841 (= tp!855024 e!1704985)))

(declare-fun e!1704984 () Bool)

(declare-fun tp!855209 () Bool)

(declare-fun setNonEmpty!21426 () Bool)

(declare-fun setElem!21426 () Context!4366)

(declare-fun setRes!21426 () Bool)

(assert (=> setNonEmpty!21426 (= setRes!21426 (and tp!855209 (inv!42247 setElem!21426) e!1704984))))

(declare-fun setRest!21426 () (InoxSet Context!4366))

(assert (=> setNonEmpty!21426 (= (_2!18029 (h!36598 (minValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4366 Bool)) false) setElem!21426 true) setRest!21426))))

(declare-fun setIsEmpty!21426 () Bool)

(assert (=> setIsEmpty!21426 setRes!21426))

(declare-fun tp!855207 () Bool)

(declare-fun b!2704317 () Bool)

(declare-fun tp!855208 () Bool)

(assert (=> b!2704317 (= e!1704985 (and tp!855208 (inv!42247 (_2!18028 (_1!18029 (h!36598 (minValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))))) e!1704986 tp_is_empty!13859 setRes!21426 tp!855207))))

(declare-fun condSetEmpty!21426 () Bool)

(assert (=> b!2704317 (= condSetEmpty!21426 (= (_2!18029 (h!36598 (minValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) ((as const (Array Context!4366 Bool)) false)))))

(declare-fun b!2704318 () Bool)

(declare-fun tp!855206 () Bool)

(assert (=> b!2704318 (= e!1704984 tp!855206)))

(assert (= b!2704317 b!2704316))

(assert (= (and b!2704317 condSetEmpty!21426) setIsEmpty!21426))

(assert (= (and b!2704317 (not condSetEmpty!21426)) setNonEmpty!21426))

(assert (= setNonEmpty!21426 b!2704318))

(assert (= (and b!2703841 ((_ is Cons!31178) (minValue!3805 (v!32947 (underlying!7297 (v!32948 (underlying!7298 (cache!3596 cacheDown!499)))))))) b!2704317))

(declare-fun m!3093735 () Bool)

(assert (=> setNonEmpty!21426 m!3093735))

(declare-fun m!3093737 () Bool)

(assert (=> b!2704317 m!3093737))

(check-sat (not setNonEmpty!21415) (not d!776933) (not b!2704301) (not d!776937) (not b!2704259) (not b!2704198) (not b!2704162) (not d!777011) (not b!2704213) (not b_next!77007) (not bm!174227) (not b!2704227) (not b_next!76999) (not d!776959) (not b!2704309) (not d!776919) b_and!199717 (not b!2704178) (not b!2704057) (not b!2703900) (not b!2703901) (not b!2704302) (not d!776913) (not d!776949) (not d!776991) (not b!2703872) (not d!776971) (not b!2704113) (not b!2704049) (not b!2704237) (not d!777015) (not b!2704092) (not b!2704226) (not b!2704103) (not b!2704078) (not b!2703902) (not d!776941) (not b!2704110) (not setNonEmpty!21405) (not d!777033) (not b!2703958) (not b!2704216) (not b!2704170) (not b!2703888) (not b!2704100) (not b!2703873) (not d!777007) (not b!2704181) (not d!777035) (not b!2704139) (not b!2704029) (not setNonEmpty!21426) b_and!199729 (not b!2704303) (not b!2704247) (not b!2703977) (not b!2703887) (not b!2704166) (not b_next!77001) (not b!2703976) (not b!2704001) (not d!776927) (not b!2704208) (not b!2703922) (not b!2704304) (not b!2704286) (not b!2704123) (not b!2704108) (not b!2704281) (not b!2704306) (not b!2704307) b_and!199723 (not d!776983) (not b!2704260) (not b!2704055) (not b!2703925) (not b!2704053) (not d!777001) (not b!2704052) (not tb!151475) (not b!2704305) (not b!2704159) (not b_lambda!82381) (not b!2703979) (not d!777031) (not b_next!77005) (not d!776905) (not b!2703889) (not b!2704130) (not b!2703867) (not b!2704313) (not b!2704116) (not b!2703932) (not b!2704098) (not d!777013) (not b!2703877) (not b!2704067) (not b!2704015) (not d!776899) (not d!776961) (not b!2704277) (not d!776981) (not b!2704095) (not mapNonEmpty!16209) (not b_next!77003) (not b!2704069) (not b!2704071) (not d!776915) (not b!2704086) (not d!776953) b_and!199733 (not b!2704106) (not b!2704117) (not b!2704072) tp_is_empty!13859 (not b!2704120) (not b!2703956) (not b!2704315) (not d!776973) (not b!2703870) (not d!776931) (not b!2704054) (not b!2704087) (not b!2704083) (not b!2704003) (not b!2704212) (not b!2704185) (not b!2704127) (not d!776943) (not d!776889) (not b!2704176) (not d!776969) (not setNonEmpty!21417) (not b!2704168) (not b!2704283) (not b!2704082) (not d!776947) (not b!2704249) (not b!2703919) (not setNonEmpty!21406) (not b!2704182) (not b!2704016) (not b!2704282) (not d!776951) (not d!776995) (not b!2703998) (not b!2704118) (not d!776901) (not b!2704171) (not b!2704280) (not setNonEmpty!21423) (not b!2704107) (not d!776921) (not d!776885) (not b!2704017) (not d!777021) (not b!2704169) (not b!2704021) (not setNonEmpty!21407) (not b!2703945) (not b!2703999) (not b!2703864) (not d!777009) (not b!2703871) (not d!776907) (not d!777005) (not b_next!76995) (not b!2704175) (not b!2704000) (not b!2704225) (not b!2704051) (not b!2704318) (not b!2704002) (not d!776945) (not b!2704104) (not b!2703812) (not d!776989) (not b!2704068) (not b_lambda!82379) (not b!2704034) (not b!2704080) (not setNonEmpty!21424) (not b!2704161) (not b!2704172) (not mapNonEmpty!16212) (not b_next!76993) (not b_next!76997) (not d!776887) (not d!776917) (not b!2704180) (not b!2703866) (not b!2704236) (not b!2704076) (not b!2703826) (not b!2704102) (not b!2704126) (not b!2704140) (not b!2704027) (not b!2704258) (not b!2704199) (not b!2703865) (not b!2704276) (not b!2704275) (not d!776955) (not d!776891) (not b!2704089) (not b!2704211) (not d!776997) (not b!2704119) (not b!2703920) (not b!2703957) (not b!2704308) (not b!2704278) (not setNonEmpty!21410) (not d!776963) (not b!2704090) (not b!2703875) (not b!2703834) (not d!776893) (not bm!174230) (not b!2703820) (not b!2704077) (not b!2704215) (not d!776939) (not b!2703904) (not d!776929) (not b!2704279) (not bm!174231) b_and!199715 (not b!2704165) (not b!2704285) (not b!2704020) (not b!2703975) b_and!199721 (not b!2704105) b_and!199725 (not b!2704284) (not b!2704179) (not b!2704210) (not b!2704093) (not b!2704197) (not b!2704030) (not b!2704137) (not b!2704097) (not d!776965) (not b!2703886) (not b!2704314) (not d!776999) (not b!2703874) (not d!776911) (not b!2704209) (not d!776923) (not b!2704121) (not tb!151473) (not b!2703868) (not d!776979) (not d!776957) (not b!2704317) (not b!2704038) (not setNonEmpty!21422) b_and!199731 (not d!776909) (not b!2704311) (not d!776925) (not b!2704091) (not setNonEmpty!21416) (not b!2704214) (not b!2704183) (not d!776987) (not b!2704312) (not d!777023) (not b!2703934) (not d!776935) (not b!2704310) (not b!2703996) (not b!2704316) (not b!2703944) (not b!2704033) (not b!2704048) (not b!2704066) (not setNonEmpty!21425) (not d!776985) (not b!2704248))
(check-sat b_and!199717 b_and!199729 (not b_next!77001) b_and!199723 (not b_next!77005) (not b_next!77003) b_and!199733 (not b_next!76995) b_and!199725 b_and!199731 (not b_next!77007) (not b_next!76999) (not b_next!76997) (not b_next!76993) b_and!199721 b_and!199715)
