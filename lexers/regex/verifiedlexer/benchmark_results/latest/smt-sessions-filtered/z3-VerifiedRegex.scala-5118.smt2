; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262054 () Bool)

(assert start!262054)

(declare-fun b!2695672 () Bool)

(declare-fun b_free!76153 () Bool)

(declare-fun b_next!76857 () Bool)

(assert (=> b!2695672 (= b_free!76153 (not b_next!76857))))

(declare-fun tp!852779 () Bool)

(declare-fun b_and!199283 () Bool)

(assert (=> b!2695672 (= tp!852779 b_and!199283)))

(declare-fun b!2695684 () Bool)

(declare-fun b_free!76155 () Bool)

(declare-fun b_next!76859 () Bool)

(assert (=> b!2695684 (= b_free!76155 (not b_next!76859))))

(declare-fun tp!852775 () Bool)

(declare-fun b_and!199285 () Bool)

(assert (=> b!2695684 (= tp!852775 b_and!199285)))

(declare-fun b_free!76157 () Bool)

(declare-fun b_next!76861 () Bool)

(assert (=> b!2695684 (= b_free!76157 (not b_next!76861))))

(declare-fun tp!852770 () Bool)

(declare-fun b_and!199287 () Bool)

(assert (=> b!2695684 (= tp!852770 b_and!199287)))

(declare-fun b!2695665 () Bool)

(declare-fun b_free!76159 () Bool)

(declare-fun b_next!76863 () Bool)

(assert (=> b!2695665 (= b_free!76159 (not b_next!76863))))

(declare-fun tp!852771 () Bool)

(declare-fun b_and!199289 () Bool)

(assert (=> b!2695665 (= tp!852771 b_and!199289)))

(declare-fun b!2695696 () Bool)

(declare-fun b_free!76161 () Bool)

(declare-fun b_next!76865 () Bool)

(assert (=> b!2695696 (= b_free!76161 (not b_next!76865))))

(declare-fun tp!852769 () Bool)

(declare-fun b_and!199291 () Bool)

(assert (=> b!2695696 (= tp!852769 b_and!199291)))

(declare-fun b!2695674 () Bool)

(declare-fun b_free!76163 () Bool)

(declare-fun b_next!76867 () Bool)

(assert (=> b!2695674 (= b_free!76163 (not b_next!76867))))

(declare-fun tp!852761 () Bool)

(declare-fun b_and!199293 () Bool)

(assert (=> b!2695674 (= tp!852761 b_and!199293)))

(declare-fun b!2695664 () Bool)

(declare-fun res!1132468 () Bool)

(declare-fun e!1699778 () Bool)

(assert (=> b!2695664 (=> (not res!1132468) (not e!1699778))))

(declare-datatypes ((List!31214 0))(
  ( (Nil!31114) (Cons!31114 (h!36534 (_ BitVec 16)) (t!225221 List!31214)) )
))
(declare-datatypes ((TokenValue!4971 0))(
  ( (FloatLiteralValue!9942 (text!35242 List!31214)) (TokenValueExt!4970 (__x!20011 Int)) (Broken!24855 (value!152935 List!31214)) (Object!5070) (End!4971) (Def!4971) (Underscore!4971) (Match!4971) (Else!4971) (Error!4971) (Case!4971) (If!4971) (Extends!4971) (Abstract!4971) (Class!4971) (Val!4971) (DelimiterValue!9942 (del!5031 List!31214)) (KeywordValue!4977 (value!152936 List!31214)) (CommentValue!9942 (value!152937 List!31214)) (WhitespaceValue!9942 (value!152938 List!31214)) (IndentationValue!4971 (value!152939 List!31214)) (String!34754) (Int32!4971) (Broken!24856 (value!152940 List!31214)) (Boolean!4972) (Unit!45214) (OperatorValue!4974 (op!5031 List!31214)) (IdentifierValue!9942 (value!152941 List!31214)) (IdentifierValue!9943 (value!152942 List!31214)) (WhitespaceValue!9943 (value!152943 List!31214)) (True!9942) (False!9942) (Broken!24857 (value!152944 List!31214)) (Broken!24858 (value!152945 List!31214)) (True!9943) (RightBrace!4971) (RightBracket!4971) (Colon!4971) (Null!4971) (Comma!4971) (LeftBracket!4971) (False!9943) (LeftBrace!4971) (ImaginaryLiteralValue!4971 (text!35243 List!31214)) (StringLiteralValue!14913 (value!152946 List!31214)) (EOFValue!4971 (value!152947 List!31214)) (IdentValue!4971 (value!152948 List!31214)) (DelimiterValue!9943 (value!152949 List!31214)) (DedentValue!4971 (value!152950 List!31214)) (NewLineValue!4971 (value!152951 List!31214)) (IntegerValue!14913 (value!152952 (_ BitVec 32)) (text!35244 List!31214)) (IntegerValue!14914 (value!152953 Int) (text!35245 List!31214)) (Times!4971) (Or!4971) (Equal!4971) (Minus!4971) (Broken!24859 (value!152954 List!31214)) (And!4971) (Div!4971) (LessEqual!4971) (Mod!4971) (Concat!12872) (Not!4971) (Plus!4971) (SpaceValue!4971 (value!152955 List!31214)) (IntegerValue!14915 (value!152956 Int) (text!35246 List!31214)) (StringLiteralValue!14914 (text!35247 List!31214)) (FloatLiteralValue!9943 (text!35248 List!31214)) (BytesLiteralValue!4971 (value!152957 List!31214)) (CommentValue!9943 (value!152958 List!31214)) (StringLiteralValue!14915 (value!152959 List!31214)) (ErrorTokenValue!4971 (msg!5032 List!31214)) )
))
(declare-datatypes ((C!15960 0))(
  ( (C!15961 (val!9914 Int)) )
))
(declare-datatypes ((Regex!7901 0))(
  ( (ElementMatch!7901 (c!434587 C!15960)) (Concat!12873 (regOne!16314 Regex!7901) (regTwo!16314 Regex!7901)) (EmptyExpr!7901) (Star!7901 (reg!8230 Regex!7901)) (EmptyLang!7901) (Union!7901 (regOne!16315 Regex!7901) (regTwo!16315 Regex!7901)) )
))
(declare-datatypes ((String!34755 0))(
  ( (String!34756 (value!152960 String)) )
))
(declare-datatypes ((List!31215 0))(
  ( (Nil!31115) (Cons!31115 (h!36535 C!15960) (t!225222 List!31215)) )
))
(declare-datatypes ((IArray!19459 0))(
  ( (IArray!19460 (innerList!9787 List!31215)) )
))
(declare-datatypes ((Conc!9727 0))(
  ( (Node!9727 (left!23971 Conc!9727) (right!24301 Conc!9727) (csize!19684 Int) (cheight!9938 Int)) (Leaf!14846 (xs!12767 IArray!19459) (csize!19685 Int)) (Empty!9727) )
))
(declare-datatypes ((BalanceConc!19068 0))(
  ( (BalanceConc!19069 (c!434588 Conc!9727)) )
))
(declare-datatypes ((TokenValueInjection!9382 0))(
  ( (TokenValueInjection!9383 (toValue!6707 Int) (toChars!6566 Int)) )
))
(declare-datatypes ((Rule!9298 0))(
  ( (Rule!9299 (regex!4749 Regex!7901) (tag!5253 String!34755) (isSeparator!4749 Bool) (transformation!4749 TokenValueInjection!9382)) )
))
(declare-datatypes ((Token!8964 0))(
  ( (Token!8965 (value!152961 TokenValue!4971) (rule!7166 Rule!9298) (size!24030 Int) (originalCharacters!5513 List!31215)) )
))
(declare-datatypes ((List!31216 0))(
  ( (Nil!31116) (Cons!31116 (h!36536 Token!8964) (t!225223 List!31216)) )
))
(declare-datatypes ((IArray!19461 0))(
  ( (IArray!19462 (innerList!9788 List!31216)) )
))
(declare-datatypes ((Conc!9728 0))(
  ( (Node!9728 (left!23972 Conc!9728) (right!24302 Conc!9728) (csize!19686 Int) (cheight!9939 Int)) (Leaf!14847 (xs!12768 IArray!19461) (csize!19687 Int)) (Empty!9728) )
))
(declare-datatypes ((BalanceConc!19070 0))(
  ( (BalanceConc!19071 (c!434589 Conc!9728)) )
))
(declare-datatypes ((tuple2!30704 0))(
  ( (tuple2!30705 (_1!17964 BalanceConc!19070) (_2!17964 BalanceConc!19068)) )
))
(declare-fun lt!952359 () tuple2!30704)

(declare-fun lt!952358 () tuple2!30704)

(declare-fun list!11740 (BalanceConc!19068) List!31215)

(assert (=> b!2695664 (= res!1132468 (= (list!11740 (_2!17964 lt!952359)) (list!11740 (_2!17964 lt!952358))))))

(declare-fun tp!852766 () Bool)

(declare-fun e!1699762 () Bool)

(declare-datatypes ((array!12581 0))(
  ( (array!12582 (arr!5620 (Array (_ BitVec 32) (_ BitVec 64))) (size!24031 (_ BitVec 32))) )
))
(declare-datatypes ((List!31217 0))(
  ( (Nil!31117) (Cons!31117 (h!36537 Regex!7901) (t!225224 List!31217)) )
))
(declare-datatypes ((Context!4350 0))(
  ( (Context!4351 (exprs!2675 List!31217)) )
))
(declare-datatypes ((tuple3!4284 0))(
  ( (tuple3!4285 (_1!17965 Regex!7901) (_2!17965 Context!4350) (_3!2612 C!15960)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30706 0))(
  ( (tuple2!30707 (_1!17966 tuple3!4284) (_2!17966 (InoxSet Context!4350))) )
))
(declare-datatypes ((List!31218 0))(
  ( (Nil!31118) (Cons!31118 (h!36538 tuple2!30706) (t!225225 List!31218)) )
))
(declare-datatypes ((array!12583 0))(
  ( (array!12584 (arr!5621 (Array (_ BitVec 32) List!31218)) (size!24032 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7060 0))(
  ( (LongMapFixedSize!7061 (defaultEntry!3915 Int) (mask!9217 (_ BitVec 32)) (extraKeys!3779 (_ BitVec 32)) (zeroValue!3789 List!31218) (minValue!3789 List!31218) (_size!7103 (_ BitVec 32)) (_keys!3830 array!12581) (_values!3811 array!12583) (_vacant!3591 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13929 0))(
  ( (Cell!13930 (v!32897 LongMapFixedSize!7060)) )
))
(declare-datatypes ((MutLongMap!3530 0))(
  ( (LongMap!3530 (underlying!7263 Cell!13929)) (MutLongMapExt!3529 (__x!20012 Int)) )
))
(declare-datatypes ((Cell!13931 0))(
  ( (Cell!13932 (v!32898 MutLongMap!3530)) )
))
(declare-datatypes ((Hashable!3446 0))(
  ( (HashableExt!3445 (__x!20013 Int)) )
))
(declare-datatypes ((MutableMap!3436 0))(
  ( (MutableMapExt!3435 (__x!20014 Int)) (HashMap!3436 (underlying!7264 Cell!13931) (hashF!5478 Hashable!3446) (_size!7104 (_ BitVec 32)) (defaultValue!3607 Int)) )
))
(declare-datatypes ((CacheDown!2258 0))(
  ( (CacheDown!2259 (cache!3579 MutableMap!3436)) )
))
(declare-fun cacheDown!499 () CacheDown!2258)

(declare-fun e!1699773 () Bool)

(declare-fun tp!852774 () Bool)

(declare-fun array_inv!4017 (array!12581) Bool)

(declare-fun array_inv!4018 (array!12583) Bool)

(assert (=> b!2695665 (= e!1699762 (and tp!852771 tp!852766 tp!852774 (array_inv!4017 (_keys!3830 (v!32897 (underlying!7263 (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))))) (array_inv!4018 (_values!3811 (v!32897 (underlying!7263 (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))))) e!1699773))))

(declare-fun b!2695666 () Bool)

(declare-fun e!1699768 () Bool)

(declare-fun treated!26 () BalanceConc!19068)

(declare-fun tp!852772 () Bool)

(declare-fun inv!42171 (Conc!9727) Bool)

(assert (=> b!2695666 (= e!1699768 (and (inv!42171 (c!434588 treated!26)) tp!852772))))

(declare-fun b!2695667 () Bool)

(assert (=> b!2695667 (= e!1699778 (not true))))

(declare-datatypes ((tuple2!30708 0))(
  ( (tuple2!30709 (_1!17967 Context!4350) (_2!17967 C!15960)) )
))
(declare-datatypes ((tuple2!30710 0))(
  ( (tuple2!30711 (_1!17968 tuple2!30708) (_2!17968 (InoxSet Context!4350))) )
))
(declare-datatypes ((List!31219 0))(
  ( (Nil!31119) (Cons!31119 (h!36539 tuple2!30710) (t!225226 List!31219)) )
))
(declare-datatypes ((array!12585 0))(
  ( (array!12586 (arr!5622 (Array (_ BitVec 32) List!31219)) (size!24033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7062 0))(
  ( (LongMapFixedSize!7063 (defaultEntry!3916 Int) (mask!9218 (_ BitVec 32)) (extraKeys!3780 (_ BitVec 32)) (zeroValue!3790 List!31219) (minValue!3790 List!31219) (_size!7105 (_ BitVec 32)) (_keys!3831 array!12581) (_values!3812 array!12585) (_vacant!3592 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13933 0))(
  ( (Cell!13934 (v!32899 LongMapFixedSize!7062)) )
))
(declare-datatypes ((tuple2!30712 0))(
  ( (tuple2!30713 (_1!17969 Token!8964) (_2!17969 BalanceConc!19068)) )
))
(declare-datatypes ((Option!6143 0))(
  ( (None!6142) (Some!6142 (v!32900 tuple2!30712)) )
))
(declare-datatypes ((Hashable!3447 0))(
  ( (HashableExt!3446 (__x!20015 Int)) )
))
(declare-datatypes ((MutLongMap!3531 0))(
  ( (LongMap!3531 (underlying!7265 Cell!13933)) (MutLongMapExt!3530 (__x!20016 Int)) )
))
(declare-datatypes ((Cell!13935 0))(
  ( (Cell!13936 (v!32901 MutLongMap!3531)) )
))
(declare-datatypes ((MutableMap!3437 0))(
  ( (MutableMapExt!3436 (__x!20017 Int)) (HashMap!3437 (underlying!7266 Cell!13935) (hashF!5479 Hashable!3447) (_size!7106 (_ BitVec 32)) (defaultValue!3608 Int)) )
))
(declare-datatypes ((CacheUp!2146 0))(
  ( (CacheUp!2147 (cache!3580 MutableMap!3437)) )
))
(declare-datatypes ((tuple3!4286 0))(
  ( (tuple3!4287 (_1!17970 Option!6143) (_2!17970 CacheUp!2146) (_3!2613 CacheDown!2258)) )
))
(declare-fun lt!952370 () tuple3!4286)

(declare-fun cacheUp!486 () CacheUp!2146)

(declare-datatypes ((List!31220 0))(
  ( (Nil!31120) (Cons!31120 (h!36540 Rule!9298) (t!225227 List!31220)) )
))
(declare-fun rules!1381 () List!31220)

(declare-datatypes ((LexerInterface!4345 0))(
  ( (LexerInterfaceExt!4342 (__x!20018 Int)) (Lexer!4343) )
))
(declare-fun thiss!12257 () LexerInterface!4345)

(declare-fun input!780 () BalanceConc!19068)

(declare-fun maxPrefixZipperSequenceMem!19 (LexerInterface!4345 List!31220 BalanceConc!19068 CacheUp!2146 CacheDown!2258) tuple3!4286)

(assert (=> b!2695667 (= lt!952370 (maxPrefixZipperSequenceMem!19 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1699757 () Bool)

(assert (=> b!2695667 e!1699757))

(declare-fun res!1132479 () Bool)

(assert (=> b!2695667 (=> (not res!1132479) (not e!1699757))))

(declare-fun acc!348 () BalanceConc!19070)

(declare-fun totalInput!354 () BalanceConc!19068)

(declare-fun e!1699777 () tuple2!30704)

(declare-fun lexTailRec!31 (LexerInterface!4345 List!31220 BalanceConc!19068 BalanceConc!19068 BalanceConc!19068 BalanceConc!19070) tuple2!30704)

(assert (=> b!2695667 (= res!1132479 (= (lexTailRec!31 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1699777))))

(declare-fun c!434586 () Bool)

(declare-fun lt!952364 () Option!6143)

(get-info :version)

(assert (=> b!2695667 (= c!434586 ((_ is Some!6142) lt!952364))))

(declare-fun maxPrefixZipperSequence!1007 (LexerInterface!4345 List!31220 BalanceConc!19068) Option!6143)

(assert (=> b!2695667 (= lt!952364 (maxPrefixZipperSequence!1007 thiss!12257 rules!1381 input!780))))

(declare-fun b!2695668 () Bool)

(declare-fun res!1132478 () Bool)

(declare-fun e!1699759 () Bool)

(assert (=> b!2695668 (=> (not res!1132478) (not e!1699759))))

(declare-fun valid!2738 (CacheUp!2146) Bool)

(assert (=> b!2695668 (= res!1132478 (valid!2738 cacheUp!486))))

(declare-fun b!2695669 () Bool)

(declare-fun e!1699775 () Bool)

(declare-fun e!1699767 () Bool)

(assert (=> b!2695669 (= e!1699775 e!1699767)))

(declare-fun res!1132474 () Bool)

(assert (=> start!262054 (=> (not res!1132474) (not e!1699759))))

(assert (=> start!262054 (= res!1132474 ((_ is Lexer!4343) thiss!12257))))

(assert (=> start!262054 e!1699759))

(declare-fun e!1699781 () Bool)

(declare-fun inv!42172 (BalanceConc!19068) Bool)

(assert (=> start!262054 (and (inv!42172 totalInput!354) e!1699781)))

(declare-fun e!1699774 () Bool)

(declare-fun inv!42173 (CacheUp!2146) Bool)

(assert (=> start!262054 (and (inv!42173 cacheUp!486) e!1699774)))

(declare-fun e!1699769 () Bool)

(declare-fun inv!42174 (BalanceConc!19070) Bool)

(assert (=> start!262054 (and (inv!42174 acc!348) e!1699769)))

(declare-fun e!1699785 () Bool)

(assert (=> start!262054 (and (inv!42172 input!780) e!1699785)))

(assert (=> start!262054 (and (inv!42172 treated!26) e!1699768)))

(declare-fun e!1699761 () Bool)

(assert (=> start!262054 e!1699761))

(assert (=> start!262054 true))

(declare-fun e!1699764 () Bool)

(declare-fun inv!42175 (CacheDown!2258) Bool)

(assert (=> start!262054 (and (inv!42175 cacheDown!499) e!1699764)))

(declare-fun b!2695670 () Bool)

(declare-fun e!1699771 () Bool)

(declare-fun e!1699780 () Bool)

(assert (=> b!2695670 (= e!1699771 e!1699780)))

(declare-fun res!1132472 () Bool)

(assert (=> b!2695670 (=> (not res!1132472) (not e!1699780))))

(declare-fun lt!952356 () List!31216)

(declare-fun lt!952350 () List!31216)

(assert (=> b!2695670 (= res!1132472 (= lt!952356 lt!952350))))

(declare-fun list!11741 (BalanceConc!19070) List!31216)

(assert (=> b!2695670 (= lt!952350 (list!11741 acc!348))))

(declare-fun lt!952363 () tuple2!30704)

(assert (=> b!2695670 (= lt!952356 (list!11741 (_1!17964 lt!952363)))))

(declare-fun lexRec!608 (LexerInterface!4345 List!31220 BalanceConc!19068) tuple2!30704)

(assert (=> b!2695670 (= lt!952363 (lexRec!608 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2695671 () Bool)

(declare-fun tp!852778 () Bool)

(assert (=> b!2695671 (= e!1699785 (and (inv!42171 (c!434588 input!780)) tp!852778))))

(declare-fun e!1699758 () Bool)

(declare-fun e!1699763 () Bool)

(assert (=> b!2695672 (= e!1699758 (and e!1699763 tp!852779))))

(declare-fun b!2695673 () Bool)

(assert (=> b!2695673 (= e!1699774 e!1699758)))

(declare-fun e!1699756 () Bool)

(declare-fun e!1699784 () Bool)

(assert (=> b!2695674 (= e!1699756 (and e!1699784 tp!852761))))

(declare-fun lt!952361 () Option!6143)

(declare-fun lt!952351 () tuple2!30704)

(declare-fun b!2695675 () Bool)

(assert (=> b!2695675 (= lt!952351 (lexRec!608 thiss!12257 rules!1381 (_2!17969 (v!32900 lt!952361))))))

(declare-fun e!1699786 () tuple2!30704)

(declare-fun prepend!1082 (BalanceConc!19070 Token!8964) BalanceConc!19070)

(assert (=> b!2695675 (= e!1699786 (tuple2!30705 (prepend!1082 (_1!17964 lt!952351) (_1!17969 (v!32900 lt!952361))) (_2!17964 lt!952351)))))

(declare-fun b!2695676 () Bool)

(assert (=> b!2695676 (= e!1699764 e!1699756)))

(declare-fun b!2695677 () Bool)

(declare-fun res!1132477 () Bool)

(assert (=> b!2695677 (=> (not res!1132477) (not e!1699780))))

(declare-fun isEmpty!17737 (List!31215) Bool)

(assert (=> b!2695677 (= res!1132477 (isEmpty!17737 (list!11740 (_2!17964 lt!952363))))))

(declare-fun b!2695678 () Bool)

(declare-fun lt!952347 () BalanceConc!19068)

(assert (=> b!2695678 (= e!1699786 (tuple2!30705 (BalanceConc!19071 Empty!9728) lt!952347))))

(declare-fun b!2695679 () Bool)

(declare-fun e!1699779 () Bool)

(assert (=> b!2695679 (= e!1699779 e!1699762)))

(declare-fun b!2695680 () Bool)

(declare-fun lt!952362 () MutLongMap!3531)

(assert (=> b!2695680 (= e!1699763 (and e!1699775 ((_ is LongMap!3531) lt!952362)))))

(assert (=> b!2695680 (= lt!952362 (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))))

(declare-fun b!2695681 () Bool)

(declare-fun res!1132470 () Bool)

(assert (=> b!2695681 (=> (not res!1132470) (not e!1699759))))

(declare-fun rulesInvariant!3834 (LexerInterface!4345 List!31220) Bool)

(assert (=> b!2695681 (= res!1132470 (rulesInvariant!3834 thiss!12257 rules!1381))))

(declare-fun b!2695682 () Bool)

(declare-fun tp!852762 () Bool)

(declare-fun inv!42176 (Conc!9728) Bool)

(assert (=> b!2695682 (= e!1699769 (and (inv!42176 (c!434589 acc!348)) tp!852762))))

(declare-fun b!2695683 () Bool)

(declare-fun e!1699772 () Bool)

(assert (=> b!2695683 (= e!1699772 e!1699779)))

(declare-fun mapNonEmpty!16139 () Bool)

(declare-fun mapRes!16140 () Bool)

(declare-fun tp!852765 () Bool)

(declare-fun tp!852777 () Bool)

(assert (=> mapNonEmpty!16139 (= mapRes!16140 (and tp!852765 tp!852777))))

(declare-fun mapRest!16140 () (Array (_ BitVec 32) List!31219))

(declare-fun mapValue!16139 () List!31219)

(declare-fun mapKey!16139 () (_ BitVec 32))

(assert (=> mapNonEmpty!16139 (= (arr!5622 (_values!3812 (v!32899 (underlying!7265 (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))))) (store mapRest!16140 mapKey!16139 mapValue!16139))))

(declare-fun mapIsEmpty!16139 () Bool)

(declare-fun mapRes!16139 () Bool)

(assert (=> mapIsEmpty!16139 mapRes!16139))

(declare-fun mapNonEmpty!16140 () Bool)

(declare-fun tp!852760 () Bool)

(declare-fun tp!852773 () Bool)

(assert (=> mapNonEmpty!16140 (= mapRes!16139 (and tp!852760 tp!852773))))

(declare-fun mapValue!16140 () List!31218)

(declare-fun mapKey!16140 () (_ BitVec 32))

(declare-fun mapRest!16139 () (Array (_ BitVec 32) List!31218))

(assert (=> mapNonEmpty!16140 (= (arr!5621 (_values!3811 (v!32897 (underlying!7263 (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))))) (store mapRest!16139 mapKey!16140 mapValue!16140))))

(declare-fun e!1699760 () Bool)

(assert (=> b!2695684 (= e!1699760 (and tp!852775 tp!852770))))

(declare-fun b!2695685 () Bool)

(declare-fun tp!852759 () Bool)

(assert (=> b!2695685 (= e!1699773 (and tp!852759 mapRes!16139))))

(declare-fun condMapEmpty!16140 () Bool)

(declare-fun mapDefault!16140 () List!31218)

(assert (=> b!2695685 (= condMapEmpty!16140 (= (arr!5621 (_values!3811 (v!32897 (underlying!7263 (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31218)) mapDefault!16140)))))

(declare-fun mapIsEmpty!16140 () Bool)

(assert (=> mapIsEmpty!16140 mapRes!16140))

(declare-fun b!2695686 () Bool)

(declare-fun lt!952346 () MutLongMap!3530)

(assert (=> b!2695686 (= e!1699784 (and e!1699772 ((_ is LongMap!3530) lt!952346)))))

(assert (=> b!2695686 (= lt!952346 (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))))

(declare-fun b!2695687 () Bool)

(declare-fun lt!952348 () BalanceConc!19070)

(assert (=> b!2695687 (= e!1699777 (lexTailRec!31 thiss!12257 rules!1381 totalInput!354 lt!952347 (_2!17969 (v!32900 lt!952364)) lt!952348))))

(declare-fun lt!952367 () tuple2!30704)

(assert (=> b!2695687 (= lt!952367 (lexRec!608 thiss!12257 rules!1381 (_2!17969 (v!32900 lt!952364))))))

(declare-fun lt!952366 () BalanceConc!19068)

(declare-fun charsOf!2993 (Token!8964) BalanceConc!19068)

(assert (=> b!2695687 (= lt!952366 (charsOf!2993 (_1!17969 (v!32900 lt!952364))))))

(declare-fun lt!952355 () List!31215)

(assert (=> b!2695687 (= lt!952355 (list!11740 lt!952366))))

(declare-fun lt!952360 () List!31215)

(assert (=> b!2695687 (= lt!952360 (list!11740 (_2!17969 (v!32900 lt!952364))))))

(declare-datatypes ((Unit!45215 0))(
  ( (Unit!45216) )
))
(declare-fun lt!952357 () Unit!45215)

(declare-fun lt!952369 () List!31215)

(declare-fun lemmaConcatAssociativity!1558 (List!31215 List!31215 List!31215) Unit!45215)

(assert (=> b!2695687 (= lt!952357 (lemmaConcatAssociativity!1558 lt!952369 lt!952355 lt!952360))))

(declare-fun lt!952365 () List!31215)

(declare-fun ++!7635 (List!31215 List!31215) List!31215)

(assert (=> b!2695687 (= lt!952365 (++!7635 lt!952369 lt!952355))))

(declare-fun res!1132473 () Bool)

(assert (=> b!2695687 (= res!1132473 (= (++!7635 lt!952365 lt!952360) (++!7635 lt!952369 (++!7635 lt!952355 lt!952360))))))

(declare-fun e!1699782 () Bool)

(assert (=> b!2695687 (=> (not res!1132473) (not e!1699782))))

(assert (=> b!2695687 e!1699782))

(declare-fun lt!952353 () List!31216)

(assert (=> b!2695687 (= lt!952353 (Cons!31116 (_1!17969 (v!32900 lt!952364)) Nil!31116))))

(declare-fun lt!952349 () List!31216)

(assert (=> b!2695687 (= lt!952349 (list!11741 (_1!17964 lt!952367)))))

(declare-fun lt!952354 () Unit!45215)

(declare-fun lemmaConcatAssociativity!1559 (List!31216 List!31216 List!31216) Unit!45215)

(assert (=> b!2695687 (= lt!952354 (lemmaConcatAssociativity!1559 lt!952350 lt!952353 lt!952349))))

(declare-fun ++!7636 (List!31216 List!31216) List!31216)

(assert (=> b!2695687 (= (++!7636 (++!7636 lt!952350 lt!952353) lt!952349) (++!7636 lt!952350 (++!7636 lt!952353 lt!952349)))))

(declare-fun append!777 (BalanceConc!19070 Token!8964) BalanceConc!19070)

(assert (=> b!2695687 (= lt!952348 (append!777 acc!348 (_1!17969 (v!32900 lt!952364))))))

(declare-fun lt!952352 () List!31216)

(assert (=> b!2695687 (= lt!952352 (list!11741 lt!952348))))

(declare-fun lt!952368 () Unit!45215)

(declare-fun lemmaLexThenLexPrefix!409 (LexerInterface!4345 List!31220 List!31215 List!31215 List!31216 List!31216 List!31215) Unit!45215)

(assert (=> b!2695687 (= lt!952368 (lemmaLexThenLexPrefix!409 thiss!12257 rules!1381 lt!952365 lt!952360 lt!952352 lt!952349 (list!11740 (_2!17964 lt!952367))))))

(declare-datatypes ((tuple2!30714 0))(
  ( (tuple2!30715 (_1!17971 List!31216) (_2!17971 List!31215)) )
))
(declare-fun lexList!1196 (LexerInterface!4345 List!31220 List!31215) tuple2!30714)

(assert (=> b!2695687 (= (lexList!1196 thiss!12257 rules!1381 lt!952365) (tuple2!30715 lt!952352 Nil!31115))))

(declare-fun ++!7637 (BalanceConc!19068 BalanceConc!19068) BalanceConc!19068)

(assert (=> b!2695687 (= lt!952347 (++!7637 treated!26 lt!952366))))

(assert (=> b!2695687 (= lt!952361 (maxPrefixZipperSequence!1007 thiss!12257 rules!1381 lt!952347))))

(declare-fun c!434585 () Bool)

(assert (=> b!2695687 (= c!434585 ((_ is Some!6142) lt!952361))))

(assert (=> b!2695687 (= (lexRec!608 thiss!12257 rules!1381 lt!952347) e!1699786)))

(declare-fun b!2695688 () Bool)

(assert (=> b!2695688 (= e!1699782 (= lt!952358 (tuple2!30705 (prepend!1082 (_1!17964 lt!952367) (_1!17969 (v!32900 lt!952364))) (_2!17964 lt!952367))))))

(declare-fun b!2695689 () Bool)

(assert (=> b!2695689 (= e!1699780 e!1699778)))

(declare-fun res!1132469 () Bool)

(assert (=> b!2695689 (=> (not res!1132469) (not e!1699778))))

(declare-fun ++!7638 (BalanceConc!19070 BalanceConc!19070) BalanceConc!19070)

(assert (=> b!2695689 (= res!1132469 (= (list!11741 (_1!17964 lt!952359)) (list!11741 (++!7638 acc!348 (_1!17964 lt!952358)))))))

(assert (=> b!2695689 (= lt!952358 (lexRec!608 thiss!12257 rules!1381 input!780))))

(assert (=> b!2695689 (= lt!952359 (lexRec!608 thiss!12257 rules!1381 totalInput!354))))

(declare-fun tp!852758 () Bool)

(declare-fun e!1699776 () Bool)

(declare-fun b!2695690 () Bool)

(declare-fun inv!42169 (String!34755) Bool)

(declare-fun inv!42177 (TokenValueInjection!9382) Bool)

(assert (=> b!2695690 (= e!1699776 (and tp!852758 (inv!42169 (tag!5253 (h!36540 rules!1381))) (inv!42177 (transformation!4749 (h!36540 rules!1381))) e!1699760))))

(declare-fun b!2695691 () Bool)

(declare-fun e!1699755 () Bool)

(assert (=> b!2695691 (= e!1699767 e!1699755)))

(declare-fun b!2695692 () Bool)

(declare-fun tp!852768 () Bool)

(assert (=> b!2695692 (= e!1699781 (and (inv!42171 (c!434588 totalInput!354)) tp!852768))))

(declare-fun b!2695693 () Bool)

(declare-fun lex!1961 (LexerInterface!4345 List!31220 BalanceConc!19068) tuple2!30704)

(declare-fun lexTailRecV2!873 (LexerInterface!4345 List!31220 BalanceConc!19068 BalanceConc!19068 BalanceConc!19068 BalanceConc!19070) tuple2!30704)

(assert (=> b!2695693 (= e!1699757 (= (lex!1961 thiss!12257 rules!1381 input!780) (lexTailRecV2!873 thiss!12257 rules!1381 input!780 (BalanceConc!19069 Empty!9727) input!780 (BalanceConc!19071 Empty!9728))))))

(declare-fun b!2695694 () Bool)

(assert (=> b!2695694 (= e!1699759 e!1699771)))

(declare-fun res!1132475 () Bool)

(assert (=> b!2695694 (=> (not res!1132475) (not e!1699771))))

(assert (=> b!2695694 (= res!1132475 (= (list!11740 totalInput!354) (++!7635 lt!952369 (list!11740 input!780))))))

(assert (=> b!2695694 (= lt!952369 (list!11740 treated!26))))

(declare-fun b!2695695 () Bool)

(declare-fun res!1132471 () Bool)

(assert (=> b!2695695 (=> (not res!1132471) (not e!1699759))))

(declare-fun isEmpty!17738 (List!31220) Bool)

(assert (=> b!2695695 (= res!1132471 (not (isEmpty!17738 rules!1381)))))

(declare-fun e!1699783 () Bool)

(declare-fun tp!852764 () Bool)

(declare-fun tp!852776 () Bool)

(declare-fun array_inv!4019 (array!12585) Bool)

(assert (=> b!2695696 (= e!1699755 (and tp!852769 tp!852776 tp!852764 (array_inv!4017 (_keys!3831 (v!32899 (underlying!7265 (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))))) (array_inv!4019 (_values!3812 (v!32899 (underlying!7265 (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))))) e!1699783))))

(declare-fun b!2695697 () Bool)

(declare-fun tp!852763 () Bool)

(assert (=> b!2695697 (= e!1699783 (and tp!852763 mapRes!16140))))

(declare-fun condMapEmpty!16139 () Bool)

(declare-fun mapDefault!16139 () List!31219)

(assert (=> b!2695697 (= condMapEmpty!16139 (= (arr!5622 (_values!3812 (v!32899 (underlying!7265 (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31219)) mapDefault!16139)))))

(declare-fun b!2695698 () Bool)

(assert (=> b!2695698 (= e!1699777 (tuple2!30705 acc!348 input!780))))

(declare-fun b!2695699 () Bool)

(declare-fun tp!852767 () Bool)

(assert (=> b!2695699 (= e!1699761 (and e!1699776 tp!852767))))

(declare-fun b!2695700 () Bool)

(declare-fun res!1132476 () Bool)

(assert (=> b!2695700 (=> (not res!1132476) (not e!1699759))))

(declare-fun valid!2739 (CacheDown!2258) Bool)

(assert (=> b!2695700 (= res!1132476 (valid!2739 cacheDown!499))))

(assert (= (and start!262054 res!1132474) b!2695695))

(assert (= (and b!2695695 res!1132471) b!2695681))

(assert (= (and b!2695681 res!1132470) b!2695668))

(assert (= (and b!2695668 res!1132478) b!2695700))

(assert (= (and b!2695700 res!1132476) b!2695694))

(assert (= (and b!2695694 res!1132475) b!2695670))

(assert (= (and b!2695670 res!1132472) b!2695677))

(assert (= (and b!2695677 res!1132477) b!2695689))

(assert (= (and b!2695689 res!1132469) b!2695664))

(assert (= (and b!2695664 res!1132468) b!2695667))

(assert (= (and b!2695667 c!434586) b!2695687))

(assert (= (and b!2695667 (not c!434586)) b!2695698))

(assert (= (and b!2695687 res!1132473) b!2695688))

(assert (= (and b!2695687 c!434585) b!2695675))

(assert (= (and b!2695687 (not c!434585)) b!2695678))

(assert (= (and b!2695667 res!1132479) b!2695693))

(assert (= start!262054 b!2695692))

(assert (= (and b!2695697 condMapEmpty!16139) mapIsEmpty!16140))

(assert (= (and b!2695697 (not condMapEmpty!16139)) mapNonEmpty!16139))

(assert (= b!2695696 b!2695697))

(assert (= b!2695691 b!2695696))

(assert (= b!2695669 b!2695691))

(assert (= (and b!2695680 ((_ is LongMap!3531) (v!32901 (underlying!7266 (cache!3580 cacheUp!486))))) b!2695669))

(assert (= b!2695672 b!2695680))

(assert (= (and b!2695673 ((_ is HashMap!3437) (cache!3580 cacheUp!486))) b!2695672))

(assert (= start!262054 b!2695673))

(assert (= start!262054 b!2695682))

(assert (= start!262054 b!2695671))

(assert (= start!262054 b!2695666))

(assert (= b!2695690 b!2695684))

(assert (= b!2695699 b!2695690))

(assert (= (and start!262054 ((_ is Cons!31120) rules!1381)) b!2695699))

(assert (= (and b!2695685 condMapEmpty!16140) mapIsEmpty!16139))

(assert (= (and b!2695685 (not condMapEmpty!16140)) mapNonEmpty!16140))

(assert (= b!2695665 b!2695685))

(assert (= b!2695679 b!2695665))

(assert (= b!2695683 b!2695679))

(assert (= (and b!2695686 ((_ is LongMap!3530) (v!32898 (underlying!7264 (cache!3579 cacheDown!499))))) b!2695683))

(assert (= b!2695674 b!2695686))

(assert (= (and b!2695676 ((_ is HashMap!3436) (cache!3579 cacheDown!499))) b!2695674))

(assert (= start!262054 b!2695676))

(declare-fun m!3076645 () Bool)

(assert (=> b!2695696 m!3076645))

(declare-fun m!3076647 () Bool)

(assert (=> b!2695696 m!3076647))

(declare-fun m!3076649 () Bool)

(assert (=> b!2695695 m!3076649))

(declare-fun m!3076651 () Bool)

(assert (=> b!2695670 m!3076651))

(declare-fun m!3076653 () Bool)

(assert (=> b!2695670 m!3076653))

(declare-fun m!3076655 () Bool)

(assert (=> b!2695670 m!3076655))

(declare-fun m!3076657 () Bool)

(assert (=> b!2695694 m!3076657))

(declare-fun m!3076659 () Bool)

(assert (=> b!2695694 m!3076659))

(assert (=> b!2695694 m!3076659))

(declare-fun m!3076661 () Bool)

(assert (=> b!2695694 m!3076661))

(declare-fun m!3076663 () Bool)

(assert (=> b!2695694 m!3076663))

(declare-fun m!3076665 () Bool)

(assert (=> mapNonEmpty!16140 m!3076665))

(declare-fun m!3076667 () Bool)

(assert (=> b!2695700 m!3076667))

(declare-fun m!3076669 () Bool)

(assert (=> b!2695668 m!3076669))

(declare-fun m!3076671 () Bool)

(assert (=> b!2695688 m!3076671))

(declare-fun m!3076673 () Bool)

(assert (=> b!2695671 m!3076673))

(declare-fun m!3076675 () Bool)

(assert (=> b!2695665 m!3076675))

(declare-fun m!3076677 () Bool)

(assert (=> b!2695665 m!3076677))

(declare-fun m!3076679 () Bool)

(assert (=> b!2695675 m!3076679))

(declare-fun m!3076681 () Bool)

(assert (=> b!2695675 m!3076681))

(declare-fun m!3076683 () Bool)

(assert (=> b!2695677 m!3076683))

(assert (=> b!2695677 m!3076683))

(declare-fun m!3076685 () Bool)

(assert (=> b!2695677 m!3076685))

(declare-fun m!3076687 () Bool)

(assert (=> b!2695681 m!3076687))

(declare-fun m!3076689 () Bool)

(assert (=> b!2695689 m!3076689))

(declare-fun m!3076691 () Bool)

(assert (=> b!2695689 m!3076691))

(declare-fun m!3076693 () Bool)

(assert (=> b!2695689 m!3076693))

(declare-fun m!3076695 () Bool)

(assert (=> b!2695689 m!3076695))

(declare-fun m!3076697 () Bool)

(assert (=> b!2695689 m!3076697))

(assert (=> b!2695689 m!3076693))

(declare-fun m!3076699 () Bool)

(assert (=> mapNonEmpty!16139 m!3076699))

(declare-fun m!3076701 () Bool)

(assert (=> b!2695664 m!3076701))

(declare-fun m!3076703 () Bool)

(assert (=> b!2695664 m!3076703))

(declare-fun m!3076705 () Bool)

(assert (=> b!2695682 m!3076705))

(declare-fun m!3076707 () Bool)

(assert (=> start!262054 m!3076707))

(declare-fun m!3076709 () Bool)

(assert (=> start!262054 m!3076709))

(declare-fun m!3076711 () Bool)

(assert (=> start!262054 m!3076711))

(declare-fun m!3076713 () Bool)

(assert (=> start!262054 m!3076713))

(declare-fun m!3076715 () Bool)

(assert (=> start!262054 m!3076715))

(declare-fun m!3076717 () Bool)

(assert (=> start!262054 m!3076717))

(declare-fun m!3076719 () Bool)

(assert (=> b!2695666 m!3076719))

(declare-fun m!3076721 () Bool)

(assert (=> b!2695692 m!3076721))

(declare-fun m!3076723 () Bool)

(assert (=> b!2695690 m!3076723))

(declare-fun m!3076725 () Bool)

(assert (=> b!2695690 m!3076725))

(declare-fun m!3076727 () Bool)

(assert (=> b!2695667 m!3076727))

(declare-fun m!3076729 () Bool)

(assert (=> b!2695667 m!3076729))

(declare-fun m!3076731 () Bool)

(assert (=> b!2695667 m!3076731))

(declare-fun m!3076733 () Bool)

(assert (=> b!2695687 m!3076733))

(declare-fun m!3076735 () Bool)

(assert (=> b!2695687 m!3076735))

(declare-fun m!3076737 () Bool)

(assert (=> b!2695687 m!3076737))

(declare-fun m!3076739 () Bool)

(assert (=> b!2695687 m!3076739))

(declare-fun m!3076741 () Bool)

(assert (=> b!2695687 m!3076741))

(declare-fun m!3076743 () Bool)

(assert (=> b!2695687 m!3076743))

(declare-fun m!3076745 () Bool)

(assert (=> b!2695687 m!3076745))

(declare-fun m!3076747 () Bool)

(assert (=> b!2695687 m!3076747))

(declare-fun m!3076749 () Bool)

(assert (=> b!2695687 m!3076749))

(declare-fun m!3076751 () Bool)

(assert (=> b!2695687 m!3076751))

(declare-fun m!3076753 () Bool)

(assert (=> b!2695687 m!3076753))

(declare-fun m!3076755 () Bool)

(assert (=> b!2695687 m!3076755))

(declare-fun m!3076757 () Bool)

(assert (=> b!2695687 m!3076757))

(declare-fun m!3076759 () Bool)

(assert (=> b!2695687 m!3076759))

(declare-fun m!3076761 () Bool)

(assert (=> b!2695687 m!3076761))

(declare-fun m!3076763 () Bool)

(assert (=> b!2695687 m!3076763))

(assert (=> b!2695687 m!3076739))

(declare-fun m!3076765 () Bool)

(assert (=> b!2695687 m!3076765))

(assert (=> b!2695687 m!3076735))

(declare-fun m!3076767 () Bool)

(assert (=> b!2695687 m!3076767))

(declare-fun m!3076769 () Bool)

(assert (=> b!2695687 m!3076769))

(declare-fun m!3076771 () Bool)

(assert (=> b!2695687 m!3076771))

(assert (=> b!2695687 m!3076769))

(declare-fun m!3076773 () Bool)

(assert (=> b!2695687 m!3076773))

(assert (=> b!2695687 m!3076753))

(declare-fun m!3076775 () Bool)

(assert (=> b!2695687 m!3076775))

(declare-fun m!3076777 () Bool)

(assert (=> b!2695687 m!3076777))

(declare-fun m!3076779 () Bool)

(assert (=> b!2695687 m!3076779))

(declare-fun m!3076781 () Bool)

(assert (=> b!2695693 m!3076781))

(declare-fun m!3076783 () Bool)

(assert (=> b!2695693 m!3076783))

(check-sat (not b!2695687) (not b!2695700) (not b!2695688) b_and!199285 b_and!199287 (not b!2695677) (not b!2695694) (not b_next!76861) (not b!2695671) (not b!2695699) (not b!2695666) (not b_next!76857) (not mapNonEmpty!16140) (not b!2695692) (not b!2695689) (not b!2695682) (not start!262054) (not b!2695670) (not b!2695681) (not b!2695685) (not b_next!76867) (not mapNonEmpty!16139) b_and!199283 (not b!2695696) (not b!2695665) (not b!2695675) (not b_next!76865) (not b!2695668) (not b!2695690) b_and!199289 (not b!2695697) (not b_next!76863) (not b!2695695) b_and!199293 b_and!199291 (not b_next!76859) (not b!2695693) (not b!2695667) (not b!2695664))
(check-sat b_and!199285 b_and!199287 (not b_next!76865) b_and!199289 (not b_next!76861) (not b_next!76863) (not b_next!76857) (not b_next!76867) b_and!199283 b_and!199293 b_and!199291 (not b_next!76859))
