; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63632 () Bool)

(assert start!63632)

(declare-fun b!648113 () Bool)

(declare-fun b_free!18917 () Bool)

(declare-fun b_next!18973 () Bool)

(assert (=> b!648113 (= b_free!18917 (not b_next!18973))))

(declare-fun tp!200158 () Bool)

(declare-fun b_and!62711 () Bool)

(assert (=> b!648113 (= tp!200158 b_and!62711)))

(declare-fun b!648110 () Bool)

(declare-fun b_free!18919 () Bool)

(declare-fun b_next!18975 () Bool)

(assert (=> b!648110 (= b_free!18919 (not b_next!18975))))

(declare-fun tp!200168 () Bool)

(declare-fun b_and!62713 () Bool)

(assert (=> b!648110 (= tp!200168 b_and!62713)))

(declare-fun b!648112 () Bool)

(declare-fun b_free!18921 () Bool)

(declare-fun b_next!18977 () Bool)

(assert (=> b!648112 (= b_free!18921 (not b_next!18977))))

(declare-fun tp!200165 () Bool)

(declare-fun b_and!62715 () Bool)

(assert (=> b!648112 (= tp!200165 b_and!62715)))

(declare-fun b!648101 () Bool)

(declare-fun b_free!18923 () Bool)

(declare-fun b_next!18979 () Bool)

(assert (=> b!648101 (= b_free!18923 (not b_next!18979))))

(declare-fun tp!200166 () Bool)

(declare-fun b_and!62717 () Bool)

(assert (=> b!648101 (= tp!200166 b_and!62717)))

(declare-fun b!648097 () Bool)

(declare-fun e!397970 () Bool)

(declare-fun e!397966 () Bool)

(declare-fun tp!200169 () Bool)

(declare-datatypes ((List!6975 0))(
  ( (Nil!6961) (Cons!6961 (h!12362 (_ BitVec 16)) (t!85697 List!6975)) )
))
(declare-datatypes ((TokenValue!1424 0))(
  ( (FloatLiteralValue!2848 (text!10413 List!6975)) (TokenValueExt!1423 (__x!4966 Int)) (Broken!7120 (value!44740 List!6975)) (Object!1437) (End!1424) (Def!1424) (Underscore!1424) (Match!1424) (Else!1424) (Error!1424) (Case!1424) (If!1424) (Extends!1424) (Abstract!1424) (Class!1424) (Val!1424) (DelimiterValue!2848 (del!1484 List!6975)) (KeywordValue!1430 (value!44741 List!6975)) (CommentValue!2848 (value!44742 List!6975)) (WhitespaceValue!2848 (value!44743 List!6975)) (IndentationValue!1424 (value!44744 List!6975)) (String!8857) (Int32!1424) (Broken!7121 (value!44745 List!6975)) (Boolean!1425) (Unit!12125) (OperatorValue!1427 (op!1484 List!6975)) (IdentifierValue!2848 (value!44746 List!6975)) (IdentifierValue!2849 (value!44747 List!6975)) (WhitespaceValue!2849 (value!44748 List!6975)) (True!2848) (False!2848) (Broken!7122 (value!44749 List!6975)) (Broken!7123 (value!44750 List!6975)) (True!2849) (RightBrace!1424) (RightBracket!1424) (Colon!1424) (Null!1424) (Comma!1424) (LeftBracket!1424) (False!2849) (LeftBrace!1424) (ImaginaryLiteralValue!1424 (text!10414 List!6975)) (StringLiteralValue!4272 (value!44751 List!6975)) (EOFValue!1424 (value!44752 List!6975)) (IdentValue!1424 (value!44753 List!6975)) (DelimiterValue!2849 (value!44754 List!6975)) (DedentValue!1424 (value!44755 List!6975)) (NewLineValue!1424 (value!44756 List!6975)) (IntegerValue!4272 (value!44757 (_ BitVec 32)) (text!10415 List!6975)) (IntegerValue!4273 (value!44758 Int) (text!10416 List!6975)) (Times!1424) (Or!1424) (Equal!1424) (Minus!1424) (Broken!7124 (value!44759 List!6975)) (And!1424) (Div!1424) (LessEqual!1424) (Mod!1424) (Concat!3149) (Not!1424) (Plus!1424) (SpaceValue!1424 (value!44760 List!6975)) (IntegerValue!4274 (value!44761 Int) (text!10417 List!6975)) (StringLiteralValue!4273 (text!10418 List!6975)) (FloatLiteralValue!2849 (text!10419 List!6975)) (BytesLiteralValue!1424 (value!44762 List!6975)) (CommentValue!2849 (value!44763 List!6975)) (StringLiteralValue!4274 (value!44764 List!6975)) (ErrorTokenValue!1424 (msg!1485 List!6975)) )
))
(declare-datatypes ((Regex!1725 0))(
  ( (ElementMatch!1725 (c!117832 (_ BitVec 16))) (Concat!3150 (regOne!3962 Regex!1725) (regTwo!3962 Regex!1725)) (EmptyExpr!1725) (Star!1725 (reg!2054 Regex!1725)) (EmptyLang!1725) (Union!1725 (regOne!3963 Regex!1725) (regTwo!3963 Regex!1725)) )
))
(declare-datatypes ((String!8858 0))(
  ( (String!8859 (value!44765 String)) )
))
(declare-datatypes ((IArray!4737 0))(
  ( (IArray!4738 (innerList!2426 List!6975)) )
))
(declare-datatypes ((Conc!2368 0))(
  ( (Node!2368 (left!5534 Conc!2368) (right!5864 Conc!2368) (csize!4966 Int) (cheight!2579 Int)) (Leaf!3579 (xs!5009 IArray!4737) (csize!4967 Int)) (Empty!2368) )
))
(declare-datatypes ((BalanceConc!4748 0))(
  ( (BalanceConc!4749 (c!117833 Conc!2368)) )
))
(declare-datatypes ((TokenValueInjection!2600 0))(
  ( (TokenValueInjection!2601 (toValue!2331 Int) (toChars!2190 Int)) )
))
(declare-datatypes ((Rule!2580 0))(
  ( (Rule!2581 (regex!1390 Regex!1725) (tag!1652 String!8858) (isSeparator!1390 Bool) (transformation!1390 TokenValueInjection!2600)) )
))
(declare-datatypes ((Token!2502 0))(
  ( (Token!2503 (value!44766 TokenValue!1424) (rule!2185 Rule!2580) (size!5517 Int) (originalCharacters!1422 List!6975)) )
))
(declare-datatypes ((List!6976 0))(
  ( (Nil!6962) (Cons!6962 (h!12363 Token!2502) (t!85698 List!6976)) )
))
(declare-datatypes ((IArray!4739 0))(
  ( (IArray!4740 (innerList!2427 List!6976)) )
))
(declare-datatypes ((Conc!2369 0))(
  ( (Node!2369 (left!5535 Conc!2369) (right!5865 Conc!2369) (csize!4968 Int) (cheight!2580 Int)) (Leaf!3580 (xs!5010 IArray!4739) (csize!4969 Int)) (Empty!2369) )
))
(declare-datatypes ((List!6977 0))(
  ( (Nil!6963) (Cons!6963 (h!12364 Rule!2580) (t!85699 List!6977)) )
))
(declare-datatypes ((BalanceConc!4750 0))(
  ( (BalanceConc!4751 (c!117834 Conc!2369)) )
))
(declare-datatypes ((PrintableTokens!160 0))(
  ( (PrintableTokens!161 (rules!8245 List!6977) (tokens!1229 BalanceConc!4750)) )
))
(declare-fun printableTokens!2 () PrintableTokens!160)

(declare-fun inv!8793 (BalanceConc!4750) Bool)

(assert (=> b!648097 (= e!397966 (and tp!200169 (inv!8793 (tokens!1229 printableTokens!2)) e!397970))))

(declare-fun mapIsEmpty!2720 () Bool)

(declare-fun mapRes!2720 () Bool)

(assert (=> mapIsEmpty!2720 mapRes!2720))

(declare-fun b!648098 () Bool)

(declare-fun e!397978 () Bool)

(declare-fun e!397986 () Bool)

(assert (=> b!648098 (= e!397978 e!397986)))

(declare-fun b!648099 () Bool)

(declare-fun e!397985 () Bool)

(declare-fun e!397982 () Bool)

(assert (=> b!648099 (= e!397985 e!397982)))

(declare-fun b!648100 () Bool)

(declare-fun e!397973 () Bool)

(declare-datatypes ((List!6978 0))(
  ( (Nil!6964) (Cons!6964 (h!12365 Regex!1725) (t!85700 List!6978)) )
))
(declare-datatypes ((Context!418 0))(
  ( (Context!419 (exprs!709 List!6978)) )
))
(declare-datatypes ((tuple2!7520 0))(
  ( (tuple2!7521 (_1!4118 Context!418) (_2!4118 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7522 0))(
  ( (tuple2!7523 (_1!4119 tuple2!7520) (_2!4119 (InoxSet Context!418))) )
))
(declare-datatypes ((List!6979 0))(
  ( (Nil!6965) (Cons!6965 (h!12366 tuple2!7522) (t!85701 List!6979)) )
))
(declare-datatypes ((array!2604 0))(
  ( (array!2605 (arr!1179 (Array (_ BitVec 32) List!6979)) (size!5518 (_ BitVec 32))) )
))
(declare-datatypes ((array!2606 0))(
  ( (array!2607 (arr!1180 (Array (_ BitVec 32) (_ BitVec 64))) (size!5519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1368 0))(
  ( (LongMapFixedSize!1369 (defaultEntry!1040 Int) (mask!2426 (_ BitVec 32)) (extraKeys!931 (_ BitVec 32)) (zeroValue!941 List!6979) (minValue!941 List!6979) (_size!1477 (_ BitVec 32)) (_keys!978 array!2606) (_values!963 array!2604) (_vacant!745 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2677 0))(
  ( (Cell!2678 (v!17160 LongMapFixedSize!1368)) )
))
(declare-datatypes ((MutLongMap!684 0))(
  ( (LongMap!684 (underlying!1551 Cell!2677)) (MutLongMapExt!683 (__x!4967 Int)) )
))
(declare-fun lt!278159 () MutLongMap!684)

(get-info :version)

(assert (=> b!648100 (= e!397973 (and e!397985 ((_ is LongMap!684) lt!278159)))))

(declare-datatypes ((Hashable!656 0))(
  ( (HashableExt!655 (__x!4968 Int)) )
))
(declare-datatypes ((Cell!2679 0))(
  ( (Cell!2680 (v!17161 MutLongMap!684)) )
))
(declare-datatypes ((MutableMap!656 0))(
  ( (MutableMapExt!655 (__x!4969 Int)) (HashMap!656 (underlying!1552 Cell!2679) (hashF!2564 Hashable!656) (_size!1478 (_ BitVec 32)) (defaultValue!807 Int)) )
))
(declare-datatypes ((CacheUp!316 0))(
  ( (CacheUp!317 (cache!1043 MutableMap!656)) )
))
(declare-fun cacheUp!351 () CacheUp!316)

(assert (=> b!648100 (= lt!278159 (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))))

(declare-fun e!397981 () Bool)

(assert (=> b!648101 (= e!397981 (and e!397973 tp!200166))))

(declare-fun b!648102 () Bool)

(declare-fun tp!200171 () Bool)

(declare-fun inv!8794 (Conc!2369) Bool)

(assert (=> b!648102 (= e!397970 (and (inv!8794 (c!117834 (tokens!1229 printableTokens!2))) tp!200171))))

(declare-fun b!648103 () Bool)

(declare-fun res!283736 () Bool)

(declare-fun e!397965 () Bool)

(assert (=> b!648103 (=> (not res!283736) (not e!397965))))

(declare-fun usesJsonRules!0 (PrintableTokens!160) Bool)

(assert (=> b!648103 (= res!283736 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!648104 () Bool)

(declare-fun e!397967 () Bool)

(assert (=> b!648104 (= e!397967 e!397965)))

(declare-fun res!283732 () Bool)

(assert (=> b!648104 (=> (not res!283732) (not e!397965))))

(declare-fun lt!278151 () List!6977)

(declare-fun isEmpty!4745 (List!6977) Bool)

(assert (=> b!648104 (= res!283732 (not (isEmpty!4745 lt!278151)))))

(declare-datatypes ((JsonLexer!212 0))(
  ( (JsonLexer!213) )
))
(declare-fun rules!109 (JsonLexer!212) List!6977)

(assert (=> b!648104 (= lt!278151 (rules!109 JsonLexer!213))))

(declare-fun b!648105 () Bool)

(declare-fun e!397972 () Bool)

(declare-fun tp!200159 () Bool)

(declare-fun mapRes!2721 () Bool)

(assert (=> b!648105 (= e!397972 (and tp!200159 mapRes!2721))))

(declare-fun condMapEmpty!2721 () Bool)

(declare-datatypes ((tuple3!614 0))(
  ( (tuple3!615 (_1!4120 Regex!1725) (_2!4120 Context!418) (_3!358 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7524 0))(
  ( (tuple2!7525 (_1!4121 tuple3!614) (_2!4121 (InoxSet Context!418))) )
))
(declare-datatypes ((List!6980 0))(
  ( (Nil!6966) (Cons!6966 (h!12367 tuple2!7524) (t!85702 List!6980)) )
))
(declare-datatypes ((array!2608 0))(
  ( (array!2609 (arr!1181 (Array (_ BitVec 32) List!6980)) (size!5520 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1370 0))(
  ( (LongMapFixedSize!1371 (defaultEntry!1041 Int) (mask!2427 (_ BitVec 32)) (extraKeys!932 (_ BitVec 32)) (zeroValue!942 List!6980) (minValue!942 List!6980) (_size!1479 (_ BitVec 32)) (_keys!979 array!2606) (_values!964 array!2608) (_vacant!746 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2681 0))(
  ( (Cell!2682 (v!17162 LongMapFixedSize!1370)) )
))
(declare-datatypes ((MutLongMap!685 0))(
  ( (LongMap!685 (underlying!1553 Cell!2681)) (MutLongMapExt!684 (__x!4970 Int)) )
))
(declare-datatypes ((Cell!2683 0))(
  ( (Cell!2684 (v!17163 MutLongMap!685)) )
))
(declare-datatypes ((Hashable!657 0))(
  ( (HashableExt!656 (__x!4971 Int)) )
))
(declare-datatypes ((MutableMap!657 0))(
  ( (MutableMapExt!656 (__x!4972 Int)) (HashMap!657 (underlying!1554 Cell!2683) (hashF!2565 Hashable!657) (_size!1480 (_ BitVec 32)) (defaultValue!808 Int)) )
))
(declare-datatypes ((CacheDown!318 0))(
  ( (CacheDown!319 (cache!1044 MutableMap!657)) )
))
(declare-fun cacheDown!364 () CacheDown!318)

(declare-fun mapDefault!2721 () List!6980)

(assert (=> b!648105 (= condMapEmpty!2721 (= (arr!1181 (_values!964 (v!17162 (underlying!1553 (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6980)) mapDefault!2721)))))

(declare-fun b!648106 () Bool)

(declare-fun e!397974 () Bool)

(declare-fun tp!200173 () Bool)

(assert (=> b!648106 (= e!397974 (and tp!200173 mapRes!2720))))

(declare-fun condMapEmpty!2720 () Bool)

(declare-fun mapDefault!2720 () List!6979)

(assert (=> b!648106 (= condMapEmpty!2720 (= (arr!1179 (_values!963 (v!17160 (underlying!1551 (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6979)) mapDefault!2720)))))

(declare-fun b!648107 () Bool)

(declare-fun e!397984 () Bool)

(declare-fun e!397971 () Bool)

(assert (=> b!648107 (= e!397984 e!397971)))

(declare-fun res!283735 () Bool)

(assert (=> b!648107 (=> res!283735 e!397971)))

(declare-datatypes ((Option!1671 0))(
  ( (None!1670) (Some!1670 (v!17164 PrintableTokens!160)) )
))
(declare-fun lt!278155 () Option!1671)

(assert (=> b!648107 (= res!283735 (not ((_ is Some!1670) lt!278155)))))

(declare-datatypes ((tuple2!7526 0))(
  ( (tuple2!7527 (_1!4122 Int) (_2!4122 PrintableTokens!160)) )
))
(declare-datatypes ((List!6981 0))(
  ( (Nil!6967) (Cons!6967 (h!12368 tuple2!7526) (t!85703 List!6981)) )
))
(declare-datatypes ((IArray!4741 0))(
  ( (IArray!4742 (innerList!2428 List!6981)) )
))
(declare-datatypes ((Conc!2370 0))(
  ( (Node!2370 (left!5536 Conc!2370) (right!5866 Conc!2370) (csize!4970 Int) (cheight!2581 Int)) (Leaf!3581 (xs!5011 IArray!4741) (csize!4971 Int)) (Empty!2370) )
))
(declare-datatypes ((BalanceConc!4752 0))(
  ( (BalanceConc!4753 (c!117835 Conc!2370)) )
))
(declare-fun lt!278144 () BalanceConc!4752)

(declare-datatypes ((tuple3!616 0))(
  ( (tuple3!617 (_1!4123 Option!1671) (_2!4123 CacheUp!316) (_3!359 CacheDown!318)) )
))
(declare-fun lt!278150 () tuple3!616)

(declare-fun lambda!19933 () Int)

(declare-datatypes ((List!6982 0))(
  ( (Nil!6968) (Cons!6968 (h!12369 PrintableTokens!160) (t!85704 List!6982)) )
))
(declare-datatypes ((IArray!4743 0))(
  ( (IArray!4744 (innerList!2429 List!6982)) )
))
(declare-datatypes ((Conc!2371 0))(
  ( (Node!2371 (left!5537 Conc!2371) (right!5867 Conc!2371) (csize!4972 Int) (cheight!2582 Int)) (Leaf!3582 (xs!5012 IArray!4743) (csize!4973 Int)) (Empty!2371) )
))
(declare-datatypes ((BalanceConc!4754 0))(
  ( (BalanceConc!4755 (c!117836 Conc!2371)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4754 PrintableTokens!160 PrintableTokens!160) Option!1671)

(declare-fun map!1556 (BalanceConc!4752 Int) BalanceConc!4754)

(declare-fun emptyPrintableTokens!18 (List!6977) PrintableTokens!160)

(assert (=> b!648107 (= lt!278155 (recombineSlicesWithSep!0 (map!1556 lt!278144 lambda!19933) (v!17164 (_1!4123 lt!278150)) (emptyPrintableTokens!18 lt!278151)))))

(declare-fun b!648108 () Bool)

(declare-fun res!283729 () Bool)

(assert (=> b!648108 (=> res!283729 e!397984)))

(assert (=> b!648108 (= res!283729 (not (usesJsonRules!0 (v!17164 (_1!4123 lt!278150)))))))

(declare-fun res!283733 () Bool)

(assert (=> start!63632 (=> (not res!283733) (not e!397967))))

(declare-fun lt!278157 () Int)

(assert (=> start!63632 (= res!283733 (> lt!278157 0))))

(declare-fun size!5521 (PrintableTokens!160) Int)

(assert (=> start!63632 (= lt!278157 (size!5521 printableTokens!2))))

(assert (=> start!63632 e!397967))

(declare-fun inv!8795 (PrintableTokens!160) Bool)

(assert (=> start!63632 (and (inv!8795 printableTokens!2) e!397966)))

(declare-fun inv!8796 (CacheDown!318) Bool)

(assert (=> start!63632 (and (inv!8796 cacheDown!364) e!397978)))

(declare-fun e!397968 () Bool)

(declare-fun inv!8797 (CacheUp!316) Bool)

(assert (=> start!63632 (and (inv!8797 cacheUp!351) e!397968)))

(declare-fun b!648109 () Bool)

(assert (=> b!648109 (= e!397968 e!397981)))

(declare-fun e!397975 () Bool)

(declare-fun tp!200160 () Bool)

(declare-fun tp!200172 () Bool)

(declare-fun array_inv!859 (array!2606) Bool)

(declare-fun array_inv!860 (array!2604) Bool)

(assert (=> b!648110 (= e!397975 (and tp!200168 tp!200160 tp!200172 (array_inv!859 (_keys!978 (v!17160 (underlying!1551 (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))))) (array_inv!860 (_values!963 (v!17160 (underlying!1551 (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))))) e!397974))))

(declare-fun b!648111 () Bool)

(declare-fun e!397979 () Bool)

(declare-fun e!397983 () Bool)

(assert (=> b!648111 (= e!397979 e!397983)))

(declare-fun tp!200170 () Bool)

(declare-fun tp!200161 () Bool)

(declare-fun array_inv!861 (array!2608) Bool)

(assert (=> b!648112 (= e!397983 (and tp!200165 tp!200161 tp!200170 (array_inv!859 (_keys!979 (v!17162 (underlying!1553 (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))))) (array_inv!861 (_values!964 (v!17162 (underlying!1553 (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))))) e!397972))))

(declare-fun e!397977 () Bool)

(assert (=> b!648113 (= e!397986 (and e!397977 tp!200158))))

(declare-fun b!648114 () Bool)

(declare-fun res!283734 () Bool)

(assert (=> b!648114 (=> res!283734 e!397984)))

(declare-fun lt!278145 () tuple3!616)

(assert (=> b!648114 (= res!283734 (not (usesJsonRules!0 (v!17164 (_1!4123 lt!278145)))))))

(declare-fun b!648115 () Bool)

(declare-fun res!283737 () Bool)

(assert (=> b!648115 (=> (not res!283737) (not e!397965))))

(declare-datatypes ((LexerInterface!1263 0))(
  ( (LexerInterfaceExt!1260 (__x!4973 Int)) (Lexer!1261) )
))
(declare-fun rulesInvariant!1198 (LexerInterface!1263 List!6977) Bool)

(assert (=> b!648115 (= res!283737 (rulesInvariant!1198 Lexer!1261 lt!278151))))

(declare-fun b!648116 () Bool)

(declare-fun e!397980 () Bool)

(declare-fun lt!278146 () MutLongMap!685)

(assert (=> b!648116 (= e!397977 (and e!397980 ((_ is LongMap!685) lt!278146)))))

(assert (=> b!648116 (= lt!278146 (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))))

(declare-fun mapIsEmpty!2721 () Bool)

(assert (=> mapIsEmpty!2721 mapRes!2721))

(declare-fun mapNonEmpty!2720 () Bool)

(declare-fun tp!200162 () Bool)

(declare-fun tp!200164 () Bool)

(assert (=> mapNonEmpty!2720 (= mapRes!2721 (and tp!200162 tp!200164))))

(declare-fun mapRest!2721 () (Array (_ BitVec 32) List!6980))

(declare-fun mapKey!2720 () (_ BitVec 32))

(declare-fun mapValue!2720 () List!6980)

(assert (=> mapNonEmpty!2720 (= (arr!1181 (_values!964 (v!17162 (underlying!1553 (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))))) (store mapRest!2721 mapKey!2720 mapValue!2720))))

(declare-fun b!648117 () Bool)

(assert (=> b!648117 (= e!397965 (not e!397984))))

(declare-fun res!283731 () Bool)

(assert (=> b!648117 (=> res!283731 e!397984)))

(declare-fun lt!278158 () tuple3!616)

(assert (=> b!648117 (= res!283731 (or (not ((_ is Some!1670) (_1!4123 lt!278150))) (not ((_ is Some!1670) (_1!4123 lt!278145))) (not ((_ is Some!1670) (_1!4123 lt!278158)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!316 CacheDown!318) tuple3!616)

(assert (=> b!648117 (= lt!278158 (createRightBracketSeparator!0 (_2!4123 lt!278145) (_3!359 lt!278145)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!316 CacheDown!318) tuple3!616)

(assert (=> b!648117 (= lt!278145 (createLeftBracketSeparator!0 (_2!4123 lt!278150) (_3!359 lt!278150)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!316 CacheDown!318) tuple3!616)

(assert (=> b!648117 (= lt!278150 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!19934 () Int)

(declare-fun forall!1816 (BalanceConc!4754 Int) Bool)

(assert (=> b!648117 (forall!1816 (map!1556 lt!278144 lambda!19933) lambda!19934)))

(declare-datatypes ((Unit!12126 0))(
  ( (Unit!12127) )
))
(declare-fun lt!278152 () Unit!12126)

(declare-fun lt!278156 () List!6981)

(declare-fun mapPred!71 (List!6981 Int Int) Unit!12126)

(assert (=> b!648117 (= lt!278152 (mapPred!71 lt!278156 lambda!19933 lambda!19934))))

(declare-fun lt!278154 () Unit!12126)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6981) Unit!12126)

(assert (=> b!648117 (= lt!278154 (lemmaRemoveIdsPreservesRules!0 lt!278156))))

(declare-fun list!2967 (BalanceConc!4752) List!6981)

(assert (=> b!648117 (= lt!278156 (list!2967 lt!278144))))

(declare-fun lt!278147 () BalanceConc!4754)

(declare-fun lambda!19931 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4752) BalanceConc!4752)

(declare-fun map!1557 (BalanceConc!4754 Int) BalanceConc!4752)

(assert (=> b!648117 (= lt!278144 (sortObjectsByID!0 (map!1557 lt!278147 lambda!19931)))))

(declare-fun lt!278149 () Unit!12126)

(declare-fun lambda!19932 () Int)

(declare-fun lt!278160 () List!6982)

(declare-fun mapPred!72 (List!6982 Int Int) Unit!12126)

(assert (=> b!648117 (= lt!278149 (mapPred!72 lt!278160 lambda!19931 lambda!19932))))

(declare-fun lt!278148 () Unit!12126)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6982) Unit!12126)

(assert (=> b!648117 (= lt!278148 (lemmaAddIdsPreservesRules!0 lt!278160))))

(declare-fun list!2968 (BalanceConc!4754) List!6982)

(assert (=> b!648117 (= lt!278160 (list!2968 lt!278147))))

(declare-datatypes ((List!6983 0))(
  ( (Nil!6969) (Cons!6969 (h!12370 Int) (t!85705 List!6983)) )
))
(declare-datatypes ((IArray!4745 0))(
  ( (IArray!4746 (innerList!2430 List!6983)) )
))
(declare-datatypes ((Conc!2372 0))(
  ( (Node!2372 (left!5538 Conc!2372) (right!5868 Conc!2372) (csize!4974 Int) (cheight!2583 Int)) (Leaf!3583 (xs!5013 IArray!4745) (csize!4975 Int)) (Empty!2372) )
))
(declare-datatypes ((BalanceConc!4756 0))(
  ( (BalanceConc!4757 (c!117837 Conc!2372)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!160 Int BalanceConc!4756 BalanceConc!4754) BalanceConc!4754)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4750 Int Int BalanceConc!4756) BalanceConc!4756)

(assert (=> b!648117 (= lt!278147 (slicesMulti!0 printableTokens!2 lt!278157 (indicesOfOpenBraces!0 (tokens!1229 printableTokens!2) lt!278157 0 (BalanceConc!4757 Empty!2372)) (BalanceConc!4755 Empty!2371)))))

(declare-fun b!648118 () Bool)

(declare-fun res!283730 () Bool)

(assert (=> b!648118 (=> res!283730 e!397984)))

(assert (=> b!648118 (= res!283730 (not (usesJsonRules!0 (v!17164 (_1!4123 lt!278158)))))))

(declare-fun b!648119 () Bool)

(assert (=> b!648119 (= e!397982 e!397975)))

(declare-fun b!648120 () Bool)

(assert (=> b!648120 (= e!397980 e!397979)))

(declare-fun mapNonEmpty!2721 () Bool)

(declare-fun tp!200167 () Bool)

(declare-fun tp!200163 () Bool)

(assert (=> mapNonEmpty!2721 (= mapRes!2720 (and tp!200167 tp!200163))))

(declare-fun mapKey!2721 () (_ BitVec 32))

(declare-fun mapValue!2721 () List!6979)

(declare-fun mapRest!2720 () (Array (_ BitVec 32) List!6979))

(assert (=> mapNonEmpty!2721 (= (arr!1179 (_values!963 (v!17160 (underlying!1551 (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))))) (store mapRest!2720 mapKey!2721 mapValue!2721))))

(declare-fun b!648121 () Bool)

(assert (=> b!648121 (= e!397971 true)))

(declare-fun lt!278153 () Option!1671)

(declare-fun encloseInSep!0 (PrintableTokens!160 PrintableTokens!160 PrintableTokens!160) Option!1671)

(assert (=> b!648121 (= lt!278153 (encloseInSep!0 (v!17164 lt!278155) (v!17164 (_1!4123 lt!278145)) (v!17164 (_1!4123 lt!278158))))))

(assert (= (and start!63632 res!283733) b!648104))

(assert (= (and b!648104 res!283732) b!648115))

(assert (= (and b!648115 res!283737) b!648103))

(assert (= (and b!648103 res!283736) b!648117))

(assert (= (and b!648117 (not res!283731)) b!648108))

(assert (= (and b!648108 (not res!283729)) b!648114))

(assert (= (and b!648114 (not res!283734)) b!648118))

(assert (= (and b!648118 (not res!283730)) b!648107))

(assert (= (and b!648107 (not res!283735)) b!648121))

(assert (= b!648097 b!648102))

(assert (= start!63632 b!648097))

(assert (= (and b!648105 condMapEmpty!2721) mapIsEmpty!2721))

(assert (= (and b!648105 (not condMapEmpty!2721)) mapNonEmpty!2720))

(assert (= b!648112 b!648105))

(assert (= b!648111 b!648112))

(assert (= b!648120 b!648111))

(assert (= (and b!648116 ((_ is LongMap!685) (v!17163 (underlying!1554 (cache!1044 cacheDown!364))))) b!648120))

(assert (= b!648113 b!648116))

(assert (= (and b!648098 ((_ is HashMap!657) (cache!1044 cacheDown!364))) b!648113))

(assert (= start!63632 b!648098))

(assert (= (and b!648106 condMapEmpty!2720) mapIsEmpty!2720))

(assert (= (and b!648106 (not condMapEmpty!2720)) mapNonEmpty!2721))

(assert (= b!648110 b!648106))

(assert (= b!648119 b!648110))

(assert (= b!648099 b!648119))

(assert (= (and b!648100 ((_ is LongMap!684) (v!17161 (underlying!1552 (cache!1043 cacheUp!351))))) b!648099))

(assert (= b!648101 b!648100))

(assert (= (and b!648109 ((_ is HashMap!656) (cache!1043 cacheUp!351))) b!648101))

(assert (= start!63632 b!648109))

(declare-fun m!919045 () Bool)

(assert (=> mapNonEmpty!2721 m!919045))

(declare-fun m!919047 () Bool)

(assert (=> b!648104 m!919047))

(declare-fun m!919049 () Bool)

(assert (=> b!648104 m!919049))

(declare-fun m!919051 () Bool)

(assert (=> b!648118 m!919051))

(declare-fun m!919053 () Bool)

(assert (=> b!648121 m!919053))

(declare-fun m!919055 () Bool)

(assert (=> b!648108 m!919055))

(declare-fun m!919057 () Bool)

(assert (=> b!648102 m!919057))

(declare-fun m!919059 () Bool)

(assert (=> mapNonEmpty!2720 m!919059))

(declare-fun m!919061 () Bool)

(assert (=> b!648112 m!919061))

(declare-fun m!919063 () Bool)

(assert (=> b!648112 m!919063))

(declare-fun m!919065 () Bool)

(assert (=> start!63632 m!919065))

(declare-fun m!919067 () Bool)

(assert (=> start!63632 m!919067))

(declare-fun m!919069 () Bool)

(assert (=> start!63632 m!919069))

(declare-fun m!919071 () Bool)

(assert (=> start!63632 m!919071))

(declare-fun m!919073 () Bool)

(assert (=> b!648097 m!919073))

(declare-fun m!919075 () Bool)

(assert (=> b!648115 m!919075))

(declare-fun m!919077 () Bool)

(assert (=> b!648103 m!919077))

(declare-fun m!919079 () Bool)

(assert (=> b!648114 m!919079))

(declare-fun m!919081 () Bool)

(assert (=> b!648107 m!919081))

(declare-fun m!919083 () Bool)

(assert (=> b!648107 m!919083))

(assert (=> b!648107 m!919081))

(assert (=> b!648107 m!919083))

(declare-fun m!919085 () Bool)

(assert (=> b!648107 m!919085))

(declare-fun m!919087 () Bool)

(assert (=> b!648110 m!919087))

(declare-fun m!919089 () Bool)

(assert (=> b!648110 m!919089))

(declare-fun m!919091 () Bool)

(assert (=> b!648117 m!919091))

(declare-fun m!919093 () Bool)

(assert (=> b!648117 m!919093))

(assert (=> b!648117 m!919091))

(declare-fun m!919095 () Bool)

(assert (=> b!648117 m!919095))

(assert (=> b!648117 m!919081))

(assert (=> b!648117 m!919081))

(declare-fun m!919097 () Bool)

(assert (=> b!648117 m!919097))

(declare-fun m!919099 () Bool)

(assert (=> b!648117 m!919099))

(declare-fun m!919101 () Bool)

(assert (=> b!648117 m!919101))

(declare-fun m!919103 () Bool)

(assert (=> b!648117 m!919103))

(declare-fun m!919105 () Bool)

(assert (=> b!648117 m!919105))

(declare-fun m!919107 () Bool)

(assert (=> b!648117 m!919107))

(declare-fun m!919109 () Bool)

(assert (=> b!648117 m!919109))

(declare-fun m!919111 () Bool)

(assert (=> b!648117 m!919111))

(declare-fun m!919113 () Bool)

(assert (=> b!648117 m!919113))

(assert (=> b!648117 m!919101))

(declare-fun m!919115 () Bool)

(assert (=> b!648117 m!919115))

(declare-fun m!919117 () Bool)

(assert (=> b!648117 m!919117))

(check-sat (not b_next!18973) (not b!648118) b_and!62715 (not b_next!18977) (not b!648115) (not b_next!18979) (not b!648104) (not mapNonEmpty!2721) (not b!648106) (not b!648108) (not b!648107) b_and!62717 (not b_next!18975) (not b!648102) (not b!648117) (not b!648110) (not b!648103) (not b!648114) b_and!62713 (not b!648105) (not b!648121) b_and!62711 (not start!63632) (not b!648097) (not b!648112) (not mapNonEmpty!2720))
(check-sat (not b_next!18973) b_and!62717 (not b_next!18975) b_and!62715 (not b_next!18977) (not b_next!18979) b_and!62713 b_and!62711)
