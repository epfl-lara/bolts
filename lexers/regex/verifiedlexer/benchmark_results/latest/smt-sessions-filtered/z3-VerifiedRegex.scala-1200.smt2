; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62360 () Bool)

(assert start!62360)

(declare-fun b!636858 () Bool)

(declare-fun b_free!18705 () Bool)

(declare-fun b_next!18729 () Bool)

(assert (=> b!636858 (= b_free!18705 (not b_next!18729))))

(declare-fun tp!198349 () Bool)

(declare-fun b_and!62499 () Bool)

(assert (=> b!636858 (= tp!198349 b_and!62499)))

(declare-fun b!636863 () Bool)

(declare-fun b_free!18707 () Bool)

(declare-fun b_next!18731 () Bool)

(assert (=> b!636863 (= b_free!18707 (not b_next!18731))))

(declare-fun tp!198337 () Bool)

(declare-fun b_and!62501 () Bool)

(assert (=> b!636863 (= tp!198337 b_and!62501)))

(declare-fun b!636852 () Bool)

(declare-fun b_free!18709 () Bool)

(declare-fun b_next!18733 () Bool)

(assert (=> b!636852 (= b_free!18709 (not b_next!18733))))

(declare-fun tp!198335 () Bool)

(declare-fun b_and!62503 () Bool)

(assert (=> b!636852 (= tp!198335 b_and!62503)))

(declare-fun b!636844 () Bool)

(declare-fun b_free!18711 () Bool)

(declare-fun b_next!18735 () Bool)

(assert (=> b!636844 (= b_free!18711 (not b_next!18735))))

(declare-fun tp!198339 () Bool)

(declare-fun b_and!62505 () Bool)

(assert (=> b!636844 (= tp!198339 b_and!62505)))

(declare-fun b!636843 () Bool)

(declare-fun e!387984 () Bool)

(declare-fun e!387985 () Bool)

(assert (=> b!636843 (= e!387984 e!387985)))

(declare-fun e!387976 () Bool)

(declare-fun e!387982 () Bool)

(assert (=> b!636844 (= e!387976 (and e!387982 tp!198339))))

(declare-fun b!636845 () Bool)

(declare-fun e!387996 () Bool)

(declare-fun e!387991 () Bool)

(declare-datatypes ((Regex!1705 0))(
  ( (ElementMatch!1705 (c!116653 (_ BitVec 16))) (Concat!3109 (regOne!3922 Regex!1705) (regTwo!3922 Regex!1705)) (EmptyExpr!1705) (Star!1705 (reg!2034 Regex!1705)) (EmptyLang!1705) (Union!1705 (regOne!3923 Regex!1705) (regTwo!3923 Regex!1705)) )
))
(declare-datatypes ((List!6811 0))(
  ( (Nil!6797) (Cons!6797 (h!12198 Regex!1705) (t!84393 List!6811)) )
))
(declare-datatypes ((Context!382 0))(
  ( (Context!383 (exprs!691 List!6811)) )
))
(declare-datatypes ((tuple2!7364 0))(
  ( (tuple2!7365 (_1!3996 Context!382) (_2!3996 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7366 0))(
  ( (tuple2!7367 (_1!3997 tuple2!7364) (_2!3997 (InoxSet Context!382))) )
))
(declare-datatypes ((List!6812 0))(
  ( (Nil!6798) (Cons!6798 (h!12199 tuple2!7366) (t!84394 List!6812)) )
))
(declare-datatypes ((array!2474 0))(
  ( (array!2475 (arr!1126 (Array (_ BitVec 32) List!6812)) (size!5337 (_ BitVec 32))) )
))
(declare-datatypes ((array!2476 0))(
  ( (array!2477 (arr!1127 (Array (_ BitVec 32) (_ BitVec 64))) (size!5338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1298 0))(
  ( (LongMapFixedSize!1299 (defaultEntry!1005 Int) (mask!2381 (_ BitVec 32)) (extraKeys!896 (_ BitVec 32)) (zeroValue!906 List!6812) (minValue!906 List!6812) (_size!1407 (_ BitVec 32)) (_keys!943 array!2476) (_values!928 array!2474) (_vacant!710 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2537 0))(
  ( (Cell!2538 (v!16876 LongMapFixedSize!1298)) )
))
(declare-datatypes ((MutLongMap!649 0))(
  ( (LongMap!649 (underlying!1481 Cell!2537)) (MutLongMapExt!648 (__x!4828 Int)) )
))
(declare-fun lt!272663 () MutLongMap!649)

(get-info :version)

(assert (=> b!636845 (= e!387996 (and e!387991 ((_ is LongMap!649) lt!272663)))))

(declare-datatypes ((Hashable!621 0))(
  ( (HashableExt!620 (__x!4829 Int)) )
))
(declare-datatypes ((Cell!2539 0))(
  ( (Cell!2540 (v!16877 MutLongMap!649)) )
))
(declare-datatypes ((MutableMap!621 0))(
  ( (MutableMapExt!620 (__x!4830 Int)) (HashMap!621 (underlying!1482 Cell!2539) (hashF!2529 Hashable!621) (_size!1408 (_ BitVec 32)) (defaultValue!772 Int)) )
))
(declare-datatypes ((CacheUp!282 0))(
  ( (CacheUp!283 (cache!1008 MutableMap!621)) )
))
(declare-fun cacheUp!351 () CacheUp!282)

(assert (=> b!636845 (= lt!272663 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))

(declare-fun b!636846 () Bool)

(declare-fun e!387973 () Bool)

(declare-fun e!387977 () Bool)

(assert (=> b!636846 (= e!387973 e!387977)))

(declare-fun res!276551 () Bool)

(assert (=> b!636846 (=> res!276551 e!387977)))

(declare-datatypes ((List!6813 0))(
  ( (Nil!6799) (Cons!6799 (h!12200 (_ BitVec 16)) (t!84395 List!6813)) )
))
(declare-datatypes ((TokenValue!1404 0))(
  ( (FloatLiteralValue!2808 (text!10273 List!6813)) (TokenValueExt!1403 (__x!4831 Int)) (Broken!7020 (value!44170 List!6813)) (Object!1417) (End!1404) (Def!1404) (Underscore!1404) (Match!1404) (Else!1404) (Error!1404) (Case!1404) (If!1404) (Extends!1404) (Abstract!1404) (Class!1404) (Val!1404) (DelimiterValue!2808 (del!1464 List!6813)) (KeywordValue!1410 (value!44171 List!6813)) (CommentValue!2808 (value!44172 List!6813)) (WhitespaceValue!2808 (value!44173 List!6813)) (IndentationValue!1404 (value!44174 List!6813)) (String!8757) (Int32!1404) (Broken!7021 (value!44175 List!6813)) (Boolean!1405) (Unit!11823) (OperatorValue!1407 (op!1464 List!6813)) (IdentifierValue!2808 (value!44176 List!6813)) (IdentifierValue!2809 (value!44177 List!6813)) (WhitespaceValue!2809 (value!44178 List!6813)) (True!2808) (False!2808) (Broken!7022 (value!44179 List!6813)) (Broken!7023 (value!44180 List!6813)) (True!2809) (RightBrace!1404) (RightBracket!1404) (Colon!1404) (Null!1404) (Comma!1404) (LeftBracket!1404) (False!2809) (LeftBrace!1404) (ImaginaryLiteralValue!1404 (text!10274 List!6813)) (StringLiteralValue!4212 (value!44181 List!6813)) (EOFValue!1404 (value!44182 List!6813)) (IdentValue!1404 (value!44183 List!6813)) (DelimiterValue!2809 (value!44184 List!6813)) (DedentValue!1404 (value!44185 List!6813)) (NewLineValue!1404 (value!44186 List!6813)) (IntegerValue!4212 (value!44187 (_ BitVec 32)) (text!10275 List!6813)) (IntegerValue!4213 (value!44188 Int) (text!10276 List!6813)) (Times!1404) (Or!1404) (Equal!1404) (Minus!1404) (Broken!7024 (value!44189 List!6813)) (And!1404) (Div!1404) (LessEqual!1404) (Mod!1404) (Concat!3110) (Not!1404) (Plus!1404) (SpaceValue!1404 (value!44190 List!6813)) (IntegerValue!4214 (value!44191 Int) (text!10277 List!6813)) (StringLiteralValue!4213 (text!10278 List!6813)) (FloatLiteralValue!2809 (text!10279 List!6813)) (BytesLiteralValue!1404 (value!44192 List!6813)) (CommentValue!2809 (value!44193 List!6813)) (StringLiteralValue!4214 (value!44194 List!6813)) (ErrorTokenValue!1404 (msg!1465 List!6813)) )
))
(declare-datatypes ((String!8758 0))(
  ( (String!8759 (value!44195 String)) )
))
(declare-datatypes ((IArray!4573 0))(
  ( (IArray!4574 (innerList!2344 List!6813)) )
))
(declare-datatypes ((Conc!2286 0))(
  ( (Node!2286 (left!5422 Conc!2286) (right!5752 Conc!2286) (csize!4802 Int) (cheight!2497 Int)) (Leaf!3487 (xs!4927 IArray!4573) (csize!4803 Int)) (Empty!2286) )
))
(declare-datatypes ((BalanceConc!4584 0))(
  ( (BalanceConc!4585 (c!116654 Conc!2286)) )
))
(declare-datatypes ((TokenValueInjection!2560 0))(
  ( (TokenValueInjection!2561 (toValue!2311 Int) (toChars!2170 Int)) )
))
(declare-datatypes ((Rule!2540 0))(
  ( (Rule!2541 (regex!1370 Regex!1705) (tag!1632 String!8758) (isSeparator!1370 Bool) (transformation!1370 TokenValueInjection!2560)) )
))
(declare-datatypes ((List!6814 0))(
  ( (Nil!6800) (Cons!6800 (h!12201 Rule!2540) (t!84396 List!6814)) )
))
(declare-fun lt!272659 () List!6814)

(declare-datatypes ((Token!2462 0))(
  ( (Token!2463 (value!44196 TokenValue!1404) (rule!2165 Rule!2540) (size!5339 Int) (originalCharacters!1402 List!6813)) )
))
(declare-datatypes ((List!6815 0))(
  ( (Nil!6801) (Cons!6801 (h!12202 Token!2462) (t!84397 List!6815)) )
))
(declare-datatypes ((IArray!4575 0))(
  ( (IArray!4576 (innerList!2345 List!6815)) )
))
(declare-datatypes ((Conc!2287 0))(
  ( (Node!2287 (left!5423 Conc!2287) (right!5753 Conc!2287) (csize!4804 Int) (cheight!2498 Int)) (Leaf!3488 (xs!4928 IArray!4575) (csize!4805 Int)) (Empty!2287) )
))
(declare-datatypes ((BalanceConc!4586 0))(
  ( (BalanceConc!4587 (c!116655 Conc!2287)) )
))
(declare-datatypes ((PrintableTokens!120 0))(
  ( (PrintableTokens!121 (rules!8191 List!6814) (tokens!1197 BalanceConc!4586)) )
))
(declare-fun lt!272636 () PrintableTokens!120)

(declare-fun list!2874 (BalanceConc!4586) List!6815)

(declare-datatypes ((tuple2!7368 0))(
  ( (tuple2!7369 (_1!3998 BalanceConc!4586) (_2!3998 BalanceConc!4584)) )
))
(declare-datatypes ((LexerInterface!1250 0))(
  ( (LexerInterfaceExt!1247 (__x!4832 Int)) (Lexer!1248) )
))
(declare-fun lex!578 (LexerInterface!1250 List!6814 BalanceConc!4584) tuple2!7368)

(declare-fun print!500 (PrintableTokens!120) BalanceConc!4584)

(assert (=> b!636846 (= res!276551 (not (= (list!2874 (_1!3998 (lex!578 Lexer!1248 lt!272659 (print!500 lt!272636)))) (list!2874 (tokens!1197 lt!272636)))))))

(declare-datatypes ((Option!1653 0))(
  ( (None!1652) (Some!1652 (v!16878 PrintableTokens!120)) )
))
(declare-fun lt!272637 () Option!1653)

(declare-fun get!2476 (Option!1653) PrintableTokens!120)

(assert (=> b!636846 (= lt!272636 (get!2476 lt!272637))))

(declare-fun b!636847 () Bool)

(declare-fun c!116651 () Bool)

(declare-fun lt!272654 () Option!1653)

(assert (=> b!636847 (= c!116651 ((_ is Some!1652) lt!272654))))

(declare-fun lt!272650 () Option!1653)

(declare-datatypes ((tuple3!526 0))(
  ( (tuple3!527 (_1!3999 Regex!1705) (_2!3999 Context!382) (_3!314 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7370 0))(
  ( (tuple2!7371 (_1!4000 tuple3!526) (_2!4000 (InoxSet Context!382))) )
))
(declare-datatypes ((List!6816 0))(
  ( (Nil!6802) (Cons!6802 (h!12203 tuple2!7370) (t!84398 List!6816)) )
))
(declare-datatypes ((array!2478 0))(
  ( (array!2479 (arr!1128 (Array (_ BitVec 32) List!6816)) (size!5340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1300 0))(
  ( (LongMapFixedSize!1301 (defaultEntry!1006 Int) (mask!2382 (_ BitVec 32)) (extraKeys!897 (_ BitVec 32)) (zeroValue!907 List!6816) (minValue!907 List!6816) (_size!1409 (_ BitVec 32)) (_keys!944 array!2476) (_values!929 array!2478) (_vacant!711 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2541 0))(
  ( (Cell!2542 (v!16879 LongMapFixedSize!1300)) )
))
(declare-datatypes ((MutLongMap!650 0))(
  ( (LongMap!650 (underlying!1483 Cell!2541)) (MutLongMapExt!649 (__x!4833 Int)) )
))
(declare-datatypes ((Cell!2543 0))(
  ( (Cell!2544 (v!16880 MutLongMap!650)) )
))
(declare-datatypes ((Hashable!622 0))(
  ( (HashableExt!621 (__x!4834 Int)) )
))
(declare-datatypes ((MutableMap!622 0))(
  ( (MutableMapExt!621 (__x!4835 Int)) (HashMap!622 (underlying!1484 Cell!2543) (hashF!2530 Hashable!622) (_size!1410 (_ BitVec 32)) (defaultValue!773 Int)) )
))
(declare-datatypes ((CacheDown!282 0))(
  ( (CacheDown!283 (cache!1009 MutableMap!622)) )
))
(declare-datatypes ((tuple3!528 0))(
  ( (tuple3!529 (_1!4001 Option!1653) (_2!4001 CacheUp!282) (_3!315 CacheDown!282)) )
))
(declare-fun lt!272644 () tuple3!528)

(declare-fun encloseInSep!0 (PrintableTokens!120 PrintableTokens!120 PrintableTokens!120) Option!1653)

(declare-fun createRightBracketSeparator!0 (CacheUp!282 CacheDown!282) tuple3!528)

(assert (=> b!636847 (= lt!272654 (encloseInSep!0 (v!16878 lt!272650) (v!16878 (_1!4001 lt!272644)) (v!16878 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))))

(declare-fun lt!272641 () Option!1653)

(assert (=> b!636847 (= lt!272641 (_1!4001 lt!272644))))

(declare-fun lt!272652 () Option!1653)

(declare-fun lt!272639 () tuple3!528)

(assert (=> b!636847 (= lt!272652 (_1!4001 lt!272639))))

(declare-fun lt!272655 () Option!1653)

(assert (=> b!636847 (= lt!272655 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))

(declare-fun lt!272661 () Option!1653)

(assert (=> b!636847 (= lt!272661 (_1!4001 lt!272639))))

(declare-fun e!387992 () Option!1653)

(declare-fun e!387987 () Option!1653)

(assert (=> b!636847 (= e!387992 e!387987)))

(declare-fun b!636848 () Bool)

(assert (=> b!636848 (= e!387992 None!1652)))

(declare-fun b!636849 () Bool)

(declare-fun e!387979 () Bool)

(assert (=> b!636849 (= e!387991 e!387979)))

(declare-fun b!636850 () Bool)

(assert (=> b!636850 (= e!387987 None!1652)))

(declare-fun b!636851 () Bool)

(declare-fun e!387990 () Bool)

(assert (=> b!636851 (= e!387979 e!387990)))

(declare-fun mapNonEmpty!2556 () Bool)

(declare-fun mapRes!2556 () Bool)

(declare-fun tp!198348 () Bool)

(declare-fun tp!198338 () Bool)

(assert (=> mapNonEmpty!2556 (= mapRes!2556 (and tp!198348 tp!198338))))

(declare-fun mapRest!2557 () (Array (_ BitVec 32) List!6812))

(declare-fun mapKey!2556 () (_ BitVec 32))

(declare-fun mapValue!2557 () List!6812)

(assert (=> mapNonEmpty!2556 (= (arr!1126 (_values!928 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) (store mapRest!2557 mapKey!2556 mapValue!2557))))

(declare-fun tp!198345 () Bool)

(declare-fun e!387994 () Bool)

(declare-fun tp!198341 () Bool)

(declare-fun array_inv!822 (array!2476) Bool)

(declare-fun array_inv!823 (array!2474) Bool)

(assert (=> b!636852 (= e!387990 (and tp!198335 tp!198341 tp!198345 (array_inv!822 (_keys!943 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) (array_inv!823 (_values!928 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) e!387994))))

(declare-fun b!636854 () Bool)

(declare-fun e!387989 () Bool)

(declare-fun e!387971 () Bool)

(assert (=> b!636854 (= e!387989 e!387971)))

(declare-fun res!276552 () Bool)

(assert (=> b!636854 (=> (not res!276552) (not e!387971))))

(declare-fun isEmpty!4672 (List!6814) Bool)

(assert (=> b!636854 (= res!276552 (not (isEmpty!4672 lt!272659)))))

(declare-datatypes ((JsonLexer!182 0))(
  ( (JsonLexer!183) )
))
(declare-fun rules!109 (JsonLexer!182) List!6814)

(assert (=> b!636854 (= lt!272659 (rules!109 JsonLexer!183))))

(declare-fun b!636855 () Bool)

(declare-fun res!276545 () Bool)

(assert (=> b!636855 (=> (not res!276545) (not e!387971))))

(declare-fun rulesInvariant!1185 (LexerInterface!1250 List!6814) Bool)

(assert (=> b!636855 (= res!276545 (rulesInvariant!1185 Lexer!1248 lt!272659))))

(declare-fun b!636856 () Bool)

(declare-fun e!387974 () Bool)

(assert (=> b!636856 (= e!387974 e!387976)))

(declare-fun b!636857 () Bool)

(assert (=> b!636857 (= e!387987 lt!272654)))

(declare-fun lt!272632 () BalanceConc!4584)

(assert (=> b!636857 (= lt!272632 (print!500 (v!16878 lt!272654)))))

(declare-fun tp!198346 () Bool)

(declare-fun e!387983 () Bool)

(declare-fun cacheDown!364 () CacheDown!282)

(declare-fun e!387988 () Bool)

(declare-fun tp!198336 () Bool)

(declare-fun array_inv!824 (array!2478) Bool)

(assert (=> b!636858 (= e!387983 (and tp!198349 tp!198346 tp!198336 (array_inv!822 (_keys!944 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) (array_inv!824 (_values!929 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) e!387988))))

(declare-fun b!636859 () Bool)

(declare-fun e!387981 () Option!1653)

(assert (=> b!636859 (= e!387981 e!387992)))

(declare-fun lt!272657 () Option!1653)

(assert (=> b!636859 (= lt!272657 (_1!4001 lt!272644))))

(declare-fun lt!272647 () Option!1653)

(assert (=> b!636859 (= lt!272647 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))

(declare-datatypes ((tuple2!7372 0))(
  ( (tuple2!7373 (_1!4002 Int) (_2!4002 PrintableTokens!120)) )
))
(declare-datatypes ((List!6817 0))(
  ( (Nil!6803) (Cons!6803 (h!12204 tuple2!7372) (t!84399 List!6817)) )
))
(declare-datatypes ((IArray!4577 0))(
  ( (IArray!4578 (innerList!2346 List!6817)) )
))
(declare-datatypes ((Conc!2288 0))(
  ( (Node!2288 (left!5424 Conc!2288) (right!5754 Conc!2288) (csize!4806 Int) (cheight!2499 Int)) (Leaf!3489 (xs!4929 IArray!4577) (csize!4807 Int)) (Empty!2288) )
))
(declare-datatypes ((BalanceConc!4588 0))(
  ( (BalanceConc!4589 (c!116656 Conc!2288)) )
))
(declare-fun lt!272634 () BalanceConc!4588)

(declare-fun lambda!18227 () Int)

(declare-datatypes ((List!6818 0))(
  ( (Nil!6804) (Cons!6804 (h!12205 PrintableTokens!120) (t!84400 List!6818)) )
))
(declare-datatypes ((IArray!4579 0))(
  ( (IArray!4580 (innerList!2347 List!6818)) )
))
(declare-datatypes ((Conc!2289 0))(
  ( (Node!2289 (left!5425 Conc!2289) (right!5755 Conc!2289) (csize!4808 Int) (cheight!2500 Int)) (Leaf!3490 (xs!4930 IArray!4579) (csize!4809 Int)) (Empty!2289) )
))
(declare-datatypes ((BalanceConc!4590 0))(
  ( (BalanceConc!4591 (c!116657 Conc!2289)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4590 PrintableTokens!120 PrintableTokens!120) Option!1653)

(declare-fun map!1466 (BalanceConc!4588 Int) BalanceConc!4590)

(declare-fun emptyPrintableTokens!12 (List!6814) PrintableTokens!120)

(assert (=> b!636859 (= lt!272650 (recombineSlicesWithSep!0 (map!1466 lt!272634 lambda!18227) (v!16878 (_1!4001 lt!272639)) (emptyPrintableTokens!12 lt!272659)))))

(declare-fun c!116652 () Bool)

(assert (=> b!636859 (= c!116652 ((_ is Some!1652) lt!272650))))

(declare-fun mapNonEmpty!2557 () Bool)

(declare-fun mapRes!2557 () Bool)

(declare-fun tp!198347 () Bool)

(declare-fun tp!198344 () Bool)

(assert (=> mapNonEmpty!2557 (= mapRes!2557 (and tp!198347 tp!198344))))

(declare-fun mapRest!2556 () (Array (_ BitVec 32) List!6816))

(declare-fun mapValue!2556 () List!6816)

(declare-fun mapKey!2557 () (_ BitVec 32))

(assert (=> mapNonEmpty!2557 (= (arr!1128 (_values!929 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) (store mapRest!2556 mapKey!2557 mapValue!2556))))

(declare-fun b!636860 () Bool)

(declare-fun e!387986 () Bool)

(assert (=> b!636860 (= e!387986 ((_ is Some!1652) (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644)))))))

(declare-fun lt!272645 () Option!1653)

(assert (=> b!636860 (= lt!272645 (_1!4001 lt!272644))))

(declare-fun lt!272648 () Option!1653)

(assert (=> b!636860 (= lt!272648 (_1!4001 lt!272639))))

(declare-fun b!636861 () Bool)

(declare-fun res!276548 () Bool)

(assert (=> b!636861 (=> (not res!276548) (not e!387971))))

(declare-fun printableTokens!2 () PrintableTokens!120)

(declare-fun usesJsonRules!0 (PrintableTokens!120) Bool)

(assert (=> b!636861 (= res!276548 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!636862 () Bool)

(declare-fun tp!198334 () Bool)

(assert (=> b!636862 (= e!387994 (and tp!198334 mapRes!2556))))

(declare-fun condMapEmpty!2556 () Bool)

(declare-fun mapDefault!2557 () List!6812)

(assert (=> b!636862 (= condMapEmpty!2556 (= (arr!1126 (_values!928 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6812)) mapDefault!2557)))))

(declare-fun e!387980 () Bool)

(assert (=> b!636863 (= e!387980 (and e!387996 tp!198337))))

(declare-fun b!636864 () Bool)

(assert (=> b!636864 (= e!387971 (not e!387973))))

(declare-fun res!276549 () Bool)

(assert (=> b!636864 (=> res!276549 e!387973)))

(declare-fun isEmpty!4673 (Option!1653) Bool)

(assert (=> b!636864 (= res!276549 (isEmpty!4673 lt!272637))))

(assert (=> b!636864 (= lt!272637 e!387981)))

(declare-fun c!116650 () Bool)

(assert (=> b!636864 (= c!116650 e!387986)))

(declare-fun res!276550 () Bool)

(assert (=> b!636864 (=> (not res!276550) (not e!387986))))

(assert (=> b!636864 (= res!276550 ((_ is Some!1652) (_1!4001 lt!272639)))))

(declare-fun lt!272635 () Option!1653)

(assert (=> b!636864 (= lt!272635 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))

(declare-fun lt!272651 () Option!1653)

(assert (=> b!636864 (= lt!272651 (_1!4001 lt!272644))))

(declare-datatypes ((tuple3!530 0))(
  ( (tuple3!531 (_1!4003 Option!1653) (_2!4003 Option!1653) (_3!316 Option!1653)) )
))
(declare-fun lt!272640 () tuple3!530)

(assert (=> b!636864 (= lt!272640 (tuple3!531 (_1!4001 lt!272639) (_1!4001 lt!272644) (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644)))))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!282 CacheDown!282) tuple3!528)

(assert (=> b!636864 (= lt!272644 (createLeftBracketSeparator!0 (_2!4001 lt!272639) (_3!315 lt!272639)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!282 CacheDown!282) tuple3!528)

(assert (=> b!636864 (= lt!272639 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!18228 () Int)

(declare-fun forall!1717 (BalanceConc!4590 Int) Bool)

(assert (=> b!636864 (forall!1717 (map!1466 lt!272634 lambda!18227) lambda!18228)))

(declare-fun lt!272643 () List!6817)

(declare-datatypes ((Unit!11824 0))(
  ( (Unit!11825) )
))
(declare-fun lt!272638 () Unit!11824)

(declare-fun mapPred!43 (List!6817 Int Int) Unit!11824)

(assert (=> b!636864 (= lt!272638 (mapPred!43 lt!272643 lambda!18227 lambda!18228))))

(declare-fun lt!272649 () Unit!11824)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6817) Unit!11824)

(assert (=> b!636864 (= lt!272649 (lemmaRemoveIdsPreservesRules!0 lt!272643))))

(declare-fun list!2875 (BalanceConc!4588) List!6817)

(assert (=> b!636864 (= lt!272643 (list!2875 lt!272634))))

(declare-fun lt!272662 () BalanceConc!4590)

(declare-fun lambda!18225 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4588) BalanceConc!4588)

(declare-fun map!1467 (BalanceConc!4590 Int) BalanceConc!4588)

(assert (=> b!636864 (= lt!272634 (sortObjectsByID!0 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272646 () List!6818)

(declare-fun lt!272642 () Unit!11824)

(declare-fun lambda!18226 () Int)

(declare-fun mapPred!44 (List!6818 Int Int) Unit!11824)

(assert (=> b!636864 (= lt!272642 (mapPred!44 lt!272646 lambda!18225 lambda!18226))))

(declare-fun lt!272660 () Unit!11824)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6818) Unit!11824)

(assert (=> b!636864 (= lt!272660 (lemmaAddIdsPreservesRules!0 lt!272646))))

(declare-fun list!2876 (BalanceConc!4590) List!6818)

(assert (=> b!636864 (= lt!272646 (list!2876 lt!272662))))

(declare-fun lt!272656 () Int)

(declare-datatypes ((List!6819 0))(
  ( (Nil!6805) (Cons!6805 (h!12206 Int) (t!84401 List!6819)) )
))
(declare-datatypes ((IArray!4581 0))(
  ( (IArray!4582 (innerList!2348 List!6819)) )
))
(declare-datatypes ((Conc!2290 0))(
  ( (Node!2290 (left!5426 Conc!2290) (right!5756 Conc!2290) (csize!4810 Int) (cheight!2501 Int)) (Leaf!3491 (xs!4931 IArray!4581) (csize!4811 Int)) (Empty!2290) )
))
(declare-datatypes ((BalanceConc!4592 0))(
  ( (BalanceConc!4593 (c!116658 Conc!2290)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!120 Int BalanceConc!4592 BalanceConc!4590) BalanceConc!4590)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4586 Int Int BalanceConc!4592) BalanceConc!4592)

(assert (=> b!636864 (= lt!272662 (slicesMulti!0 printableTokens!2 lt!272656 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)) (BalanceConc!4591 Empty!2289)))))

(declare-fun b!636865 () Bool)

(declare-fun lt!272658 () MutLongMap!650)

(assert (=> b!636865 (= e!387982 (and e!387984 ((_ is LongMap!650) lt!272658)))))

(assert (=> b!636865 (= lt!272658 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))

(declare-fun b!636866 () Bool)

(assert (=> b!636866 (= e!387985 e!387983)))

(declare-fun b!636867 () Bool)

(declare-fun isDefined!1426 (Option!1653) Bool)

(assert (=> b!636867 (= e!387977 (isDefined!1426 lt!272637))))

(declare-fun b!636868 () Bool)

(declare-fun e!387995 () Bool)

(assert (=> b!636868 (= e!387995 e!387980)))

(declare-fun res!276546 () Bool)

(assert (=> start!62360 (=> (not res!276546) (not e!387989))))

(assert (=> start!62360 (= res!276546 (> lt!272656 0))))

(declare-fun size!5341 (PrintableTokens!120) Int)

(assert (=> start!62360 (= lt!272656 (size!5341 printableTokens!2))))

(assert (=> start!62360 e!387989))

(declare-fun e!387972 () Bool)

(declare-fun inv!8638 (PrintableTokens!120) Bool)

(assert (=> start!62360 (and (inv!8638 printableTokens!2) e!387972)))

(declare-fun inv!8639 (CacheDown!282) Bool)

(assert (=> start!62360 (and (inv!8639 cacheDown!364) e!387974)))

(declare-fun inv!8640 (CacheUp!282) Bool)

(assert (=> start!62360 (and (inv!8640 cacheUp!351) e!387995)))

(declare-fun b!636853 () Bool)

(declare-fun e!387975 () Bool)

(declare-fun tp!198343 () Bool)

(declare-fun inv!8641 (Conc!2287) Bool)

(assert (=> b!636853 (= e!387975 (and (inv!8641 (c!116655 (tokens!1197 printableTokens!2))) tp!198343))))

(declare-fun mapIsEmpty!2556 () Bool)

(assert (=> mapIsEmpty!2556 mapRes!2556))

(declare-fun mapIsEmpty!2557 () Bool)

(assert (=> mapIsEmpty!2557 mapRes!2557))

(declare-fun tp!198342 () Bool)

(declare-fun b!636869 () Bool)

(declare-fun inv!8642 (BalanceConc!4586) Bool)

(assert (=> b!636869 (= e!387972 (and tp!198342 (inv!8642 (tokens!1197 printableTokens!2)) e!387975))))

(declare-fun b!636870 () Bool)

(declare-fun res!276547 () Bool)

(assert (=> b!636870 (=> (not res!276547) (not e!387986))))

(assert (=> b!636870 (= res!276547 ((_ is Some!1652) (_1!4001 lt!272644)))))

(declare-fun lt!272653 () Option!1653)

(assert (=> b!636870 (= lt!272653 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))

(declare-fun lt!272633 () Option!1653)

(assert (=> b!636870 (= lt!272633 (_1!4001 lt!272639))))

(declare-fun b!636871 () Bool)

(assert (=> b!636871 (= e!387981 None!1652)))

(declare-fun b!636872 () Bool)

(declare-fun tp!198340 () Bool)

(assert (=> b!636872 (= e!387988 (and tp!198340 mapRes!2557))))

(declare-fun condMapEmpty!2557 () Bool)

(declare-fun mapDefault!2556 () List!6816)

(assert (=> b!636872 (= condMapEmpty!2557 (= (arr!1128 (_values!929 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6816)) mapDefault!2556)))))

(assert (= (and start!62360 res!276546) b!636854))

(assert (= (and b!636854 res!276552) b!636855))

(assert (= (and b!636855 res!276545) b!636861))

(assert (= (and b!636861 res!276548) b!636864))

(assert (= (and b!636864 res!276550) b!636870))

(assert (= (and b!636870 res!276547) b!636860))

(assert (= (and b!636864 c!116650) b!636859))

(assert (= (and b!636864 (not c!116650)) b!636871))

(assert (= (and b!636859 c!116652) b!636847))

(assert (= (and b!636859 (not c!116652)) b!636848))

(assert (= (and b!636847 c!116651) b!636857))

(assert (= (and b!636847 (not c!116651)) b!636850))

(assert (= (and b!636864 (not res!276549)) b!636846))

(assert (= (and b!636846 (not res!276551)) b!636867))

(assert (= b!636869 b!636853))

(assert (= start!62360 b!636869))

(assert (= (and b!636872 condMapEmpty!2557) mapIsEmpty!2557))

(assert (= (and b!636872 (not condMapEmpty!2557)) mapNonEmpty!2557))

(assert (= b!636858 b!636872))

(assert (= b!636866 b!636858))

(assert (= b!636843 b!636866))

(assert (= (and b!636865 ((_ is LongMap!650) (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))) b!636843))

(assert (= b!636844 b!636865))

(assert (= (and b!636856 ((_ is HashMap!622) (cache!1009 cacheDown!364))) b!636844))

(assert (= start!62360 b!636856))

(assert (= (and b!636862 condMapEmpty!2556) mapIsEmpty!2556))

(assert (= (and b!636862 (not condMapEmpty!2556)) mapNonEmpty!2556))

(assert (= b!636852 b!636862))

(assert (= b!636851 b!636852))

(assert (= b!636849 b!636851))

(assert (= (and b!636845 ((_ is LongMap!649) (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))) b!636849))

(assert (= b!636863 b!636845))

(assert (= (and b!636868 ((_ is HashMap!621) (cache!1008 cacheUp!351))) b!636863))

(assert (= start!62360 b!636868))

(declare-fun m!907657 () Bool)

(assert (=> b!636861 m!907657))

(declare-fun m!907659 () Bool)

(assert (=> b!636869 m!907659))

(declare-fun m!907661 () Bool)

(assert (=> b!636855 m!907661))

(declare-fun m!907663 () Bool)

(assert (=> b!636853 m!907663))

(declare-fun m!907665 () Bool)

(assert (=> b!636867 m!907665))

(declare-fun m!907667 () Bool)

(assert (=> b!636854 m!907667))

(declare-fun m!907669 () Bool)

(assert (=> b!636854 m!907669))

(declare-fun m!907671 () Bool)

(assert (=> b!636870 m!907671))

(assert (=> b!636859 m!907671))

(declare-fun m!907673 () Bool)

(assert (=> b!636859 m!907673))

(declare-fun m!907675 () Bool)

(assert (=> b!636859 m!907675))

(assert (=> b!636859 m!907673))

(assert (=> b!636859 m!907675))

(declare-fun m!907677 () Bool)

(assert (=> b!636859 m!907677))

(declare-fun m!907679 () Bool)

(assert (=> start!62360 m!907679))

(declare-fun m!907681 () Bool)

(assert (=> start!62360 m!907681))

(declare-fun m!907683 () Bool)

(assert (=> start!62360 m!907683))

(declare-fun m!907685 () Bool)

(assert (=> start!62360 m!907685))

(declare-fun m!907687 () Bool)

(assert (=> b!636852 m!907687))

(declare-fun m!907689 () Bool)

(assert (=> b!636852 m!907689))

(assert (=> b!636847 m!907671))

(declare-fun m!907691 () Bool)

(assert (=> b!636847 m!907691))

(declare-fun m!907693 () Bool)

(assert (=> b!636846 m!907693))

(declare-fun m!907695 () Bool)

(assert (=> b!636846 m!907695))

(assert (=> b!636846 m!907695))

(declare-fun m!907697 () Bool)

(assert (=> b!636846 m!907697))

(declare-fun m!907699 () Bool)

(assert (=> b!636846 m!907699))

(declare-fun m!907701 () Bool)

(assert (=> b!636846 m!907701))

(declare-fun m!907703 () Bool)

(assert (=> b!636857 m!907703))

(assert (=> b!636860 m!907671))

(declare-fun m!907705 () Bool)

(assert (=> b!636858 m!907705))

(declare-fun m!907707 () Bool)

(assert (=> b!636858 m!907707))

(declare-fun m!907709 () Bool)

(assert (=> b!636864 m!907709))

(assert (=> b!636864 m!907671))

(declare-fun m!907711 () Bool)

(assert (=> b!636864 m!907711))

(declare-fun m!907713 () Bool)

(assert (=> b!636864 m!907713))

(assert (=> b!636864 m!907673))

(declare-fun m!907715 () Bool)

(assert (=> b!636864 m!907715))

(declare-fun m!907717 () Bool)

(assert (=> b!636864 m!907717))

(declare-fun m!907719 () Bool)

(assert (=> b!636864 m!907719))

(assert (=> b!636864 m!907713))

(declare-fun m!907721 () Bool)

(assert (=> b!636864 m!907721))

(declare-fun m!907723 () Bool)

(assert (=> b!636864 m!907723))

(declare-fun m!907725 () Bool)

(assert (=> b!636864 m!907725))

(declare-fun m!907727 () Bool)

(assert (=> b!636864 m!907727))

(declare-fun m!907729 () Bool)

(assert (=> b!636864 m!907729))

(assert (=> b!636864 m!907673))

(assert (=> b!636864 m!907725))

(declare-fun m!907731 () Bool)

(assert (=> b!636864 m!907731))

(declare-fun m!907733 () Bool)

(assert (=> b!636864 m!907733))

(declare-fun m!907735 () Bool)

(assert (=> b!636864 m!907735))

(declare-fun m!907737 () Bool)

(assert (=> mapNonEmpty!2557 m!907737))

(declare-fun m!907739 () Bool)

(assert (=> mapNonEmpty!2556 m!907739))

(check-sat (not b_next!18733) (not b!636857) (not b_next!18729) (not b!636859) (not start!62360) b_and!62505 (not b!636862) (not b_next!18735) (not b!636854) b_and!62501 (not b!636846) (not b!636872) (not mapNonEmpty!2557) (not b!636860) (not b!636853) b_and!62499 b_and!62503 (not b!636847) (not b!636858) (not b!636867) (not b!636861) (not b!636852) (not b!636869) (not b!636870) (not b!636864) (not mapNonEmpty!2556) (not b!636855) (not b_next!18731))
(check-sat b_and!62499 b_and!62503 (not b_next!18733) (not b_next!18729) b_and!62505 (not b_next!18735) b_and!62501 (not b_next!18731))
(get-model)

(declare-fun d!222067 () Bool)

(declare-fun size!5344 (BalanceConc!4586) Int)

(assert (=> d!222067 (= (size!5341 printableTokens!2) (size!5344 (tokens!1197 printableTokens!2)))))

(declare-fun bs!75641 () Bool)

(assert (= bs!75641 d!222067))

(declare-fun m!907741 () Bool)

(assert (=> bs!75641 m!907741))

(assert (=> start!62360 d!222067))

(declare-fun d!222069 () Bool)

(declare-fun res!276563 () Bool)

(declare-fun e!387999 () Bool)

(assert (=> d!222069 (=> (not res!276563) (not e!387999))))

(assert (=> d!222069 (= res!276563 (not (isEmpty!4672 (rules!8191 printableTokens!2))))))

(assert (=> d!222069 (= (inv!8638 printableTokens!2) e!387999)))

(declare-fun b!636879 () Bool)

(declare-fun res!276564 () Bool)

(assert (=> b!636879 (=> (not res!276564) (not e!387999))))

(assert (=> b!636879 (= res!276564 (rulesInvariant!1185 Lexer!1248 (rules!8191 printableTokens!2)))))

(declare-fun b!636880 () Bool)

(declare-fun res!276565 () Bool)

(assert (=> b!636880 (=> (not res!276565) (not e!387999))))

(declare-fun rulesProduceEachTokenIndividually!575 (LexerInterface!1250 List!6814 BalanceConc!4586) Bool)

(assert (=> b!636880 (= res!276565 (rulesProduceEachTokenIndividually!575 Lexer!1248 (rules!8191 printableTokens!2) (tokens!1197 printableTokens!2)))))

(declare-fun b!636881 () Bool)

(declare-fun separableTokens!25 (LexerInterface!1250 BalanceConc!4586 List!6814) Bool)

(assert (=> b!636881 (= e!387999 (separableTokens!25 Lexer!1248 (tokens!1197 printableTokens!2) (rules!8191 printableTokens!2)))))

(assert (= (and d!222069 res!276563) b!636879))

(assert (= (and b!636879 res!276564) b!636880))

(assert (= (and b!636880 res!276565) b!636881))

(declare-fun m!907743 () Bool)

(assert (=> d!222069 m!907743))

(declare-fun m!907745 () Bool)

(assert (=> b!636879 m!907745))

(declare-fun m!907747 () Bool)

(assert (=> b!636880 m!907747))

(declare-fun m!907749 () Bool)

(assert (=> b!636881 m!907749))

(assert (=> start!62360 d!222069))

(declare-fun d!222071 () Bool)

(declare-fun res!276568 () Bool)

(declare-fun e!388002 () Bool)

(assert (=> d!222071 (=> (not res!276568) (not e!388002))))

(assert (=> d!222071 (= res!276568 ((_ is HashMap!622) (cache!1009 cacheDown!364)))))

(assert (=> d!222071 (= (inv!8639 cacheDown!364) e!388002)))

(declare-fun b!636884 () Bool)

(declare-fun validCacheMapDown!42 (MutableMap!622) Bool)

(assert (=> b!636884 (= e!388002 (validCacheMapDown!42 (cache!1009 cacheDown!364)))))

(assert (= (and d!222071 res!276568) b!636884))

(declare-fun m!907751 () Bool)

(assert (=> b!636884 m!907751))

(assert (=> start!62360 d!222071))

(declare-fun d!222073 () Bool)

(declare-fun res!276571 () Bool)

(declare-fun e!388005 () Bool)

(assert (=> d!222073 (=> (not res!276571) (not e!388005))))

(assert (=> d!222073 (= res!276571 ((_ is HashMap!621) (cache!1008 cacheUp!351)))))

(assert (=> d!222073 (= (inv!8640 cacheUp!351) e!388005)))

(declare-fun b!636887 () Bool)

(declare-fun validCacheMapUp!42 (MutableMap!621) Bool)

(assert (=> b!636887 (= e!388005 (validCacheMapUp!42 (cache!1008 cacheUp!351)))))

(assert (= (and d!222073 res!276571) b!636887))

(declare-fun m!907753 () Bool)

(assert (=> b!636887 m!907753))

(assert (=> start!62360 d!222073))

(declare-fun d!222075 () Bool)

(declare-fun isBalanced!599 (Conc!2287) Bool)

(assert (=> d!222075 (= (inv!8642 (tokens!1197 printableTokens!2)) (isBalanced!599 (c!116655 (tokens!1197 printableTokens!2))))))

(declare-fun bs!75642 () Bool)

(assert (= bs!75642 d!222075))

(declare-fun m!907755 () Bool)

(assert (=> bs!75642 m!907755))

(assert (=> b!636869 d!222075))

(declare-fun d!222077 () Bool)

(declare-fun e!388011 () Bool)

(assert (=> d!222077 e!388011))

(declare-fun res!276574 () Bool)

(assert (=> d!222077 (=> res!276574 e!388011)))

(declare-fun lt!272670 () tuple3!528)

(assert (=> d!222077 (= res!276574 (isEmpty!4673 (_1!4001 lt!272670)))))

(declare-fun e!388010 () Option!1653)

(declare-datatypes ((tuple3!532 0))(
  ( (tuple3!533 (_1!4004 Bool) (_2!4004 CacheUp!282) (_3!317 CacheDown!282)) )
))
(declare-fun lt!272671 () tuple3!532)

(assert (=> d!222077 (= lt!272670 (tuple3!529 e!388010 (_2!4004 lt!272671) (_3!317 lt!272671)))))

(declare-fun c!116661 () Bool)

(assert (=> d!222077 (= c!116661 (not (_1!4004 lt!272671)))))

(declare-fun lt!272672 () BalanceConc!4586)

(declare-fun rulesProduceEachTokenIndividuallyMem!4 (LexerInterface!1250 List!6814 BalanceConc!4586 CacheUp!282 CacheDown!282) tuple3!532)

(assert (=> d!222077 (= lt!272671 (rulesProduceEachTokenIndividuallyMem!4 Lexer!1248 (rules!109 JsonLexer!183) lt!272672 (_2!4001 lt!272644) (_3!315 lt!272644)))))

(declare-fun singletonSeq!430 (Token!2462) BalanceConc!4586)

(declare-fun apply!1607 (TokenValueInjection!2560 BalanceConc!4584) TokenValue!1404)

(declare-datatypes ((KeywordValueInjection!36 0))(
  ( (KeywordValueInjection!37) )
))
(declare-fun injection!9 (KeywordValueInjection!36) TokenValueInjection!2560)

(declare-fun singletonSeq!431 ((_ BitVec 16)) BalanceConc!4584)

(declare-fun rBracketRule!0 (JsonLexer!182) Rule!2540)

(assert (=> d!222077 (= lt!272672 (singletonSeq!430 (Token!2463 (apply!1607 (injection!9 KeywordValueInjection!37) (singletonSeq!431 #x005D)) (rBracketRule!0 JsonLexer!183) 1 (Cons!6799 #x005D Nil!6799))))))

(assert (=> d!222077 (not (isEmpty!4672 (rules!109 JsonLexer!183)))))

(assert (=> d!222077 (= (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644)) lt!272670)))

(declare-fun b!636894 () Bool)

(assert (=> b!636894 (= e!388010 None!1652)))

(declare-fun b!636895 () Bool)

(declare-fun printableTokensFromTokens!7 (List!6814 BalanceConc!4586) Option!1653)

(assert (=> b!636895 (= e!388010 (printableTokensFromTokens!7 (rules!109 JsonLexer!183) lt!272672))))

(declare-fun b!636896 () Bool)

(assert (=> b!636896 (= e!388011 (usesJsonRules!0 (get!2476 (_1!4001 lt!272670))))))

(assert (= (and d!222077 c!116661) b!636894))

(assert (= (and d!222077 (not c!116661)) b!636895))

(assert (= (and d!222077 (not res!276574)) b!636896))

(declare-fun m!907757 () Bool)

(assert (=> d!222077 m!907757))

(assert (=> d!222077 m!907757))

(declare-fun m!907759 () Bool)

(assert (=> d!222077 m!907759))

(declare-fun m!907761 () Bool)

(assert (=> d!222077 m!907761))

(assert (=> d!222077 m!907669))

(declare-fun m!907763 () Bool)

(assert (=> d!222077 m!907763))

(declare-fun m!907765 () Bool)

(assert (=> d!222077 m!907765))

(assert (=> d!222077 m!907759))

(declare-fun m!907767 () Bool)

(assert (=> d!222077 m!907767))

(assert (=> d!222077 m!907669))

(declare-fun m!907769 () Bool)

(assert (=> d!222077 m!907769))

(declare-fun m!907771 () Bool)

(assert (=> d!222077 m!907771))

(assert (=> d!222077 m!907669))

(assert (=> b!636895 m!907669))

(assert (=> b!636895 m!907669))

(declare-fun m!907773 () Bool)

(assert (=> b!636895 m!907773))

(declare-fun m!907775 () Bool)

(assert (=> b!636896 m!907775))

(assert (=> b!636896 m!907775))

(declare-fun m!907777 () Bool)

(assert (=> b!636896 m!907777))

(assert (=> b!636860 d!222077))

(declare-fun d!222079 () Bool)

(assert (=> d!222079 (= (array_inv!822 (_keys!943 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) (bvsge (size!5338 (_keys!943 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!636852 d!222079))

(declare-fun d!222081 () Bool)

(assert (=> d!222081 (= (array_inv!823 (_values!928 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) (bvsge (size!5337 (_values!928 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!636852 d!222081))

(assert (=> b!636870 d!222077))

(declare-fun d!222083 () Bool)

(assert (=> d!222083 (= (usesJsonRules!0 printableTokens!2) (= (rules!8191 printableTokens!2) (rules!109 JsonLexer!183)))))

(declare-fun bs!75643 () Bool)

(assert (= bs!75643 d!222083))

(assert (=> bs!75643 m!907669))

(assert (=> b!636861 d!222083))

(declare-fun d!222085 () Bool)

(declare-fun c!116664 () Bool)

(assert (=> d!222085 (= c!116664 ((_ is Node!2287) (c!116655 (tokens!1197 printableTokens!2))))))

(declare-fun e!388016 () Bool)

(assert (=> d!222085 (= (inv!8641 (c!116655 (tokens!1197 printableTokens!2))) e!388016)))

(declare-fun b!636903 () Bool)

(declare-fun inv!8643 (Conc!2287) Bool)

(assert (=> b!636903 (= e!388016 (inv!8643 (c!116655 (tokens!1197 printableTokens!2))))))

(declare-fun b!636904 () Bool)

(declare-fun e!388017 () Bool)

(assert (=> b!636904 (= e!388016 e!388017)))

(declare-fun res!276577 () Bool)

(assert (=> b!636904 (= res!276577 (not ((_ is Leaf!3488) (c!116655 (tokens!1197 printableTokens!2)))))))

(assert (=> b!636904 (=> res!276577 e!388017)))

(declare-fun b!636905 () Bool)

(declare-fun inv!8644 (Conc!2287) Bool)

(assert (=> b!636905 (= e!388017 (inv!8644 (c!116655 (tokens!1197 printableTokens!2))))))

(assert (= (and d!222085 c!116664) b!636903))

(assert (= (and d!222085 (not c!116664)) b!636904))

(assert (= (and b!636904 (not res!276577)) b!636905))

(declare-fun m!907779 () Bool)

(assert (=> b!636903 m!907779))

(declare-fun m!907781 () Bool)

(assert (=> b!636905 m!907781))

(assert (=> b!636853 d!222085))

(declare-fun d!222087 () Bool)

(declare-fun res!276580 () Bool)

(declare-fun e!388020 () Bool)

(assert (=> d!222087 (=> (not res!276580) (not e!388020))))

(declare-fun rulesValid!504 (LexerInterface!1250 List!6814) Bool)

(assert (=> d!222087 (= res!276580 (rulesValid!504 Lexer!1248 lt!272659))))

(assert (=> d!222087 (= (rulesInvariant!1185 Lexer!1248 lt!272659) e!388020)))

(declare-fun b!636908 () Bool)

(declare-datatypes ((List!6820 0))(
  ( (Nil!6806) (Cons!6806 (h!12207 String!8758) (t!84448 List!6820)) )
))
(declare-fun noDuplicateTag!504 (LexerInterface!1250 List!6814 List!6820) Bool)

(assert (=> b!636908 (= e!388020 (noDuplicateTag!504 Lexer!1248 lt!272659 Nil!6806))))

(assert (= (and d!222087 res!276580) b!636908))

(declare-fun m!907783 () Bool)

(assert (=> d!222087 m!907783))

(declare-fun m!907785 () Bool)

(assert (=> b!636908 m!907785))

(assert (=> b!636855 d!222087))

(declare-fun d!222089 () Bool)

(declare-fun list!2877 (Conc!2289) List!6818)

(assert (=> d!222089 (= (list!2876 lt!272662) (list!2877 (c!116657 lt!272662)))))

(declare-fun bs!75644 () Bool)

(assert (= bs!75644 d!222089))

(declare-fun m!907787 () Bool)

(assert (=> bs!75644 m!907787))

(assert (=> b!636864 d!222089))

(declare-fun bs!75645 () Bool)

(declare-fun d!222091 () Bool)

(assert (= bs!75645 (and d!222091 b!636864)))

(declare-fun lambda!18233 () Int)

(assert (=> bs!75645 (= lambda!18233 lambda!18228)))

(declare-fun lambda!18234 () Int)

(assert (=> bs!75645 (not (= lambda!18234 lambda!18228))))

(assert (=> d!222091 (not (= lambda!18234 lambda!18233))))

(declare-fun forall!1718 (List!6818 Int) Bool)

(assert (=> d!222091 (forall!1718 lt!272646 lambda!18234)))

(declare-fun lt!272677 () Unit!11824)

(declare-fun e!388023 () Unit!11824)

(assert (=> d!222091 (= lt!272677 e!388023)))

(declare-fun c!116667 () Bool)

(assert (=> d!222091 (= c!116667 ((_ is Nil!6804) lt!272646))))

(assert (=> d!222091 (forall!1718 lt!272646 lambda!18233)))

(assert (=> d!222091 (= (lemmaAddIdsPreservesRules!0 lt!272646) lt!272677)))

(declare-fun b!636913 () Bool)

(declare-fun Unit!11826 () Unit!11824)

(assert (=> b!636913 (= e!388023 Unit!11826)))

(declare-fun b!636914 () Bool)

(declare-fun Unit!11827 () Unit!11824)

(assert (=> b!636914 (= e!388023 Unit!11827)))

(declare-fun lt!272678 () Unit!11824)

(assert (=> b!636914 (= lt!272678 (lemmaAddIdsPreservesRules!0 (t!84400 lt!272646)))))

(assert (= (and d!222091 c!116667) b!636913))

(assert (= (and d!222091 (not c!116667)) b!636914))

(declare-fun m!907789 () Bool)

(assert (=> d!222091 m!907789))

(declare-fun m!907791 () Bool)

(assert (=> d!222091 m!907791))

(declare-fun m!907793 () Bool)

(assert (=> b!636914 m!907793))

(assert (=> b!636864 d!222091))

(declare-fun b!636931 () Bool)

(assert (=> b!636931 true))

(declare-fun bs!75646 () Bool)

(declare-fun d!222093 () Bool)

(assert (= bs!75646 (and d!222093 b!636931)))

(declare-fun lambda!18240 () Int)

(declare-fun lambda!18239 () Int)

(assert (=> bs!75646 (= lambda!18240 lambda!18239)))

(assert (=> d!222093 true))

(declare-fun lt!272687 () Unit!11824)

(declare-fun lemmaConcatPreservesForall!36 (List!6819 List!6819 Int) Unit!11824)

(declare-fun list!2878 (BalanceConc!4592) List!6819)

(assert (=> b!636931 (= lt!272687 (lemmaConcatPreservesForall!36 (list!2878 (BalanceConc!4593 Empty!2290)) (Cons!6805 0 Nil!6805) lambda!18239))))

(declare-fun e!388038 () BalanceConc!4592)

(declare-fun call!41624 () BalanceConc!4592)

(assert (=> b!636931 (= e!388038 call!41624)))

(declare-fun b!636932 () Bool)

(assert (=> b!636932 (= e!388038 call!41624)))

(declare-fun lt!272685 () BalanceConc!4592)

(declare-fun forall!1719 (BalanceConc!4592 Int) Bool)

(assert (=> d!222093 (forall!1719 lt!272685 lambda!18240)))

(declare-fun e!388037 () BalanceConc!4592)

(assert (=> d!222093 (= lt!272685 e!388037)))

(declare-fun c!116674 () Bool)

(assert (=> d!222093 (= c!116674 (>= 0 (size!5344 (tokens!1197 printableTokens!2))))))

(declare-fun e!388036 () Bool)

(assert (=> d!222093 e!388036))

(declare-fun res!276586 () Bool)

(assert (=> d!222093 (=> (not res!276586) (not e!388036))))

(assert (=> d!222093 (= res!276586 (>= 0 0))))

(assert (=> d!222093 (= (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)) lt!272685)))

(declare-fun b!636933 () Bool)

(declare-fun e!388034 () BalanceConc!4592)

(assert (=> b!636933 (= e!388034 (BalanceConc!4593 Empty!2290))))

(declare-fun bm!41619 () Bool)

(declare-fun c!116675 () Bool)

(declare-fun c!116676 () Bool)

(assert (=> bm!41619 (= c!116675 c!116676)))

(assert (=> bm!41619 (= call!41624 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 (+ 0 1) e!388034))))

(declare-fun b!636934 () Bool)

(declare-fun e!388035 () Bool)

(declare-fun lt!272686 () Token!2462)

(declare-fun isKeywordValue!0 (Token!2462 TokenValue!1404) Bool)

(assert (=> b!636934 (= e!388035 (isKeywordValue!0 lt!272686 RightBrace!1404))))

(declare-fun b!636935 () Bool)

(assert (=> b!636935 (= e!388037 e!388038)))

(declare-fun apply!1608 (BalanceConc!4586 Int) Token!2462)

(assert (=> b!636935 (= lt!272686 (apply!1608 (tokens!1197 printableTokens!2) 0))))

(declare-fun res!276585 () Bool)

(assert (=> b!636935 (= res!276585 (isKeywordValue!0 lt!272686 LeftBrace!1404))))

(assert (=> b!636935 (=> res!276585 e!388035)))

(assert (=> b!636935 (= c!116676 e!388035)))

(declare-fun b!636936 () Bool)

(assert (=> b!636936 (= e!388037 (BalanceConc!4593 Empty!2290))))

(declare-fun b!636937 () Bool)

(assert (=> b!636937 (= e!388036 (<= 0 (size!5344 (tokens!1197 printableTokens!2))))))

(declare-fun b!636938 () Bool)

(declare-fun append!205 (BalanceConc!4592 Int) BalanceConc!4592)

(assert (=> b!636938 (= e!388034 (append!205 (BalanceConc!4593 Empty!2290) 0))))

(assert (= (and d!222093 res!276586) b!636937))

(assert (= (and d!222093 c!116674) b!636936))

(assert (= (and d!222093 (not c!116674)) b!636935))

(assert (= (and b!636935 (not res!276585)) b!636934))

(assert (= (and b!636935 c!116676) b!636931))

(assert (= (and b!636935 (not c!116676)) b!636932))

(assert (= (or b!636931 b!636932) bm!41619))

(assert (= (and bm!41619 c!116675) b!636938))

(assert (= (and bm!41619 (not c!116675)) b!636933))

(declare-fun m!907795 () Bool)

(assert (=> b!636931 m!907795))

(assert (=> b!636931 m!907795))

(declare-fun m!907797 () Bool)

(assert (=> b!636931 m!907797))

(assert (=> b!636937 m!907741))

(declare-fun m!907799 () Bool)

(assert (=> b!636934 m!907799))

(declare-fun m!907801 () Bool)

(assert (=> bm!41619 m!907801))

(declare-fun m!907803 () Bool)

(assert (=> b!636935 m!907803))

(declare-fun m!907805 () Bool)

(assert (=> b!636935 m!907805))

(declare-fun m!907807 () Bool)

(assert (=> b!636938 m!907807))

(declare-fun m!907809 () Bool)

(assert (=> d!222093 m!907809))

(assert (=> d!222093 m!907741))

(assert (=> b!636864 d!222093))

(declare-fun bs!75647 () Bool)

(declare-fun b!636974 () Bool)

(assert (= bs!75647 (and b!636974 b!636864)))

(declare-fun lambda!18287 () Int)

(assert (=> bs!75647 (not (= lambda!18287 lambda!18226))))

(declare-fun b!636984 () Bool)

(declare-fun e!388065 () Bool)

(assert (=> b!636984 (= e!388065 true)))

(declare-fun b!636983 () Bool)

(declare-fun e!388064 () Bool)

(assert (=> b!636983 (= e!388064 e!388065)))

(assert (=> b!636974 e!388064))

(assert (= b!636983 b!636984))

(assert (= b!636974 b!636983))

(declare-fun lambda!18288 () Int)

(assert (=> bs!75647 (not (= lambda!18288 lambda!18226))))

(assert (=> b!636974 (not (= lambda!18288 lambda!18287))))

(declare-fun b!636986 () Bool)

(declare-fun e!388067 () Bool)

(assert (=> b!636986 (= e!388067 true)))

(declare-fun b!636985 () Bool)

(declare-fun e!388066 () Bool)

(assert (=> b!636985 (= e!388066 e!388067)))

(assert (=> b!636974 e!388066))

(assert (= b!636985 b!636986))

(assert (= b!636974 b!636985))

(declare-fun lambda!18289 () Int)

(assert (=> bs!75647 (not (= lambda!18289 lambda!18226))))

(assert (=> b!636974 (not (= lambda!18289 lambda!18287))))

(assert (=> b!636974 (not (= lambda!18289 lambda!18288))))

(declare-fun b!636988 () Bool)

(declare-fun e!388069 () Bool)

(assert (=> b!636988 (= e!388069 true)))

(declare-fun b!636987 () Bool)

(declare-fun e!388068 () Bool)

(assert (=> b!636987 (= e!388068 e!388069)))

(assert (=> b!636974 e!388068))

(assert (= b!636987 b!636988))

(assert (= b!636974 b!636987))

(declare-fun lambda!18290 () Int)

(assert (=> bs!75647 (= lambda!18290 lambda!18226)))

(assert (=> b!636974 (not (= lambda!18290 lambda!18287))))

(assert (=> b!636974 (not (= lambda!18290 lambda!18288))))

(assert (=> b!636974 (not (= lambda!18290 lambda!18289))))

(declare-fun bs!75648 () Bool)

(declare-fun d!222095 () Bool)

(assert (= bs!75648 (and d!222095 b!636974)))

(declare-fun lambda!18291 () Int)

(assert (=> bs!75648 (not (= lambda!18291 lambda!18288))))

(assert (=> bs!75648 (not (= lambda!18291 lambda!18289))))

(assert (=> bs!75648 (not (= lambda!18291 lambda!18287))))

(assert (=> bs!75648 (= lambda!18291 lambda!18290)))

(declare-fun bs!75649 () Bool)

(assert (= bs!75649 (and d!222095 b!636864)))

(assert (=> bs!75649 (= lambda!18291 lambda!18226)))

(declare-fun b!636965 () Bool)

(assert (=> b!636965 true))

(declare-fun lt!272791 () Unit!11824)

(declare-fun lt!272793 () tuple2!7372)

(declare-fun lt!272781 () BalanceConc!4588)

(declare-fun forallContained!460 (List!6817 Int tuple2!7372) Unit!11824)

(assert (=> b!636965 (= lt!272791 (forallContained!460 (list!2875 lt!272781) lambda!18289 lt!272793))))

(declare-fun e!388053 () Unit!11824)

(declare-fun err!592 () Unit!11824)

(assert (=> b!636965 (= e!388053 err!592)))

(declare-fun b!636966 () Bool)

(declare-fun e!388059 () BalanceConc!4588)

(assert (=> b!636966 (= e!388059 (map!1467 lt!272662 lambda!18225))))

(declare-fun b!636968 () Bool)

(declare-fun e!388056 () Bool)

(declare-fun lt!272789 () List!6817)

(declare-fun size!5345 (List!6817) Int)

(declare-fun filter!123 (List!6817 Int) List!6817)

(assert (=> b!636968 (= e!388056 (< (size!5345 (filter!123 lt!272789 lambda!18289)) (size!5345 lt!272789)))))

(declare-fun b!636969 () Bool)

(declare-fun e!388054 () Unit!11824)

(declare-fun Unit!11828 () Unit!11824)

(assert (=> b!636969 (= e!388054 Unit!11828)))

(declare-fun b!636970 () Bool)

(assert (=> b!636970 true))

(declare-fun lt!272784 () Unit!11824)

(assert (=> b!636970 (= lt!272784 (forallContained!460 (list!2875 (map!1467 lt!272662 lambda!18225)) lambda!18287 lt!272793))))

(declare-fun err!591 () Unit!11824)

(assert (=> b!636970 (= e!388054 err!591)))

(declare-fun b!636971 () Bool)

(assert (=> b!636971 true))

(declare-fun lt!272769 () Unit!11824)

(assert (=> b!636971 (= lt!272769 (forallContained!460 (list!2875 (map!1467 lt!272662 lambda!18225)) lambda!18289 lt!272793))))

(declare-fun e!388057 () Unit!11824)

(declare-fun err!590 () Unit!11824)

(assert (=> b!636971 (= e!388057 err!590)))

(declare-fun b!636972 () Bool)

(declare-fun Unit!11829 () Unit!11824)

(assert (=> b!636972 (= e!388057 Unit!11829)))

(declare-fun b!636973 () Bool)

(assert (=> b!636973 true))

(declare-fun lt!272763 () Unit!11824)

(declare-fun lt!272764 () BalanceConc!4588)

(assert (=> b!636973 (= lt!272763 (forallContained!460 (list!2875 lt!272764) lambda!18287 lt!272793))))

(declare-fun e!388058 () Unit!11824)

(declare-fun err!593 () Unit!11824)

(assert (=> b!636973 (= e!388058 err!593)))

(declare-fun lt!272795 () BalanceConc!4588)

(declare-fun ++!1820 (BalanceConc!4588 BalanceConc!4588) BalanceConc!4588)

(assert (=> b!636974 (= e!388059 (++!1820 (++!1820 (sortObjectsByID!0 lt!272764) lt!272795) (sortObjectsByID!0 lt!272781)))))

(declare-fun apply!1609 (BalanceConc!4588 Int) tuple2!7372)

(declare-fun size!5346 (BalanceConc!4588) Int)

(assert (=> b!636974 (= lt!272793 (apply!1609 (map!1467 lt!272662 lambda!18225) (ite (>= (size!5346 (map!1467 lt!272662 lambda!18225)) 0) (div (size!5346 (map!1467 lt!272662 lambda!18225)) 2) (- (div (- (size!5346 (map!1467 lt!272662 lambda!18225))) 2)))))))

(declare-fun filter!124 (BalanceConc!4588 Int) BalanceConc!4588)

(assert (=> b!636974 (= lt!272764 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18287))))

(assert (=> b!636974 (= lt!272795 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18288))))

(assert (=> b!636974 (= lt!272781 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18289))))

(declare-fun c!116691 () Bool)

(declare-fun contains!1526 (BalanceConc!4588 tuple2!7372) Bool)

(assert (=> b!636974 (= c!116691 (contains!1526 lt!272764 lt!272793))))

(declare-fun lt!272773 () Unit!11824)

(assert (=> b!636974 (= lt!272773 e!388058)))

(declare-fun c!116690 () Bool)

(declare-fun forall!1720 (BalanceConc!4588 Int) Bool)

(assert (=> b!636974 (= c!116690 (forall!1720 (map!1467 lt!272662 lambda!18225) lambda!18287))))

(declare-fun lt!272766 () Unit!11824)

(assert (=> b!636974 (= lt!272766 e!388054)))

(declare-fun lt!272762 () List!6817)

(assert (=> b!636974 (= lt!272762 (list!2875 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272772 () Unit!11824)

(declare-fun lemmaNotForallFilterShorter!8 (List!6817 Int) Unit!11824)

(assert (=> b!636974 (= lt!272772 (lemmaNotForallFilterShorter!8 lt!272762 lambda!18287))))

(declare-fun res!276591 () Bool)

(declare-fun isEmpty!4674 (List!6817) Bool)

(assert (=> b!636974 (= res!276591 (isEmpty!4674 lt!272762))))

(declare-fun e!388055 () Bool)

(assert (=> b!636974 (=> res!276591 e!388055)))

(assert (=> b!636974 e!388055))

(declare-fun lt!272771 () Unit!11824)

(assert (=> b!636974 (= lt!272771 lt!272772)))

(declare-fun c!116688 () Bool)

(assert (=> b!636974 (= c!116688 (contains!1526 lt!272781 lt!272793))))

(declare-fun lt!272788 () Unit!11824)

(assert (=> b!636974 (= lt!272788 e!388053)))

(declare-fun c!116687 () Bool)

(assert (=> b!636974 (= c!116687 (forall!1720 (map!1467 lt!272662 lambda!18225) lambda!18289))))

(declare-fun lt!272760 () Unit!11824)

(assert (=> b!636974 (= lt!272760 e!388057)))

(assert (=> b!636974 (= lt!272789 (list!2875 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272792 () Unit!11824)

(assert (=> b!636974 (= lt!272792 (lemmaNotForallFilterShorter!8 lt!272789 lambda!18289))))

(declare-fun res!276592 () Bool)

(assert (=> b!636974 (= res!276592 (isEmpty!4674 lt!272789))))

(assert (=> b!636974 (=> res!276592 e!388056)))

(assert (=> b!636974 e!388056))

(declare-fun lt!272761 () Unit!11824)

(assert (=> b!636974 (= lt!272761 lt!272792)))

(declare-fun lt!272779 () Unit!11824)

(declare-fun filterSubseq!8 (List!6817 Int) Unit!11824)

(assert (=> b!636974 (= lt!272779 (filterSubseq!8 (list!2875 (map!1467 lt!272662 lambda!18225)) lambda!18287))))

(declare-fun lt!272765 () Unit!11824)

(assert (=> b!636974 (= lt!272765 (filterSubseq!8 (list!2875 (map!1467 lt!272662 lambda!18225)) lambda!18288))))

(declare-fun lt!272782 () Unit!11824)

(assert (=> b!636974 (= lt!272782 (filterSubseq!8 (list!2875 (map!1467 lt!272662 lambda!18225)) lambda!18289))))

(declare-fun lt!272778 () List!6817)

(assert (=> b!636974 (= lt!272778 (list!2875 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18287)))))

(declare-fun lt!272794 () List!6817)

(assert (=> b!636974 (= lt!272794 (list!2875 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272786 () Unit!11824)

(declare-fun lemmaForallSubseq!13 (List!6817 List!6817 Int) Unit!11824)

(assert (=> b!636974 (= lt!272786 (lemmaForallSubseq!13 lt!272778 lt!272794 lambda!18290))))

(declare-fun forall!1721 (List!6817 Int) Bool)

(assert (=> b!636974 (forall!1721 lt!272778 lambda!18290)))

(declare-fun lt!272780 () Unit!11824)

(assert (=> b!636974 (= lt!272780 lt!272786)))

(declare-fun lt!272768 () List!6817)

(assert (=> b!636974 (= lt!272768 (list!2875 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18288)))))

(declare-fun lt!272774 () List!6817)

(assert (=> b!636974 (= lt!272774 (list!2875 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272776 () Unit!11824)

(assert (=> b!636974 (= lt!272776 (lemmaForallSubseq!13 lt!272768 lt!272774 lambda!18290))))

(assert (=> b!636974 (forall!1721 lt!272768 lambda!18290)))

(declare-fun lt!272783 () Unit!11824)

(assert (=> b!636974 (= lt!272783 lt!272776)))

(declare-fun lt!272767 () List!6817)

(assert (=> b!636974 (= lt!272767 (list!2875 (filter!124 (map!1467 lt!272662 lambda!18225) lambda!18289)))))

(declare-fun lt!272775 () List!6817)

(assert (=> b!636974 (= lt!272775 (list!2875 (map!1467 lt!272662 lambda!18225)))))

(declare-fun lt!272777 () Unit!11824)

(assert (=> b!636974 (= lt!272777 (lemmaForallSubseq!13 lt!272767 lt!272775 lambda!18290))))

(assert (=> b!636974 (forall!1721 lt!272767 lambda!18290)))

(declare-fun lt!272787 () Unit!11824)

(assert (=> b!636974 (= lt!272787 lt!272777)))

(declare-fun lt!272790 () Unit!11824)

(declare-fun lemmaConcatPreservesForall!37 (List!6817 List!6817 Int) Unit!11824)

(assert (=> b!636974 (= lt!272790 (lemmaConcatPreservesForall!37 (list!2875 (sortObjectsByID!0 lt!272764)) (list!2875 lt!272795) lambda!18290))))

(declare-fun lt!272770 () Unit!11824)

(declare-fun ++!1821 (List!6817 List!6817) List!6817)

(assert (=> b!636974 (= lt!272770 (lemmaConcatPreservesForall!37 (++!1821 (list!2875 (sortObjectsByID!0 lt!272764)) (list!2875 lt!272795)) (list!2875 (sortObjectsByID!0 lt!272781)) lambda!18290))))

(declare-fun lt!272785 () BalanceConc!4588)

(assert (=> d!222095 (forall!1720 lt!272785 lambda!18291)))

(assert (=> d!222095 (= lt!272785 e!388059)))

(declare-fun c!116689 () Bool)

(assert (=> d!222095 (= c!116689 (<= (size!5346 (map!1467 lt!272662 lambda!18225)) 1))))

(assert (=> d!222095 (= (sortObjectsByID!0 (map!1467 lt!272662 lambda!18225)) lt!272785)))

(declare-fun b!636967 () Bool)

(declare-fun Unit!11830 () Unit!11824)

(assert (=> b!636967 (= e!388058 Unit!11830)))

(declare-fun b!636975 () Bool)

(assert (=> b!636975 (= e!388055 (< (size!5345 (filter!123 lt!272762 lambda!18287)) (size!5345 lt!272762)))))

(declare-fun b!636976 () Bool)

(declare-fun Unit!11831 () Unit!11824)

(assert (=> b!636976 (= e!388053 Unit!11831)))

(assert (= (and d!222095 c!116689) b!636966))

(assert (= (and d!222095 (not c!116689)) b!636974))

(assert (= (and b!636974 c!116691) b!636973))

(assert (= (and b!636974 (not c!116691)) b!636967))

(assert (= (and b!636974 c!116690) b!636970))

(assert (= (and b!636974 (not c!116690)) b!636969))

(assert (= (and b!636974 (not res!276591)) b!636975))

(assert (= (and b!636974 c!116688) b!636965))

(assert (= (and b!636974 (not c!116688)) b!636976))

(assert (= (and b!636974 c!116687) b!636971))

(assert (= (and b!636974 (not c!116687)) b!636972))

(assert (= (and b!636974 (not res!276592)) b!636968))

(declare-fun m!907811 () Bool)

(assert (=> b!636973 m!907811))

(assert (=> b!636973 m!907811))

(declare-fun m!907813 () Bool)

(assert (=> b!636973 m!907813))

(declare-fun m!907815 () Bool)

(assert (=> b!636968 m!907815))

(assert (=> b!636968 m!907815))

(declare-fun m!907817 () Bool)

(assert (=> b!636968 m!907817))

(declare-fun m!907819 () Bool)

(assert (=> b!636968 m!907819))

(declare-fun m!907821 () Bool)

(assert (=> d!222095 m!907821))

(assert (=> d!222095 m!907725))

(declare-fun m!907823 () Bool)

(assert (=> d!222095 m!907823))

(assert (=> b!636970 m!907725))

(declare-fun m!907825 () Bool)

(assert (=> b!636970 m!907825))

(assert (=> b!636970 m!907825))

(declare-fun m!907827 () Bool)

(assert (=> b!636970 m!907827))

(assert (=> b!636971 m!907725))

(assert (=> b!636971 m!907825))

(assert (=> b!636971 m!907825))

(declare-fun m!907829 () Bool)

(assert (=> b!636971 m!907829))

(declare-fun m!907831 () Bool)

(assert (=> b!636975 m!907831))

(assert (=> b!636975 m!907831))

(declare-fun m!907833 () Bool)

(assert (=> b!636975 m!907833))

(declare-fun m!907835 () Bool)

(assert (=> b!636975 m!907835))

(declare-fun m!907837 () Bool)

(assert (=> b!636974 m!907837))

(assert (=> b!636974 m!907725))

(declare-fun m!907839 () Bool)

(assert (=> b!636974 m!907839))

(declare-fun m!907841 () Bool)

(assert (=> b!636974 m!907841))

(declare-fun m!907843 () Bool)

(assert (=> b!636974 m!907843))

(assert (=> b!636974 m!907725))

(declare-fun m!907845 () Bool)

(assert (=> b!636974 m!907845))

(declare-fun m!907847 () Bool)

(assert (=> b!636974 m!907847))

(declare-fun m!907849 () Bool)

(assert (=> b!636974 m!907849))

(declare-fun m!907851 () Bool)

(assert (=> b!636974 m!907851))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907825))

(declare-fun m!907853 () Bool)

(assert (=> b!636974 m!907853))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907839))

(declare-fun m!907855 () Bool)

(assert (=> b!636974 m!907855))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907823))

(assert (=> b!636974 m!907825))

(declare-fun m!907857 () Bool)

(assert (=> b!636974 m!907857))

(declare-fun m!907859 () Bool)

(assert (=> b!636974 m!907859))

(assert (=> b!636974 m!907825))

(declare-fun m!907861 () Bool)

(assert (=> b!636974 m!907861))

(declare-fun m!907863 () Bool)

(assert (=> b!636974 m!907863))

(declare-fun m!907865 () Bool)

(assert (=> b!636974 m!907865))

(declare-fun m!907867 () Bool)

(assert (=> b!636974 m!907867))

(declare-fun m!907869 () Bool)

(assert (=> b!636974 m!907869))

(declare-fun m!907871 () Bool)

(assert (=> b!636974 m!907871))

(declare-fun m!907873 () Bool)

(assert (=> b!636974 m!907873))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907867))

(declare-fun m!907875 () Bool)

(assert (=> b!636974 m!907875))

(assert (=> b!636974 m!907847))

(declare-fun m!907877 () Bool)

(assert (=> b!636974 m!907877))

(assert (=> b!636974 m!907863))

(assert (=> b!636974 m!907875))

(declare-fun m!907879 () Bool)

(assert (=> b!636974 m!907879))

(assert (=> b!636974 m!907865))

(assert (=> b!636974 m!907855))

(declare-fun m!907881 () Bool)

(assert (=> b!636974 m!907881))

(assert (=> b!636974 m!907865))

(assert (=> b!636974 m!907855))

(declare-fun m!907883 () Bool)

(assert (=> b!636974 m!907883))

(assert (=> b!636974 m!907845))

(declare-fun m!907885 () Bool)

(assert (=> b!636974 m!907885))

(assert (=> b!636974 m!907725))

(declare-fun m!907887 () Bool)

(assert (=> b!636974 m!907887))

(assert (=> b!636974 m!907863))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907845))

(assert (=> b!636974 m!907725))

(assert (=> b!636974 m!907867))

(assert (=> b!636974 m!907825))

(declare-fun m!907889 () Bool)

(assert (=> b!636974 m!907889))

(assert (=> b!636974 m!907839))

(declare-fun m!907891 () Bool)

(assert (=> b!636974 m!907891))

(declare-fun m!907893 () Bool)

(assert (=> b!636974 m!907893))

(declare-fun m!907895 () Bool)

(assert (=> b!636974 m!907895))

(assert (=> b!636974 m!907847))

(assert (=> b!636974 m!907881))

(assert (=> b!636974 m!907849))

(declare-fun m!907897 () Bool)

(assert (=> b!636974 m!907897))

(declare-fun m!907899 () Bool)

(assert (=> b!636974 m!907899))

(assert (=> b!636974 m!907725))

(declare-fun m!907901 () Bool)

(assert (=> b!636974 m!907901))

(assert (=> b!636974 m!907725))

(declare-fun m!907903 () Bool)

(assert (=> b!636974 m!907903))

(declare-fun m!907905 () Bool)

(assert (=> b!636965 m!907905))

(assert (=> b!636965 m!907905))

(declare-fun m!907907 () Bool)

(assert (=> b!636965 m!907907))

(assert (=> b!636864 d!222095))

(declare-fun d!222097 () Bool)

(declare-fun e!388072 () Bool)

(assert (=> d!222097 e!388072))

(declare-fun res!276595 () Bool)

(assert (=> d!222097 (=> (not res!276595) (not e!388072))))

(declare-fun lt!272798 () BalanceConc!4588)

(declare-fun map!1468 (List!6818 Int) List!6817)

(assert (=> d!222097 (= res!276595 (= (list!2875 lt!272798) (map!1468 (list!2876 lt!272662) lambda!18225)))))

(declare-fun map!1469 (Conc!2289 Int) Conc!2288)

(assert (=> d!222097 (= lt!272798 (BalanceConc!4589 (map!1469 (c!116657 lt!272662) lambda!18225)))))

(assert (=> d!222097 (= (map!1467 lt!272662 lambda!18225) lt!272798)))

(declare-fun b!636991 () Bool)

(declare-fun isBalanced!600 (Conc!2288) Bool)

(assert (=> b!636991 (= e!388072 (isBalanced!600 (map!1469 (c!116657 lt!272662) lambda!18225)))))

(assert (= (and d!222097 res!276595) b!636991))

(declare-fun m!907909 () Bool)

(assert (=> d!222097 m!907909))

(assert (=> d!222097 m!907731))

(assert (=> d!222097 m!907731))

(declare-fun m!907911 () Bool)

(assert (=> d!222097 m!907911))

(declare-fun m!907913 () Bool)

(assert (=> d!222097 m!907913))

(assert (=> b!636991 m!907913))

(assert (=> b!636991 m!907913))

(declare-fun m!907915 () Bool)

(assert (=> b!636991 m!907915))

(assert (=> b!636864 d!222097))

(declare-fun bs!75650 () Bool)

(declare-fun d!222099 () Bool)

(assert (= bs!75650 (and d!222099 b!636974)))

(declare-fun lambda!18296 () Int)

(assert (=> bs!75650 (not (= lambda!18296 lambda!18288))))

(assert (=> bs!75650 (not (= lambda!18296 lambda!18289))))

(assert (=> bs!75650 (not (= lambda!18296 lambda!18287))))

(declare-fun bs!75651 () Bool)

(assert (= bs!75651 (and d!222099 d!222095)))

(assert (=> bs!75651 (= lambda!18296 lambda!18291)))

(assert (=> bs!75650 (= lambda!18296 lambda!18290)))

(declare-fun bs!75652 () Bool)

(assert (= bs!75652 (and d!222099 b!636864)))

(assert (=> bs!75652 (= lambda!18296 lambda!18226)))

(declare-fun lambda!18297 () Int)

(assert (=> d!222099 (not (= lambda!18297 lambda!18296))))

(assert (=> bs!75650 (not (= lambda!18297 lambda!18288))))

(assert (=> bs!75650 (not (= lambda!18297 lambda!18289))))

(assert (=> bs!75650 (not (= lambda!18297 lambda!18287))))

(assert (=> bs!75651 (not (= lambda!18297 lambda!18291))))

(assert (=> bs!75650 (not (= lambda!18297 lambda!18290))))

(assert (=> bs!75652 (not (= lambda!18297 lambda!18226))))

(assert (=> d!222099 (forall!1721 lt!272643 lambda!18297)))

(declare-fun lt!272803 () Unit!11824)

(declare-fun e!388075 () Unit!11824)

(assert (=> d!222099 (= lt!272803 e!388075)))

(declare-fun c!116695 () Bool)

(assert (=> d!222099 (= c!116695 ((_ is Nil!6803) lt!272643))))

(assert (=> d!222099 (forall!1721 lt!272643 lambda!18296)))

(assert (=> d!222099 (= (lemmaRemoveIdsPreservesRules!0 lt!272643) lt!272803)))

(declare-fun b!636996 () Bool)

(declare-fun Unit!11832 () Unit!11824)

(assert (=> b!636996 (= e!388075 Unit!11832)))

(declare-fun b!636997 () Bool)

(declare-fun Unit!11833 () Unit!11824)

(assert (=> b!636997 (= e!388075 Unit!11833)))

(declare-fun lt!272804 () Unit!11824)

(assert (=> b!636997 (= lt!272804 (lemmaRemoveIdsPreservesRules!0 (t!84399 lt!272643)))))

(assert (= (and d!222099 c!116695) b!636996))

(assert (= (and d!222099 (not c!116695)) b!636997))

(declare-fun m!907917 () Bool)

(assert (=> d!222099 m!907917))

(declare-fun m!907919 () Bool)

(assert (=> d!222099 m!907919))

(declare-fun m!907921 () Bool)

(assert (=> b!636997 m!907921))

(assert (=> b!636864 d!222099))

(declare-fun d!222101 () Bool)

(declare-fun e!388078 () Bool)

(assert (=> d!222101 e!388078))

(declare-fun res!276598 () Bool)

(assert (=> d!222101 (=> (not res!276598) (not e!388078))))

(declare-fun lt!272807 () BalanceConc!4590)

(declare-fun map!1470 (List!6817 Int) List!6818)

(assert (=> d!222101 (= res!276598 (= (list!2876 lt!272807) (map!1470 (list!2875 lt!272634) lambda!18227)))))

(declare-fun map!1471 (Conc!2288 Int) Conc!2289)

(assert (=> d!222101 (= lt!272807 (BalanceConc!4591 (map!1471 (c!116656 lt!272634) lambda!18227)))))

(assert (=> d!222101 (= (map!1466 lt!272634 lambda!18227) lt!272807)))

(declare-fun b!637000 () Bool)

(declare-fun isBalanced!601 (Conc!2289) Bool)

(assert (=> b!637000 (= e!388078 (isBalanced!601 (map!1471 (c!116656 lt!272634) lambda!18227)))))

(assert (= (and d!222101 res!276598) b!637000))

(declare-fun m!907923 () Bool)

(assert (=> d!222101 m!907923))

(assert (=> d!222101 m!907733))

(assert (=> d!222101 m!907733))

(declare-fun m!907925 () Bool)

(assert (=> d!222101 m!907925))

(declare-fun m!907927 () Bool)

(assert (=> d!222101 m!907927))

(assert (=> b!637000 m!907927))

(assert (=> b!637000 m!907927))

(declare-fun m!907929 () Bool)

(assert (=> b!637000 m!907929))

(assert (=> b!636864 d!222101))

(declare-fun d!222103 () Bool)

(declare-fun lt!272810 () Bool)

(assert (=> d!222103 (= lt!272810 (forall!1718 (list!2876 (map!1466 lt!272634 lambda!18227)) lambda!18228))))

(declare-fun forall!1722 (Conc!2289 Int) Bool)

(assert (=> d!222103 (= lt!272810 (forall!1722 (c!116657 (map!1466 lt!272634 lambda!18227)) lambda!18228))))

(assert (=> d!222103 (= (forall!1717 (map!1466 lt!272634 lambda!18227) lambda!18228) lt!272810)))

(declare-fun bs!75653 () Bool)

(assert (= bs!75653 d!222103))

(assert (=> bs!75653 m!907673))

(declare-fun m!907931 () Bool)

(assert (=> bs!75653 m!907931))

(assert (=> bs!75653 m!907931))

(declare-fun m!907933 () Bool)

(assert (=> bs!75653 m!907933))

(declare-fun m!907935 () Bool)

(assert (=> bs!75653 m!907935))

(assert (=> b!636864 d!222103))

(declare-fun d!222105 () Bool)

(assert (=> d!222105 (= (isEmpty!4673 lt!272637) (not ((_ is Some!1652) lt!272637)))))

(assert (=> b!636864 d!222105))

(declare-fun bs!75654 () Bool)

(declare-fun d!222107 () Bool)

(assert (= bs!75654 (and d!222107 d!222099)))

(declare-fun lambda!18300 () Int)

(assert (=> bs!75654 (not (= lambda!18300 lambda!18296))))

(declare-fun bs!75655 () Bool)

(assert (= bs!75655 (and d!222107 b!636974)))

(assert (=> bs!75655 (not (= lambda!18300 lambda!18288))))

(assert (=> bs!75655 (not (= lambda!18300 lambda!18289))))

(declare-fun bs!75656 () Bool)

(assert (= bs!75656 (and d!222107 d!222095)))

(assert (=> bs!75656 (not (= lambda!18300 lambda!18291))))

(assert (=> bs!75655 (not (= lambda!18300 lambda!18290))))

(declare-fun bs!75657 () Bool)

(assert (= bs!75657 (and d!222107 b!636864)))

(assert (=> bs!75657 (not (= lambda!18300 lambda!18226))))

(assert (=> bs!75655 (not (= lambda!18300 lambda!18287))))

(assert (=> bs!75654 (not (= lambda!18300 lambda!18297))))

(assert (=> d!222107 true))

(declare-fun order!5129 () Int)

(declare-fun order!5131 () Int)

(declare-fun dynLambda!3720 (Int Int) Int)

(declare-fun dynLambda!3721 (Int Int) Int)

(assert (=> d!222107 (< (dynLambda!3720 order!5129 lambda!18227) (dynLambda!3721 order!5131 lambda!18300))))

(assert (=> d!222107 true))

(declare-fun order!5133 () Int)

(declare-fun dynLambda!3722 (Int Int) Int)

(assert (=> d!222107 (< (dynLambda!3722 order!5133 lambda!18228) (dynLambda!3721 order!5131 lambda!18300))))

(assert (=> d!222107 (forall!1718 (map!1470 lt!272643 lambda!18227) lambda!18228)))

(declare-fun lt!272813 () Unit!11824)

(declare-fun choose!4612 (List!6817 Int Int) Unit!11824)

(assert (=> d!222107 (= lt!272813 (choose!4612 lt!272643 lambda!18227 lambda!18228))))

(assert (=> d!222107 (forall!1721 lt!272643 lambda!18300)))

(assert (=> d!222107 (= (mapPred!43 lt!272643 lambda!18227 lambda!18228) lt!272813)))

(declare-fun bs!75658 () Bool)

(assert (= bs!75658 d!222107))

(declare-fun m!907937 () Bool)

(assert (=> bs!75658 m!907937))

(assert (=> bs!75658 m!907937))

(declare-fun m!907939 () Bool)

(assert (=> bs!75658 m!907939))

(declare-fun m!907941 () Bool)

(assert (=> bs!75658 m!907941))

(declare-fun m!907943 () Bool)

(assert (=> bs!75658 m!907943))

(assert (=> b!636864 d!222107))

(declare-fun bs!75659 () Bool)

(declare-fun d!222109 () Bool)

(assert (= bs!75659 (and d!222109 b!636864)))

(declare-fun lambda!18303 () Int)

(assert (=> bs!75659 (not (= lambda!18303 lambda!18228))))

(declare-fun bs!75660 () Bool)

(assert (= bs!75660 (and d!222109 d!222091)))

(assert (=> bs!75660 (not (= lambda!18303 lambda!18233))))

(assert (=> bs!75660 (not (= lambda!18303 lambda!18234))))

(assert (=> d!222109 true))

(declare-fun order!5135 () Int)

(declare-fun dynLambda!3723 (Int Int) Int)

(assert (=> d!222109 (< (dynLambda!3723 order!5135 lambda!18225) (dynLambda!3722 order!5133 lambda!18303))))

(assert (=> d!222109 true))

(assert (=> d!222109 (< (dynLambda!3721 order!5131 lambda!18226) (dynLambda!3722 order!5133 lambda!18303))))

(assert (=> d!222109 (forall!1721 (map!1468 lt!272646 lambda!18225) lambda!18226)))

(declare-fun lt!272816 () Unit!11824)

(declare-fun choose!4613 (List!6818 Int Int) Unit!11824)

(assert (=> d!222109 (= lt!272816 (choose!4613 lt!272646 lambda!18225 lambda!18226))))

(assert (=> d!222109 (forall!1718 lt!272646 lambda!18303)))

(assert (=> d!222109 (= (mapPred!44 lt!272646 lambda!18225 lambda!18226) lt!272816)))

(declare-fun bs!75661 () Bool)

(assert (= bs!75661 d!222109))

(declare-fun m!907945 () Bool)

(assert (=> bs!75661 m!907945))

(assert (=> bs!75661 m!907945))

(declare-fun m!907947 () Bool)

(assert (=> bs!75661 m!907947))

(declare-fun m!907949 () Bool)

(assert (=> bs!75661 m!907949))

(declare-fun m!907951 () Bool)

(assert (=> bs!75661 m!907951))

(assert (=> b!636864 d!222109))

(declare-fun d!222111 () Bool)

(declare-fun list!2879 (Conc!2288) List!6817)

(assert (=> d!222111 (= (list!2875 lt!272634) (list!2879 (c!116656 lt!272634)))))

(declare-fun bs!75662 () Bool)

(assert (= bs!75662 d!222111))

(declare-fun m!907953 () Bool)

(assert (=> bs!75662 m!907953))

(assert (=> b!636864 d!222111))

(declare-fun d!222113 () Bool)

(declare-fun e!388084 () Bool)

(assert (=> d!222113 e!388084))

(declare-fun res!276601 () Bool)

(assert (=> d!222113 (=> res!276601 e!388084)))

(declare-fun lt!272825 () tuple3!528)

(assert (=> d!222113 (= res!276601 (isEmpty!4673 (_1!4001 lt!272825)))))

(declare-fun e!388083 () Option!1653)

(declare-fun lt!272823 () tuple3!532)

(assert (=> d!222113 (= lt!272825 (tuple3!529 e!388083 (_2!4004 lt!272823) (_3!317 lt!272823)))))

(declare-fun c!116699 () Bool)

(assert (=> d!222113 (= c!116699 (not (_1!4004 lt!272823)))))

(declare-fun lt!272824 () BalanceConc!4586)

(assert (=> d!222113 (= lt!272823 (rulesProduceEachTokenIndividuallyMem!4 Lexer!1248 (rules!109 JsonLexer!183) lt!272824 (_2!4001 lt!272639) (_3!315 lt!272639)))))

(declare-fun lBracketRule!0 (JsonLexer!182) Rule!2540)

(assert (=> d!222113 (= lt!272824 (singletonSeq!430 (Token!2463 (apply!1607 (injection!9 KeywordValueInjection!37) (singletonSeq!431 #x005B)) (lBracketRule!0 JsonLexer!183) 1 (Cons!6799 #x005B Nil!6799))))))

(assert (=> d!222113 (not (isEmpty!4672 (rules!109 JsonLexer!183)))))

(assert (=> d!222113 (= (createLeftBracketSeparator!0 (_2!4001 lt!272639) (_3!315 lt!272639)) lt!272825)))

(declare-fun b!637015 () Bool)

(assert (=> b!637015 (= e!388083 None!1652)))

(declare-fun b!637016 () Bool)

(assert (=> b!637016 (= e!388083 (printableTokensFromTokens!7 (rules!109 JsonLexer!183) lt!272824))))

(declare-fun b!637017 () Bool)

(assert (=> b!637017 (= e!388084 (usesJsonRules!0 (get!2476 (_1!4001 lt!272825))))))

(assert (= (and d!222113 c!116699) b!637015))

(assert (= (and d!222113 (not c!116699)) b!637016))

(assert (= (and d!222113 (not res!276601)) b!637017))

(assert (=> d!222113 m!907757))

(declare-fun m!907955 () Bool)

(assert (=> d!222113 m!907955))

(assert (=> d!222113 m!907757))

(declare-fun m!907957 () Bool)

(assert (=> d!222113 m!907957))

(declare-fun m!907959 () Bool)

(assert (=> d!222113 m!907959))

(assert (=> d!222113 m!907669))

(declare-fun m!907961 () Bool)

(assert (=> d!222113 m!907961))

(assert (=> d!222113 m!907957))

(declare-fun m!907963 () Bool)

(assert (=> d!222113 m!907963))

(assert (=> d!222113 m!907669))

(declare-fun m!907965 () Bool)

(assert (=> d!222113 m!907965))

(assert (=> d!222113 m!907669))

(assert (=> d!222113 m!907769))

(assert (=> b!637016 m!907669))

(assert (=> b!637016 m!907669))

(declare-fun m!907967 () Bool)

(assert (=> b!637016 m!907967))

(declare-fun m!907969 () Bool)

(assert (=> b!637017 m!907969))

(assert (=> b!637017 m!907969))

(declare-fun m!907971 () Bool)

(assert (=> b!637017 m!907971))

(assert (=> b!636864 d!222113))

(assert (=> b!636864 d!222077))

(declare-fun d!222115 () Bool)

(declare-fun e!388089 () Bool)

(assert (=> d!222115 e!388089))

(declare-fun res!276604 () Bool)

(assert (=> d!222115 (=> res!276604 e!388089)))

(declare-fun lt!272833 () tuple3!528)

(assert (=> d!222115 (= res!276604 (isEmpty!4673 (_1!4001 lt!272833)))))

(declare-fun e!388090 () Option!1653)

(declare-fun lt!272832 () tuple3!532)

(assert (=> d!222115 (= lt!272833 (tuple3!529 e!388090 (_2!4004 lt!272832) (_3!317 lt!272832)))))

(declare-fun c!116702 () Bool)

(assert (=> d!222115 (= c!116702 (not (_1!4004 lt!272832)))))

(declare-fun lt!272834 () BalanceConc!4586)

(assert (=> d!222115 (= lt!272832 (rulesProduceEachTokenIndividuallyMem!4 Lexer!1248 (rules!109 JsonLexer!183) lt!272834 cacheUp!351 cacheDown!364))))

(declare-fun ++!1822 (BalanceConc!4586 BalanceConc!4586) BalanceConc!4586)

(declare-fun commaRule!0 (JsonLexer!182) Rule!2540)

(declare-datatypes ((WhitespaceValueInjection!32 0))(
  ( (WhitespaceValueInjection!33) )
))
(declare-fun injection!7 (WhitespaceValueInjection!32) TokenValueInjection!2560)

(declare-fun whitespaceRule!0 (JsonLexer!182) Rule!2540)

(assert (=> d!222115 (= lt!272834 (++!1822 (singletonSeq!430 (Token!2463 (apply!1607 (injection!9 KeywordValueInjection!37) (singletonSeq!431 #x002C)) (commaRule!0 JsonLexer!183) 1 (Cons!6799 #x002C Nil!6799))) (singletonSeq!430 (Token!2463 (apply!1607 (injection!7 WhitespaceValueInjection!33) (singletonSeq!431 #x000A)) (whitespaceRule!0 JsonLexer!183) 1 (Cons!6799 #x000A Nil!6799)))))))

(assert (=> d!222115 (not (isEmpty!4672 (rules!109 JsonLexer!183)))))

(assert (=> d!222115 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!272833)))

(declare-fun b!637024 () Bool)

(assert (=> b!637024 (= e!388090 None!1652)))

(declare-fun b!637025 () Bool)

(assert (=> b!637025 (= e!388090 (printableTokensFromTokens!7 (rules!109 JsonLexer!183) lt!272834))))

(declare-fun b!637026 () Bool)

(assert (=> b!637026 (= e!388089 (usesJsonRules!0 (get!2476 (_1!4001 lt!272833))))))

(assert (= (and d!222115 c!116702) b!637024))

(assert (= (and d!222115 (not c!116702)) b!637025))

(assert (= (and d!222115 (not res!276604)) b!637026))

(assert (=> d!222115 m!907757))

(declare-fun m!907973 () Bool)

(assert (=> d!222115 m!907973))

(declare-fun m!907975 () Bool)

(assert (=> d!222115 m!907975))

(declare-fun m!907977 () Bool)

(assert (=> d!222115 m!907977))

(declare-fun m!907979 () Bool)

(assert (=> d!222115 m!907979))

(assert (=> d!222115 m!907973))

(declare-fun m!907981 () Bool)

(assert (=> d!222115 m!907981))

(declare-fun m!907983 () Bool)

(assert (=> d!222115 m!907983))

(declare-fun m!907985 () Bool)

(assert (=> d!222115 m!907985))

(assert (=> d!222115 m!907979))

(declare-fun m!907987 () Bool)

(assert (=> d!222115 m!907987))

(assert (=> d!222115 m!907669))

(assert (=> d!222115 m!907769))

(assert (=> d!222115 m!907975))

(assert (=> d!222115 m!907669))

(declare-fun m!907989 () Bool)

(assert (=> d!222115 m!907989))

(assert (=> d!222115 m!907985))

(assert (=> d!222115 m!907757))

(assert (=> d!222115 m!907983))

(declare-fun m!907991 () Bool)

(assert (=> d!222115 m!907991))

(declare-fun m!907993 () Bool)

(assert (=> d!222115 m!907993))

(assert (=> d!222115 m!907669))

(declare-fun m!907995 () Bool)

(assert (=> d!222115 m!907995))

(assert (=> b!637025 m!907669))

(assert (=> b!637025 m!907669))

(declare-fun m!907997 () Bool)

(assert (=> b!637025 m!907997))

(declare-fun m!907999 () Bool)

(assert (=> b!637026 m!907999))

(assert (=> b!637026 m!907999))

(declare-fun m!908001 () Bool)

(assert (=> b!637026 m!908001))

(assert (=> b!636864 d!222115))

(declare-fun bs!75663 () Bool)

(declare-fun b!637037 () Bool)

(assert (= bs!75663 (and b!637037 b!636864)))

(declare-fun lambda!18308 () Int)

(assert (=> bs!75663 (= lambda!18308 lambda!18228)))

(declare-fun bs!75664 () Bool)

(assert (= bs!75664 (and b!637037 d!222091)))

(assert (=> bs!75664 (= lambda!18308 lambda!18233)))

(assert (=> bs!75664 (not (= lambda!18308 lambda!18234))))

(declare-fun bs!75665 () Bool)

(assert (= bs!75665 (and b!637037 d!222109)))

(assert (=> bs!75665 (not (= lambda!18308 lambda!18303))))

(declare-fun bs!75666 () Bool)

(declare-fun d!222117 () Bool)

(assert (= bs!75666 (and d!222117 d!222109)))

(declare-fun lambda!18309 () Int)

(assert (=> bs!75666 (not (= lambda!18309 lambda!18303))))

(declare-fun bs!75667 () Bool)

(assert (= bs!75667 (and d!222117 d!222091)))

(assert (=> bs!75667 (not (= lambda!18309 lambda!18234))))

(declare-fun bs!75668 () Bool)

(assert (= bs!75668 (and d!222117 b!636864)))

(assert (=> bs!75668 (= lambda!18309 lambda!18228)))

(assert (=> bs!75667 (= lambda!18309 lambda!18233)))

(declare-fun bs!75669 () Bool)

(assert (= bs!75669 (and d!222117 b!637037)))

(assert (=> bs!75669 (= lambda!18309 lambda!18308)))

(declare-fun c!116707 () Bool)

(declare-fun call!41627 () PrintableTokens!120)

(declare-fun lt!272848 () Int)

(declare-fun bm!41622 () Bool)

(declare-fun lt!272847 () Int)

(declare-fun slice!33 (PrintableTokens!120 Int Int) PrintableTokens!120)

(assert (=> bm!41622 (= call!41627 (slice!33 printableTokens!2 (ite c!116707 lt!272847 lt!272848) (ite c!116707 (+ lt!272848 1) (+ lt!272847 1))))))

(declare-fun b!637035 () Bool)

(declare-fun e!388096 () PrintableTokens!120)

(assert (=> b!637035 (= e!388096 call!41627)))

(declare-fun b!637036 () Bool)

(assert (=> b!637036 (= e!388096 call!41627)))

(declare-fun lt!272849 () BalanceConc!4590)

(assert (=> d!222117 (forall!1717 lt!272849 lambda!18309)))

(declare-fun e!388095 () BalanceConc!4590)

(assert (=> d!222117 (= lt!272849 e!388095)))

(declare-fun c!116708 () Bool)

(declare-fun size!5347 (BalanceConc!4592) Int)

(assert (=> d!222117 (= c!116708 (>= (size!5347 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290))) 2))))

(assert (=> d!222117 (= (size!5341 printableTokens!2) lt!272656)))

(assert (=> d!222117 (= (slicesMulti!0 printableTokens!2 lt!272656 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)) (BalanceConc!4591 Empty!2289)) lt!272849)))

(declare-fun lt!272846 () PrintableTokens!120)

(declare-fun tail!892 (BalanceConc!4592) BalanceConc!4592)

(declare-fun append!206 (BalanceConc!4590 PrintableTokens!120) BalanceConc!4590)

(assert (=> b!637037 (= e!388095 (slicesMulti!0 printableTokens!2 lt!272656 (tail!892 (tail!892 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)))) (append!206 (BalanceConc!4591 Empty!2289) lt!272846)))))

(declare-fun apply!1610 (BalanceConc!4592 Int) Int)

(assert (=> b!637037 (= lt!272847 (apply!1610 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)) 0))))

(assert (=> b!637037 (= lt!272848 (apply!1610 (indicesOfOpenBraces!0 (tokens!1197 printableTokens!2) lt!272656 0 (BalanceConc!4593 Empty!2290)) 1))))

(assert (=> b!637037 (= c!116707 (<= lt!272847 lt!272848))))

(assert (=> b!637037 (= lt!272846 e!388096)))

(declare-fun lt!272845 () Unit!11824)

(declare-fun lemmaConcatPreservesForall!38 (List!6818 List!6818 Int) Unit!11824)

(assert (=> b!637037 (= lt!272845 (lemmaConcatPreservesForall!38 (list!2876 (BalanceConc!4591 Empty!2289)) (Cons!6804 lt!272846 Nil!6804) lambda!18308))))

(declare-fun b!637038 () Bool)

(assert (=> b!637038 (= e!388095 (BalanceConc!4591 Empty!2289))))

(assert (= (and d!222117 c!116708) b!637037))

(assert (= (and d!222117 (not c!116708)) b!637038))

(assert (= (and b!637037 c!116707) b!637036))

(assert (= (and b!637037 (not c!116707)) b!637035))

(assert (= (or b!637036 b!637035) bm!41622))

(declare-fun m!908003 () Bool)

(assert (=> bm!41622 m!908003))

(declare-fun m!908005 () Bool)

(assert (=> d!222117 m!908005))

(assert (=> d!222117 m!907713))

(declare-fun m!908007 () Bool)

(assert (=> d!222117 m!908007))

(assert (=> d!222117 m!907679))

(assert (=> b!637037 m!907713))

(declare-fun m!908009 () Bool)

(assert (=> b!637037 m!908009))

(declare-fun m!908011 () Bool)

(assert (=> b!637037 m!908011))

(declare-fun m!908013 () Bool)

(assert (=> b!637037 m!908013))

(assert (=> b!637037 m!907713))

(declare-fun m!908015 () Bool)

(assert (=> b!637037 m!908015))

(declare-fun m!908017 () Bool)

(assert (=> b!637037 m!908017))

(assert (=> b!637037 m!908017))

(declare-fun m!908019 () Bool)

(assert (=> b!637037 m!908019))

(assert (=> b!637037 m!907713))

(assert (=> b!637037 m!908011))

(assert (=> b!637037 m!908013))

(declare-fun m!908021 () Bool)

(assert (=> b!637037 m!908021))

(declare-fun m!908023 () Bool)

(assert (=> b!637037 m!908023))

(assert (=> b!637037 m!908021))

(assert (=> b!636864 d!222117))

(declare-fun d!222119 () Bool)

(assert (=> d!222119 (= (isEmpty!4672 lt!272659) ((_ is Nil!6800) lt!272659))))

(assert (=> b!636854 d!222119))

(declare-fun d!222121 () Bool)

(declare-fun integerLiteralRule!0 (JsonLexer!182) Rule!2540)

(declare-fun floatLiteralRule!0 (JsonLexer!182) Rule!2540)

(declare-fun trueRule!0 (JsonLexer!182) Rule!2540)

(declare-fun falseRule!0 (JsonLexer!182) Rule!2540)

(declare-fun nullRule!0 (JsonLexer!182) Rule!2540)

(declare-fun jsonstringRule!0 (JsonLexer!182) Rule!2540)

(declare-fun lBraceRule!0 (JsonLexer!182) Rule!2540)

(declare-fun rBraceRule!0 (JsonLexer!182) Rule!2540)

(declare-fun colonRule!0 (JsonLexer!182) Rule!2540)

(declare-fun eofRule!0 (JsonLexer!182) Rule!2540)

(assert (=> d!222121 (= (rules!109 JsonLexer!183) (Cons!6800 (whitespaceRule!0 JsonLexer!183) (Cons!6800 (integerLiteralRule!0 JsonLexer!183) (Cons!6800 (floatLiteralRule!0 JsonLexer!183) (Cons!6800 (trueRule!0 JsonLexer!183) (Cons!6800 (falseRule!0 JsonLexer!183) (Cons!6800 (nullRule!0 JsonLexer!183) (Cons!6800 (jsonstringRule!0 JsonLexer!183) (Cons!6800 (lBraceRule!0 JsonLexer!183) (Cons!6800 (rBraceRule!0 JsonLexer!183) (Cons!6800 (lBracketRule!0 JsonLexer!183) (Cons!6800 (rBracketRule!0 JsonLexer!183) (Cons!6800 (colonRule!0 JsonLexer!183) (Cons!6800 (commaRule!0 JsonLexer!183) (Cons!6800 (eofRule!0 JsonLexer!183) Nil!6800)))))))))))))))))

(declare-fun bs!75670 () Bool)

(assert (= bs!75670 d!222121))

(assert (=> bs!75670 m!907955))

(assert (=> bs!75670 m!907993))

(declare-fun m!908025 () Bool)

(assert (=> bs!75670 m!908025))

(declare-fun m!908027 () Bool)

(assert (=> bs!75670 m!908027))

(declare-fun m!908029 () Bool)

(assert (=> bs!75670 m!908029))

(declare-fun m!908031 () Bool)

(assert (=> bs!75670 m!908031))

(declare-fun m!908033 () Bool)

(assert (=> bs!75670 m!908033))

(declare-fun m!908035 () Bool)

(assert (=> bs!75670 m!908035))

(assert (=> bs!75670 m!907771))

(assert (=> bs!75670 m!907989))

(declare-fun m!908037 () Bool)

(assert (=> bs!75670 m!908037))

(declare-fun m!908039 () Bool)

(assert (=> bs!75670 m!908039))

(declare-fun m!908041 () Bool)

(assert (=> bs!75670 m!908041))

(declare-fun m!908043 () Bool)

(assert (=> bs!75670 m!908043))

(assert (=> b!636854 d!222121))

(declare-fun d!222123 () Bool)

(declare-fun list!2880 (Conc!2287) List!6815)

(assert (=> d!222123 (= (list!2874 (tokens!1197 lt!272636)) (list!2880 (c!116655 (tokens!1197 lt!272636))))))

(declare-fun bs!75671 () Bool)

(assert (= bs!75671 d!222123))

(declare-fun m!908045 () Bool)

(assert (=> bs!75671 m!908045))

(assert (=> b!636846 d!222123))

(declare-fun d!222125 () Bool)

(assert (=> d!222125 (= (get!2476 lt!272637) (v!16878 lt!272637))))

(assert (=> b!636846 d!222125))

(declare-fun d!222127 () Bool)

(declare-fun e!388099 () Bool)

(assert (=> d!222127 e!388099))

(declare-fun res!276607 () Bool)

(assert (=> d!222127 (=> (not res!276607) (not e!388099))))

(declare-fun lt!272854 () BalanceConc!4584)

(assert (=> d!222127 (= res!276607 (= (list!2874 (_1!3998 (lex!578 Lexer!1248 (rules!8191 lt!272636) lt!272854))) (list!2874 (tokens!1197 lt!272636))))))

(declare-fun print!501 (LexerInterface!1250 BalanceConc!4586) BalanceConc!4584)

(assert (=> d!222127 (= lt!272854 (print!501 Lexer!1248 (tokens!1197 lt!272636)))))

(declare-fun lt!272855 () Unit!11824)

(declare-fun theoremInvertabilityWhenTokenListSeparable!3 (LexerInterface!1250 List!6814 List!6815) Unit!11824)

(assert (=> d!222127 (= lt!272855 (theoremInvertabilityWhenTokenListSeparable!3 Lexer!1248 (rules!8191 lt!272636) (list!2874 (tokens!1197 lt!272636))))))

(assert (=> d!222127 (= (print!500 lt!272636) lt!272854)))

(declare-fun b!637041 () Bool)

(declare-fun isEmpty!4675 (List!6813) Bool)

(declare-fun list!2881 (BalanceConc!4584) List!6813)

(assert (=> b!637041 (= e!388099 (isEmpty!4675 (list!2881 (_2!3998 (lex!578 Lexer!1248 (rules!8191 lt!272636) lt!272854)))))))

(assert (= (and d!222127 res!276607) b!637041))

(assert (=> d!222127 m!907693))

(declare-fun m!908047 () Bool)

(assert (=> d!222127 m!908047))

(declare-fun m!908049 () Bool)

(assert (=> d!222127 m!908049))

(assert (=> d!222127 m!907693))

(declare-fun m!908051 () Bool)

(assert (=> d!222127 m!908051))

(declare-fun m!908053 () Bool)

(assert (=> d!222127 m!908053))

(assert (=> b!637041 m!908049))

(declare-fun m!908055 () Bool)

(assert (=> b!637041 m!908055))

(assert (=> b!637041 m!908055))

(declare-fun m!908057 () Bool)

(assert (=> b!637041 m!908057))

(assert (=> b!636846 d!222127))

(declare-fun d!222129 () Bool)

(assert (=> d!222129 (= (list!2874 (_1!3998 (lex!578 Lexer!1248 lt!272659 (print!500 lt!272636)))) (list!2880 (c!116655 (_1!3998 (lex!578 Lexer!1248 lt!272659 (print!500 lt!272636))))))))

(declare-fun bs!75672 () Bool)

(assert (= bs!75672 d!222129))

(declare-fun m!908059 () Bool)

(assert (=> bs!75672 m!908059))

(assert (=> b!636846 d!222129))

(declare-fun d!222131 () Bool)

(declare-fun e!388108 () Bool)

(assert (=> d!222131 e!388108))

(declare-fun res!276615 () Bool)

(assert (=> d!222131 (=> (not res!276615) (not e!388108))))

(declare-fun e!388106 () Bool)

(assert (=> d!222131 (= res!276615 e!388106)))

(declare-fun c!116712 () Bool)

(declare-fun lt!272858 () tuple2!7368)

(assert (=> d!222131 (= c!116712 (> (size!5344 (_1!3998 lt!272858)) 0))))

(declare-fun lexTailRecV2!276 (LexerInterface!1250 List!6814 BalanceConc!4584 BalanceConc!4584 BalanceConc!4584 BalanceConc!4586) tuple2!7368)

(assert (=> d!222131 (= lt!272858 (lexTailRecV2!276 Lexer!1248 lt!272659 (print!500 lt!272636) (BalanceConc!4585 Empty!2286) (print!500 lt!272636) (BalanceConc!4587 Empty!2287)))))

(assert (=> d!222131 (= (lex!578 Lexer!1248 lt!272659 (print!500 lt!272636)) lt!272858)))

(declare-fun b!637052 () Bool)

(declare-fun res!276616 () Bool)

(assert (=> b!637052 (=> (not res!276616) (not e!388108))))

(declare-datatypes ((tuple2!7374 0))(
  ( (tuple2!7375 (_1!4005 List!6815) (_2!4005 List!6813)) )
))
(declare-fun lexList!314 (LexerInterface!1250 List!6814 List!6813) tuple2!7374)

(assert (=> b!637052 (= res!276616 (= (list!2874 (_1!3998 lt!272858)) (_1!4005 (lexList!314 Lexer!1248 lt!272659 (list!2881 (print!500 lt!272636))))))))

(declare-fun b!637053 () Bool)

(declare-fun e!388107 () Bool)

(declare-fun isEmpty!4676 (BalanceConc!4586) Bool)

(assert (=> b!637053 (= e!388107 (not (isEmpty!4676 (_1!3998 lt!272858))))))

(declare-fun b!637054 () Bool)

(assert (=> b!637054 (= e!388108 (= (list!2881 (_2!3998 lt!272858)) (_2!4005 (lexList!314 Lexer!1248 lt!272659 (list!2881 (print!500 lt!272636))))))))

(declare-fun b!637055 () Bool)

(assert (=> b!637055 (= e!388106 e!388107)))

(declare-fun res!276614 () Bool)

(declare-fun size!5348 (BalanceConc!4584) Int)

(assert (=> b!637055 (= res!276614 (< (size!5348 (_2!3998 lt!272858)) (size!5348 (print!500 lt!272636))))))

(assert (=> b!637055 (=> (not res!276614) (not e!388107))))

(declare-fun b!637056 () Bool)

(assert (=> b!637056 (= e!388106 (= (_2!3998 lt!272858) (print!500 lt!272636)))))

(assert (= (and d!222131 c!116712) b!637055))

(assert (= (and d!222131 (not c!116712)) b!637056))

(assert (= (and b!637055 res!276614) b!637053))

(assert (= (and d!222131 res!276615) b!637052))

(assert (= (and b!637052 res!276616) b!637054))

(declare-fun m!908061 () Bool)

(assert (=> b!637052 m!908061))

(assert (=> b!637052 m!907695))

(declare-fun m!908063 () Bool)

(assert (=> b!637052 m!908063))

(assert (=> b!637052 m!908063))

(declare-fun m!908065 () Bool)

(assert (=> b!637052 m!908065))

(declare-fun m!908067 () Bool)

(assert (=> b!637054 m!908067))

(assert (=> b!637054 m!907695))

(assert (=> b!637054 m!908063))

(assert (=> b!637054 m!908063))

(assert (=> b!637054 m!908065))

(declare-fun m!908069 () Bool)

(assert (=> b!637053 m!908069))

(declare-fun m!908071 () Bool)

(assert (=> d!222131 m!908071))

(assert (=> d!222131 m!907695))

(assert (=> d!222131 m!907695))

(declare-fun m!908073 () Bool)

(assert (=> d!222131 m!908073))

(declare-fun m!908075 () Bool)

(assert (=> b!637055 m!908075))

(assert (=> b!637055 m!907695))

(declare-fun m!908077 () Bool)

(assert (=> b!637055 m!908077))

(assert (=> b!636846 d!222131))

(declare-fun d!222133 () Bool)

(assert (=> d!222133 (= (isDefined!1426 lt!272637) (not (isEmpty!4673 lt!272637)))))

(declare-fun bs!75673 () Bool)

(assert (= bs!75673 d!222133))

(assert (=> bs!75673 m!907717))

(assert (=> b!636867 d!222133))

(declare-fun d!222135 () Bool)

(declare-fun e!388109 () Bool)

(assert (=> d!222135 e!388109))

(declare-fun res!276617 () Bool)

(assert (=> d!222135 (=> (not res!276617) (not e!388109))))

(declare-fun lt!272859 () BalanceConc!4584)

(assert (=> d!222135 (= res!276617 (= (list!2874 (_1!3998 (lex!578 Lexer!1248 (rules!8191 (v!16878 lt!272654)) lt!272859))) (list!2874 (tokens!1197 (v!16878 lt!272654)))))))

(assert (=> d!222135 (= lt!272859 (print!501 Lexer!1248 (tokens!1197 (v!16878 lt!272654))))))

(declare-fun lt!272860 () Unit!11824)

(assert (=> d!222135 (= lt!272860 (theoremInvertabilityWhenTokenListSeparable!3 Lexer!1248 (rules!8191 (v!16878 lt!272654)) (list!2874 (tokens!1197 (v!16878 lt!272654)))))))

(assert (=> d!222135 (= (print!500 (v!16878 lt!272654)) lt!272859)))

(declare-fun b!637057 () Bool)

(assert (=> b!637057 (= e!388109 (isEmpty!4675 (list!2881 (_2!3998 (lex!578 Lexer!1248 (rules!8191 (v!16878 lt!272654)) lt!272859)))))))

(assert (= (and d!222135 res!276617) b!637057))

(declare-fun m!908079 () Bool)

(assert (=> d!222135 m!908079))

(declare-fun m!908081 () Bool)

(assert (=> d!222135 m!908081))

(declare-fun m!908083 () Bool)

(assert (=> d!222135 m!908083))

(assert (=> d!222135 m!908079))

(declare-fun m!908085 () Bool)

(assert (=> d!222135 m!908085))

(declare-fun m!908087 () Bool)

(assert (=> d!222135 m!908087))

(assert (=> b!637057 m!908083))

(declare-fun m!908089 () Bool)

(assert (=> b!637057 m!908089))

(assert (=> b!637057 m!908089))

(declare-fun m!908091 () Bool)

(assert (=> b!637057 m!908091))

(assert (=> b!636857 d!222135))

(declare-fun d!222137 () Bool)

(declare-fun e!388115 () Bool)

(assert (=> d!222137 e!388115))

(declare-fun res!276620 () Bool)

(assert (=> d!222137 (=> res!276620 e!388115)))

(declare-fun lt!272868 () Option!1653)

(assert (=> d!222137 (= res!276620 (isEmpty!4673 lt!272868))))

(declare-fun e!388114 () Option!1653)

(assert (=> d!222137 (= lt!272868 e!388114)))

(declare-fun c!116715 () Bool)

(declare-fun lt!272867 () Option!1653)

(assert (=> d!222137 (= c!116715 ((_ is Some!1652) lt!272867))))

(declare-fun append!207 (PrintableTokens!120 PrintableTokens!120) Option!1653)

(assert (=> d!222137 (= lt!272867 (append!207 (v!16878 (_1!4001 lt!272644)) (v!16878 lt!272650)))))

(assert (=> d!222137 (usesJsonRules!0 (v!16878 lt!272650))))

(assert (=> d!222137 (= (encloseInSep!0 (v!16878 lt!272650) (v!16878 (_1!4001 lt!272644)) (v!16878 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))) lt!272868)))

(declare-fun b!637064 () Bool)

(declare-fun lt!272869 () Option!1653)

(assert (=> b!637064 (= e!388114 (ite ((_ is Some!1652) lt!272869) lt!272869 None!1652))))

(assert (=> b!637064 (= lt!272869 (append!207 (v!16878 lt!272867) (v!16878 (_1!4001 (createRightBracketSeparator!0 (_2!4001 lt!272644) (_3!315 lt!272644))))))))

(declare-fun b!637065 () Bool)

(assert (=> b!637065 (= e!388114 None!1652)))

(declare-fun b!637066 () Bool)

(assert (=> b!637066 (= e!388115 (usesJsonRules!0 (get!2476 lt!272868)))))

(assert (= (and d!222137 c!116715) b!637064))

(assert (= (and d!222137 (not c!116715)) b!637065))

(assert (= (and d!222137 (not res!276620)) b!637066))

(declare-fun m!908093 () Bool)

(assert (=> d!222137 m!908093))

(declare-fun m!908095 () Bool)

(assert (=> d!222137 m!908095))

(declare-fun m!908097 () Bool)

(assert (=> d!222137 m!908097))

(declare-fun m!908099 () Bool)

(assert (=> b!637064 m!908099))

(declare-fun m!908101 () Bool)

(assert (=> b!637066 m!908101))

(assert (=> b!637066 m!908101))

(declare-fun m!908103 () Bool)

(assert (=> b!637066 m!908103))

(assert (=> b!636847 d!222137))

(assert (=> b!636847 d!222077))

(assert (=> b!636859 d!222077))

(declare-fun bs!75674 () Bool)

(declare-fun d!222139 () Bool)

(assert (= bs!75674 (and d!222139 d!222091)))

(declare-fun lambda!18312 () Int)

(assert (=> bs!75674 (not (= lambda!18312 lambda!18234))))

(declare-fun bs!75675 () Bool)

(assert (= bs!75675 (and d!222139 b!636864)))

(assert (=> bs!75675 (= lambda!18312 lambda!18228)))

(assert (=> bs!75674 (= lambda!18312 lambda!18233)))

(declare-fun bs!75676 () Bool)

(assert (= bs!75676 (and d!222139 b!637037)))

(assert (=> bs!75676 (= lambda!18312 lambda!18308)))

(declare-fun bs!75677 () Bool)

(assert (= bs!75677 (and d!222139 d!222109)))

(assert (=> bs!75677 (not (= lambda!18312 lambda!18303))))

(declare-fun bs!75678 () Bool)

(assert (= bs!75678 (and d!222139 d!222117)))

(assert (=> bs!75678 (= lambda!18312 lambda!18309)))

(declare-fun b!637089 () Bool)

(declare-fun e!388128 () Option!1653)

(declare-fun call!41638 () Option!1653)

(assert (=> b!637089 (= e!388128 call!41638)))

(declare-fun b!637090 () Bool)

(declare-fun e!388129 () Option!1653)

(assert (=> b!637090 (= e!388129 None!1652)))

(declare-fun b!637091 () Bool)

(declare-fun e!388130 () Option!1653)

(declare-fun e!388131 () Option!1653)

(assert (=> b!637091 (= e!388130 e!388131)))

(declare-fun c!116726 () Bool)

(declare-fun size!5349 (BalanceConc!4590) Int)

(assert (=> b!637091 (= c!116726 (= (size!5349 (map!1466 lt!272634 lambda!18227)) 1))))

(declare-fun b!637093 () Bool)

(declare-fun e!388133 () Bool)

(declare-fun lt!272879 () Option!1653)

(assert (=> b!637093 (= e!388133 (usesJsonRules!0 (get!2476 lt!272879)))))

(declare-fun bm!41631 () Bool)

(declare-fun call!41639 () BalanceConc!4590)

(declare-fun tail!893 (BalanceConc!4590) BalanceConc!4590)

(assert (=> bm!41631 (= call!41639 (tail!893 (map!1466 lt!272634 lambda!18227)))))

(declare-fun b!637094 () Bool)

(assert (=> b!637094 (= e!388128 None!1652)))

(declare-fun b!637095 () Bool)

(declare-fun e!388132 () Option!1653)

(assert (=> b!637095 (= e!388132 None!1652)))

(declare-fun b!637096 () Bool)

(assert (=> b!637096 (= e!388130 (Some!1652 (emptyPrintableTokens!12 lt!272659)))))

(declare-fun b!637097 () Bool)

(assert (=> b!637097 (= e!388129 e!388132)))

(declare-fun lt!272881 () Option!1653)

(declare-fun call!41637 () Option!1653)

(assert (=> b!637097 (= lt!272881 call!41637)))

(declare-fun c!116730 () Bool)

(assert (=> b!637097 (= c!116730 ((_ is Some!1652) lt!272881))))

(declare-fun b!637098 () Bool)

(declare-fun c!116728 () Bool)

(declare-fun lt!272880 () Option!1653)

(assert (=> b!637098 (= c!116728 ((_ is Some!1652) lt!272880))))

(declare-fun call!41636 () PrintableTokens!120)

(assert (=> b!637098 (= lt!272880 (append!207 call!41636 (v!16878 (_1!4001 lt!272639))))))

(assert (=> b!637098 (= e!388131 e!388129)))

(declare-fun lt!272878 () Option!1653)

(declare-fun bm!41632 () Bool)

(assert (=> bm!41632 (= call!41638 (recombineSlicesWithSep!0 call!41639 (v!16878 (_1!4001 lt!272639)) (ite c!116726 (v!16878 lt!272878) (v!16878 lt!272881))))))

(declare-fun bm!41633 () Bool)

(declare-fun head!1344 (BalanceConc!4590) PrintableTokens!120)

(assert (=> bm!41633 (= call!41636 (head!1344 (map!1466 lt!272634 lambda!18227)))))

(declare-fun bm!41634 () Bool)

(assert (=> bm!41634 (= call!41637 (append!207 (emptyPrintableTokens!12 lt!272659) (ite c!116726 call!41636 (v!16878 lt!272880))))))

(declare-fun b!637099 () Bool)

(declare-fun c!116727 () Bool)

(assert (=> b!637099 (= c!116727 ((_ is Some!1652) lt!272878))))

(assert (=> b!637099 (= lt!272878 call!41637)))

(assert (=> b!637099 (= e!388131 e!388128)))

(declare-fun b!637092 () Bool)

(assert (=> b!637092 (= e!388132 call!41638)))

(assert (=> d!222139 e!388133))

(declare-fun res!276623 () Bool)

(assert (=> d!222139 (=> res!276623 e!388133)))

(assert (=> d!222139 (= res!276623 (isEmpty!4673 lt!272879))))

(assert (=> d!222139 (= lt!272879 e!388130)))

(declare-fun c!116729 () Bool)

(declare-fun isEmpty!4677 (BalanceConc!4590) Bool)

(assert (=> d!222139 (= c!116729 (isEmpty!4677 (map!1466 lt!272634 lambda!18227)))))

(assert (=> d!222139 (forall!1717 (map!1466 lt!272634 lambda!18227) lambda!18312)))

(assert (=> d!222139 (= (recombineSlicesWithSep!0 (map!1466 lt!272634 lambda!18227) (v!16878 (_1!4001 lt!272639)) (emptyPrintableTokens!12 lt!272659)) lt!272879)))

(assert (= (and d!222139 c!116729) b!637096))

(assert (= (and d!222139 (not c!116729)) b!637091))

(assert (= (and b!637091 c!116726) b!637099))

(assert (= (and b!637091 (not c!116726)) b!637098))

(assert (= (and b!637099 c!116727) b!637089))

(assert (= (and b!637099 (not c!116727)) b!637094))

(assert (= (and b!637098 c!116728) b!637097))

(assert (= (and b!637098 (not c!116728)) b!637090))

(assert (= (and b!637097 c!116730) b!637092))

(assert (= (and b!637097 (not c!116730)) b!637095))

(assert (= (or b!637099 b!637098) bm!41633))

(assert (= (or b!637089 b!637092) bm!41631))

(assert (= (or b!637099 b!637097) bm!41634))

(assert (= (or b!637089 b!637092) bm!41632))

(assert (= (and d!222139 (not res!276623)) b!637093))

(declare-fun m!908105 () Bool)

(assert (=> b!637093 m!908105))

(assert (=> b!637093 m!908105))

(declare-fun m!908107 () Bool)

(assert (=> b!637093 m!908107))

(declare-fun m!908109 () Bool)

(assert (=> d!222139 m!908109))

(assert (=> d!222139 m!907673))

(declare-fun m!908111 () Bool)

(assert (=> d!222139 m!908111))

(assert (=> d!222139 m!907673))

(declare-fun m!908113 () Bool)

(assert (=> d!222139 m!908113))

(assert (=> bm!41634 m!907675))

(declare-fun m!908115 () Bool)

(assert (=> bm!41634 m!908115))

(assert (=> b!637091 m!907673))

(declare-fun m!908117 () Bool)

(assert (=> b!637091 m!908117))

(declare-fun m!908119 () Bool)

(assert (=> bm!41632 m!908119))

(assert (=> bm!41633 m!907673))

(declare-fun m!908121 () Bool)

(assert (=> bm!41633 m!908121))

(assert (=> bm!41631 m!907673))

(declare-fun m!908123 () Bool)

(assert (=> bm!41631 m!908123))

(declare-fun m!908125 () Bool)

(assert (=> b!637098 m!908125))

(assert (=> b!636859 d!222139))

(assert (=> b!636859 d!222101))

(declare-fun d!222141 () Bool)

(assert (=> d!222141 (isEmpty!4676 (BalanceConc!4587 Empty!2287))))

(assert (=> d!222141 (not (isEmpty!4672 lt!272659))))

(assert (=> d!222141 (= (emptyPrintableTokens!12 lt!272659) (PrintableTokens!121 lt!272659 (BalanceConc!4587 Empty!2287)))))

(declare-fun bs!75679 () Bool)

(assert (= bs!75679 d!222141))

(declare-fun m!908127 () Bool)

(assert (=> bs!75679 m!908127))

(assert (=> bs!75679 m!907667))

(assert (=> b!636859 d!222141))

(declare-fun d!222143 () Bool)

(assert (=> d!222143 (= (array_inv!822 (_keys!944 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) (bvsge (size!5338 (_keys!944 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!636858 d!222143))

(declare-fun d!222145 () Bool)

(assert (=> d!222145 (= (array_inv!824 (_values!929 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) (bvsge (size!5340 (_values!929 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!636858 d!222145))

(declare-fun setIsEmpty!2809 () Bool)

(declare-fun setRes!2809 () Bool)

(assert (=> setIsEmpty!2809 setRes!2809))

(declare-fun setNonEmpty!2809 () Bool)

(declare-fun tp!198361 () Bool)

(declare-fun setElem!2809 () Context!382)

(declare-fun inv!8645 (Context!382) Bool)

(assert (=> setNonEmpty!2809 (= setRes!2809 (and tp!198361 (inv!8645 setElem!2809)))))

(declare-fun mapDefault!2560 () List!6812)

(declare-fun setRest!2809 () (InoxSet Context!382))

(assert (=> setNonEmpty!2809 (= (_2!3997 (h!12199 mapDefault!2560)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2809 true) setRest!2809))))

(declare-fun mapNonEmpty!2560 () Bool)

(declare-fun mapRes!2560 () Bool)

(declare-fun tp!198363 () Bool)

(declare-fun e!388148 () Bool)

(assert (=> mapNonEmpty!2560 (= mapRes!2560 (and tp!198363 e!388148))))

(declare-fun mapValue!2560 () List!6812)

(declare-fun mapRest!2560 () (Array (_ BitVec 32) List!6812))

(declare-fun mapKey!2560 () (_ BitVec 32))

(assert (=> mapNonEmpty!2560 (= mapRest!2557 (store mapRest!2560 mapKey!2560 mapValue!2560))))

(declare-fun condMapEmpty!2560 () Bool)

(assert (=> mapNonEmpty!2556 (= condMapEmpty!2560 (= mapRest!2557 ((as const (Array (_ BitVec 32) List!6812)) mapDefault!2560)))))

(declare-fun e!388149 () Bool)

(assert (=> mapNonEmpty!2556 (= tp!198348 (and e!388149 mapRes!2560))))

(declare-fun setNonEmpty!2810 () Bool)

(declare-fun setRes!2810 () Bool)

(declare-fun tp!198360 () Bool)

(declare-fun setElem!2810 () Context!382)

(assert (=> setNonEmpty!2810 (= setRes!2810 (and tp!198360 (inv!8645 setElem!2810)))))

(declare-fun setRest!2810 () (InoxSet Context!382))

(assert (=> setNonEmpty!2810 (= (_2!3997 (h!12199 mapValue!2560)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2810 true) setRest!2810))))

(declare-fun setIsEmpty!2810 () Bool)

(assert (=> setIsEmpty!2810 setRes!2810))

(declare-fun b!637106 () Bool)

(declare-fun tp!198364 () Bool)

(assert (=> b!637106 (= e!388149 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 mapDefault!2560)))) setRes!2809 tp!198364))))

(declare-fun condSetEmpty!2809 () Bool)

(assert (=> b!637106 (= condSetEmpty!2809 (= (_2!3997 (h!12199 mapDefault!2560)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun mapIsEmpty!2560 () Bool)

(assert (=> mapIsEmpty!2560 mapRes!2560))

(declare-fun tp!198362 () Bool)

(declare-fun b!637107 () Bool)

(assert (=> b!637107 (= e!388148 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 mapValue!2560)))) setRes!2810 tp!198362))))

(declare-fun condSetEmpty!2810 () Bool)

(assert (=> b!637107 (= condSetEmpty!2810 (= (_2!3997 (h!12199 mapValue!2560)) ((as const (Array Context!382 Bool)) false)))))

(assert (= (and mapNonEmpty!2556 condMapEmpty!2560) mapIsEmpty!2560))

(assert (= (and mapNonEmpty!2556 (not condMapEmpty!2560)) mapNonEmpty!2560))

(assert (= (and b!637107 condSetEmpty!2810) setIsEmpty!2810))

(assert (= (and b!637107 (not condSetEmpty!2810)) setNonEmpty!2810))

(assert (= (and mapNonEmpty!2560 ((_ is Cons!6798) mapValue!2560)) b!637107))

(assert (= (and b!637106 condSetEmpty!2809) setIsEmpty!2809))

(assert (= (and b!637106 (not condSetEmpty!2809)) setNonEmpty!2809))

(assert (= (and mapNonEmpty!2556 ((_ is Cons!6798) mapDefault!2560)) b!637106))

(declare-fun m!908129 () Bool)

(assert (=> setNonEmpty!2809 m!908129))

(declare-fun m!908131 () Bool)

(assert (=> mapNonEmpty!2560 m!908131))

(declare-fun m!908133 () Bool)

(assert (=> b!637106 m!908133))

(declare-fun m!908135 () Bool)

(assert (=> setNonEmpty!2810 m!908135))

(declare-fun m!908137 () Bool)

(assert (=> b!637107 m!908137))

(declare-fun e!388160 () Bool)

(declare-fun tp!198370 () Bool)

(declare-fun b!637112 () Bool)

(declare-fun setRes!2813 () Bool)

(assert (=> b!637112 (= e!388160 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 mapValue!2557)))) setRes!2813 tp!198370))))

(declare-fun condSetEmpty!2813 () Bool)

(assert (=> b!637112 (= condSetEmpty!2813 (= (_2!3997 (h!12199 mapValue!2557)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2813 () Bool)

(assert (=> setIsEmpty!2813 setRes!2813))

(declare-fun setNonEmpty!2813 () Bool)

(declare-fun tp!198369 () Bool)

(declare-fun setElem!2813 () Context!382)

(assert (=> setNonEmpty!2813 (= setRes!2813 (and tp!198369 (inv!8645 setElem!2813)))))

(declare-fun setRest!2813 () (InoxSet Context!382))

(assert (=> setNonEmpty!2813 (= (_2!3997 (h!12199 mapValue!2557)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2813 true) setRest!2813))))

(assert (=> mapNonEmpty!2556 (= tp!198338 e!388160)))

(assert (= (and b!637112 condSetEmpty!2813) setIsEmpty!2813))

(assert (= (and b!637112 (not condSetEmpty!2813)) setNonEmpty!2813))

(assert (= (and mapNonEmpty!2556 ((_ is Cons!6798) mapValue!2557)) b!637112))

(declare-fun m!908139 () Bool)

(assert (=> b!637112 m!908139))

(declare-fun m!908141 () Bool)

(assert (=> setNonEmpty!2813 m!908141))

(declare-fun b!637123 () Bool)

(declare-fun b_free!18713 () Bool)

(declare-fun b_next!18737 () Bool)

(assert (=> b!637123 (= b_free!18713 (not b_next!18737))))

(declare-fun tp!198378 () Bool)

(declare-fun b_and!62507 () Bool)

(assert (=> b!637123 (= tp!198378 b_and!62507)))

(declare-fun b_free!18715 () Bool)

(declare-fun b_next!18739 () Bool)

(assert (=> b!637123 (= b_free!18715 (not b_next!18739))))

(declare-fun tp!198379 () Bool)

(declare-fun b_and!62509 () Bool)

(assert (=> b!637123 (= tp!198379 b_and!62509)))

(declare-fun e!388172 () Bool)

(assert (=> b!637123 (= e!388172 (and tp!198378 tp!198379))))

(declare-fun b!637122 () Bool)

(declare-fun e!388170 () Bool)

(declare-fun inv!8632 (String!8758) Bool)

(declare-fun inv!8646 (TokenValueInjection!2560) Bool)

(assert (=> b!637122 (= e!388170 (and (inv!8632 (tag!1632 (h!12201 (rules!8191 printableTokens!2)))) (inv!8646 (transformation!1370 (h!12201 (rules!8191 printableTokens!2)))) e!388172))))

(declare-fun b!637121 () Bool)

(declare-fun e!388169 () Bool)

(declare-fun tp!198377 () Bool)

(assert (=> b!637121 (= e!388169 (and e!388170 tp!198377))))

(assert (=> b!636869 (= tp!198342 e!388169)))

(assert (= b!637122 b!637123))

(assert (= b!637121 b!637122))

(assert (= (and b!636869 ((_ is Cons!6800) (rules!8191 printableTokens!2))) b!637121))

(declare-fun m!908143 () Bool)

(assert (=> b!637122 m!908143))

(declare-fun m!908145 () Bool)

(assert (=> b!637122 m!908145))

(declare-fun tp!198381 () Bool)

(declare-fun setRes!2814 () Bool)

(declare-fun e!388175 () Bool)

(declare-fun b!637124 () Bool)

(assert (=> b!637124 (= e!388175 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 mapDefault!2557)))) setRes!2814 tp!198381))))

(declare-fun condSetEmpty!2814 () Bool)

(assert (=> b!637124 (= condSetEmpty!2814 (= (_2!3997 (h!12199 mapDefault!2557)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2814 () Bool)

(assert (=> setIsEmpty!2814 setRes!2814))

(declare-fun setNonEmpty!2814 () Bool)

(declare-fun tp!198380 () Bool)

(declare-fun setElem!2814 () Context!382)

(assert (=> setNonEmpty!2814 (= setRes!2814 (and tp!198380 (inv!8645 setElem!2814)))))

(declare-fun setRest!2814 () (InoxSet Context!382))

(assert (=> setNonEmpty!2814 (= (_2!3997 (h!12199 mapDefault!2557)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2814 true) setRest!2814))))

(assert (=> b!636862 (= tp!198334 e!388175)))

(assert (= (and b!637124 condSetEmpty!2814) setIsEmpty!2814))

(assert (= (and b!637124 (not condSetEmpty!2814)) setNonEmpty!2814))

(assert (= (and b!636862 ((_ is Cons!6798) mapDefault!2557)) b!637124))

(declare-fun m!908147 () Bool)

(assert (=> b!637124 m!908147))

(declare-fun m!908149 () Bool)

(assert (=> setNonEmpty!2814 m!908149))

(declare-fun setRes!2815 () Bool)

(declare-fun tp!198383 () Bool)

(declare-fun e!388178 () Bool)

(declare-fun b!637125 () Bool)

(assert (=> b!637125 (= e!388178 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 (zeroValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))))) setRes!2815 tp!198383))))

(declare-fun condSetEmpty!2815 () Bool)

(assert (=> b!637125 (= condSetEmpty!2815 (= (_2!3997 (h!12199 (zeroValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2815 () Bool)

(assert (=> setIsEmpty!2815 setRes!2815))

(declare-fun setNonEmpty!2815 () Bool)

(declare-fun tp!198382 () Bool)

(declare-fun setElem!2815 () Context!382)

(assert (=> setNonEmpty!2815 (= setRes!2815 (and tp!198382 (inv!8645 setElem!2815)))))

(declare-fun setRest!2815 () (InoxSet Context!382))

(assert (=> setNonEmpty!2815 (= (_2!3997 (h!12199 (zeroValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2815 true) setRest!2815))))

(assert (=> b!636852 (= tp!198341 e!388178)))

(assert (= (and b!637125 condSetEmpty!2815) setIsEmpty!2815))

(assert (= (and b!637125 (not condSetEmpty!2815)) setNonEmpty!2815))

(assert (= (and b!636852 ((_ is Cons!6798) (zeroValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) b!637125))

(declare-fun m!908151 () Bool)

(assert (=> b!637125 m!908151))

(declare-fun m!908153 () Bool)

(assert (=> setNonEmpty!2815 m!908153))

(declare-fun setRes!2816 () Bool)

(declare-fun b!637126 () Bool)

(declare-fun e!388181 () Bool)

(declare-fun tp!198385 () Bool)

(assert (=> b!637126 (= e!388181 (and (inv!8645 (_1!3996 (_1!3997 (h!12199 (minValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))))) setRes!2816 tp!198385))))

(declare-fun condSetEmpty!2816 () Bool)

(assert (=> b!637126 (= condSetEmpty!2816 (= (_2!3997 (h!12199 (minValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2816 () Bool)

(assert (=> setIsEmpty!2816 setRes!2816))

(declare-fun setNonEmpty!2816 () Bool)

(declare-fun tp!198384 () Bool)

(declare-fun setElem!2816 () Context!382)

(assert (=> setNonEmpty!2816 (= setRes!2816 (and tp!198384 (inv!8645 setElem!2816)))))

(declare-fun setRest!2816 () (InoxSet Context!382))

(assert (=> setNonEmpty!2816 (= (_2!3997 (h!12199 (minValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2816 true) setRest!2816))))

(assert (=> b!636852 (= tp!198345 e!388181)))

(assert (= (and b!637126 condSetEmpty!2816) setIsEmpty!2816))

(assert (= (and b!637126 (not condSetEmpty!2816)) setNonEmpty!2816))

(assert (= (and b!636852 ((_ is Cons!6798) (minValue!906 (v!16876 (underlying!1481 (v!16877 (underlying!1482 (cache!1008 cacheUp!351)))))))) b!637126))

(declare-fun m!908155 () Bool)

(assert (=> b!637126 m!908155))

(declare-fun m!908157 () Bool)

(assert (=> setNonEmpty!2816 m!908157))

(declare-fun b!637131 () Bool)

(declare-fun e!388190 () Bool)

(declare-fun tp!198391 () Bool)

(declare-fun setRes!2819 () Bool)

(assert (=> b!637131 (= e!388190 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 mapDefault!2556)))) setRes!2819 tp!198391))))

(declare-fun condSetEmpty!2819 () Bool)

(assert (=> b!637131 (= condSetEmpty!2819 (= (_2!4000 (h!12203 mapDefault!2556)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2819 () Bool)

(assert (=> setIsEmpty!2819 setRes!2819))

(declare-fun setNonEmpty!2819 () Bool)

(declare-fun tp!198390 () Bool)

(declare-fun setElem!2819 () Context!382)

(assert (=> setNonEmpty!2819 (= setRes!2819 (and tp!198390 (inv!8645 setElem!2819)))))

(declare-fun setRest!2819 () (InoxSet Context!382))

(assert (=> setNonEmpty!2819 (= (_2!4000 (h!12203 mapDefault!2556)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2819 true) setRest!2819))))

(assert (=> b!636872 (= tp!198340 e!388190)))

(assert (= (and b!637131 condSetEmpty!2819) setIsEmpty!2819))

(assert (= (and b!637131 (not condSetEmpty!2819)) setNonEmpty!2819))

(assert (= (and b!636872 ((_ is Cons!6802) mapDefault!2556)) b!637131))

(declare-fun m!908159 () Bool)

(assert (=> b!637131 m!908159))

(declare-fun m!908161 () Bool)

(assert (=> setNonEmpty!2819 m!908161))

(declare-fun tp!198399 () Bool)

(declare-fun b!637140 () Bool)

(declare-fun e!388195 () Bool)

(declare-fun tp!198398 () Bool)

(assert (=> b!637140 (= e!388195 (and (inv!8641 (left!5423 (c!116655 (tokens!1197 printableTokens!2)))) tp!198399 (inv!8641 (right!5753 (c!116655 (tokens!1197 printableTokens!2)))) tp!198398))))

(declare-fun b!637142 () Bool)

(declare-fun e!388196 () Bool)

(declare-fun tp!198400 () Bool)

(assert (=> b!637142 (= e!388196 tp!198400)))

(declare-fun b!637141 () Bool)

(declare-fun inv!8647 (IArray!4575) Bool)

(assert (=> b!637141 (= e!388195 (and (inv!8647 (xs!4928 (c!116655 (tokens!1197 printableTokens!2)))) e!388196))))

(assert (=> b!636853 (= tp!198343 (and (inv!8641 (c!116655 (tokens!1197 printableTokens!2))) e!388195))))

(assert (= (and b!636853 ((_ is Node!2287) (c!116655 (tokens!1197 printableTokens!2)))) b!637140))

(assert (= b!637141 b!637142))

(assert (= (and b!636853 ((_ is Leaf!3488) (c!116655 (tokens!1197 printableTokens!2)))) b!637141))

(declare-fun m!908163 () Bool)

(assert (=> b!637140 m!908163))

(declare-fun m!908165 () Bool)

(assert (=> b!637140 m!908165))

(declare-fun m!908167 () Bool)

(assert (=> b!637141 m!908167))

(assert (=> b!636853 m!907663))

(declare-fun b!637143 () Bool)

(declare-fun e!388199 () Bool)

(declare-fun tp!198402 () Bool)

(declare-fun setRes!2820 () Bool)

(assert (=> b!637143 (= e!388199 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 (zeroValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))))) setRes!2820 tp!198402))))

(declare-fun condSetEmpty!2820 () Bool)

(assert (=> b!637143 (= condSetEmpty!2820 (= (_2!4000 (h!12203 (zeroValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2820 () Bool)

(assert (=> setIsEmpty!2820 setRes!2820))

(declare-fun setNonEmpty!2820 () Bool)

(declare-fun tp!198401 () Bool)

(declare-fun setElem!2820 () Context!382)

(assert (=> setNonEmpty!2820 (= setRes!2820 (and tp!198401 (inv!8645 setElem!2820)))))

(declare-fun setRest!2820 () (InoxSet Context!382))

(assert (=> setNonEmpty!2820 (= (_2!4000 (h!12203 (zeroValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2820 true) setRest!2820))))

(assert (=> b!636858 (= tp!198346 e!388199)))

(assert (= (and b!637143 condSetEmpty!2820) setIsEmpty!2820))

(assert (= (and b!637143 (not condSetEmpty!2820)) setNonEmpty!2820))

(assert (= (and b!636858 ((_ is Cons!6802) (zeroValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) b!637143))

(declare-fun m!908169 () Bool)

(assert (=> b!637143 m!908169))

(declare-fun m!908171 () Bool)

(assert (=> setNonEmpty!2820 m!908171))

(declare-fun setRes!2821 () Bool)

(declare-fun e!388202 () Bool)

(declare-fun b!637144 () Bool)

(declare-fun tp!198404 () Bool)

(assert (=> b!637144 (= e!388202 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 (minValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))))) setRes!2821 tp!198404))))

(declare-fun condSetEmpty!2821 () Bool)

(assert (=> b!637144 (= condSetEmpty!2821 (= (_2!4000 (h!12203 (minValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2821 () Bool)

(assert (=> setIsEmpty!2821 setRes!2821))

(declare-fun setNonEmpty!2821 () Bool)

(declare-fun tp!198403 () Bool)

(declare-fun setElem!2821 () Context!382)

(assert (=> setNonEmpty!2821 (= setRes!2821 (and tp!198403 (inv!8645 setElem!2821)))))

(declare-fun setRest!2821 () (InoxSet Context!382))

(assert (=> setNonEmpty!2821 (= (_2!4000 (h!12203 (minValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2821 true) setRest!2821))))

(assert (=> b!636858 (= tp!198336 e!388202)))

(assert (= (and b!637144 condSetEmpty!2821) setIsEmpty!2821))

(assert (= (and b!637144 (not condSetEmpty!2821)) setNonEmpty!2821))

(assert (= (and b!636858 ((_ is Cons!6802) (minValue!907 (v!16879 (underlying!1483 (v!16880 (underlying!1484 (cache!1009 cacheDown!364)))))))) b!637144))

(declare-fun m!908173 () Bool)

(assert (=> b!637144 m!908173))

(declare-fun m!908175 () Bool)

(assert (=> setNonEmpty!2821 m!908175))

(declare-fun e!388217 () Bool)

(declare-fun tp!198416 () Bool)

(declare-fun setRes!2826 () Bool)

(declare-fun b!637151 () Bool)

(declare-fun mapValue!2563 () List!6816)

(assert (=> b!637151 (= e!388217 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 mapValue!2563)))) setRes!2826 tp!198416))))

(declare-fun condSetEmpty!2826 () Bool)

(assert (=> b!637151 (= condSetEmpty!2826 (= (_2!4000 (h!12203 mapValue!2563)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2826 () Bool)

(declare-fun setRes!2827 () Bool)

(assert (=> setIsEmpty!2826 setRes!2827))

(declare-fun mapNonEmpty!2563 () Bool)

(declare-fun mapRes!2563 () Bool)

(declare-fun tp!198417 () Bool)

(assert (=> mapNonEmpty!2563 (= mapRes!2563 (and tp!198417 e!388217))))

(declare-fun mapKey!2563 () (_ BitVec 32))

(declare-fun mapRest!2563 () (Array (_ BitVec 32) List!6816))

(assert (=> mapNonEmpty!2563 (= mapRest!2556 (store mapRest!2563 mapKey!2563 mapValue!2563))))

(declare-fun setNonEmpty!2826 () Bool)

(declare-fun tp!198418 () Bool)

(declare-fun setElem!2827 () Context!382)

(assert (=> setNonEmpty!2826 (= setRes!2826 (and tp!198418 (inv!8645 setElem!2827)))))

(declare-fun setRest!2826 () (InoxSet Context!382))

(assert (=> setNonEmpty!2826 (= (_2!4000 (h!12203 mapValue!2563)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2827 true) setRest!2826))))

(declare-fun mapIsEmpty!2563 () Bool)

(assert (=> mapIsEmpty!2563 mapRes!2563))

(declare-fun e!388219 () Bool)

(declare-fun mapDefault!2563 () List!6816)

(declare-fun b!637152 () Bool)

(declare-fun tp!198415 () Bool)

(assert (=> b!637152 (= e!388219 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 mapDefault!2563)))) setRes!2827 tp!198415))))

(declare-fun condSetEmpty!2827 () Bool)

(assert (=> b!637152 (= condSetEmpty!2827 (= (_2!4000 (h!12203 mapDefault!2563)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setNonEmpty!2827 () Bool)

(declare-fun tp!198419 () Bool)

(declare-fun setElem!2826 () Context!382)

(assert (=> setNonEmpty!2827 (= setRes!2827 (and tp!198419 (inv!8645 setElem!2826)))))

(declare-fun setRest!2827 () (InoxSet Context!382))

(assert (=> setNonEmpty!2827 (= (_2!4000 (h!12203 mapDefault!2563)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2826 true) setRest!2827))))

(declare-fun condMapEmpty!2563 () Bool)

(assert (=> mapNonEmpty!2557 (= condMapEmpty!2563 (= mapRest!2556 ((as const (Array (_ BitVec 32) List!6816)) mapDefault!2563)))))

(assert (=> mapNonEmpty!2557 (= tp!198347 (and e!388219 mapRes!2563))))

(declare-fun setIsEmpty!2827 () Bool)

(assert (=> setIsEmpty!2827 setRes!2826))

(assert (= (and mapNonEmpty!2557 condMapEmpty!2563) mapIsEmpty!2563))

(assert (= (and mapNonEmpty!2557 (not condMapEmpty!2563)) mapNonEmpty!2563))

(assert (= (and b!637151 condSetEmpty!2826) setIsEmpty!2827))

(assert (= (and b!637151 (not condSetEmpty!2826)) setNonEmpty!2826))

(assert (= (and mapNonEmpty!2563 ((_ is Cons!6802) mapValue!2563)) b!637151))

(assert (= (and b!637152 condSetEmpty!2827) setIsEmpty!2826))

(assert (= (and b!637152 (not condSetEmpty!2827)) setNonEmpty!2827))

(assert (= (and mapNonEmpty!2557 ((_ is Cons!6802) mapDefault!2563)) b!637152))

(declare-fun m!908177 () Bool)

(assert (=> setNonEmpty!2827 m!908177))

(declare-fun m!908179 () Bool)

(assert (=> b!637151 m!908179))

(declare-fun m!908181 () Bool)

(assert (=> b!637152 m!908181))

(declare-fun m!908183 () Bool)

(assert (=> mapNonEmpty!2563 m!908183))

(declare-fun m!908185 () Bool)

(assert (=> setNonEmpty!2826 m!908185))

(declare-fun b!637153 () Bool)

(declare-fun setRes!2828 () Bool)

(declare-fun tp!198421 () Bool)

(declare-fun e!388223 () Bool)

(assert (=> b!637153 (= e!388223 (and (inv!8645 (_2!3999 (_1!4000 (h!12203 mapValue!2556)))) setRes!2828 tp!198421))))

(declare-fun condSetEmpty!2828 () Bool)

(assert (=> b!637153 (= condSetEmpty!2828 (= (_2!4000 (h!12203 mapValue!2556)) ((as const (Array Context!382 Bool)) false)))))

(declare-fun setIsEmpty!2828 () Bool)

(assert (=> setIsEmpty!2828 setRes!2828))

(declare-fun setNonEmpty!2828 () Bool)

(declare-fun tp!198420 () Bool)

(declare-fun setElem!2828 () Context!382)

(assert (=> setNonEmpty!2828 (= setRes!2828 (and tp!198420 (inv!8645 setElem!2828)))))

(declare-fun setRest!2828 () (InoxSet Context!382))

(assert (=> setNonEmpty!2828 (= (_2!4000 (h!12203 mapValue!2556)) ((_ map or) (store ((as const (Array Context!382 Bool)) false) setElem!2828 true) setRest!2828))))

(assert (=> mapNonEmpty!2557 (= tp!198344 e!388223)))

(assert (= (and b!637153 condSetEmpty!2828) setIsEmpty!2828))

(assert (= (and b!637153 (not condSetEmpty!2828)) setNonEmpty!2828))

(assert (= (and mapNonEmpty!2557 ((_ is Cons!6802) mapValue!2556)) b!637153))

(declare-fun m!908187 () Bool)

(assert (=> b!637153 m!908187))

(declare-fun m!908189 () Bool)

(assert (=> setNonEmpty!2828 m!908189))

(check-sat (not b!637153) (not b!637141) (not b!636853) (not b!637066) (not b!637000) b_and!62499 (not d!222115) (not setNonEmpty!2810) (not b!636938) (not b!636985) (not d!222121) b_and!62503 (not setNonEmpty!2814) (not b!637026) b_and!62509 (not b!636984) (not b_next!18733) (not b!637057) (not b!636988) (not b!636974) (not d!222135) (not b!636973) (not b!636987) (not d!222097) (not b_next!18729) (not bm!41631) (not b!637053) (not b!637107) (not b!637017) (not b!636991) (not b!636935) (not bm!41633) (not setNonEmpty!2826) b_and!62507 (not d!222101) (not b!636896) (not b!636879) (not b!637144) (not b!636895) (not b!637124) (not d!222093) (not b!637122) b_and!62505 (not b!636914) (not b!637142) (not b!636971) (not d!222111) (not b!636931) (not setNonEmpty!2820) (not b!637091) (not d!222099) (not b_next!18739) (not d!222139) (not d!222141) (not bm!41632) (not b!637143) (not b!636968) (not d!222091) (not b_next!18735) (not b!637016) (not d!222089) (not b!637151) (not b!637093) (not b!637121) (not b!637064) (not setNonEmpty!2827) (not mapNonEmpty!2560) (not b!636908) (not mapNonEmpty!2563) (not d!222087) b_and!62501 (not b!636934) (not b!637025) (not bm!41622) (not d!222129) (not b!637152) (not d!222123) (not b!637140) (not d!222137) (not setNonEmpty!2821) (not b!636903) (not b!637041) (not b!636983) (not d!222131) (not b!637054) (not d!222133) (not b!637098) (not b!637112) (not b_next!18737) (not b!637125) (not b!637037) (not b!636905) (not bm!41619) (not d!222109) (not b!637126) (not d!222113) (not b!637106) (not b!637055) (not b!636986) (not b!637052) (not setNonEmpty!2816) (not b!636997) (not b!636970) (not b!636880) (not b!636887) (not b!637131) (not d!222083) (not b!636884) (not bm!41634) (not d!222075) (not d!222095) (not setNonEmpty!2813) (not b_next!18731) (not d!222077) (not setNonEmpty!2819) (not d!222069) (not b!636975) (not setNonEmpty!2815) (not d!222117) (not d!222107) (not b!636881) (not d!222103) (not b!636965) (not d!222127) (not d!222067) (not setNonEmpty!2828) (not b!636937) (not setNonEmpty!2809))
(check-sat b_and!62499 b_and!62503 (not b_next!18729) b_and!62507 b_and!62505 (not b_next!18739) (not b_next!18735) b_and!62501 (not b_next!18737) (not b_next!18731) b_and!62509 (not b_next!18733))
