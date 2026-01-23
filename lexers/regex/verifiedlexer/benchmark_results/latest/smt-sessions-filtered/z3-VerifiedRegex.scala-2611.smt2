; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139846 () Bool)

(assert start!139846)

(declare-fun b!1491436 () Bool)

(declare-fun b_free!38723 () Bool)

(declare-fun b_next!39427 () Bool)

(assert (=> b!1491436 (= b_free!38723 (not b_next!39427))))

(declare-fun tp!424606 () Bool)

(declare-fun b_and!103763 () Bool)

(assert (=> b!1491436 (= tp!424606 b_and!103763)))

(declare-fun b!1491457 () Bool)

(declare-fun b_free!38725 () Bool)

(declare-fun b_next!39429 () Bool)

(assert (=> b!1491457 (= b_free!38725 (not b_next!39429))))

(declare-fun tp!424617 () Bool)

(declare-fun b_and!103765 () Bool)

(assert (=> b!1491457 (= tp!424617 b_and!103765)))

(declare-fun b!1491468 () Bool)

(declare-fun b_free!38727 () Bool)

(declare-fun b_next!39431 () Bool)

(assert (=> b!1491468 (= b_free!38727 (not b_next!39431))))

(declare-fun tp!424619 () Bool)

(declare-fun b_and!103767 () Bool)

(assert (=> b!1491468 (= tp!424619 b_and!103767)))

(declare-fun b!1491444 () Bool)

(declare-fun b_free!38729 () Bool)

(declare-fun b_next!39433 () Bool)

(assert (=> b!1491444 (= b_free!38729 (not b_next!39433))))

(declare-fun tp!424603 () Bool)

(declare-fun b_and!103769 () Bool)

(assert (=> b!1491444 (= tp!424603 b_and!103769)))

(declare-fun b_free!38731 () Bool)

(declare-fun b_next!39435 () Bool)

(assert (=> b!1491444 (= b_free!38731 (not b_next!39435))))

(declare-fun tp!424615 () Bool)

(declare-fun b_and!103771 () Bool)

(assert (=> b!1491444 (= tp!424615 b_and!103771)))

(declare-fun b!1491460 () Bool)

(declare-fun b_free!38733 () Bool)

(declare-fun b_next!39437 () Bool)

(assert (=> b!1491460 (= b_free!38733 (not b_next!39437))))

(declare-fun tp!424612 () Bool)

(declare-fun b_and!103773 () Bool)

(assert (=> b!1491460 (= tp!424612 b_and!103773)))

(declare-fun b!1491462 () Bool)

(declare-fun b_free!38735 () Bool)

(declare-fun b_next!39439 () Bool)

(assert (=> b!1491462 (= b_free!38735 (not b_next!39439))))

(declare-fun tp!424616 () Bool)

(declare-fun b_and!103775 () Bool)

(assert (=> b!1491462 (= tp!424616 b_and!103775)))

(declare-fun b!1491423 () Bool)

(declare-fun b_free!38737 () Bool)

(declare-fun b_next!39441 () Bool)

(assert (=> b!1491423 (= b_free!38737 (not b_next!39441))))

(declare-fun tp!424610 () Bool)

(declare-fun b_and!103777 () Bool)

(assert (=> b!1491423 (= tp!424610 b_and!103777)))

(declare-fun b!1491417 () Bool)

(declare-fun res!672929 () Bool)

(declare-fun e!953961 () Bool)

(assert (=> b!1491417 (=> (not res!672929) (not e!953961))))

(declare-datatypes ((C!8444 0))(
  ( (C!8445 (val!4794 Int)) )
))
(declare-datatypes ((Regex!4133 0))(
  ( (ElementMatch!4133 (c!244322 C!8444)) (Concat!7041 (regOne!8778 Regex!4133) (regTwo!8778 Regex!4133)) (EmptyExpr!4133) (Star!4133 (reg!4462 Regex!4133)) (EmptyLang!4133) (Union!4133 (regOne!8779 Regex!4133) (regTwo!8779 Regex!4133)) )
))
(declare-datatypes ((List!15919 0))(
  ( (Nil!15851) (Cons!15851 (h!21252 Regex!4133) (t!138174 List!15919)) )
))
(declare-datatypes ((Context!1302 0))(
  ( (Context!1303 (exprs!1151 List!15919)) )
))
(declare-datatypes ((tuple3!1262 0))(
  ( (tuple3!1263 (_1!8220 Regex!4133) (_2!8220 Context!1302) (_3!934 C!8444)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14572 0))(
  ( (tuple2!14573 (_1!8221 tuple3!1262) (_2!8221 (InoxSet Context!1302))) )
))
(declare-datatypes ((List!15920 0))(
  ( (Nil!15852) (Cons!15852 (h!21253 tuple2!14572) (t!138175 List!15920)) )
))
(declare-datatypes ((array!4950 0))(
  ( (array!4951 (arr!2212 (Array (_ BitVec 32) List!15920)) (size!12823 (_ BitVec 32))) )
))
(declare-datatypes ((array!4952 0))(
  ( (array!4953 (arr!2213 (Array (_ BitVec 32) (_ BitVec 64))) (size!12824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2808 0))(
  ( (LongMapFixedSize!2809 (defaultEntry!1764 Int) (mask!4559 (_ BitVec 32)) (extraKeys!1651 (_ BitVec 32)) (zeroValue!1661 List!15920) (minValue!1661 List!15920) (_size!2889 (_ BitVec 32)) (_keys!1698 array!4952) (_values!1683 array!4950) (_vacant!1465 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5501 0))(
  ( (Cell!5502 (v!22677 LongMapFixedSize!2808)) )
))
(declare-datatypes ((MutLongMap!1404 0))(
  ( (LongMap!1404 (underlying!3017 Cell!5501)) (MutLongMapExt!1403 (__x!9764 Int)) )
))
(declare-datatypes ((Cell!5503 0))(
  ( (Cell!5504 (v!22678 MutLongMap!1404)) )
))
(declare-datatypes ((Hashable!1348 0))(
  ( (HashableExt!1347 (__x!9765 Int)) )
))
(declare-datatypes ((MutableMap!1348 0))(
  ( (MutableMapExt!1347 (__x!9766 Int)) (HashMap!1348 (underlying!3018 Cell!5503) (hashF!3267 Hashable!1348) (_size!2890 (_ BitVec 32)) (defaultValue!1508 Int)) )
))
(declare-datatypes ((CacheDown!802 0))(
  ( (CacheDown!803 (cache!1729 MutableMap!1348)) )
))
(declare-fun cacheDown!629 () CacheDown!802)

(declare-fun valid!1107 (CacheDown!802) Bool)

(assert (=> b!1491417 (= res!672929 (valid!1107 cacheDown!629))))

(declare-fun b!1491418 () Bool)

(declare-fun e!953967 () Bool)

(assert (=> b!1491418 (= e!953967 e!953961)))

(declare-fun res!672927 () Bool)

(assert (=> b!1491418 (=> (not res!672927) (not e!953961))))

(declare-datatypes ((List!15921 0))(
  ( (Nil!15853) (Cons!15853 (h!21254 (_ BitVec 16)) (t!138176 List!15921)) )
))
(declare-datatypes ((TokenValue!2908 0))(
  ( (FloatLiteralValue!5816 (text!20801 List!15921)) (TokenValueExt!2907 (__x!9767 Int)) (Broken!14540 (value!89947 List!15921)) (Object!2975) (End!2908) (Def!2908) (Underscore!2908) (Match!2908) (Else!2908) (Error!2908) (Case!2908) (If!2908) (Extends!2908) (Abstract!2908) (Class!2908) (Val!2908) (DelimiterValue!5816 (del!2968 List!15921)) (KeywordValue!2914 (value!89948 List!15921)) (CommentValue!5816 (value!89949 List!15921)) (WhitespaceValue!5816 (value!89950 List!15921)) (IndentationValue!2908 (value!89951 List!15921)) (String!18801) (Int32!2908) (Broken!14541 (value!89952 List!15921)) (Boolean!2909) (Unit!25652) (OperatorValue!2911 (op!2968 List!15921)) (IdentifierValue!5816 (value!89953 List!15921)) (IdentifierValue!5817 (value!89954 List!15921)) (WhitespaceValue!5817 (value!89955 List!15921)) (True!5816) (False!5816) (Broken!14542 (value!89956 List!15921)) (Broken!14543 (value!89957 List!15921)) (True!5817) (RightBrace!2908) (RightBracket!2908) (Colon!2908) (Null!2908) (Comma!2908) (LeftBracket!2908) (False!5817) (LeftBrace!2908) (ImaginaryLiteralValue!2908 (text!20802 List!15921)) (StringLiteralValue!8724 (value!89958 List!15921)) (EOFValue!2908 (value!89959 List!15921)) (IdentValue!2908 (value!89960 List!15921)) (DelimiterValue!5817 (value!89961 List!15921)) (DedentValue!2908 (value!89962 List!15921)) (NewLineValue!2908 (value!89963 List!15921)) (IntegerValue!8724 (value!89964 (_ BitVec 32)) (text!20803 List!15921)) (IntegerValue!8725 (value!89965 Int) (text!20804 List!15921)) (Times!2908) (Or!2908) (Equal!2908) (Minus!2908) (Broken!14544 (value!89966 List!15921)) (And!2908) (Div!2908) (LessEqual!2908) (Mod!2908) (Concat!7042) (Not!2908) (Plus!2908) (SpaceValue!2908 (value!89967 List!15921)) (IntegerValue!8726 (value!89968 Int) (text!20805 List!15921)) (StringLiteralValue!8725 (text!20806 List!15921)) (FloatLiteralValue!5817 (text!20807 List!15921)) (BytesLiteralValue!2908 (value!89969 List!15921)) (CommentValue!5817 (value!89970 List!15921)) (StringLiteralValue!8726 (value!89971 List!15921)) (ErrorTokenValue!2908 (msg!2969 List!15921)) )
))
(declare-datatypes ((List!15922 0))(
  ( (Nil!15854) (Cons!15854 (h!21255 C!8444) (t!138177 List!15922)) )
))
(declare-datatypes ((IArray!10779 0))(
  ( (IArray!10780 (innerList!5447 List!15922)) )
))
(declare-datatypes ((Conc!5387 0))(
  ( (Node!5387 (left!13292 Conc!5387) (right!13622 Conc!5387) (csize!11004 Int) (cheight!5598 Int)) (Leaf!7999 (xs!8150 IArray!10779) (csize!11005 Int)) (Empty!5387) )
))
(declare-datatypes ((BalanceConc!10716 0))(
  ( (BalanceConc!10717 (c!244323 Conc!5387)) )
))
(declare-datatypes ((String!18802 0))(
  ( (String!18803 (value!89972 String)) )
))
(declare-datatypes ((TokenValueInjection!5476 0))(
  ( (TokenValueInjection!5477 (toValue!4161 Int) (toChars!4020 Int)) )
))
(declare-datatypes ((Rule!5436 0))(
  ( (Rule!5437 (regex!2818 Regex!4133) (tag!3082 String!18802) (isSeparator!2818 Bool) (transformation!2818 TokenValueInjection!5476)) )
))
(declare-datatypes ((Token!5298 0))(
  ( (Token!5299 (value!89973 TokenValue!2908) (rule!4599 Rule!5436) (size!12825 Int) (originalCharacters!3680 List!15922)) )
))
(declare-datatypes ((List!15923 0))(
  ( (Nil!15855) (Cons!15855 (h!21256 Token!5298) (t!138178 List!15923)) )
))
(declare-datatypes ((IArray!10781 0))(
  ( (IArray!10782 (innerList!5448 List!15923)) )
))
(declare-datatypes ((Conc!5388 0))(
  ( (Node!5388 (left!13293 Conc!5388) (right!13623 Conc!5388) (csize!11006 Int) (cheight!5599 Int)) (Leaf!8000 (xs!8151 IArray!10781) (csize!11007 Int)) (Empty!5388) )
))
(declare-datatypes ((BalanceConc!10718 0))(
  ( (BalanceConc!10719 (c!244324 Conc!5388)) )
))
(declare-fun acc!392 () BalanceConc!10718)

(declare-datatypes ((tuple2!14574 0))(
  ( (tuple2!14575 (_1!8222 BalanceConc!10718) (_2!8222 BalanceConc!10716)) )
))
(declare-fun lt!518203 () tuple2!14574)

(declare-fun lt!518212 () tuple2!14574)

(declare-fun list!6282 (BalanceConc!10718) List!15923)

(declare-fun ++!4274 (BalanceConc!10718 BalanceConc!10718) BalanceConc!10718)

(assert (=> b!1491418 (= res!672927 (= (list!6282 (_1!8222 lt!518212)) (list!6282 (++!4274 acc!392 (_1!8222 lt!518203)))))))

(declare-fun input!1102 () BalanceConc!10716)

(declare-datatypes ((LexerInterface!2473 0))(
  ( (LexerInterfaceExt!2470 (__x!9768 Int)) (Lexer!2471) )
))
(declare-fun thiss!13241 () LexerInterface!2473)

(declare-datatypes ((List!15924 0))(
  ( (Nil!15856) (Cons!15856 (h!21257 Rule!5436) (t!138179 List!15924)) )
))
(declare-fun rules!1640 () List!15924)

(declare-fun lexRec!310 (LexerInterface!2473 List!15924 BalanceConc!10716) tuple2!14574)

(assert (=> b!1491418 (= lt!518203 (lexRec!310 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10716)

(assert (=> b!1491418 (= lt!518212 (lexRec!310 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1491419 () Bool)

(declare-fun e!953993 () Bool)

(declare-fun e!953989 () Bool)

(assert (=> b!1491419 (= e!953993 e!953989)))

(declare-fun res!672913 () Bool)

(assert (=> b!1491419 (=> res!672913 e!953989)))

(declare-fun lt!518230 () List!15922)

(declare-fun lt!518216 () List!15922)

(declare-fun isSuffix!284 (List!15922 List!15922) Bool)

(assert (=> b!1491419 (= res!672913 (not (isSuffix!284 lt!518230 lt!518216)))))

(declare-fun lt!518215 () List!15922)

(assert (=> b!1491419 (isSuffix!284 lt!518230 lt!518215)))

(declare-fun lt!518209 () List!15922)

(declare-fun ++!4275 (List!15922 List!15922) List!15922)

(assert (=> b!1491419 (= lt!518215 (++!4275 lt!518209 lt!518230))))

(declare-datatypes ((Unit!25653 0))(
  ( (Unit!25654) )
))
(declare-fun lt!518214 () Unit!25653)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!262 (List!15922 List!15922) Unit!25653)

(assert (=> b!1491419 (= lt!518214 (lemmaConcatTwoListThenFSndIsSuffix!262 lt!518209 lt!518230))))

(declare-fun lt!518217 () BalanceConc!10716)

(declare-fun list!6283 (BalanceConc!10716) List!15922)

(assert (=> b!1491419 (= lt!518209 (list!6283 lt!518217))))

(declare-fun e!953959 () Bool)

(assert (=> b!1491419 e!953959))

(declare-fun c!244321 () Bool)

(declare-datatypes ((tuple2!14576 0))(
  ( (tuple2!14577 (_1!8223 Token!5298) (_2!8223 BalanceConc!10716)) )
))
(declare-datatypes ((Option!2901 0))(
  ( (None!2900) (Some!2900 (v!22679 tuple2!14576)) )
))
(declare-fun lt!518211 () Option!2901)

(get-info :version)

(assert (=> b!1491419 (= c!244321 ((_ is Some!2900) lt!518211))))

(declare-fun lt!518213 () tuple2!14574)

(assert (=> b!1491419 (= lt!518213 (lexRec!310 thiss!13241 rules!1640 lt!518217))))

(declare-fun maxPrefixZipperSequence!573 (LexerInterface!2473 List!15924 BalanceConc!10716) Option!2901)

(assert (=> b!1491419 (= lt!518211 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 lt!518217))))

(declare-fun treated!70 () BalanceConc!10716)

(declare-fun lt!518218 () BalanceConc!10716)

(declare-fun ++!4276 (BalanceConc!10716 BalanceConc!10716) BalanceConc!10716)

(assert (=> b!1491419 (= lt!518217 (++!4276 treated!70 lt!518218))))

(declare-fun lt!518208 () List!15922)

(declare-fun lt!518200 () List!15923)

(declare-datatypes ((tuple2!14578 0))(
  ( (tuple2!14579 (_1!8224 List!15923) (_2!8224 List!15922)) )
))
(declare-fun lexList!731 (LexerInterface!2473 List!15924 List!15922) tuple2!14578)

(assert (=> b!1491419 (= (lexList!731 thiss!13241 rules!1640 lt!518208) (tuple2!14579 lt!518200 Nil!15854))))

(declare-fun lt!518201 () List!15923)

(declare-fun lt!518224 () Unit!25653)

(declare-fun lt!518207 () tuple2!14574)

(declare-fun lemmaLexThenLexPrefix!213 (LexerInterface!2473 List!15924 List!15922 List!15922 List!15923 List!15923 List!15922) Unit!25653)

(assert (=> b!1491419 (= lt!518224 (lemmaLexThenLexPrefix!213 thiss!13241 rules!1640 lt!518208 lt!518230 lt!518200 lt!518201 (list!6283 (_2!8222 lt!518207))))))

(declare-datatypes ((tuple3!1264 0))(
  ( (tuple3!1265 (_1!8225 (InoxSet Context!1302)) (_2!8225 Int) (_3!935 Int)) )
))
(declare-datatypes ((tuple2!14580 0))(
  ( (tuple2!14581 (_1!8226 tuple3!1264) (_2!8226 Int)) )
))
(declare-datatypes ((List!15925 0))(
  ( (Nil!15857) (Cons!15857 (h!21258 tuple2!14580) (t!138180 List!15925)) )
))
(declare-datatypes ((array!4954 0))(
  ( (array!4955 (arr!2214 (Array (_ BitVec 32) List!15925)) (size!12826 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2810 0))(
  ( (LongMapFixedSize!2811 (defaultEntry!1765 Int) (mask!4560 (_ BitVec 32)) (extraKeys!1652 (_ BitVec 32)) (zeroValue!1662 List!15925) (minValue!1662 List!15925) (_size!2891 (_ BitVec 32)) (_keys!1699 array!4952) (_values!1684 array!4954) (_vacant!1466 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5505 0))(
  ( (Cell!5506 (v!22680 LongMapFixedSize!2810)) )
))
(declare-datatypes ((MutLongMap!1405 0))(
  ( (LongMap!1405 (underlying!3019 Cell!5505)) (MutLongMapExt!1404 (__x!9769 Int)) )
))
(declare-datatypes ((Cell!5507 0))(
  ( (Cell!5508 (v!22681 MutLongMap!1405)) )
))
(declare-datatypes ((Hashable!1349 0))(
  ( (HashableExt!1348 (__x!9770 Int)) )
))
(declare-datatypes ((MutableMap!1349 0))(
  ( (MutableMapExt!1348 (__x!9771 Int)) (HashMap!1349 (underlying!3020 Cell!5507) (hashF!3268 Hashable!1349) (_size!2892 (_ BitVec 32)) (defaultValue!1509 Int)) )
))
(declare-datatypes ((tuple2!14582 0))(
  ( (tuple2!14583 (_1!8227 Context!1302) (_2!8227 C!8444)) )
))
(declare-datatypes ((tuple2!14584 0))(
  ( (tuple2!14585 (_1!8228 tuple2!14582) (_2!8228 (InoxSet Context!1302))) )
))
(declare-datatypes ((List!15926 0))(
  ( (Nil!15858) (Cons!15858 (h!21259 tuple2!14584) (t!138181 List!15926)) )
))
(declare-datatypes ((array!4956 0))(
  ( (array!4957 (arr!2215 (Array (_ BitVec 32) List!15926)) (size!12827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2812 0))(
  ( (LongMapFixedSize!2813 (defaultEntry!1766 Int) (mask!4561 (_ BitVec 32)) (extraKeys!1653 (_ BitVec 32)) (zeroValue!1663 List!15926) (minValue!1663 List!15926) (_size!2893 (_ BitVec 32)) (_keys!1700 array!4952) (_values!1685 array!4956) (_vacant!1467 (_ BitVec 32))) )
))
(declare-datatypes ((CacheFurthestNullable!224 0))(
  ( (CacheFurthestNullable!225 (cache!1730 MutableMap!1349) (totalInput!2252 BalanceConc!10716)) )
))
(declare-datatypes ((Cell!5509 0))(
  ( (Cell!5510 (v!22682 LongMapFixedSize!2812)) )
))
(declare-datatypes ((MutLongMap!1406 0))(
  ( (LongMap!1406 (underlying!3021 Cell!5509)) (MutLongMapExt!1405 (__x!9772 Int)) )
))
(declare-datatypes ((Hashable!1350 0))(
  ( (HashableExt!1349 (__x!9773 Int)) )
))
(declare-datatypes ((Cell!5511 0))(
  ( (Cell!5512 (v!22683 MutLongMap!1406)) )
))
(declare-datatypes ((MutableMap!1350 0))(
  ( (MutableMapExt!1349 (__x!9774 Int)) (HashMap!1350 (underlying!3022 Cell!5511) (hashF!3269 Hashable!1350) (_size!2894 (_ BitVec 32)) (defaultValue!1510 Int)) )
))
(declare-datatypes ((CacheUp!798 0))(
  ( (CacheUp!799 (cache!1731 MutableMap!1350)) )
))
(declare-datatypes ((tuple4!606 0))(
  ( (tuple4!607 (_1!8229 Option!2901) (_2!8229 CacheUp!798) (_3!936 CacheDown!802) (_4!303 CacheFurthestNullable!224)) )
))
(declare-fun lt!518229 () tuple4!606)

(declare-fun append!474 (BalanceConc!10718 Token!5298) BalanceConc!10718)

(assert (=> b!1491419 (= lt!518200 (list!6282 (append!474 acc!392 (_1!8223 (v!22679 (_1!8229 lt!518229))))))))

(declare-fun lt!518202 () List!15923)

(declare-fun lt!518204 () List!15923)

(declare-fun ++!4277 (List!15923 List!15923) List!15923)

(assert (=> b!1491419 (= (++!4277 (++!4277 lt!518202 lt!518204) lt!518201) (++!4277 lt!518202 (++!4277 lt!518204 lt!518201)))))

(declare-fun lt!518206 () Unit!25653)

(declare-fun lemmaConcatAssociativity!907 (List!15923 List!15923 List!15923) Unit!25653)

(assert (=> b!1491419 (= lt!518206 (lemmaConcatAssociativity!907 lt!518202 lt!518204 lt!518201))))

(assert (=> b!1491419 (= lt!518201 (list!6282 (_1!8222 lt!518207)))))

(assert (=> b!1491419 (= lt!518204 (Cons!15855 (_1!8223 (v!22679 (_1!8229 lt!518229))) Nil!15855))))

(declare-fun e!953987 () tuple2!14574)

(assert (=> b!1491419 (= lt!518203 e!953987)))

(declare-fun c!244320 () Bool)

(declare-fun lt!518210 () Option!2901)

(assert (=> b!1491419 (= c!244320 ((_ is Some!2900) lt!518210))))

(assert (=> b!1491419 (= lt!518210 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!518227 () List!15922)

(declare-fun lt!518199 () List!15922)

(assert (=> b!1491419 (= (++!4275 lt!518208 lt!518230) (++!4275 lt!518199 (++!4275 lt!518227 lt!518230)))))

(assert (=> b!1491419 (= lt!518208 (++!4275 lt!518199 lt!518227))))

(declare-fun lt!518205 () Unit!25653)

(declare-fun lemmaConcatAssociativity!908 (List!15922 List!15922 List!15922) Unit!25653)

(assert (=> b!1491419 (= lt!518205 (lemmaConcatAssociativity!908 lt!518199 lt!518227 lt!518230))))

(assert (=> b!1491419 (= lt!518230 (list!6283 (_2!8223 (v!22679 (_1!8229 lt!518229)))))))

(assert (=> b!1491419 (= lt!518227 (list!6283 lt!518218))))

(declare-fun charsOf!1614 (Token!5298) BalanceConc!10716)

(assert (=> b!1491419 (= lt!518218 (charsOf!1614 (_1!8223 (v!22679 (_1!8229 lt!518229)))))))

(assert (=> b!1491419 (= lt!518207 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 (_1!8229 lt!518229)))))))

(declare-fun mapNonEmpty!6669 () Bool)

(declare-fun mapRes!6669 () Bool)

(declare-fun tp!424604 () Bool)

(declare-fun tp!424605 () Bool)

(assert (=> mapNonEmpty!6669 (= mapRes!6669 (and tp!424604 tp!424605))))

(declare-fun mapValue!6670 () List!15926)

(declare-fun cacheUp!616 () CacheUp!798)

(declare-fun mapKey!6670 () (_ BitVec 32))

(declare-fun mapRest!6670 () (Array (_ BitVec 32) List!15926))

(assert (=> mapNonEmpty!6669 (= (arr!2215 (_values!1685 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) (store mapRest!6670 mapKey!6670 mapValue!6670))))

(declare-fun mapNonEmpty!6670 () Bool)

(declare-fun mapRes!6671 () Bool)

(declare-fun tp!424629 () Bool)

(declare-fun tp!424623 () Bool)

(assert (=> mapNonEmpty!6670 (= mapRes!6671 (and tp!424629 tp!424623))))

(declare-fun mapValue!6671 () List!15920)

(declare-fun mapKey!6671 () (_ BitVec 32))

(declare-fun mapRest!6671 () (Array (_ BitVec 32) List!15920))

(assert (=> mapNonEmpty!6670 (= (arr!2212 (_values!1683 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) (store mapRest!6671 mapKey!6671 mapValue!6671))))

(declare-fun b!1491420 () Bool)

(declare-fun res!672919 () Bool)

(declare-fun e!953968 () Bool)

(assert (=> b!1491420 (=> (not res!672919) (not e!953968))))

(declare-fun rulesInvariant!2255 (LexerInterface!2473 List!15924) Bool)

(assert (=> b!1491420 (= res!672919 (rulesInvariant!2255 thiss!13241 rules!1640))))

(declare-fun b!1491421 () Bool)

(declare-fun e!953984 () Bool)

(declare-fun e!953972 () Bool)

(assert (=> b!1491421 (= e!953984 e!953972)))

(declare-fun b!1491422 () Bool)

(declare-fun e!953998 () Bool)

(declare-fun tp!424611 () Bool)

(declare-fun inv!21063 (Conc!5387) Bool)

(assert (=> b!1491422 (= e!953998 (and (inv!21063 (c!244323 treated!70)) tp!424611))))

(declare-fun e!953988 () Bool)

(declare-fun tp!424627 () Bool)

(declare-fun e!953960 () Bool)

(declare-fun tp!424618 () Bool)

(declare-fun array_inv!1605 (array!4952) Bool)

(declare-fun array_inv!1606 (array!4950) Bool)

(assert (=> b!1491423 (= e!953960 (and tp!424610 tp!424627 tp!424618 (array_inv!1605 (_keys!1698 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) (array_inv!1606 (_values!1683 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) e!953988))))

(declare-fun b!1491424 () Bool)

(declare-fun res!672911 () Bool)

(assert (=> b!1491424 (=> res!672911 e!953989)))

(declare-fun valid!1108 (CacheFurthestNullable!224) Bool)

(assert (=> b!1491424 (= res!672911 (not (valid!1108 (_4!303 lt!518229))))))

(declare-fun mapNonEmpty!6671 () Bool)

(declare-fun mapRes!6670 () Bool)

(declare-fun tp!424614 () Bool)

(declare-fun tp!424621 () Bool)

(assert (=> mapNonEmpty!6671 (= mapRes!6670 (and tp!424614 tp!424621))))

(declare-fun mapValue!6669 () List!15925)

(declare-fun mapRest!6669 () (Array (_ BitVec 32) List!15925))

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!224)

(declare-fun mapKey!6669 () (_ BitVec 32))

(assert (=> mapNonEmpty!6671 (= (arr!2214 (_values!1684 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) (store mapRest!6669 mapKey!6669 mapValue!6669))))

(declare-fun b!1491425 () Bool)

(declare-fun res!672924 () Bool)

(assert (=> b!1491425 (=> (not res!672924) (not e!953961))))

(assert (=> b!1491425 (= res!672924 (= (list!6283 (_2!8222 lt!518212)) (list!6283 (_2!8222 lt!518203))))))

(declare-fun e!953985 () Bool)

(declare-fun e!953982 () Bool)

(declare-fun e!953978 () Bool)

(declare-fun b!1491426 () Bool)

(declare-fun inv!21064 (BalanceConc!10716) Bool)

(assert (=> b!1491426 (= e!953978 (and e!953982 (inv!21064 (totalInput!2252 cacheFurthestNullable!64)) e!953985))))

(declare-fun res!672912 () Bool)

(assert (=> start!139846 (=> (not res!672912) (not e!953968))))

(assert (=> start!139846 (= res!672912 ((_ is Lexer!2471) thiss!13241))))

(assert (=> start!139846 e!953968))

(declare-fun e!953970 () Bool)

(declare-fun inv!21065 (BalanceConc!10718) Bool)

(assert (=> start!139846 (and (inv!21065 acc!392) e!953970)))

(declare-fun e!953980 () Bool)

(declare-fun inv!21066 (CacheUp!798) Bool)

(assert (=> start!139846 (and (inv!21066 cacheUp!616) e!953980)))

(declare-fun e!953981 () Bool)

(declare-fun inv!21067 (CacheDown!802) Bool)

(assert (=> start!139846 (and (inv!21067 cacheDown!629) e!953981)))

(declare-fun e!953977 () Bool)

(assert (=> start!139846 (and (inv!21064 input!1102) e!953977)))

(assert (=> start!139846 (and (inv!21064 treated!70) e!953998)))

(assert (=> start!139846 true))

(declare-fun e!953966 () Bool)

(assert (=> start!139846 e!953966))

(declare-fun inv!21068 (CacheFurthestNullable!224) Bool)

(assert (=> start!139846 (and (inv!21068 cacheFurthestNullable!64) e!953978)))

(declare-fun e!953975 () Bool)

(assert (=> start!139846 (and (inv!21064 totalInput!458) e!953975)))

(declare-fun b!1491427 () Bool)

(assert (=> b!1491427 (= e!953987 (tuple2!14575 (BalanceConc!10719 Empty!5388) input!1102))))

(declare-fun b!1491428 () Bool)

(declare-fun res!672928 () Bool)

(assert (=> b!1491428 (=> (not res!672928) (not e!953961))))

(assert (=> b!1491428 (= res!672928 (valid!1108 cacheFurthestNullable!64))))

(declare-fun b!1491429 () Bool)

(declare-fun e!953979 () Bool)

(declare-fun e!953994 () Bool)

(declare-fun lt!518225 () MutLongMap!1406)

(assert (=> b!1491429 (= e!953979 (and e!953994 ((_ is LongMap!1406) lt!518225)))))

(assert (=> b!1491429 (= lt!518225 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))

(declare-fun b!1491430 () Bool)

(declare-fun tp!424625 () Bool)

(declare-fun inv!21069 (Conc!5388) Bool)

(assert (=> b!1491430 (= e!953970 (and (inv!21069 (c!244324 acc!392)) tp!424625))))

(declare-fun b!1491431 () Bool)

(declare-fun e!953976 () Bool)

(declare-fun lt!518231 () MutLongMap!1405)

(assert (=> b!1491431 (= e!953976 (and e!953984 ((_ is LongMap!1405) lt!518231)))))

(assert (=> b!1491431 (= lt!518231 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))

(declare-fun mapIsEmpty!6669 () Bool)

(assert (=> mapIsEmpty!6669 mapRes!6670))

(declare-fun tp!424631 () Bool)

(declare-fun b!1491432 () Bool)

(declare-fun e!953986 () Bool)

(declare-fun e!953969 () Bool)

(declare-fun inv!21060 (String!18802) Bool)

(declare-fun inv!21070 (TokenValueInjection!5476) Bool)

(assert (=> b!1491432 (= e!953986 (and tp!424631 (inv!21060 (tag!3082 (h!21257 rules!1640))) (inv!21070 (transformation!2818 (h!21257 rules!1640))) e!953969))))

(declare-fun b!1491433 () Bool)

(assert (=> b!1491433 (= e!953959 (= lt!518213 (tuple2!14575 (BalanceConc!10719 Empty!5388) lt!518217)))))

(declare-fun mapIsEmpty!6670 () Bool)

(assert (=> mapIsEmpty!6670 mapRes!6671))

(declare-fun b!1491434 () Bool)

(declare-fun e!953965 () Bool)

(declare-fun e!953983 () Bool)

(assert (=> b!1491434 (= e!953965 e!953983)))

(declare-fun b!1491435 () Bool)

(declare-fun res!672922 () Bool)

(assert (=> b!1491435 (=> res!672922 e!953989)))

(assert (=> b!1491435 (= res!672922 (not (= lt!518216 lt!518215)))))

(assert (=> b!1491436 (= e!953982 (and e!953976 tp!424606))))

(declare-fun b!1491437 () Bool)

(declare-fun lt!518228 () tuple2!14574)

(declare-fun prepend!441 (BalanceConc!10718 Token!5298) BalanceConc!10718)

(assert (=> b!1491437 (= e!953987 (tuple2!14575 (prepend!441 (_1!8222 lt!518228) (_1!8223 (v!22679 lt!518210))) (_2!8222 lt!518228)))))

(assert (=> b!1491437 (= lt!518228 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518210))))))

(declare-fun b!1491438 () Bool)

(declare-fun e!953963 () Bool)

(declare-fun e!953971 () Bool)

(assert (=> b!1491438 (= e!953963 e!953971)))

(declare-fun b!1491439 () Bool)

(declare-fun e!953997 () Bool)

(assert (=> b!1491439 (= e!953981 e!953997)))

(declare-fun b!1491440 () Bool)

(declare-fun tp!424609 () Bool)

(assert (=> b!1491440 (= e!953985 (and (inv!21063 (c!244323 (totalInput!2252 cacheFurthestNullable!64))) tp!424609))))

(declare-fun mapIsEmpty!6671 () Bool)

(assert (=> mapIsEmpty!6671 mapRes!6669))

(declare-fun b!1491441 () Bool)

(declare-fun e!954000 () Bool)

(assert (=> b!1491441 (= e!953972 e!954000)))

(declare-fun lt!518219 () tuple2!14574)

(declare-fun b!1491442 () Bool)

(assert (=> b!1491442 (= e!953959 (= lt!518213 (tuple2!14575 (prepend!441 (_1!8222 lt!518219) (_1!8223 (v!22679 lt!518211))) (_2!8222 lt!518219))))))

(assert (=> b!1491442 (= lt!518219 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518211))))))

(declare-fun b!1491443 () Bool)

(declare-fun e!953999 () Bool)

(assert (=> b!1491443 (= e!953980 e!953999)))

(assert (=> b!1491444 (= e!953969 (and tp!424603 tp!424615))))

(declare-fun b!1491445 () Bool)

(assert (=> b!1491445 (= e!953994 e!953963)))

(declare-fun b!1491446 () Bool)

(declare-fun e!953964 () Bool)

(assert (=> b!1491446 (= e!953968 e!953964)))

(declare-fun res!672923 () Bool)

(assert (=> b!1491446 (=> (not res!672923) (not e!953964))))

(declare-fun lt!518220 () List!15922)

(assert (=> b!1491446 (= res!672923 (= lt!518216 lt!518220))))

(declare-fun lt!518221 () List!15922)

(assert (=> b!1491446 (= lt!518220 (++!4275 lt!518199 lt!518221))))

(assert (=> b!1491446 (= lt!518216 (list!6283 totalInput!458))))

(assert (=> b!1491446 (= lt!518221 (list!6283 input!1102))))

(assert (=> b!1491446 (= lt!518199 (list!6283 treated!70))))

(declare-fun b!1491447 () Bool)

(declare-fun e!953962 () Bool)

(assert (=> b!1491447 (= e!953961 (not e!953962))))

(declare-fun res!672918 () Bool)

(assert (=> b!1491447 (=> res!672918 e!953962)))

(assert (=> b!1491447 (= res!672918 (not (isSuffix!284 lt!518221 lt!518216)))))

(assert (=> b!1491447 (isSuffix!284 lt!518221 lt!518220)))

(declare-fun lt!518226 () Unit!25653)

(assert (=> b!1491447 (= lt!518226 (lemmaConcatTwoListThenFSndIsSuffix!262 lt!518199 lt!518221))))

(declare-fun b!1491448 () Bool)

(declare-fun e!953996 () Bool)

(declare-fun tp!424626 () Bool)

(assert (=> b!1491448 (= e!953996 (and tp!424626 mapRes!6670))))

(declare-fun condMapEmpty!6671 () Bool)

(declare-fun mapDefault!6671 () List!15925)

(assert (=> b!1491448 (= condMapEmpty!6671 (= (arr!2214 (_values!1684 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15925)) mapDefault!6671)))))

(declare-fun b!1491449 () Bool)

(declare-fun tp!424628 () Bool)

(assert (=> b!1491449 (= e!953977 (and (inv!21063 (c!244323 input!1102)) tp!424628))))

(declare-fun b!1491450 () Bool)

(declare-fun e!953992 () Bool)

(declare-fun tp!424632 () Bool)

(assert (=> b!1491450 (= e!953992 (and tp!424632 mapRes!6669))))

(declare-fun condMapEmpty!6670 () Bool)

(declare-fun mapDefault!6669 () List!15926)

(assert (=> b!1491450 (= condMapEmpty!6670 (= (arr!2215 (_values!1685 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15926)) mapDefault!6669)))))

(declare-fun b!1491451 () Bool)

(declare-fun res!672917 () Bool)

(assert (=> b!1491451 (=> (not res!672917) (not e!953967))))

(declare-fun lt!518198 () tuple2!14574)

(declare-fun isEmpty!9862 (List!15922) Bool)

(assert (=> b!1491451 (= res!672917 (isEmpty!9862 (list!6283 (_2!8222 lt!518198))))))

(declare-fun b!1491452 () Bool)

(declare-fun res!672916 () Bool)

(assert (=> b!1491452 (=> (not res!672916) (not e!953961))))

(assert (=> b!1491452 (= res!672916 (= (totalInput!2252 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1491453 () Bool)

(declare-fun res!672915 () Bool)

(assert (=> b!1491453 (=> res!672915 e!953989)))

(assert (=> b!1491453 (= res!672915 (not (valid!1107 (_3!936 lt!518229))))))

(declare-fun b!1491454 () Bool)

(declare-fun res!672914 () Bool)

(assert (=> b!1491454 (=> (not res!672914) (not e!953968))))

(declare-fun isEmpty!9863 (List!15924) Bool)

(assert (=> b!1491454 (= res!672914 (not (isEmpty!9863 rules!1640)))))

(declare-fun b!1491455 () Bool)

(assert (=> b!1491455 (= e!953962 e!953993)))

(declare-fun res!672921 () Bool)

(assert (=> b!1491455 (=> res!672921 e!953993)))

(assert (=> b!1491455 (= res!672921 (not ((_ is Some!2900) (_1!8229 lt!518229))))))

(declare-fun maxPrefixZipperSequenceV3Mem!11 (LexerInterface!2473 List!15924 BalanceConc!10716 BalanceConc!10716 CacheUp!798 CacheDown!802 CacheFurthestNullable!224) tuple4!606)

(assert (=> b!1491455 (= lt!518229 (maxPrefixZipperSequenceV3Mem!11 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1491456 () Bool)

(assert (=> b!1491456 (= e!953983 e!953960)))

(assert (=> b!1491457 (= e!953999 (and e!953979 tp!424617))))

(declare-fun b!1491458 () Bool)

(declare-fun tp!424622 () Bool)

(assert (=> b!1491458 (= e!953966 (and e!953986 tp!424622))))

(declare-fun b!1491459 () Bool)

(assert (=> b!1491459 (= e!953989 (= (list!6282 (_1!8222 lt!518213)) lt!518200))))

(declare-fun e!953991 () Bool)

(assert (=> b!1491460 (= e!953997 (and e!953991 tp!424612))))

(declare-fun b!1491461 () Bool)

(declare-fun lt!518222 () MutLongMap!1404)

(assert (=> b!1491461 (= e!953991 (and e!953965 ((_ is LongMap!1404) lt!518222)))))

(assert (=> b!1491461 (= lt!518222 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))

(declare-fun tp!424607 () Bool)

(declare-fun tp!424630 () Bool)

(declare-fun array_inv!1607 (array!4956) Bool)

(assert (=> b!1491462 (= e!953971 (and tp!424616 tp!424630 tp!424607 (array_inv!1605 (_keys!1700 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) (array_inv!1607 (_values!1685 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) e!953992))))

(declare-fun b!1491463 () Bool)

(declare-fun res!672926 () Bool)

(assert (=> b!1491463 (=> res!672926 e!953989)))

(declare-fun valid!1109 (CacheUp!798) Bool)

(assert (=> b!1491463 (= res!672926 (not (valid!1109 (_2!8229 lt!518229))))))

(declare-fun b!1491464 () Bool)

(declare-fun tp!424613 () Bool)

(assert (=> b!1491464 (= e!953988 (and tp!424613 mapRes!6671))))

(declare-fun condMapEmpty!6669 () Bool)

(declare-fun mapDefault!6670 () List!15920)

(assert (=> b!1491464 (= condMapEmpty!6669 (= (arr!2212 (_values!1683 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15920)) mapDefault!6670)))))

(declare-fun b!1491465 () Bool)

(assert (=> b!1491465 (= e!953964 e!953967)))

(declare-fun res!672925 () Bool)

(assert (=> b!1491465 (=> (not res!672925) (not e!953967))))

(declare-fun lt!518223 () List!15923)

(assert (=> b!1491465 (= res!672925 (= lt!518223 lt!518202))))

(assert (=> b!1491465 (= lt!518202 (list!6282 acc!392))))

(assert (=> b!1491465 (= lt!518223 (list!6282 (_1!8222 lt!518198)))))

(assert (=> b!1491465 (= lt!518198 (lexRec!310 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1491466 () Bool)

(declare-fun res!672920 () Bool)

(assert (=> b!1491466 (=> (not res!672920) (not e!953961))))

(assert (=> b!1491466 (= res!672920 (valid!1109 cacheUp!616))))

(declare-fun b!1491467 () Bool)

(declare-fun tp!424608 () Bool)

(assert (=> b!1491467 (= e!953975 (and (inv!21063 (c!244323 totalInput!458)) tp!424608))))

(declare-fun tp!424620 () Bool)

(declare-fun tp!424624 () Bool)

(declare-fun array_inv!1608 (array!4954) Bool)

(assert (=> b!1491468 (= e!954000 (and tp!424619 tp!424624 tp!424620 (array_inv!1605 (_keys!1699 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) (array_inv!1608 (_values!1684 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) e!953996))))

(assert (= (and start!139846 res!672912) b!1491454))

(assert (= (and b!1491454 res!672914) b!1491420))

(assert (= (and b!1491420 res!672919) b!1491446))

(assert (= (and b!1491446 res!672923) b!1491465))

(assert (= (and b!1491465 res!672925) b!1491451))

(assert (= (and b!1491451 res!672917) b!1491418))

(assert (= (and b!1491418 res!672927) b!1491425))

(assert (= (and b!1491425 res!672924) b!1491466))

(assert (= (and b!1491466 res!672920) b!1491417))

(assert (= (and b!1491417 res!672929) b!1491428))

(assert (= (and b!1491428 res!672928) b!1491452))

(assert (= (and b!1491452 res!672916) b!1491447))

(assert (= (and b!1491447 (not res!672918)) b!1491455))

(assert (= (and b!1491455 (not res!672921)) b!1491419))

(assert (= (and b!1491419 c!244320) b!1491437))

(assert (= (and b!1491419 (not c!244320)) b!1491427))

(assert (= (and b!1491419 c!244321) b!1491442))

(assert (= (and b!1491419 (not c!244321)) b!1491433))

(assert (= (and b!1491419 (not res!672913)) b!1491424))

(assert (= (and b!1491424 (not res!672911)) b!1491463))

(assert (= (and b!1491463 (not res!672926)) b!1491453))

(assert (= (and b!1491453 (not res!672915)) b!1491435))

(assert (= (and b!1491435 (not res!672922)) b!1491459))

(assert (= start!139846 b!1491430))

(assert (= (and b!1491450 condMapEmpty!6670) mapIsEmpty!6671))

(assert (= (and b!1491450 (not condMapEmpty!6670)) mapNonEmpty!6669))

(assert (= b!1491462 b!1491450))

(assert (= b!1491438 b!1491462))

(assert (= b!1491445 b!1491438))

(assert (= (and b!1491429 ((_ is LongMap!1406) (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))) b!1491445))

(assert (= b!1491457 b!1491429))

(assert (= (and b!1491443 ((_ is HashMap!1350) (cache!1731 cacheUp!616))) b!1491457))

(assert (= start!139846 b!1491443))

(assert (= (and b!1491464 condMapEmpty!6669) mapIsEmpty!6670))

(assert (= (and b!1491464 (not condMapEmpty!6669)) mapNonEmpty!6670))

(assert (= b!1491423 b!1491464))

(assert (= b!1491456 b!1491423))

(assert (= b!1491434 b!1491456))

(assert (= (and b!1491461 ((_ is LongMap!1404) (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))) b!1491434))

(assert (= b!1491460 b!1491461))

(assert (= (and b!1491439 ((_ is HashMap!1348) (cache!1729 cacheDown!629))) b!1491460))

(assert (= start!139846 b!1491439))

(assert (= start!139846 b!1491449))

(assert (= start!139846 b!1491422))

(assert (= b!1491432 b!1491444))

(assert (= b!1491458 b!1491432))

(assert (= (and start!139846 ((_ is Cons!15856) rules!1640)) b!1491458))

(assert (= (and b!1491448 condMapEmpty!6671) mapIsEmpty!6669))

(assert (= (and b!1491448 (not condMapEmpty!6671)) mapNonEmpty!6671))

(assert (= b!1491468 b!1491448))

(assert (= b!1491441 b!1491468))

(assert (= b!1491421 b!1491441))

(assert (= (and b!1491431 ((_ is LongMap!1405) (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))) b!1491421))

(assert (= b!1491436 b!1491431))

(assert (= (and b!1491426 ((_ is HashMap!1349) (cache!1730 cacheFurthestNullable!64))) b!1491436))

(assert (= b!1491426 b!1491440))

(assert (= start!139846 b!1491426))

(assert (= start!139846 b!1491467))

(declare-fun m!1741907 () Bool)

(assert (=> b!1491466 m!1741907))

(declare-fun m!1741909 () Bool)

(assert (=> b!1491447 m!1741909))

(declare-fun m!1741911 () Bool)

(assert (=> b!1491447 m!1741911))

(declare-fun m!1741913 () Bool)

(assert (=> b!1491447 m!1741913))

(declare-fun m!1741915 () Bool)

(assert (=> b!1491446 m!1741915))

(declare-fun m!1741917 () Bool)

(assert (=> b!1491446 m!1741917))

(declare-fun m!1741919 () Bool)

(assert (=> b!1491446 m!1741919))

(declare-fun m!1741921 () Bool)

(assert (=> b!1491446 m!1741921))

(declare-fun m!1741923 () Bool)

(assert (=> b!1491454 m!1741923))

(declare-fun m!1741925 () Bool)

(assert (=> b!1491437 m!1741925))

(declare-fun m!1741927 () Bool)

(assert (=> b!1491437 m!1741927))

(declare-fun m!1741929 () Bool)

(assert (=> b!1491468 m!1741929))

(declare-fun m!1741931 () Bool)

(assert (=> b!1491468 m!1741931))

(declare-fun m!1741933 () Bool)

(assert (=> b!1491449 m!1741933))

(declare-fun m!1741935 () Bool)

(assert (=> b!1491422 m!1741935))

(declare-fun m!1741937 () Bool)

(assert (=> start!139846 m!1741937))

(declare-fun m!1741939 () Bool)

(assert (=> start!139846 m!1741939))

(declare-fun m!1741941 () Bool)

(assert (=> start!139846 m!1741941))

(declare-fun m!1741943 () Bool)

(assert (=> start!139846 m!1741943))

(declare-fun m!1741945 () Bool)

(assert (=> start!139846 m!1741945))

(declare-fun m!1741947 () Bool)

(assert (=> start!139846 m!1741947))

(declare-fun m!1741949 () Bool)

(assert (=> start!139846 m!1741949))

(declare-fun m!1741951 () Bool)

(assert (=> b!1491417 m!1741951))

(declare-fun m!1741953 () Bool)

(assert (=> b!1491453 m!1741953))

(declare-fun m!1741955 () Bool)

(assert (=> b!1491418 m!1741955))

(declare-fun m!1741957 () Bool)

(assert (=> b!1491418 m!1741957))

(declare-fun m!1741959 () Bool)

(assert (=> b!1491418 m!1741959))

(assert (=> b!1491418 m!1741955))

(declare-fun m!1741961 () Bool)

(assert (=> b!1491418 m!1741961))

(declare-fun m!1741963 () Bool)

(assert (=> b!1491418 m!1741963))

(declare-fun m!1741965 () Bool)

(assert (=> b!1491424 m!1741965))

(declare-fun m!1741967 () Bool)

(assert (=> b!1491432 m!1741967))

(declare-fun m!1741969 () Bool)

(assert (=> b!1491432 m!1741969))

(declare-fun m!1741971 () Bool)

(assert (=> b!1491428 m!1741971))

(declare-fun m!1741973 () Bool)

(assert (=> b!1491442 m!1741973))

(declare-fun m!1741975 () Bool)

(assert (=> b!1491442 m!1741975))

(declare-fun m!1741977 () Bool)

(assert (=> b!1491467 m!1741977))

(declare-fun m!1741979 () Bool)

(assert (=> b!1491419 m!1741979))

(declare-fun m!1741981 () Bool)

(assert (=> b!1491419 m!1741981))

(declare-fun m!1741983 () Bool)

(assert (=> b!1491419 m!1741983))

(declare-fun m!1741985 () Bool)

(assert (=> b!1491419 m!1741985))

(declare-fun m!1741987 () Bool)

(assert (=> b!1491419 m!1741987))

(declare-fun m!1741989 () Bool)

(assert (=> b!1491419 m!1741989))

(declare-fun m!1741991 () Bool)

(assert (=> b!1491419 m!1741991))

(declare-fun m!1741993 () Bool)

(assert (=> b!1491419 m!1741993))

(declare-fun m!1741995 () Bool)

(assert (=> b!1491419 m!1741995))

(declare-fun m!1741997 () Bool)

(assert (=> b!1491419 m!1741997))

(declare-fun m!1741999 () Bool)

(assert (=> b!1491419 m!1741999))

(declare-fun m!1742001 () Bool)

(assert (=> b!1491419 m!1742001))

(declare-fun m!1742003 () Bool)

(assert (=> b!1491419 m!1742003))

(declare-fun m!1742005 () Bool)

(assert (=> b!1491419 m!1742005))

(declare-fun m!1742007 () Bool)

(assert (=> b!1491419 m!1742007))

(declare-fun m!1742009 () Bool)

(assert (=> b!1491419 m!1742009))

(declare-fun m!1742011 () Bool)

(assert (=> b!1491419 m!1742011))

(declare-fun m!1742013 () Bool)

(assert (=> b!1491419 m!1742013))

(declare-fun m!1742015 () Bool)

(assert (=> b!1491419 m!1742015))

(assert (=> b!1491419 m!1742007))

(declare-fun m!1742017 () Bool)

(assert (=> b!1491419 m!1742017))

(declare-fun m!1742019 () Bool)

(assert (=> b!1491419 m!1742019))

(declare-fun m!1742021 () Bool)

(assert (=> b!1491419 m!1742021))

(declare-fun m!1742023 () Bool)

(assert (=> b!1491419 m!1742023))

(declare-fun m!1742025 () Bool)

(assert (=> b!1491419 m!1742025))

(assert (=> b!1491419 m!1742017))

(declare-fun m!1742027 () Bool)

(assert (=> b!1491419 m!1742027))

(assert (=> b!1491419 m!1742023))

(declare-fun m!1742029 () Bool)

(assert (=> b!1491419 m!1742029))

(assert (=> b!1491419 m!1742003))

(assert (=> b!1491419 m!1741989))

(declare-fun m!1742031 () Bool)

(assert (=> b!1491419 m!1742031))

(declare-fun m!1742033 () Bool)

(assert (=> b!1491419 m!1742033))

(declare-fun m!1742035 () Bool)

(assert (=> b!1491419 m!1742035))

(declare-fun m!1742037 () Bool)

(assert (=> b!1491430 m!1742037))

(declare-fun m!1742039 () Bool)

(assert (=> b!1491420 m!1742039))

(declare-fun m!1742041 () Bool)

(assert (=> b!1491451 m!1742041))

(assert (=> b!1491451 m!1742041))

(declare-fun m!1742043 () Bool)

(assert (=> b!1491451 m!1742043))

(declare-fun m!1742045 () Bool)

(assert (=> b!1491425 m!1742045))

(declare-fun m!1742047 () Bool)

(assert (=> b!1491425 m!1742047))

(declare-fun m!1742049 () Bool)

(assert (=> b!1491423 m!1742049))

(declare-fun m!1742051 () Bool)

(assert (=> b!1491423 m!1742051))

(declare-fun m!1742053 () Bool)

(assert (=> b!1491465 m!1742053))

(declare-fun m!1742055 () Bool)

(assert (=> b!1491465 m!1742055))

(declare-fun m!1742057 () Bool)

(assert (=> b!1491465 m!1742057))

(declare-fun m!1742059 () Bool)

(assert (=> mapNonEmpty!6669 m!1742059))

(declare-fun m!1742061 () Bool)

(assert (=> b!1491440 m!1742061))

(declare-fun m!1742063 () Bool)

(assert (=> b!1491426 m!1742063))

(declare-fun m!1742065 () Bool)

(assert (=> b!1491459 m!1742065))

(declare-fun m!1742067 () Bool)

(assert (=> b!1491462 m!1742067))

(declare-fun m!1742069 () Bool)

(assert (=> b!1491462 m!1742069))

(declare-fun m!1742071 () Bool)

(assert (=> b!1491455 m!1742071))

(declare-fun m!1742073 () Bool)

(assert (=> mapNonEmpty!6670 m!1742073))

(declare-fun m!1742075 () Bool)

(assert (=> b!1491463 m!1742075))

(declare-fun m!1742077 () Bool)

(assert (=> mapNonEmpty!6671 m!1742077))

(check-sat (not b!1491467) (not b!1491418) (not b!1491442) (not b!1491448) (not mapNonEmpty!6669) b_and!103763 (not b_next!39437) (not b!1491422) (not b!1491420) (not b!1491449) (not b_next!39427) (not mapNonEmpty!6670) (not b_next!39433) b_and!103777 b_and!103775 (not b!1491426) (not b!1491437) (not b!1491428) (not b_next!39431) (not b_next!39429) b_and!103765 (not b!1491454) (not b!1491463) (not b_next!39441) (not b!1491466) b_and!103773 (not b_next!39435) (not b!1491451) (not b!1491423) (not b!1491462) (not b!1491425) (not b!1491417) (not b!1491450) (not b!1491468) (not b!1491446) (not b_next!39439) b_and!103767 (not b!1491447) (not b!1491424) b_and!103771 (not b!1491465) (not b!1491458) (not b!1491464) (not b!1491459) (not b!1491455) (not b!1491440) (not mapNonEmpty!6671) (not b!1491453) (not b!1491430) b_and!103769 (not b!1491419) (not start!139846) (not b!1491432))
(check-sat (not b_next!39431) (not b_next!39441) b_and!103763 (not b_next!39437) b_and!103771 b_and!103769 (not b_next!39427) (not b_next!39433) b_and!103777 b_and!103775 (not b_next!39429) b_and!103765 b_and!103773 (not b_next!39435) (not b_next!39439) b_and!103767)
(get-model)

(declare-fun d!438198 () Bool)

(declare-fun c!244327 () Bool)

(assert (=> d!438198 (= c!244327 ((_ is Node!5388) (c!244324 acc!392)))))

(declare-fun e!954005 () Bool)

(assert (=> d!438198 (= (inv!21069 (c!244324 acc!392)) e!954005)))

(declare-fun b!1491475 () Bool)

(declare-fun inv!21071 (Conc!5388) Bool)

(assert (=> b!1491475 (= e!954005 (inv!21071 (c!244324 acc!392)))))

(declare-fun b!1491476 () Bool)

(declare-fun e!954006 () Bool)

(assert (=> b!1491476 (= e!954005 e!954006)))

(declare-fun res!672934 () Bool)

(assert (=> b!1491476 (= res!672934 (not ((_ is Leaf!8000) (c!244324 acc!392))))))

(assert (=> b!1491476 (=> res!672934 e!954006)))

(declare-fun b!1491477 () Bool)

(declare-fun inv!21072 (Conc!5388) Bool)

(assert (=> b!1491477 (= e!954006 (inv!21072 (c!244324 acc!392)))))

(assert (= (and d!438198 c!244327) b!1491475))

(assert (= (and d!438198 (not c!244327)) b!1491476))

(assert (= (and b!1491476 (not res!672934)) b!1491477))

(declare-fun m!1742079 () Bool)

(assert (=> b!1491475 m!1742079))

(declare-fun m!1742081 () Bool)

(assert (=> b!1491477 m!1742081))

(assert (=> b!1491430 d!438198))

(declare-fun d!438200 () Bool)

(declare-fun validCacheMapFurthestNullable!39 (MutableMap!1349 BalanceConc!10716) Bool)

(assert (=> d!438200 (= (valid!1108 cacheFurthestNullable!64) (validCacheMapFurthestNullable!39 (cache!1730 cacheFurthestNullable!64) (totalInput!2252 cacheFurthestNullable!64)))))

(declare-fun bs!350994 () Bool)

(assert (= bs!350994 d!438200))

(declare-fun m!1742083 () Bool)

(assert (=> bs!350994 m!1742083))

(assert (=> b!1491428 d!438200))

(declare-fun d!438202 () Bool)

(assert (=> d!438202 (= (array_inv!1605 (_keys!1699 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) (bvsge (size!12824 (_keys!1699 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491468 d!438202))

(declare-fun d!438204 () Bool)

(assert (=> d!438204 (= (array_inv!1608 (_values!1684 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) (bvsge (size!12826 (_values!1684 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491468 d!438204))

(declare-fun d!438206 () Bool)

(declare-fun e!954009 () Bool)

(assert (=> d!438206 e!954009))

(declare-fun res!672937 () Bool)

(assert (=> d!438206 (=> res!672937 e!954009)))

(declare-fun lt!518234 () Bool)

(assert (=> d!438206 (= res!672937 (not lt!518234))))

(declare-fun drop!751 (List!15922 Int) List!15922)

(declare-fun size!12828 (List!15922) Int)

(assert (=> d!438206 (= lt!518234 (= lt!518221 (drop!751 lt!518216 (- (size!12828 lt!518216) (size!12828 lt!518221)))))))

(assert (=> d!438206 (= (isSuffix!284 lt!518221 lt!518216) lt!518234)))

(declare-fun b!1491480 () Bool)

(assert (=> b!1491480 (= e!954009 (>= (size!12828 lt!518216) (size!12828 lt!518221)))))

(assert (= (and d!438206 (not res!672937)) b!1491480))

(declare-fun m!1742085 () Bool)

(assert (=> d!438206 m!1742085))

(declare-fun m!1742087 () Bool)

(assert (=> d!438206 m!1742087))

(declare-fun m!1742089 () Bool)

(assert (=> d!438206 m!1742089))

(assert (=> b!1491480 m!1742085))

(assert (=> b!1491480 m!1742087))

(assert (=> b!1491447 d!438206))

(declare-fun d!438208 () Bool)

(declare-fun e!954010 () Bool)

(assert (=> d!438208 e!954010))

(declare-fun res!672938 () Bool)

(assert (=> d!438208 (=> res!672938 e!954010)))

(declare-fun lt!518235 () Bool)

(assert (=> d!438208 (= res!672938 (not lt!518235))))

(assert (=> d!438208 (= lt!518235 (= lt!518221 (drop!751 lt!518220 (- (size!12828 lt!518220) (size!12828 lt!518221)))))))

(assert (=> d!438208 (= (isSuffix!284 lt!518221 lt!518220) lt!518235)))

(declare-fun b!1491481 () Bool)

(assert (=> b!1491481 (= e!954010 (>= (size!12828 lt!518220) (size!12828 lt!518221)))))

(assert (= (and d!438208 (not res!672938)) b!1491481))

(declare-fun m!1742091 () Bool)

(assert (=> d!438208 m!1742091))

(assert (=> d!438208 m!1742087))

(declare-fun m!1742093 () Bool)

(assert (=> d!438208 m!1742093))

(assert (=> b!1491481 m!1742091))

(assert (=> b!1491481 m!1742087))

(assert (=> b!1491447 d!438208))

(declare-fun d!438210 () Bool)

(assert (=> d!438210 (isSuffix!284 lt!518221 (++!4275 lt!518199 lt!518221))))

(declare-fun lt!518238 () Unit!25653)

(declare-fun choose!9096 (List!15922 List!15922) Unit!25653)

(assert (=> d!438210 (= lt!518238 (choose!9096 lt!518199 lt!518221))))

(assert (=> d!438210 (= (lemmaConcatTwoListThenFSndIsSuffix!262 lt!518199 lt!518221) lt!518238)))

(declare-fun bs!350995 () Bool)

(assert (= bs!350995 d!438210))

(assert (=> bs!350995 m!1741915))

(assert (=> bs!350995 m!1741915))

(declare-fun m!1742095 () Bool)

(assert (=> bs!350995 m!1742095))

(declare-fun m!1742097 () Bool)

(assert (=> bs!350995 m!1742097))

(assert (=> b!1491447 d!438210))

(declare-fun d!438212 () Bool)

(declare-fun isBalanced!1591 (Conc!5387) Bool)

(assert (=> d!438212 (= (inv!21064 treated!70) (isBalanced!1591 (c!244323 treated!70)))))

(declare-fun bs!350996 () Bool)

(assert (= bs!350996 d!438212))

(declare-fun m!1742099 () Bool)

(assert (=> bs!350996 m!1742099))

(assert (=> start!139846 d!438212))

(declare-fun d!438214 () Bool)

(assert (=> d!438214 (= (inv!21064 input!1102) (isBalanced!1591 (c!244323 input!1102)))))

(declare-fun bs!350997 () Bool)

(assert (= bs!350997 d!438214))

(declare-fun m!1742101 () Bool)

(assert (=> bs!350997 m!1742101))

(assert (=> start!139846 d!438214))

(declare-fun d!438216 () Bool)

(declare-fun res!672941 () Bool)

(declare-fun e!954013 () Bool)

(assert (=> d!438216 (=> (not res!672941) (not e!954013))))

(assert (=> d!438216 (= res!672941 ((_ is HashMap!1349) (cache!1730 cacheFurthestNullable!64)))))

(assert (=> d!438216 (= (inv!21068 cacheFurthestNullable!64) e!954013)))

(declare-fun b!1491484 () Bool)

(assert (=> b!1491484 (= e!954013 (validCacheMapFurthestNullable!39 (cache!1730 cacheFurthestNullable!64) (totalInput!2252 cacheFurthestNullable!64)))))

(assert (= (and d!438216 res!672941) b!1491484))

(assert (=> b!1491484 m!1742083))

(assert (=> start!139846 d!438216))

(declare-fun d!438218 () Bool)

(declare-fun res!672944 () Bool)

(declare-fun e!954016 () Bool)

(assert (=> d!438218 (=> (not res!672944) (not e!954016))))

(assert (=> d!438218 (= res!672944 ((_ is HashMap!1348) (cache!1729 cacheDown!629)))))

(assert (=> d!438218 (= (inv!21067 cacheDown!629) e!954016)))

(declare-fun b!1491487 () Bool)

(declare-fun validCacheMapDown!126 (MutableMap!1348) Bool)

(assert (=> b!1491487 (= e!954016 (validCacheMapDown!126 (cache!1729 cacheDown!629)))))

(assert (= (and d!438218 res!672944) b!1491487))

(declare-fun m!1742103 () Bool)

(assert (=> b!1491487 m!1742103))

(assert (=> start!139846 d!438218))

(declare-fun d!438220 () Bool)

(assert (=> d!438220 (= (inv!21064 totalInput!458) (isBalanced!1591 (c!244323 totalInput!458)))))

(declare-fun bs!350998 () Bool)

(assert (= bs!350998 d!438220))

(declare-fun m!1742105 () Bool)

(assert (=> bs!350998 m!1742105))

(assert (=> start!139846 d!438220))

(declare-fun d!438222 () Bool)

(declare-fun isBalanced!1592 (Conc!5388) Bool)

(assert (=> d!438222 (= (inv!21065 acc!392) (isBalanced!1592 (c!244324 acc!392)))))

(declare-fun bs!350999 () Bool)

(assert (= bs!350999 d!438222))

(declare-fun m!1742107 () Bool)

(assert (=> bs!350999 m!1742107))

(assert (=> start!139846 d!438222))

(declare-fun d!438224 () Bool)

(declare-fun res!672947 () Bool)

(declare-fun e!954019 () Bool)

(assert (=> d!438224 (=> (not res!672947) (not e!954019))))

(assert (=> d!438224 (= res!672947 ((_ is HashMap!1350) (cache!1731 cacheUp!616)))))

(assert (=> d!438224 (= (inv!21066 cacheUp!616) e!954019)))

(declare-fun b!1491490 () Bool)

(declare-fun validCacheMapUp!126 (MutableMap!1350) Bool)

(assert (=> b!1491490 (= e!954019 (validCacheMapUp!126 (cache!1731 cacheUp!616)))))

(assert (= (and d!438224 res!672947) b!1491490))

(declare-fun m!1742109 () Bool)

(assert (=> b!1491490 m!1742109))

(assert (=> start!139846 d!438224))

(declare-fun d!438226 () Bool)

(assert (=> d!438226 (= (isEmpty!9862 (list!6283 (_2!8222 lt!518198))) ((_ is Nil!15854) (list!6283 (_2!8222 lt!518198))))))

(assert (=> b!1491451 d!438226))

(declare-fun d!438228 () Bool)

(declare-fun list!6284 (Conc!5387) List!15922)

(assert (=> d!438228 (= (list!6283 (_2!8222 lt!518198)) (list!6284 (c!244323 (_2!8222 lt!518198))))))

(declare-fun bs!351000 () Bool)

(assert (= bs!351000 d!438228))

(declare-fun m!1742111 () Bool)

(assert (=> bs!351000 m!1742111))

(assert (=> b!1491451 d!438228))

(declare-fun d!438230 () Bool)

(assert (=> d!438230 (= (inv!21060 (tag!3082 (h!21257 rules!1640))) (= (mod (str.len (value!89972 (tag!3082 (h!21257 rules!1640)))) 2) 0))))

(assert (=> b!1491432 d!438230))

(declare-fun d!438232 () Bool)

(declare-fun res!672950 () Bool)

(declare-fun e!954022 () Bool)

(assert (=> d!438232 (=> (not res!672950) (not e!954022))))

(declare-fun semiInverseModEq!1062 (Int Int) Bool)

(assert (=> d!438232 (= res!672950 (semiInverseModEq!1062 (toChars!4020 (transformation!2818 (h!21257 rules!1640))) (toValue!4161 (transformation!2818 (h!21257 rules!1640)))))))

(assert (=> d!438232 (= (inv!21070 (transformation!2818 (h!21257 rules!1640))) e!954022)))

(declare-fun b!1491493 () Bool)

(declare-fun equivClasses!1021 (Int Int) Bool)

(assert (=> b!1491493 (= e!954022 (equivClasses!1021 (toChars!4020 (transformation!2818 (h!21257 rules!1640))) (toValue!4161 (transformation!2818 (h!21257 rules!1640)))))))

(assert (= (and d!438232 res!672950) b!1491493))

(declare-fun m!1742113 () Bool)

(assert (=> d!438232 m!1742113))

(declare-fun m!1742115 () Bool)

(assert (=> b!1491493 m!1742115))

(assert (=> b!1491432 d!438232))

(declare-fun d!438234 () Bool)

(declare-fun c!244330 () Bool)

(assert (=> d!438234 (= c!244330 ((_ is Node!5387) (c!244323 input!1102)))))

(declare-fun e!954027 () Bool)

(assert (=> d!438234 (= (inv!21063 (c!244323 input!1102)) e!954027)))

(declare-fun b!1491500 () Bool)

(declare-fun inv!21073 (Conc!5387) Bool)

(assert (=> b!1491500 (= e!954027 (inv!21073 (c!244323 input!1102)))))

(declare-fun b!1491501 () Bool)

(declare-fun e!954028 () Bool)

(assert (=> b!1491501 (= e!954027 e!954028)))

(declare-fun res!672953 () Bool)

(assert (=> b!1491501 (= res!672953 (not ((_ is Leaf!7999) (c!244323 input!1102))))))

(assert (=> b!1491501 (=> res!672953 e!954028)))

(declare-fun b!1491502 () Bool)

(declare-fun inv!21074 (Conc!5387) Bool)

(assert (=> b!1491502 (= e!954028 (inv!21074 (c!244323 input!1102)))))

(assert (= (and d!438234 c!244330) b!1491500))

(assert (= (and d!438234 (not c!244330)) b!1491501))

(assert (= (and b!1491501 (not res!672953)) b!1491502))

(declare-fun m!1742117 () Bool)

(assert (=> b!1491500 m!1742117))

(declare-fun m!1742119 () Bool)

(assert (=> b!1491502 m!1742119))

(assert (=> b!1491449 d!438234))

(declare-fun d!438236 () Bool)

(assert (=> d!438236 (= (list!6283 (_2!8222 lt!518212)) (list!6284 (c!244323 (_2!8222 lt!518212))))))

(declare-fun bs!351001 () Bool)

(assert (= bs!351001 d!438236))

(declare-fun m!1742121 () Bool)

(assert (=> bs!351001 m!1742121))

(assert (=> b!1491425 d!438236))

(declare-fun d!438238 () Bool)

(assert (=> d!438238 (= (list!6283 (_2!8222 lt!518203)) (list!6284 (c!244323 (_2!8222 lt!518203))))))

(declare-fun bs!351002 () Bool)

(assert (= bs!351002 d!438238))

(declare-fun m!1742123 () Bool)

(assert (=> bs!351002 m!1742123))

(assert (=> b!1491425 d!438238))

(declare-fun d!438240 () Bool)

(assert (=> d!438240 (= (valid!1108 (_4!303 lt!518229)) (validCacheMapFurthestNullable!39 (cache!1730 (_4!303 lt!518229)) (totalInput!2252 (_4!303 lt!518229))))))

(declare-fun bs!351003 () Bool)

(assert (= bs!351003 d!438240))

(declare-fun m!1742125 () Bool)

(assert (=> bs!351003 m!1742125))

(assert (=> b!1491424 d!438240))

(declare-fun d!438242 () Bool)

(assert (=> d!438242 (= (valid!1109 (_2!8229 lt!518229)) (validCacheMapUp!126 (cache!1731 (_2!8229 lt!518229))))))

(declare-fun bs!351004 () Bool)

(assert (= bs!351004 d!438242))

(declare-fun m!1742127 () Bool)

(assert (=> bs!351004 m!1742127))

(assert (=> b!1491463 d!438242))

(declare-fun d!438244 () Bool)

(declare-fun e!954031 () Bool)

(assert (=> d!438244 e!954031))

(declare-fun res!672956 () Bool)

(assert (=> d!438244 (=> (not res!672956) (not e!954031))))

(declare-fun prepend!442 (Conc!5388 Token!5298) Conc!5388)

(assert (=> d!438244 (= res!672956 (isBalanced!1592 (prepend!442 (c!244324 (_1!8222 lt!518219)) (_1!8223 (v!22679 lt!518211)))))))

(declare-fun lt!518241 () BalanceConc!10718)

(assert (=> d!438244 (= lt!518241 (BalanceConc!10719 (prepend!442 (c!244324 (_1!8222 lt!518219)) (_1!8223 (v!22679 lt!518211)))))))

(assert (=> d!438244 (= (prepend!441 (_1!8222 lt!518219) (_1!8223 (v!22679 lt!518211))) lt!518241)))

(declare-fun b!1491505 () Bool)

(assert (=> b!1491505 (= e!954031 (= (list!6282 lt!518241) (Cons!15855 (_1!8223 (v!22679 lt!518211)) (list!6282 (_1!8222 lt!518219)))))))

(assert (= (and d!438244 res!672956) b!1491505))

(declare-fun m!1742129 () Bool)

(assert (=> d!438244 m!1742129))

(assert (=> d!438244 m!1742129))

(declare-fun m!1742131 () Bool)

(assert (=> d!438244 m!1742131))

(declare-fun m!1742133 () Bool)

(assert (=> b!1491505 m!1742133))

(declare-fun m!1742135 () Bool)

(assert (=> b!1491505 m!1742135))

(assert (=> b!1491442 d!438244))

(declare-fun b!1491520 () Bool)

(declare-fun e!954042 () Bool)

(declare-fun lt!518248 () tuple2!14574)

(assert (=> b!1491520 (= e!954042 (= (list!6283 (_2!8222 lt!518248)) (list!6283 (_2!8223 (v!22679 lt!518211)))))))

(declare-fun e!954040 () Bool)

(declare-fun b!1491521 () Bool)

(assert (=> b!1491521 (= e!954040 (= (list!6283 (_2!8222 lt!518248)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 lt!518211)))))))))

(declare-fun b!1491522 () Bool)

(declare-fun e!954043 () tuple2!14574)

(assert (=> b!1491522 (= e!954043 (tuple2!14575 (BalanceConc!10719 Empty!5388) (_2!8223 (v!22679 lt!518211))))))

(declare-fun b!1491523 () Bool)

(declare-fun e!954041 () Bool)

(declare-fun isEmpty!9864 (BalanceConc!10718) Bool)

(assert (=> b!1491523 (= e!954041 (not (isEmpty!9864 (_1!8222 lt!518248))))))

(declare-fun b!1491524 () Bool)

(declare-fun lt!518250 () tuple2!14574)

(declare-fun lt!518249 () Option!2901)

(assert (=> b!1491524 (= e!954043 (tuple2!14575 (prepend!441 (_1!8222 lt!518250) (_1!8223 (v!22679 lt!518249))) (_2!8222 lt!518250)))))

(assert (=> b!1491524 (= lt!518250 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518249))))))

(declare-fun b!1491525 () Bool)

(assert (=> b!1491525 (= e!954042 e!954041)))

(declare-fun res!672965 () Bool)

(declare-fun size!12829 (BalanceConc!10716) Int)

(assert (=> b!1491525 (= res!672965 (< (size!12829 (_2!8222 lt!518248)) (size!12829 (_2!8223 (v!22679 lt!518211)))))))

(assert (=> b!1491525 (=> (not res!672965) (not e!954041))))

(declare-fun b!1491526 () Bool)

(declare-fun res!672963 () Bool)

(assert (=> b!1491526 (=> (not res!672963) (not e!954040))))

(assert (=> b!1491526 (= res!672963 (= (list!6282 (_1!8222 lt!518248)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 lt!518211)))))))))

(declare-fun d!438246 () Bool)

(assert (=> d!438246 e!954040))

(declare-fun res!672964 () Bool)

(assert (=> d!438246 (=> (not res!672964) (not e!954040))))

(assert (=> d!438246 (= res!672964 e!954042)))

(declare-fun c!244336 () Bool)

(declare-fun size!12830 (BalanceConc!10718) Int)

(assert (=> d!438246 (= c!244336 (> (size!12830 (_1!8222 lt!518248)) 0))))

(assert (=> d!438246 (= lt!518248 e!954043)))

(declare-fun c!244337 () Bool)

(assert (=> d!438246 (= c!244337 ((_ is Some!2900) lt!518249))))

(assert (=> d!438246 (= lt!518249 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518211))))))

(assert (=> d!438246 (= (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518211))) lt!518248)))

(assert (= (and d!438246 c!244337) b!1491524))

(assert (= (and d!438246 (not c!244337)) b!1491522))

(assert (= (and d!438246 c!244336) b!1491525))

(assert (= (and d!438246 (not c!244336)) b!1491520))

(assert (= (and b!1491525 res!672965) b!1491523))

(assert (= (and d!438246 res!672964) b!1491526))

(assert (= (and b!1491526 res!672963) b!1491521))

(declare-fun m!1742137 () Bool)

(assert (=> b!1491526 m!1742137))

(declare-fun m!1742139 () Bool)

(assert (=> b!1491526 m!1742139))

(assert (=> b!1491526 m!1742139))

(declare-fun m!1742141 () Bool)

(assert (=> b!1491526 m!1742141))

(declare-fun m!1742143 () Bool)

(assert (=> d!438246 m!1742143))

(declare-fun m!1742145 () Bool)

(assert (=> d!438246 m!1742145))

(declare-fun m!1742147 () Bool)

(assert (=> b!1491525 m!1742147))

(declare-fun m!1742149 () Bool)

(assert (=> b!1491525 m!1742149))

(declare-fun m!1742151 () Bool)

(assert (=> b!1491521 m!1742151))

(assert (=> b!1491521 m!1742139))

(assert (=> b!1491521 m!1742139))

(assert (=> b!1491521 m!1742141))

(declare-fun m!1742153 () Bool)

(assert (=> b!1491523 m!1742153))

(assert (=> b!1491520 m!1742151))

(assert (=> b!1491520 m!1742139))

(declare-fun m!1742155 () Bool)

(assert (=> b!1491524 m!1742155))

(declare-fun m!1742157 () Bool)

(assert (=> b!1491524 m!1742157))

(assert (=> b!1491442 d!438246))

(declare-fun d!438248 () Bool)

(declare-fun c!244338 () Bool)

(assert (=> d!438248 (= c!244338 ((_ is Node!5387) (c!244323 totalInput!458)))))

(declare-fun e!954044 () Bool)

(assert (=> d!438248 (= (inv!21063 (c!244323 totalInput!458)) e!954044)))

(declare-fun b!1491527 () Bool)

(assert (=> b!1491527 (= e!954044 (inv!21073 (c!244323 totalInput!458)))))

(declare-fun b!1491528 () Bool)

(declare-fun e!954045 () Bool)

(assert (=> b!1491528 (= e!954044 e!954045)))

(declare-fun res!672966 () Bool)

(assert (=> b!1491528 (= res!672966 (not ((_ is Leaf!7999) (c!244323 totalInput!458))))))

(assert (=> b!1491528 (=> res!672966 e!954045)))

(declare-fun b!1491529 () Bool)

(assert (=> b!1491529 (= e!954045 (inv!21074 (c!244323 totalInput!458)))))

(assert (= (and d!438248 c!244338) b!1491527))

(assert (= (and d!438248 (not c!244338)) b!1491528))

(assert (= (and b!1491528 (not res!672966)) b!1491529))

(declare-fun m!1742159 () Bool)

(assert (=> b!1491527 m!1742159))

(declare-fun m!1742161 () Bool)

(assert (=> b!1491529 m!1742161))

(assert (=> b!1491467 d!438248))

(declare-fun b!1491539 () Bool)

(declare-fun e!954050 () List!15922)

(assert (=> b!1491539 (= e!954050 (Cons!15854 (h!21255 lt!518199) (++!4275 (t!138177 lt!518199) lt!518221)))))

(declare-fun b!1491538 () Bool)

(assert (=> b!1491538 (= e!954050 lt!518221)))

(declare-fun d!438250 () Bool)

(declare-fun e!954051 () Bool)

(assert (=> d!438250 e!954051))

(declare-fun res!672972 () Bool)

(assert (=> d!438250 (=> (not res!672972) (not e!954051))))

(declare-fun lt!518253 () List!15922)

(declare-fun content!2290 (List!15922) (InoxSet C!8444))

(assert (=> d!438250 (= res!672972 (= (content!2290 lt!518253) ((_ map or) (content!2290 lt!518199) (content!2290 lt!518221))))))

(assert (=> d!438250 (= lt!518253 e!954050)))

(declare-fun c!244341 () Bool)

(assert (=> d!438250 (= c!244341 ((_ is Nil!15854) lt!518199))))

(assert (=> d!438250 (= (++!4275 lt!518199 lt!518221) lt!518253)))

(declare-fun b!1491540 () Bool)

(declare-fun res!672971 () Bool)

(assert (=> b!1491540 (=> (not res!672971) (not e!954051))))

(assert (=> b!1491540 (= res!672971 (= (size!12828 lt!518253) (+ (size!12828 lt!518199) (size!12828 lt!518221))))))

(declare-fun b!1491541 () Bool)

(assert (=> b!1491541 (= e!954051 (or (not (= lt!518221 Nil!15854)) (= lt!518253 lt!518199)))))

(assert (= (and d!438250 c!244341) b!1491538))

(assert (= (and d!438250 (not c!244341)) b!1491539))

(assert (= (and d!438250 res!672972) b!1491540))

(assert (= (and b!1491540 res!672971) b!1491541))

(declare-fun m!1742163 () Bool)

(assert (=> b!1491539 m!1742163))

(declare-fun m!1742165 () Bool)

(assert (=> d!438250 m!1742165))

(declare-fun m!1742167 () Bool)

(assert (=> d!438250 m!1742167))

(declare-fun m!1742169 () Bool)

(assert (=> d!438250 m!1742169))

(declare-fun m!1742171 () Bool)

(assert (=> b!1491540 m!1742171))

(declare-fun m!1742173 () Bool)

(assert (=> b!1491540 m!1742173))

(assert (=> b!1491540 m!1742087))

(assert (=> b!1491446 d!438250))

(declare-fun d!438252 () Bool)

(assert (=> d!438252 (= (list!6283 totalInput!458) (list!6284 (c!244323 totalInput!458)))))

(declare-fun bs!351005 () Bool)

(assert (= bs!351005 d!438252))

(declare-fun m!1742175 () Bool)

(assert (=> bs!351005 m!1742175))

(assert (=> b!1491446 d!438252))

(declare-fun d!438254 () Bool)

(assert (=> d!438254 (= (list!6283 input!1102) (list!6284 (c!244323 input!1102)))))

(declare-fun bs!351006 () Bool)

(assert (= bs!351006 d!438254))

(declare-fun m!1742177 () Bool)

(assert (=> bs!351006 m!1742177))

(assert (=> b!1491446 d!438254))

(declare-fun d!438256 () Bool)

(assert (=> d!438256 (= (list!6283 treated!70) (list!6284 (c!244323 treated!70)))))

(declare-fun bs!351007 () Bool)

(assert (= bs!351007 d!438256))

(declare-fun m!1742179 () Bool)

(assert (=> bs!351007 m!1742179))

(assert (=> b!1491446 d!438256))

(declare-fun d!438258 () Bool)

(declare-fun list!6285 (Conc!5388) List!15923)

(assert (=> d!438258 (= (list!6282 acc!392) (list!6285 (c!244324 acc!392)))))

(declare-fun bs!351008 () Bool)

(assert (= bs!351008 d!438258))

(declare-fun m!1742181 () Bool)

(assert (=> bs!351008 m!1742181))

(assert (=> b!1491465 d!438258))

(declare-fun d!438260 () Bool)

(assert (=> d!438260 (= (list!6282 (_1!8222 lt!518198)) (list!6285 (c!244324 (_1!8222 lt!518198))))))

(declare-fun bs!351009 () Bool)

(assert (= bs!351009 d!438260))

(declare-fun m!1742183 () Bool)

(assert (=> bs!351009 m!1742183))

(assert (=> b!1491465 d!438260))

(declare-fun b!1491542 () Bool)

(declare-fun e!954054 () Bool)

(declare-fun lt!518254 () tuple2!14574)

(assert (=> b!1491542 (= e!954054 (= (list!6283 (_2!8222 lt!518254)) (list!6283 treated!70)))))

(declare-fun e!954052 () Bool)

(declare-fun b!1491543 () Bool)

(assert (=> b!1491543 (= e!954052 (= (list!6283 (_2!8222 lt!518254)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 treated!70)))))))

(declare-fun b!1491544 () Bool)

(declare-fun e!954055 () tuple2!14574)

(assert (=> b!1491544 (= e!954055 (tuple2!14575 (BalanceConc!10719 Empty!5388) treated!70))))

(declare-fun b!1491545 () Bool)

(declare-fun e!954053 () Bool)

(assert (=> b!1491545 (= e!954053 (not (isEmpty!9864 (_1!8222 lt!518254))))))

(declare-fun b!1491546 () Bool)

(declare-fun lt!518256 () tuple2!14574)

(declare-fun lt!518255 () Option!2901)

(assert (=> b!1491546 (= e!954055 (tuple2!14575 (prepend!441 (_1!8222 lt!518256) (_1!8223 (v!22679 lt!518255))) (_2!8222 lt!518256)))))

(assert (=> b!1491546 (= lt!518256 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518255))))))

(declare-fun b!1491547 () Bool)

(assert (=> b!1491547 (= e!954054 e!954053)))

(declare-fun res!672975 () Bool)

(assert (=> b!1491547 (= res!672975 (< (size!12829 (_2!8222 lt!518254)) (size!12829 treated!70)))))

(assert (=> b!1491547 (=> (not res!672975) (not e!954053))))

(declare-fun b!1491548 () Bool)

(declare-fun res!672973 () Bool)

(assert (=> b!1491548 (=> (not res!672973) (not e!954052))))

(assert (=> b!1491548 (= res!672973 (= (list!6282 (_1!8222 lt!518254)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 treated!70)))))))

(declare-fun d!438262 () Bool)

(assert (=> d!438262 e!954052))

(declare-fun res!672974 () Bool)

(assert (=> d!438262 (=> (not res!672974) (not e!954052))))

(assert (=> d!438262 (= res!672974 e!954054)))

(declare-fun c!244342 () Bool)

(assert (=> d!438262 (= c!244342 (> (size!12830 (_1!8222 lt!518254)) 0))))

(assert (=> d!438262 (= lt!518254 e!954055)))

(declare-fun c!244343 () Bool)

(assert (=> d!438262 (= c!244343 ((_ is Some!2900) lt!518255))))

(assert (=> d!438262 (= lt!518255 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 treated!70))))

(assert (=> d!438262 (= (lexRec!310 thiss!13241 rules!1640 treated!70) lt!518254)))

(assert (= (and d!438262 c!244343) b!1491546))

(assert (= (and d!438262 (not c!244343)) b!1491544))

(assert (= (and d!438262 c!244342) b!1491547))

(assert (= (and d!438262 (not c!244342)) b!1491542))

(assert (= (and b!1491547 res!672975) b!1491545))

(assert (= (and d!438262 res!672974) b!1491548))

(assert (= (and b!1491548 res!672973) b!1491543))

(declare-fun m!1742185 () Bool)

(assert (=> b!1491548 m!1742185))

(assert (=> b!1491548 m!1741921))

(assert (=> b!1491548 m!1741921))

(declare-fun m!1742187 () Bool)

(assert (=> b!1491548 m!1742187))

(declare-fun m!1742189 () Bool)

(assert (=> d!438262 m!1742189))

(declare-fun m!1742191 () Bool)

(assert (=> d!438262 m!1742191))

(declare-fun m!1742193 () Bool)

(assert (=> b!1491547 m!1742193))

(declare-fun m!1742195 () Bool)

(assert (=> b!1491547 m!1742195))

(declare-fun m!1742197 () Bool)

(assert (=> b!1491543 m!1742197))

(assert (=> b!1491543 m!1741921))

(assert (=> b!1491543 m!1741921))

(assert (=> b!1491543 m!1742187))

(declare-fun m!1742199 () Bool)

(assert (=> b!1491545 m!1742199))

(assert (=> b!1491542 m!1742197))

(assert (=> b!1491542 m!1741921))

(declare-fun m!1742201 () Bool)

(assert (=> b!1491546 m!1742201))

(declare-fun m!1742203 () Bool)

(assert (=> b!1491546 m!1742203))

(assert (=> b!1491465 d!438262))

(declare-fun d!438264 () Bool)

(assert (=> d!438264 (= (inv!21064 (totalInput!2252 cacheFurthestNullable!64)) (isBalanced!1591 (c!244323 (totalInput!2252 cacheFurthestNullable!64))))))

(declare-fun bs!351010 () Bool)

(assert (= bs!351010 d!438264))

(declare-fun m!1742205 () Bool)

(assert (=> bs!351010 m!1742205))

(assert (=> b!1491426 d!438264))

(declare-fun d!438266 () Bool)

(assert (=> d!438266 (= (valid!1109 cacheUp!616) (validCacheMapUp!126 (cache!1731 cacheUp!616)))))

(declare-fun bs!351011 () Bool)

(assert (= bs!351011 d!438266))

(assert (=> bs!351011 m!1742109))

(assert (=> b!1491466 d!438266))

(declare-fun d!438268 () Bool)

(declare-fun res!672978 () Bool)

(declare-fun e!954058 () Bool)

(assert (=> d!438268 (=> (not res!672978) (not e!954058))))

(declare-fun rulesValid!1033 (LexerInterface!2473 List!15924) Bool)

(assert (=> d!438268 (= res!672978 (rulesValid!1033 thiss!13241 rules!1640))))

(assert (=> d!438268 (= (rulesInvariant!2255 thiss!13241 rules!1640) e!954058)))

(declare-fun b!1491551 () Bool)

(declare-datatypes ((List!15927 0))(
  ( (Nil!15859) (Cons!15859 (h!21260 String!18802) (t!138186 List!15927)) )
))
(declare-fun noDuplicateTag!1033 (LexerInterface!2473 List!15924 List!15927) Bool)

(assert (=> b!1491551 (= e!954058 (noDuplicateTag!1033 thiss!13241 rules!1640 Nil!15859))))

(assert (= (and d!438268 res!672978) b!1491551))

(declare-fun m!1742207 () Bool)

(assert (=> d!438268 m!1742207))

(declare-fun m!1742209 () Bool)

(assert (=> b!1491551 m!1742209))

(assert (=> b!1491420 d!438268))

(declare-fun d!438270 () Bool)

(assert (=> d!438270 (= (list!6282 (_1!8222 lt!518213)) (list!6285 (c!244324 (_1!8222 lt!518213))))))

(declare-fun bs!351012 () Bool)

(assert (= bs!351012 d!438270))

(declare-fun m!1742211 () Bool)

(assert (=> bs!351012 m!1742211))

(assert (=> b!1491459 d!438270))

(declare-fun d!438272 () Bool)

(declare-fun e!954059 () Bool)

(assert (=> d!438272 e!954059))

(declare-fun res!672979 () Bool)

(assert (=> d!438272 (=> (not res!672979) (not e!954059))))

(assert (=> d!438272 (= res!672979 (isBalanced!1592 (prepend!442 (c!244324 (_1!8222 lt!518228)) (_1!8223 (v!22679 lt!518210)))))))

(declare-fun lt!518257 () BalanceConc!10718)

(assert (=> d!438272 (= lt!518257 (BalanceConc!10719 (prepend!442 (c!244324 (_1!8222 lt!518228)) (_1!8223 (v!22679 lt!518210)))))))

(assert (=> d!438272 (= (prepend!441 (_1!8222 lt!518228) (_1!8223 (v!22679 lt!518210))) lt!518257)))

(declare-fun b!1491552 () Bool)

(assert (=> b!1491552 (= e!954059 (= (list!6282 lt!518257) (Cons!15855 (_1!8223 (v!22679 lt!518210)) (list!6282 (_1!8222 lt!518228)))))))

(assert (= (and d!438272 res!672979) b!1491552))

(declare-fun m!1742213 () Bool)

(assert (=> d!438272 m!1742213))

(assert (=> d!438272 m!1742213))

(declare-fun m!1742215 () Bool)

(assert (=> d!438272 m!1742215))

(declare-fun m!1742217 () Bool)

(assert (=> b!1491552 m!1742217))

(declare-fun m!1742219 () Bool)

(assert (=> b!1491552 m!1742219))

(assert (=> b!1491437 d!438272))

(declare-fun b!1491553 () Bool)

(declare-fun e!954062 () Bool)

(declare-fun lt!518258 () tuple2!14574)

(assert (=> b!1491553 (= e!954062 (= (list!6283 (_2!8222 lt!518258)) (list!6283 (_2!8223 (v!22679 lt!518210)))))))

(declare-fun b!1491554 () Bool)

(declare-fun e!954060 () Bool)

(assert (=> b!1491554 (= e!954060 (= (list!6283 (_2!8222 lt!518258)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 lt!518210)))))))))

(declare-fun b!1491555 () Bool)

(declare-fun e!954063 () tuple2!14574)

(assert (=> b!1491555 (= e!954063 (tuple2!14575 (BalanceConc!10719 Empty!5388) (_2!8223 (v!22679 lt!518210))))))

(declare-fun b!1491556 () Bool)

(declare-fun e!954061 () Bool)

(assert (=> b!1491556 (= e!954061 (not (isEmpty!9864 (_1!8222 lt!518258))))))

(declare-fun b!1491557 () Bool)

(declare-fun lt!518260 () tuple2!14574)

(declare-fun lt!518259 () Option!2901)

(assert (=> b!1491557 (= e!954063 (tuple2!14575 (prepend!441 (_1!8222 lt!518260) (_1!8223 (v!22679 lt!518259))) (_2!8222 lt!518260)))))

(assert (=> b!1491557 (= lt!518260 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518259))))))

(declare-fun b!1491558 () Bool)

(assert (=> b!1491558 (= e!954062 e!954061)))

(declare-fun res!672982 () Bool)

(assert (=> b!1491558 (= res!672982 (< (size!12829 (_2!8222 lt!518258)) (size!12829 (_2!8223 (v!22679 lt!518210)))))))

(assert (=> b!1491558 (=> (not res!672982) (not e!954061))))

(declare-fun b!1491559 () Bool)

(declare-fun res!672980 () Bool)

(assert (=> b!1491559 (=> (not res!672980) (not e!954060))))

(assert (=> b!1491559 (= res!672980 (= (list!6282 (_1!8222 lt!518258)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 lt!518210)))))))))

(declare-fun d!438274 () Bool)

(assert (=> d!438274 e!954060))

(declare-fun res!672981 () Bool)

(assert (=> d!438274 (=> (not res!672981) (not e!954060))))

(assert (=> d!438274 (= res!672981 e!954062)))

(declare-fun c!244344 () Bool)

(assert (=> d!438274 (= c!244344 (> (size!12830 (_1!8222 lt!518258)) 0))))

(assert (=> d!438274 (= lt!518258 e!954063)))

(declare-fun c!244345 () Bool)

(assert (=> d!438274 (= c!244345 ((_ is Some!2900) lt!518259))))

(assert (=> d!438274 (= lt!518259 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518210))))))

(assert (=> d!438274 (= (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518210))) lt!518258)))

(assert (= (and d!438274 c!244345) b!1491557))

(assert (= (and d!438274 (not c!244345)) b!1491555))

(assert (= (and d!438274 c!244344) b!1491558))

(assert (= (and d!438274 (not c!244344)) b!1491553))

(assert (= (and b!1491558 res!672982) b!1491556))

(assert (= (and d!438274 res!672981) b!1491559))

(assert (= (and b!1491559 res!672980) b!1491554))

(declare-fun m!1742221 () Bool)

(assert (=> b!1491559 m!1742221))

(declare-fun m!1742223 () Bool)

(assert (=> b!1491559 m!1742223))

(assert (=> b!1491559 m!1742223))

(declare-fun m!1742225 () Bool)

(assert (=> b!1491559 m!1742225))

(declare-fun m!1742227 () Bool)

(assert (=> d!438274 m!1742227))

(declare-fun m!1742229 () Bool)

(assert (=> d!438274 m!1742229))

(declare-fun m!1742231 () Bool)

(assert (=> b!1491558 m!1742231))

(declare-fun m!1742233 () Bool)

(assert (=> b!1491558 m!1742233))

(declare-fun m!1742235 () Bool)

(assert (=> b!1491554 m!1742235))

(assert (=> b!1491554 m!1742223))

(assert (=> b!1491554 m!1742223))

(assert (=> b!1491554 m!1742225))

(declare-fun m!1742237 () Bool)

(assert (=> b!1491556 m!1742237))

(assert (=> b!1491553 m!1742235))

(assert (=> b!1491553 m!1742223))

(declare-fun m!1742239 () Bool)

(assert (=> b!1491557 m!1742239))

(declare-fun m!1742241 () Bool)

(assert (=> b!1491557 m!1742241))

(assert (=> b!1491437 d!438274))

(declare-fun d!438276 () Bool)

(assert (=> d!438276 (= (array_inv!1605 (_keys!1698 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) (bvsge (size!12824 (_keys!1698 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491423 d!438276))

(declare-fun d!438278 () Bool)

(assert (=> d!438278 (= (array_inv!1606 (_values!1683 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) (bvsge (size!12823 (_values!1683 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491423 d!438278))

(declare-fun d!438280 () Bool)

(assert (=> d!438280 (= (array_inv!1605 (_keys!1700 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) (bvsge (size!12824 (_keys!1700 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491462 d!438280))

(declare-fun d!438282 () Bool)

(assert (=> d!438282 (= (array_inv!1607 (_values!1685 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) (bvsge (size!12827 (_values!1685 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1491462 d!438282))

(declare-fun d!438284 () Bool)

(declare-fun c!244346 () Bool)

(assert (=> d!438284 (= c!244346 ((_ is Node!5387) (c!244323 (totalInput!2252 cacheFurthestNullable!64))))))

(declare-fun e!954064 () Bool)

(assert (=> d!438284 (= (inv!21063 (c!244323 (totalInput!2252 cacheFurthestNullable!64))) e!954064)))

(declare-fun b!1491560 () Bool)

(assert (=> b!1491560 (= e!954064 (inv!21073 (c!244323 (totalInput!2252 cacheFurthestNullable!64))))))

(declare-fun b!1491561 () Bool)

(declare-fun e!954065 () Bool)

(assert (=> b!1491561 (= e!954064 e!954065)))

(declare-fun res!672983 () Bool)

(assert (=> b!1491561 (= res!672983 (not ((_ is Leaf!7999) (c!244323 (totalInput!2252 cacheFurthestNullable!64)))))))

(assert (=> b!1491561 (=> res!672983 e!954065)))

(declare-fun b!1491562 () Bool)

(assert (=> b!1491562 (= e!954065 (inv!21074 (c!244323 (totalInput!2252 cacheFurthestNullable!64))))))

(assert (= (and d!438284 c!244346) b!1491560))

(assert (= (and d!438284 (not c!244346)) b!1491561))

(assert (= (and b!1491561 (not res!672983)) b!1491562))

(declare-fun m!1742243 () Bool)

(assert (=> b!1491560 m!1742243))

(declare-fun m!1742245 () Bool)

(assert (=> b!1491562 m!1742245))

(assert (=> b!1491440 d!438284))

(declare-fun d!438286 () Bool)

(declare-fun c!244347 () Bool)

(assert (=> d!438286 (= c!244347 ((_ is Node!5387) (c!244323 treated!70)))))

(declare-fun e!954066 () Bool)

(assert (=> d!438286 (= (inv!21063 (c!244323 treated!70)) e!954066)))

(declare-fun b!1491563 () Bool)

(assert (=> b!1491563 (= e!954066 (inv!21073 (c!244323 treated!70)))))

(declare-fun b!1491564 () Bool)

(declare-fun e!954067 () Bool)

(assert (=> b!1491564 (= e!954066 e!954067)))

(declare-fun res!672984 () Bool)

(assert (=> b!1491564 (= res!672984 (not ((_ is Leaf!7999) (c!244323 treated!70))))))

(assert (=> b!1491564 (=> res!672984 e!954067)))

(declare-fun b!1491565 () Bool)

(assert (=> b!1491565 (= e!954067 (inv!21074 (c!244323 treated!70)))))

(assert (= (and d!438286 c!244347) b!1491563))

(assert (= (and d!438286 (not c!244347)) b!1491564))

(assert (= (and b!1491564 (not res!672984)) b!1491565))

(declare-fun m!1742247 () Bool)

(assert (=> b!1491563 m!1742247))

(declare-fun m!1742249 () Bool)

(assert (=> b!1491565 m!1742249))

(assert (=> b!1491422 d!438286))

(declare-fun d!438288 () Bool)

(assert (=> d!438288 (= (valid!1107 (_3!936 lt!518229)) (validCacheMapDown!126 (cache!1729 (_3!936 lt!518229))))))

(declare-fun bs!351013 () Bool)

(assert (= bs!351013 d!438288))

(declare-fun m!1742251 () Bool)

(assert (=> bs!351013 m!1742251))

(assert (=> b!1491453 d!438288))

(declare-fun d!438290 () Bool)

(assert (=> d!438290 (= (valid!1107 cacheDown!629) (validCacheMapDown!126 (cache!1729 cacheDown!629)))))

(declare-fun bs!351014 () Bool)

(assert (= bs!351014 d!438290))

(assert (=> bs!351014 m!1742103))

(assert (=> b!1491417 d!438290))

(declare-fun d!438292 () Bool)

(assert (=> d!438292 (= (isEmpty!9863 rules!1640) ((_ is Nil!15856) rules!1640))))

(assert (=> b!1491454 d!438292))

(declare-fun b!1491567 () Bool)

(declare-fun e!954068 () List!15922)

(assert (=> b!1491567 (= e!954068 (Cons!15854 (h!21255 lt!518208) (++!4275 (t!138177 lt!518208) lt!518230)))))

(declare-fun b!1491566 () Bool)

(assert (=> b!1491566 (= e!954068 lt!518230)))

(declare-fun d!438294 () Bool)

(declare-fun e!954069 () Bool)

(assert (=> d!438294 e!954069))

(declare-fun res!672986 () Bool)

(assert (=> d!438294 (=> (not res!672986) (not e!954069))))

(declare-fun lt!518261 () List!15922)

(assert (=> d!438294 (= res!672986 (= (content!2290 lt!518261) ((_ map or) (content!2290 lt!518208) (content!2290 lt!518230))))))

(assert (=> d!438294 (= lt!518261 e!954068)))

(declare-fun c!244348 () Bool)

(assert (=> d!438294 (= c!244348 ((_ is Nil!15854) lt!518208))))

(assert (=> d!438294 (= (++!4275 lt!518208 lt!518230) lt!518261)))

(declare-fun b!1491568 () Bool)

(declare-fun res!672985 () Bool)

(assert (=> b!1491568 (=> (not res!672985) (not e!954069))))

(assert (=> b!1491568 (= res!672985 (= (size!12828 lt!518261) (+ (size!12828 lt!518208) (size!12828 lt!518230))))))

(declare-fun b!1491569 () Bool)

(assert (=> b!1491569 (= e!954069 (or (not (= lt!518230 Nil!15854)) (= lt!518261 lt!518208)))))

(assert (= (and d!438294 c!244348) b!1491566))

(assert (= (and d!438294 (not c!244348)) b!1491567))

(assert (= (and d!438294 res!672986) b!1491568))

(assert (= (and b!1491568 res!672985) b!1491569))

(declare-fun m!1742253 () Bool)

(assert (=> b!1491567 m!1742253))

(declare-fun m!1742255 () Bool)

(assert (=> d!438294 m!1742255))

(declare-fun m!1742257 () Bool)

(assert (=> d!438294 m!1742257))

(declare-fun m!1742259 () Bool)

(assert (=> d!438294 m!1742259))

(declare-fun m!1742261 () Bool)

(assert (=> b!1491568 m!1742261))

(declare-fun m!1742263 () Bool)

(assert (=> b!1491568 m!1742263))

(declare-fun m!1742265 () Bool)

(assert (=> b!1491568 m!1742265))

(assert (=> b!1491419 d!438294))

(declare-fun d!438296 () Bool)

(declare-fun e!954075 () Bool)

(assert (=> d!438296 e!954075))

(declare-fun res!672992 () Bool)

(assert (=> d!438296 (=> (not res!672992) (not e!954075))))

(declare-fun lt!518264 () List!15923)

(declare-fun content!2291 (List!15923) (InoxSet Token!5298))

(assert (=> d!438296 (= res!672992 (= (content!2291 lt!518264) ((_ map or) (content!2291 lt!518204) (content!2291 lt!518201))))))

(declare-fun e!954074 () List!15923)

(assert (=> d!438296 (= lt!518264 e!954074)))

(declare-fun c!244351 () Bool)

(assert (=> d!438296 (= c!244351 ((_ is Nil!15855) lt!518204))))

(assert (=> d!438296 (= (++!4277 lt!518204 lt!518201) lt!518264)))

(declare-fun b!1491579 () Bool)

(assert (=> b!1491579 (= e!954074 (Cons!15855 (h!21256 lt!518204) (++!4277 (t!138178 lt!518204) lt!518201)))))

(declare-fun b!1491578 () Bool)

(assert (=> b!1491578 (= e!954074 lt!518201)))

(declare-fun b!1491581 () Bool)

(assert (=> b!1491581 (= e!954075 (or (not (= lt!518201 Nil!15855)) (= lt!518264 lt!518204)))))

(declare-fun b!1491580 () Bool)

(declare-fun res!672991 () Bool)

(assert (=> b!1491580 (=> (not res!672991) (not e!954075))))

(declare-fun size!12831 (List!15923) Int)

(assert (=> b!1491580 (= res!672991 (= (size!12831 lt!518264) (+ (size!12831 lt!518204) (size!12831 lt!518201))))))

(assert (= (and d!438296 c!244351) b!1491578))

(assert (= (and d!438296 (not c!244351)) b!1491579))

(assert (= (and d!438296 res!672992) b!1491580))

(assert (= (and b!1491580 res!672991) b!1491581))

(declare-fun m!1742267 () Bool)

(assert (=> d!438296 m!1742267))

(declare-fun m!1742269 () Bool)

(assert (=> d!438296 m!1742269))

(declare-fun m!1742271 () Bool)

(assert (=> d!438296 m!1742271))

(declare-fun m!1742273 () Bool)

(assert (=> b!1491579 m!1742273))

(declare-fun m!1742275 () Bool)

(assert (=> b!1491580 m!1742275))

(declare-fun m!1742277 () Bool)

(assert (=> b!1491580 m!1742277))

(declare-fun m!1742279 () Bool)

(assert (=> b!1491580 m!1742279))

(assert (=> b!1491419 d!438296))

(declare-fun b!1491592 () Bool)

(declare-fun e!954084 () Bool)

(declare-fun e!954082 () Bool)

(assert (=> b!1491592 (= e!954084 e!954082)))

(declare-fun res!672995 () Bool)

(declare-fun lt!518273 () tuple2!14578)

(assert (=> b!1491592 (= res!672995 (< (size!12828 (_2!8224 lt!518273)) (size!12828 lt!518208)))))

(assert (=> b!1491592 (=> (not res!672995) (not e!954082))))

(declare-fun d!438298 () Bool)

(assert (=> d!438298 e!954084))

(declare-fun c!244357 () Bool)

(assert (=> d!438298 (= c!244357 (> (size!12831 (_1!8224 lt!518273)) 0))))

(declare-fun e!954083 () tuple2!14578)

(assert (=> d!438298 (= lt!518273 e!954083)))

(declare-fun c!244356 () Bool)

(declare-datatypes ((tuple2!14586 0))(
  ( (tuple2!14587 (_1!8230 Token!5298) (_2!8230 List!15922)) )
))
(declare-datatypes ((Option!2902 0))(
  ( (None!2901) (Some!2901 (v!22686 tuple2!14586)) )
))
(declare-fun lt!518272 () Option!2902)

(assert (=> d!438298 (= c!244356 ((_ is Some!2901) lt!518272))))

(declare-fun maxPrefix!1200 (LexerInterface!2473 List!15924 List!15922) Option!2902)

(assert (=> d!438298 (= lt!518272 (maxPrefix!1200 thiss!13241 rules!1640 lt!518208))))

(assert (=> d!438298 (= (lexList!731 thiss!13241 rules!1640 lt!518208) lt!518273)))

(declare-fun b!1491593 () Bool)

(assert (=> b!1491593 (= e!954084 (= (_2!8224 lt!518273) lt!518208))))

(declare-fun b!1491594 () Bool)

(assert (=> b!1491594 (= e!954083 (tuple2!14579 Nil!15855 lt!518208))))

(declare-fun b!1491595 () Bool)

(declare-fun isEmpty!9865 (List!15923) Bool)

(assert (=> b!1491595 (= e!954082 (not (isEmpty!9865 (_1!8224 lt!518273))))))

(declare-fun b!1491596 () Bool)

(declare-fun lt!518271 () tuple2!14578)

(assert (=> b!1491596 (= e!954083 (tuple2!14579 (Cons!15855 (_1!8230 (v!22686 lt!518272)) (_1!8224 lt!518271)) (_2!8224 lt!518271)))))

(assert (=> b!1491596 (= lt!518271 (lexList!731 thiss!13241 rules!1640 (_2!8230 (v!22686 lt!518272))))))

(assert (= (and d!438298 c!244356) b!1491596))

(assert (= (and d!438298 (not c!244356)) b!1491594))

(assert (= (and d!438298 c!244357) b!1491592))

(assert (= (and d!438298 (not c!244357)) b!1491593))

(assert (= (and b!1491592 res!672995) b!1491595))

(declare-fun m!1742281 () Bool)

(assert (=> b!1491592 m!1742281))

(assert (=> b!1491592 m!1742263))

(declare-fun m!1742283 () Bool)

(assert (=> d!438298 m!1742283))

(declare-fun m!1742285 () Bool)

(assert (=> d!438298 m!1742285))

(declare-fun m!1742287 () Bool)

(assert (=> b!1491595 m!1742287))

(declare-fun m!1742289 () Bool)

(assert (=> b!1491596 m!1742289))

(assert (=> b!1491419 d!438298))

(declare-fun d!438300 () Bool)

(declare-fun e!954085 () Bool)

(assert (=> d!438300 e!954085))

(declare-fun res!672996 () Bool)

(assert (=> d!438300 (=> res!672996 e!954085)))

(declare-fun lt!518274 () Bool)

(assert (=> d!438300 (= res!672996 (not lt!518274))))

(assert (=> d!438300 (= lt!518274 (= lt!518230 (drop!751 lt!518216 (- (size!12828 lt!518216) (size!12828 lt!518230)))))))

(assert (=> d!438300 (= (isSuffix!284 lt!518230 lt!518216) lt!518274)))

(declare-fun b!1491597 () Bool)

(assert (=> b!1491597 (= e!954085 (>= (size!12828 lt!518216) (size!12828 lt!518230)))))

(assert (= (and d!438300 (not res!672996)) b!1491597))

(assert (=> d!438300 m!1742085))

(assert (=> d!438300 m!1742265))

(declare-fun m!1742291 () Bool)

(assert (=> d!438300 m!1742291))

(assert (=> b!1491597 m!1742085))

(assert (=> b!1491597 m!1742265))

(assert (=> b!1491419 d!438300))

(declare-fun d!438302 () Bool)

(declare-fun e!954087 () Bool)

(assert (=> d!438302 e!954087))

(declare-fun res!672998 () Bool)

(assert (=> d!438302 (=> (not res!672998) (not e!954087))))

(declare-fun lt!518275 () List!15923)

(assert (=> d!438302 (= res!672998 (= (content!2291 lt!518275) ((_ map or) (content!2291 (++!4277 lt!518202 lt!518204)) (content!2291 lt!518201))))))

(declare-fun e!954086 () List!15923)

(assert (=> d!438302 (= lt!518275 e!954086)))

(declare-fun c!244358 () Bool)

(assert (=> d!438302 (= c!244358 ((_ is Nil!15855) (++!4277 lt!518202 lt!518204)))))

(assert (=> d!438302 (= (++!4277 (++!4277 lt!518202 lt!518204) lt!518201) lt!518275)))

(declare-fun b!1491599 () Bool)

(assert (=> b!1491599 (= e!954086 (Cons!15855 (h!21256 (++!4277 lt!518202 lt!518204)) (++!4277 (t!138178 (++!4277 lt!518202 lt!518204)) lt!518201)))))

(declare-fun b!1491598 () Bool)

(assert (=> b!1491598 (= e!954086 lt!518201)))

(declare-fun b!1491601 () Bool)

(assert (=> b!1491601 (= e!954087 (or (not (= lt!518201 Nil!15855)) (= lt!518275 (++!4277 lt!518202 lt!518204))))))

(declare-fun b!1491600 () Bool)

(declare-fun res!672997 () Bool)

(assert (=> b!1491600 (=> (not res!672997) (not e!954087))))

(assert (=> b!1491600 (= res!672997 (= (size!12831 lt!518275) (+ (size!12831 (++!4277 lt!518202 lt!518204)) (size!12831 lt!518201))))))

(assert (= (and d!438302 c!244358) b!1491598))

(assert (= (and d!438302 (not c!244358)) b!1491599))

(assert (= (and d!438302 res!672998) b!1491600))

(assert (= (and b!1491600 res!672997) b!1491601))

(declare-fun m!1742293 () Bool)

(assert (=> d!438302 m!1742293))

(assert (=> d!438302 m!1742017))

(declare-fun m!1742295 () Bool)

(assert (=> d!438302 m!1742295))

(assert (=> d!438302 m!1742271))

(declare-fun m!1742297 () Bool)

(assert (=> b!1491599 m!1742297))

(declare-fun m!1742299 () Bool)

(assert (=> b!1491600 m!1742299))

(assert (=> b!1491600 m!1742017))

(declare-fun m!1742301 () Bool)

(assert (=> b!1491600 m!1742301))

(assert (=> b!1491600 m!1742279))

(assert (=> b!1491419 d!438302))

(declare-fun d!438304 () Bool)

(declare-fun e!954104 () Bool)

(assert (=> d!438304 e!954104))

(declare-fun res!673015 () Bool)

(assert (=> d!438304 (=> (not res!673015) (not e!954104))))

(declare-fun lt!518296 () Option!2901)

(declare-fun isDefined!2337 (Option!2901) Bool)

(declare-fun isDefined!2338 (Option!2902) Bool)

(declare-fun maxPrefixZipper!251 (LexerInterface!2473 List!15924 List!15922) Option!2902)

(assert (=> d!438304 (= res!673015 (= (isDefined!2337 lt!518296) (isDefined!2338 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102)))))))

(declare-fun e!954100 () Option!2901)

(assert (=> d!438304 (= lt!518296 e!954100)))

(declare-fun c!244361 () Bool)

(assert (=> d!438304 (= c!244361 (and ((_ is Cons!15856) rules!1640) ((_ is Nil!15856) (t!138179 rules!1640))))))

(declare-fun lt!518292 () Unit!25653)

(declare-fun lt!518290 () Unit!25653)

(assert (=> d!438304 (= lt!518292 lt!518290)))

(declare-fun lt!518291 () List!15922)

(declare-fun lt!518295 () List!15922)

(declare-fun isPrefix!1210 (List!15922 List!15922) Bool)

(assert (=> d!438304 (isPrefix!1210 lt!518291 lt!518295)))

(declare-fun lemmaIsPrefixRefl!840 (List!15922 List!15922) Unit!25653)

(assert (=> d!438304 (= lt!518290 (lemmaIsPrefixRefl!840 lt!518291 lt!518295))))

(assert (=> d!438304 (= lt!518295 (list!6283 input!1102))))

(assert (=> d!438304 (= lt!518291 (list!6283 input!1102))))

(declare-fun rulesValidInductive!848 (LexerInterface!2473 List!15924) Bool)

(assert (=> d!438304 (rulesValidInductive!848 thiss!13241 rules!1640)))

(assert (=> d!438304 (= (maxPrefixZipperSequence!573 thiss!13241 rules!1640 input!1102) lt!518296)))

(declare-fun b!1491618 () Bool)

(declare-fun lt!518294 () Option!2901)

(declare-fun lt!518293 () Option!2901)

(assert (=> b!1491618 (= e!954100 (ite (and ((_ is None!2900) lt!518294) ((_ is None!2900) lt!518293)) None!2900 (ite ((_ is None!2900) lt!518293) lt!518294 (ite ((_ is None!2900) lt!518294) lt!518293 (ite (>= (size!12825 (_1!8223 (v!22679 lt!518294))) (size!12825 (_1!8223 (v!22679 lt!518293)))) lt!518294 lt!518293)))))))

(declare-fun call!99010 () Option!2901)

(assert (=> b!1491618 (= lt!518294 call!99010)))

(assert (=> b!1491618 (= lt!518293 (maxPrefixZipperSequence!573 thiss!13241 (t!138179 rules!1640) input!1102))))

(declare-fun b!1491619 () Bool)

(declare-fun e!954101 () Bool)

(declare-fun e!954103 () Bool)

(assert (=> b!1491619 (= e!954101 e!954103)))

(declare-fun res!673011 () Bool)

(assert (=> b!1491619 (=> (not res!673011) (not e!954103))))

(declare-fun get!4707 (Option!2901) tuple2!14576)

(declare-fun get!4708 (Option!2902) tuple2!14586)

(assert (=> b!1491619 (= res!673011 (= (_1!8223 (get!4707 lt!518296)) (_1!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491620 () Bool)

(declare-fun e!954102 () Bool)

(assert (=> b!1491620 (= e!954102 (= (list!6283 (_2!8223 (get!4707 lt!518296))) (_2!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491621 () Bool)

(declare-fun res!673012 () Bool)

(assert (=> b!1491621 (=> (not res!673012) (not e!954104))))

(declare-fun e!954105 () Bool)

(assert (=> b!1491621 (= res!673012 e!954105)))

(declare-fun res!673014 () Bool)

(assert (=> b!1491621 (=> res!673014 e!954105)))

(assert (=> b!1491621 (= res!673014 (not (isDefined!2337 lt!518296)))))

(declare-fun b!1491622 () Bool)

(assert (=> b!1491622 (= e!954100 call!99010)))

(declare-fun b!1491623 () Bool)

(assert (=> b!1491623 (= e!954103 (= (list!6283 (_2!8223 (get!4707 lt!518296))) (_2!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491624 () Bool)

(assert (=> b!1491624 (= e!954104 e!954101)))

(declare-fun res!673013 () Bool)

(assert (=> b!1491624 (=> res!673013 e!954101)))

(assert (=> b!1491624 (= res!673013 (not (isDefined!2337 lt!518296)))))

(declare-fun b!1491625 () Bool)

(assert (=> b!1491625 (= e!954105 e!954102)))

(declare-fun res!673016 () Bool)

(assert (=> b!1491625 (=> (not res!673016) (not e!954102))))

(assert (=> b!1491625 (= res!673016 (= (_1!8223 (get!4707 lt!518296)) (_1!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun bm!99005 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!270 (LexerInterface!2473 Rule!5436 BalanceConc!10716) Option!2901)

(assert (=> bm!99005 (= call!99010 (maxPrefixOneRuleZipperSequence!270 thiss!13241 (h!21257 rules!1640) input!1102))))

(assert (= (and d!438304 c!244361) b!1491622))

(assert (= (and d!438304 (not c!244361)) b!1491618))

(assert (= (or b!1491622 b!1491618) bm!99005))

(assert (= (and d!438304 res!673015) b!1491621))

(assert (= (and b!1491621 (not res!673014)) b!1491625))

(assert (= (and b!1491625 res!673016) b!1491620))

(assert (= (and b!1491621 res!673012) b!1491624))

(assert (= (and b!1491624 (not res!673013)) b!1491619))

(assert (= (and b!1491619 res!673011) b!1491623))

(declare-fun m!1742303 () Bool)

(assert (=> b!1491625 m!1742303))

(assert (=> b!1491625 m!1741919))

(assert (=> b!1491625 m!1741919))

(declare-fun m!1742305 () Bool)

(assert (=> b!1491625 m!1742305))

(assert (=> b!1491625 m!1742305))

(declare-fun m!1742307 () Bool)

(assert (=> b!1491625 m!1742307))

(declare-fun m!1742309 () Bool)

(assert (=> b!1491618 m!1742309))

(assert (=> b!1491619 m!1742303))

(assert (=> b!1491619 m!1741919))

(assert (=> b!1491619 m!1741919))

(declare-fun m!1742311 () Bool)

(assert (=> b!1491619 m!1742311))

(assert (=> b!1491619 m!1742311))

(declare-fun m!1742313 () Bool)

(assert (=> b!1491619 m!1742313))

(declare-fun m!1742315 () Bool)

(assert (=> b!1491621 m!1742315))

(declare-fun m!1742317 () Bool)

(assert (=> b!1491620 m!1742317))

(assert (=> b!1491620 m!1741919))

(assert (=> b!1491620 m!1742305))

(assert (=> b!1491620 m!1742307))

(assert (=> b!1491620 m!1742303))

(assert (=> b!1491620 m!1741919))

(assert (=> b!1491620 m!1742305))

(declare-fun m!1742319 () Bool)

(assert (=> bm!99005 m!1742319))

(assert (=> b!1491623 m!1742311))

(assert (=> b!1491623 m!1742313))

(assert (=> b!1491623 m!1741919))

(assert (=> b!1491623 m!1742311))

(assert (=> b!1491623 m!1742317))

(assert (=> b!1491623 m!1741919))

(assert (=> b!1491623 m!1742303))

(declare-fun m!1742321 () Bool)

(assert (=> d!438304 m!1742321))

(assert (=> d!438304 m!1742305))

(declare-fun m!1742323 () Bool)

(assert (=> d!438304 m!1742323))

(assert (=> d!438304 m!1741919))

(assert (=> d!438304 m!1741919))

(assert (=> d!438304 m!1742305))

(declare-fun m!1742325 () Bool)

(assert (=> d!438304 m!1742325))

(declare-fun m!1742327 () Bool)

(assert (=> d!438304 m!1742327))

(assert (=> d!438304 m!1742315))

(assert (=> b!1491624 m!1742315))

(assert (=> b!1491419 d!438304))

(declare-fun d!438306 () Bool)

(assert (=> d!438306 (= (list!6282 (_1!8222 lt!518207)) (list!6285 (c!244324 (_1!8222 lt!518207))))))

(declare-fun bs!351015 () Bool)

(assert (= bs!351015 d!438306))

(declare-fun m!1742329 () Bool)

(assert (=> bs!351015 m!1742329))

(assert (=> b!1491419 d!438306))

(declare-fun d!438308 () Bool)

(assert (=> d!438308 (= (list!6283 lt!518218) (list!6284 (c!244323 lt!518218)))))

(declare-fun bs!351016 () Bool)

(assert (= bs!351016 d!438308))

(declare-fun m!1742331 () Bool)

(assert (=> bs!351016 m!1742331))

(assert (=> b!1491419 d!438308))

(declare-fun d!438310 () Bool)

(declare-fun e!954107 () Bool)

(assert (=> d!438310 e!954107))

(declare-fun res!673018 () Bool)

(assert (=> d!438310 (=> (not res!673018) (not e!954107))))

(declare-fun lt!518297 () List!15923)

(assert (=> d!438310 (= res!673018 (= (content!2291 lt!518297) ((_ map or) (content!2291 lt!518202) (content!2291 lt!518204))))))

(declare-fun e!954106 () List!15923)

(assert (=> d!438310 (= lt!518297 e!954106)))

(declare-fun c!244362 () Bool)

(assert (=> d!438310 (= c!244362 ((_ is Nil!15855) lt!518202))))

(assert (=> d!438310 (= (++!4277 lt!518202 lt!518204) lt!518297)))

(declare-fun b!1491627 () Bool)

(assert (=> b!1491627 (= e!954106 (Cons!15855 (h!21256 lt!518202) (++!4277 (t!138178 lt!518202) lt!518204)))))

(declare-fun b!1491626 () Bool)

(assert (=> b!1491626 (= e!954106 lt!518204)))

(declare-fun b!1491629 () Bool)

(assert (=> b!1491629 (= e!954107 (or (not (= lt!518204 Nil!15855)) (= lt!518297 lt!518202)))))

(declare-fun b!1491628 () Bool)

(declare-fun res!673017 () Bool)

(assert (=> b!1491628 (=> (not res!673017) (not e!954107))))

(assert (=> b!1491628 (= res!673017 (= (size!12831 lt!518297) (+ (size!12831 lt!518202) (size!12831 lt!518204))))))

(assert (= (and d!438310 c!244362) b!1491626))

(assert (= (and d!438310 (not c!244362)) b!1491627))

(assert (= (and d!438310 res!673018) b!1491628))

(assert (= (and b!1491628 res!673017) b!1491629))

(declare-fun m!1742333 () Bool)

(assert (=> d!438310 m!1742333))

(declare-fun m!1742335 () Bool)

(assert (=> d!438310 m!1742335))

(assert (=> d!438310 m!1742269))

(declare-fun m!1742337 () Bool)

(assert (=> b!1491627 m!1742337))

(declare-fun m!1742339 () Bool)

(assert (=> b!1491628 m!1742339))

(declare-fun m!1742341 () Bool)

(assert (=> b!1491628 m!1742341))

(assert (=> b!1491628 m!1742277))

(assert (=> b!1491419 d!438310))

(declare-fun d!438312 () Bool)

(assert (=> d!438312 (= (lexList!731 thiss!13241 rules!1640 lt!518208) (tuple2!14579 lt!518200 Nil!15854))))

(declare-fun lt!518300 () Unit!25653)

(declare-fun choose!9097 (LexerInterface!2473 List!15924 List!15922 List!15922 List!15923 List!15923 List!15922) Unit!25653)

(assert (=> d!438312 (= lt!518300 (choose!9097 thiss!13241 rules!1640 lt!518208 lt!518230 lt!518200 lt!518201 (list!6283 (_2!8222 lt!518207))))))

(assert (=> d!438312 (not (isEmpty!9863 rules!1640))))

(assert (=> d!438312 (= (lemmaLexThenLexPrefix!213 thiss!13241 rules!1640 lt!518208 lt!518230 lt!518200 lt!518201 (list!6283 (_2!8222 lt!518207))) lt!518300)))

(declare-fun bs!351017 () Bool)

(assert (= bs!351017 d!438312))

(assert (=> bs!351017 m!1742015))

(assert (=> bs!351017 m!1742003))

(declare-fun m!1742343 () Bool)

(assert (=> bs!351017 m!1742343))

(assert (=> bs!351017 m!1741923))

(assert (=> b!1491419 d!438312))

(declare-fun b!1491630 () Bool)

(declare-fun e!954110 () Bool)

(declare-fun lt!518301 () tuple2!14574)

(assert (=> b!1491630 (= e!954110 (= (list!6283 (_2!8222 lt!518301)) (list!6283 lt!518217)))))

(declare-fun b!1491631 () Bool)

(declare-fun e!954108 () Bool)

(assert (=> b!1491631 (= e!954108 (= (list!6283 (_2!8222 lt!518301)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 lt!518217)))))))

(declare-fun b!1491632 () Bool)

(declare-fun e!954111 () tuple2!14574)

(assert (=> b!1491632 (= e!954111 (tuple2!14575 (BalanceConc!10719 Empty!5388) lt!518217))))

(declare-fun b!1491633 () Bool)

(declare-fun e!954109 () Bool)

(assert (=> b!1491633 (= e!954109 (not (isEmpty!9864 (_1!8222 lt!518301))))))

(declare-fun b!1491634 () Bool)

(declare-fun lt!518303 () tuple2!14574)

(declare-fun lt!518302 () Option!2901)

(assert (=> b!1491634 (= e!954111 (tuple2!14575 (prepend!441 (_1!8222 lt!518303) (_1!8223 (v!22679 lt!518302))) (_2!8222 lt!518303)))))

(assert (=> b!1491634 (= lt!518303 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518302))))))

(declare-fun b!1491635 () Bool)

(assert (=> b!1491635 (= e!954110 e!954109)))

(declare-fun res!673021 () Bool)

(assert (=> b!1491635 (= res!673021 (< (size!12829 (_2!8222 lt!518301)) (size!12829 lt!518217)))))

(assert (=> b!1491635 (=> (not res!673021) (not e!954109))))

(declare-fun b!1491636 () Bool)

(declare-fun res!673019 () Bool)

(assert (=> b!1491636 (=> (not res!673019) (not e!954108))))

(assert (=> b!1491636 (= res!673019 (= (list!6282 (_1!8222 lt!518301)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 lt!518217)))))))

(declare-fun d!438314 () Bool)

(assert (=> d!438314 e!954108))

(declare-fun res!673020 () Bool)

(assert (=> d!438314 (=> (not res!673020) (not e!954108))))

(assert (=> d!438314 (= res!673020 e!954110)))

(declare-fun c!244363 () Bool)

(assert (=> d!438314 (= c!244363 (> (size!12830 (_1!8222 lt!518301)) 0))))

(assert (=> d!438314 (= lt!518301 e!954111)))

(declare-fun c!244364 () Bool)

(assert (=> d!438314 (= c!244364 ((_ is Some!2900) lt!518302))))

(assert (=> d!438314 (= lt!518302 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 lt!518217))))

(assert (=> d!438314 (= (lexRec!310 thiss!13241 rules!1640 lt!518217) lt!518301)))

(assert (= (and d!438314 c!244364) b!1491634))

(assert (= (and d!438314 (not c!244364)) b!1491632))

(assert (= (and d!438314 c!244363) b!1491635))

(assert (= (and d!438314 (not c!244363)) b!1491630))

(assert (= (and b!1491635 res!673021) b!1491633))

(assert (= (and d!438314 res!673020) b!1491636))

(assert (= (and b!1491636 res!673019) b!1491631))

(declare-fun m!1742345 () Bool)

(assert (=> b!1491636 m!1742345))

(assert (=> b!1491636 m!1741981))

(assert (=> b!1491636 m!1741981))

(declare-fun m!1742347 () Bool)

(assert (=> b!1491636 m!1742347))

(declare-fun m!1742349 () Bool)

(assert (=> d!438314 m!1742349))

(assert (=> d!438314 m!1741995))

(declare-fun m!1742351 () Bool)

(assert (=> b!1491635 m!1742351))

(declare-fun m!1742353 () Bool)

(assert (=> b!1491635 m!1742353))

(declare-fun m!1742355 () Bool)

(assert (=> b!1491631 m!1742355))

(assert (=> b!1491631 m!1741981))

(assert (=> b!1491631 m!1741981))

(assert (=> b!1491631 m!1742347))

(declare-fun m!1742357 () Bool)

(assert (=> b!1491633 m!1742357))

(assert (=> b!1491630 m!1742355))

(assert (=> b!1491630 m!1741981))

(declare-fun m!1742359 () Bool)

(assert (=> b!1491634 m!1742359))

(declare-fun m!1742361 () Bool)

(assert (=> b!1491634 m!1742361))

(assert (=> b!1491419 d!438314))

(declare-fun d!438316 () Bool)

(assert (=> d!438316 (= (++!4277 (++!4277 lt!518202 lt!518204) lt!518201) (++!4277 lt!518202 (++!4277 lt!518204 lt!518201)))))

(declare-fun lt!518306 () Unit!25653)

(declare-fun choose!9098 (List!15923 List!15923 List!15923) Unit!25653)

(assert (=> d!438316 (= lt!518306 (choose!9098 lt!518202 lt!518204 lt!518201))))

(assert (=> d!438316 (= (lemmaConcatAssociativity!907 lt!518202 lt!518204 lt!518201) lt!518306)))

(declare-fun bs!351018 () Bool)

(assert (= bs!351018 d!438316))

(assert (=> bs!351018 m!1742017))

(assert (=> bs!351018 m!1742019))

(assert (=> bs!351018 m!1742017))

(declare-fun m!1742363 () Bool)

(assert (=> bs!351018 m!1742363))

(assert (=> bs!351018 m!1742007))

(assert (=> bs!351018 m!1742009))

(assert (=> bs!351018 m!1742007))

(assert (=> b!1491419 d!438316))

(declare-fun b!1491638 () Bool)

(declare-fun e!954112 () List!15922)

(assert (=> b!1491638 (= e!954112 (Cons!15854 (h!21255 lt!518199) (++!4275 (t!138177 lt!518199) lt!518227)))))

(declare-fun b!1491637 () Bool)

(assert (=> b!1491637 (= e!954112 lt!518227)))

(declare-fun d!438318 () Bool)

(declare-fun e!954113 () Bool)

(assert (=> d!438318 e!954113))

(declare-fun res!673023 () Bool)

(assert (=> d!438318 (=> (not res!673023) (not e!954113))))

(declare-fun lt!518307 () List!15922)

(assert (=> d!438318 (= res!673023 (= (content!2290 lt!518307) ((_ map or) (content!2290 lt!518199) (content!2290 lt!518227))))))

(assert (=> d!438318 (= lt!518307 e!954112)))

(declare-fun c!244365 () Bool)

(assert (=> d!438318 (= c!244365 ((_ is Nil!15854) lt!518199))))

(assert (=> d!438318 (= (++!4275 lt!518199 lt!518227) lt!518307)))

(declare-fun b!1491639 () Bool)

(declare-fun res!673022 () Bool)

(assert (=> b!1491639 (=> (not res!673022) (not e!954113))))

(assert (=> b!1491639 (= res!673022 (= (size!12828 lt!518307) (+ (size!12828 lt!518199) (size!12828 lt!518227))))))

(declare-fun b!1491640 () Bool)

(assert (=> b!1491640 (= e!954113 (or (not (= lt!518227 Nil!15854)) (= lt!518307 lt!518199)))))

(assert (= (and d!438318 c!244365) b!1491637))

(assert (= (and d!438318 (not c!244365)) b!1491638))

(assert (= (and d!438318 res!673023) b!1491639))

(assert (= (and b!1491639 res!673022) b!1491640))

(declare-fun m!1742365 () Bool)

(assert (=> b!1491638 m!1742365))

(declare-fun m!1742367 () Bool)

(assert (=> d!438318 m!1742367))

(assert (=> d!438318 m!1742167))

(declare-fun m!1742369 () Bool)

(assert (=> d!438318 m!1742369))

(declare-fun m!1742371 () Bool)

(assert (=> b!1491639 m!1742371))

(assert (=> b!1491639 m!1742173))

(declare-fun m!1742373 () Bool)

(assert (=> b!1491639 m!1742373))

(assert (=> b!1491419 d!438318))

(declare-fun d!438320 () Bool)

(assert (=> d!438320 (= (list!6283 lt!518217) (list!6284 (c!244323 lt!518217)))))

(declare-fun bs!351019 () Bool)

(assert (= bs!351019 d!438320))

(declare-fun m!1742375 () Bool)

(assert (=> bs!351019 m!1742375))

(assert (=> b!1491419 d!438320))

(declare-fun d!438322 () Bool)

(declare-fun e!954116 () Bool)

(assert (=> d!438322 e!954116))

(declare-fun res!673026 () Bool)

(assert (=> d!438322 (=> (not res!673026) (not e!954116))))

(declare-fun append!475 (Conc!5388 Token!5298) Conc!5388)

(assert (=> d!438322 (= res!673026 (isBalanced!1592 (append!475 (c!244324 acc!392) (_1!8223 (v!22679 (_1!8229 lt!518229))))))))

(declare-fun lt!518310 () BalanceConc!10718)

(assert (=> d!438322 (= lt!518310 (BalanceConc!10719 (append!475 (c!244324 acc!392) (_1!8223 (v!22679 (_1!8229 lt!518229))))))))

(assert (=> d!438322 (= (append!474 acc!392 (_1!8223 (v!22679 (_1!8229 lt!518229)))) lt!518310)))

(declare-fun b!1491643 () Bool)

(declare-fun $colon+!99 (List!15923 Token!5298) List!15923)

(assert (=> b!1491643 (= e!954116 (= (list!6282 lt!518310) ($colon+!99 (list!6282 acc!392) (_1!8223 (v!22679 (_1!8229 lt!518229))))))))

(assert (= (and d!438322 res!673026) b!1491643))

(declare-fun m!1742377 () Bool)

(assert (=> d!438322 m!1742377))

(assert (=> d!438322 m!1742377))

(declare-fun m!1742379 () Bool)

(assert (=> d!438322 m!1742379))

(declare-fun m!1742381 () Bool)

(assert (=> b!1491643 m!1742381))

(assert (=> b!1491643 m!1742053))

(assert (=> b!1491643 m!1742053))

(declare-fun m!1742383 () Bool)

(assert (=> b!1491643 m!1742383))

(assert (=> b!1491419 d!438322))

(declare-fun b!1491645 () Bool)

(declare-fun e!954117 () List!15922)

(assert (=> b!1491645 (= e!954117 (Cons!15854 (h!21255 lt!518227) (++!4275 (t!138177 lt!518227) lt!518230)))))

(declare-fun b!1491644 () Bool)

(assert (=> b!1491644 (= e!954117 lt!518230)))

(declare-fun d!438324 () Bool)

(declare-fun e!954118 () Bool)

(assert (=> d!438324 e!954118))

(declare-fun res!673028 () Bool)

(assert (=> d!438324 (=> (not res!673028) (not e!954118))))

(declare-fun lt!518311 () List!15922)

(assert (=> d!438324 (= res!673028 (= (content!2290 lt!518311) ((_ map or) (content!2290 lt!518227) (content!2290 lt!518230))))))

(assert (=> d!438324 (= lt!518311 e!954117)))

(declare-fun c!244367 () Bool)

(assert (=> d!438324 (= c!244367 ((_ is Nil!15854) lt!518227))))

(assert (=> d!438324 (= (++!4275 lt!518227 lt!518230) lt!518311)))

(declare-fun b!1491646 () Bool)

(declare-fun res!673027 () Bool)

(assert (=> b!1491646 (=> (not res!673027) (not e!954118))))

(assert (=> b!1491646 (= res!673027 (= (size!12828 lt!518311) (+ (size!12828 lt!518227) (size!12828 lt!518230))))))

(declare-fun b!1491647 () Bool)

(assert (=> b!1491647 (= e!954118 (or (not (= lt!518230 Nil!15854)) (= lt!518311 lt!518227)))))

(assert (= (and d!438324 c!244367) b!1491644))

(assert (= (and d!438324 (not c!244367)) b!1491645))

(assert (= (and d!438324 res!673028) b!1491646))

(assert (= (and b!1491646 res!673027) b!1491647))

(declare-fun m!1742385 () Bool)

(assert (=> b!1491645 m!1742385))

(declare-fun m!1742387 () Bool)

(assert (=> d!438324 m!1742387))

(assert (=> d!438324 m!1742369))

(assert (=> d!438324 m!1742259))

(declare-fun m!1742389 () Bool)

(assert (=> b!1491646 m!1742389))

(assert (=> b!1491646 m!1742373))

(assert (=> b!1491646 m!1742265))

(assert (=> b!1491419 d!438324))

(declare-fun b!1491649 () Bool)

(declare-fun e!954119 () List!15922)

(assert (=> b!1491649 (= e!954119 (Cons!15854 (h!21255 lt!518209) (++!4275 (t!138177 lt!518209) lt!518230)))))

(declare-fun b!1491648 () Bool)

(assert (=> b!1491648 (= e!954119 lt!518230)))

(declare-fun d!438326 () Bool)

(declare-fun e!954120 () Bool)

(assert (=> d!438326 e!954120))

(declare-fun res!673030 () Bool)

(assert (=> d!438326 (=> (not res!673030) (not e!954120))))

(declare-fun lt!518312 () List!15922)

(assert (=> d!438326 (= res!673030 (= (content!2290 lt!518312) ((_ map or) (content!2290 lt!518209) (content!2290 lt!518230))))))

(assert (=> d!438326 (= lt!518312 e!954119)))

(declare-fun c!244368 () Bool)

(assert (=> d!438326 (= c!244368 ((_ is Nil!15854) lt!518209))))

(assert (=> d!438326 (= (++!4275 lt!518209 lt!518230) lt!518312)))

(declare-fun b!1491650 () Bool)

(declare-fun res!673029 () Bool)

(assert (=> b!1491650 (=> (not res!673029) (not e!954120))))

(assert (=> b!1491650 (= res!673029 (= (size!12828 lt!518312) (+ (size!12828 lt!518209) (size!12828 lt!518230))))))

(declare-fun b!1491651 () Bool)

(assert (=> b!1491651 (= e!954120 (or (not (= lt!518230 Nil!15854)) (= lt!518312 lt!518209)))))

(assert (= (and d!438326 c!244368) b!1491648))

(assert (= (and d!438326 (not c!244368)) b!1491649))

(assert (= (and d!438326 res!673030) b!1491650))

(assert (= (and b!1491650 res!673029) b!1491651))

(declare-fun m!1742391 () Bool)

(assert (=> b!1491649 m!1742391))

(declare-fun m!1742393 () Bool)

(assert (=> d!438326 m!1742393))

(declare-fun m!1742395 () Bool)

(assert (=> d!438326 m!1742395))

(assert (=> d!438326 m!1742259))

(declare-fun m!1742397 () Bool)

(assert (=> b!1491650 m!1742397))

(declare-fun m!1742399 () Bool)

(assert (=> b!1491650 m!1742399))

(assert (=> b!1491650 m!1742265))

(assert (=> b!1491419 d!438326))

(declare-fun d!438328 () Bool)

(assert (=> d!438328 (isSuffix!284 lt!518230 (++!4275 lt!518209 lt!518230))))

(declare-fun lt!518313 () Unit!25653)

(assert (=> d!438328 (= lt!518313 (choose!9096 lt!518209 lt!518230))))

(assert (=> d!438328 (= (lemmaConcatTwoListThenFSndIsSuffix!262 lt!518209 lt!518230) lt!518313)))

(declare-fun bs!351020 () Bool)

(assert (= bs!351020 d!438328))

(assert (=> bs!351020 m!1741983))

(assert (=> bs!351020 m!1741983))

(declare-fun m!1742401 () Bool)

(assert (=> bs!351020 m!1742401))

(declare-fun m!1742403 () Bool)

(assert (=> bs!351020 m!1742403))

(assert (=> b!1491419 d!438328))

(declare-fun d!438330 () Bool)

(declare-fun e!954125 () Bool)

(assert (=> d!438330 e!954125))

(declare-fun res!673035 () Bool)

(assert (=> d!438330 (=> (not res!673035) (not e!954125))))

(declare-fun lt!518320 () Option!2901)

(assert (=> d!438330 (= res!673035 (= (isDefined!2337 lt!518320) (isDefined!2338 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 lt!518217)))))))

(declare-fun e!954121 () Option!2901)

(assert (=> d!438330 (= lt!518320 e!954121)))

(declare-fun c!244369 () Bool)

(assert (=> d!438330 (= c!244369 (and ((_ is Cons!15856) rules!1640) ((_ is Nil!15856) (t!138179 rules!1640))))))

(declare-fun lt!518316 () Unit!25653)

(declare-fun lt!518314 () Unit!25653)

(assert (=> d!438330 (= lt!518316 lt!518314)))

(declare-fun lt!518315 () List!15922)

(declare-fun lt!518319 () List!15922)

(assert (=> d!438330 (isPrefix!1210 lt!518315 lt!518319)))

(assert (=> d!438330 (= lt!518314 (lemmaIsPrefixRefl!840 lt!518315 lt!518319))))

(assert (=> d!438330 (= lt!518319 (list!6283 lt!518217))))

(assert (=> d!438330 (= lt!518315 (list!6283 lt!518217))))

(assert (=> d!438330 (rulesValidInductive!848 thiss!13241 rules!1640)))

(assert (=> d!438330 (= (maxPrefixZipperSequence!573 thiss!13241 rules!1640 lt!518217) lt!518320)))

(declare-fun b!1491652 () Bool)

(declare-fun lt!518318 () Option!2901)

(declare-fun lt!518317 () Option!2901)

(assert (=> b!1491652 (= e!954121 (ite (and ((_ is None!2900) lt!518318) ((_ is None!2900) lt!518317)) None!2900 (ite ((_ is None!2900) lt!518317) lt!518318 (ite ((_ is None!2900) lt!518318) lt!518317 (ite (>= (size!12825 (_1!8223 (v!22679 lt!518318))) (size!12825 (_1!8223 (v!22679 lt!518317)))) lt!518318 lt!518317)))))))

(declare-fun call!99011 () Option!2901)

(assert (=> b!1491652 (= lt!518318 call!99011)))

(assert (=> b!1491652 (= lt!518317 (maxPrefixZipperSequence!573 thiss!13241 (t!138179 rules!1640) lt!518217))))

(declare-fun b!1491653 () Bool)

(declare-fun e!954122 () Bool)

(declare-fun e!954124 () Bool)

(assert (=> b!1491653 (= e!954122 e!954124)))

(declare-fun res!673031 () Bool)

(assert (=> b!1491653 (=> (not res!673031) (not e!954124))))

(assert (=> b!1491653 (= res!673031 (= (_1!8223 (get!4707 lt!518320)) (_1!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 lt!518217))))))))

(declare-fun b!1491654 () Bool)

(declare-fun e!954123 () Bool)

(assert (=> b!1491654 (= e!954123 (= (list!6283 (_2!8223 (get!4707 lt!518320))) (_2!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 lt!518217))))))))

(declare-fun b!1491655 () Bool)

(declare-fun res!673032 () Bool)

(assert (=> b!1491655 (=> (not res!673032) (not e!954125))))

(declare-fun e!954126 () Bool)

(assert (=> b!1491655 (= res!673032 e!954126)))

(declare-fun res!673034 () Bool)

(assert (=> b!1491655 (=> res!673034 e!954126)))

(assert (=> b!1491655 (= res!673034 (not (isDefined!2337 lt!518320)))))

(declare-fun b!1491656 () Bool)

(assert (=> b!1491656 (= e!954121 call!99011)))

(declare-fun b!1491657 () Bool)

(assert (=> b!1491657 (= e!954124 (= (list!6283 (_2!8223 (get!4707 lt!518320))) (_2!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 lt!518217))))))))

(declare-fun b!1491658 () Bool)

(assert (=> b!1491658 (= e!954125 e!954122)))

(declare-fun res!673033 () Bool)

(assert (=> b!1491658 (=> res!673033 e!954122)))

(assert (=> b!1491658 (= res!673033 (not (isDefined!2337 lt!518320)))))

(declare-fun b!1491659 () Bool)

(assert (=> b!1491659 (= e!954126 e!954123)))

(declare-fun res!673036 () Bool)

(assert (=> b!1491659 (=> (not res!673036) (not e!954123))))

(assert (=> b!1491659 (= res!673036 (= (_1!8223 (get!4707 lt!518320)) (_1!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 lt!518217))))))))

(declare-fun bm!99006 () Bool)

(assert (=> bm!99006 (= call!99011 (maxPrefixOneRuleZipperSequence!270 thiss!13241 (h!21257 rules!1640) lt!518217))))

(assert (= (and d!438330 c!244369) b!1491656))

(assert (= (and d!438330 (not c!244369)) b!1491652))

(assert (= (or b!1491656 b!1491652) bm!99006))

(assert (= (and d!438330 res!673035) b!1491655))

(assert (= (and b!1491655 (not res!673034)) b!1491659))

(assert (= (and b!1491659 res!673036) b!1491654))

(assert (= (and b!1491655 res!673032) b!1491658))

(assert (= (and b!1491658 (not res!673033)) b!1491653))

(assert (= (and b!1491653 res!673031) b!1491657))

(declare-fun m!1742405 () Bool)

(assert (=> b!1491659 m!1742405))

(assert (=> b!1491659 m!1741981))

(assert (=> b!1491659 m!1741981))

(declare-fun m!1742407 () Bool)

(assert (=> b!1491659 m!1742407))

(assert (=> b!1491659 m!1742407))

(declare-fun m!1742409 () Bool)

(assert (=> b!1491659 m!1742409))

(declare-fun m!1742411 () Bool)

(assert (=> b!1491652 m!1742411))

(assert (=> b!1491653 m!1742405))

(assert (=> b!1491653 m!1741981))

(assert (=> b!1491653 m!1741981))

(declare-fun m!1742413 () Bool)

(assert (=> b!1491653 m!1742413))

(assert (=> b!1491653 m!1742413))

(declare-fun m!1742415 () Bool)

(assert (=> b!1491653 m!1742415))

(declare-fun m!1742417 () Bool)

(assert (=> b!1491655 m!1742417))

(declare-fun m!1742419 () Bool)

(assert (=> b!1491654 m!1742419))

(assert (=> b!1491654 m!1741981))

(assert (=> b!1491654 m!1742407))

(assert (=> b!1491654 m!1742409))

(assert (=> b!1491654 m!1742405))

(assert (=> b!1491654 m!1741981))

(assert (=> b!1491654 m!1742407))

(declare-fun m!1742421 () Bool)

(assert (=> bm!99006 m!1742421))

(assert (=> b!1491657 m!1742413))

(assert (=> b!1491657 m!1742415))

(assert (=> b!1491657 m!1741981))

(assert (=> b!1491657 m!1742413))

(assert (=> b!1491657 m!1742419))

(assert (=> b!1491657 m!1741981))

(assert (=> b!1491657 m!1742405))

(declare-fun m!1742423 () Bool)

(assert (=> d!438330 m!1742423))

(assert (=> d!438330 m!1742407))

(declare-fun m!1742425 () Bool)

(assert (=> d!438330 m!1742425))

(assert (=> d!438330 m!1741981))

(assert (=> d!438330 m!1741981))

(assert (=> d!438330 m!1742407))

(assert (=> d!438330 m!1742325))

(declare-fun m!1742427 () Bool)

(assert (=> d!438330 m!1742427))

(assert (=> d!438330 m!1742417))

(assert (=> b!1491658 m!1742417))

(assert (=> b!1491419 d!438330))

(declare-fun d!438332 () Bool)

(assert (=> d!438332 (= (list!6282 (append!474 acc!392 (_1!8223 (v!22679 (_1!8229 lt!518229))))) (list!6285 (c!244324 (append!474 acc!392 (_1!8223 (v!22679 (_1!8229 lt!518229)))))))))

(declare-fun bs!351021 () Bool)

(assert (= bs!351021 d!438332))

(declare-fun m!1742429 () Bool)

(assert (=> bs!351021 m!1742429))

(assert (=> b!1491419 d!438332))

(declare-fun d!438334 () Bool)

(assert (=> d!438334 (= (++!4275 (++!4275 lt!518199 lt!518227) lt!518230) (++!4275 lt!518199 (++!4275 lt!518227 lt!518230)))))

(declare-fun lt!518323 () Unit!25653)

(declare-fun choose!9099 (List!15922 List!15922 List!15922) Unit!25653)

(assert (=> d!438334 (= lt!518323 (choose!9099 lt!518199 lt!518227 lt!518230))))

(assert (=> d!438334 (= (lemmaConcatAssociativity!908 lt!518199 lt!518227 lt!518230) lt!518323)))

(declare-fun bs!351022 () Bool)

(assert (= bs!351022 d!438334))

(assert (=> bs!351022 m!1741993))

(declare-fun m!1742431 () Bool)

(assert (=> bs!351022 m!1742431))

(assert (=> bs!351022 m!1741993))

(declare-fun m!1742433 () Bool)

(assert (=> bs!351022 m!1742433))

(assert (=> bs!351022 m!1742023))

(assert (=> bs!351022 m!1742023))

(assert (=> bs!351022 m!1742029))

(assert (=> b!1491419 d!438334))

(declare-fun b!1491668 () Bool)

(declare-fun res!673046 () Bool)

(declare-fun e!954129 () Bool)

(assert (=> b!1491668 (=> (not res!673046) (not e!954129))))

(declare-fun ++!4278 (Conc!5387 Conc!5387) Conc!5387)

(assert (=> b!1491668 (= res!673046 (isBalanced!1591 (++!4278 (c!244323 treated!70) (c!244323 lt!518218))))))

(declare-fun b!1491670 () Bool)

(declare-fun res!673047 () Bool)

(assert (=> b!1491670 (=> (not res!673047) (not e!954129))))

(declare-fun height!793 (Conc!5387) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1491670 (= res!673047 (>= (height!793 (++!4278 (c!244323 treated!70) (c!244323 lt!518218))) (max!0 (height!793 (c!244323 treated!70)) (height!793 (c!244323 lt!518218)))))))

(declare-fun b!1491669 () Bool)

(declare-fun res!673048 () Bool)

(assert (=> b!1491669 (=> (not res!673048) (not e!954129))))

(assert (=> b!1491669 (= res!673048 (<= (height!793 (++!4278 (c!244323 treated!70) (c!244323 lt!518218))) (+ (max!0 (height!793 (c!244323 treated!70)) (height!793 (c!244323 lt!518218))) 1)))))

(declare-fun d!438336 () Bool)

(assert (=> d!438336 e!954129))

(declare-fun res!673045 () Bool)

(assert (=> d!438336 (=> (not res!673045) (not e!954129))))

(declare-fun appendAssocInst!351 (Conc!5387 Conc!5387) Bool)

(assert (=> d!438336 (= res!673045 (appendAssocInst!351 (c!244323 treated!70) (c!244323 lt!518218)))))

(declare-fun lt!518326 () BalanceConc!10716)

(assert (=> d!438336 (= lt!518326 (BalanceConc!10717 (++!4278 (c!244323 treated!70) (c!244323 lt!518218))))))

(assert (=> d!438336 (= (++!4276 treated!70 lt!518218) lt!518326)))

(declare-fun b!1491671 () Bool)

(assert (=> b!1491671 (= e!954129 (= (list!6283 lt!518326) (++!4275 (list!6283 treated!70) (list!6283 lt!518218))))))

(assert (= (and d!438336 res!673045) b!1491668))

(assert (= (and b!1491668 res!673046) b!1491669))

(assert (= (and b!1491669 res!673048) b!1491670))

(assert (= (and b!1491670 res!673047) b!1491671))

(declare-fun m!1742435 () Bool)

(assert (=> b!1491668 m!1742435))

(assert (=> b!1491668 m!1742435))

(declare-fun m!1742437 () Bool)

(assert (=> b!1491668 m!1742437))

(declare-fun m!1742439 () Bool)

(assert (=> b!1491671 m!1742439))

(assert (=> b!1491671 m!1741921))

(assert (=> b!1491671 m!1742033))

(assert (=> b!1491671 m!1741921))

(assert (=> b!1491671 m!1742033))

(declare-fun m!1742441 () Bool)

(assert (=> b!1491671 m!1742441))

(declare-fun m!1742443 () Bool)

(assert (=> b!1491669 m!1742443))

(assert (=> b!1491669 m!1742435))

(assert (=> b!1491669 m!1742435))

(declare-fun m!1742445 () Bool)

(assert (=> b!1491669 m!1742445))

(declare-fun m!1742447 () Bool)

(assert (=> b!1491669 m!1742447))

(assert (=> b!1491669 m!1742447))

(assert (=> b!1491669 m!1742443))

(declare-fun m!1742449 () Bool)

(assert (=> b!1491669 m!1742449))

(assert (=> b!1491670 m!1742443))

(assert (=> b!1491670 m!1742435))

(assert (=> b!1491670 m!1742435))

(assert (=> b!1491670 m!1742445))

(assert (=> b!1491670 m!1742447))

(assert (=> b!1491670 m!1742447))

(assert (=> b!1491670 m!1742443))

(assert (=> b!1491670 m!1742449))

(declare-fun m!1742451 () Bool)

(assert (=> d!438336 m!1742451))

(assert (=> d!438336 m!1742435))

(assert (=> b!1491419 d!438336))

(declare-fun d!438338 () Bool)

(declare-fun e!954130 () Bool)

(assert (=> d!438338 e!954130))

(declare-fun res!673049 () Bool)

(assert (=> d!438338 (=> res!673049 e!954130)))

(declare-fun lt!518327 () Bool)

(assert (=> d!438338 (= res!673049 (not lt!518327))))

(assert (=> d!438338 (= lt!518327 (= lt!518230 (drop!751 lt!518215 (- (size!12828 lt!518215) (size!12828 lt!518230)))))))

(assert (=> d!438338 (= (isSuffix!284 lt!518230 lt!518215) lt!518327)))

(declare-fun b!1491672 () Bool)

(assert (=> b!1491672 (= e!954130 (>= (size!12828 lt!518215) (size!12828 lt!518230)))))

(assert (= (and d!438338 (not res!673049)) b!1491672))

(declare-fun m!1742453 () Bool)

(assert (=> d!438338 m!1742453))

(assert (=> d!438338 m!1742265))

(declare-fun m!1742455 () Bool)

(assert (=> d!438338 m!1742455))

(assert (=> b!1491672 m!1742453))

(assert (=> b!1491672 m!1742265))

(assert (=> b!1491419 d!438338))

(declare-fun d!438340 () Bool)

(declare-fun lt!518330 () BalanceConc!10716)

(assert (=> d!438340 (= (list!6283 lt!518330) (originalCharacters!3680 (_1!8223 (v!22679 (_1!8229 lt!518229)))))))

(declare-fun dynLambda!7178 (Int TokenValue!2908) BalanceConc!10716)

(assert (=> d!438340 (= lt!518330 (dynLambda!7178 (toChars!4020 (transformation!2818 (rule!4599 (_1!8223 (v!22679 (_1!8229 lt!518229)))))) (value!89973 (_1!8223 (v!22679 (_1!8229 lt!518229))))))))

(assert (=> d!438340 (= (charsOf!1614 (_1!8223 (v!22679 (_1!8229 lt!518229)))) lt!518330)))

(declare-fun b_lambda!46731 () Bool)

(assert (=> (not b_lambda!46731) (not d!438340)))

(declare-fun tb!85225 () Bool)

(declare-fun t!138183 () Bool)

(assert (=> (and b!1491444 (= (toChars!4020 (transformation!2818 (h!21257 rules!1640))) (toChars!4020 (transformation!2818 (rule!4599 (_1!8223 (v!22679 (_1!8229 lt!518229))))))) t!138183) tb!85225))

(declare-fun b!1491677 () Bool)

(declare-fun e!954133 () Bool)

(declare-fun tp!424635 () Bool)

(assert (=> b!1491677 (= e!954133 (and (inv!21063 (c!244323 (dynLambda!7178 (toChars!4020 (transformation!2818 (rule!4599 (_1!8223 (v!22679 (_1!8229 lt!518229)))))) (value!89973 (_1!8223 (v!22679 (_1!8229 lt!518229))))))) tp!424635))))

(declare-fun result!102484 () Bool)

(assert (=> tb!85225 (= result!102484 (and (inv!21064 (dynLambda!7178 (toChars!4020 (transformation!2818 (rule!4599 (_1!8223 (v!22679 (_1!8229 lt!518229)))))) (value!89973 (_1!8223 (v!22679 (_1!8229 lt!518229)))))) e!954133))))

(assert (= tb!85225 b!1491677))

(declare-fun m!1742457 () Bool)

(assert (=> b!1491677 m!1742457))

(declare-fun m!1742459 () Bool)

(assert (=> tb!85225 m!1742459))

(assert (=> d!438340 t!138183))

(declare-fun b_and!103779 () Bool)

(assert (= b_and!103771 (and (=> t!138183 result!102484) b_and!103779)))

(declare-fun m!1742461 () Bool)

(assert (=> d!438340 m!1742461))

(declare-fun m!1742463 () Bool)

(assert (=> d!438340 m!1742463))

(assert (=> b!1491419 d!438340))

(declare-fun d!438342 () Bool)

(assert (=> d!438342 (= (list!6283 (_2!8223 (v!22679 (_1!8229 lt!518229)))) (list!6284 (c!244323 (_2!8223 (v!22679 (_1!8229 lt!518229))))))))

(declare-fun bs!351023 () Bool)

(assert (= bs!351023 d!438342))

(declare-fun m!1742465 () Bool)

(assert (=> bs!351023 m!1742465))

(assert (=> b!1491419 d!438342))

(declare-fun e!954134 () List!15922)

(declare-fun b!1491679 () Bool)

(assert (=> b!1491679 (= e!954134 (Cons!15854 (h!21255 lt!518199) (++!4275 (t!138177 lt!518199) (++!4275 lt!518227 lt!518230))))))

(declare-fun b!1491678 () Bool)

(assert (=> b!1491678 (= e!954134 (++!4275 lt!518227 lt!518230))))

(declare-fun d!438344 () Bool)

(declare-fun e!954135 () Bool)

(assert (=> d!438344 e!954135))

(declare-fun res!673051 () Bool)

(assert (=> d!438344 (=> (not res!673051) (not e!954135))))

(declare-fun lt!518331 () List!15922)

(assert (=> d!438344 (= res!673051 (= (content!2290 lt!518331) ((_ map or) (content!2290 lt!518199) (content!2290 (++!4275 lt!518227 lt!518230)))))))

(assert (=> d!438344 (= lt!518331 e!954134)))

(declare-fun c!244373 () Bool)

(assert (=> d!438344 (= c!244373 ((_ is Nil!15854) lt!518199))))

(assert (=> d!438344 (= (++!4275 lt!518199 (++!4275 lt!518227 lt!518230)) lt!518331)))

(declare-fun b!1491680 () Bool)

(declare-fun res!673050 () Bool)

(assert (=> b!1491680 (=> (not res!673050) (not e!954135))))

(assert (=> b!1491680 (= res!673050 (= (size!12828 lt!518331) (+ (size!12828 lt!518199) (size!12828 (++!4275 lt!518227 lt!518230)))))))

(declare-fun b!1491681 () Bool)

(assert (=> b!1491681 (= e!954135 (or (not (= (++!4275 lt!518227 lt!518230) Nil!15854)) (= lt!518331 lt!518199)))))

(assert (= (and d!438344 c!244373) b!1491678))

(assert (= (and d!438344 (not c!244373)) b!1491679))

(assert (= (and d!438344 res!673051) b!1491680))

(assert (= (and b!1491680 res!673050) b!1491681))

(assert (=> b!1491679 m!1742023))

(declare-fun m!1742467 () Bool)

(assert (=> b!1491679 m!1742467))

(declare-fun m!1742469 () Bool)

(assert (=> d!438344 m!1742469))

(assert (=> d!438344 m!1742167))

(assert (=> d!438344 m!1742023))

(declare-fun m!1742471 () Bool)

(assert (=> d!438344 m!1742471))

(declare-fun m!1742473 () Bool)

(assert (=> b!1491680 m!1742473))

(assert (=> b!1491680 m!1742173))

(assert (=> b!1491680 m!1742023))

(declare-fun m!1742475 () Bool)

(assert (=> b!1491680 m!1742475))

(assert (=> b!1491419 d!438344))

(declare-fun d!438346 () Bool)

(assert (=> d!438346 (= (list!6283 (_2!8222 lt!518207)) (list!6284 (c!244323 (_2!8222 lt!518207))))))

(declare-fun bs!351024 () Bool)

(assert (= bs!351024 d!438346))

(declare-fun m!1742477 () Bool)

(assert (=> bs!351024 m!1742477))

(assert (=> b!1491419 d!438346))

(declare-fun b!1491682 () Bool)

(declare-fun e!954138 () Bool)

(declare-fun lt!518332 () tuple2!14574)

(assert (=> b!1491682 (= e!954138 (= (list!6283 (_2!8222 lt!518332)) (list!6283 (_2!8223 (v!22679 (_1!8229 lt!518229))))))))

(declare-fun b!1491683 () Bool)

(declare-fun e!954136 () Bool)

(assert (=> b!1491683 (= e!954136 (= (list!6283 (_2!8222 lt!518332)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 (_1!8229 lt!518229))))))))))

(declare-fun b!1491684 () Bool)

(declare-fun e!954139 () tuple2!14574)

(assert (=> b!1491684 (= e!954139 (tuple2!14575 (BalanceConc!10719 Empty!5388) (_2!8223 (v!22679 (_1!8229 lt!518229)))))))

(declare-fun b!1491685 () Bool)

(declare-fun e!954137 () Bool)

(assert (=> b!1491685 (= e!954137 (not (isEmpty!9864 (_1!8222 lt!518332))))))

(declare-fun b!1491686 () Bool)

(declare-fun lt!518334 () tuple2!14574)

(declare-fun lt!518333 () Option!2901)

(assert (=> b!1491686 (= e!954139 (tuple2!14575 (prepend!441 (_1!8222 lt!518334) (_1!8223 (v!22679 lt!518333))) (_2!8222 lt!518334)))))

(assert (=> b!1491686 (= lt!518334 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518333))))))

(declare-fun b!1491687 () Bool)

(assert (=> b!1491687 (= e!954138 e!954137)))

(declare-fun res!673054 () Bool)

(assert (=> b!1491687 (= res!673054 (< (size!12829 (_2!8222 lt!518332)) (size!12829 (_2!8223 (v!22679 (_1!8229 lt!518229))))))))

(assert (=> b!1491687 (=> (not res!673054) (not e!954137))))

(declare-fun b!1491688 () Bool)

(declare-fun res!673052 () Bool)

(assert (=> b!1491688 (=> (not res!673052) (not e!954136))))

(assert (=> b!1491688 (= res!673052 (= (list!6282 (_1!8222 lt!518332)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 (_2!8223 (v!22679 (_1!8229 lt!518229))))))))))

(declare-fun d!438348 () Bool)

(assert (=> d!438348 e!954136))

(declare-fun res!673053 () Bool)

(assert (=> d!438348 (=> (not res!673053) (not e!954136))))

(assert (=> d!438348 (= res!673053 e!954138)))

(declare-fun c!244374 () Bool)

(assert (=> d!438348 (= c!244374 (> (size!12830 (_1!8222 lt!518332)) 0))))

(assert (=> d!438348 (= lt!518332 e!954139)))

(declare-fun c!244375 () Bool)

(assert (=> d!438348 (= c!244375 ((_ is Some!2900) lt!518333))))

(assert (=> d!438348 (= lt!518333 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 (_2!8223 (v!22679 (_1!8229 lt!518229)))))))

(assert (=> d!438348 (= (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 (_1!8229 lt!518229)))) lt!518332)))

(assert (= (and d!438348 c!244375) b!1491686))

(assert (= (and d!438348 (not c!244375)) b!1491684))

(assert (= (and d!438348 c!244374) b!1491687))

(assert (= (and d!438348 (not c!244374)) b!1491682))

(assert (= (and b!1491687 res!673054) b!1491685))

(assert (= (and d!438348 res!673053) b!1491688))

(assert (= (and b!1491688 res!673052) b!1491683))

(declare-fun m!1742479 () Bool)

(assert (=> b!1491688 m!1742479))

(assert (=> b!1491688 m!1742025))

(assert (=> b!1491688 m!1742025))

(declare-fun m!1742481 () Bool)

(assert (=> b!1491688 m!1742481))

(declare-fun m!1742483 () Bool)

(assert (=> d!438348 m!1742483))

(declare-fun m!1742485 () Bool)

(assert (=> d!438348 m!1742485))

(declare-fun m!1742487 () Bool)

(assert (=> b!1491687 m!1742487))

(declare-fun m!1742489 () Bool)

(assert (=> b!1491687 m!1742489))

(declare-fun m!1742491 () Bool)

(assert (=> b!1491683 m!1742491))

(assert (=> b!1491683 m!1742025))

(assert (=> b!1491683 m!1742025))

(assert (=> b!1491683 m!1742481))

(declare-fun m!1742493 () Bool)

(assert (=> b!1491685 m!1742493))

(assert (=> b!1491682 m!1742491))

(assert (=> b!1491682 m!1742025))

(declare-fun m!1742495 () Bool)

(assert (=> b!1491686 m!1742495))

(declare-fun m!1742497 () Bool)

(assert (=> b!1491686 m!1742497))

(assert (=> b!1491419 d!438348))

(declare-fun d!438350 () Bool)

(declare-fun e!954141 () Bool)

(assert (=> d!438350 e!954141))

(declare-fun res!673056 () Bool)

(assert (=> d!438350 (=> (not res!673056) (not e!954141))))

(declare-fun lt!518335 () List!15923)

(assert (=> d!438350 (= res!673056 (= (content!2291 lt!518335) ((_ map or) (content!2291 lt!518202) (content!2291 (++!4277 lt!518204 lt!518201)))))))

(declare-fun e!954140 () List!15923)

(assert (=> d!438350 (= lt!518335 e!954140)))

(declare-fun c!244376 () Bool)

(assert (=> d!438350 (= c!244376 ((_ is Nil!15855) lt!518202))))

(assert (=> d!438350 (= (++!4277 lt!518202 (++!4277 lt!518204 lt!518201)) lt!518335)))

(declare-fun b!1491690 () Bool)

(assert (=> b!1491690 (= e!954140 (Cons!15855 (h!21256 lt!518202) (++!4277 (t!138178 lt!518202) (++!4277 lt!518204 lt!518201))))))

(declare-fun b!1491689 () Bool)

(assert (=> b!1491689 (= e!954140 (++!4277 lt!518204 lt!518201))))

(declare-fun b!1491692 () Bool)

(assert (=> b!1491692 (= e!954141 (or (not (= (++!4277 lt!518204 lt!518201) Nil!15855)) (= lt!518335 lt!518202)))))

(declare-fun b!1491691 () Bool)

(declare-fun res!673055 () Bool)

(assert (=> b!1491691 (=> (not res!673055) (not e!954141))))

(assert (=> b!1491691 (= res!673055 (= (size!12831 lt!518335) (+ (size!12831 lt!518202) (size!12831 (++!4277 lt!518204 lt!518201)))))))

(assert (= (and d!438350 c!244376) b!1491689))

(assert (= (and d!438350 (not c!244376)) b!1491690))

(assert (= (and d!438350 res!673056) b!1491691))

(assert (= (and b!1491691 res!673055) b!1491692))

(declare-fun m!1742499 () Bool)

(assert (=> d!438350 m!1742499))

(assert (=> d!438350 m!1742335))

(assert (=> d!438350 m!1742007))

(declare-fun m!1742501 () Bool)

(assert (=> d!438350 m!1742501))

(assert (=> b!1491690 m!1742007))

(declare-fun m!1742503 () Bool)

(assert (=> b!1491690 m!1742503))

(declare-fun m!1742505 () Bool)

(assert (=> b!1491691 m!1742505))

(assert (=> b!1491691 m!1742341))

(assert (=> b!1491691 m!1742007))

(declare-fun m!1742507 () Bool)

(assert (=> b!1491691 m!1742507))

(assert (=> b!1491419 d!438350))

(declare-fun d!438352 () Bool)

(assert (=> d!438352 (= (list!6282 (++!4274 acc!392 (_1!8222 lt!518203))) (list!6285 (c!244324 (++!4274 acc!392 (_1!8222 lt!518203)))))))

(declare-fun bs!351025 () Bool)

(assert (= bs!351025 d!438352))

(declare-fun m!1742509 () Bool)

(assert (=> bs!351025 m!1742509))

(assert (=> b!1491418 d!438352))

(declare-fun d!438354 () Bool)

(assert (=> d!438354 (= (list!6282 (_1!8222 lt!518212)) (list!6285 (c!244324 (_1!8222 lt!518212))))))

(declare-fun bs!351026 () Bool)

(assert (= bs!351026 d!438354))

(declare-fun m!1742511 () Bool)

(assert (=> bs!351026 m!1742511))

(assert (=> b!1491418 d!438354))

(declare-fun b!1491702 () Bool)

(declare-fun res!673066 () Bool)

(declare-fun e!954144 () Bool)

(assert (=> b!1491702 (=> (not res!673066) (not e!954144))))

(declare-fun height!794 (Conc!5388) Int)

(declare-fun ++!4279 (Conc!5388 Conc!5388) Conc!5388)

(assert (=> b!1491702 (= res!673066 (<= (height!794 (++!4279 (c!244324 acc!392) (c!244324 (_1!8222 lt!518203)))) (+ (max!0 (height!794 (c!244324 acc!392)) (height!794 (c!244324 (_1!8222 lt!518203)))) 1)))))

(declare-fun b!1491701 () Bool)

(declare-fun res!673065 () Bool)

(assert (=> b!1491701 (=> (not res!673065) (not e!954144))))

(assert (=> b!1491701 (= res!673065 (isBalanced!1592 (++!4279 (c!244324 acc!392) (c!244324 (_1!8222 lt!518203)))))))

(declare-fun lt!518338 () BalanceConc!10718)

(declare-fun b!1491704 () Bool)

(assert (=> b!1491704 (= e!954144 (= (list!6282 lt!518338) (++!4277 (list!6282 acc!392) (list!6282 (_1!8222 lt!518203)))))))

(declare-fun d!438356 () Bool)

(assert (=> d!438356 e!954144))

(declare-fun res!673067 () Bool)

(assert (=> d!438356 (=> (not res!673067) (not e!954144))))

(declare-fun appendAssocInst!352 (Conc!5388 Conc!5388) Bool)

(assert (=> d!438356 (= res!673067 (appendAssocInst!352 (c!244324 acc!392) (c!244324 (_1!8222 lt!518203))))))

(assert (=> d!438356 (= lt!518338 (BalanceConc!10719 (++!4279 (c!244324 acc!392) (c!244324 (_1!8222 lt!518203)))))))

(assert (=> d!438356 (= (++!4274 acc!392 (_1!8222 lt!518203)) lt!518338)))

(declare-fun b!1491703 () Bool)

(declare-fun res!673068 () Bool)

(assert (=> b!1491703 (=> (not res!673068) (not e!954144))))

(assert (=> b!1491703 (= res!673068 (>= (height!794 (++!4279 (c!244324 acc!392) (c!244324 (_1!8222 lt!518203)))) (max!0 (height!794 (c!244324 acc!392)) (height!794 (c!244324 (_1!8222 lt!518203))))))))

(assert (= (and d!438356 res!673067) b!1491701))

(assert (= (and b!1491701 res!673065) b!1491702))

(assert (= (and b!1491702 res!673066) b!1491703))

(assert (= (and b!1491703 res!673068) b!1491704))

(declare-fun m!1742513 () Bool)

(assert (=> d!438356 m!1742513))

(declare-fun m!1742515 () Bool)

(assert (=> d!438356 m!1742515))

(declare-fun m!1742517 () Bool)

(assert (=> b!1491704 m!1742517))

(assert (=> b!1491704 m!1742053))

(declare-fun m!1742519 () Bool)

(assert (=> b!1491704 m!1742519))

(assert (=> b!1491704 m!1742053))

(assert (=> b!1491704 m!1742519))

(declare-fun m!1742521 () Bool)

(assert (=> b!1491704 m!1742521))

(declare-fun m!1742523 () Bool)

(assert (=> b!1491703 m!1742523))

(declare-fun m!1742525 () Bool)

(assert (=> b!1491703 m!1742525))

(declare-fun m!1742527 () Bool)

(assert (=> b!1491703 m!1742527))

(assert (=> b!1491703 m!1742523))

(assert (=> b!1491703 m!1742515))

(assert (=> b!1491703 m!1742515))

(declare-fun m!1742529 () Bool)

(assert (=> b!1491703 m!1742529))

(assert (=> b!1491703 m!1742525))

(assert (=> b!1491701 m!1742515))

(assert (=> b!1491701 m!1742515))

(declare-fun m!1742531 () Bool)

(assert (=> b!1491701 m!1742531))

(assert (=> b!1491702 m!1742523))

(assert (=> b!1491702 m!1742525))

(assert (=> b!1491702 m!1742527))

(assert (=> b!1491702 m!1742523))

(assert (=> b!1491702 m!1742515))

(assert (=> b!1491702 m!1742515))

(assert (=> b!1491702 m!1742529))

(assert (=> b!1491702 m!1742525))

(assert (=> b!1491418 d!438356))

(declare-fun b!1491705 () Bool)

(declare-fun e!954147 () Bool)

(declare-fun lt!518339 () tuple2!14574)

(assert (=> b!1491705 (= e!954147 (= (list!6283 (_2!8222 lt!518339)) (list!6283 totalInput!458)))))

(declare-fun b!1491706 () Bool)

(declare-fun e!954145 () Bool)

(assert (=> b!1491706 (= e!954145 (= (list!6283 (_2!8222 lt!518339)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 totalInput!458)))))))

(declare-fun b!1491707 () Bool)

(declare-fun e!954148 () tuple2!14574)

(assert (=> b!1491707 (= e!954148 (tuple2!14575 (BalanceConc!10719 Empty!5388) totalInput!458))))

(declare-fun b!1491708 () Bool)

(declare-fun e!954146 () Bool)

(assert (=> b!1491708 (= e!954146 (not (isEmpty!9864 (_1!8222 lt!518339))))))

(declare-fun b!1491709 () Bool)

(declare-fun lt!518341 () tuple2!14574)

(declare-fun lt!518340 () Option!2901)

(assert (=> b!1491709 (= e!954148 (tuple2!14575 (prepend!441 (_1!8222 lt!518341) (_1!8223 (v!22679 lt!518340))) (_2!8222 lt!518341)))))

(assert (=> b!1491709 (= lt!518341 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518340))))))

(declare-fun b!1491710 () Bool)

(assert (=> b!1491710 (= e!954147 e!954146)))

(declare-fun res!673071 () Bool)

(assert (=> b!1491710 (= res!673071 (< (size!12829 (_2!8222 lt!518339)) (size!12829 totalInput!458)))))

(assert (=> b!1491710 (=> (not res!673071) (not e!954146))))

(declare-fun b!1491711 () Bool)

(declare-fun res!673069 () Bool)

(assert (=> b!1491711 (=> (not res!673069) (not e!954145))))

(assert (=> b!1491711 (= res!673069 (= (list!6282 (_1!8222 lt!518339)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 totalInput!458)))))))

(declare-fun d!438358 () Bool)

(assert (=> d!438358 e!954145))

(declare-fun res!673070 () Bool)

(assert (=> d!438358 (=> (not res!673070) (not e!954145))))

(assert (=> d!438358 (= res!673070 e!954147)))

(declare-fun c!244380 () Bool)

(assert (=> d!438358 (= c!244380 (> (size!12830 (_1!8222 lt!518339)) 0))))

(assert (=> d!438358 (= lt!518339 e!954148)))

(declare-fun c!244381 () Bool)

(assert (=> d!438358 (= c!244381 ((_ is Some!2900) lt!518340))))

(assert (=> d!438358 (= lt!518340 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!438358 (= (lexRec!310 thiss!13241 rules!1640 totalInput!458) lt!518339)))

(assert (= (and d!438358 c!244381) b!1491709))

(assert (= (and d!438358 (not c!244381)) b!1491707))

(assert (= (and d!438358 c!244380) b!1491710))

(assert (= (and d!438358 (not c!244380)) b!1491705))

(assert (= (and b!1491710 res!673071) b!1491708))

(assert (= (and d!438358 res!673070) b!1491711))

(assert (= (and b!1491711 res!673069) b!1491706))

(declare-fun m!1742533 () Bool)

(assert (=> b!1491711 m!1742533))

(assert (=> b!1491711 m!1741917))

(assert (=> b!1491711 m!1741917))

(declare-fun m!1742535 () Bool)

(assert (=> b!1491711 m!1742535))

(declare-fun m!1742537 () Bool)

(assert (=> d!438358 m!1742537))

(declare-fun m!1742539 () Bool)

(assert (=> d!438358 m!1742539))

(declare-fun m!1742541 () Bool)

(assert (=> b!1491710 m!1742541))

(declare-fun m!1742543 () Bool)

(assert (=> b!1491710 m!1742543))

(declare-fun m!1742545 () Bool)

(assert (=> b!1491706 m!1742545))

(assert (=> b!1491706 m!1741917))

(assert (=> b!1491706 m!1741917))

(assert (=> b!1491706 m!1742535))

(declare-fun m!1742547 () Bool)

(assert (=> b!1491708 m!1742547))

(assert (=> b!1491705 m!1742545))

(assert (=> b!1491705 m!1741917))

(declare-fun m!1742549 () Bool)

(assert (=> b!1491709 m!1742549))

(declare-fun m!1742551 () Bool)

(assert (=> b!1491709 m!1742551))

(assert (=> b!1491418 d!438358))

(declare-fun b!1491712 () Bool)

(declare-fun e!954151 () Bool)

(declare-fun lt!518342 () tuple2!14574)

(assert (=> b!1491712 (= e!954151 (= (list!6283 (_2!8222 lt!518342)) (list!6283 input!1102)))))

(declare-fun e!954149 () Bool)

(declare-fun b!1491713 () Bool)

(assert (=> b!1491713 (= e!954149 (= (list!6283 (_2!8222 lt!518342)) (_2!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 input!1102)))))))

(declare-fun b!1491714 () Bool)

(declare-fun e!954152 () tuple2!14574)

(assert (=> b!1491714 (= e!954152 (tuple2!14575 (BalanceConc!10719 Empty!5388) input!1102))))

(declare-fun b!1491715 () Bool)

(declare-fun e!954150 () Bool)

(assert (=> b!1491715 (= e!954150 (not (isEmpty!9864 (_1!8222 lt!518342))))))

(declare-fun b!1491716 () Bool)

(declare-fun lt!518344 () tuple2!14574)

(declare-fun lt!518343 () Option!2901)

(assert (=> b!1491716 (= e!954152 (tuple2!14575 (prepend!441 (_1!8222 lt!518344) (_1!8223 (v!22679 lt!518343))) (_2!8222 lt!518344)))))

(assert (=> b!1491716 (= lt!518344 (lexRec!310 thiss!13241 rules!1640 (_2!8223 (v!22679 lt!518343))))))

(declare-fun b!1491717 () Bool)

(assert (=> b!1491717 (= e!954151 e!954150)))

(declare-fun res!673074 () Bool)

(assert (=> b!1491717 (= res!673074 (< (size!12829 (_2!8222 lt!518342)) (size!12829 input!1102)))))

(assert (=> b!1491717 (=> (not res!673074) (not e!954150))))

(declare-fun b!1491718 () Bool)

(declare-fun res!673072 () Bool)

(assert (=> b!1491718 (=> (not res!673072) (not e!954149))))

(assert (=> b!1491718 (= res!673072 (= (list!6282 (_1!8222 lt!518342)) (_1!8224 (lexList!731 thiss!13241 rules!1640 (list!6283 input!1102)))))))

(declare-fun d!438360 () Bool)

(assert (=> d!438360 e!954149))

(declare-fun res!673073 () Bool)

(assert (=> d!438360 (=> (not res!673073) (not e!954149))))

(assert (=> d!438360 (= res!673073 e!954151)))

(declare-fun c!244382 () Bool)

(assert (=> d!438360 (= c!244382 (> (size!12830 (_1!8222 lt!518342)) 0))))

(assert (=> d!438360 (= lt!518342 e!954152)))

(declare-fun c!244383 () Bool)

(assert (=> d!438360 (= c!244383 ((_ is Some!2900) lt!518343))))

(assert (=> d!438360 (= lt!518343 (maxPrefixZipperSequence!573 thiss!13241 rules!1640 input!1102))))

(assert (=> d!438360 (= (lexRec!310 thiss!13241 rules!1640 input!1102) lt!518342)))

(assert (= (and d!438360 c!244383) b!1491716))

(assert (= (and d!438360 (not c!244383)) b!1491714))

(assert (= (and d!438360 c!244382) b!1491717))

(assert (= (and d!438360 (not c!244382)) b!1491712))

(assert (= (and b!1491717 res!673074) b!1491715))

(assert (= (and d!438360 res!673073) b!1491718))

(assert (= (and b!1491718 res!673072) b!1491713))

(declare-fun m!1742553 () Bool)

(assert (=> b!1491718 m!1742553))

(assert (=> b!1491718 m!1741919))

(assert (=> b!1491718 m!1741919))

(declare-fun m!1742555 () Bool)

(assert (=> b!1491718 m!1742555))

(declare-fun m!1742557 () Bool)

(assert (=> d!438360 m!1742557))

(assert (=> d!438360 m!1742011))

(declare-fun m!1742559 () Bool)

(assert (=> b!1491717 m!1742559))

(declare-fun m!1742561 () Bool)

(assert (=> b!1491717 m!1742561))

(declare-fun m!1742563 () Bool)

(assert (=> b!1491713 m!1742563))

(assert (=> b!1491713 m!1741919))

(assert (=> b!1491713 m!1741919))

(assert (=> b!1491713 m!1742555))

(declare-fun m!1742565 () Bool)

(assert (=> b!1491715 m!1742565))

(assert (=> b!1491712 m!1742563))

(assert (=> b!1491712 m!1741919))

(declare-fun m!1742567 () Bool)

(assert (=> b!1491716 m!1742567))

(declare-fun m!1742569 () Bool)

(assert (=> b!1491716 m!1742569))

(assert (=> b!1491418 d!438360))

(declare-fun d!438362 () Bool)

(declare-fun e!954166 () Bool)

(assert (=> d!438362 e!954166))

(declare-fun res!673097 () Bool)

(assert (=> d!438362 (=> (not res!673097) (not e!954166))))

(declare-fun lt!518370 () tuple4!606)

(assert (=> d!438362 (= res!673097 (= (isDefined!2337 (_1!8229 lt!518370)) (isDefined!2338 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102)))))))

(declare-datatypes ((tuple4!608 0))(
  ( (tuple4!609 (_1!8231 Option!2901) (_2!8231 CacheUp!798) (_3!937 CacheFurthestNullable!224) (_4!304 CacheDown!802)) )
))
(declare-fun lt!518365 () tuple4!608)

(assert (=> d!438362 (= lt!518370 (tuple4!607 (_1!8231 lt!518365) (_2!8231 lt!518365) (_4!304 lt!518365) (_3!937 lt!518365)))))

(declare-fun e!954165 () tuple4!608)

(assert (=> d!438362 (= lt!518365 e!954165)))

(declare-fun c!244386 () Bool)

(assert (=> d!438362 (= c!244386 (and ((_ is Cons!15856) rules!1640) ((_ is Nil!15856) (t!138179 rules!1640))))))

(declare-fun lt!518364 () Unit!25653)

(declare-fun lt!518369 () Unit!25653)

(assert (=> d!438362 (= lt!518364 lt!518369)))

(declare-fun lt!518367 () List!15922)

(declare-fun lt!518363 () List!15922)

(assert (=> d!438362 (isPrefix!1210 lt!518367 lt!518363)))

(assert (=> d!438362 (= lt!518369 (lemmaIsPrefixRefl!840 lt!518367 lt!518363))))

(assert (=> d!438362 (= lt!518363 (list!6283 input!1102))))

(assert (=> d!438362 (= lt!518367 (list!6283 input!1102))))

(assert (=> d!438362 (rulesValidInductive!848 thiss!13241 rules!1640)))

(assert (=> d!438362 (= (maxPrefixZipperSequenceV3Mem!11 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!518370)))

(declare-fun b!1491743 () Bool)

(declare-fun res!673095 () Bool)

(assert (=> b!1491743 (=> (not res!673095) (not e!954166))))

(assert (=> b!1491743 (= res!673095 (valid!1108 (_4!303 lt!518370)))))

(declare-fun b!1491744 () Bool)

(declare-fun res!673100 () Bool)

(assert (=> b!1491744 (=> (not res!673100) (not e!954166))))

(assert (=> b!1491744 (= res!673100 (valid!1109 (_2!8229 lt!518370)))))

(declare-fun b!1491745 () Bool)

(declare-fun res!673102 () Bool)

(assert (=> b!1491745 (=> (not res!673102) (not e!954166))))

(assert (=> b!1491745 (= res!673102 (valid!1107 (_3!936 lt!518370)))))

(declare-fun b!1491746 () Bool)

(declare-fun lt!518368 () tuple4!606)

(assert (=> b!1491746 (= e!954165 (tuple4!609 (_1!8229 lt!518368) (_2!8229 lt!518368) (_4!303 lt!518368) (_3!936 lt!518368)))))

(declare-fun call!99014 () tuple4!606)

(assert (=> b!1491746 (= lt!518368 call!99014)))

(declare-fun b!1491747 () Bool)

(declare-fun res!673103 () Bool)

(assert (=> b!1491747 (=> (not res!673103) (not e!954166))))

(declare-fun e!954167 () Bool)

(assert (=> b!1491747 (= res!673103 e!954167)))

(declare-fun res!673098 () Bool)

(assert (=> b!1491747 (=> res!673098 e!954167)))

(assert (=> b!1491747 (= res!673098 (not (isDefined!2337 (_1!8229 lt!518370))))))

(declare-fun b!1491748 () Bool)

(declare-fun e!954170 () Bool)

(declare-fun e!954168 () Bool)

(assert (=> b!1491748 (= e!954170 e!954168)))

(declare-fun res!673096 () Bool)

(assert (=> b!1491748 (=> (not res!673096) (not e!954168))))

(assert (=> b!1491748 (= res!673096 (= (_1!8223 (get!4707 (_1!8229 lt!518370))) (_1!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491749 () Bool)

(assert (=> b!1491749 (= e!954168 (= (list!6283 (_2!8223 (get!4707 (_1!8229 lt!518370)))) (_2!8230 (get!4708 (maxPrefixZipper!251 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491750 () Bool)

(declare-fun lt!518371 () tuple4!606)

(declare-fun lt!518366 () tuple4!606)

(assert (=> b!1491750 (= e!954165 (tuple4!609 (ite (and ((_ is None!2900) (_1!8229 lt!518371)) ((_ is None!2900) (_1!8229 lt!518366))) None!2900 (ite ((_ is None!2900) (_1!8229 lt!518366)) (_1!8229 lt!518371) (ite ((_ is None!2900) (_1!8229 lt!518371)) (_1!8229 lt!518366) (ite (>= (size!12825 (_1!8223 (v!22679 (_1!8229 lt!518371)))) (size!12825 (_1!8223 (v!22679 (_1!8229 lt!518366))))) (_1!8229 lt!518371) (_1!8229 lt!518366))))) (_2!8229 lt!518366) (_4!303 lt!518366) (_3!936 lt!518366)))))

(assert (=> b!1491750 (= lt!518371 call!99014)))

(assert (=> b!1491750 (= lt!518366 (maxPrefixZipperSequenceV3Mem!11 thiss!13241 (t!138179 rules!1640) input!1102 totalInput!458 (_2!8229 lt!518371) (_3!936 lt!518371) (_4!303 lt!518371)))))

(declare-fun bm!99009 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!3 (LexerInterface!2473 Rule!5436 BalanceConc!10716 BalanceConc!10716 CacheUp!798 CacheDown!802 CacheFurthestNullable!224) tuple4!606)

(assert (=> bm!99009 (= call!99014 (maxPrefixOneRuleZipperSequenceV3Mem!3 thiss!13241 (h!21257 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1491751 () Bool)

(declare-fun e!954169 () Bool)

(assert (=> b!1491751 (= e!954169 (= (list!6283 (_2!8223 (get!4707 (_1!8229 lt!518370)))) (_2!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491752 () Bool)

(declare-fun res!673101 () Bool)

(assert (=> b!1491752 (=> (not res!673101) (not e!954166))))

(assert (=> b!1491752 (= res!673101 e!954170)))

(declare-fun res!673099 () Bool)

(assert (=> b!1491752 (=> res!673099 e!954170)))

(assert (=> b!1491752 (= res!673099 (not (isDefined!2337 (_1!8229 lt!518370))))))

(declare-fun b!1491753 () Bool)

(assert (=> b!1491753 (= e!954167 e!954169)))

(declare-fun res!673104 () Bool)

(assert (=> b!1491753 (=> (not res!673104) (not e!954169))))

(assert (=> b!1491753 (= res!673104 (= (_1!8223 (get!4707 (_1!8229 lt!518370))) (_1!8230 (get!4708 (maxPrefix!1200 thiss!13241 rules!1640 (list!6283 input!1102))))))))

(declare-fun b!1491754 () Bool)

(assert (=> b!1491754 (= e!954166 (= (totalInput!2252 (_4!303 lt!518370)) totalInput!458))))

(assert (= (and d!438362 c!244386) b!1491746))

(assert (= (and d!438362 (not c!244386)) b!1491750))

(assert (= (or b!1491746 b!1491750) bm!99009))

(assert (= (and d!438362 res!673097) b!1491752))

(assert (= (and b!1491752 (not res!673099)) b!1491748))

(assert (= (and b!1491748 res!673096) b!1491749))

(assert (= (and b!1491752 res!673101) b!1491747))

(assert (= (and b!1491747 (not res!673098)) b!1491753))

(assert (= (and b!1491753 res!673104) b!1491751))

(assert (= (and b!1491747 res!673103) b!1491744))

(assert (= (and b!1491744 res!673100) b!1491745))

(assert (= (and b!1491745 res!673102) b!1491743))

(assert (= (and b!1491743 res!673095) b!1491754))

(declare-fun m!1742571 () Bool)

(assert (=> b!1491747 m!1742571))

(declare-fun m!1742573 () Bool)

(assert (=> b!1491743 m!1742573))

(declare-fun m!1742575 () Bool)

(assert (=> b!1491744 m!1742575))

(declare-fun m!1742577 () Bool)

(assert (=> b!1491745 m!1742577))

(assert (=> d!438362 m!1741919))

(assert (=> d!438362 m!1742305))

(declare-fun m!1742579 () Bool)

(assert (=> d!438362 m!1742579))

(declare-fun m!1742581 () Bool)

(assert (=> d!438362 m!1742581))

(assert (=> d!438362 m!1742571))

(assert (=> d!438362 m!1742305))

(assert (=> d!438362 m!1742323))

(assert (=> d!438362 m!1742325))

(assert (=> d!438362 m!1741919))

(declare-fun m!1742583 () Bool)

(assert (=> b!1491753 m!1742583))

(assert (=> b!1491753 m!1741919))

(assert (=> b!1491753 m!1741919))

(assert (=> b!1491753 m!1742311))

(assert (=> b!1491753 m!1742311))

(assert (=> b!1491753 m!1742313))

(declare-fun m!1742585 () Bool)

(assert (=> bm!99009 m!1742585))

(assert (=> b!1491751 m!1742311))

(assert (=> b!1491751 m!1742313))

(declare-fun m!1742587 () Bool)

(assert (=> b!1491751 m!1742587))

(assert (=> b!1491751 m!1741919))

(assert (=> b!1491751 m!1742311))

(assert (=> b!1491751 m!1742583))

(assert (=> b!1491751 m!1741919))

(declare-fun m!1742589 () Bool)

(assert (=> b!1491750 m!1742589))

(assert (=> b!1491749 m!1741919))

(assert (=> b!1491749 m!1742305))

(assert (=> b!1491749 m!1742587))

(assert (=> b!1491749 m!1742305))

(assert (=> b!1491749 m!1742307))

(assert (=> b!1491749 m!1742583))

(assert (=> b!1491749 m!1741919))

(assert (=> b!1491752 m!1742571))

(assert (=> b!1491748 m!1742583))

(assert (=> b!1491748 m!1741919))

(assert (=> b!1491748 m!1741919))

(assert (=> b!1491748 m!1742305))

(assert (=> b!1491748 m!1742305))

(assert (=> b!1491748 m!1742307))

(assert (=> b!1491455 d!438362))

(declare-fun b!1491761 () Bool)

(declare-fun e!954175 () Bool)

(declare-fun setRes!8436 () Bool)

(declare-fun tp!424642 () Bool)

(assert (=> b!1491761 (= e!954175 (and setRes!8436 tp!424642))))

(declare-fun condSetEmpty!8436 () Bool)

(assert (=> b!1491761 (= condSetEmpty!8436 (= (_1!8225 (_1!8226 (h!21258 mapDefault!6671))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491762 () Bool)

(declare-fun e!954176 () Bool)

(declare-fun tp!424643 () Bool)

(assert (=> b!1491762 (= e!954176 tp!424643)))

(declare-fun setIsEmpty!8436 () Bool)

(assert (=> setIsEmpty!8436 setRes!8436))

(declare-fun setElem!8436 () Context!1302)

(declare-fun tp!424644 () Bool)

(declare-fun setNonEmpty!8436 () Bool)

(declare-fun inv!21075 (Context!1302) Bool)

(assert (=> setNonEmpty!8436 (= setRes!8436 (and tp!424644 (inv!21075 setElem!8436) e!954176))))

(declare-fun setRest!8436 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8436 (= (_1!8225 (_1!8226 (h!21258 mapDefault!6671))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8436 true) setRest!8436))))

(assert (=> b!1491448 (= tp!424626 e!954175)))

(assert (= (and b!1491761 condSetEmpty!8436) setIsEmpty!8436))

(assert (= (and b!1491761 (not condSetEmpty!8436)) setNonEmpty!8436))

(assert (= setNonEmpty!8436 b!1491762))

(assert (= (and b!1491448 ((_ is Cons!15857) mapDefault!6671)) b!1491761))

(declare-fun m!1742591 () Bool)

(assert (=> setNonEmpty!8436 m!1742591))

(declare-fun tp!424652 () Bool)

(declare-fun e!954181 () Bool)

(declare-fun b!1491771 () Bool)

(declare-fun tp!424653 () Bool)

(assert (=> b!1491771 (= e!954181 (and (inv!21069 (left!13293 (c!244324 acc!392))) tp!424652 (inv!21069 (right!13623 (c!244324 acc!392))) tp!424653))))

(declare-fun b!1491773 () Bool)

(declare-fun e!954182 () Bool)

(declare-fun tp!424651 () Bool)

(assert (=> b!1491773 (= e!954182 tp!424651)))

(declare-fun b!1491772 () Bool)

(declare-fun inv!21076 (IArray!10781) Bool)

(assert (=> b!1491772 (= e!954181 (and (inv!21076 (xs!8151 (c!244324 acc!392))) e!954182))))

(assert (=> b!1491430 (= tp!424625 (and (inv!21069 (c!244324 acc!392)) e!954181))))

(assert (= (and b!1491430 ((_ is Node!5388) (c!244324 acc!392))) b!1491771))

(assert (= b!1491772 b!1491773))

(assert (= (and b!1491430 ((_ is Leaf!8000) (c!244324 acc!392))) b!1491772))

(declare-fun m!1742593 () Bool)

(assert (=> b!1491771 m!1742593))

(declare-fun m!1742595 () Bool)

(assert (=> b!1491771 m!1742595))

(declare-fun m!1742597 () Bool)

(assert (=> b!1491772 m!1742597))

(assert (=> b!1491430 m!1742037))

(declare-fun b!1491774 () Bool)

(declare-fun e!954183 () Bool)

(declare-fun setRes!8437 () Bool)

(declare-fun tp!424654 () Bool)

(assert (=> b!1491774 (= e!954183 (and setRes!8437 tp!424654))))

(declare-fun condSetEmpty!8437 () Bool)

(assert (=> b!1491774 (= condSetEmpty!8437 (= (_1!8225 (_1!8226 (h!21258 (zeroValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491775 () Bool)

(declare-fun e!954184 () Bool)

(declare-fun tp!424655 () Bool)

(assert (=> b!1491775 (= e!954184 tp!424655)))

(declare-fun setIsEmpty!8437 () Bool)

(assert (=> setIsEmpty!8437 setRes!8437))

(declare-fun setNonEmpty!8437 () Bool)

(declare-fun setElem!8437 () Context!1302)

(declare-fun tp!424656 () Bool)

(assert (=> setNonEmpty!8437 (= setRes!8437 (and tp!424656 (inv!21075 setElem!8437) e!954184))))

(declare-fun setRest!8437 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8437 (= (_1!8225 (_1!8226 (h!21258 (zeroValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8437 true) setRest!8437))))

(assert (=> b!1491468 (= tp!424624 e!954183)))

(assert (= (and b!1491774 condSetEmpty!8437) setIsEmpty!8437))

(assert (= (and b!1491774 (not condSetEmpty!8437)) setNonEmpty!8437))

(assert (= setNonEmpty!8437 b!1491775))

(assert (= (and b!1491468 ((_ is Cons!15857) (zeroValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64)))))))) b!1491774))

(declare-fun m!1742599 () Bool)

(assert (=> setNonEmpty!8437 m!1742599))

(declare-fun b!1491776 () Bool)

(declare-fun e!954185 () Bool)

(declare-fun setRes!8438 () Bool)

(declare-fun tp!424657 () Bool)

(assert (=> b!1491776 (= e!954185 (and setRes!8438 tp!424657))))

(declare-fun condSetEmpty!8438 () Bool)

(assert (=> b!1491776 (= condSetEmpty!8438 (= (_1!8225 (_1!8226 (h!21258 (minValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491777 () Bool)

(declare-fun e!954186 () Bool)

(declare-fun tp!424658 () Bool)

(assert (=> b!1491777 (= e!954186 tp!424658)))

(declare-fun setIsEmpty!8438 () Bool)

(assert (=> setIsEmpty!8438 setRes!8438))

(declare-fun tp!424659 () Bool)

(declare-fun setElem!8438 () Context!1302)

(declare-fun setNonEmpty!8438 () Bool)

(assert (=> setNonEmpty!8438 (= setRes!8438 (and tp!424659 (inv!21075 setElem!8438) e!954186))))

(declare-fun setRest!8438 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8438 (= (_1!8225 (_1!8226 (h!21258 (minValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8438 true) setRest!8438))))

(assert (=> b!1491468 (= tp!424620 e!954185)))

(assert (= (and b!1491776 condSetEmpty!8438) setIsEmpty!8438))

(assert (= (and b!1491776 (not condSetEmpty!8438)) setNonEmpty!8438))

(assert (= setNonEmpty!8438 b!1491777))

(assert (= (and b!1491468 ((_ is Cons!15857) (minValue!1662 (v!22680 (underlying!3019 (v!22681 (underlying!3020 (cache!1730 cacheFurthestNullable!64)))))))) b!1491776))

(declare-fun m!1742601 () Bool)

(assert (=> setNonEmpty!8438 m!1742601))

(declare-fun tp!424689 () Bool)

(declare-fun tp_is_empty!6997 () Bool)

(declare-fun tp!424690 () Bool)

(declare-fun setRes!8443 () Bool)

(declare-fun b!1491792 () Bool)

(declare-fun e!954199 () Bool)

(declare-fun mapDefault!6674 () List!15920)

(declare-fun e!954201 () Bool)

(assert (=> b!1491792 (= e!954199 (and tp!424689 (inv!21075 (_2!8220 (_1!8221 (h!21253 mapDefault!6674)))) e!954201 tp_is_empty!6997 setRes!8443 tp!424690))))

(declare-fun condSetEmpty!8443 () Bool)

(assert (=> b!1491792 (= condSetEmpty!8443 (= (_2!8221 (h!21253 mapDefault!6674)) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun e!954200 () Bool)

(declare-fun tp!424683 () Bool)

(declare-fun mapValue!6674 () List!15920)

(declare-fun b!1491793 () Bool)

(declare-fun tp!424685 () Bool)

(declare-fun e!954204 () Bool)

(declare-fun setRes!8444 () Bool)

(assert (=> b!1491793 (= e!954204 (and tp!424683 (inv!21075 (_2!8220 (_1!8221 (h!21253 mapValue!6674)))) e!954200 tp_is_empty!6997 setRes!8444 tp!424685))))

(declare-fun condSetEmpty!8444 () Bool)

(assert (=> b!1491793 (= condSetEmpty!8444 (= (_2!8221 (h!21253 mapValue!6674)) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun mapIsEmpty!6674 () Bool)

(declare-fun mapRes!6674 () Bool)

(assert (=> mapIsEmpty!6674 mapRes!6674))

(declare-fun tp!424686 () Bool)

(declare-fun e!954203 () Bool)

(declare-fun setElem!8443 () Context!1302)

(declare-fun setNonEmpty!8443 () Bool)

(assert (=> setNonEmpty!8443 (= setRes!8444 (and tp!424686 (inv!21075 setElem!8443) e!954203))))

(declare-fun setRest!8443 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8443 (= (_2!8221 (h!21253 mapValue!6674)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8443 true) setRest!8443))))

(declare-fun setIsEmpty!8443 () Bool)

(assert (=> setIsEmpty!8443 setRes!8443))

(declare-fun b!1491794 () Bool)

(declare-fun tp!424684 () Bool)

(assert (=> b!1491794 (= e!954203 tp!424684)))

(declare-fun b!1491795 () Bool)

(declare-fun e!954202 () Bool)

(declare-fun tp!424682 () Bool)

(assert (=> b!1491795 (= e!954202 tp!424682)))

(declare-fun mapNonEmpty!6674 () Bool)

(declare-fun tp!424692 () Bool)

(assert (=> mapNonEmpty!6674 (= mapRes!6674 (and tp!424692 e!954204))))

(declare-fun mapRest!6674 () (Array (_ BitVec 32) List!15920))

(declare-fun mapKey!6674 () (_ BitVec 32))

(assert (=> mapNonEmpty!6674 (= mapRest!6671 (store mapRest!6674 mapKey!6674 mapValue!6674))))

(declare-fun b!1491796 () Bool)

(declare-fun tp!424688 () Bool)

(assert (=> b!1491796 (= e!954201 tp!424688)))

(declare-fun b!1491797 () Bool)

(declare-fun tp!424687 () Bool)

(assert (=> b!1491797 (= e!954200 tp!424687)))

(declare-fun setIsEmpty!8444 () Bool)

(assert (=> setIsEmpty!8444 setRes!8444))

(declare-fun tp!424691 () Bool)

(declare-fun setNonEmpty!8444 () Bool)

(declare-fun setElem!8444 () Context!1302)

(assert (=> setNonEmpty!8444 (= setRes!8443 (and tp!424691 (inv!21075 setElem!8444) e!954202))))

(declare-fun setRest!8444 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8444 (= (_2!8221 (h!21253 mapDefault!6674)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8444 true) setRest!8444))))

(declare-fun condMapEmpty!6674 () Bool)

(assert (=> mapNonEmpty!6670 (= condMapEmpty!6674 (= mapRest!6671 ((as const (Array (_ BitVec 32) List!15920)) mapDefault!6674)))))

(assert (=> mapNonEmpty!6670 (= tp!424629 (and e!954199 mapRes!6674))))

(assert (= (and mapNonEmpty!6670 condMapEmpty!6674) mapIsEmpty!6674))

(assert (= (and mapNonEmpty!6670 (not condMapEmpty!6674)) mapNonEmpty!6674))

(assert (= b!1491793 b!1491797))

(assert (= (and b!1491793 condSetEmpty!8444) setIsEmpty!8444))

(assert (= (and b!1491793 (not condSetEmpty!8444)) setNonEmpty!8443))

(assert (= setNonEmpty!8443 b!1491794))

(assert (= (and mapNonEmpty!6674 ((_ is Cons!15852) mapValue!6674)) b!1491793))

(assert (= b!1491792 b!1491796))

(assert (= (and b!1491792 condSetEmpty!8443) setIsEmpty!8443))

(assert (= (and b!1491792 (not condSetEmpty!8443)) setNonEmpty!8444))

(assert (= setNonEmpty!8444 b!1491795))

(assert (= (and mapNonEmpty!6670 ((_ is Cons!15852) mapDefault!6674)) b!1491792))

(declare-fun m!1742603 () Bool)

(assert (=> mapNonEmpty!6674 m!1742603))

(declare-fun m!1742605 () Bool)

(assert (=> setNonEmpty!8443 m!1742605))

(declare-fun m!1742607 () Bool)

(assert (=> setNonEmpty!8444 m!1742607))

(declare-fun m!1742609 () Bool)

(assert (=> b!1491793 m!1742609))

(declare-fun m!1742611 () Bool)

(assert (=> b!1491792 m!1742611))

(declare-fun e!954211 () Bool)

(assert (=> mapNonEmpty!6670 (= tp!424623 e!954211)))

(declare-fun setRes!8447 () Bool)

(declare-fun b!1491806 () Bool)

(declare-fun e!954212 () Bool)

(declare-fun tp!424707 () Bool)

(declare-fun tp!424706 () Bool)

(assert (=> b!1491806 (= e!954211 (and tp!424706 (inv!21075 (_2!8220 (_1!8221 (h!21253 mapValue!6671)))) e!954212 tp_is_empty!6997 setRes!8447 tp!424707))))

(declare-fun condSetEmpty!8447 () Bool)

(assert (=> b!1491806 (= condSetEmpty!8447 (= (_2!8221 (h!21253 mapValue!6671)) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun setIsEmpty!8447 () Bool)

(assert (=> setIsEmpty!8447 setRes!8447))

(declare-fun b!1491807 () Bool)

(declare-fun tp!424704 () Bool)

(assert (=> b!1491807 (= e!954212 tp!424704)))

(declare-fun b!1491808 () Bool)

(declare-fun e!954213 () Bool)

(declare-fun tp!424703 () Bool)

(assert (=> b!1491808 (= e!954213 tp!424703)))

(declare-fun setNonEmpty!8447 () Bool)

(declare-fun setElem!8447 () Context!1302)

(declare-fun tp!424705 () Bool)

(assert (=> setNonEmpty!8447 (= setRes!8447 (and tp!424705 (inv!21075 setElem!8447) e!954213))))

(declare-fun setRest!8447 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8447 (= (_2!8221 (h!21253 mapValue!6671)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8447 true) setRest!8447))))

(assert (= b!1491806 b!1491807))

(assert (= (and b!1491806 condSetEmpty!8447) setIsEmpty!8447))

(assert (= (and b!1491806 (not condSetEmpty!8447)) setNonEmpty!8447))

(assert (= setNonEmpty!8447 b!1491808))

(assert (= (and mapNonEmpty!6670 ((_ is Cons!15852) mapValue!6671)) b!1491806))

(declare-fun m!1742613 () Bool)

(assert (=> b!1491806 m!1742613))

(declare-fun m!1742615 () Bool)

(assert (=> setNonEmpty!8447 m!1742615))

(declare-fun b!1491819 () Bool)

(declare-fun b_free!38739 () Bool)

(declare-fun b_next!39443 () Bool)

(assert (=> b!1491819 (= b_free!38739 (not b_next!39443))))

(declare-fun tp!424718 () Bool)

(declare-fun b_and!103781 () Bool)

(assert (=> b!1491819 (= tp!424718 b_and!103781)))

(declare-fun b_free!38741 () Bool)

(declare-fun b_next!39445 () Bool)

(assert (=> b!1491819 (= b_free!38741 (not b_next!39445))))

(declare-fun tb!85227 () Bool)

(declare-fun t!138185 () Bool)

(assert (=> (and b!1491819 (= (toChars!4020 (transformation!2818 (h!21257 (t!138179 rules!1640)))) (toChars!4020 (transformation!2818 (rule!4599 (_1!8223 (v!22679 (_1!8229 lt!518229))))))) t!138185) tb!85227))

(declare-fun result!102498 () Bool)

(assert (= result!102498 result!102484))

(assert (=> d!438340 t!138185))

(declare-fun tp!424716 () Bool)

(declare-fun b_and!103783 () Bool)

(assert (=> b!1491819 (= tp!424716 (and (=> t!138185 result!102498) b_and!103783))))

(declare-fun e!954225 () Bool)

(assert (=> b!1491819 (= e!954225 (and tp!424718 tp!424716))))

(declare-fun e!954222 () Bool)

(declare-fun tp!424717 () Bool)

(declare-fun b!1491818 () Bool)

(assert (=> b!1491818 (= e!954222 (and tp!424717 (inv!21060 (tag!3082 (h!21257 (t!138179 rules!1640)))) (inv!21070 (transformation!2818 (h!21257 (t!138179 rules!1640)))) e!954225))))

(declare-fun b!1491817 () Bool)

(declare-fun e!954224 () Bool)

(declare-fun tp!424719 () Bool)

(assert (=> b!1491817 (= e!954224 (and e!954222 tp!424719))))

(assert (=> b!1491458 (= tp!424622 e!954224)))

(assert (= b!1491818 b!1491819))

(assert (= b!1491817 b!1491818))

(assert (= (and b!1491458 ((_ is Cons!15856) (t!138179 rules!1640))) b!1491817))

(declare-fun m!1742617 () Bool)

(assert (=> b!1491818 m!1742617))

(declare-fun m!1742619 () Bool)

(assert (=> b!1491818 m!1742619))

(declare-fun e!954226 () Bool)

(assert (=> b!1491423 (= tp!424627 e!954226)))

(declare-fun tp!424724 () Bool)

(declare-fun setRes!8448 () Bool)

(declare-fun b!1491820 () Bool)

(declare-fun e!954227 () Bool)

(declare-fun tp!424723 () Bool)

(assert (=> b!1491820 (= e!954226 (and tp!424723 (inv!21075 (_2!8220 (_1!8221 (h!21253 (zeroValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))))) e!954227 tp_is_empty!6997 setRes!8448 tp!424724))))

(declare-fun condSetEmpty!8448 () Bool)

(assert (=> b!1491820 (= condSetEmpty!8448 (= (_2!8221 (h!21253 (zeroValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun setIsEmpty!8448 () Bool)

(assert (=> setIsEmpty!8448 setRes!8448))

(declare-fun b!1491821 () Bool)

(declare-fun tp!424721 () Bool)

(assert (=> b!1491821 (= e!954227 tp!424721)))

(declare-fun b!1491822 () Bool)

(declare-fun e!954228 () Bool)

(declare-fun tp!424720 () Bool)

(assert (=> b!1491822 (= e!954228 tp!424720)))

(declare-fun setNonEmpty!8448 () Bool)

(declare-fun tp!424722 () Bool)

(declare-fun setElem!8448 () Context!1302)

(assert (=> setNonEmpty!8448 (= setRes!8448 (and tp!424722 (inv!21075 setElem!8448) e!954228))))

(declare-fun setRest!8448 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8448 (= (_2!8221 (h!21253 (zeroValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8448 true) setRest!8448))))

(assert (= b!1491820 b!1491821))

(assert (= (and b!1491820 condSetEmpty!8448) setIsEmpty!8448))

(assert (= (and b!1491820 (not condSetEmpty!8448)) setNonEmpty!8448))

(assert (= setNonEmpty!8448 b!1491822))

(assert (= (and b!1491423 ((_ is Cons!15852) (zeroValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) b!1491820))

(declare-fun m!1742621 () Bool)

(assert (=> b!1491820 m!1742621))

(declare-fun m!1742623 () Bool)

(assert (=> setNonEmpty!8448 m!1742623))

(declare-fun e!954229 () Bool)

(assert (=> b!1491423 (= tp!424618 e!954229)))

(declare-fun e!954230 () Bool)

(declare-fun tp!424728 () Bool)

(declare-fun setRes!8449 () Bool)

(declare-fun tp!424729 () Bool)

(declare-fun b!1491823 () Bool)

(assert (=> b!1491823 (= e!954229 (and tp!424728 (inv!21075 (_2!8220 (_1!8221 (h!21253 (minValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))))) e!954230 tp_is_empty!6997 setRes!8449 tp!424729))))

(declare-fun condSetEmpty!8449 () Bool)

(assert (=> b!1491823 (= condSetEmpty!8449 (= (_2!8221 (h!21253 (minValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun setIsEmpty!8449 () Bool)

(assert (=> setIsEmpty!8449 setRes!8449))

(declare-fun b!1491824 () Bool)

(declare-fun tp!424726 () Bool)

(assert (=> b!1491824 (= e!954230 tp!424726)))

(declare-fun b!1491825 () Bool)

(declare-fun e!954231 () Bool)

(declare-fun tp!424725 () Bool)

(assert (=> b!1491825 (= e!954231 tp!424725)))

(declare-fun setElem!8449 () Context!1302)

(declare-fun tp!424727 () Bool)

(declare-fun setNonEmpty!8449 () Bool)

(assert (=> setNonEmpty!8449 (= setRes!8449 (and tp!424727 (inv!21075 setElem!8449) e!954231))))

(declare-fun setRest!8449 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8449 (= (_2!8221 (h!21253 (minValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8449 true) setRest!8449))))

(assert (= b!1491823 b!1491824))

(assert (= (and b!1491823 condSetEmpty!8449) setIsEmpty!8449))

(assert (= (and b!1491823 (not condSetEmpty!8449)) setNonEmpty!8449))

(assert (= setNonEmpty!8449 b!1491825))

(assert (= (and b!1491423 ((_ is Cons!15852) (minValue!1661 (v!22677 (underlying!3017 (v!22678 (underlying!3018 (cache!1729 cacheDown!629)))))))) b!1491823))

(declare-fun m!1742625 () Bool)

(assert (=> b!1491823 m!1742625))

(declare-fun m!1742627 () Bool)

(assert (=> setNonEmpty!8449 m!1742627))

(declare-fun b!1491839 () Bool)

(declare-fun e!954234 () Bool)

(declare-fun tp!424742 () Bool)

(declare-fun tp!424743 () Bool)

(assert (=> b!1491839 (= e!954234 (and tp!424742 tp!424743))))

(declare-fun b!1491838 () Bool)

(declare-fun tp!424741 () Bool)

(assert (=> b!1491838 (= e!954234 tp!424741)))

(assert (=> b!1491432 (= tp!424631 e!954234)))

(declare-fun b!1491836 () Bool)

(assert (=> b!1491836 (= e!954234 tp_is_empty!6997)))

(declare-fun b!1491837 () Bool)

(declare-fun tp!424744 () Bool)

(declare-fun tp!424740 () Bool)

(assert (=> b!1491837 (= e!954234 (and tp!424744 tp!424740))))

(assert (= (and b!1491432 ((_ is ElementMatch!4133) (regex!2818 (h!21257 rules!1640)))) b!1491836))

(assert (= (and b!1491432 ((_ is Concat!7041) (regex!2818 (h!21257 rules!1640)))) b!1491837))

(assert (= (and b!1491432 ((_ is Star!4133) (regex!2818 (h!21257 rules!1640)))) b!1491838))

(assert (= (and b!1491432 ((_ is Union!4133) (regex!2818 (h!21257 rules!1640)))) b!1491839))

(declare-fun tp!424753 () Bool)

(declare-fun setNonEmpty!8452 () Bool)

(declare-fun e!954241 () Bool)

(declare-fun setRes!8452 () Bool)

(declare-fun setElem!8452 () Context!1302)

(assert (=> setNonEmpty!8452 (= setRes!8452 (and tp!424753 (inv!21075 setElem!8452) e!954241))))

(declare-fun setRest!8452 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8452 (= (_2!8228 (h!21259 (zeroValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8452 true) setRest!8452))))

(declare-fun setIsEmpty!8452 () Bool)

(assert (=> setIsEmpty!8452 setRes!8452))

(declare-fun b!1491849 () Bool)

(declare-fun e!954243 () Bool)

(declare-fun tp!424755 () Bool)

(assert (=> b!1491849 (= e!954243 tp!424755)))

(declare-fun b!1491850 () Bool)

(declare-fun tp!424756 () Bool)

(assert (=> b!1491850 (= e!954241 tp!424756)))

(declare-fun e!954242 () Bool)

(assert (=> b!1491462 (= tp!424630 e!954242)))

(declare-fun b!1491848 () Bool)

(declare-fun tp!424754 () Bool)

(assert (=> b!1491848 (= e!954242 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 (zeroValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))))) e!954243 tp_is_empty!6997 setRes!8452 tp!424754))))

(declare-fun condSetEmpty!8452 () Bool)

(assert (=> b!1491848 (= condSetEmpty!8452 (= (_2!8228 (h!21259 (zeroValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) ((as const (Array Context!1302 Bool)) false)))))

(assert (= b!1491848 b!1491849))

(assert (= (and b!1491848 condSetEmpty!8452) setIsEmpty!8452))

(assert (= (and b!1491848 (not condSetEmpty!8452)) setNonEmpty!8452))

(assert (= setNonEmpty!8452 b!1491850))

(assert (= (and b!1491462 ((_ is Cons!15858) (zeroValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) b!1491848))

(declare-fun m!1742629 () Bool)

(assert (=> setNonEmpty!8452 m!1742629))

(declare-fun m!1742631 () Bool)

(assert (=> b!1491848 m!1742631))

(declare-fun setElem!8453 () Context!1302)

(declare-fun tp!424757 () Bool)

(declare-fun setNonEmpty!8453 () Bool)

(declare-fun e!954244 () Bool)

(declare-fun setRes!8453 () Bool)

(assert (=> setNonEmpty!8453 (= setRes!8453 (and tp!424757 (inv!21075 setElem!8453) e!954244))))

(declare-fun setRest!8453 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8453 (= (_2!8228 (h!21259 (minValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8453 true) setRest!8453))))

(declare-fun setIsEmpty!8453 () Bool)

(assert (=> setIsEmpty!8453 setRes!8453))

(declare-fun b!1491852 () Bool)

(declare-fun e!954246 () Bool)

(declare-fun tp!424759 () Bool)

(assert (=> b!1491852 (= e!954246 tp!424759)))

(declare-fun b!1491853 () Bool)

(declare-fun tp!424760 () Bool)

(assert (=> b!1491853 (= e!954244 tp!424760)))

(declare-fun e!954245 () Bool)

(assert (=> b!1491462 (= tp!424607 e!954245)))

(declare-fun tp!424758 () Bool)

(declare-fun b!1491851 () Bool)

(assert (=> b!1491851 (= e!954245 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 (minValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))))) e!954246 tp_is_empty!6997 setRes!8453 tp!424758))))

(declare-fun condSetEmpty!8453 () Bool)

(assert (=> b!1491851 (= condSetEmpty!8453 (= (_2!8228 (h!21259 (minValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) ((as const (Array Context!1302 Bool)) false)))))

(assert (= b!1491851 b!1491852))

(assert (= (and b!1491851 condSetEmpty!8453) setIsEmpty!8453))

(assert (= (and b!1491851 (not condSetEmpty!8453)) setNonEmpty!8453))

(assert (= setNonEmpty!8453 b!1491853))

(assert (= (and b!1491462 ((_ is Cons!15858) (minValue!1663 (v!22682 (underlying!3021 (v!22683 (underlying!3022 (cache!1731 cacheUp!616)))))))) b!1491851))

(declare-fun m!1742633 () Bool)

(assert (=> setNonEmpty!8453 m!1742633))

(declare-fun m!1742635 () Bool)

(assert (=> b!1491851 m!1742635))

(declare-fun b!1491862 () Bool)

(declare-fun tp!424767 () Bool)

(declare-fun e!954251 () Bool)

(declare-fun tp!424768 () Bool)

(assert (=> b!1491862 (= e!954251 (and (inv!21063 (left!13292 (c!244323 input!1102))) tp!424768 (inv!21063 (right!13622 (c!244323 input!1102))) tp!424767))))

(declare-fun b!1491864 () Bool)

(declare-fun e!954252 () Bool)

(declare-fun tp!424769 () Bool)

(assert (=> b!1491864 (= e!954252 tp!424769)))

(declare-fun b!1491863 () Bool)

(declare-fun inv!21077 (IArray!10779) Bool)

(assert (=> b!1491863 (= e!954251 (and (inv!21077 (xs!8150 (c!244323 input!1102))) e!954252))))

(assert (=> b!1491449 (= tp!424628 (and (inv!21063 (c!244323 input!1102)) e!954251))))

(assert (= (and b!1491449 ((_ is Node!5387) (c!244323 input!1102))) b!1491862))

(assert (= b!1491863 b!1491864))

(assert (= (and b!1491449 ((_ is Leaf!7999) (c!244323 input!1102))) b!1491863))

(declare-fun m!1742637 () Bool)

(assert (=> b!1491862 m!1742637))

(declare-fun m!1742639 () Bool)

(assert (=> b!1491862 m!1742639))

(declare-fun m!1742641 () Bool)

(assert (=> b!1491863 m!1742641))

(assert (=> b!1491449 m!1741933))

(declare-fun tp!424771 () Bool)

(declare-fun b!1491865 () Bool)

(declare-fun e!954253 () Bool)

(declare-fun tp!424770 () Bool)

(assert (=> b!1491865 (= e!954253 (and (inv!21063 (left!13292 (c!244323 (totalInput!2252 cacheFurthestNullable!64)))) tp!424771 (inv!21063 (right!13622 (c!244323 (totalInput!2252 cacheFurthestNullable!64)))) tp!424770))))

(declare-fun b!1491867 () Bool)

(declare-fun e!954254 () Bool)

(declare-fun tp!424772 () Bool)

(assert (=> b!1491867 (= e!954254 tp!424772)))

(declare-fun b!1491866 () Bool)

(assert (=> b!1491866 (= e!954253 (and (inv!21077 (xs!8150 (c!244323 (totalInput!2252 cacheFurthestNullable!64)))) e!954254))))

(assert (=> b!1491440 (= tp!424609 (and (inv!21063 (c!244323 (totalInput!2252 cacheFurthestNullable!64))) e!954253))))

(assert (= (and b!1491440 ((_ is Node!5387) (c!244323 (totalInput!2252 cacheFurthestNullable!64)))) b!1491865))

(assert (= b!1491866 b!1491867))

(assert (= (and b!1491440 ((_ is Leaf!7999) (c!244323 (totalInput!2252 cacheFurthestNullable!64)))) b!1491866))

(declare-fun m!1742643 () Bool)

(assert (=> b!1491865 m!1742643))

(declare-fun m!1742645 () Bool)

(assert (=> b!1491865 m!1742645))

(declare-fun m!1742647 () Bool)

(assert (=> b!1491866 m!1742647))

(assert (=> b!1491440 m!1742061))

(declare-fun tp!424774 () Bool)

(declare-fun e!954255 () Bool)

(declare-fun tp!424773 () Bool)

(declare-fun b!1491868 () Bool)

(assert (=> b!1491868 (= e!954255 (and (inv!21063 (left!13292 (c!244323 treated!70))) tp!424774 (inv!21063 (right!13622 (c!244323 treated!70))) tp!424773))))

(declare-fun b!1491870 () Bool)

(declare-fun e!954256 () Bool)

(declare-fun tp!424775 () Bool)

(assert (=> b!1491870 (= e!954256 tp!424775)))

(declare-fun b!1491869 () Bool)

(assert (=> b!1491869 (= e!954255 (and (inv!21077 (xs!8150 (c!244323 treated!70))) e!954256))))

(assert (=> b!1491422 (= tp!424611 (and (inv!21063 (c!244323 treated!70)) e!954255))))

(assert (= (and b!1491422 ((_ is Node!5387) (c!244323 treated!70))) b!1491868))

(assert (= b!1491869 b!1491870))

(assert (= (and b!1491422 ((_ is Leaf!7999) (c!244323 treated!70))) b!1491869))

(declare-fun m!1742649 () Bool)

(assert (=> b!1491868 m!1742649))

(declare-fun m!1742651 () Bool)

(assert (=> b!1491868 m!1742651))

(declare-fun m!1742653 () Bool)

(assert (=> b!1491869 m!1742653))

(assert (=> b!1491422 m!1741935))

(declare-fun setNonEmpty!8454 () Bool)

(declare-fun e!954257 () Bool)

(declare-fun tp!424776 () Bool)

(declare-fun setRes!8454 () Bool)

(declare-fun setElem!8454 () Context!1302)

(assert (=> setNonEmpty!8454 (= setRes!8454 (and tp!424776 (inv!21075 setElem!8454) e!954257))))

(declare-fun setRest!8454 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8454 (= (_2!8228 (h!21259 mapDefault!6669)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8454 true) setRest!8454))))

(declare-fun setIsEmpty!8454 () Bool)

(assert (=> setIsEmpty!8454 setRes!8454))

(declare-fun b!1491872 () Bool)

(declare-fun e!954259 () Bool)

(declare-fun tp!424778 () Bool)

(assert (=> b!1491872 (= e!954259 tp!424778)))

(declare-fun b!1491873 () Bool)

(declare-fun tp!424779 () Bool)

(assert (=> b!1491873 (= e!954257 tp!424779)))

(declare-fun e!954258 () Bool)

(assert (=> b!1491450 (= tp!424632 e!954258)))

(declare-fun tp!424777 () Bool)

(declare-fun b!1491871 () Bool)

(assert (=> b!1491871 (= e!954258 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 mapDefault!6669)))) e!954259 tp_is_empty!6997 setRes!8454 tp!424777))))

(declare-fun condSetEmpty!8454 () Bool)

(assert (=> b!1491871 (= condSetEmpty!8454 (= (_2!8228 (h!21259 mapDefault!6669)) ((as const (Array Context!1302 Bool)) false)))))

(assert (= b!1491871 b!1491872))

(assert (= (and b!1491871 condSetEmpty!8454) setIsEmpty!8454))

(assert (= (and b!1491871 (not condSetEmpty!8454)) setNonEmpty!8454))

(assert (= setNonEmpty!8454 b!1491873))

(assert (= (and b!1491450 ((_ is Cons!15858) mapDefault!6669)) b!1491871))

(declare-fun m!1742655 () Bool)

(assert (=> setNonEmpty!8454 m!1742655))

(declare-fun m!1742657 () Bool)

(assert (=> b!1491871 m!1742657))

(declare-fun condMapEmpty!6677 () Bool)

(declare-fun mapDefault!6677 () List!15925)

(assert (=> mapNonEmpty!6671 (= condMapEmpty!6677 (= mapRest!6669 ((as const (Array (_ BitVec 32) List!15925)) mapDefault!6677)))))

(declare-fun e!954271 () Bool)

(declare-fun mapRes!6677 () Bool)

(assert (=> mapNonEmpty!6671 (= tp!424614 (and e!954271 mapRes!6677))))

(declare-fun setIsEmpty!8459 () Bool)

(declare-fun setRes!8460 () Bool)

(assert (=> setIsEmpty!8459 setRes!8460))

(declare-fun b!1491884 () Bool)

(declare-fun e!954270 () Bool)

(declare-fun tp!424794 () Bool)

(assert (=> b!1491884 (= e!954270 tp!424794)))

(declare-fun mapNonEmpty!6677 () Bool)

(declare-fun tp!424800 () Bool)

(declare-fun e!954269 () Bool)

(assert (=> mapNonEmpty!6677 (= mapRes!6677 (and tp!424800 e!954269))))

(declare-fun mapKey!6677 () (_ BitVec 32))

(declare-fun mapRest!6677 () (Array (_ BitVec 32) List!15925))

(declare-fun mapValue!6677 () List!15925)

(assert (=> mapNonEmpty!6677 (= mapRest!6669 (store mapRest!6677 mapKey!6677 mapValue!6677))))

(declare-fun setIsEmpty!8460 () Bool)

(declare-fun setRes!8459 () Bool)

(assert (=> setIsEmpty!8460 setRes!8459))

(declare-fun b!1491885 () Bool)

(declare-fun tp!424799 () Bool)

(assert (=> b!1491885 (= e!954269 (and setRes!8460 tp!424799))))

(declare-fun condSetEmpty!8460 () Bool)

(assert (=> b!1491885 (= condSetEmpty!8460 (= (_1!8225 (_1!8226 (h!21258 mapValue!6677))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun setNonEmpty!8459 () Bool)

(declare-fun setElem!8459 () Context!1302)

(declare-fun tp!424795 () Bool)

(assert (=> setNonEmpty!8459 (= setRes!8460 (and tp!424795 (inv!21075 setElem!8459) e!954270))))

(declare-fun setRest!8460 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8459 (= (_1!8225 (_1!8226 (h!21258 mapValue!6677))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8459 true) setRest!8460))))

(declare-fun b!1491886 () Bool)

(declare-fun tp!424797 () Bool)

(assert (=> b!1491886 (= e!954271 (and setRes!8459 tp!424797))))

(declare-fun condSetEmpty!8459 () Bool)

(assert (=> b!1491886 (= condSetEmpty!8459 (= (_1!8225 (_1!8226 (h!21258 mapDefault!6677))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491887 () Bool)

(declare-fun e!954268 () Bool)

(declare-fun tp!424798 () Bool)

(assert (=> b!1491887 (= e!954268 tp!424798)))

(declare-fun setElem!8460 () Context!1302)

(declare-fun setNonEmpty!8460 () Bool)

(declare-fun tp!424796 () Bool)

(assert (=> setNonEmpty!8460 (= setRes!8459 (and tp!424796 (inv!21075 setElem!8460) e!954268))))

(declare-fun setRest!8459 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8460 (= (_1!8225 (_1!8226 (h!21258 mapDefault!6677))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8460 true) setRest!8459))))

(declare-fun mapIsEmpty!6677 () Bool)

(assert (=> mapIsEmpty!6677 mapRes!6677))

(assert (= (and mapNonEmpty!6671 condMapEmpty!6677) mapIsEmpty!6677))

(assert (= (and mapNonEmpty!6671 (not condMapEmpty!6677)) mapNonEmpty!6677))

(assert (= (and b!1491885 condSetEmpty!8460) setIsEmpty!8459))

(assert (= (and b!1491885 (not condSetEmpty!8460)) setNonEmpty!8459))

(assert (= setNonEmpty!8459 b!1491884))

(assert (= (and mapNonEmpty!6677 ((_ is Cons!15857) mapValue!6677)) b!1491885))

(assert (= (and b!1491886 condSetEmpty!8459) setIsEmpty!8460))

(assert (= (and b!1491886 (not condSetEmpty!8459)) setNonEmpty!8460))

(assert (= setNonEmpty!8460 b!1491887))

(assert (= (and mapNonEmpty!6671 ((_ is Cons!15857) mapDefault!6677)) b!1491886))

(declare-fun m!1742659 () Bool)

(assert (=> mapNonEmpty!6677 m!1742659))

(declare-fun m!1742661 () Bool)

(assert (=> setNonEmpty!8459 m!1742661))

(declare-fun m!1742663 () Bool)

(assert (=> setNonEmpty!8460 m!1742663))

(declare-fun b!1491888 () Bool)

(declare-fun e!954272 () Bool)

(declare-fun setRes!8461 () Bool)

(declare-fun tp!424801 () Bool)

(assert (=> b!1491888 (= e!954272 (and setRes!8461 tp!424801))))

(declare-fun condSetEmpty!8461 () Bool)

(assert (=> b!1491888 (= condSetEmpty!8461 (= (_1!8225 (_1!8226 (h!21258 mapValue!6669))) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491889 () Bool)

(declare-fun e!954273 () Bool)

(declare-fun tp!424802 () Bool)

(assert (=> b!1491889 (= e!954273 tp!424802)))

(declare-fun setIsEmpty!8461 () Bool)

(assert (=> setIsEmpty!8461 setRes!8461))

(declare-fun setElem!8461 () Context!1302)

(declare-fun tp!424803 () Bool)

(declare-fun setNonEmpty!8461 () Bool)

(assert (=> setNonEmpty!8461 (= setRes!8461 (and tp!424803 (inv!21075 setElem!8461) e!954273))))

(declare-fun setRest!8461 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8461 (= (_1!8225 (_1!8226 (h!21258 mapValue!6669))) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8461 true) setRest!8461))))

(assert (=> mapNonEmpty!6671 (= tp!424621 e!954272)))

(assert (= (and b!1491888 condSetEmpty!8461) setIsEmpty!8461))

(assert (= (and b!1491888 (not condSetEmpty!8461)) setNonEmpty!8461))

(assert (= setNonEmpty!8461 b!1491889))

(assert (= (and mapNonEmpty!6671 ((_ is Cons!15857) mapValue!6669)) b!1491888))

(declare-fun m!1742665 () Bool)

(assert (=> setNonEmpty!8461 m!1742665))

(declare-fun e!954274 () Bool)

(assert (=> b!1491464 (= tp!424613 e!954274)))

(declare-fun tp!424807 () Bool)

(declare-fun e!954275 () Bool)

(declare-fun b!1491890 () Bool)

(declare-fun tp!424808 () Bool)

(declare-fun setRes!8462 () Bool)

(assert (=> b!1491890 (= e!954274 (and tp!424807 (inv!21075 (_2!8220 (_1!8221 (h!21253 mapDefault!6670)))) e!954275 tp_is_empty!6997 setRes!8462 tp!424808))))

(declare-fun condSetEmpty!8462 () Bool)

(assert (=> b!1491890 (= condSetEmpty!8462 (= (_2!8221 (h!21253 mapDefault!6670)) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun setIsEmpty!8462 () Bool)

(assert (=> setIsEmpty!8462 setRes!8462))

(declare-fun b!1491891 () Bool)

(declare-fun tp!424805 () Bool)

(assert (=> b!1491891 (= e!954275 tp!424805)))

(declare-fun b!1491892 () Bool)

(declare-fun e!954276 () Bool)

(declare-fun tp!424804 () Bool)

(assert (=> b!1491892 (= e!954276 tp!424804)))

(declare-fun setElem!8462 () Context!1302)

(declare-fun tp!424806 () Bool)

(declare-fun setNonEmpty!8462 () Bool)

(assert (=> setNonEmpty!8462 (= setRes!8462 (and tp!424806 (inv!21075 setElem!8462) e!954276))))

(declare-fun setRest!8462 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8462 (= (_2!8221 (h!21253 mapDefault!6670)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8462 true) setRest!8462))))

(assert (= b!1491890 b!1491891))

(assert (= (and b!1491890 condSetEmpty!8462) setIsEmpty!8462))

(assert (= (and b!1491890 (not condSetEmpty!8462)) setNonEmpty!8462))

(assert (= setNonEmpty!8462 b!1491892))

(assert (= (and b!1491464 ((_ is Cons!15852) mapDefault!6670)) b!1491890))

(declare-fun m!1742667 () Bool)

(assert (=> b!1491890 m!1742667))

(declare-fun m!1742669 () Bool)

(assert (=> setNonEmpty!8462 m!1742669))

(declare-fun tp!424809 () Bool)

(declare-fun b!1491893 () Bool)

(declare-fun tp!424810 () Bool)

(declare-fun e!954277 () Bool)

(assert (=> b!1491893 (= e!954277 (and (inv!21063 (left!13292 (c!244323 totalInput!458))) tp!424810 (inv!21063 (right!13622 (c!244323 totalInput!458))) tp!424809))))

(declare-fun b!1491895 () Bool)

(declare-fun e!954278 () Bool)

(declare-fun tp!424811 () Bool)

(assert (=> b!1491895 (= e!954278 tp!424811)))

(declare-fun b!1491894 () Bool)

(assert (=> b!1491894 (= e!954277 (and (inv!21077 (xs!8150 (c!244323 totalInput!458))) e!954278))))

(assert (=> b!1491467 (= tp!424608 (and (inv!21063 (c!244323 totalInput!458)) e!954277))))

(assert (= (and b!1491467 ((_ is Node!5387) (c!244323 totalInput!458))) b!1491893))

(assert (= b!1491894 b!1491895))

(assert (= (and b!1491467 ((_ is Leaf!7999) (c!244323 totalInput!458))) b!1491894))

(declare-fun m!1742671 () Bool)

(assert (=> b!1491893 m!1742671))

(declare-fun m!1742673 () Bool)

(assert (=> b!1491893 m!1742673))

(declare-fun m!1742675 () Bool)

(assert (=> b!1491894 m!1742675))

(assert (=> b!1491467 m!1741977))

(declare-fun b!1491910 () Bool)

(declare-fun e!954294 () Bool)

(declare-fun tp!424830 () Bool)

(assert (=> b!1491910 (= e!954294 tp!424830)))

(declare-fun tp!424838 () Bool)

(declare-fun e!954296 () Bool)

(declare-fun b!1491911 () Bool)

(declare-fun e!954292 () Bool)

(declare-fun mapValue!6680 () List!15926)

(declare-fun setRes!8468 () Bool)

(assert (=> b!1491911 (= e!954296 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 mapValue!6680)))) e!954292 tp_is_empty!6997 setRes!8468 tp!424838))))

(declare-fun condSetEmpty!8467 () Bool)

(assert (=> b!1491911 (= condSetEmpty!8467 (= (_2!8228 (h!21259 mapValue!6680)) ((as const (Array Context!1302 Bool)) false)))))

(declare-fun b!1491912 () Bool)

(declare-fun tp!424831 () Bool)

(assert (=> b!1491912 (= e!954292 tp!424831)))

(declare-fun mapIsEmpty!6680 () Bool)

(declare-fun mapRes!6680 () Bool)

(assert (=> mapIsEmpty!6680 mapRes!6680))

(declare-fun setIsEmpty!8467 () Bool)

(declare-fun setRes!8467 () Bool)

(assert (=> setIsEmpty!8467 setRes!8467))

(declare-fun b!1491913 () Bool)

(declare-fun e!954291 () Bool)

(declare-fun tp!424832 () Bool)

(assert (=> b!1491913 (= e!954291 tp!424832)))

(declare-fun setNonEmpty!8467 () Bool)

(declare-fun tp!424834 () Bool)

(declare-fun setElem!8467 () Context!1302)

(assert (=> setNonEmpty!8467 (= setRes!8467 (and tp!424834 (inv!21075 setElem!8467) e!954291))))

(declare-fun mapDefault!6680 () List!15926)

(declare-fun setRest!8467 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8467 (= (_2!8228 (h!21259 mapDefault!6680)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8467 true) setRest!8467))))

(declare-fun condMapEmpty!6680 () Bool)

(assert (=> mapNonEmpty!6669 (= condMapEmpty!6680 (= mapRest!6670 ((as const (Array (_ BitVec 32) List!15926)) mapDefault!6680)))))

(declare-fun e!954295 () Bool)

(assert (=> mapNonEmpty!6669 (= tp!424604 (and e!954295 mapRes!6680))))

(declare-fun mapNonEmpty!6680 () Bool)

(declare-fun tp!424835 () Bool)

(assert (=> mapNonEmpty!6680 (= mapRes!6680 (and tp!424835 e!954296))))

(declare-fun mapRest!6680 () (Array (_ BitVec 32) List!15926))

(declare-fun mapKey!6680 () (_ BitVec 32))

(assert (=> mapNonEmpty!6680 (= mapRest!6670 (store mapRest!6680 mapKey!6680 mapValue!6680))))

(declare-fun setNonEmpty!8468 () Bool)

(declare-fun e!954293 () Bool)

(declare-fun tp!424836 () Bool)

(declare-fun setElem!8468 () Context!1302)

(assert (=> setNonEmpty!8468 (= setRes!8468 (and tp!424836 (inv!21075 setElem!8468) e!954293))))

(declare-fun setRest!8468 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8468 (= (_2!8228 (h!21259 mapValue!6680)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8468 true) setRest!8468))))

(declare-fun b!1491914 () Bool)

(declare-fun tp!424837 () Bool)

(assert (=> b!1491914 (= e!954293 tp!424837)))

(declare-fun setIsEmpty!8468 () Bool)

(assert (=> setIsEmpty!8468 setRes!8468))

(declare-fun tp!424833 () Bool)

(declare-fun b!1491915 () Bool)

(assert (=> b!1491915 (= e!954295 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 mapDefault!6680)))) e!954294 tp_is_empty!6997 setRes!8467 tp!424833))))

(declare-fun condSetEmpty!8468 () Bool)

(assert (=> b!1491915 (= condSetEmpty!8468 (= (_2!8228 (h!21259 mapDefault!6680)) ((as const (Array Context!1302 Bool)) false)))))

(assert (= (and mapNonEmpty!6669 condMapEmpty!6680) mapIsEmpty!6680))

(assert (= (and mapNonEmpty!6669 (not condMapEmpty!6680)) mapNonEmpty!6680))

(assert (= b!1491911 b!1491912))

(assert (= (and b!1491911 condSetEmpty!8467) setIsEmpty!8468))

(assert (= (and b!1491911 (not condSetEmpty!8467)) setNonEmpty!8468))

(assert (= setNonEmpty!8468 b!1491914))

(assert (= (and mapNonEmpty!6680 ((_ is Cons!15858) mapValue!6680)) b!1491911))

(assert (= b!1491915 b!1491910))

(assert (= (and b!1491915 condSetEmpty!8468) setIsEmpty!8467))

(assert (= (and b!1491915 (not condSetEmpty!8468)) setNonEmpty!8467))

(assert (= setNonEmpty!8467 b!1491913))

(assert (= (and mapNonEmpty!6669 ((_ is Cons!15858) mapDefault!6680)) b!1491915))

(declare-fun m!1742677 () Bool)

(assert (=> setNonEmpty!8467 m!1742677))

(declare-fun m!1742679 () Bool)

(assert (=> setNonEmpty!8468 m!1742679))

(declare-fun m!1742681 () Bool)

(assert (=> b!1491911 m!1742681))

(declare-fun m!1742683 () Bool)

(assert (=> mapNonEmpty!6680 m!1742683))

(declare-fun m!1742685 () Bool)

(assert (=> b!1491915 m!1742685))

(declare-fun tp!424839 () Bool)

(declare-fun setRes!8469 () Bool)

(declare-fun setNonEmpty!8469 () Bool)

(declare-fun e!954297 () Bool)

(declare-fun setElem!8469 () Context!1302)

(assert (=> setNonEmpty!8469 (= setRes!8469 (and tp!424839 (inv!21075 setElem!8469) e!954297))))

(declare-fun setRest!8469 () (InoxSet Context!1302))

(assert (=> setNonEmpty!8469 (= (_2!8228 (h!21259 mapValue!6670)) ((_ map or) (store ((as const (Array Context!1302 Bool)) false) setElem!8469 true) setRest!8469))))

(declare-fun setIsEmpty!8469 () Bool)

(assert (=> setIsEmpty!8469 setRes!8469))

(declare-fun b!1491917 () Bool)

(declare-fun e!954299 () Bool)

(declare-fun tp!424841 () Bool)

(assert (=> b!1491917 (= e!954299 tp!424841)))

(declare-fun b!1491918 () Bool)

(declare-fun tp!424842 () Bool)

(assert (=> b!1491918 (= e!954297 tp!424842)))

(declare-fun e!954298 () Bool)

(assert (=> mapNonEmpty!6669 (= tp!424605 e!954298)))

(declare-fun b!1491916 () Bool)

(declare-fun tp!424840 () Bool)

(assert (=> b!1491916 (= e!954298 (and (inv!21075 (_1!8227 (_1!8228 (h!21259 mapValue!6670)))) e!954299 tp_is_empty!6997 setRes!8469 tp!424840))))

(declare-fun condSetEmpty!8469 () Bool)

(assert (=> b!1491916 (= condSetEmpty!8469 (= (_2!8228 (h!21259 mapValue!6670)) ((as const (Array Context!1302 Bool)) false)))))

(assert (= b!1491916 b!1491917))

(assert (= (and b!1491916 condSetEmpty!8469) setIsEmpty!8469))

(assert (= (and b!1491916 (not condSetEmpty!8469)) setNonEmpty!8469))

(assert (= setNonEmpty!8469 b!1491918))

(assert (= (and mapNonEmpty!6669 ((_ is Cons!15858) mapValue!6670)) b!1491916))

(declare-fun m!1742687 () Bool)

(assert (=> setNonEmpty!8469 m!1742687))

(declare-fun m!1742689 () Bool)

(assert (=> b!1491916 m!1742689))

(check-sat (not b_next!39427) (not d!438236) (not d!438356) (not b!1491597) (not b_next!39433) (not b!1491505) (not d!438206) (not setNonEmpty!8448) (not b!1491649) (not setNonEmpty!8459) (not mapNonEmpty!6674) (not b!1491655) (not b!1491539) (not b!1491599) (not b!1491551) (not b_next!39443) b_and!103777 (not b!1491865) b_and!103775 (not d!438350) (not b!1491866) (not b!1491910) (not d!438298) (not b!1491633) (not b!1491639) (not d!438300) (not b_next!39431) (not b!1491917) (not b!1491711) (not d!438330) (not b!1491774) (not mapNonEmpty!6677) (not b!1491679) (not b!1491682) (not d!438308) (not b!1491870) (not b!1491715) b_and!103765 (not d!438262) (not b!1491686) (not b!1491645) (not d!438354) b_and!103781 (not b!1491627) (not b_next!39429) (not b!1491560) (not b!1491887) (not b_lambda!46731) (not d!438242) (not b!1491467) (not b!1491547) (not tb!85225) (not b!1491762) (not b!1491481) (not b!1491477) (not d!438274) (not b!1491542) (not b!1491545) (not d!438328) (not b!1491687) (not d!438326) (not b!1491806) (not d!438296) (not b!1491540) (not d!438270) (not setNonEmpty!8453) (not b!1491864) (not d!438232) (not b!1491567) (not b!1491916) (not b!1491636) (not b!1491618) (not b!1491579) (not d!438254) (not b!1491796) (not setNonEmpty!8444) (not b!1491808) (not b!1491820) (not b_next!39441) (not b!1491773) (not b!1491893) (not b!1491677) (not d!438348) (not b!1491653) (not b!1491852) (not d!438238) b_and!103773 (not b!1491710) (not b!1491818) (not b!1491823) (not d!438212) (not b_next!39435) (not b!1491529) (not d!438228) (not b!1491872) (not b!1491706) (not b!1491837) (not b!1491777) (not b!1491543) (not d!438360) (not b!1491688) (not d!438336) (not setNonEmpty!8443) (not setNonEmpty!8452) (not b!1491630) (not b!1491600) (not b!1491619) (not setNonEmpty!8438) (not d!438290) (not b!1491825) (not setNonEmpty!8467) (not d!438258) (not b!1491668) b_and!103779 (not b!1491484) (not setNonEmpty!8449) (not b!1491685) (not mapNonEmpty!6680) (not b!1491753) (not b!1491527) (not bm!99006) (not b!1491716) tp_is_empty!6997 (not d!438358) (not b!1491750) (not d!438304) (not b!1491744) (not b!1491621) (not d!438200) (not b!1491918) (not b!1491869) (not b!1491568) (not b!1491657) (not b!1491807) (not b!1491838) (not b!1491712) (not b!1491521) b_and!103763 (not d!438266) (not d!438220) (not b!1491792) (not b!1491747) (not b!1491691) (not b!1491884) (not b!1491718) (not b!1491771) (not b!1491502) (not d!438250) (not d!438244) (not b!1491839) (not b_next!39437) b_and!103783 (not d!438362) (not b!1491638) (not b!1491892) (not b!1491824) (not b!1491793) (not b!1491526) (not d!438320) (not b!1491546) (not b!1491672) (not b!1491702) (not b!1491690) (not b!1491886) (not d!438214) (not b!1491652) (not b!1491554) (not d!438332) (not b_next!39439) (not b!1491683) (not b!1491873) (not b!1491797) (not d!438318) (not b!1491490) b_and!103767 (not b!1491703) (not b!1491848) (not d!438312) (not b!1491849) (not b!1491422) (not b!1491888) (not b!1491891) (not setNonEmpty!8468) (not b!1491708) (not b!1491794) (not b!1491525) (not bm!99005) (not d!438344) (not d!438310) (not setNonEmpty!8460) (not d!438264) (not b!1491670) (not b!1491500) (not setNonEmpty!8454) (not b!1491592) (not b!1491890) (not b!1491493) (not d!438340) (not b!1491625) (not b!1491559) (not d!438222) (not setNonEmpty!8462) (not d!438240) (not d!438208) (not d!438342) (not b!1491863) (not setNonEmpty!8461) (not b!1491524) (not b!1491562) (not b!1491595) (not b!1491553) (not b!1491745) (not setNonEmpty!8437) (not b!1491596) (not b!1491650) (not d!438338) (not b!1491894) (not b!1491704) (not b!1491671) (not setNonEmpty!8436) (not b!1491822) (not b!1491705) (not b!1491914) (not b!1491631) (not b!1491669) (not b!1491751) (not d!438256) (not d!438260) (not d!438352) (not b!1491709) (not d!438324) (not b!1491749) (not setNonEmpty!8469) (not b!1491552) (not b!1491871) (not b!1491853) (not b!1491761) (not b!1491628) (not b!1491911) (not b!1491743) (not d!438334) (not d!438316) (not b!1491624) (not d!438302) (not bm!99009) (not d!438322) (not b!1491643) (not d!438252) (not b!1491635) (not b!1491487) (not b!1491658) (not d!438314) (not b!1491646) (not b!1491889) (not b!1491440) (not b!1491862) (not b!1491915) (not b!1491868) (not b!1491623) (not b!1491520) (not b!1491475) (not b!1491563) (not b!1491680) (not b!1491620) (not b!1491867) (not b!1491548) (not d!438294) (not b!1491430) (not b_next!39445) (not b!1491701) (not d!438268) (not b!1491634) (not b!1491748) (not b!1491713) (not b!1491556) (not b!1491654) b_and!103769 (not d!438288) (not b!1491895) (not b!1491850) (not d!438272) (not b!1491795) (not b!1491580) (not b!1491776) (not b!1491775) (not b!1491885) (not b!1491659) (not b!1491557) (not b!1491717) (not b!1491449) (not d!438306) (not d!438346) (not b!1491821) (not b!1491851) (not d!438246) (not b!1491772) (not b!1491817) (not b!1491752) (not setNonEmpty!8447) (not b!1491480) (not b!1491912) (not b!1491565) (not d!438210) (not b!1491558) (not b!1491523) (not b!1491913))
(check-sat (not b_next!39431) (not b_next!39441) b_and!103779 b_and!103763 (not b_next!39445) b_and!103769 (not b_next!39427) (not b_next!39433) (not b_next!39443) b_and!103777 b_and!103775 (not b_next!39429) b_and!103765 b_and!103781 b_and!103773 (not b_next!39435) (not b_next!39437) b_and!103783 (not b_next!39439) b_and!103767)
