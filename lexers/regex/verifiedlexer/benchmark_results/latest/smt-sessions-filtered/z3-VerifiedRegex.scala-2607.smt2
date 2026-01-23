; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139546 () Bool)

(assert start!139546)

(declare-fun b!1485426 () Bool)

(declare-fun b_free!38567 () Bool)

(declare-fun b_next!39271 () Bool)

(assert (=> b!1485426 (= b_free!38567 (not b_next!39271))))

(declare-fun tp!422365 () Bool)

(declare-fun b_and!103285 () Bool)

(assert (=> b!1485426 (= tp!422365 b_and!103285)))

(declare-fun b_free!38569 () Bool)

(declare-fun b_next!39273 () Bool)

(assert (=> b!1485426 (= b_free!38569 (not b_next!39273))))

(declare-fun tp!422362 () Bool)

(declare-fun b_and!103287 () Bool)

(assert (=> b!1485426 (= tp!422362 b_and!103287)))

(declare-fun b!1485398 () Bool)

(declare-fun b_free!38571 () Bool)

(declare-fun b_next!39275 () Bool)

(assert (=> b!1485398 (= b_free!38571 (not b_next!39275))))

(declare-fun tp!422374 () Bool)

(declare-fun b_and!103289 () Bool)

(assert (=> b!1485398 (= tp!422374 b_and!103289)))

(declare-fun b!1485387 () Bool)

(declare-fun b_free!38573 () Bool)

(declare-fun b_next!39277 () Bool)

(assert (=> b!1485387 (= b_free!38573 (not b_next!39277))))

(declare-fun tp!422368 () Bool)

(declare-fun b_and!103291 () Bool)

(assert (=> b!1485387 (= tp!422368 b_and!103291)))

(declare-fun b!1485418 () Bool)

(declare-fun b_free!38575 () Bool)

(declare-fun b_next!39279 () Bool)

(assert (=> b!1485418 (= b_free!38575 (not b_next!39279))))

(declare-fun tp!422364 () Bool)

(declare-fun b_and!103293 () Bool)

(assert (=> b!1485418 (= tp!422364 b_and!103293)))

(declare-fun b!1485414 () Bool)

(declare-fun b_free!38577 () Bool)

(declare-fun b_next!39281 () Bool)

(assert (=> b!1485414 (= b_free!38577 (not b_next!39281))))

(declare-fun tp!422363 () Bool)

(declare-fun b_and!103295 () Bool)

(assert (=> b!1485414 (= tp!422363 b_and!103295)))

(declare-fun b!1485396 () Bool)

(declare-fun b_free!38579 () Bool)

(declare-fun b_next!39283 () Bool)

(assert (=> b!1485396 (= b_free!38579 (not b_next!39283))))

(declare-fun tp!422386 () Bool)

(declare-fun b_and!103297 () Bool)

(assert (=> b!1485396 (= tp!422386 b_and!103297)))

(declare-fun b!1485405 () Bool)

(declare-fun b_free!38581 () Bool)

(declare-fun b_next!39285 () Bool)

(assert (=> b!1485405 (= b_free!38581 (not b_next!39285))))

(declare-fun tp!422375 () Bool)

(declare-fun b_and!103299 () Bool)

(assert (=> b!1485405 (= tp!422375 b_and!103299)))

(declare-fun b!1485384 () Bool)

(declare-fun e!950196 () Bool)

(declare-fun e!950185 () Bool)

(declare-datatypes ((C!8428 0))(
  ( (C!8429 (val!4786 Int)) )
))
(declare-datatypes ((Regex!4125 0))(
  ( (ElementMatch!4125 (c!243275 C!8428)) (Concat!7025 (regOne!8762 Regex!4125) (regTwo!8762 Regex!4125)) (EmptyExpr!4125) (Star!4125 (reg!4454 Regex!4125)) (EmptyLang!4125) (Union!4125 (regOne!8763 Regex!4125) (regTwo!8763 Regex!4125)) )
))
(declare-datatypes ((List!15853 0))(
  ( (Nil!15785) (Cons!15785 (h!21186 Regex!4125) (t!137775 List!15853)) )
))
(declare-datatypes ((Context!1286 0))(
  ( (Context!1287 (exprs!1143 List!15853)) )
))
(declare-datatypes ((tuple2!14458 0))(
  ( (tuple2!14459 (_1!8138 Context!1286) (_2!8138 C!8428)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14460 0))(
  ( (tuple2!14461 (_1!8139 tuple2!14458) (_2!8139 (InoxSet Context!1286))) )
))
(declare-datatypes ((List!15854 0))(
  ( (Nil!15786) (Cons!15786 (h!21187 tuple2!14460) (t!137776 List!15854)) )
))
(declare-datatypes ((array!4882 0))(
  ( (array!4883 (arr!2180 (Array (_ BitVec 32) (_ BitVec 64))) (size!12776 (_ BitVec 32))) )
))
(declare-datatypes ((array!4884 0))(
  ( (array!4885 (arr!2181 (Array (_ BitVec 32) List!15854)) (size!12777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2760 0))(
  ( (LongMapFixedSize!2761 (defaultEntry!1740 Int) (mask!4531 (_ BitVec 32)) (extraKeys!1627 (_ BitVec 32)) (zeroValue!1637 List!15854) (minValue!1637 List!15854) (_size!2841 (_ BitVec 32)) (_keys!1674 array!4882) (_values!1659 array!4884) (_vacant!1441 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5405 0))(
  ( (Cell!5406 (v!22615 LongMapFixedSize!2760)) )
))
(declare-datatypes ((MutLongMap!1380 0))(
  ( (LongMap!1380 (underlying!2969 Cell!5405)) (MutLongMapExt!1379 (__x!9677 Int)) )
))
(declare-fun lt!515900 () MutLongMap!1380)

(get-info :version)

(assert (=> b!1485384 (= e!950196 (and e!950185 ((_ is LongMap!1380) lt!515900)))))

(declare-datatypes ((Hashable!1324 0))(
  ( (HashableExt!1323 (__x!9678 Int)) )
))
(declare-datatypes ((Cell!5407 0))(
  ( (Cell!5408 (v!22616 MutLongMap!1380)) )
))
(declare-datatypes ((MutableMap!1324 0))(
  ( (MutableMapExt!1323 (__x!9679 Int)) (HashMap!1324 (underlying!2970 Cell!5407) (hashF!3243 Hashable!1324) (_size!2842 (_ BitVec 32)) (defaultValue!1484 Int)) )
))
(declare-datatypes ((CacheUp!782 0))(
  ( (CacheUp!783 (cache!1705 MutableMap!1324)) )
))
(declare-fun cacheUp!616 () CacheUp!782)

(assert (=> b!1485384 (= lt!515900 (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))))

(declare-fun mapIsEmpty!6582 () Bool)

(declare-fun mapRes!6584 () Bool)

(assert (=> mapIsEmpty!6582 mapRes!6584))

(declare-fun b!1485385 () Bool)

(declare-fun e!950189 () Bool)

(declare-fun e!950207 () Bool)

(assert (=> b!1485385 (= e!950189 e!950207)))

(declare-fun b!1485386 () Bool)

(declare-fun e!950184 () Bool)

(declare-fun e!950200 () Bool)

(assert (=> b!1485386 (= e!950184 e!950200)))

(declare-fun b!1485388 () Bool)

(declare-fun e!950203 () Bool)

(declare-fun e!950208 () Bool)

(assert (=> b!1485388 (= e!950203 e!950208)))

(declare-fun res!670750 () Bool)

(assert (=> b!1485388 (=> res!670750 e!950208)))

(declare-datatypes ((List!15855 0))(
  ( (Nil!15787) (Cons!15787 (h!21188 (_ BitVec 16)) (t!137777 List!15855)) )
))
(declare-datatypes ((TokenValue!2900 0))(
  ( (FloatLiteralValue!5800 (text!20745 List!15855)) (TokenValueExt!2899 (__x!9680 Int)) (Broken!14500 (value!89719 List!15855)) (Object!2967) (End!2900) (Def!2900) (Underscore!2900) (Match!2900) (Else!2900) (Error!2900) (Case!2900) (If!2900) (Extends!2900) (Abstract!2900) (Class!2900) (Val!2900) (DelimiterValue!5800 (del!2960 List!15855)) (KeywordValue!2906 (value!89720 List!15855)) (CommentValue!5800 (value!89721 List!15855)) (WhitespaceValue!5800 (value!89722 List!15855)) (IndentationValue!2900 (value!89723 List!15855)) (String!18761) (Int32!2900) (Broken!14501 (value!89724 List!15855)) (Boolean!2901) (Unit!25624) (OperatorValue!2903 (op!2960 List!15855)) (IdentifierValue!5800 (value!89725 List!15855)) (IdentifierValue!5801 (value!89726 List!15855)) (WhitespaceValue!5801 (value!89727 List!15855)) (True!5800) (False!5800) (Broken!14502 (value!89728 List!15855)) (Broken!14503 (value!89729 List!15855)) (True!5801) (RightBrace!2900) (RightBracket!2900) (Colon!2900) (Null!2900) (Comma!2900) (LeftBracket!2900) (False!5801) (LeftBrace!2900) (ImaginaryLiteralValue!2900 (text!20746 List!15855)) (StringLiteralValue!8700 (value!89730 List!15855)) (EOFValue!2900 (value!89731 List!15855)) (IdentValue!2900 (value!89732 List!15855)) (DelimiterValue!5801 (value!89733 List!15855)) (DedentValue!2900 (value!89734 List!15855)) (NewLineValue!2900 (value!89735 List!15855)) (IntegerValue!8700 (value!89736 (_ BitVec 32)) (text!20747 List!15855)) (IntegerValue!8701 (value!89737 Int) (text!20748 List!15855)) (Times!2900) (Or!2900) (Equal!2900) (Minus!2900) (Broken!14504 (value!89738 List!15855)) (And!2900) (Div!2900) (LessEqual!2900) (Mod!2900) (Concat!7026) (Not!2900) (Plus!2900) (SpaceValue!2900 (value!89739 List!15855)) (IntegerValue!8702 (value!89740 Int) (text!20749 List!15855)) (StringLiteralValue!8701 (text!20750 List!15855)) (FloatLiteralValue!5801 (text!20751 List!15855)) (BytesLiteralValue!2900 (value!89741 List!15855)) (CommentValue!5801 (value!89742 List!15855)) (StringLiteralValue!8702 (value!89743 List!15855)) (ErrorTokenValue!2900 (msg!2961 List!15855)) )
))
(declare-datatypes ((List!15856 0))(
  ( (Nil!15788) (Cons!15788 (h!21189 C!8428) (t!137778 List!15856)) )
))
(declare-datatypes ((IArray!10749 0))(
  ( (IArray!10750 (innerList!5432 List!15856)) )
))
(declare-datatypes ((Conc!5372 0))(
  ( (Node!5372 (left!13271 Conc!5372) (right!13601 Conc!5372) (csize!10974 Int) (cheight!5583 Int)) (Leaf!7980 (xs!8129 IArray!10749) (csize!10975 Int)) (Empty!5372) )
))
(declare-datatypes ((BalanceConc!10686 0))(
  ( (BalanceConc!10687 (c!243276 Conc!5372)) )
))
(declare-datatypes ((String!18762 0))(
  ( (String!18763 (value!89744 String)) )
))
(declare-datatypes ((TokenValueInjection!5460 0))(
  ( (TokenValueInjection!5461 (toValue!4151 Int) (toChars!4010 Int)) )
))
(declare-datatypes ((Rule!5420 0))(
  ( (Rule!5421 (regex!2810 Regex!4125) (tag!3074 String!18762) (isSeparator!2810 Bool) (transformation!2810 TokenValueInjection!5460)) )
))
(declare-datatypes ((Token!5282 0))(
  ( (Token!5283 (value!89745 TokenValue!2900) (rule!4587 Rule!5420) (size!12778 Int) (originalCharacters!3672 List!15856)) )
))
(declare-datatypes ((List!15857 0))(
  ( (Nil!15789) (Cons!15789 (h!21190 Token!5282) (t!137779 List!15857)) )
))
(declare-fun lt!515903 () List!15857)

(declare-fun isEmpty!9845 (List!15857) Bool)

(assert (=> b!1485388 (= res!670750 (isEmpty!9845 lt!515903))))

(declare-fun lt!515897 () List!15856)

(declare-datatypes ((IArray!10751 0))(
  ( (IArray!10752 (innerList!5433 List!15857)) )
))
(declare-datatypes ((Conc!5373 0))(
  ( (Node!5373 (left!13272 Conc!5373) (right!13602 Conc!5373) (csize!10976 Int) (cheight!5584 Int)) (Leaf!7981 (xs!8130 IArray!10751) (csize!10977 Int)) (Empty!5373) )
))
(declare-datatypes ((BalanceConc!10688 0))(
  ( (BalanceConc!10689 (c!243277 Conc!5373)) )
))
(declare-datatypes ((tuple2!14462 0))(
  ( (tuple2!14463 (_1!8140 BalanceConc!10688) (_2!8140 BalanceConc!10686)) )
))
(declare-fun lt!515896 () tuple2!14462)

(declare-fun list!6265 (BalanceConc!10686) List!15856)

(assert (=> b!1485388 (= lt!515897 (list!6265 (_2!8140 lt!515896)))))

(declare-fun acc!392 () BalanceConc!10688)

(declare-datatypes ((tuple3!1230 0))(
  ( (tuple3!1231 (_1!8141 (InoxSet Context!1286)) (_2!8141 Int) (_3!909 Int)) )
))
(declare-datatypes ((tuple2!14464 0))(
  ( (tuple2!14465 (_1!8142 tuple3!1230) (_2!8142 Int)) )
))
(declare-datatypes ((List!15858 0))(
  ( (Nil!15790) (Cons!15790 (h!21191 tuple2!14464) (t!137780 List!15858)) )
))
(declare-datatypes ((array!4886 0))(
  ( (array!4887 (arr!2182 (Array (_ BitVec 32) List!15858)) (size!12779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2762 0))(
  ( (LongMapFixedSize!2763 (defaultEntry!1741 Int) (mask!4532 (_ BitVec 32)) (extraKeys!1628 (_ BitVec 32)) (zeroValue!1638 List!15858) (minValue!1638 List!15858) (_size!2843 (_ BitVec 32)) (_keys!1675 array!4882) (_values!1660 array!4886) (_vacant!1442 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5409 0))(
  ( (Cell!5410 (v!22617 LongMapFixedSize!2762)) )
))
(declare-datatypes ((MutLongMap!1381 0))(
  ( (LongMap!1381 (underlying!2971 Cell!5409)) (MutLongMapExt!1380 (__x!9681 Int)) )
))
(declare-datatypes ((Cell!5411 0))(
  ( (Cell!5412 (v!22618 MutLongMap!1381)) )
))
(declare-datatypes ((Hashable!1325 0))(
  ( (HashableExt!1324 (__x!9682 Int)) )
))
(declare-datatypes ((MutableMap!1325 0))(
  ( (MutableMapExt!1324 (__x!9683 Int)) (HashMap!1325 (underlying!2972 Cell!5411) (hashF!3244 Hashable!1325) (_size!2844 (_ BitVec 32)) (defaultValue!1485 Int)) )
))
(declare-datatypes ((tuple3!1232 0))(
  ( (tuple3!1233 (_1!8143 Regex!4125) (_2!8143 Context!1286) (_3!910 C!8428)) )
))
(declare-datatypes ((tuple2!14466 0))(
  ( (tuple2!14467 (_1!8144 tuple3!1232) (_2!8144 (InoxSet Context!1286))) )
))
(declare-datatypes ((List!15859 0))(
  ( (Nil!15791) (Cons!15791 (h!21192 tuple2!14466) (t!137781 List!15859)) )
))
(declare-datatypes ((array!4888 0))(
  ( (array!4889 (arr!2183 (Array (_ BitVec 32) List!15859)) (size!12780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2764 0))(
  ( (LongMapFixedSize!2765 (defaultEntry!1742 Int) (mask!4533 (_ BitVec 32)) (extraKeys!1629 (_ BitVec 32)) (zeroValue!1639 List!15859) (minValue!1639 List!15859) (_size!2845 (_ BitVec 32)) (_keys!1676 array!4882) (_values!1661 array!4888) (_vacant!1443 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5413 0))(
  ( (Cell!5414 (v!22619 LongMapFixedSize!2764)) )
))
(declare-datatypes ((MutLongMap!1382 0))(
  ( (LongMap!1382 (underlying!2973 Cell!5413)) (MutLongMapExt!1381 (__x!9684 Int)) )
))
(declare-datatypes ((Cell!5415 0))(
  ( (Cell!5416 (v!22620 MutLongMap!1382)) )
))
(declare-datatypes ((Hashable!1326 0))(
  ( (HashableExt!1325 (__x!9685 Int)) )
))
(declare-datatypes ((MutableMap!1326 0))(
  ( (MutableMapExt!1325 (__x!9686 Int)) (HashMap!1326 (underlying!2974 Cell!5415) (hashF!3245 Hashable!1326) (_size!2846 (_ BitVec 32)) (defaultValue!1486 Int)) )
))
(declare-datatypes ((CacheDown!786 0))(
  ( (CacheDown!787 (cache!1706 MutableMap!1326)) )
))
(declare-datatypes ((CacheFurthestNullable!208 0))(
  ( (CacheFurthestNullable!209 (cache!1707 MutableMap!1325) (totalInput!2239 BalanceConc!10686)) )
))
(declare-datatypes ((tuple2!14468 0))(
  ( (tuple2!14469 (_1!8145 Token!5282) (_2!8145 BalanceConc!10686)) )
))
(declare-datatypes ((Option!2893 0))(
  ( (None!2892) (Some!2892 (v!22621 tuple2!14468)) )
))
(declare-datatypes ((tuple4!588 0))(
  ( (tuple4!589 (_1!8146 Option!2893) (_2!8146 CacheUp!782) (_3!911 CacheDown!786) (_4!294 CacheFurthestNullable!208)) )
))
(declare-fun lt!515889 () tuple4!588)

(declare-fun list!6266 (BalanceConc!10688) List!15857)

(declare-fun append!467 (BalanceConc!10688 Token!5282) BalanceConc!10688)

(assert (=> b!1485388 (= lt!515903 (list!6266 (append!467 acc!392 (_1!8145 (v!22621 (_1!8146 lt!515889))))))))

(declare-fun lt!515895 () List!15857)

(declare-fun lt!515915 () List!15857)

(declare-fun lt!515891 () List!15857)

(declare-fun ++!4251 (List!15857 List!15857) List!15857)

(assert (=> b!1485388 (= (++!4251 (++!4251 lt!515895 lt!515915) lt!515891) (++!4251 lt!515895 (++!4251 lt!515915 lt!515891)))))

(declare-datatypes ((Unit!25625 0))(
  ( (Unit!25626) )
))
(declare-fun lt!515907 () Unit!25625)

(declare-fun lemmaConcatAssociativity!896 (List!15857 List!15857 List!15857) Unit!25625)

(assert (=> b!1485388 (= lt!515907 (lemmaConcatAssociativity!896 lt!515895 lt!515915 lt!515891))))

(assert (=> b!1485388 (= lt!515891 (list!6266 (_1!8140 lt!515896)))))

(assert (=> b!1485388 (= lt!515915 (Cons!15789 (_1!8145 (v!22621 (_1!8146 lt!515889))) Nil!15789))))

(declare-fun lt!515890 () tuple2!14462)

(declare-fun e!950179 () tuple2!14462)

(assert (=> b!1485388 (= lt!515890 e!950179)))

(declare-fun c!243274 () Bool)

(declare-fun lt!515906 () Option!2893)

(assert (=> b!1485388 (= c!243274 ((_ is Some!2892) lt!515906))))

(declare-fun input!1102 () BalanceConc!10686)

(declare-datatypes ((LexerInterface!2466 0))(
  ( (LexerInterfaceExt!2463 (__x!9687 Int)) (Lexer!2464) )
))
(declare-fun thiss!13241 () LexerInterface!2466)

(declare-datatypes ((List!15860 0))(
  ( (Nil!15792) (Cons!15792 (h!21193 Rule!5420) (t!137782 List!15860)) )
))
(declare-fun rules!1640 () List!15860)

(declare-fun maxPrefixZipperSequence!568 (LexerInterface!2466 List!15860 BalanceConc!10686) Option!2893)

(assert (=> b!1485388 (= lt!515906 (maxPrefixZipperSequence!568 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!515911 () List!15856)

(declare-fun lt!515893 () List!15856)

(declare-fun lt!515888 () List!15856)

(declare-fun ++!4252 (List!15856 List!15856) List!15856)

(assert (=> b!1485388 (= lt!515911 (++!4252 lt!515893 lt!515888))))

(declare-fun lt!515904 () List!15856)

(declare-fun lt!515910 () List!15856)

(assert (=> b!1485388 (= lt!515911 (++!4252 lt!515904 lt!515910))))

(declare-fun lt!515892 () List!15856)

(assert (=> b!1485388 (= lt!515888 (++!4252 lt!515892 lt!515910))))

(assert (=> b!1485388 (= lt!515904 (++!4252 lt!515893 lt!515892))))

(declare-fun lt!515899 () Unit!25625)

(declare-fun lemmaConcatAssociativity!897 (List!15856 List!15856 List!15856) Unit!25625)

(assert (=> b!1485388 (= lt!515899 (lemmaConcatAssociativity!897 lt!515893 lt!515892 lt!515910))))

(assert (=> b!1485388 (= lt!515910 (list!6265 (_2!8145 (v!22621 (_1!8146 lt!515889)))))))

(declare-fun charsOf!1609 (Token!5282) BalanceConc!10686)

(assert (=> b!1485388 (= lt!515892 (list!6265 (charsOf!1609 (_1!8145 (v!22621 (_1!8146 lt!515889))))))))

(declare-fun lexRec!303 (LexerInterface!2466 List!15860 BalanceConc!10686) tuple2!14462)

(assert (=> b!1485388 (= lt!515896 (lexRec!303 thiss!13241 rules!1640 (_2!8145 (v!22621 (_1!8146 lt!515889)))))))

(declare-fun b!1485389 () Bool)

(declare-fun res!670740 () Bool)

(declare-fun e!950177 () Bool)

(assert (=> b!1485389 (=> (not res!670740) (not e!950177))))

(declare-fun cacheDown!629 () CacheDown!786)

(declare-fun valid!1085 (CacheDown!786) Bool)

(assert (=> b!1485389 (= res!670740 (valid!1085 cacheDown!629))))

(declare-fun b!1485390 () Bool)

(assert (=> b!1485390 (= e!950208 true)))

(declare-datatypes ((tuple2!14470 0))(
  ( (tuple2!14471 (_1!8147 List!15857) (_2!8147 List!15856)) )
))
(declare-fun lt!515894 () tuple2!14470)

(declare-fun lexList!726 (LexerInterface!2466 List!15860 List!15856) tuple2!14470)

(assert (=> b!1485390 (= lt!515894 (lexList!726 thiss!13241 rules!1640 lt!515910))))

(declare-fun b!1485391 () Bool)

(declare-fun res!670755 () Bool)

(assert (=> b!1485391 (=> (not res!670755) (not e!950177))))

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!208)

(declare-fun totalInput!458 () BalanceConc!10686)

(assert (=> b!1485391 (= res!670755 (= (totalInput!2239 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1485392 () Bool)

(assert (=> b!1485392 (= e!950179 (tuple2!14463 (BalanceConc!10689 Empty!5373) input!1102))))

(declare-fun mapIsEmpty!6583 () Bool)

(declare-fun mapRes!6582 () Bool)

(assert (=> mapIsEmpty!6583 mapRes!6582))

(declare-fun b!1485393 () Bool)

(declare-fun e!950198 () Bool)

(declare-fun e!950176 () Bool)

(declare-fun e!950181 () Bool)

(declare-fun inv!20999 (BalanceConc!10686) Bool)

(assert (=> b!1485393 (= e!950198 (and e!950181 (inv!20999 (totalInput!2239 cacheFurthestNullable!64)) e!950176))))

(declare-fun b!1485394 () Bool)

(declare-fun e!950201 () Bool)

(declare-fun e!950182 () Bool)

(declare-fun lt!515914 () MutLongMap!1381)

(assert (=> b!1485394 (= e!950201 (and e!950182 ((_ is LongMap!1381) lt!515914)))))

(assert (=> b!1485394 (= lt!515914 (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))))

(declare-fun b!1485395 () Bool)

(declare-fun e!950172 () Bool)

(declare-fun e!950197 () Bool)

(assert (=> b!1485395 (= e!950172 e!950197)))

(declare-fun tp!422377 () Bool)

(declare-fun tp!422367 () Bool)

(declare-fun e!950210 () Bool)

(declare-fun array_inv!1583 (array!4882) Bool)

(declare-fun array_inv!1584 (array!4886) Bool)

(assert (=> b!1485396 (= e!950197 (and tp!422386 tp!422367 tp!422377 (array_inv!1583 (_keys!1675 (v!22617 (underlying!2971 (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))))) (array_inv!1584 (_values!1660 (v!22617 (underlying!2971 (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))))) e!950210))))

(declare-fun b!1485397 () Bool)

(declare-fun res!670753 () Bool)

(assert (=> b!1485397 (=> res!670753 e!950208)))

(declare-fun isEmpty!9846 (List!15856) Bool)

(assert (=> b!1485397 (= res!670753 (isEmpty!9846 lt!515904))))

(assert (=> b!1485398 (= e!950181 (and e!950201 tp!422374))))

(declare-fun b!1485399 () Bool)

(declare-fun e!950190 () Bool)

(declare-fun e!950195 () Bool)

(assert (=> b!1485399 (= e!950190 e!950195)))

(declare-fun res!670745 () Bool)

(assert (=> b!1485399 (=> (not res!670745) (not e!950195))))

(declare-fun lt!515898 () List!15856)

(declare-fun lt!515901 () List!15856)

(assert (=> b!1485399 (= res!670745 (= lt!515898 lt!515901))))

(declare-fun lt!515908 () List!15856)

(assert (=> b!1485399 (= lt!515901 (++!4252 lt!515893 lt!515908))))

(assert (=> b!1485399 (= lt!515898 (list!6265 totalInput!458))))

(assert (=> b!1485399 (= lt!515908 (list!6265 input!1102))))

(declare-fun treated!70 () BalanceConc!10686)

(assert (=> b!1485399 (= lt!515893 (list!6265 treated!70))))

(declare-fun b!1485400 () Bool)

(declare-fun res!670756 () Bool)

(assert (=> b!1485400 (=> (not res!670756) (not e!950177))))

(declare-fun valid!1086 (CacheFurthestNullable!208) Bool)

(assert (=> b!1485400 (= res!670756 (valid!1086 cacheFurthestNullable!64))))

(declare-fun b!1485401 () Bool)

(declare-fun e!950193 () Bool)

(declare-fun tp!422373 () Bool)

(assert (=> b!1485401 (= e!950193 (and tp!422373 mapRes!6582))))

(declare-fun condMapEmpty!6584 () Bool)

(declare-fun mapDefault!6582 () List!15859)

(assert (=> b!1485401 (= condMapEmpty!6584 (= (arr!2183 (_values!1661 (v!22619 (underlying!2973 (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15859)) mapDefault!6582)))))

(declare-fun b!1485402 () Bool)

(declare-fun e!950187 () Bool)

(assert (=> b!1485402 (= e!950195 e!950187)))

(declare-fun res!670746 () Bool)

(assert (=> b!1485402 (=> (not res!670746) (not e!950187))))

(declare-fun lt!515913 () List!15857)

(assert (=> b!1485402 (= res!670746 (= lt!515913 lt!515895))))

(assert (=> b!1485402 (= lt!515895 (list!6266 acc!392))))

(declare-fun lt!515905 () tuple2!14462)

(assert (=> b!1485402 (= lt!515913 (list!6266 (_1!8140 lt!515905)))))

(assert (=> b!1485402 (= lt!515905 (lexRec!303 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1485403 () Bool)

(declare-fun e!950186 () Bool)

(declare-fun e!950180 () Bool)

(assert (=> b!1485403 (= e!950186 e!950180)))

(declare-fun res!670743 () Bool)

(assert (=> start!139546 (=> (not res!670743) (not e!950190))))

(assert (=> start!139546 (= res!670743 ((_ is Lexer!2464) thiss!13241))))

(assert (=> start!139546 e!950190))

(declare-fun e!950202 () Bool)

(declare-fun inv!21000 (BalanceConc!10688) Bool)

(assert (=> start!139546 (and (inv!21000 acc!392) e!950202)))

(declare-fun inv!21001 (CacheUp!782) Bool)

(assert (=> start!139546 (and (inv!21001 cacheUp!616) e!950184)))

(declare-fun inv!21002 (CacheDown!786) Bool)

(assert (=> start!139546 (and (inv!21002 cacheDown!629) e!950189)))

(declare-fun e!950175 () Bool)

(assert (=> start!139546 (and (inv!20999 input!1102) e!950175)))

(declare-fun e!950192 () Bool)

(assert (=> start!139546 (and (inv!20999 treated!70) e!950192)))

(assert (=> start!139546 true))

(declare-fun e!950204 () Bool)

(assert (=> start!139546 e!950204))

(declare-fun inv!21003 (CacheFurthestNullable!208) Bool)

(assert (=> start!139546 (and (inv!21003 cacheFurthestNullable!64) e!950198)))

(declare-fun e!950191 () Bool)

(assert (=> start!139546 (and (inv!20999 totalInput!458) e!950191)))

(assert (=> b!1485387 (= e!950200 (and e!950196 tp!422368))))

(declare-fun mapNonEmpty!6582 () Bool)

(declare-fun mapRes!6583 () Bool)

(declare-fun tp!422361 () Bool)

(declare-fun tp!422379 () Bool)

(assert (=> mapNonEmpty!6582 (= mapRes!6583 (and tp!422361 tp!422379))))

(declare-fun mapKey!6584 () (_ BitVec 32))

(declare-fun mapValue!6582 () List!15858)

(declare-fun mapRest!6582 () (Array (_ BitVec 32) List!15858))

(assert (=> mapNonEmpty!6582 (= (arr!2182 (_values!1660 (v!22617 (underlying!2971 (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))))) (store mapRest!6582 mapKey!6584 mapValue!6582))))

(declare-fun b!1485404 () Bool)

(declare-fun tp!422389 () Bool)

(declare-fun inv!21004 (Conc!5372) Bool)

(assert (=> b!1485404 (= e!950191 (and (inv!21004 (c!243276 totalInput!458)) tp!422389))))

(declare-fun mapNonEmpty!6583 () Bool)

(declare-fun tp!422388 () Bool)

(declare-fun tp!422384 () Bool)

(assert (=> mapNonEmpty!6583 (= mapRes!6582 (and tp!422388 tp!422384))))

(declare-fun mapValue!6583 () List!15859)

(declare-fun mapRest!6583 () (Array (_ BitVec 32) List!15859))

(declare-fun mapKey!6583 () (_ BitVec 32))

(assert (=> mapNonEmpty!6583 (= (arr!2183 (_values!1661 (v!22619 (underlying!2973 (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))))) (store mapRest!6583 mapKey!6583 mapValue!6583))))

(declare-fun e!950205 () Bool)

(declare-fun tp!422360 () Bool)

(declare-fun tp!422369 () Bool)

(declare-fun array_inv!1585 (array!4888) Bool)

(assert (=> b!1485405 (= e!950205 (and tp!422375 tp!422360 tp!422369 (array_inv!1583 (_keys!1676 (v!22619 (underlying!2973 (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))))) (array_inv!1585 (_values!1661 (v!22619 (underlying!2973 (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))))) e!950193))))

(declare-fun b!1485406 () Bool)

(declare-fun res!670751 () Bool)

(assert (=> b!1485406 (=> (not res!670751) (not e!950177))))

(declare-fun valid!1087 (CacheUp!782) Bool)

(assert (=> b!1485406 (= res!670751 (valid!1087 cacheUp!616))))

(declare-fun b!1485407 () Bool)

(declare-fun tp!422383 () Bool)

(declare-fun inv!21005 (Conc!5373) Bool)

(assert (=> b!1485407 (= e!950202 (and (inv!21005 (c!243277 acc!392)) tp!422383))))

(declare-fun b!1485408 () Bool)

(declare-fun lt!515902 () tuple2!14462)

(declare-fun prepend!436 (BalanceConc!10688 Token!5282) BalanceConc!10688)

(assert (=> b!1485408 (= e!950179 (tuple2!14463 (prepend!436 (_1!8140 lt!515902) (_1!8145 (v!22621 lt!515906))) (_2!8140 lt!515902)))))

(assert (=> b!1485408 (= lt!515902 (lexRec!303 thiss!13241 rules!1640 (_2!8145 (v!22621 lt!515906))))))

(declare-fun b!1485409 () Bool)

(declare-fun e!950212 () Bool)

(assert (=> b!1485409 (= e!950212 e!950205)))

(declare-fun b!1485410 () Bool)

(declare-fun res!670747 () Bool)

(assert (=> b!1485410 (=> (not res!670747) (not e!950190))))

(declare-fun rulesInvariant!2251 (LexerInterface!2466 List!15860) Bool)

(assert (=> b!1485410 (= res!670747 (rulesInvariant!2251 thiss!13241 rules!1640))))

(declare-fun b!1485411 () Bool)

(assert (=> b!1485411 (= e!950185 e!950186)))

(declare-fun b!1485412 () Bool)

(declare-fun res!670741 () Bool)

(assert (=> b!1485412 (=> (not res!670741) (not e!950187))))

(assert (=> b!1485412 (= res!670741 (isEmpty!9846 (list!6265 (_2!8140 lt!515905))))))

(declare-fun e!950188 () Bool)

(declare-fun tp!422366 () Bool)

(declare-fun e!950199 () Bool)

(declare-fun b!1485413 () Bool)

(declare-fun inv!20998 (String!18762) Bool)

(declare-fun inv!21006 (TokenValueInjection!5460) Bool)

(assert (=> b!1485413 (= e!950199 (and tp!422366 (inv!20998 (tag!3074 (h!21193 rules!1640))) (inv!21006 (transformation!2810 (h!21193 rules!1640))) e!950188))))

(declare-fun e!950206 () Bool)

(declare-fun tp!422370 () Bool)

(declare-fun tp!422371 () Bool)

(declare-fun array_inv!1586 (array!4884) Bool)

(assert (=> b!1485414 (= e!950180 (and tp!422363 tp!422370 tp!422371 (array_inv!1583 (_keys!1674 (v!22615 (underlying!2969 (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))))) (array_inv!1586 (_values!1659 (v!22615 (underlying!2969 (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))))) e!950206))))

(declare-fun b!1485415 () Bool)

(declare-fun tp!422382 () Bool)

(assert (=> b!1485415 (= e!950176 (and (inv!21004 (c!243276 (totalInput!2239 cacheFurthestNullable!64))) tp!422382))))

(declare-fun b!1485416 () Bool)

(declare-fun tp!422380 () Bool)

(assert (=> b!1485416 (= e!950210 (and tp!422380 mapRes!6583))))

(declare-fun condMapEmpty!6583 () Bool)

(declare-fun mapDefault!6583 () List!15858)

(assert (=> b!1485416 (= condMapEmpty!6583 (= (arr!2182 (_values!1660 (v!22617 (underlying!2971 (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15858)) mapDefault!6583)))))

(declare-fun b!1485417 () Bool)

(declare-fun tp!422385 () Bool)

(assert (=> b!1485417 (= e!950206 (and tp!422385 mapRes!6584))))

(declare-fun condMapEmpty!6582 () Bool)

(declare-fun mapDefault!6584 () List!15854)

(assert (=> b!1485417 (= condMapEmpty!6582 (= (arr!2181 (_values!1659 (v!22615 (underlying!2969 (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15854)) mapDefault!6584)))))

(declare-fun e!950183 () Bool)

(assert (=> b!1485418 (= e!950207 (and e!950183 tp!422364))))

(declare-fun b!1485419 () Bool)

(declare-fun res!670744 () Bool)

(assert (=> b!1485419 (=> res!670744 e!950208)))

(assert (=> b!1485419 (= res!670744 (not (= (lexList!726 thiss!13241 rules!1640 lt!515911) (tuple2!14471 (++!4251 lt!515903 lt!515891) lt!515897))))))

(declare-fun mapIsEmpty!6584 () Bool)

(assert (=> mapIsEmpty!6584 mapRes!6583))

(declare-fun b!1485420 () Bool)

(declare-fun e!950178 () Bool)

(assert (=> b!1485420 (= e!950178 e!950212)))

(declare-fun b!1485421 () Bool)

(assert (=> b!1485421 (= e!950187 e!950177)))

(declare-fun res!670742 () Bool)

(assert (=> b!1485421 (=> (not res!670742) (not e!950177))))

(declare-fun lt!515912 () tuple2!14462)

(declare-fun ++!4253 (BalanceConc!10688 BalanceConc!10688) BalanceConc!10688)

(assert (=> b!1485421 (= res!670742 (= (list!6266 (_1!8140 lt!515912)) (list!6266 (++!4253 acc!392 (_1!8140 lt!515890)))))))

(assert (=> b!1485421 (= lt!515890 (lexRec!303 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1485421 (= lt!515912 (lexRec!303 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1485422 () Bool)

(declare-fun res!670749 () Bool)

(assert (=> b!1485422 (=> (not res!670749) (not e!950177))))

(assert (=> b!1485422 (= res!670749 (= (list!6265 (_2!8140 lt!515912)) (list!6265 (_2!8140 lt!515890))))))

(declare-fun b!1485423 () Bool)

(declare-fun tp!422378 () Bool)

(assert (=> b!1485423 (= e!950204 (and e!950199 tp!422378))))

(declare-fun mapNonEmpty!6584 () Bool)

(declare-fun tp!422376 () Bool)

(declare-fun tp!422372 () Bool)

(assert (=> mapNonEmpty!6584 (= mapRes!6584 (and tp!422376 tp!422372))))

(declare-fun mapValue!6584 () List!15854)

(declare-fun mapRest!6584 () (Array (_ BitVec 32) List!15854))

(declare-fun mapKey!6582 () (_ BitVec 32))

(assert (=> mapNonEmpty!6584 (= (arr!2181 (_values!1659 (v!22615 (underlying!2969 (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))))) (store mapRest!6584 mapKey!6582 mapValue!6584))))

(declare-fun b!1485424 () Bool)

(declare-fun e!950174 () Bool)

(assert (=> b!1485424 (= e!950174 e!950203)))

(declare-fun res!670752 () Bool)

(assert (=> b!1485424 (=> res!670752 e!950203)))

(assert (=> b!1485424 (= res!670752 (not ((_ is Some!2892) (_1!8146 lt!515889))))))

(declare-fun maxPrefixZipperSequenceV3Mem!7 (LexerInterface!2466 List!15860 BalanceConc!10686 BalanceConc!10686 CacheUp!782 CacheDown!786 CacheFurthestNullable!208) tuple4!588)

(assert (=> b!1485424 (= lt!515889 (maxPrefixZipperSequenceV3Mem!7 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1485425 () Bool)

(declare-fun tp!422387 () Bool)

(assert (=> b!1485425 (= e!950175 (and (inv!21004 (c!243276 input!1102)) tp!422387))))

(assert (=> b!1485426 (= e!950188 (and tp!422365 tp!422362))))

(declare-fun b!1485427 () Bool)

(declare-fun tp!422381 () Bool)

(assert (=> b!1485427 (= e!950192 (and (inv!21004 (c!243276 treated!70)) tp!422381))))

(declare-fun b!1485428 () Bool)

(assert (=> b!1485428 (= e!950177 (not e!950174))))

(declare-fun res!670754 () Bool)

(assert (=> b!1485428 (=> res!670754 e!950174)))

(declare-fun isSuffix!279 (List!15856 List!15856) Bool)

(assert (=> b!1485428 (= res!670754 (not (isSuffix!279 lt!515908 lt!515898)))))

(assert (=> b!1485428 (isSuffix!279 lt!515908 lt!515901)))

(declare-fun lt!515916 () Unit!25625)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!257 (List!15856 List!15856) Unit!25625)

(assert (=> b!1485428 (= lt!515916 (lemmaConcatTwoListThenFSndIsSuffix!257 lt!515893 lt!515908))))

(declare-fun b!1485429 () Bool)

(assert (=> b!1485429 (= e!950182 e!950172)))

(declare-fun b!1485430 () Bool)

(declare-fun lt!515909 () MutLongMap!1382)

(assert (=> b!1485430 (= e!950183 (and e!950178 ((_ is LongMap!1382) lt!515909)))))

(assert (=> b!1485430 (= lt!515909 (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))))

(declare-fun b!1485431 () Bool)

(declare-fun res!670748 () Bool)

(assert (=> b!1485431 (=> (not res!670748) (not e!950190))))

(declare-fun isEmpty!9847 (List!15860) Bool)

(assert (=> b!1485431 (= res!670748 (not (isEmpty!9847 rules!1640)))))

(assert (= (and start!139546 res!670743) b!1485431))

(assert (= (and b!1485431 res!670748) b!1485410))

(assert (= (and b!1485410 res!670747) b!1485399))

(assert (= (and b!1485399 res!670745) b!1485402))

(assert (= (and b!1485402 res!670746) b!1485412))

(assert (= (and b!1485412 res!670741) b!1485421))

(assert (= (and b!1485421 res!670742) b!1485422))

(assert (= (and b!1485422 res!670749) b!1485406))

(assert (= (and b!1485406 res!670751) b!1485389))

(assert (= (and b!1485389 res!670740) b!1485400))

(assert (= (and b!1485400 res!670756) b!1485391))

(assert (= (and b!1485391 res!670755) b!1485428))

(assert (= (and b!1485428 (not res!670754)) b!1485424))

(assert (= (and b!1485424 (not res!670752)) b!1485388))

(assert (= (and b!1485388 c!243274) b!1485408))

(assert (= (and b!1485388 (not c!243274)) b!1485392))

(assert (= (and b!1485388 (not res!670750)) b!1485397))

(assert (= (and b!1485397 (not res!670753)) b!1485419))

(assert (= (and b!1485419 (not res!670744)) b!1485390))

(assert (= start!139546 b!1485407))

(assert (= (and b!1485417 condMapEmpty!6582) mapIsEmpty!6582))

(assert (= (and b!1485417 (not condMapEmpty!6582)) mapNonEmpty!6584))

(assert (= b!1485414 b!1485417))

(assert (= b!1485403 b!1485414))

(assert (= b!1485411 b!1485403))

(assert (= (and b!1485384 ((_ is LongMap!1380) (v!22616 (underlying!2970 (cache!1705 cacheUp!616))))) b!1485411))

(assert (= b!1485387 b!1485384))

(assert (= (and b!1485386 ((_ is HashMap!1324) (cache!1705 cacheUp!616))) b!1485387))

(assert (= start!139546 b!1485386))

(assert (= (and b!1485401 condMapEmpty!6584) mapIsEmpty!6583))

(assert (= (and b!1485401 (not condMapEmpty!6584)) mapNonEmpty!6583))

(assert (= b!1485405 b!1485401))

(assert (= b!1485409 b!1485405))

(assert (= b!1485420 b!1485409))

(assert (= (and b!1485430 ((_ is LongMap!1382) (v!22620 (underlying!2974 (cache!1706 cacheDown!629))))) b!1485420))

(assert (= b!1485418 b!1485430))

(assert (= (and b!1485385 ((_ is HashMap!1326) (cache!1706 cacheDown!629))) b!1485418))

(assert (= start!139546 b!1485385))

(assert (= start!139546 b!1485425))

(assert (= start!139546 b!1485427))

(assert (= b!1485413 b!1485426))

(assert (= b!1485423 b!1485413))

(assert (= (and start!139546 ((_ is Cons!15792) rules!1640)) b!1485423))

(assert (= (and b!1485416 condMapEmpty!6583) mapIsEmpty!6584))

(assert (= (and b!1485416 (not condMapEmpty!6583)) mapNonEmpty!6582))

(assert (= b!1485396 b!1485416))

(assert (= b!1485395 b!1485396))

(assert (= b!1485429 b!1485395))

(assert (= (and b!1485394 ((_ is LongMap!1381) (v!22618 (underlying!2972 (cache!1707 cacheFurthestNullable!64))))) b!1485429))

(assert (= b!1485398 b!1485394))

(assert (= (and b!1485393 ((_ is HashMap!1325) (cache!1707 cacheFurthestNullable!64))) b!1485398))

(assert (= b!1485393 b!1485415))

(assert (= start!139546 b!1485393))

(assert (= start!139546 b!1485404))

(declare-fun m!1731844 () Bool)

(assert (=> b!1485390 m!1731844))

(declare-fun m!1731846 () Bool)

(assert (=> b!1485405 m!1731846))

(declare-fun m!1731848 () Bool)

(assert (=> b!1485405 m!1731848))

(declare-fun m!1731850 () Bool)

(assert (=> b!1485414 m!1731850))

(declare-fun m!1731852 () Bool)

(assert (=> b!1485414 m!1731852))

(declare-fun m!1731854 () Bool)

(assert (=> b!1485425 m!1731854))

(declare-fun m!1731856 () Bool)

(assert (=> b!1485410 m!1731856))

(declare-fun m!1731858 () Bool)

(assert (=> b!1485406 m!1731858))

(declare-fun m!1731860 () Bool)

(assert (=> b!1485402 m!1731860))

(declare-fun m!1731862 () Bool)

(assert (=> b!1485402 m!1731862))

(declare-fun m!1731864 () Bool)

(assert (=> b!1485402 m!1731864))

(declare-fun m!1731866 () Bool)

(assert (=> b!1485415 m!1731866))

(declare-fun m!1731868 () Bool)

(assert (=> b!1485389 m!1731868))

(declare-fun m!1731870 () Bool)

(assert (=> start!139546 m!1731870))

(declare-fun m!1731872 () Bool)

(assert (=> start!139546 m!1731872))

(declare-fun m!1731874 () Bool)

(assert (=> start!139546 m!1731874))

(declare-fun m!1731876 () Bool)

(assert (=> start!139546 m!1731876))

(declare-fun m!1731878 () Bool)

(assert (=> start!139546 m!1731878))

(declare-fun m!1731880 () Bool)

(assert (=> start!139546 m!1731880))

(declare-fun m!1731882 () Bool)

(assert (=> start!139546 m!1731882))

(declare-fun m!1731884 () Bool)

(assert (=> b!1485408 m!1731884))

(declare-fun m!1731886 () Bool)

(assert (=> b!1485408 m!1731886))

(declare-fun m!1731888 () Bool)

(assert (=> b!1485412 m!1731888))

(assert (=> b!1485412 m!1731888))

(declare-fun m!1731890 () Bool)

(assert (=> b!1485412 m!1731890))

(declare-fun m!1731892 () Bool)

(assert (=> b!1485399 m!1731892))

(declare-fun m!1731894 () Bool)

(assert (=> b!1485399 m!1731894))

(declare-fun m!1731896 () Bool)

(assert (=> b!1485399 m!1731896))

(declare-fun m!1731898 () Bool)

(assert (=> b!1485399 m!1731898))

(declare-fun m!1731900 () Bool)

(assert (=> b!1485388 m!1731900))

(declare-fun m!1731902 () Bool)

(assert (=> b!1485388 m!1731902))

(declare-fun m!1731904 () Bool)

(assert (=> b!1485388 m!1731904))

(declare-fun m!1731906 () Bool)

(assert (=> b!1485388 m!1731906))

(declare-fun m!1731908 () Bool)

(assert (=> b!1485388 m!1731908))

(declare-fun m!1731910 () Bool)

(assert (=> b!1485388 m!1731910))

(declare-fun m!1731912 () Bool)

(assert (=> b!1485388 m!1731912))

(declare-fun m!1731914 () Bool)

(assert (=> b!1485388 m!1731914))

(declare-fun m!1731916 () Bool)

(assert (=> b!1485388 m!1731916))

(declare-fun m!1731918 () Bool)

(assert (=> b!1485388 m!1731918))

(declare-fun m!1731920 () Bool)

(assert (=> b!1485388 m!1731920))

(assert (=> b!1485388 m!1731908))

(declare-fun m!1731922 () Bool)

(assert (=> b!1485388 m!1731922))

(declare-fun m!1731924 () Bool)

(assert (=> b!1485388 m!1731924))

(declare-fun m!1731926 () Bool)

(assert (=> b!1485388 m!1731926))

(declare-fun m!1731928 () Bool)

(assert (=> b!1485388 m!1731928))

(assert (=> b!1485388 m!1731926))

(declare-fun m!1731930 () Bool)

(assert (=> b!1485388 m!1731930))

(declare-fun m!1731932 () Bool)

(assert (=> b!1485388 m!1731932))

(declare-fun m!1731934 () Bool)

(assert (=> b!1485388 m!1731934))

(declare-fun m!1731936 () Bool)

(assert (=> b!1485388 m!1731936))

(declare-fun m!1731938 () Bool)

(assert (=> b!1485388 m!1731938))

(assert (=> b!1485388 m!1731902))

(assert (=> b!1485388 m!1731930))

(declare-fun m!1731940 () Bool)

(assert (=> b!1485427 m!1731940))

(declare-fun m!1731942 () Bool)

(assert (=> b!1485396 m!1731942))

(declare-fun m!1731944 () Bool)

(assert (=> b!1485396 m!1731944))

(declare-fun m!1731946 () Bool)

(assert (=> b!1485397 m!1731946))

(declare-fun m!1731948 () Bool)

(assert (=> mapNonEmpty!6582 m!1731948))

(declare-fun m!1731950 () Bool)

(assert (=> b!1485431 m!1731950))

(declare-fun m!1731952 () Bool)

(assert (=> b!1485407 m!1731952))

(declare-fun m!1731954 () Bool)

(assert (=> b!1485424 m!1731954))

(declare-fun m!1731956 () Bool)

(assert (=> b!1485400 m!1731956))

(declare-fun m!1731958 () Bool)

(assert (=> b!1485419 m!1731958))

(declare-fun m!1731960 () Bool)

(assert (=> b!1485419 m!1731960))

(declare-fun m!1731962 () Bool)

(assert (=> b!1485413 m!1731962))

(declare-fun m!1731964 () Bool)

(assert (=> b!1485413 m!1731964))

(declare-fun m!1731966 () Bool)

(assert (=> mapNonEmpty!6584 m!1731966))

(declare-fun m!1731968 () Bool)

(assert (=> b!1485404 m!1731968))

(declare-fun m!1731970 () Bool)

(assert (=> b!1485422 m!1731970))

(declare-fun m!1731972 () Bool)

(assert (=> b!1485422 m!1731972))

(declare-fun m!1731974 () Bool)

(assert (=> b!1485393 m!1731974))

(declare-fun m!1731976 () Bool)

(assert (=> b!1485421 m!1731976))

(declare-fun m!1731978 () Bool)

(assert (=> b!1485421 m!1731978))

(declare-fun m!1731980 () Bool)

(assert (=> b!1485421 m!1731980))

(declare-fun m!1731982 () Bool)

(assert (=> b!1485421 m!1731982))

(assert (=> b!1485421 m!1731978))

(declare-fun m!1731984 () Bool)

(assert (=> b!1485421 m!1731984))

(declare-fun m!1731986 () Bool)

(assert (=> b!1485428 m!1731986))

(declare-fun m!1731988 () Bool)

(assert (=> b!1485428 m!1731988))

(declare-fun m!1731990 () Bool)

(assert (=> b!1485428 m!1731990))

(declare-fun m!1731992 () Bool)

(assert (=> mapNonEmpty!6583 m!1731992))

(check-sat (not b_next!39277) (not b!1485424) (not b_next!39273) (not b!1485393) (not b!1485422) (not b!1485407) (not b!1485431) (not b!1485400) b_and!103299 (not b!1485399) (not b!1485408) (not b!1485388) (not b_next!39275) (not b!1485416) (not b_next!39279) (not b!1485389) (not b!1485419) (not mapNonEmpty!6583) b_and!103295 (not b!1485406) (not b!1485402) (not b!1485397) (not start!139546) (not b!1485396) b_and!103289 (not b!1485421) (not b!1485412) (not b!1485415) (not b!1485423) (not b!1485414) (not b!1485425) (not b!1485405) (not b!1485401) (not b!1485404) (not mapNonEmpty!6582) b_and!103291 b_and!103297 (not b!1485427) (not b!1485413) (not b_next!39283) b_and!103293 b_and!103287 (not b!1485428) (not b_next!39281) b_and!103285 (not b_next!39271) (not b!1485410) (not b!1485417) (not b!1485390) (not mapNonEmpty!6584) (not b_next!39285))
(check-sat b_and!103299 (not b_next!39275) (not b_next!39277) (not b_next!39279) b_and!103295 b_and!103289 b_and!103291 (not b_next!39273) b_and!103297 (not b_next!39285) (not b_next!39283) b_and!103293 b_and!103287 (not b_next!39281) b_and!103285 (not b_next!39271))
