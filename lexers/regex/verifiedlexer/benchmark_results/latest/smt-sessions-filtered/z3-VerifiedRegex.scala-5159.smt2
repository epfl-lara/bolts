; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265936 () Bool)

(assert start!265936)

(declare-fun b!2743510 () Bool)

(declare-fun b_free!77105 () Bool)

(declare-fun b_next!77809 () Bool)

(assert (=> b!2743510 (= b_free!77105 (not b_next!77809))))

(declare-fun tp!862872 () Bool)

(declare-fun b_and!201825 () Bool)

(assert (=> b!2743510 (= tp!862872 b_and!201825)))

(declare-fun b!2743499 () Bool)

(declare-fun b_free!77107 () Bool)

(declare-fun b_next!77811 () Bool)

(assert (=> b!2743499 (= b_free!77107 (not b_next!77811))))

(declare-fun tp!862868 () Bool)

(declare-fun b_and!201827 () Bool)

(assert (=> b!2743499 (= tp!862868 b_and!201827)))

(declare-fun b_free!77109 () Bool)

(declare-fun b_next!77813 () Bool)

(assert (=> b!2743499 (= b_free!77109 (not b_next!77813))))

(declare-fun tp!862871 () Bool)

(declare-fun b_and!201829 () Bool)

(assert (=> b!2743499 (= tp!862871 b_and!201829)))

(declare-fun b!2743513 () Bool)

(declare-fun b_free!77111 () Bool)

(declare-fun b_next!77815 () Bool)

(assert (=> b!2743513 (= b_free!77111 (not b_next!77815))))

(declare-fun tp!862876 () Bool)

(declare-fun b_and!201831 () Bool)

(assert (=> b!2743513 (= tp!862876 b_and!201831)))

(declare-fun b!2743512 () Bool)

(declare-fun b_free!77113 () Bool)

(declare-fun b_next!77817 () Bool)

(assert (=> b!2743512 (= b_free!77113 (not b_next!77817))))

(declare-fun tp!862865 () Bool)

(declare-fun b_and!201833 () Bool)

(assert (=> b!2743512 (= tp!862865 b_and!201833)))

(declare-fun b!2743517 () Bool)

(declare-fun b_free!77115 () Bool)

(declare-fun b_next!77819 () Bool)

(assert (=> b!2743517 (= b_free!77115 (not b_next!77819))))

(declare-fun tp!862874 () Bool)

(declare-fun b_and!201835 () Bool)

(assert (=> b!2743517 (= tp!862874 b_and!201835)))

(declare-fun mapIsEmpty!16337 () Bool)

(declare-fun mapRes!16338 () Bool)

(assert (=> mapIsEmpty!16337 mapRes!16338))

(declare-fun b!2743498 () Bool)

(declare-fun e!1727828 () Bool)

(declare-fun e!1727816 () Bool)

(assert (=> b!2743498 (= e!1727828 e!1727816)))

(declare-fun e!1727815 () Bool)

(assert (=> b!2743499 (= e!1727815 (and tp!862868 tp!862871))))

(declare-fun b!2743500 () Bool)

(declare-fun e!1727835 () Bool)

(declare-fun e!1727832 () Bool)

(assert (=> b!2743500 (= e!1727835 e!1727832)))

(declare-fun b!2743501 () Bool)

(declare-fun res!1151681 () Bool)

(declare-fun e!1727825 () Bool)

(assert (=> b!2743501 (=> (not res!1151681) (not e!1727825))))

(declare-datatypes ((C!16124 0))(
  ( (C!16125 (val!9996 Int)) )
))
(declare-datatypes ((Regex!7983 0))(
  ( (ElementMatch!7983 (c!444773 C!16124)) (Concat!13035 (regOne!16478 Regex!7983) (regTwo!16478 Regex!7983)) (EmptyExpr!7983) (Star!7983 (reg!8312 Regex!7983)) (EmptyLang!7983) (Union!7983 (regOne!16479 Regex!7983) (regTwo!16479 Regex!7983)) )
))
(declare-datatypes ((List!31630 0))(
  ( (Nil!31530) (Cons!31530 (h!36950 Regex!7983) (t!227718 List!31630)) )
))
(declare-datatypes ((Context!4402 0))(
  ( (Context!4403 (exprs!2701 List!31630)) )
))
(declare-datatypes ((tuple3!4358 0))(
  ( (tuple3!4359 (_1!18302 Regex!7983) (_2!18302 Context!4402) (_3!2649 C!16124)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31306 0))(
  ( (tuple2!31307 (_1!18303 tuple3!4358) (_2!18303 (InoxSet Context!4402))) )
))
(declare-datatypes ((List!31631 0))(
  ( (Nil!31531) (Cons!31531 (h!36951 tuple2!31306) (t!227719 List!31631)) )
))
(declare-datatypes ((array!12751 0))(
  ( (array!12752 (arr!5696 (Array (_ BitVec 32) List!31631)) (size!24344 (_ BitVec 32))) )
))
(declare-datatypes ((array!12753 0))(
  ( (array!12754 (arr!5697 (Array (_ BitVec 32) (_ BitVec 64))) (size!24345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7160 0))(
  ( (LongMapFixedSize!7161 (defaultEntry!3965 Int) (mask!9308 (_ BitVec 32)) (extraKeys!3829 (_ BitVec 32)) (zeroValue!3839 List!31631) (minValue!3839 List!31631) (_size!7203 (_ BitVec 32)) (_keys!3880 array!12753) (_values!3861 array!12751) (_vacant!3641 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14129 0))(
  ( (Cell!14130 (v!33179 LongMapFixedSize!7160)) )
))
(declare-datatypes ((MutLongMap!3580 0))(
  ( (LongMap!3580 (underlying!7363 Cell!14129)) (MutLongMapExt!3579 (__x!20322 Int)) )
))
(declare-datatypes ((Cell!14131 0))(
  ( (Cell!14132 (v!33180 MutLongMap!3580)) )
))
(declare-datatypes ((Hashable!3496 0))(
  ( (HashableExt!3495 (__x!20323 Int)) )
))
(declare-datatypes ((MutableMap!3486 0))(
  ( (MutableMapExt!3485 (__x!20324 Int)) (HashMap!3486 (underlying!7364 Cell!14131) (hashF!5528 Hashable!3496) (_size!7204 (_ BitVec 32)) (defaultValue!3657 Int)) )
))
(declare-datatypes ((CacheDown!2310 0))(
  ( (CacheDown!2311 (cache!3629 MutableMap!3486)) )
))
(declare-fun cacheDown!646 () CacheDown!2310)

(declare-fun valid!2779 (CacheDown!2310) Bool)

(assert (=> b!2743501 (= res!1151681 (valid!2779 cacheDown!646))))

(declare-fun mapNonEmpty!16337 () Bool)

(declare-fun tp!862878 () Bool)

(declare-fun tp!862879 () Bool)

(assert (=> mapNonEmpty!16337 (= mapRes!16338 (and tp!862878 tp!862879))))

(declare-datatypes ((tuple2!31308 0))(
  ( (tuple2!31309 (_1!18304 Context!4402) (_2!18304 C!16124)) )
))
(declare-datatypes ((tuple2!31310 0))(
  ( (tuple2!31311 (_1!18305 tuple2!31308) (_2!18305 (InoxSet Context!4402))) )
))
(declare-datatypes ((List!31632 0))(
  ( (Nil!31532) (Cons!31532 (h!36952 tuple2!31310) (t!227720 List!31632)) )
))
(declare-datatypes ((array!12755 0))(
  ( (array!12756 (arr!5698 (Array (_ BitVec 32) List!31632)) (size!24346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7162 0))(
  ( (LongMapFixedSize!7163 (defaultEntry!3966 Int) (mask!9309 (_ BitVec 32)) (extraKeys!3830 (_ BitVec 32)) (zeroValue!3840 List!31632) (minValue!3840 List!31632) (_size!7205 (_ BitVec 32)) (_keys!3881 array!12753) (_values!3862 array!12755) (_vacant!3642 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14133 0))(
  ( (Cell!14134 (v!33181 LongMapFixedSize!7162)) )
))
(declare-datatypes ((MutLongMap!3581 0))(
  ( (LongMap!3581 (underlying!7365 Cell!14133)) (MutLongMapExt!3580 (__x!20325 Int)) )
))
(declare-datatypes ((Cell!14135 0))(
  ( (Cell!14136 (v!33182 MutLongMap!3581)) )
))
(declare-datatypes ((Hashable!3497 0))(
  ( (HashableExt!3496 (__x!20326 Int)) )
))
(declare-datatypes ((MutableMap!3487 0))(
  ( (MutableMapExt!3486 (__x!20327 Int)) (HashMap!3487 (underlying!7366 Cell!14135) (hashF!5529 Hashable!3497) (_size!7206 (_ BitVec 32)) (defaultValue!3658 Int)) )
))
(declare-datatypes ((CacheUp!2194 0))(
  ( (CacheUp!2195 (cache!3630 MutableMap!3487)) )
))
(declare-fun cacheUp!633 () CacheUp!2194)

(declare-fun mapRest!16338 () (Array (_ BitVec 32) List!31632))

(declare-fun mapValue!16337 () List!31632)

(declare-fun mapKey!16338 () (_ BitVec 32))

(assert (=> mapNonEmpty!16337 (= (arr!5698 (_values!3862 (v!33181 (underlying!7365 (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))))) (store mapRest!16338 mapKey!16338 mapValue!16337))))

(declare-fun b!2743502 () Bool)

(declare-fun e!1727830 () Bool)

(declare-fun tp!862869 () Bool)

(assert (=> b!2743502 (= e!1727830 (and tp!862869 mapRes!16338))))

(declare-fun condMapEmpty!16337 () Bool)

(declare-fun mapDefault!16337 () List!31632)

(assert (=> b!2743502 (= condMapEmpty!16337 (= (arr!5698 (_values!3862 (v!33181 (underlying!7365 (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31632)) mapDefault!16337)))))

(declare-fun b!2743504 () Bool)

(declare-fun e!1727827 () Bool)

(assert (=> b!2743504 (= e!1727827 true)))

(declare-datatypes ((List!31633 0))(
  ( (Nil!31533) (Cons!31533 (h!36953 C!16124) (t!227721 List!31633)) )
))
(declare-datatypes ((IArray!19751 0))(
  ( (IArray!19752 (innerList!9933 List!31633)) )
))
(declare-datatypes ((Conc!9873 0))(
  ( (Node!9873 (left!24202 Conc!9873) (right!24532 Conc!9873) (csize!19976 Int) (cheight!10084 Int)) (Leaf!15033 (xs!12980 IArray!19751) (csize!19977 Int)) (Empty!9873) )
))
(declare-datatypes ((BalanceConc!19360 0))(
  ( (BalanceConc!19361 (c!444774 Conc!9873)) )
))
(declare-fun input!1326 () BalanceConc!19360)

(declare-datatypes ((List!31634 0))(
  ( (Nil!31534) (Cons!31534 (h!36954 (_ BitVec 16)) (t!227722 List!31634)) )
))
(declare-datatypes ((TokenValue!5052 0))(
  ( (FloatLiteralValue!10104 (text!35809 List!31634)) (TokenValueExt!5051 (__x!20328 Int)) (Broken!25260 (value!155231 List!31634)) (Object!5151) (End!5052) (Def!5052) (Underscore!5052) (Match!5052) (Else!5052) (Error!5052) (Case!5052) (If!5052) (Extends!5052) (Abstract!5052) (Class!5052) (Val!5052) (DelimiterValue!10104 (del!5112 List!31634)) (KeywordValue!5058 (value!155232 List!31634)) (CommentValue!10104 (value!155233 List!31634)) (WhitespaceValue!10104 (value!155234 List!31634)) (IndentationValue!5052 (value!155235 List!31634)) (String!35161) (Int32!5052) (Broken!25261 (value!155236 List!31634)) (Boolean!5053) (Unit!45494) (OperatorValue!5055 (op!5112 List!31634)) (IdentifierValue!10104 (value!155237 List!31634)) (IdentifierValue!10105 (value!155238 List!31634)) (WhitespaceValue!10105 (value!155239 List!31634)) (True!10104) (False!10104) (Broken!25262 (value!155240 List!31634)) (Broken!25263 (value!155241 List!31634)) (True!10105) (RightBrace!5052) (RightBracket!5052) (Colon!5052) (Null!5052) (Comma!5052) (LeftBracket!5052) (False!10105) (LeftBrace!5052) (ImaginaryLiteralValue!5052 (text!35810 List!31634)) (StringLiteralValue!15156 (value!155242 List!31634)) (EOFValue!5052 (value!155243 List!31634)) (IdentValue!5052 (value!155244 List!31634)) (DelimiterValue!10105 (value!155245 List!31634)) (DedentValue!5052 (value!155246 List!31634)) (NewLineValue!5052 (value!155247 List!31634)) (IntegerValue!15156 (value!155248 (_ BitVec 32)) (text!35811 List!31634)) (IntegerValue!15157 (value!155249 Int) (text!35812 List!31634)) (Times!5052) (Or!5052) (Equal!5052) (Minus!5052) (Broken!25264 (value!155250 List!31634)) (And!5052) (Div!5052) (LessEqual!5052) (Mod!5052) (Concat!13036) (Not!5052) (Plus!5052) (SpaceValue!5052 (value!155251 List!31634)) (IntegerValue!15158 (value!155252 Int) (text!35813 List!31634)) (StringLiteralValue!15157 (text!35814 List!31634)) (FloatLiteralValue!10105 (text!35815 List!31634)) (BytesLiteralValue!5052 (value!155253 List!31634)) (CommentValue!10105 (value!155254 List!31634)) (StringLiteralValue!15158 (value!155255 List!31634)) (ErrorTokenValue!5052 (msg!5113 List!31634)) )
))
(declare-datatypes ((TokenValueInjection!9544 0))(
  ( (TokenValueInjection!9545 (toValue!6828 Int) (toChars!6687 Int)) )
))
(declare-datatypes ((String!35162 0))(
  ( (String!35163 (value!155256 String)) )
))
(declare-datatypes ((Rule!9460 0))(
  ( (Rule!9461 (regex!4830 Regex!7983) (tag!5334 String!35162) (isSeparator!4830 Bool) (transformation!4830 TokenValueInjection!9544)) )
))
(declare-datatypes ((List!31635 0))(
  ( (Nil!31535) (Cons!31535 (h!36955 Rule!9460) (t!227723 List!31635)) )
))
(declare-fun rulesArg!249 () List!31635)

(declare-datatypes ((Token!9098 0))(
  ( (Token!9099 (value!155257 TokenValue!5052) (rule!7268 Rule!9460) (size!24347 Int) (originalCharacters!5580 List!31633)) )
))
(declare-datatypes ((tuple2!31312 0))(
  ( (tuple2!31313 (_1!18306 Token!9098) (_2!18306 BalanceConc!19360)) )
))
(declare-datatypes ((Option!6228 0))(
  ( (None!6227) (Some!6227 (v!33183 tuple2!31312)) )
))
(declare-datatypes ((tuple3!4360 0))(
  ( (tuple3!4361 (_1!18307 Option!6228) (_2!18307 CacheUp!2194) (_3!2650 CacheDown!2310)) )
))
(declare-fun lt!971212 () tuple3!4360)

(declare-datatypes ((LexerInterface!4425 0))(
  ( (LexerInterfaceExt!4422 (__x!20329 Int)) (Lexer!4423) )
))
(declare-fun thiss!15207 () LexerInterface!4425)

(declare-fun maxPrefixOneRuleZipperSequenceMem!14 (LexerInterface!4425 Rule!9460 BalanceConc!19360 CacheUp!2194 CacheDown!2310) tuple3!4360)

(assert (=> b!2743504 (= lt!971212 (maxPrefixOneRuleZipperSequenceMem!14 thiss!15207 (h!36955 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun b!2743505 () Bool)

(declare-fun e!1727824 () Bool)

(declare-fun tp!862870 () Bool)

(declare-fun inv!42875 (Conc!9873) Bool)

(assert (=> b!2743505 (= e!1727824 (and (inv!42875 (c!444774 input!1326)) tp!862870))))

(declare-fun b!2743506 () Bool)

(declare-fun res!1151676 () Bool)

(assert (=> b!2743506 (=> (not res!1151676) (not e!1727825))))

(declare-fun valid!2780 (CacheUp!2194) Bool)

(assert (=> b!2743506 (= res!1151676 (valid!2780 cacheUp!633))))

(declare-fun b!2743507 () Bool)

(declare-fun e!1727813 () Bool)

(declare-fun tp!862877 () Bool)

(declare-fun mapRes!16337 () Bool)

(assert (=> b!2743507 (= e!1727813 (and tp!862877 mapRes!16337))))

(declare-fun condMapEmpty!16338 () Bool)

(declare-fun mapDefault!16338 () List!31631)

(assert (=> b!2743507 (= condMapEmpty!16338 (= (arr!5696 (_values!3861 (v!33179 (underlying!7363 (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31631)) mapDefault!16338)))))

(declare-fun b!2743508 () Bool)

(declare-fun tp!862873 () Bool)

(declare-fun e!1727829 () Bool)

(declare-fun inv!42869 (String!35162) Bool)

(declare-fun inv!42876 (TokenValueInjection!9544) Bool)

(assert (=> b!2743508 (= e!1727829 (and tp!862873 (inv!42869 (tag!5334 (h!36955 rulesArg!249))) (inv!42876 (transformation!4830 (h!36955 rulesArg!249))) e!1727815))))

(declare-fun b!2743509 () Bool)

(declare-fun e!1727818 () Bool)

(assert (=> b!2743509 (= e!1727818 e!1727835)))

(declare-fun e!1727834 () Bool)

(declare-fun e!1727821 () Bool)

(assert (=> b!2743510 (= e!1727834 (and e!1727821 tp!862872))))

(declare-fun b!2743511 () Bool)

(declare-fun e!1727822 () Bool)

(assert (=> b!2743511 (= e!1727822 e!1727828)))

(declare-fun e!1727826 () Bool)

(declare-fun e!1727833 () Bool)

(assert (=> b!2743512 (= e!1727826 (and e!1727833 tp!862865))))

(declare-fun tp!862867 () Bool)

(declare-fun tp!862875 () Bool)

(declare-fun array_inv!4069 (array!12753) Bool)

(declare-fun array_inv!4070 (array!12751) Bool)

(assert (=> b!2743513 (= e!1727832 (and tp!862876 tp!862875 tp!862867 (array_inv!4069 (_keys!3880 (v!33179 (underlying!7363 (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))))) (array_inv!4070 (_values!3861 (v!33179 (underlying!7363 (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))))) e!1727813))))

(declare-fun b!2743514 () Bool)

(declare-fun lt!971213 () MutLongMap!3581)

(get-info :version)

(assert (=> b!2743514 (= e!1727833 (and e!1727822 ((_ is LongMap!3581) lt!971213)))))

(assert (=> b!2743514 (= lt!971213 (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))))

(declare-fun b!2743515 () Bool)

(declare-fun res!1151678 () Bool)

(assert (=> b!2743515 (=> (not res!1151678) (not e!1727825))))

(declare-fun isEmpty!18018 (List!31635) Bool)

(assert (=> b!2743515 (= res!1151678 (not (isEmpty!18018 rulesArg!249)))))

(declare-fun mapIsEmpty!16338 () Bool)

(assert (=> mapIsEmpty!16338 mapRes!16337))

(declare-fun b!2743516 () Bool)

(declare-fun e!1727819 () Bool)

(assert (=> b!2743516 (= e!1727819 e!1727826)))

(declare-fun tp!862883 () Bool)

(declare-fun tp!862882 () Bool)

(declare-fun array_inv!4071 (array!12755) Bool)

(assert (=> b!2743517 (= e!1727816 (and tp!862874 tp!862882 tp!862883 (array_inv!4069 (_keys!3881 (v!33181 (underlying!7365 (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))))) (array_inv!4071 (_values!3862 (v!33181 (underlying!7365 (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))))) e!1727830))))

(declare-fun res!1151680 () Bool)

(assert (=> start!265936 (=> (not res!1151680) (not e!1727825))))

(assert (=> start!265936 (= res!1151680 ((_ is Lexer!4423) thiss!15207))))

(assert (=> start!265936 e!1727825))

(declare-fun e!1727823 () Bool)

(declare-fun inv!42877 (CacheDown!2310) Bool)

(assert (=> start!265936 (and (inv!42877 cacheDown!646) e!1727823)))

(declare-fun inv!42878 (BalanceConc!19360) Bool)

(assert (=> start!265936 (and (inv!42878 input!1326) e!1727824)))

(declare-fun e!1727820 () Bool)

(assert (=> start!265936 e!1727820))

(declare-fun inv!42879 (CacheUp!2194) Bool)

(assert (=> start!265936 (and (inv!42879 cacheUp!633) e!1727819)))

(assert (=> start!265936 true))

(declare-fun b!2743503 () Bool)

(assert (=> b!2743503 (= e!1727825 (not e!1727827))))

(declare-fun res!1151679 () Bool)

(assert (=> b!2743503 (=> res!1151679 e!1727827)))

(assert (=> b!2743503 (= res!1151679 (or (and ((_ is Cons!31535) rulesArg!249) ((_ is Nil!31535) (t!227723 rulesArg!249))) (not ((_ is Cons!31535) rulesArg!249))))))

(declare-fun lt!971214 () List!31633)

(declare-fun isPrefix!2508 (List!31633 List!31633) Bool)

(assert (=> b!2743503 (isPrefix!2508 lt!971214 lt!971214)))

(declare-datatypes ((Unit!45495 0))(
  ( (Unit!45496) )
))
(declare-fun lt!971216 () Unit!45495)

(declare-fun lemmaIsPrefixRefl!1634 (List!31633 List!31633) Unit!45495)

(assert (=> b!2743503 (= lt!971216 (lemmaIsPrefixRefl!1634 lt!971214 lt!971214))))

(declare-fun list!11981 (BalanceConc!19360) List!31633)

(assert (=> b!2743503 (= lt!971214 (list!11981 input!1326))))

(declare-fun b!2743518 () Bool)

(declare-fun tp!862880 () Bool)

(assert (=> b!2743518 (= e!1727820 (and e!1727829 tp!862880))))

(declare-fun mapNonEmpty!16338 () Bool)

(declare-fun tp!862866 () Bool)

(declare-fun tp!862881 () Bool)

(assert (=> mapNonEmpty!16338 (= mapRes!16337 (and tp!862866 tp!862881))))

(declare-fun mapValue!16338 () List!31631)

(declare-fun mapRest!16337 () (Array (_ BitVec 32) List!31631))

(declare-fun mapKey!16337 () (_ BitVec 32))

(assert (=> mapNonEmpty!16338 (= (arr!5696 (_values!3861 (v!33179 (underlying!7363 (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))))) (store mapRest!16337 mapKey!16337 mapValue!16338))))

(declare-fun b!2743519 () Bool)

(declare-fun res!1151677 () Bool)

(assert (=> b!2743519 (=> (not res!1151677) (not e!1727825))))

(declare-fun rulesValidInductive!1695 (LexerInterface!4425 List!31635) Bool)

(assert (=> b!2743519 (= res!1151677 (rulesValidInductive!1695 thiss!15207 rulesArg!249))))

(declare-fun b!2743520 () Bool)

(assert (=> b!2743520 (= e!1727823 e!1727834)))

(declare-fun b!2743521 () Bool)

(declare-fun lt!971215 () MutLongMap!3580)

(assert (=> b!2743521 (= e!1727821 (and e!1727818 ((_ is LongMap!3580) lt!971215)))))

(assert (=> b!2743521 (= lt!971215 (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))))

(assert (= (and start!265936 res!1151680) b!2743519))

(assert (= (and b!2743519 res!1151677) b!2743515))

(assert (= (and b!2743515 res!1151678) b!2743506))

(assert (= (and b!2743506 res!1151676) b!2743501))

(assert (= (and b!2743501 res!1151681) b!2743503))

(assert (= (and b!2743503 (not res!1151679)) b!2743504))

(assert (= (and b!2743507 condMapEmpty!16338) mapIsEmpty!16338))

(assert (= (and b!2743507 (not condMapEmpty!16338)) mapNonEmpty!16338))

(assert (= b!2743513 b!2743507))

(assert (= b!2743500 b!2743513))

(assert (= b!2743509 b!2743500))

(assert (= (and b!2743521 ((_ is LongMap!3580) (v!33180 (underlying!7364 (cache!3629 cacheDown!646))))) b!2743509))

(assert (= b!2743510 b!2743521))

(assert (= (and b!2743520 ((_ is HashMap!3486) (cache!3629 cacheDown!646))) b!2743510))

(assert (= start!265936 b!2743520))

(assert (= start!265936 b!2743505))

(assert (= b!2743508 b!2743499))

(assert (= b!2743518 b!2743508))

(assert (= (and start!265936 ((_ is Cons!31535) rulesArg!249)) b!2743518))

(assert (= (and b!2743502 condMapEmpty!16337) mapIsEmpty!16337))

(assert (= (and b!2743502 (not condMapEmpty!16337)) mapNonEmpty!16337))

(assert (= b!2743517 b!2743502))

(assert (= b!2743498 b!2743517))

(assert (= b!2743511 b!2743498))

(assert (= (and b!2743514 ((_ is LongMap!3581) (v!33182 (underlying!7366 (cache!3630 cacheUp!633))))) b!2743511))

(assert (= b!2743512 b!2743514))

(assert (= (and b!2743516 ((_ is HashMap!3487) (cache!3630 cacheUp!633))) b!2743512))

(assert (= start!265936 b!2743516))

(declare-fun m!3160983 () Bool)

(assert (=> b!2743506 m!3160983))

(declare-fun m!3160985 () Bool)

(assert (=> start!265936 m!3160985))

(declare-fun m!3160987 () Bool)

(assert (=> start!265936 m!3160987))

(declare-fun m!3160989 () Bool)

(assert (=> start!265936 m!3160989))

(declare-fun m!3160991 () Bool)

(assert (=> b!2743508 m!3160991))

(declare-fun m!3160993 () Bool)

(assert (=> b!2743508 m!3160993))

(declare-fun m!3160995 () Bool)

(assert (=> b!2743504 m!3160995))

(declare-fun m!3160997 () Bool)

(assert (=> b!2743515 m!3160997))

(declare-fun m!3160999 () Bool)

(assert (=> b!2743513 m!3160999))

(declare-fun m!3161001 () Bool)

(assert (=> b!2743513 m!3161001))

(declare-fun m!3161003 () Bool)

(assert (=> mapNonEmpty!16338 m!3161003))

(declare-fun m!3161005 () Bool)

(assert (=> b!2743517 m!3161005))

(declare-fun m!3161007 () Bool)

(assert (=> b!2743517 m!3161007))

(declare-fun m!3161009 () Bool)

(assert (=> b!2743501 m!3161009))

(declare-fun m!3161011 () Bool)

(assert (=> b!2743503 m!3161011))

(declare-fun m!3161013 () Bool)

(assert (=> b!2743503 m!3161013))

(declare-fun m!3161015 () Bool)

(assert (=> b!2743503 m!3161015))

(declare-fun m!3161017 () Bool)

(assert (=> b!2743505 m!3161017))

(declare-fun m!3161019 () Bool)

(assert (=> b!2743519 m!3161019))

(declare-fun m!3161021 () Bool)

(assert (=> mapNonEmpty!16337 m!3161021))

(check-sat (not b!2743503) (not b!2743515) (not b!2743501) (not b!2743513) (not b_next!77809) (not b_next!77815) (not b!2743502) (not start!265936) (not b!2743507) b_and!201831 (not b!2743506) b_and!201833 (not b!2743504) (not b_next!77817) b_and!201825 b_and!201835 (not b_next!77811) (not mapNonEmpty!16338) (not b!2743518) (not b!2743508) b_and!201829 (not b!2743519) (not b!2743505) (not b!2743517) (not b_next!77813) (not b_next!77819) b_and!201827 (not mapNonEmpty!16337))
(check-sat b_and!201833 (not b_next!77817) (not b_next!77811) b_and!201829 (not b_next!77809) (not b_next!77815) b_and!201831 b_and!201825 b_and!201835 (not b_next!77813) (not b_next!77819) b_and!201827)
