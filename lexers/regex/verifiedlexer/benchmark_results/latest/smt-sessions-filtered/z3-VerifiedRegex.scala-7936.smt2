; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413142 () Bool)

(assert start!413142)

(declare-fun b!4302063 () Bool)

(declare-fun b_free!128171 () Bool)

(declare-fun b_next!128875 () Bool)

(assert (=> b!4302063 (= b_free!128171 (not b_next!128875))))

(declare-fun tp!1321918 () Bool)

(declare-fun b_and!339555 () Bool)

(assert (=> b!4302063 (= tp!1321918 b_and!339555)))

(declare-fun b!4302067 () Bool)

(declare-fun b_free!128173 () Bool)

(declare-fun b_next!128877 () Bool)

(assert (=> b!4302067 (= b_free!128173 (not b_next!128877))))

(declare-fun tp!1321922 () Bool)

(declare-fun b_and!339557 () Bool)

(assert (=> b!4302067 (= tp!1321922 b_and!339557)))

(declare-fun e!2674417 () Bool)

(declare-fun tp!1321916 () Bool)

(declare-fun tp!1321919 () Bool)

(declare-fun e!2674416 () Bool)

(declare-datatypes ((V!9331 0))(
  ( (V!9332 (val!15561 Int)) )
))
(declare-datatypes ((K!9129 0))(
  ( (K!9130 (val!15562 Int)) )
))
(declare-datatypes ((tuple2!46040 0))(
  ( (tuple2!46041 (_1!26299 K!9129) (_2!26299 V!9331)) )
))
(declare-datatypes ((List!48117 0))(
  ( (Nil!47993) (Cons!47993 (h!53413 tuple2!46040) (t!354886 List!48117)) )
))
(declare-datatypes ((array!16334 0))(
  ( (array!16335 (arr!7291 (Array (_ BitVec 32) (_ BitVec 64))) (size!35330 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4469 0))(
  ( (HashableExt!4468 (__x!29684 Int)) )
))
(declare-datatypes ((array!16336 0))(
  ( (array!16337 (arr!7292 (Array (_ BitVec 32) List!48117)) (size!35331 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9106 0))(
  ( (LongMapFixedSize!9107 (defaultEntry!4938 Int) (mask!13058 (_ BitVec 32)) (extraKeys!4802 (_ BitVec 32)) (zeroValue!4812 List!48117) (minValue!4812 List!48117) (_size!9149 (_ BitVec 32)) (_keys!4853 array!16334) (_values!4834 array!16336) (_vacant!4614 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18021 0))(
  ( (Cell!18022 (v!41988 LongMapFixedSize!9106)) )
))
(declare-datatypes ((MutLongMap!4553 0))(
  ( (LongMap!4553 (underlying!9335 Cell!18021)) (MutLongMapExt!4552 (__x!29685 Int)) )
))
(declare-datatypes ((Cell!18023 0))(
  ( (Cell!18024 (v!41989 MutLongMap!4553)) )
))
(declare-datatypes ((MutableMap!4459 0))(
  ( (MutableMapExt!4458 (__x!29686 Int)) (HashMap!4459 (underlying!9336 Cell!18023) (hashF!6504 Hashable!4469) (_size!9150 (_ BitVec 32)) (defaultValue!4630 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4459)

(declare-fun array_inv!5229 (array!16334) Bool)

(declare-fun array_inv!5230 (array!16336) Bool)

(assert (=> b!4302063 (= e!2674417 (and tp!1321918 tp!1321916 tp!1321919 (array_inv!5229 (_keys!4853 (v!41988 (underlying!9335 (v!41989 (underlying!9336 thiss!42308)))))) (array_inv!5230 (_values!4834 (v!41988 (underlying!9335 (v!41989 (underlying!9336 thiss!42308)))))) e!2674416))))

(declare-fun b!4302064 () Bool)

(declare-fun e!2674422 () Bool)

(declare-fun e!2674413 () Bool)

(declare-fun lt!1523747 () MutLongMap!4553)

(get-info :version)

(assert (=> b!4302064 (= e!2674422 (and e!2674413 ((_ is LongMap!4553) lt!1523747)))))

(assert (=> b!4302064 (= lt!1523747 (v!41989 (underlying!9336 thiss!42308)))))

(declare-fun b!4302065 () Bool)

(declare-fun e!2674421 () Bool)

(declare-fun e!2674414 () Bool)

(assert (=> b!4302065 (= e!2674421 e!2674414)))

(declare-fun res!1763130 () Bool)

(assert (=> b!4302065 (=> (not res!1763130) (not e!2674414))))

(declare-fun key!2048 () K!9129)

(declare-fun contains!9914 (MutableMap!4459 K!9129) Bool)

(assert (=> b!4302065 (= res!1763130 (contains!9914 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46042 0))(
  ( (tuple2!46043 (_1!26300 (_ BitVec 64)) (_2!26300 List!48117)) )
))
(declare-datatypes ((List!48118 0))(
  ( (Nil!47994) (Cons!47994 (h!53414 tuple2!46042) (t!354887 List!48118)) )
))
(declare-datatypes ((ListLongMap!841 0))(
  ( (ListLongMap!842 (toList!2234 List!48118)) )
))
(declare-fun lt!1523748 () ListLongMap!841)

(declare-fun map!9954 (MutLongMap!4553) ListLongMap!841)

(assert (=> b!4302065 (= lt!1523748 (map!9954 (v!41989 (underlying!9336 thiss!42308))))))

(declare-datatypes ((ListMap!1521 0))(
  ( (ListMap!1522 (toList!2235 List!48117)) )
))
(declare-fun lt!1523749 () ListMap!1521)

(declare-fun map!9955 (MutableMap!4459) ListMap!1521)

(assert (=> b!4302065 (= lt!1523749 (map!9955 thiss!42308))))

(declare-fun b!4302066 () Bool)

(declare-fun e!2674419 () Bool)

(assert (=> b!4302066 (= e!2674414 e!2674419)))

(declare-fun res!1763131 () Bool)

(assert (=> b!4302066 (=> (not res!1763131) (not e!2674419))))

(declare-fun lt!1523744 () (_ BitVec 64))

(declare-fun lt!1523745 () List!48117)

(declare-fun v!9179 () V!9331)

(declare-datatypes ((tuple2!46044 0))(
  ( (tuple2!46045 (_1!26301 Bool) (_2!26301 MutLongMap!4553)) )
))
(declare-fun update!350 (MutLongMap!4553 (_ BitVec 64) List!48117) tuple2!46044)

(assert (=> b!4302066 (= res!1763131 (_1!26301 (update!350 (v!41989 (underlying!9336 thiss!42308)) lt!1523744 (Cons!47993 (tuple2!46041 key!2048 v!9179) lt!1523745))))))

(declare-fun lt!1523751 () List!48117)

(declare-fun removePairForKey!153 (List!48117 K!9129) List!48117)

(assert (=> b!4302066 (= lt!1523745 (removePairForKey!153 lt!1523751 key!2048))))

(declare-fun apply!10896 (MutLongMap!4553 (_ BitVec 64)) List!48117)

(assert (=> b!4302066 (= lt!1523751 (apply!10896 (v!41989 (underlying!9336 thiss!42308)) lt!1523744))))

(declare-fun hash!856 (Hashable!4469 K!9129) (_ BitVec 64))

(assert (=> b!4302066 (= lt!1523744 (hash!856 (hashF!6504 thiss!42308) key!2048))))

(declare-fun e!2674420 () Bool)

(assert (=> b!4302067 (= e!2674420 (and e!2674422 tp!1321922))))

(declare-fun res!1763133 () Bool)

(assert (=> start!413142 (=> (not res!1763133) (not e!2674421))))

(assert (=> start!413142 (= res!1763133 ((_ is HashMap!4459) thiss!42308))))

(assert (=> start!413142 e!2674421))

(assert (=> start!413142 e!2674420))

(declare-fun tp_is_empty!23351 () Bool)

(assert (=> start!413142 tp_is_empty!23351))

(declare-fun tp_is_empty!23353 () Bool)

(assert (=> start!413142 tp_is_empty!23353))

(declare-fun b!4302062 () Bool)

(declare-fun e!2674418 () Bool)

(assert (=> b!4302062 (= e!2674413 e!2674418)))

(declare-fun mapIsEmpty!20431 () Bool)

(declare-fun mapRes!20431 () Bool)

(assert (=> mapIsEmpty!20431 mapRes!20431))

(declare-fun b!4302068 () Bool)

(assert (=> b!4302068 (= e!2674419 (not true))))

(declare-fun lt!1523750 () Bool)

(declare-fun noDuplicateKeys!159 (List!48117) Bool)

(assert (=> b!4302068 (= lt!1523750 (noDuplicateKeys!159 lt!1523751))))

(declare-fun allKeysSameHash!129 (List!48117 (_ BitVec 64) Hashable!4469) Bool)

(assert (=> b!4302068 (allKeysSameHash!129 lt!1523745 lt!1523744 (hashF!6504 thiss!42308))))

(declare-datatypes ((Unit!66972 0))(
  ( (Unit!66973) )
))
(declare-fun lt!1523746 () Unit!66972)

(declare-fun lemmaRemovePairForKeyPreservesHash!115 (List!48117 K!9129 (_ BitVec 64) Hashable!4469) Unit!66972)

(assert (=> b!4302068 (= lt!1523746 (lemmaRemovePairForKeyPreservesHash!115 lt!1523751 key!2048 lt!1523744 (hashF!6504 thiss!42308)))))

(assert (=> b!4302068 (allKeysSameHash!129 lt!1523751 lt!1523744 (hashF!6504 thiss!42308))))

(declare-fun lt!1523743 () Unit!66972)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!120 (List!48118 (_ BitVec 64) List!48117 Hashable!4469) Unit!66972)

(assert (=> b!4302068 (= lt!1523743 (lemmaInLongMapAllKeySameHashThenForTuple!120 (toList!2234 lt!1523748) lt!1523744 lt!1523751 (hashF!6504 thiss!42308)))))

(declare-fun b!4302069 () Bool)

(declare-fun res!1763132 () Bool)

(assert (=> b!4302069 (=> (not res!1763132) (not e!2674421))))

(declare-fun valid!3538 (MutableMap!4459) Bool)

(assert (=> b!4302069 (= res!1763132 (valid!3538 thiss!42308))))

(declare-fun b!4302070 () Bool)

(assert (=> b!4302070 (= e!2674418 e!2674417)))

(declare-fun mapNonEmpty!20431 () Bool)

(declare-fun tp!1321920 () Bool)

(declare-fun tp!1321917 () Bool)

(assert (=> mapNonEmpty!20431 (= mapRes!20431 (and tp!1321920 tp!1321917))))

(declare-fun mapKey!20431 () (_ BitVec 32))

(declare-fun mapRest!20431 () (Array (_ BitVec 32) List!48117))

(declare-fun mapValue!20431 () List!48117)

(assert (=> mapNonEmpty!20431 (= (arr!7292 (_values!4834 (v!41988 (underlying!9335 (v!41989 (underlying!9336 thiss!42308)))))) (store mapRest!20431 mapKey!20431 mapValue!20431))))

(declare-fun b!4302071 () Bool)

(declare-fun tp!1321921 () Bool)

(assert (=> b!4302071 (= e!2674416 (and tp!1321921 mapRes!20431))))

(declare-fun condMapEmpty!20431 () Bool)

(declare-fun mapDefault!20431 () List!48117)

(assert (=> b!4302071 (= condMapEmpty!20431 (= (arr!7292 (_values!4834 (v!41988 (underlying!9335 (v!41989 (underlying!9336 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48117)) mapDefault!20431)))))

(assert (= (and start!413142 res!1763133) b!4302069))

(assert (= (and b!4302069 res!1763132) b!4302065))

(assert (= (and b!4302065 res!1763130) b!4302066))

(assert (= (and b!4302066 res!1763131) b!4302068))

(assert (= (and b!4302071 condMapEmpty!20431) mapIsEmpty!20431))

(assert (= (and b!4302071 (not condMapEmpty!20431)) mapNonEmpty!20431))

(assert (= b!4302063 b!4302071))

(assert (= b!4302070 b!4302063))

(assert (= b!4302062 b!4302070))

(assert (= (and b!4302064 ((_ is LongMap!4553) (v!41989 (underlying!9336 thiss!42308)))) b!4302062))

(assert (= b!4302067 b!4302064))

(assert (= (and start!413142 ((_ is HashMap!4459) thiss!42308)) b!4302067))

(declare-fun m!4894145 () Bool)

(assert (=> b!4302068 m!4894145))

(declare-fun m!4894147 () Bool)

(assert (=> b!4302068 m!4894147))

(declare-fun m!4894149 () Bool)

(assert (=> b!4302068 m!4894149))

(declare-fun m!4894151 () Bool)

(assert (=> b!4302068 m!4894151))

(declare-fun m!4894153 () Bool)

(assert (=> b!4302068 m!4894153))

(declare-fun m!4894155 () Bool)

(assert (=> b!4302066 m!4894155))

(declare-fun m!4894157 () Bool)

(assert (=> b!4302066 m!4894157))

(declare-fun m!4894159 () Bool)

(assert (=> b!4302066 m!4894159))

(declare-fun m!4894161 () Bool)

(assert (=> b!4302066 m!4894161))

(declare-fun m!4894163 () Bool)

(assert (=> mapNonEmpty!20431 m!4894163))

(declare-fun m!4894165 () Bool)

(assert (=> b!4302065 m!4894165))

(declare-fun m!4894167 () Bool)

(assert (=> b!4302065 m!4894167))

(declare-fun m!4894169 () Bool)

(assert (=> b!4302065 m!4894169))

(declare-fun m!4894171 () Bool)

(assert (=> b!4302069 m!4894171))

(declare-fun m!4894173 () Bool)

(assert (=> b!4302063 m!4894173))

(declare-fun m!4894175 () Bool)

(assert (=> b!4302063 m!4894175))

(check-sat tp_is_empty!23353 (not b_next!128875) (not mapNonEmpty!20431) (not b!4302066) b_and!339555 (not b!4302069) (not b!4302063) (not b!4302065) tp_is_empty!23351 (not b_next!128877) (not b!4302071) (not b!4302068) b_and!339557)
(check-sat b_and!339555 b_and!339557 (not b_next!128877) (not b_next!128875))
