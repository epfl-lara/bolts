; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266324 () Bool)

(assert start!266324)

(declare-fun b!2747182 () Bool)

(declare-fun b_free!77457 () Bool)

(declare-fun b_next!78161 () Bool)

(assert (=> b!2747182 (= b_free!77457 (not b_next!78161))))

(declare-fun tp!865908 () Bool)

(declare-fun b_and!202181 () Bool)

(assert (=> b!2747182 (= tp!865908 b_and!202181)))

(declare-fun b!2747192 () Bool)

(declare-fun b_free!77459 () Bool)

(declare-fun b_next!78163 () Bool)

(assert (=> b!2747192 (= b_free!77459 (not b_next!78163))))

(declare-fun tp!865896 () Bool)

(declare-fun b_and!202183 () Bool)

(assert (=> b!2747192 (= tp!865896 b_and!202183)))

(declare-fun b!2747179 () Bool)

(declare-fun b_free!77461 () Bool)

(declare-fun b_next!78165 () Bool)

(assert (=> b!2747179 (= b_free!77461 (not b_next!78165))))

(declare-fun tp!865893 () Bool)

(declare-fun b_and!202185 () Bool)

(assert (=> b!2747179 (= tp!865893 b_and!202185)))

(declare-fun b!2747174 () Bool)

(declare-fun b_free!77463 () Bool)

(declare-fun b_next!78167 () Bool)

(assert (=> b!2747174 (= b_free!77463 (not b_next!78167))))

(declare-fun tp!865903 () Bool)

(declare-fun b_and!202187 () Bool)

(assert (=> b!2747174 (= tp!865903 b_and!202187)))

(declare-fun b!2747176 () Bool)

(declare-fun b_free!77465 () Bool)

(declare-fun b_next!78169 () Bool)

(assert (=> b!2747176 (= b_free!77465 (not b_next!78169))))

(declare-fun tp!865906 () Bool)

(declare-fun b_and!202189 () Bool)

(assert (=> b!2747176 (= tp!865906 b_and!202189)))

(declare-fun b_free!77467 () Bool)

(declare-fun b_next!78171 () Bool)

(assert (=> b!2747176 (= b_free!77467 (not b_next!78171))))

(declare-fun tp!865892 () Bool)

(declare-fun b_and!202191 () Bool)

(assert (=> b!2747176 (= tp!865892 b_and!202191)))

(declare-fun b!2747173 () Bool)

(declare-fun e!1731031 () Bool)

(declare-fun tp!865894 () Bool)

(declare-fun mapRes!16556 () Bool)

(assert (=> b!2747173 (= e!1731031 (and tp!865894 mapRes!16556))))

(declare-fun condMapEmpty!16555 () Bool)

(declare-datatypes ((C!16172 0))(
  ( (C!16173 (val!10020 Int)) )
))
(declare-datatypes ((Regex!8007 0))(
  ( (ElementMatch!8007 (c!444896 C!16172)) (Concat!13081 (regOne!16526 Regex!8007) (regTwo!16526 Regex!8007)) (EmptyExpr!8007) (Star!8007 (reg!8336 Regex!8007)) (EmptyLang!8007) (Union!8007 (regOne!16527 Regex!8007) (regTwo!16527 Regex!8007)) )
))
(declare-datatypes ((List!31766 0))(
  ( (Nil!31666) (Cons!31666 (h!37086 Regex!8007) (t!227860 List!31766)) )
))
(declare-datatypes ((Context!4450 0))(
  ( (Context!4451 (exprs!2725 List!31766)) )
))
(declare-datatypes ((tuple2!31508 0))(
  ( (tuple2!31509 (_1!18448 Context!4450) (_2!18448 C!16172)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31510 0))(
  ( (tuple2!31511 (_1!18449 tuple2!31508) (_2!18449 (InoxSet Context!4450))) )
))
(declare-datatypes ((List!31767 0))(
  ( (Nil!31667) (Cons!31667 (h!37087 tuple2!31510) (t!227861 List!31767)) )
))
(declare-datatypes ((array!12923 0))(
  ( (array!12924 (arr!5767 (Array (_ BitVec 32) List!31767)) (size!24448 (_ BitVec 32))) )
))
(declare-datatypes ((array!12925 0))(
  ( (array!12926 (arr!5768 (Array (_ BitVec 32) (_ BitVec 64))) (size!24449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7254 0))(
  ( (LongMapFixedSize!7255 (defaultEntry!4012 Int) (mask!9367 (_ BitVec 32)) (extraKeys!3876 (_ BitVec 32)) (zeroValue!3886 List!31767) (minValue!3886 List!31767) (_size!7297 (_ BitVec 32)) (_keys!3927 array!12925) (_values!3908 array!12923) (_vacant!3688 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14317 0))(
  ( (Cell!14318 (v!33290 LongMapFixedSize!7254)) )
))
(declare-datatypes ((MutLongMap!3627 0))(
  ( (LongMap!3627 (underlying!7457 Cell!14317)) (MutLongMapExt!3626 (__x!20505 Int)) )
))
(declare-datatypes ((Cell!14319 0))(
  ( (Cell!14320 (v!33291 MutLongMap!3627)) )
))
(declare-datatypes ((Hashable!3543 0))(
  ( (HashableExt!3542 (__x!20506 Int)) )
))
(declare-datatypes ((MutableMap!3533 0))(
  ( (MutableMapExt!3532 (__x!20507 Int)) (HashMap!3533 (underlying!7458 Cell!14319) (hashF!5575 Hashable!3543) (_size!7298 (_ BitVec 32)) (defaultValue!3704 Int)) )
))
(declare-datatypes ((CacheUp!2240 0))(
  ( (CacheUp!2241 (cache!3676 MutableMap!3533)) )
))
(declare-fun cacheUp!717 () CacheUp!2240)

(declare-fun mapDefault!16556 () List!31767)

(assert (=> b!2747173 (= condMapEmpty!16555 (= (arr!5767 (_values!3908 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31767)) mapDefault!16556)))))

(declare-fun e!1731036 () Bool)

(declare-datatypes ((tuple3!4448 0))(
  ( (tuple3!4449 (_1!18450 Regex!8007) (_2!18450 Context!4450) (_3!2694 C!16172)) )
))
(declare-datatypes ((tuple2!31512 0))(
  ( (tuple2!31513 (_1!18451 tuple3!4448) (_2!18451 (InoxSet Context!4450))) )
))
(declare-datatypes ((List!31768 0))(
  ( (Nil!31668) (Cons!31668 (h!37088 tuple2!31512) (t!227862 List!31768)) )
))
(declare-datatypes ((array!12927 0))(
  ( (array!12928 (arr!5769 (Array (_ BitVec 32) List!31768)) (size!24450 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7256 0))(
  ( (LongMapFixedSize!7257 (defaultEntry!4013 Int) (mask!9368 (_ BitVec 32)) (extraKeys!3877 (_ BitVec 32)) (zeroValue!3887 List!31768) (minValue!3887 List!31768) (_size!7299 (_ BitVec 32)) (_keys!3928 array!12925) (_values!3909 array!12927) (_vacant!3689 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14321 0))(
  ( (Cell!14322 (v!33292 LongMapFixedSize!7256)) )
))
(declare-datatypes ((MutLongMap!3628 0))(
  ( (LongMap!3628 (underlying!7459 Cell!14321)) (MutLongMapExt!3627 (__x!20508 Int)) )
))
(declare-datatypes ((Cell!14323 0))(
  ( (Cell!14324 (v!33293 MutLongMap!3628)) )
))
(declare-datatypes ((Hashable!3544 0))(
  ( (HashableExt!3543 (__x!20509 Int)) )
))
(declare-datatypes ((MutableMap!3534 0))(
  ( (MutableMapExt!3533 (__x!20510 Int)) (HashMap!3534 (underlying!7460 Cell!14323) (hashF!5576 Hashable!3544) (_size!7300 (_ BitVec 32)) (defaultValue!3705 Int)) )
))
(declare-datatypes ((CacheDown!2358 0))(
  ( (CacheDown!2359 (cache!3677 MutableMap!3534)) )
))
(declare-fun cacheDown!730 () CacheDown!2358)

(declare-fun e!1731038 () Bool)

(declare-fun tp!865907 () Bool)

(declare-fun tp!865904 () Bool)

(declare-fun array_inv!4122 (array!12925) Bool)

(declare-fun array_inv!4123 (array!12927) Bool)

(assert (=> b!2747174 (= e!1731036 (and tp!865903 tp!865907 tp!865904 (array_inv!4122 (_keys!3928 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) (array_inv!4123 (_values!3909 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) e!1731038))))

(declare-fun mapIsEmpty!16555 () Bool)

(assert (=> mapIsEmpty!16555 mapRes!16556))

(declare-fun b!2747175 () Bool)

(declare-fun res!1152617 () Bool)

(declare-fun e!1731030 () Bool)

(assert (=> b!2747175 (=> (not res!1152617) (not e!1731030))))

(declare-fun valid!2812 (CacheDown!2358) Bool)

(assert (=> b!2747175 (= res!1152617 (valid!2812 cacheDown!730))))

(declare-fun e!1731034 () Bool)

(assert (=> b!2747176 (= e!1731034 (and tp!865906 tp!865892))))

(declare-fun mapNonEmpty!16555 () Bool)

(declare-fun tp!865898 () Bool)

(declare-fun tp!865895 () Bool)

(assert (=> mapNonEmpty!16555 (= mapRes!16556 (and tp!865898 tp!865895))))

(declare-fun mapRest!16555 () (Array (_ BitVec 32) List!31767))

(declare-fun mapValue!16555 () List!31767)

(declare-fun mapKey!16555 () (_ BitVec 32))

(assert (=> mapNonEmpty!16555 (= (arr!5767 (_values!3908 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) (store mapRest!16555 mapKey!16555 mapValue!16555))))

(declare-fun mapNonEmpty!16556 () Bool)

(declare-fun mapRes!16555 () Bool)

(declare-fun tp!865902 () Bool)

(declare-fun tp!865905 () Bool)

(assert (=> mapNonEmpty!16556 (= mapRes!16555 (and tp!865902 tp!865905))))

(declare-fun mapValue!16556 () List!31768)

(declare-fun mapRest!16556 () (Array (_ BitVec 32) List!31768))

(declare-fun mapKey!16556 () (_ BitVec 32))

(assert (=> mapNonEmpty!16556 (= (arr!5769 (_values!3909 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) (store mapRest!16556 mapKey!16556 mapValue!16556))))

(declare-fun b!2747178 () Bool)

(declare-fun e!1731037 () Bool)

(declare-fun e!1731021 () Bool)

(assert (=> b!2747178 (= e!1731037 e!1731021)))

(declare-fun tp!865901 () Bool)

(declare-fun tp!865899 () Bool)

(declare-fun array_inv!4124 (array!12923) Bool)

(assert (=> b!2747179 (= e!1731021 (and tp!865893 tp!865901 tp!865899 (array_inv!4122 (_keys!3927 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) (array_inv!4124 (_values!3908 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) e!1731031))))

(declare-fun b!2747180 () Bool)

(declare-datatypes ((List!31769 0))(
  ( (Nil!31669) (Cons!31669 (h!37089 C!16172) (t!227863 List!31769)) )
))
(declare-datatypes ((IArray!19795 0))(
  ( (IArray!19796 (innerList!9955 List!31769)) )
))
(declare-datatypes ((Conc!9895 0))(
  ( (Node!9895 (left!24256 Conc!9895) (right!24586 Conc!9895) (csize!20020 Int) (cheight!10106 Int)) (Leaf!15067 (xs!13002 IArray!19795) (csize!20021 Int)) (Empty!9895) )
))
(declare-datatypes ((BalanceConc!19404 0))(
  ( (BalanceConc!19405 (c!444897 Conc!9895)) )
))
(declare-datatypes ((List!31770 0))(
  ( (Nil!31670) (Cons!31670 (h!37090 (_ BitVec 16)) (t!227864 List!31770)) )
))
(declare-datatypes ((String!35275 0))(
  ( (String!35276 (value!155853 String)) )
))
(declare-datatypes ((TokenValue!5074 0))(
  ( (FloatLiteralValue!10148 (text!35963 List!31770)) (TokenValueExt!5073 (__x!20511 Int)) (Broken!25370 (value!155854 List!31770)) (Object!5173) (End!5074) (Def!5074) (Underscore!5074) (Match!5074) (Else!5074) (Error!5074) (Case!5074) (If!5074) (Extends!5074) (Abstract!5074) (Class!5074) (Val!5074) (DelimiterValue!10148 (del!5134 List!31770)) (KeywordValue!5080 (value!155855 List!31770)) (CommentValue!10148 (value!155856 List!31770)) (WhitespaceValue!10148 (value!155857 List!31770)) (IndentationValue!5074 (value!155858 List!31770)) (String!35277) (Int32!5074) (Broken!25371 (value!155859 List!31770)) (Boolean!5075) (Unit!45544) (OperatorValue!5077 (op!5134 List!31770)) (IdentifierValue!10148 (value!155860 List!31770)) (IdentifierValue!10149 (value!155861 List!31770)) (WhitespaceValue!10149 (value!155862 List!31770)) (True!10148) (False!10148) (Broken!25372 (value!155863 List!31770)) (Broken!25373 (value!155864 List!31770)) (True!10149) (RightBrace!5074) (RightBracket!5074) (Colon!5074) (Null!5074) (Comma!5074) (LeftBracket!5074) (False!10149) (LeftBrace!5074) (ImaginaryLiteralValue!5074 (text!35964 List!31770)) (StringLiteralValue!15222 (value!155865 List!31770)) (EOFValue!5074 (value!155866 List!31770)) (IdentValue!5074 (value!155867 List!31770)) (DelimiterValue!10149 (value!155868 List!31770)) (DedentValue!5074 (value!155869 List!31770)) (NewLineValue!5074 (value!155870 List!31770)) (IntegerValue!15222 (value!155871 (_ BitVec 32)) (text!35965 List!31770)) (IntegerValue!15223 (value!155872 Int) (text!35966 List!31770)) (Times!5074) (Or!5074) (Equal!5074) (Minus!5074) (Broken!25374 (value!155873 List!31770)) (And!5074) (Div!5074) (LessEqual!5074) (Mod!5074) (Concat!13082) (Not!5074) (Plus!5074) (SpaceValue!5074 (value!155874 List!31770)) (IntegerValue!15224 (value!155875 Int) (text!35967 List!31770)) (StringLiteralValue!15223 (text!35968 List!31770)) (FloatLiteralValue!10149 (text!35969 List!31770)) (BytesLiteralValue!5074 (value!155876 List!31770)) (CommentValue!10149 (value!155877 List!31770)) (StringLiteralValue!15224 (value!155878 List!31770)) (ErrorTokenValue!5074 (msg!5135 List!31770)) )
))
(declare-datatypes ((TokenValueInjection!9588 0))(
  ( (TokenValueInjection!9589 (toValue!6850 Int) (toChars!6709 Int)) )
))
(declare-datatypes ((Rule!9504 0))(
  ( (Rule!9505 (regex!4852 Regex!8007) (tag!5356 String!35275) (isSeparator!4852 Bool) (transformation!4852 TokenValueInjection!9588)) )
))
(declare-fun rule!196 () Rule!9504)

(declare-fun validRegex!3317 (Regex!8007) Bool)

(assert (=> b!2747180 (= e!1731030 (not (validRegex!3317 (regex!4852 rule!196))))))

(declare-fun e!1731024 () Bool)

(declare-fun b!2747181 () Bool)

(declare-fun tp!865897 () Bool)

(declare-fun inv!43021 (String!35275) Bool)

(declare-fun inv!43025 (TokenValueInjection!9588) Bool)

(assert (=> b!2747181 (= e!1731024 (and tp!865897 (inv!43021 (tag!5356 rule!196)) (inv!43025 (transformation!4852 rule!196)) e!1731034))))

(declare-fun e!1731023 () Bool)

(declare-fun e!1731025 () Bool)

(assert (=> b!2747182 (= e!1731023 (and e!1731025 tp!865908))))

(declare-fun b!2747183 () Bool)

(declare-fun e!1731035 () Bool)

(declare-fun e!1731020 () Bool)

(assert (=> b!2747183 (= e!1731035 e!1731020)))

(declare-fun b!2747184 () Bool)

(declare-fun res!1152619 () Bool)

(assert (=> b!2747184 (=> (not res!1152619) (not e!1731030))))

(declare-fun valid!2813 (CacheUp!2240) Bool)

(assert (=> b!2747184 (= res!1152619 (valid!2813 cacheUp!717))))

(declare-fun mapIsEmpty!16556 () Bool)

(assert (=> mapIsEmpty!16556 mapRes!16555))

(declare-fun b!2747185 () Bool)

(declare-fun res!1152620 () Bool)

(assert (=> b!2747185 (=> (not res!1152620) (not e!1731030))))

(declare-datatypes ((LexerInterface!4445 0))(
  ( (LexerInterfaceExt!4442 (__x!20512 Int)) (Lexer!4443) )
))
(declare-fun thiss!16130 () LexerInterface!4445)

(declare-fun ruleValid!1592 (LexerInterface!4445 Rule!9504) Bool)

(assert (=> b!2747185 (= res!1152620 (ruleValid!1592 thiss!16130 rule!196))))

(declare-fun b!2747186 () Bool)

(declare-fun e!1731026 () Bool)

(declare-fun e!1731028 () Bool)

(declare-fun lt!971866 () MutLongMap!3627)

(get-info :version)

(assert (=> b!2747186 (= e!1731026 (and e!1731028 ((_ is LongMap!3627) lt!971866)))))

(assert (=> b!2747186 (= lt!971866 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))

(declare-fun res!1152618 () Bool)

(assert (=> start!266324 (=> (not res!1152618) (not e!1731030))))

(assert (=> start!266324 (= res!1152618 ((_ is Lexer!4443) thiss!16130))))

(assert (=> start!266324 e!1731030))

(assert (=> start!266324 true))

(assert (=> start!266324 e!1731024))

(declare-fun e!1731027 () Bool)

(declare-fun inv!43026 (CacheUp!2240) Bool)

(assert (=> start!266324 (and (inv!43026 cacheUp!717) e!1731027)))

(declare-fun e!1731029 () Bool)

(declare-fun inv!43027 (CacheDown!2358) Bool)

(assert (=> start!266324 (and (inv!43027 cacheDown!730) e!1731029)))

(declare-fun b!2747177 () Bool)

(declare-fun tp!865900 () Bool)

(assert (=> b!2747177 (= e!1731038 (and tp!865900 mapRes!16555))))

(declare-fun condMapEmpty!16556 () Bool)

(declare-fun mapDefault!16555 () List!31768)

(assert (=> b!2747177 (= condMapEmpty!16556 (= (arr!5769 (_values!3909 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31768)) mapDefault!16555)))))

(declare-fun b!2747187 () Bool)

(declare-fun e!1731019 () Bool)

(assert (=> b!2747187 (= e!1731027 e!1731019)))

(declare-fun b!2747188 () Bool)

(assert (=> b!2747188 (= e!1731029 e!1731023)))

(declare-fun b!2747189 () Bool)

(assert (=> b!2747189 (= e!1731020 e!1731036)))

(declare-fun b!2747190 () Bool)

(assert (=> b!2747190 (= e!1731028 e!1731037)))

(declare-fun b!2747191 () Bool)

(declare-fun lt!971865 () MutLongMap!3628)

(assert (=> b!2747191 (= e!1731025 (and e!1731035 ((_ is LongMap!3628) lt!971865)))))

(assert (=> b!2747191 (= lt!971865 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))

(assert (=> b!2747192 (= e!1731019 (and e!1731026 tp!865896))))

(assert (= (and start!266324 res!1152618) b!2747185))

(assert (= (and b!2747185 res!1152620) b!2747184))

(assert (= (and b!2747184 res!1152619) b!2747175))

(assert (= (and b!2747175 res!1152617) b!2747180))

(assert (= b!2747181 b!2747176))

(assert (= start!266324 b!2747181))

(assert (= (and b!2747173 condMapEmpty!16555) mapIsEmpty!16555))

(assert (= (and b!2747173 (not condMapEmpty!16555)) mapNonEmpty!16555))

(assert (= b!2747179 b!2747173))

(assert (= b!2747178 b!2747179))

(assert (= b!2747190 b!2747178))

(assert (= (and b!2747186 ((_ is LongMap!3627) (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))) b!2747190))

(assert (= b!2747192 b!2747186))

(assert (= (and b!2747187 ((_ is HashMap!3533) (cache!3676 cacheUp!717))) b!2747192))

(assert (= start!266324 b!2747187))

(assert (= (and b!2747177 condMapEmpty!16556) mapIsEmpty!16556))

(assert (= (and b!2747177 (not condMapEmpty!16556)) mapNonEmpty!16556))

(assert (= b!2747174 b!2747177))

(assert (= b!2747189 b!2747174))

(assert (= b!2747183 b!2747189))

(assert (= (and b!2747191 ((_ is LongMap!3628) (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))) b!2747183))

(assert (= b!2747182 b!2747191))

(assert (= (and b!2747188 ((_ is HashMap!3534) (cache!3677 cacheDown!730))) b!2747182))

(assert (= start!266324 b!2747188))

(declare-fun m!3163385 () Bool)

(assert (=> b!2747179 m!3163385))

(declare-fun m!3163387 () Bool)

(assert (=> b!2747179 m!3163387))

(declare-fun m!3163389 () Bool)

(assert (=> mapNonEmpty!16556 m!3163389))

(declare-fun m!3163391 () Bool)

(assert (=> b!2747180 m!3163391))

(declare-fun m!3163393 () Bool)

(assert (=> b!2747185 m!3163393))

(declare-fun m!3163395 () Bool)

(assert (=> mapNonEmpty!16555 m!3163395))

(declare-fun m!3163397 () Bool)

(assert (=> b!2747181 m!3163397))

(declare-fun m!3163399 () Bool)

(assert (=> b!2747181 m!3163399))

(declare-fun m!3163401 () Bool)

(assert (=> b!2747175 m!3163401))

(declare-fun m!3163403 () Bool)

(assert (=> b!2747184 m!3163403))

(declare-fun m!3163405 () Bool)

(assert (=> b!2747174 m!3163405))

(declare-fun m!3163407 () Bool)

(assert (=> b!2747174 m!3163407))

(declare-fun m!3163409 () Bool)

(assert (=> start!266324 m!3163409))

(declare-fun m!3163411 () Bool)

(assert (=> start!266324 m!3163411))

(check-sat (not start!266324) (not b!2747174) (not b_next!78169) (not b!2747173) b_and!202185 (not b!2747175) (not b_next!78167) (not b!2747181) b_and!202183 (not b_next!78161) (not b!2747180) (not b_next!78171) (not mapNonEmpty!16555) (not b_next!78163) b_and!202189 b_and!202181 (not b!2747184) (not b_next!78165) (not mapNonEmpty!16556) (not b!2747185) (not b!2747179) (not b!2747177) b_and!202191 b_and!202187)
(check-sat (not b_next!78171) (not b_next!78169) (not b_next!78163) b_and!202185 (not b_next!78165) (not b_next!78167) b_and!202183 (not b_next!78161) b_and!202189 b_and!202181 b_and!202191 b_and!202187)
(get-model)

(declare-fun d!796172 () Bool)

(declare-fun res!1152625 () Bool)

(declare-fun e!1731041 () Bool)

(assert (=> d!796172 (=> (not res!1152625) (not e!1731041))))

(assert (=> d!796172 (= res!1152625 ((_ is HashMap!3533) (cache!3676 cacheUp!717)))))

(assert (=> d!796172 (= (inv!43026 cacheUp!717) e!1731041)))

(declare-fun b!2747195 () Bool)

(declare-fun validCacheMapUp!342 (MutableMap!3533) Bool)

(assert (=> b!2747195 (= e!1731041 (validCacheMapUp!342 (cache!3676 cacheUp!717)))))

(assert (= (and d!796172 res!1152625) b!2747195))

(declare-fun m!3163413 () Bool)

(assert (=> b!2747195 m!3163413))

(assert (=> start!266324 d!796172))

(declare-fun d!796174 () Bool)

(declare-fun res!1152628 () Bool)

(declare-fun e!1731044 () Bool)

(assert (=> d!796174 (=> (not res!1152628) (not e!1731044))))

(assert (=> d!796174 (= res!1152628 ((_ is HashMap!3534) (cache!3677 cacheDown!730)))))

(assert (=> d!796174 (= (inv!43027 cacheDown!730) e!1731044)))

(declare-fun b!2747198 () Bool)

(declare-fun validCacheMapDown!373 (MutableMap!3534) Bool)

(assert (=> b!2747198 (= e!1731044 (validCacheMapDown!373 (cache!3677 cacheDown!730)))))

(assert (= (and d!796174 res!1152628) b!2747198))

(declare-fun m!3163415 () Bool)

(assert (=> b!2747198 m!3163415))

(assert (=> start!266324 d!796174))

(declare-fun d!796176 () Bool)

(assert (=> d!796176 (= (array_inv!4122 (_keys!3927 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) (bvsge (size!24449 (_keys!3927 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747179 d!796176))

(declare-fun d!796178 () Bool)

(assert (=> d!796178 (= (array_inv!4124 (_values!3908 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) (bvsge (size!24448 (_values!3908 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747179 d!796178))

(declare-fun d!796180 () Bool)

(assert (=> d!796180 (= (valid!2813 cacheUp!717) (validCacheMapUp!342 (cache!3676 cacheUp!717)))))

(declare-fun bs!490307 () Bool)

(assert (= bs!490307 d!796180))

(assert (=> bs!490307 m!3163413))

(assert (=> b!2747184 d!796180))

(declare-fun d!796182 () Bool)

(assert (=> d!796182 (= (inv!43021 (tag!5356 rule!196)) (= (mod (str.len (value!155853 (tag!5356 rule!196))) 2) 0))))

(assert (=> b!2747181 d!796182))

(declare-fun d!796184 () Bool)

(declare-fun res!1152631 () Bool)

(declare-fun e!1731047 () Bool)

(assert (=> d!796184 (=> (not res!1152631) (not e!1731047))))

(declare-fun semiInverseModEq!2004 (Int Int) Bool)

(assert (=> d!796184 (= res!1152631 (semiInverseModEq!2004 (toChars!6709 (transformation!4852 rule!196)) (toValue!6850 (transformation!4852 rule!196))))))

(assert (=> d!796184 (= (inv!43025 (transformation!4852 rule!196)) e!1731047)))

(declare-fun b!2747201 () Bool)

(declare-fun equivClasses!1905 (Int Int) Bool)

(assert (=> b!2747201 (= e!1731047 (equivClasses!1905 (toChars!6709 (transformation!4852 rule!196)) (toValue!6850 (transformation!4852 rule!196))))))

(assert (= (and d!796184 res!1152631) b!2747201))

(declare-fun m!3163417 () Bool)

(assert (=> d!796184 m!3163417))

(declare-fun m!3163419 () Bool)

(assert (=> b!2747201 m!3163419))

(assert (=> b!2747181 d!796184))

(declare-fun d!796186 () Bool)

(declare-fun res!1152636 () Bool)

(declare-fun e!1731050 () Bool)

(assert (=> d!796186 (=> (not res!1152636) (not e!1731050))))

(assert (=> d!796186 (= res!1152636 (validRegex!3317 (regex!4852 rule!196)))))

(assert (=> d!796186 (= (ruleValid!1592 thiss!16130 rule!196) e!1731050)))

(declare-fun b!2747206 () Bool)

(declare-fun res!1152637 () Bool)

(assert (=> b!2747206 (=> (not res!1152637) (not e!1731050))))

(declare-fun nullable!2608 (Regex!8007) Bool)

(assert (=> b!2747206 (= res!1152637 (not (nullable!2608 (regex!4852 rule!196))))))

(declare-fun b!2747207 () Bool)

(assert (=> b!2747207 (= e!1731050 (not (= (tag!5356 rule!196) (String!35276 ""))))))

(assert (= (and d!796186 res!1152636) b!2747206))

(assert (= (and b!2747206 res!1152637) b!2747207))

(assert (=> d!796186 m!3163391))

(declare-fun m!3163421 () Bool)

(assert (=> b!2747206 m!3163421))

(assert (=> b!2747185 d!796186))

(declare-fun b!2747226 () Bool)

(declare-fun e!1731065 () Bool)

(declare-fun call!177432 () Bool)

(assert (=> b!2747226 (= e!1731065 call!177432)))

(declare-fun b!2747227 () Bool)

(declare-fun e!1731068 () Bool)

(declare-fun e!1731067 () Bool)

(assert (=> b!2747227 (= e!1731068 e!1731067)))

(declare-fun c!444903 () Bool)

(assert (=> b!2747227 (= c!444903 ((_ is Union!8007) (regex!4852 rule!196)))))

(declare-fun c!444902 () Bool)

(declare-fun bm!177426 () Bool)

(declare-fun call!177431 () Bool)

(assert (=> bm!177426 (= call!177431 (validRegex!3317 (ite c!444902 (reg!8336 (regex!4852 rule!196)) (ite c!444903 (regTwo!16527 (regex!4852 rule!196)) (regTwo!16526 (regex!4852 rule!196))))))))

(declare-fun b!2747228 () Bool)

(declare-fun e!1731070 () Bool)

(assert (=> b!2747228 (= e!1731068 e!1731070)))

(declare-fun res!1152648 () Bool)

(assert (=> b!2747228 (= res!1152648 (not (nullable!2608 (reg!8336 (regex!4852 rule!196)))))))

(assert (=> b!2747228 (=> (not res!1152648) (not e!1731070))))

(declare-fun bm!177427 () Bool)

(declare-fun call!177433 () Bool)

(assert (=> bm!177427 (= call!177433 (validRegex!3317 (ite c!444903 (regOne!16527 (regex!4852 rule!196)) (regOne!16526 (regex!4852 rule!196)))))))

(declare-fun b!2747229 () Bool)

(declare-fun e!1731069 () Bool)

(assert (=> b!2747229 (= e!1731069 e!1731068)))

(assert (=> b!2747229 (= c!444902 ((_ is Star!8007) (regex!4852 rule!196)))))

(declare-fun b!2747230 () Bool)

(declare-fun res!1152651 () Bool)

(declare-fun e!1731071 () Bool)

(assert (=> b!2747230 (=> res!1152651 e!1731071)))

(assert (=> b!2747230 (= res!1152651 (not ((_ is Concat!13081) (regex!4852 rule!196))))))

(assert (=> b!2747230 (= e!1731067 e!1731071)))

(declare-fun d!796188 () Bool)

(declare-fun res!1152652 () Bool)

(assert (=> d!796188 (=> res!1152652 e!1731069)))

(assert (=> d!796188 (= res!1152652 ((_ is ElementMatch!8007) (regex!4852 rule!196)))))

(assert (=> d!796188 (= (validRegex!3317 (regex!4852 rule!196)) e!1731069)))

(declare-fun b!2747231 () Bool)

(declare-fun e!1731066 () Bool)

(assert (=> b!2747231 (= e!1731071 e!1731066)))

(declare-fun res!1152649 () Bool)

(assert (=> b!2747231 (=> (not res!1152649) (not e!1731066))))

(assert (=> b!2747231 (= res!1152649 call!177433)))

(declare-fun bm!177428 () Bool)

(assert (=> bm!177428 (= call!177432 call!177431)))

(declare-fun b!2747232 () Bool)

(declare-fun res!1152650 () Bool)

(assert (=> b!2747232 (=> (not res!1152650) (not e!1731065))))

(assert (=> b!2747232 (= res!1152650 call!177433)))

(assert (=> b!2747232 (= e!1731067 e!1731065)))

(declare-fun b!2747233 () Bool)

(assert (=> b!2747233 (= e!1731070 call!177431)))

(declare-fun b!2747234 () Bool)

(assert (=> b!2747234 (= e!1731066 call!177432)))

(assert (= (and d!796188 (not res!1152652)) b!2747229))

(assert (= (and b!2747229 c!444902) b!2747228))

(assert (= (and b!2747229 (not c!444902)) b!2747227))

(assert (= (and b!2747228 res!1152648) b!2747233))

(assert (= (and b!2747227 c!444903) b!2747232))

(assert (= (and b!2747227 (not c!444903)) b!2747230))

(assert (= (and b!2747232 res!1152650) b!2747226))

(assert (= (and b!2747230 (not res!1152651)) b!2747231))

(assert (= (and b!2747231 res!1152649) b!2747234))

(assert (= (or b!2747232 b!2747231) bm!177427))

(assert (= (or b!2747226 b!2747234) bm!177428))

(assert (= (or b!2747233 bm!177428) bm!177426))

(declare-fun m!3163423 () Bool)

(assert (=> bm!177426 m!3163423))

(declare-fun m!3163425 () Bool)

(assert (=> b!2747228 m!3163425))

(declare-fun m!3163427 () Bool)

(assert (=> bm!177427 m!3163427))

(assert (=> b!2747180 d!796188))

(declare-fun d!796190 () Bool)

(assert (=> d!796190 (= (array_inv!4122 (_keys!3928 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) (bvsge (size!24449 (_keys!3928 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747174 d!796190))

(declare-fun d!796192 () Bool)

(assert (=> d!796192 (= (array_inv!4123 (_values!3909 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) (bvsge (size!24450 (_values!3909 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747174 d!796192))

(declare-fun d!796194 () Bool)

(assert (=> d!796194 (= (valid!2812 cacheDown!730) (validCacheMapDown!373 (cache!3677 cacheDown!730)))))

(declare-fun bs!490308 () Bool)

(assert (= bs!490308 d!796194))

(assert (=> bs!490308 m!3163415))

(assert (=> b!2747175 d!796194))

(declare-fun setNonEmpty!21753 () Bool)

(declare-fun setRes!21753 () Bool)

(declare-fun tp!865920 () Bool)

(declare-fun setElem!21753 () Context!4450)

(declare-fun e!1731078 () Bool)

(declare-fun inv!43028 (Context!4450) Bool)

(assert (=> setNonEmpty!21753 (= setRes!21753 (and tp!865920 (inv!43028 setElem!21753) e!1731078))))

(declare-fun setRest!21753 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21753 (= (_2!18449 (h!37087 (zeroValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21753 true) setRest!21753))))

(declare-fun b!2747243 () Bool)

(declare-fun e!1731079 () Bool)

(declare-fun tp!865919 () Bool)

(assert (=> b!2747243 (= e!1731079 tp!865919)))

(declare-fun b!2747244 () Bool)

(declare-fun tp_is_empty!13939 () Bool)

(declare-fun e!1731080 () Bool)

(declare-fun tp!865918 () Bool)

(assert (=> b!2747244 (= e!1731080 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 (zeroValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))))) e!1731079 tp_is_empty!13939 setRes!21753 tp!865918))))

(declare-fun condSetEmpty!21753 () Bool)

(assert (=> b!2747244 (= condSetEmpty!21753 (= (_2!18449 (h!37087 (zeroValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun b!2747245 () Bool)

(declare-fun tp!865917 () Bool)

(assert (=> b!2747245 (= e!1731078 tp!865917)))

(assert (=> b!2747179 (= tp!865901 e!1731080)))

(declare-fun setIsEmpty!21753 () Bool)

(assert (=> setIsEmpty!21753 setRes!21753))

(assert (= b!2747244 b!2747243))

(assert (= (and b!2747244 condSetEmpty!21753) setIsEmpty!21753))

(assert (= (and b!2747244 (not condSetEmpty!21753)) setNonEmpty!21753))

(assert (= setNonEmpty!21753 b!2747245))

(assert (= (and b!2747179 ((_ is Cons!31667) (zeroValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) b!2747244))

(declare-fun m!3163429 () Bool)

(assert (=> setNonEmpty!21753 m!3163429))

(declare-fun m!3163431 () Bool)

(assert (=> b!2747244 m!3163431))

(declare-fun setRes!21754 () Bool)

(declare-fun e!1731081 () Bool)

(declare-fun tp!865924 () Bool)

(declare-fun setElem!21754 () Context!4450)

(declare-fun setNonEmpty!21754 () Bool)

(assert (=> setNonEmpty!21754 (= setRes!21754 (and tp!865924 (inv!43028 setElem!21754) e!1731081))))

(declare-fun setRest!21754 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21754 (= (_2!18449 (h!37087 (minValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21754 true) setRest!21754))))

(declare-fun b!2747246 () Bool)

(declare-fun e!1731082 () Bool)

(declare-fun tp!865923 () Bool)

(assert (=> b!2747246 (= e!1731082 tp!865923)))

(declare-fun e!1731083 () Bool)

(declare-fun b!2747247 () Bool)

(declare-fun tp!865922 () Bool)

(assert (=> b!2747247 (= e!1731083 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 (minValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))))) e!1731082 tp_is_empty!13939 setRes!21754 tp!865922))))

(declare-fun condSetEmpty!21754 () Bool)

(assert (=> b!2747247 (= condSetEmpty!21754 (= (_2!18449 (h!37087 (minValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun b!2747248 () Bool)

(declare-fun tp!865921 () Bool)

(assert (=> b!2747248 (= e!1731081 tp!865921)))

(assert (=> b!2747179 (= tp!865899 e!1731083)))

(declare-fun setIsEmpty!21754 () Bool)

(assert (=> setIsEmpty!21754 setRes!21754))

(assert (= b!2747247 b!2747246))

(assert (= (and b!2747247 condSetEmpty!21754) setIsEmpty!21754))

(assert (= (and b!2747247 (not condSetEmpty!21754)) setNonEmpty!21754))

(assert (= setNonEmpty!21754 b!2747248))

(assert (= (and b!2747179 ((_ is Cons!31667) (minValue!3886 (v!33290 (underlying!7457 (v!33291 (underlying!7458 (cache!3676 cacheUp!717)))))))) b!2747247))

(declare-fun m!3163433 () Bool)

(assert (=> setNonEmpty!21754 m!3163433))

(declare-fun m!3163435 () Bool)

(assert (=> b!2747247 m!3163435))

(declare-fun b!2747259 () Bool)

(declare-fun e!1731086 () Bool)

(assert (=> b!2747259 (= e!1731086 tp_is_empty!13939)))

(assert (=> b!2747181 (= tp!865897 e!1731086)))

(declare-fun b!2747260 () Bool)

(declare-fun tp!865935 () Bool)

(declare-fun tp!865938 () Bool)

(assert (=> b!2747260 (= e!1731086 (and tp!865935 tp!865938))))

(declare-fun b!2747261 () Bool)

(declare-fun tp!865936 () Bool)

(assert (=> b!2747261 (= e!1731086 tp!865936)))

(declare-fun b!2747262 () Bool)

(declare-fun tp!865937 () Bool)

(declare-fun tp!865939 () Bool)

(assert (=> b!2747262 (= e!1731086 (and tp!865937 tp!865939))))

(assert (= (and b!2747181 ((_ is ElementMatch!8007) (regex!4852 rule!196))) b!2747259))

(assert (= (and b!2747181 ((_ is Concat!13081) (regex!4852 rule!196))) b!2747260))

(assert (= (and b!2747181 ((_ is Star!8007) (regex!4852 rule!196))) b!2747261))

(assert (= (and b!2747181 ((_ is Union!8007) (regex!4852 rule!196))) b!2747262))

(declare-fun setRes!21755 () Bool)

(declare-fun e!1731087 () Bool)

(declare-fun tp!865943 () Bool)

(declare-fun setNonEmpty!21755 () Bool)

(declare-fun setElem!21755 () Context!4450)

(assert (=> setNonEmpty!21755 (= setRes!21755 (and tp!865943 (inv!43028 setElem!21755) e!1731087))))

(declare-fun setRest!21755 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21755 (= (_2!18449 (h!37087 mapDefault!16556)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21755 true) setRest!21755))))

(declare-fun b!2747263 () Bool)

(declare-fun e!1731088 () Bool)

(declare-fun tp!865942 () Bool)

(assert (=> b!2747263 (= e!1731088 tp!865942)))

(declare-fun tp!865941 () Bool)

(declare-fun e!1731089 () Bool)

(declare-fun b!2747264 () Bool)

(assert (=> b!2747264 (= e!1731089 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 mapDefault!16556)))) e!1731088 tp_is_empty!13939 setRes!21755 tp!865941))))

(declare-fun condSetEmpty!21755 () Bool)

(assert (=> b!2747264 (= condSetEmpty!21755 (= (_2!18449 (h!37087 mapDefault!16556)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun b!2747265 () Bool)

(declare-fun tp!865940 () Bool)

(assert (=> b!2747265 (= e!1731087 tp!865940)))

(assert (=> b!2747173 (= tp!865894 e!1731089)))

(declare-fun setIsEmpty!21755 () Bool)

(assert (=> setIsEmpty!21755 setRes!21755))

(assert (= b!2747264 b!2747263))

(assert (= (and b!2747264 condSetEmpty!21755) setIsEmpty!21755))

(assert (= (and b!2747264 (not condSetEmpty!21755)) setNonEmpty!21755))

(assert (= setNonEmpty!21755 b!2747265))

(assert (= (and b!2747173 ((_ is Cons!31667) mapDefault!16556)) b!2747264))

(declare-fun m!3163437 () Bool)

(assert (=> setNonEmpty!21755 m!3163437))

(declare-fun m!3163439 () Bool)

(assert (=> b!2747264 m!3163439))

(declare-fun e!1731104 () Bool)

(declare-fun mapDefault!16559 () List!31767)

(declare-fun e!1731103 () Bool)

(declare-fun b!2747280 () Bool)

(declare-fun tp!865963 () Bool)

(declare-fun setRes!21760 () Bool)

(assert (=> b!2747280 (= e!1731103 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 mapDefault!16559)))) e!1731104 tp_is_empty!13939 setRes!21760 tp!865963))))

(declare-fun condSetEmpty!21761 () Bool)

(assert (=> b!2747280 (= condSetEmpty!21761 (= (_2!18449 (h!37087 mapDefault!16559)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun condMapEmpty!16559 () Bool)

(assert (=> mapNonEmpty!16555 (= condMapEmpty!16559 (= mapRest!16555 ((as const (Array (_ BitVec 32) List!31767)) mapDefault!16559)))))

(declare-fun mapRes!16559 () Bool)

(assert (=> mapNonEmpty!16555 (= tp!865898 (and e!1731103 mapRes!16559))))

(declare-fun b!2747281 () Bool)

(declare-fun setRes!21761 () Bool)

(declare-fun tp!865970 () Bool)

(declare-fun e!1731105 () Bool)

(declare-fun e!1731102 () Bool)

(declare-fun mapValue!16559 () List!31767)

(assert (=> b!2747281 (= e!1731105 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 mapValue!16559)))) e!1731102 tp_is_empty!13939 setRes!21761 tp!865970))))

(declare-fun condSetEmpty!21760 () Bool)

(assert (=> b!2747281 (= condSetEmpty!21760 (= (_2!18449 (h!37087 mapValue!16559)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun mapIsEmpty!16559 () Bool)

(assert (=> mapIsEmpty!16559 mapRes!16559))

(declare-fun tp!865969 () Bool)

(declare-fun e!1731107 () Bool)

(declare-fun setElem!21761 () Context!4450)

(declare-fun setNonEmpty!21760 () Bool)

(assert (=> setNonEmpty!21760 (= setRes!21761 (and tp!865969 (inv!43028 setElem!21761) e!1731107))))

(declare-fun setRest!21760 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21760 (= (_2!18449 (h!37087 mapValue!16559)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21761 true) setRest!21760))))

(declare-fun setIsEmpty!21760 () Bool)

(assert (=> setIsEmpty!21760 setRes!21761))

(declare-fun tp!865965 () Bool)

(declare-fun setElem!21760 () Context!4450)

(declare-fun setNonEmpty!21761 () Bool)

(declare-fun e!1731106 () Bool)

(assert (=> setNonEmpty!21761 (= setRes!21760 (and tp!865965 (inv!43028 setElem!21760) e!1731106))))

(declare-fun setRest!21761 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21761 (= (_2!18449 (h!37087 mapDefault!16559)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21760 true) setRest!21761))))

(declare-fun b!2747282 () Bool)

(declare-fun tp!865968 () Bool)

(assert (=> b!2747282 (= e!1731106 tp!865968)))

(declare-fun b!2747283 () Bool)

(declare-fun tp!865962 () Bool)

(assert (=> b!2747283 (= e!1731107 tp!865962)))

(declare-fun mapNonEmpty!16559 () Bool)

(declare-fun tp!865964 () Bool)

(assert (=> mapNonEmpty!16559 (= mapRes!16559 (and tp!865964 e!1731105))))

(declare-fun mapKey!16559 () (_ BitVec 32))

(declare-fun mapRest!16559 () (Array (_ BitVec 32) List!31767))

(assert (=> mapNonEmpty!16559 (= mapRest!16555 (store mapRest!16559 mapKey!16559 mapValue!16559))))

(declare-fun b!2747284 () Bool)

(declare-fun tp!865966 () Bool)

(assert (=> b!2747284 (= e!1731102 tp!865966)))

(declare-fun b!2747285 () Bool)

(declare-fun tp!865967 () Bool)

(assert (=> b!2747285 (= e!1731104 tp!865967)))

(declare-fun setIsEmpty!21761 () Bool)

(assert (=> setIsEmpty!21761 setRes!21760))

(assert (= (and mapNonEmpty!16555 condMapEmpty!16559) mapIsEmpty!16559))

(assert (= (and mapNonEmpty!16555 (not condMapEmpty!16559)) mapNonEmpty!16559))

(assert (= b!2747281 b!2747284))

(assert (= (and b!2747281 condSetEmpty!21760) setIsEmpty!21760))

(assert (= (and b!2747281 (not condSetEmpty!21760)) setNonEmpty!21760))

(assert (= setNonEmpty!21760 b!2747283))

(assert (= (and mapNonEmpty!16559 ((_ is Cons!31667) mapValue!16559)) b!2747281))

(assert (= b!2747280 b!2747285))

(assert (= (and b!2747280 condSetEmpty!21761) setIsEmpty!21761))

(assert (= (and b!2747280 (not condSetEmpty!21761)) setNonEmpty!21761))

(assert (= setNonEmpty!21761 b!2747282))

(assert (= (and mapNonEmpty!16555 ((_ is Cons!31667) mapDefault!16559)) b!2747280))

(declare-fun m!3163441 () Bool)

(assert (=> mapNonEmpty!16559 m!3163441))

(declare-fun m!3163443 () Bool)

(assert (=> b!2747281 m!3163443))

(declare-fun m!3163445 () Bool)

(assert (=> b!2747280 m!3163445))

(declare-fun m!3163447 () Bool)

(assert (=> setNonEmpty!21761 m!3163447))

(declare-fun m!3163449 () Bool)

(assert (=> setNonEmpty!21760 m!3163449))

(declare-fun setRes!21762 () Bool)

(declare-fun setElem!21762 () Context!4450)

(declare-fun tp!865974 () Bool)

(declare-fun e!1731108 () Bool)

(declare-fun setNonEmpty!21762 () Bool)

(assert (=> setNonEmpty!21762 (= setRes!21762 (and tp!865974 (inv!43028 setElem!21762) e!1731108))))

(declare-fun setRest!21762 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21762 (= (_2!18449 (h!37087 mapValue!16555)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21762 true) setRest!21762))))

(declare-fun b!2747286 () Bool)

(declare-fun e!1731109 () Bool)

(declare-fun tp!865973 () Bool)

(assert (=> b!2747286 (= e!1731109 tp!865973)))

(declare-fun tp!865972 () Bool)

(declare-fun b!2747287 () Bool)

(declare-fun e!1731110 () Bool)

(assert (=> b!2747287 (= e!1731110 (and (inv!43028 (_1!18448 (_1!18449 (h!37087 mapValue!16555)))) e!1731109 tp_is_empty!13939 setRes!21762 tp!865972))))

(declare-fun condSetEmpty!21762 () Bool)

(assert (=> b!2747287 (= condSetEmpty!21762 (= (_2!18449 (h!37087 mapValue!16555)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun b!2747288 () Bool)

(declare-fun tp!865971 () Bool)

(assert (=> b!2747288 (= e!1731108 tp!865971)))

(assert (=> mapNonEmpty!16555 (= tp!865895 e!1731110)))

(declare-fun setIsEmpty!21762 () Bool)

(assert (=> setIsEmpty!21762 setRes!21762))

(assert (= b!2747287 b!2747286))

(assert (= (and b!2747287 condSetEmpty!21762) setIsEmpty!21762))

(assert (= (and b!2747287 (not condSetEmpty!21762)) setNonEmpty!21762))

(assert (= setNonEmpty!21762 b!2747288))

(assert (= (and mapNonEmpty!16555 ((_ is Cons!31667) mapValue!16555)) b!2747287))

(declare-fun m!3163451 () Bool)

(assert (=> setNonEmpty!21762 m!3163451))

(declare-fun m!3163453 () Bool)

(assert (=> b!2747287 m!3163453))

(declare-fun setRes!21765 () Bool)

(declare-fun e!1731117 () Bool)

(declare-fun tp!865987 () Bool)

(declare-fun b!2747297 () Bool)

(declare-fun tp!865985 () Bool)

(declare-fun e!1731119 () Bool)

(assert (=> b!2747297 (= e!1731119 (and tp!865985 (inv!43028 (_2!18450 (_1!18451 (h!37088 mapDefault!16555)))) e!1731117 tp_is_empty!13939 setRes!21765 tp!865987))))

(declare-fun condSetEmpty!21765 () Bool)

(assert (=> b!2747297 (= condSetEmpty!21765 (= (_2!18451 (h!37088 mapDefault!16555)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun setIsEmpty!21765 () Bool)

(assert (=> setIsEmpty!21765 setRes!21765))

(assert (=> b!2747177 (= tp!865900 e!1731119)))

(declare-fun e!1731118 () Bool)

(declare-fun setNonEmpty!21765 () Bool)

(declare-fun setElem!21765 () Context!4450)

(declare-fun tp!865986 () Bool)

(assert (=> setNonEmpty!21765 (= setRes!21765 (and tp!865986 (inv!43028 setElem!21765) e!1731118))))

(declare-fun setRest!21765 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21765 (= (_2!18451 (h!37088 mapDefault!16555)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21765 true) setRest!21765))))

(declare-fun b!2747298 () Bool)

(declare-fun tp!865988 () Bool)

(assert (=> b!2747298 (= e!1731118 tp!865988)))

(declare-fun b!2747299 () Bool)

(declare-fun tp!865989 () Bool)

(assert (=> b!2747299 (= e!1731117 tp!865989)))

(assert (= b!2747297 b!2747299))

(assert (= (and b!2747297 condSetEmpty!21765) setIsEmpty!21765))

(assert (= (and b!2747297 (not condSetEmpty!21765)) setNonEmpty!21765))

(assert (= setNonEmpty!21765 b!2747298))

(assert (= (and b!2747177 ((_ is Cons!31668) mapDefault!16555)) b!2747297))

(declare-fun m!3163455 () Bool)

(assert (=> b!2747297 m!3163455))

(declare-fun m!3163457 () Bool)

(assert (=> setNonEmpty!21765 m!3163457))

(declare-fun e!1731122 () Bool)

(declare-fun setRes!21766 () Bool)

(declare-fun tp!865992 () Bool)

(declare-fun e!1731120 () Bool)

(declare-fun tp!865990 () Bool)

(declare-fun b!2747300 () Bool)

(assert (=> b!2747300 (= e!1731122 (and tp!865990 (inv!43028 (_2!18450 (_1!18451 (h!37088 (zeroValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))))) e!1731120 tp_is_empty!13939 setRes!21766 tp!865992))))

(declare-fun condSetEmpty!21766 () Bool)

(assert (=> b!2747300 (= condSetEmpty!21766 (= (_2!18451 (h!37088 (zeroValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun setIsEmpty!21766 () Bool)

(assert (=> setIsEmpty!21766 setRes!21766))

(assert (=> b!2747174 (= tp!865907 e!1731122)))

(declare-fun setNonEmpty!21766 () Bool)

(declare-fun setElem!21766 () Context!4450)

(declare-fun tp!865991 () Bool)

(declare-fun e!1731121 () Bool)

(assert (=> setNonEmpty!21766 (= setRes!21766 (and tp!865991 (inv!43028 setElem!21766) e!1731121))))

(declare-fun setRest!21766 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21766 (= (_2!18451 (h!37088 (zeroValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21766 true) setRest!21766))))

(declare-fun b!2747301 () Bool)

(declare-fun tp!865993 () Bool)

(assert (=> b!2747301 (= e!1731121 tp!865993)))

(declare-fun b!2747302 () Bool)

(declare-fun tp!865994 () Bool)

(assert (=> b!2747302 (= e!1731120 tp!865994)))

(assert (= b!2747300 b!2747302))

(assert (= (and b!2747300 condSetEmpty!21766) setIsEmpty!21766))

(assert (= (and b!2747300 (not condSetEmpty!21766)) setNonEmpty!21766))

(assert (= setNonEmpty!21766 b!2747301))

(assert (= (and b!2747174 ((_ is Cons!31668) (zeroValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) b!2747300))

(declare-fun m!3163459 () Bool)

(assert (=> b!2747300 m!3163459))

(declare-fun m!3163461 () Bool)

(assert (=> setNonEmpty!21766 m!3163461))

(declare-fun b!2747303 () Bool)

(declare-fun e!1731123 () Bool)

(declare-fun tp!865997 () Bool)

(declare-fun e!1731125 () Bool)

(declare-fun tp!865995 () Bool)

(declare-fun setRes!21767 () Bool)

(assert (=> b!2747303 (= e!1731125 (and tp!865995 (inv!43028 (_2!18450 (_1!18451 (h!37088 (minValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))))) e!1731123 tp_is_empty!13939 setRes!21767 tp!865997))))

(declare-fun condSetEmpty!21767 () Bool)

(assert (=> b!2747303 (= condSetEmpty!21767 (= (_2!18451 (h!37088 (minValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun setIsEmpty!21767 () Bool)

(assert (=> setIsEmpty!21767 setRes!21767))

(assert (=> b!2747174 (= tp!865904 e!1731125)))

(declare-fun tp!865996 () Bool)

(declare-fun setElem!21767 () Context!4450)

(declare-fun e!1731124 () Bool)

(declare-fun setNonEmpty!21767 () Bool)

(assert (=> setNonEmpty!21767 (= setRes!21767 (and tp!865996 (inv!43028 setElem!21767) e!1731124))))

(declare-fun setRest!21767 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21767 (= (_2!18451 (h!37088 (minValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21767 true) setRest!21767))))

(declare-fun b!2747304 () Bool)

(declare-fun tp!865998 () Bool)

(assert (=> b!2747304 (= e!1731124 tp!865998)))

(declare-fun b!2747305 () Bool)

(declare-fun tp!865999 () Bool)

(assert (=> b!2747305 (= e!1731123 tp!865999)))

(assert (= b!2747303 b!2747305))

(assert (= (and b!2747303 condSetEmpty!21767) setIsEmpty!21767))

(assert (= (and b!2747303 (not condSetEmpty!21767)) setNonEmpty!21767))

(assert (= setNonEmpty!21767 b!2747304))

(assert (= (and b!2747174 ((_ is Cons!31668) (minValue!3887 (v!33292 (underlying!7459 (v!33293 (underlying!7460 (cache!3677 cacheDown!730)))))))) b!2747303))

(declare-fun m!3163463 () Bool)

(assert (=> b!2747303 m!3163463))

(declare-fun m!3163465 () Bool)

(assert (=> setNonEmpty!21767 m!3163465))

(declare-fun b!2747320 () Bool)

(declare-fun e!1731140 () Bool)

(declare-fun tp!866028 () Bool)

(assert (=> b!2747320 (= e!1731140 tp!866028)))

(declare-fun setNonEmpty!21772 () Bool)

(declare-fun tp!866031 () Bool)

(declare-fun setRes!21772 () Bool)

(declare-fun setElem!21772 () Context!4450)

(assert (=> setNonEmpty!21772 (= setRes!21772 (and tp!866031 (inv!43028 setElem!21772) e!1731140))))

(declare-fun mapDefault!16562 () List!31768)

(declare-fun setRest!21772 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21772 (= (_2!18451 (h!37088 mapDefault!16562)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21772 true) setRest!21772))))

(declare-fun b!2747322 () Bool)

(declare-fun e!1731141 () Bool)

(declare-fun tp!866022 () Bool)

(assert (=> b!2747322 (= e!1731141 tp!866022)))

(declare-fun mapNonEmpty!16562 () Bool)

(declare-fun mapRes!16562 () Bool)

(declare-fun tp!866032 () Bool)

(declare-fun e!1731142 () Bool)

(assert (=> mapNonEmpty!16562 (= mapRes!16562 (and tp!866032 e!1731142))))

(declare-fun mapRest!16562 () (Array (_ BitVec 32) List!31768))

(declare-fun mapValue!16562 () List!31768)

(declare-fun mapKey!16562 () (_ BitVec 32))

(assert (=> mapNonEmpty!16562 (= mapRest!16556 (store mapRest!16562 mapKey!16562 mapValue!16562))))

(declare-fun setIsEmpty!21772 () Bool)

(assert (=> setIsEmpty!21772 setRes!21772))

(declare-fun setIsEmpty!21773 () Bool)

(declare-fun setRes!21773 () Bool)

(assert (=> setIsEmpty!21773 setRes!21773))

(declare-fun e!1731138 () Bool)

(declare-fun e!1731143 () Bool)

(declare-fun b!2747323 () Bool)

(declare-fun tp!866027 () Bool)

(declare-fun tp!866023 () Bool)

(assert (=> b!2747323 (= e!1731138 (and tp!866023 (inv!43028 (_2!18450 (_1!18451 (h!37088 mapDefault!16562)))) e!1731143 tp_is_empty!13939 setRes!21772 tp!866027))))

(declare-fun condSetEmpty!21773 () Bool)

(assert (=> b!2747323 (= condSetEmpty!21773 (= (_2!18451 (h!37088 mapDefault!16562)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun b!2747324 () Bool)

(declare-fun tp!866024 () Bool)

(assert (=> b!2747324 (= e!1731143 tp!866024)))

(declare-fun setNonEmpty!21773 () Bool)

(declare-fun setElem!21773 () Context!4450)

(declare-fun tp!866025 () Bool)

(assert (=> setNonEmpty!21773 (= setRes!21773 (and tp!866025 (inv!43028 setElem!21773) e!1731141))))

(declare-fun setRest!21773 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21773 (= (_2!18451 (h!37088 mapValue!16562)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21773 true) setRest!21773))))

(declare-fun mapIsEmpty!16562 () Bool)

(assert (=> mapIsEmpty!16562 mapRes!16562))

(declare-fun b!2747325 () Bool)

(declare-fun e!1731139 () Bool)

(declare-fun tp!866030 () Bool)

(assert (=> b!2747325 (= e!1731139 tp!866030)))

(declare-fun tp!866026 () Bool)

(declare-fun b!2747321 () Bool)

(declare-fun tp!866029 () Bool)

(assert (=> b!2747321 (= e!1731142 (and tp!866026 (inv!43028 (_2!18450 (_1!18451 (h!37088 mapValue!16562)))) e!1731139 tp_is_empty!13939 setRes!21773 tp!866029))))

(declare-fun condSetEmpty!21772 () Bool)

(assert (=> b!2747321 (= condSetEmpty!21772 (= (_2!18451 (h!37088 mapValue!16562)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun condMapEmpty!16562 () Bool)

(assert (=> mapNonEmpty!16556 (= condMapEmpty!16562 (= mapRest!16556 ((as const (Array (_ BitVec 32) List!31768)) mapDefault!16562)))))

(assert (=> mapNonEmpty!16556 (= tp!865902 (and e!1731138 mapRes!16562))))

(assert (= (and mapNonEmpty!16556 condMapEmpty!16562) mapIsEmpty!16562))

(assert (= (and mapNonEmpty!16556 (not condMapEmpty!16562)) mapNonEmpty!16562))

(assert (= b!2747321 b!2747325))

(assert (= (and b!2747321 condSetEmpty!21772) setIsEmpty!21773))

(assert (= (and b!2747321 (not condSetEmpty!21772)) setNonEmpty!21773))

(assert (= setNonEmpty!21773 b!2747322))

(assert (= (and mapNonEmpty!16562 ((_ is Cons!31668) mapValue!16562)) b!2747321))

(assert (= b!2747323 b!2747324))

(assert (= (and b!2747323 condSetEmpty!21773) setIsEmpty!21772))

(assert (= (and b!2747323 (not condSetEmpty!21773)) setNonEmpty!21772))

(assert (= setNonEmpty!21772 b!2747320))

(assert (= (and mapNonEmpty!16556 ((_ is Cons!31668) mapDefault!16562)) b!2747323))

(declare-fun m!3163467 () Bool)

(assert (=> b!2747321 m!3163467))

(declare-fun m!3163469 () Bool)

(assert (=> mapNonEmpty!16562 m!3163469))

(declare-fun m!3163471 () Bool)

(assert (=> b!2747323 m!3163471))

(declare-fun m!3163473 () Bool)

(assert (=> setNonEmpty!21772 m!3163473))

(declare-fun m!3163475 () Bool)

(assert (=> setNonEmpty!21773 m!3163475))

(declare-fun e!1731146 () Bool)

(declare-fun e!1731144 () Bool)

(declare-fun setRes!21774 () Bool)

(declare-fun tp!866035 () Bool)

(declare-fun b!2747326 () Bool)

(declare-fun tp!866033 () Bool)

(assert (=> b!2747326 (= e!1731146 (and tp!866033 (inv!43028 (_2!18450 (_1!18451 (h!37088 mapValue!16556)))) e!1731144 tp_is_empty!13939 setRes!21774 tp!866035))))

(declare-fun condSetEmpty!21774 () Bool)

(assert (=> b!2747326 (= condSetEmpty!21774 (= (_2!18451 (h!37088 mapValue!16556)) ((as const (Array Context!4450 Bool)) false)))))

(declare-fun setIsEmpty!21774 () Bool)

(assert (=> setIsEmpty!21774 setRes!21774))

(assert (=> mapNonEmpty!16556 (= tp!865905 e!1731146)))

(declare-fun tp!866034 () Bool)

(declare-fun setElem!21774 () Context!4450)

(declare-fun e!1731145 () Bool)

(declare-fun setNonEmpty!21774 () Bool)

(assert (=> setNonEmpty!21774 (= setRes!21774 (and tp!866034 (inv!43028 setElem!21774) e!1731145))))

(declare-fun setRest!21774 () (InoxSet Context!4450))

(assert (=> setNonEmpty!21774 (= (_2!18451 (h!37088 mapValue!16556)) ((_ map or) (store ((as const (Array Context!4450 Bool)) false) setElem!21774 true) setRest!21774))))

(declare-fun b!2747327 () Bool)

(declare-fun tp!866036 () Bool)

(assert (=> b!2747327 (= e!1731145 tp!866036)))

(declare-fun b!2747328 () Bool)

(declare-fun tp!866037 () Bool)

(assert (=> b!2747328 (= e!1731144 tp!866037)))

(assert (= b!2747326 b!2747328))

(assert (= (and b!2747326 condSetEmpty!21774) setIsEmpty!21774))

(assert (= (and b!2747326 (not condSetEmpty!21774)) setNonEmpty!21774))

(assert (= setNonEmpty!21774 b!2747327))

(assert (= (and mapNonEmpty!16556 ((_ is Cons!31668) mapValue!16556)) b!2747326))

(declare-fun m!3163477 () Bool)

(assert (=> b!2747326 m!3163477))

(declare-fun m!3163479 () Bool)

(assert (=> setNonEmpty!21774 m!3163479))

(check-sat (not b!2747286) (not b!2747246) (not b!2747265) (not b!2747297) (not b!2747281) (not d!796184) (not b!2747260) (not b!2747321) (not b!2747243) (not setNonEmpty!21755) (not setNonEmpty!21760) (not b!2747201) (not b!2747280) (not b!2747262) (not b!2747323) (not b_next!78171) (not b!2747301) (not b!2747287) (not b!2747264) (not b_next!78169) (not setNonEmpty!21753) (not b_next!78163) (not setNonEmpty!21773) (not b!2747303) (not b!2747245) (not b!2747302) b_and!202189 b_and!202181 (not b!2747299) b_and!202185 (not mapNonEmpty!16559) (not b!2747263) (not b!2747320) (not b!2747283) (not d!796186) (not setNonEmpty!21754) (not bm!177426) (not b!2747300) (not b_next!78165) (not setNonEmpty!21774) (not setNonEmpty!21772) (not b!2747325) (not b_next!78167) (not b!2747195) (not b!2747284) (not d!796194) tp_is_empty!13939 (not setNonEmpty!21766) (not b!2747288) (not setNonEmpty!21767) (not setNonEmpty!21761) (not b!2747248) (not b!2747322) (not b!2747198) (not b!2747304) (not b!2747206) (not b!2747244) (not b!2747305) b_and!202191 b_and!202187 (not b!2747298) (not b!2747285) (not b!2747247) (not b!2747282) (not bm!177427) b_and!202183 (not setNonEmpty!21762) (not b!2747324) (not b!2747261) (not d!796180) (not b!2747228) (not b!2747326) (not setNonEmpty!21765) (not b!2747327) (not b!2747328) (not b_next!78161) (not mapNonEmpty!16562))
(check-sat (not b_next!78171) (not b_next!78169) (not b_next!78163) b_and!202185 (not b_next!78165) (not b_next!78167) b_and!202183 (not b_next!78161) b_and!202189 b_and!202181 b_and!202191 b_and!202187)
