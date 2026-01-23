; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262050 () Bool)

(assert start!262050)

(declare-fun b!2695469 () Bool)

(declare-fun b_free!76129 () Bool)

(declare-fun b_next!76833 () Bool)

(assert (=> b!2695469 (= b_free!76129 (not b_next!76833))))

(declare-fun tp!852642 () Bool)

(declare-fun b_and!199259 () Bool)

(assert (=> b!2695469 (= tp!852642 b_and!199259)))

(declare-fun b!2695449 () Bool)

(declare-fun b_free!76131 () Bool)

(declare-fun b_next!76835 () Bool)

(assert (=> b!2695449 (= b_free!76131 (not b_next!76835))))

(declare-fun tp!852646 () Bool)

(declare-fun b_and!199261 () Bool)

(assert (=> b!2695449 (= tp!852646 b_and!199261)))

(declare-fun b!2695461 () Bool)

(declare-fun b_free!76133 () Bool)

(declare-fun b_next!76837 () Bool)

(assert (=> b!2695461 (= b_free!76133 (not b_next!76837))))

(declare-fun tp!852640 () Bool)

(declare-fun b_and!199263 () Bool)

(assert (=> b!2695461 (= tp!852640 b_and!199263)))

(declare-fun b!2695475 () Bool)

(declare-fun b_free!76135 () Bool)

(declare-fun b_next!76839 () Bool)

(assert (=> b!2695475 (= b_free!76135 (not b_next!76839))))

(declare-fun tp!852645 () Bool)

(declare-fun b_and!199265 () Bool)

(assert (=> b!2695475 (= tp!852645 b_and!199265)))

(declare-fun b!2695453 () Bool)

(declare-fun b_free!76137 () Bool)

(declare-fun b_next!76841 () Bool)

(assert (=> b!2695453 (= b_free!76137 (not b_next!76841))))

(declare-fun tp!852643 () Bool)

(declare-fun b_and!199267 () Bool)

(assert (=> b!2695453 (= tp!852643 b_and!199267)))

(declare-fun b_free!76139 () Bool)

(declare-fun b_next!76843 () Bool)

(assert (=> b!2695453 (= b_free!76139 (not b_next!76843))))

(declare-fun tp!852635 () Bool)

(declare-fun b_and!199269 () Bool)

(assert (=> b!2695453 (= tp!852635 b_and!199269)))

(declare-fun b!2695441 () Bool)

(declare-fun res!1132399 () Bool)

(declare-fun e!1699580 () Bool)

(assert (=> b!2695441 (=> (not res!1132399) (not e!1699580))))

(declare-datatypes ((List!31200 0))(
  ( (Nil!31100) (Cons!31100 (h!36520 (_ BitVec 16)) (t!225207 List!31200)) )
))
(declare-datatypes ((TokenValue!4969 0))(
  ( (FloatLiteralValue!9938 (text!35228 List!31200)) (TokenValueExt!4968 (__x!19995 Int)) (Broken!24845 (value!152878 List!31200)) (Object!5068) (End!4969) (Def!4969) (Underscore!4969) (Match!4969) (Else!4969) (Error!4969) (Case!4969) (If!4969) (Extends!4969) (Abstract!4969) (Class!4969) (Val!4969) (DelimiterValue!9938 (del!5029 List!31200)) (KeywordValue!4975 (value!152879 List!31200)) (CommentValue!9938 (value!152880 List!31200)) (WhitespaceValue!9938 (value!152881 List!31200)) (IndentationValue!4969 (value!152882 List!31200)) (String!34744) (Int32!4969) (Broken!24846 (value!152883 List!31200)) (Boolean!4970) (Unit!45210) (OperatorValue!4972 (op!5029 List!31200)) (IdentifierValue!9938 (value!152884 List!31200)) (IdentifierValue!9939 (value!152885 List!31200)) (WhitespaceValue!9939 (value!152886 List!31200)) (True!9938) (False!9938) (Broken!24847 (value!152887 List!31200)) (Broken!24848 (value!152888 List!31200)) (True!9939) (RightBrace!4969) (RightBracket!4969) (Colon!4969) (Null!4969) (Comma!4969) (LeftBracket!4969) (False!9939) (LeftBrace!4969) (ImaginaryLiteralValue!4969 (text!35229 List!31200)) (StringLiteralValue!14907 (value!152889 List!31200)) (EOFValue!4969 (value!152890 List!31200)) (IdentValue!4969 (value!152891 List!31200)) (DelimiterValue!9939 (value!152892 List!31200)) (DedentValue!4969 (value!152893 List!31200)) (NewLineValue!4969 (value!152894 List!31200)) (IntegerValue!14907 (value!152895 (_ BitVec 32)) (text!35230 List!31200)) (IntegerValue!14908 (value!152896 Int) (text!35231 List!31200)) (Times!4969) (Or!4969) (Equal!4969) (Minus!4969) (Broken!24849 (value!152897 List!31200)) (And!4969) (Div!4969) (LessEqual!4969) (Mod!4969) (Concat!12868) (Not!4969) (Plus!4969) (SpaceValue!4969 (value!152898 List!31200)) (IntegerValue!14909 (value!152899 Int) (text!35232 List!31200)) (StringLiteralValue!14908 (text!35233 List!31200)) (FloatLiteralValue!9939 (text!35234 List!31200)) (BytesLiteralValue!4969 (value!152900 List!31200)) (CommentValue!9939 (value!152901 List!31200)) (StringLiteralValue!14909 (value!152902 List!31200)) (ErrorTokenValue!4969 (msg!5030 List!31200)) )
))
(declare-datatypes ((C!15956 0))(
  ( (C!15957 (val!9912 Int)) )
))
(declare-datatypes ((Regex!7899 0))(
  ( (ElementMatch!7899 (c!434567 C!15956)) (Concat!12869 (regOne!16310 Regex!7899) (regTwo!16310 Regex!7899)) (EmptyExpr!7899) (Star!7899 (reg!8228 Regex!7899)) (EmptyLang!7899) (Union!7899 (regOne!16311 Regex!7899) (regTwo!16311 Regex!7899)) )
))
(declare-datatypes ((String!34745 0))(
  ( (String!34746 (value!152903 String)) )
))
(declare-datatypes ((List!31201 0))(
  ( (Nil!31101) (Cons!31101 (h!36521 C!15956) (t!225208 List!31201)) )
))
(declare-datatypes ((IArray!19451 0))(
  ( (IArray!19452 (innerList!9783 List!31201)) )
))
(declare-datatypes ((Conc!9723 0))(
  ( (Node!9723 (left!23966 Conc!9723) (right!24296 Conc!9723) (csize!19676 Int) (cheight!9934 Int)) (Leaf!14841 (xs!12763 IArray!19451) (csize!19677 Int)) (Empty!9723) )
))
(declare-datatypes ((BalanceConc!19060 0))(
  ( (BalanceConc!19061 (c!434568 Conc!9723)) )
))
(declare-datatypes ((TokenValueInjection!9378 0))(
  ( (TokenValueInjection!9379 (toValue!6705 Int) (toChars!6564 Int)) )
))
(declare-datatypes ((Rule!9294 0))(
  ( (Rule!9295 (regex!4747 Regex!7899) (tag!5251 String!34745) (isSeparator!4747 Bool) (transformation!4747 TokenValueInjection!9378)) )
))
(declare-datatypes ((Token!8960 0))(
  ( (Token!8961 (value!152904 TokenValue!4969) (rule!7164 Rule!9294) (size!24022 Int) (originalCharacters!5511 List!31201)) )
))
(declare-datatypes ((List!31202 0))(
  ( (Nil!31102) (Cons!31102 (h!36522 Token!8960) (t!225209 List!31202)) )
))
(declare-datatypes ((IArray!19453 0))(
  ( (IArray!19454 (innerList!9784 List!31202)) )
))
(declare-datatypes ((Conc!9724 0))(
  ( (Node!9724 (left!23967 Conc!9724) (right!24297 Conc!9724) (csize!19678 Int) (cheight!9935 Int)) (Leaf!14842 (xs!12764 IArray!19453) (csize!19679 Int)) (Empty!9724) )
))
(declare-datatypes ((BalanceConc!19062 0))(
  ( (BalanceConc!19063 (c!434569 Conc!9724)) )
))
(declare-datatypes ((tuple2!30684 0))(
  ( (tuple2!30685 (_1!17950 BalanceConc!19062) (_2!17950 BalanceConc!19060)) )
))
(declare-fun lt!952196 () tuple2!30684)

(declare-fun lt!952205 () tuple2!30684)

(declare-fun list!11736 (BalanceConc!19060) List!31201)

(assert (=> b!2695441 (= res!1132399 (= (list!11736 (_2!17950 lt!952196)) (list!11736 (_2!17950 lt!952205))))))

(declare-fun mapIsEmpty!16127 () Bool)

(declare-fun mapRes!16128 () Bool)

(assert (=> mapIsEmpty!16127 mapRes!16128))

(declare-fun b!2695442 () Bool)

(declare-fun res!1132406 () Bool)

(declare-fun e!1699594 () Bool)

(assert (=> b!2695442 (=> (not res!1132406) (not e!1699594))))

(declare-fun lt!952212 () tuple2!30684)

(declare-fun isEmpty!17735 (List!31201) Bool)

(assert (=> b!2695442 (= res!1132406 (isEmpty!17735 (list!11736 (_2!17950 lt!952212))))))

(declare-fun mapNonEmpty!16127 () Bool)

(declare-fun tp!852629 () Bool)

(declare-fun tp!852638 () Bool)

(assert (=> mapNonEmpty!16127 (= mapRes!16128 (and tp!852629 tp!852638))))

(declare-datatypes ((List!31203 0))(
  ( (Nil!31103) (Cons!31103 (h!36523 Regex!7899) (t!225210 List!31203)) )
))
(declare-datatypes ((Context!4346 0))(
  ( (Context!4347 (exprs!2673 List!31203)) )
))
(declare-datatypes ((tuple3!4276 0))(
  ( (tuple3!4277 (_1!17951 Regex!7899) (_2!17951 Context!4346) (_3!2608 C!15956)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30686 0))(
  ( (tuple2!30687 (_1!17952 tuple3!4276) (_2!17952 (InoxSet Context!4346))) )
))
(declare-datatypes ((List!31204 0))(
  ( (Nil!31104) (Cons!31104 (h!36524 tuple2!30686) (t!225211 List!31204)) )
))
(declare-fun mapRest!16127 () (Array (_ BitVec 32) List!31204))

(declare-datatypes ((array!12569 0))(
  ( (array!12570 (arr!5614 (Array (_ BitVec 32) (_ BitVec 64))) (size!24023 (_ BitVec 32))) )
))
(declare-datatypes ((array!12571 0))(
  ( (array!12572 (arr!5615 (Array (_ BitVec 32) List!31204)) (size!24024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7052 0))(
  ( (LongMapFixedSize!7053 (defaultEntry!3911 Int) (mask!9212 (_ BitVec 32)) (extraKeys!3775 (_ BitVec 32)) (zeroValue!3785 List!31204) (minValue!3785 List!31204) (_size!7095 (_ BitVec 32)) (_keys!3826 array!12569) (_values!3807 array!12571) (_vacant!3587 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13913 0))(
  ( (Cell!13914 (v!32888 LongMapFixedSize!7052)) )
))
(declare-datatypes ((MutLongMap!3526 0))(
  ( (LongMap!3526 (underlying!7255 Cell!13913)) (MutLongMapExt!3525 (__x!19996 Int)) )
))
(declare-datatypes ((Cell!13915 0))(
  ( (Cell!13916 (v!32889 MutLongMap!3526)) )
))
(declare-datatypes ((Hashable!3442 0))(
  ( (HashableExt!3441 (__x!19997 Int)) )
))
(declare-datatypes ((MutableMap!3432 0))(
  ( (MutableMapExt!3431 (__x!19998 Int)) (HashMap!3432 (underlying!7256 Cell!13915) (hashF!5474 Hashable!3442) (_size!7096 (_ BitVec 32)) (defaultValue!3603 Int)) )
))
(declare-datatypes ((CacheDown!2254 0))(
  ( (CacheDown!2255 (cache!3575 MutableMap!3432)) )
))
(declare-fun cacheDown!499 () CacheDown!2254)

(declare-fun mapKey!16127 () (_ BitVec 32))

(declare-fun mapValue!16127 () List!31204)

(assert (=> mapNonEmpty!16127 (= (arr!5615 (_values!3807 (v!32888 (underlying!7255 (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))))) (store mapRest!16127 mapKey!16127 mapValue!16127))))

(declare-fun b!2695443 () Bool)

(declare-fun res!1132395 () Bool)

(declare-fun e!1699587 () Bool)

(assert (=> b!2695443 (=> (not res!1132395) (not e!1699587))))

(declare-datatypes ((LexerInterface!4343 0))(
  ( (LexerInterfaceExt!4340 (__x!19999 Int)) (Lexer!4341) )
))
(declare-fun thiss!12257 () LexerInterface!4343)

(declare-datatypes ((List!31205 0))(
  ( (Nil!31105) (Cons!31105 (h!36525 Rule!9294) (t!225212 List!31205)) )
))
(declare-fun rules!1381 () List!31205)

(declare-fun rulesInvariant!3832 (LexerInterface!4343 List!31205) Bool)

(assert (=> b!2695443 (= res!1132395 (rulesInvariant!3832 thiss!12257 rules!1381))))

(declare-fun b!2695444 () Bool)

(declare-fun tp!852647 () Bool)

(declare-fun e!1699562 () Bool)

(declare-fun e!1699590 () Bool)

(declare-fun inv!42153 (String!34745) Bool)

(declare-fun inv!42160 (TokenValueInjection!9378) Bool)

(assert (=> b!2695444 (= e!1699590 (and tp!852647 (inv!42153 (tag!5251 (h!36525 rules!1381))) (inv!42160 (transformation!4747 (h!36525 rules!1381))) e!1699562))))

(declare-fun b!2695445 () Bool)

(declare-fun e!1699574 () Bool)

(declare-fun e!1699568 () Bool)

(assert (=> b!2695445 (= e!1699574 e!1699568)))

(declare-fun b!2695446 () Bool)

(declare-fun e!1699584 () Bool)

(declare-datatypes ((tuple2!30688 0))(
  ( (tuple2!30689 (_1!17953 Context!4346) (_2!17953 C!15956)) )
))
(declare-datatypes ((tuple2!30690 0))(
  ( (tuple2!30691 (_1!17954 tuple2!30688) (_2!17954 (InoxSet Context!4346))) )
))
(declare-datatypes ((List!31206 0))(
  ( (Nil!31106) (Cons!31106 (h!36526 tuple2!30690) (t!225213 List!31206)) )
))
(declare-datatypes ((array!12573 0))(
  ( (array!12574 (arr!5616 (Array (_ BitVec 32) List!31206)) (size!24025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7054 0))(
  ( (LongMapFixedSize!7055 (defaultEntry!3912 Int) (mask!9213 (_ BitVec 32)) (extraKeys!3776 (_ BitVec 32)) (zeroValue!3786 List!31206) (minValue!3786 List!31206) (_size!7097 (_ BitVec 32)) (_keys!3827 array!12569) (_values!3808 array!12573) (_vacant!3588 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13917 0))(
  ( (Cell!13918 (v!32890 LongMapFixedSize!7054)) )
))
(declare-datatypes ((MutLongMap!3527 0))(
  ( (LongMap!3527 (underlying!7257 Cell!13917)) (MutLongMapExt!3526 (__x!20000 Int)) )
))
(declare-fun lt!952198 () MutLongMap!3527)

(get-info :version)

(assert (=> b!2695446 (= e!1699584 (and e!1699574 ((_ is LongMap!3527) lt!952198)))))

(declare-datatypes ((Hashable!3443 0))(
  ( (HashableExt!3442 (__x!20001 Int)) )
))
(declare-datatypes ((Cell!13919 0))(
  ( (Cell!13920 (v!32891 MutLongMap!3527)) )
))
(declare-datatypes ((MutableMap!3433 0))(
  ( (MutableMapExt!3432 (__x!20002 Int)) (HashMap!3433 (underlying!7258 Cell!13919) (hashF!5475 Hashable!3443) (_size!7098 (_ BitVec 32)) (defaultValue!3604 Int)) )
))
(declare-datatypes ((CacheUp!2142 0))(
  ( (CacheUp!2143 (cache!3576 MutableMap!3433)) )
))
(declare-fun cacheUp!486 () CacheUp!2142)

(assert (=> b!2695446 (= lt!952198 (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))))

(declare-fun b!2695447 () Bool)

(declare-fun e!1699583 () Bool)

(declare-fun e!1699592 () Bool)

(declare-fun lt!952203 () MutLongMap!3526)

(assert (=> b!2695447 (= e!1699583 (and e!1699592 ((_ is LongMap!3526) lt!952203)))))

(assert (=> b!2695447 (= lt!952203 (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))))

(declare-fun b!2695448 () Bool)

(declare-fun e!1699563 () Bool)

(declare-fun e!1699566 () Bool)

(assert (=> b!2695448 (= e!1699563 e!1699566)))

(declare-fun tp!852633 () Bool)

(declare-fun e!1699571 () Bool)

(declare-fun tp!852634 () Bool)

(declare-fun e!1699588 () Bool)

(declare-fun array_inv!4011 (array!12569) Bool)

(declare-fun array_inv!4012 (array!12571) Bool)

(assert (=> b!2695449 (= e!1699571 (and tp!852646 tp!852634 tp!852633 (array_inv!4011 (_keys!3826 (v!32888 (underlying!7255 (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))))) (array_inv!4012 (_values!3807 (v!32888 (underlying!7255 (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))))) e!1699588))))

(declare-fun b!2695450 () Bool)

(declare-fun e!1699593 () Bool)

(declare-fun totalInput!354 () BalanceConc!19060)

(declare-fun tp!852644 () Bool)

(declare-fun inv!42161 (Conc!9723) Bool)

(assert (=> b!2695450 (= e!1699593 (and (inv!42161 (c!434568 totalInput!354)) tp!852644))))

(declare-fun b!2695451 () Bool)

(declare-fun input!780 () BalanceConc!19060)

(declare-fun e!1699579 () Bool)

(declare-fun lex!1960 (LexerInterface!4343 List!31205 BalanceConc!19060) tuple2!30684)

(declare-fun lexTailRecV2!872 (LexerInterface!4343 List!31205 BalanceConc!19060 BalanceConc!19060 BalanceConc!19060 BalanceConc!19062) tuple2!30684)

(assert (=> b!2695451 (= e!1699579 (= (lex!1960 thiss!12257 rules!1381 input!780) (lexTailRecV2!872 thiss!12257 rules!1381 input!780 (BalanceConc!19061 Empty!9723) input!780 (BalanceConc!19063 Empty!9724))))))

(declare-fun b!2695452 () Bool)

(declare-fun e!1699581 () Bool)

(assert (=> b!2695452 (= e!1699568 e!1699581)))

(assert (=> b!2695453 (= e!1699562 (and tp!852643 tp!852635))))

(declare-fun b!2695454 () Bool)

(declare-fun e!1699585 () tuple2!30684)

(declare-fun acc!348 () BalanceConc!19062)

(assert (=> b!2695454 (= e!1699585 (tuple2!30685 acc!348 input!780))))

(declare-fun b!2695455 () Bool)

(declare-fun e!1699565 () Bool)

(assert (=> b!2695455 (= e!1699565 true)))

(declare-fun lt!952206 () List!31202)

(declare-fun lt!952217 () tuple2!30684)

(declare-fun list!11737 (BalanceConc!19062) List!31202)

(assert (=> b!2695455 (= lt!952206 (list!11737 (_1!17950 lt!952217)))))

(declare-fun lt!952216 () List!31202)

(declare-datatypes ((tuple2!30692 0))(
  ( (tuple2!30693 (_1!17955 Token!8960) (_2!17955 BalanceConc!19060)) )
))
(declare-datatypes ((Option!6142 0))(
  ( (None!6141) (Some!6141 (v!32892 tuple2!30692)) )
))
(declare-datatypes ((tuple3!4278 0))(
  ( (tuple3!4279 (_1!17956 Option!6142) (_2!17956 CacheUp!2142) (_3!2609 CacheDown!2254)) )
))
(declare-fun lt!952199 () tuple3!4278)

(declare-fun treated!26 () BalanceConc!19060)

(declare-datatypes ((tuple3!4280 0))(
  ( (tuple3!4281 (_1!17957 tuple2!30684) (_2!17957 CacheUp!2142) (_3!2610 CacheDown!2254)) )
))
(declare-fun lexTailRecMem!11 (LexerInterface!4343 List!31205 BalanceConc!19060 BalanceConc!19060 BalanceConc!19060 BalanceConc!19062 CacheUp!2142 CacheDown!2254) tuple3!4280)

(declare-fun ++!7630 (BalanceConc!19060 BalanceConc!19060) BalanceConc!19060)

(declare-fun charsOf!2992 (Token!8960) BalanceConc!19060)

(declare-fun append!776 (BalanceConc!19062 Token!8960) BalanceConc!19062)

(assert (=> b!2695455 (= lt!952216 (list!11737 (_1!17950 (_1!17957 (lexTailRecMem!11 thiss!12257 rules!1381 totalInput!354 (++!7630 treated!26 (charsOf!2992 (_1!17955 (v!32892 (_1!17956 lt!952199))))) (_2!17955 (v!32892 (_1!17956 lt!952199))) (append!776 acc!348 (_1!17955 (v!32892 (_1!17956 lt!952199)))) (_2!17956 lt!952199) (_3!2609 lt!952199))))))))

(declare-fun b!2695456 () Bool)

(assert (=> b!2695456 (= e!1699580 (not e!1699565))))

(declare-fun res!1132402 () Bool)

(assert (=> b!2695456 (=> res!1132402 e!1699565)))

(assert (=> b!2695456 (= res!1132402 (not ((_ is Some!6141) (_1!17956 lt!952199))))))

(declare-fun maxPrefixZipperSequenceMem!18 (LexerInterface!4343 List!31205 BalanceConc!19060 CacheUp!2142 CacheDown!2254) tuple3!4278)

(assert (=> b!2695456 (= lt!952199 (maxPrefixZipperSequenceMem!18 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(assert (=> b!2695456 e!1699579))

(declare-fun res!1132398 () Bool)

(assert (=> b!2695456 (=> (not res!1132398) (not e!1699579))))

(assert (=> b!2695456 (= res!1132398 (= lt!952217 e!1699585))))

(declare-fun c!434566 () Bool)

(declare-fun lt!952214 () Option!6142)

(assert (=> b!2695456 (= c!434566 ((_ is Some!6141) lt!952214))))

(declare-fun lexTailRec!30 (LexerInterface!4343 List!31205 BalanceConc!19060 BalanceConc!19060 BalanceConc!19060 BalanceConc!19062) tuple2!30684)

(assert (=> b!2695456 (= lt!952217 (lexTailRec!30 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348))))

(declare-fun maxPrefixZipperSequence!1006 (LexerInterface!4343 List!31205 BalanceConc!19060) Option!6142)

(assert (=> b!2695456 (= lt!952214 (maxPrefixZipperSequence!1006 thiss!12257 rules!1381 input!780))))

(declare-fun b!2695457 () Bool)

(declare-fun e!1699564 () Bool)

(declare-fun tp!852632 () Bool)

(assert (=> b!2695457 (= e!1699564 (and (inv!42161 (c!434568 treated!26)) tp!852632))))

(declare-fun b!2695458 () Bool)

(declare-fun e!1699591 () Bool)

(declare-fun tp!852630 () Bool)

(declare-fun mapRes!16127 () Bool)

(assert (=> b!2695458 (= e!1699591 (and tp!852630 mapRes!16127))))

(declare-fun condMapEmpty!16127 () Bool)

(declare-fun mapDefault!16127 () List!31206)

(assert (=> b!2695458 (= condMapEmpty!16127 (= (arr!5616 (_values!3808 (v!32890 (underlying!7257 (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31206)) mapDefault!16127)))))

(declare-fun mapNonEmpty!16128 () Bool)

(declare-fun tp!852636 () Bool)

(declare-fun tp!852639 () Bool)

(assert (=> mapNonEmpty!16128 (= mapRes!16127 (and tp!852636 tp!852639))))

(declare-fun mapRest!16128 () (Array (_ BitVec 32) List!31206))

(declare-fun mapKey!16128 () (_ BitVec 32))

(declare-fun mapValue!16128 () List!31206)

(assert (=> mapNonEmpty!16128 (= (arr!5616 (_values!3808 (v!32890 (underlying!7257 (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))))) (store mapRest!16128 mapKey!16128 mapValue!16128))))

(declare-fun b!2695459 () Bool)

(declare-fun res!1132405 () Bool)

(assert (=> b!2695459 (=> (not res!1132405) (not e!1699587))))

(declare-fun isEmpty!17736 (List!31205) Bool)

(assert (=> b!2695459 (= res!1132405 (not (isEmpty!17736 rules!1381)))))

(declare-fun b!2695460 () Bool)

(declare-fun tp!852637 () Bool)

(assert (=> b!2695460 (= e!1699588 (and tp!852637 mapRes!16128))))

(declare-fun condMapEmpty!16128 () Bool)

(declare-fun mapDefault!16128 () List!31204)

(assert (=> b!2695460 (= condMapEmpty!16128 (= (arr!5615 (_values!3807 (v!32888 (underlying!7255 (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31204)) mapDefault!16128)))))

(declare-fun e!1699576 () Bool)

(assert (=> b!2695461 (= e!1699576 (and e!1699583 tp!852640))))

(declare-fun b!2695462 () Bool)

(declare-fun e!1699577 () Bool)

(assert (=> b!2695462 (= e!1699587 e!1699577)))

(declare-fun res!1132400 () Bool)

(assert (=> b!2695462 (=> (not res!1132400) (not e!1699577))))

(declare-fun lt!952200 () List!31201)

(declare-fun ++!7631 (List!31201 List!31201) List!31201)

(assert (=> b!2695462 (= res!1132400 (= (list!11736 totalInput!354) (++!7631 lt!952200 (list!11736 input!780))))))

(assert (=> b!2695462 (= lt!952200 (list!11736 treated!26))))

(declare-fun b!2695463 () Bool)

(declare-fun e!1699567 () Bool)

(declare-fun tp!852626 () Bool)

(declare-fun inv!42162 (Conc!9724) Bool)

(assert (=> b!2695463 (= e!1699567 (and (inv!42162 (c!434569 acc!348)) tp!852626))))

(declare-fun lt!952218 () Option!6142)

(declare-fun b!2695464 () Bool)

(declare-fun lt!952210 () tuple2!30684)

(declare-fun lexRec!606 (LexerInterface!4343 List!31205 BalanceConc!19060) tuple2!30684)

(assert (=> b!2695464 (= lt!952210 (lexRec!606 thiss!12257 rules!1381 (_2!17955 (v!32892 lt!952218))))))

(declare-fun e!1699582 () tuple2!30684)

(declare-fun prepend!1081 (BalanceConc!19062 Token!8960) BalanceConc!19062)

(assert (=> b!2695464 (= e!1699582 (tuple2!30685 (prepend!1081 (_1!17950 lt!952210) (_1!17955 (v!32892 lt!952218))) (_2!17950 lt!952210)))))

(declare-fun b!2695465 () Bool)

(declare-fun e!1699589 () Bool)

(assert (=> b!2695465 (= e!1699592 e!1699589)))

(declare-fun lt!952219 () BalanceConc!19060)

(declare-fun b!2695466 () Bool)

(declare-fun lt!952213 () BalanceConc!19062)

(assert (=> b!2695466 (= e!1699585 (lexTailRec!30 thiss!12257 rules!1381 totalInput!354 lt!952219 (_2!17955 (v!32892 lt!952214)) lt!952213))))

(declare-fun lt!952204 () tuple2!30684)

(assert (=> b!2695466 (= lt!952204 (lexRec!606 thiss!12257 rules!1381 (_2!17955 (v!32892 lt!952214))))))

(declare-fun lt!952193 () BalanceConc!19060)

(assert (=> b!2695466 (= lt!952193 (charsOf!2992 (_1!17955 (v!32892 lt!952214))))))

(declare-fun lt!952194 () List!31201)

(assert (=> b!2695466 (= lt!952194 (list!11736 lt!952193))))

(declare-fun lt!952215 () List!31201)

(assert (=> b!2695466 (= lt!952215 (list!11736 (_2!17955 (v!32892 lt!952214))))))

(declare-datatypes ((Unit!45211 0))(
  ( (Unit!45212) )
))
(declare-fun lt!952209 () Unit!45211)

(declare-fun lemmaConcatAssociativity!1556 (List!31201 List!31201 List!31201) Unit!45211)

(assert (=> b!2695466 (= lt!952209 (lemmaConcatAssociativity!1556 lt!952200 lt!952194 lt!952215))))

(declare-fun lt!952197 () List!31201)

(assert (=> b!2695466 (= lt!952197 (++!7631 lt!952200 lt!952194))))

(declare-fun res!1132396 () Bool)

(assert (=> b!2695466 (= res!1132396 (= (++!7631 lt!952197 lt!952215) (++!7631 lt!952200 (++!7631 lt!952194 lt!952215))))))

(declare-fun e!1699572 () Bool)

(assert (=> b!2695466 (=> (not res!1132396) (not e!1699572))))

(assert (=> b!2695466 e!1699572))

(declare-fun lt!952201 () List!31202)

(assert (=> b!2695466 (= lt!952201 (Cons!31102 (_1!17955 (v!32892 lt!952214)) Nil!31102))))

(declare-fun lt!952211 () List!31202)

(assert (=> b!2695466 (= lt!952211 (list!11737 (_1!17950 lt!952204)))))

(declare-fun lt!952208 () Unit!45211)

(declare-fun lt!952207 () List!31202)

(declare-fun lemmaConcatAssociativity!1557 (List!31202 List!31202 List!31202) Unit!45211)

(assert (=> b!2695466 (= lt!952208 (lemmaConcatAssociativity!1557 lt!952207 lt!952201 lt!952211))))

(declare-fun ++!7632 (List!31202 List!31202) List!31202)

(assert (=> b!2695466 (= (++!7632 (++!7632 lt!952207 lt!952201) lt!952211) (++!7632 lt!952207 (++!7632 lt!952201 lt!952211)))))

(assert (=> b!2695466 (= lt!952213 (append!776 acc!348 (_1!17955 (v!32892 lt!952214))))))

(declare-fun lt!952202 () List!31202)

(assert (=> b!2695466 (= lt!952202 (list!11737 lt!952213))))

(declare-fun lt!952195 () Unit!45211)

(declare-fun lemmaLexThenLexPrefix!408 (LexerInterface!4343 List!31205 List!31201 List!31201 List!31202 List!31202 List!31201) Unit!45211)

(assert (=> b!2695466 (= lt!952195 (lemmaLexThenLexPrefix!408 thiss!12257 rules!1381 lt!952197 lt!952215 lt!952202 lt!952211 (list!11736 (_2!17950 lt!952204))))))

(declare-datatypes ((tuple2!30694 0))(
  ( (tuple2!30695 (_1!17958 List!31202) (_2!17958 List!31201)) )
))
(declare-fun lexList!1195 (LexerInterface!4343 List!31205 List!31201) tuple2!30694)

(assert (=> b!2695466 (= (lexList!1195 thiss!12257 rules!1381 lt!952197) (tuple2!30695 lt!952202 Nil!31101))))

(assert (=> b!2695466 (= lt!952219 (++!7630 treated!26 lt!952193))))

(assert (=> b!2695466 (= lt!952218 (maxPrefixZipperSequence!1006 thiss!12257 rules!1381 lt!952219))))

(declare-fun c!434565 () Bool)

(assert (=> b!2695466 (= c!434565 ((_ is Some!6141) lt!952218))))

(assert (=> b!2695466 (= (lexRec!606 thiss!12257 rules!1381 lt!952219) e!1699582)))

(declare-fun b!2695467 () Bool)

(declare-fun e!1699569 () Bool)

(declare-fun tp!852628 () Bool)

(assert (=> b!2695467 (= e!1699569 (and (inv!42161 (c!434568 input!780)) tp!852628))))

(declare-fun b!2695468 () Bool)

(assert (=> b!2695468 (= e!1699577 e!1699594)))

(declare-fun res!1132407 () Bool)

(assert (=> b!2695468 (=> (not res!1132407) (not e!1699594))))

(declare-fun lt!952220 () List!31202)

(assert (=> b!2695468 (= res!1132407 (= lt!952220 lt!952207))))

(assert (=> b!2695468 (= lt!952207 (list!11737 acc!348))))

(assert (=> b!2695468 (= lt!952220 (list!11737 (_1!17950 lt!952212)))))

(assert (=> b!2695468 (= lt!952212 (lexRec!606 thiss!12257 rules!1381 treated!26))))

(declare-fun tp!852641 () Bool)

(declare-fun tp!852631 () Bool)

(declare-fun array_inv!4013 (array!12573) Bool)

(assert (=> b!2695469 (= e!1699581 (and tp!852642 tp!852641 tp!852631 (array_inv!4011 (_keys!3827 (v!32890 (underlying!7257 (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))))) (array_inv!4013 (_values!3808 (v!32890 (underlying!7257 (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))))) e!1699591))))

(declare-fun b!2695470 () Bool)

(declare-fun res!1132401 () Bool)

(assert (=> b!2695470 (=> (not res!1132401) (not e!1699587))))

(declare-fun valid!2735 (CacheDown!2254) Bool)

(assert (=> b!2695470 (= res!1132401 (valid!2735 cacheDown!499))))

(declare-fun b!2695471 () Bool)

(declare-fun res!1132403 () Bool)

(assert (=> b!2695471 (=> (not res!1132403) (not e!1699587))))

(declare-fun valid!2736 (CacheUp!2142) Bool)

(assert (=> b!2695471 (= res!1132403 (valid!2736 cacheUp!486))))

(declare-fun b!2695472 () Bool)

(assert (=> b!2695472 (= e!1699582 (tuple2!30685 (BalanceConc!19063 Empty!9724) lt!952219))))

(declare-fun mapIsEmpty!16128 () Bool)

(assert (=> mapIsEmpty!16128 mapRes!16127))

(declare-fun res!1132404 () Bool)

(assert (=> start!262050 (=> (not res!1132404) (not e!1699587))))

(assert (=> start!262050 (= res!1132404 ((_ is Lexer!4341) thiss!12257))))

(assert (=> start!262050 e!1699587))

(declare-fun inv!42163 (BalanceConc!19060) Bool)

(assert (=> start!262050 (and (inv!42163 totalInput!354) e!1699593)))

(declare-fun inv!42164 (CacheUp!2142) Bool)

(assert (=> start!262050 (and (inv!42164 cacheUp!486) e!1699563)))

(declare-fun inv!42165 (BalanceConc!19062) Bool)

(assert (=> start!262050 (and (inv!42165 acc!348) e!1699567)))

(assert (=> start!262050 (and (inv!42163 input!780) e!1699569)))

(assert (=> start!262050 (and (inv!42163 treated!26) e!1699564)))

(declare-fun e!1699586 () Bool)

(assert (=> start!262050 e!1699586))

(assert (=> start!262050 true))

(declare-fun e!1699570 () Bool)

(declare-fun inv!42166 (CacheDown!2254) Bool)

(assert (=> start!262050 (and (inv!42166 cacheDown!499) e!1699570)))

(declare-fun b!2695473 () Bool)

(assert (=> b!2695473 (= e!1699589 e!1699571)))

(declare-fun b!2695474 () Bool)

(assert (=> b!2695474 (= e!1699570 e!1699576)))

(assert (=> b!2695475 (= e!1699566 (and e!1699584 tp!852645))))

(declare-fun b!2695476 () Bool)

(assert (=> b!2695476 (= e!1699594 e!1699580)))

(declare-fun res!1132397 () Bool)

(assert (=> b!2695476 (=> (not res!1132397) (not e!1699580))))

(declare-fun ++!7633 (BalanceConc!19062 BalanceConc!19062) BalanceConc!19062)

(assert (=> b!2695476 (= res!1132397 (= (list!11737 (_1!17950 lt!952196)) (list!11737 (++!7633 acc!348 (_1!17950 lt!952205)))))))

(assert (=> b!2695476 (= lt!952205 (lexRec!606 thiss!12257 rules!1381 input!780))))

(assert (=> b!2695476 (= lt!952196 (lexRec!606 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2695477 () Bool)

(assert (=> b!2695477 (= e!1699572 (= lt!952205 (tuple2!30685 (prepend!1081 (_1!17950 lt!952204) (_1!17955 (v!32892 lt!952214))) (_2!17950 lt!952204))))))

(declare-fun b!2695478 () Bool)

(declare-fun tp!852627 () Bool)

(assert (=> b!2695478 (= e!1699586 (and e!1699590 tp!852627))))

(assert (= (and start!262050 res!1132404) b!2695459))

(assert (= (and b!2695459 res!1132405) b!2695443))

(assert (= (and b!2695443 res!1132395) b!2695471))

(assert (= (and b!2695471 res!1132403) b!2695470))

(assert (= (and b!2695470 res!1132401) b!2695462))

(assert (= (and b!2695462 res!1132400) b!2695468))

(assert (= (and b!2695468 res!1132407) b!2695442))

(assert (= (and b!2695442 res!1132406) b!2695476))

(assert (= (and b!2695476 res!1132397) b!2695441))

(assert (= (and b!2695441 res!1132399) b!2695456))

(assert (= (and b!2695456 c!434566) b!2695466))

(assert (= (and b!2695456 (not c!434566)) b!2695454))

(assert (= (and b!2695466 res!1132396) b!2695477))

(assert (= (and b!2695466 c!434565) b!2695464))

(assert (= (and b!2695466 (not c!434565)) b!2695472))

(assert (= (and b!2695456 res!1132398) b!2695451))

(assert (= (and b!2695456 (not res!1132402)) b!2695455))

(assert (= start!262050 b!2695450))

(assert (= (and b!2695458 condMapEmpty!16127) mapIsEmpty!16128))

(assert (= (and b!2695458 (not condMapEmpty!16127)) mapNonEmpty!16128))

(assert (= b!2695469 b!2695458))

(assert (= b!2695452 b!2695469))

(assert (= b!2695445 b!2695452))

(assert (= (and b!2695446 ((_ is LongMap!3527) (v!32891 (underlying!7258 (cache!3576 cacheUp!486))))) b!2695445))

(assert (= b!2695475 b!2695446))

(assert (= (and b!2695448 ((_ is HashMap!3433) (cache!3576 cacheUp!486))) b!2695475))

(assert (= start!262050 b!2695448))

(assert (= start!262050 b!2695463))

(assert (= start!262050 b!2695467))

(assert (= start!262050 b!2695457))

(assert (= b!2695444 b!2695453))

(assert (= b!2695478 b!2695444))

(assert (= (and start!262050 ((_ is Cons!31105) rules!1381)) b!2695478))

(assert (= (and b!2695460 condMapEmpty!16128) mapIsEmpty!16127))

(assert (= (and b!2695460 (not condMapEmpty!16128)) mapNonEmpty!16127))

(assert (= b!2695449 b!2695460))

(assert (= b!2695473 b!2695449))

(assert (= b!2695465 b!2695473))

(assert (= (and b!2695447 ((_ is LongMap!3526) (v!32889 (underlying!7256 (cache!3575 cacheDown!499))))) b!2695465))

(assert (= b!2695461 b!2695447))

(assert (= (and b!2695474 ((_ is HashMap!3432) (cache!3575 cacheDown!499))) b!2695461))

(assert (= start!262050 b!2695474))

(declare-fun m!3076353 () Bool)

(assert (=> b!2695468 m!3076353))

(declare-fun m!3076355 () Bool)

(assert (=> b!2695468 m!3076355))

(declare-fun m!3076357 () Bool)

(assert (=> b!2695468 m!3076357))

(declare-fun m!3076359 () Bool)

(assert (=> b!2695464 m!3076359))

(declare-fun m!3076361 () Bool)

(assert (=> b!2695464 m!3076361))

(declare-fun m!3076363 () Bool)

(assert (=> b!2695463 m!3076363))

(declare-fun m!3076365 () Bool)

(assert (=> b!2695459 m!3076365))

(declare-fun m!3076367 () Bool)

(assert (=> b!2695476 m!3076367))

(declare-fun m!3076369 () Bool)

(assert (=> b!2695476 m!3076369))

(declare-fun m!3076371 () Bool)

(assert (=> b!2695476 m!3076371))

(declare-fun m!3076373 () Bool)

(assert (=> b!2695476 m!3076373))

(assert (=> b!2695476 m!3076373))

(declare-fun m!3076375 () Bool)

(assert (=> b!2695476 m!3076375))

(declare-fun m!3076377 () Bool)

(assert (=> b!2695455 m!3076377))

(declare-fun m!3076379 () Bool)

(assert (=> b!2695455 m!3076379))

(declare-fun m!3076381 () Bool)

(assert (=> b!2695455 m!3076381))

(declare-fun m!3076383 () Bool)

(assert (=> b!2695455 m!3076383))

(declare-fun m!3076385 () Bool)

(assert (=> b!2695455 m!3076385))

(assert (=> b!2695455 m!3076383))

(declare-fun m!3076387 () Bool)

(assert (=> b!2695455 m!3076387))

(assert (=> b!2695455 m!3076379))

(assert (=> b!2695455 m!3076385))

(declare-fun m!3076389 () Bool)

(assert (=> b!2695456 m!3076389))

(declare-fun m!3076391 () Bool)

(assert (=> b!2695456 m!3076391))

(declare-fun m!3076393 () Bool)

(assert (=> b!2695456 m!3076393))

(declare-fun m!3076395 () Bool)

(assert (=> b!2695471 m!3076395))

(declare-fun m!3076397 () Bool)

(assert (=> b!2695466 m!3076397))

(declare-fun m!3076399 () Bool)

(assert (=> b!2695466 m!3076399))

(declare-fun m!3076401 () Bool)

(assert (=> b!2695466 m!3076401))

(declare-fun m!3076403 () Bool)

(assert (=> b!2695466 m!3076403))

(declare-fun m!3076405 () Bool)

(assert (=> b!2695466 m!3076405))

(declare-fun m!3076407 () Bool)

(assert (=> b!2695466 m!3076407))

(declare-fun m!3076409 () Bool)

(assert (=> b!2695466 m!3076409))

(declare-fun m!3076411 () Bool)

(assert (=> b!2695466 m!3076411))

(declare-fun m!3076413 () Bool)

(assert (=> b!2695466 m!3076413))

(declare-fun m!3076415 () Bool)

(assert (=> b!2695466 m!3076415))

(declare-fun m!3076417 () Bool)

(assert (=> b!2695466 m!3076417))

(declare-fun m!3076419 () Bool)

(assert (=> b!2695466 m!3076419))

(declare-fun m!3076421 () Bool)

(assert (=> b!2695466 m!3076421))

(assert (=> b!2695466 m!3076421))

(declare-fun m!3076423 () Bool)

(assert (=> b!2695466 m!3076423))

(assert (=> b!2695466 m!3076397))

(declare-fun m!3076425 () Bool)

(assert (=> b!2695466 m!3076425))

(declare-fun m!3076427 () Bool)

(assert (=> b!2695466 m!3076427))

(declare-fun m!3076429 () Bool)

(assert (=> b!2695466 m!3076429))

(assert (=> b!2695466 m!3076415))

(declare-fun m!3076431 () Bool)

(assert (=> b!2695466 m!3076431))

(declare-fun m!3076433 () Bool)

(assert (=> b!2695466 m!3076433))

(assert (=> b!2695466 m!3076409))

(declare-fun m!3076435 () Bool)

(assert (=> b!2695466 m!3076435))

(declare-fun m!3076437 () Bool)

(assert (=> b!2695466 m!3076437))

(declare-fun m!3076439 () Bool)

(assert (=> b!2695466 m!3076439))

(declare-fun m!3076441 () Bool)

(assert (=> b!2695466 m!3076441))

(declare-fun m!3076443 () Bool)

(assert (=> b!2695466 m!3076443))

(declare-fun m!3076445 () Bool)

(assert (=> b!2695477 m!3076445))

(declare-fun m!3076447 () Bool)

(assert (=> b!2695442 m!3076447))

(assert (=> b!2695442 m!3076447))

(declare-fun m!3076449 () Bool)

(assert (=> b!2695442 m!3076449))

(declare-fun m!3076451 () Bool)

(assert (=> b!2695443 m!3076451))

(declare-fun m!3076453 () Bool)

(assert (=> b!2695467 m!3076453))

(declare-fun m!3076455 () Bool)

(assert (=> b!2695449 m!3076455))

(declare-fun m!3076457 () Bool)

(assert (=> b!2695449 m!3076457))

(declare-fun m!3076459 () Bool)

(assert (=> start!262050 m!3076459))

(declare-fun m!3076461 () Bool)

(assert (=> start!262050 m!3076461))

(declare-fun m!3076463 () Bool)

(assert (=> start!262050 m!3076463))

(declare-fun m!3076465 () Bool)

(assert (=> start!262050 m!3076465))

(declare-fun m!3076467 () Bool)

(assert (=> start!262050 m!3076467))

(declare-fun m!3076469 () Bool)

(assert (=> start!262050 m!3076469))

(declare-fun m!3076471 () Bool)

(assert (=> b!2695451 m!3076471))

(declare-fun m!3076473 () Bool)

(assert (=> b!2695451 m!3076473))

(declare-fun m!3076475 () Bool)

(assert (=> mapNonEmpty!16127 m!3076475))

(declare-fun m!3076477 () Bool)

(assert (=> b!2695450 m!3076477))

(declare-fun m!3076479 () Bool)

(assert (=> b!2695469 m!3076479))

(declare-fun m!3076481 () Bool)

(assert (=> b!2695469 m!3076481))

(declare-fun m!3076483 () Bool)

(assert (=> mapNonEmpty!16128 m!3076483))

(declare-fun m!3076485 () Bool)

(assert (=> b!2695470 m!3076485))

(declare-fun m!3076487 () Bool)

(assert (=> b!2695457 m!3076487))

(declare-fun m!3076489 () Bool)

(assert (=> b!2695462 m!3076489))

(declare-fun m!3076491 () Bool)

(assert (=> b!2695462 m!3076491))

(assert (=> b!2695462 m!3076491))

(declare-fun m!3076493 () Bool)

(assert (=> b!2695462 m!3076493))

(declare-fun m!3076495 () Bool)

(assert (=> b!2695462 m!3076495))

(declare-fun m!3076497 () Bool)

(assert (=> b!2695444 m!3076497))

(declare-fun m!3076499 () Bool)

(assert (=> b!2695444 m!3076499))

(declare-fun m!3076501 () Bool)

(assert (=> b!2695441 m!3076501))

(declare-fun m!3076503 () Bool)

(assert (=> b!2695441 m!3076503))

(check-sat (not b!2695470) b_and!199269 b_and!199263 (not b!2695450) (not b!2695459) (not b!2695468) b_and!199259 (not b!2695478) (not b!2695441) (not b!2695471) (not b!2695458) (not mapNonEmpty!16128) (not b_next!76835) (not b!2695469) (not start!262050) (not b!2695444) (not b!2695443) (not b!2695467) (not b_next!76839) (not b!2695442) (not b!2695476) (not b!2695460) (not b!2695457) (not b_next!76833) (not b_next!76841) b_and!199265 (not b!2695463) (not b!2695466) (not b_next!76843) (not b!2695464) (not b!2695449) (not b!2695455) b_and!199267 (not b!2695451) (not b!2695456) (not b_next!76837) (not b!2695477) (not b!2695462) b_and!199261 (not mapNonEmpty!16127))
(check-sat (not b_next!76835) b_and!199269 (not b_next!76839) b_and!199263 b_and!199265 (not b_next!76843) b_and!199259 b_and!199261 (not b_next!76833) (not b_next!76841) b_and!199267 (not b_next!76837))
