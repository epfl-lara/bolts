; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242478 () Bool)

(assert start!242478)

(declare-fun b!2483854 () Bool)

(declare-fun b_free!72417 () Bool)

(declare-fun b_next!73121 () Bool)

(assert (=> b!2483854 (= b_free!72417 (not b_next!73121))))

(declare-fun tp!795141 () Bool)

(declare-fun b_and!188683 () Bool)

(assert (=> b!2483854 (= tp!795141 b_and!188683)))

(declare-fun b!2483860 () Bool)

(declare-fun b_free!72419 () Bool)

(declare-fun b_next!73123 () Bool)

(assert (=> b!2483860 (= b_free!72419 (not b_next!73123))))

(declare-fun tp!795144 () Bool)

(declare-fun b_and!188685 () Bool)

(assert (=> b!2483860 (= tp!795144 b_and!188685)))

(declare-fun b!2483853 () Bool)

(declare-fun res!1051340 () Bool)

(declare-fun e!1576925 () Bool)

(assert (=> b!2483853 (=> (not res!1051340) (not e!1576925))))

(declare-datatypes ((Hashable!3300 0))(
  ( (HashableExt!3299 (__x!19076 Int)) )
))
(declare-datatypes ((K!5560 0))(
  ( (K!5561 (val!8923 Int)) )
))
(declare-datatypes ((V!5762 0))(
  ( (V!5763 (val!8924 Int)) )
))
(declare-datatypes ((tuple2!28982 0))(
  ( (tuple2!28983 (_1!17033 K!5560) (_2!17033 V!5762)) )
))
(declare-datatypes ((List!29256 0))(
  ( (Nil!29156) (Cons!29156 (h!34564 tuple2!28982) (t!210927 List!29256)) )
))
(declare-datatypes ((array!12035 0))(
  ( (array!12036 (arr!5370 (Array (_ BitVec 32) List!29256)) (size!22789 (_ BitVec 32))) )
))
(declare-datatypes ((array!12037 0))(
  ( (array!12038 (arr!5371 (Array (_ BitVec 32) (_ BitVec 64))) (size!22790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6780 0))(
  ( (LongMapFixedSize!6781 (defaultEntry!3764 Int) (mask!8574 (_ BitVec 32)) (extraKeys!3638 (_ BitVec 32)) (zeroValue!3648 List!29256) (minValue!3648 List!29256) (_size!6827 (_ BitVec 32)) (_keys!3687 array!12037) (_values!3670 array!12035) (_vacant!3451 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13377 0))(
  ( (Cell!13378 (v!31542 LongMapFixedSize!6780)) )
))
(declare-datatypes ((MutLongMap!3390 0))(
  ( (LongMap!3390 (underlying!6987 Cell!13377)) (MutLongMapExt!3389 (__x!19077 Int)) )
))
(declare-datatypes ((Cell!13379 0))(
  ( (Cell!13380 (v!31543 MutLongMap!3390)) )
))
(declare-datatypes ((MutableMap!3300 0))(
  ( (MutableMapExt!3299 (__x!19078 Int)) (HashMap!3300 (underlying!6988 Cell!13379) (hashF!5269 Hashable!3300) (_size!6828 (_ BitVec 32)) (defaultValue!3462 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3300)

(declare-fun key!2246 () K!5560)

(declare-fun contains!5156 (MutableMap!3300 K!5560) Bool)

(assert (=> b!2483853 (= res!1051340 (contains!5156 thiss!42540 key!2246))))

(declare-fun mapNonEmpty!15657 () Bool)

(declare-fun mapRes!15657 () Bool)

(declare-fun tp!795140 () Bool)

(declare-fun tp!795139 () Bool)

(assert (=> mapNonEmpty!15657 (= mapRes!15657 (and tp!795140 tp!795139))))

(declare-fun mapKey!15657 () (_ BitVec 32))

(declare-fun mapValue!15657 () List!29256)

(declare-fun mapRest!15657 () (Array (_ BitVec 32) List!29256))

(assert (=> mapNonEmpty!15657 (= (arr!5370 (_values!3670 (v!31542 (underlying!6987 (v!31543 (underlying!6988 thiss!42540)))))) (store mapRest!15657 mapKey!15657 mapValue!15657))))

(declare-fun b!2483855 () Bool)

(declare-fun e!1576928 () Bool)

(declare-fun tp!795143 () Bool)

(assert (=> b!2483855 (= e!1576928 (and tp!795143 mapRes!15657))))

(declare-fun condMapEmpty!15657 () Bool)

(declare-fun mapDefault!15657 () List!29256)

(assert (=> b!2483855 (= condMapEmpty!15657 (= (arr!5370 (_values!3670 (v!31542 (underlying!6987 (v!31543 (underlying!6988 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29256)) mapDefault!15657)))))

(declare-fun b!2483856 () Bool)

(declare-fun e!1576923 () Bool)

(declare-fun e!1576921 () Bool)

(declare-fun lt!889962 () MutLongMap!3390)

(get-info :version)

(assert (=> b!2483856 (= e!1576923 (and e!1576921 ((_ is LongMap!3390) lt!889962)))))

(assert (=> b!2483856 (= lt!889962 (v!31543 (underlying!6988 thiss!42540)))))

(declare-fun mapIsEmpty!15657 () Bool)

(assert (=> mapIsEmpty!15657 mapRes!15657))

(declare-fun b!2483857 () Bool)

(declare-fun res!1051339 () Bool)

(assert (=> b!2483857 (=> (not res!1051339) (not e!1576925))))

(declare-fun valid!2597 (MutableMap!3300) Bool)

(assert (=> b!2483857 (= res!1051339 (valid!2597 thiss!42540))))

(declare-fun b!2483858 () Bool)

(declare-fun e!1576924 () Bool)

(assert (=> b!2483858 (= e!1576921 e!1576924)))

(declare-fun res!1051338 () Bool)

(assert (=> start!242478 (=> (not res!1051338) (not e!1576925))))

(assert (=> start!242478 (= res!1051338 ((_ is HashMap!3300) thiss!42540))))

(assert (=> start!242478 e!1576925))

(declare-fun e!1576922 () Bool)

(assert (=> start!242478 e!1576922))

(declare-fun tp_is_empty!12321 () Bool)

(assert (=> start!242478 tp_is_empty!12321))

(declare-fun e!1576927 () Bool)

(declare-fun tp!795138 () Bool)

(declare-fun tp!795142 () Bool)

(declare-fun array_inv!3855 (array!12037) Bool)

(declare-fun array_inv!3856 (array!12035) Bool)

(assert (=> b!2483854 (= e!1576927 (and tp!795141 tp!795142 tp!795138 (array_inv!3855 (_keys!3687 (v!31542 (underlying!6987 (v!31543 (underlying!6988 thiss!42540)))))) (array_inv!3856 (_values!3670 (v!31542 (underlying!6987 (v!31543 (underlying!6988 thiss!42540)))))) e!1576928))))

(declare-fun b!2483859 () Bool)

(declare-fun e!1576926 () Bool)

(declare-datatypes ((Unit!42720 0))(
  ( (Unit!42721) )
))
(declare-datatypes ((tuple2!28984 0))(
  ( (tuple2!28985 (_1!17034 Unit!42720) (_2!17034 MutableMap!3300)) )
))
(declare-fun lt!889967 () tuple2!28984)

(assert (=> b!2483859 (= e!1576926 ((_ is HashMap!3300) (_2!17034 lt!889967)))))

(declare-fun lt!889966 () List!29256)

(declare-fun lt!889960 () (_ BitVec 64))

(declare-fun allKeysSameHash!71 (List!29256 (_ BitVec 64) Hashable!3300) Bool)

(assert (=> b!2483859 (allKeysSameHash!71 lt!889966 lt!889960 (hashF!5269 (_2!17034 lt!889967)))))

(declare-fun lt!889965 () Unit!42720)

(declare-fun lt!889968 () List!29256)

(declare-fun lemmaRemovePairForKeyPreservesHash!60 (List!29256 K!5560 (_ BitVec 64) Hashable!3300) Unit!42720)

(assert (=> b!2483859 (= lt!889965 (lemmaRemovePairForKeyPreservesHash!60 lt!889968 key!2246 lt!889960 (hashF!5269 (_2!17034 lt!889967))))))

(assert (=> b!2483859 (allKeysSameHash!71 lt!889968 lt!889960 (hashF!5269 (_2!17034 lt!889967)))))

(declare-datatypes ((tuple2!28986 0))(
  ( (tuple2!28987 (_1!17035 (_ BitVec 64)) (_2!17035 List!29256)) )
))
(declare-datatypes ((List!29257 0))(
  ( (Nil!29157) (Cons!29157 (h!34565 tuple2!28986) (t!210928 List!29257)) )
))
(declare-datatypes ((ListLongMap!569 0))(
  ( (ListLongMap!570 (toList!1620 List!29257)) )
))
(declare-fun lt!889964 () ListLongMap!569)

(declare-fun lt!889961 () Unit!42720)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!64 (List!29257 (_ BitVec 64) List!29256 Hashable!3300) Unit!42720)

(assert (=> b!2483859 (= lt!889961 (lemmaInLongMapAllKeySameHashThenForTuple!64 (toList!1620 lt!889964) lt!889960 lt!889968 (hashF!5269 (_2!17034 lt!889967))))))

(assert (=> b!2483860 (= e!1576922 (and e!1576923 tp!795144))))

(declare-fun b!2483861 () Bool)

(assert (=> b!2483861 (= e!1576925 (not e!1576926))))

(declare-fun res!1051337 () Bool)

(assert (=> b!2483861 (=> res!1051337 e!1576926)))

(declare-datatypes ((tuple2!28988 0))(
  ( (tuple2!28989 (_1!17036 Bool) (_2!17036 MutLongMap!3390)) )
))
(declare-fun lt!889970 () tuple2!28988)

(assert (=> b!2483861 (= res!1051337 (not (_1!17036 lt!889970)))))

(declare-fun noDuplicateKeys!96 (List!29256) Bool)

(assert (=> b!2483861 (noDuplicateKeys!96 lt!889966)))

(declare-fun lt!889969 () Unit!42720)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!76 (List!29256 K!5560) Unit!42720)

(assert (=> b!2483861 (= lt!889969 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!76 lt!889968 key!2246))))

(declare-fun lt!889958 () Cell!13379)

(declare-fun Unit!42722 () Unit!42720)

(declare-fun Unit!42723 () Unit!42720)

(assert (=> b!2483861 (= lt!889967 (ite (_1!17036 lt!889970) (tuple2!28985 Unit!42722 (HashMap!3300 lt!889958 (hashF!5269 thiss!42540) (bvsub (_size!6828 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3462 thiss!42540))) (tuple2!28985 Unit!42723 (HashMap!3300 lt!889958 (hashF!5269 thiss!42540) (_size!6828 thiss!42540) (defaultValue!3462 thiss!42540)))))))

(assert (=> b!2483861 (= lt!889958 (Cell!13380 (_2!17036 lt!889970)))))

(declare-fun update!208 (MutLongMap!3390 (_ BitVec 64) List!29256) tuple2!28988)

(assert (=> b!2483861 (= lt!889970 (update!208 (v!31543 (underlying!6988 thiss!42540)) lt!889960 lt!889966))))

(declare-fun removePairForKey!88 (List!29256 K!5560) List!29256)

(assert (=> b!2483861 (= lt!889966 (removePairForKey!88 lt!889968 key!2246))))

(declare-datatypes ((ListMap!1101 0))(
  ( (ListMap!1102 (toList!1621 List!29256)) )
))
(declare-fun lt!889959 () ListMap!1101)

(declare-fun map!6256 (MutableMap!3300) ListMap!1101)

(assert (=> b!2483861 (= lt!889959 (map!6256 thiss!42540))))

(declare-fun lambda!94193 () Int)

(declare-fun lt!889963 () Unit!42720)

(declare-fun forallContained!877 (List!29257 Int tuple2!28986) Unit!42720)

(assert (=> b!2483861 (= lt!889963 (forallContained!877 (toList!1620 lt!889964) lambda!94193 (tuple2!28987 lt!889960 lt!889968)))))

(declare-fun map!6257 (MutLongMap!3390) ListLongMap!569)

(assert (=> b!2483861 (= lt!889964 (map!6257 (v!31543 (underlying!6988 thiss!42540))))))

(declare-fun apply!6949 (MutLongMap!3390 (_ BitVec 64)) List!29256)

(assert (=> b!2483861 (= lt!889968 (apply!6949 (v!31543 (underlying!6988 thiss!42540)) lt!889960))))

(declare-fun hash!716 (Hashable!3300 K!5560) (_ BitVec 64))

(assert (=> b!2483861 (= lt!889960 (hash!716 (hashF!5269 thiss!42540) key!2246))))

(declare-fun b!2483862 () Bool)

(assert (=> b!2483862 (= e!1576924 e!1576927)))

(assert (= (and start!242478 res!1051338) b!2483857))

(assert (= (and b!2483857 res!1051339) b!2483853))

(assert (= (and b!2483853 res!1051340) b!2483861))

(assert (= (and b!2483861 (not res!1051337)) b!2483859))

(assert (= (and b!2483855 condMapEmpty!15657) mapIsEmpty!15657))

(assert (= (and b!2483855 (not condMapEmpty!15657)) mapNonEmpty!15657))

(assert (= b!2483854 b!2483855))

(assert (= b!2483862 b!2483854))

(assert (= b!2483858 b!2483862))

(assert (= (and b!2483856 ((_ is LongMap!3390) (v!31543 (underlying!6988 thiss!42540)))) b!2483858))

(assert (= b!2483860 b!2483856))

(assert (= (and start!242478 ((_ is HashMap!3300) thiss!42540)) b!2483860))

(declare-fun m!2851717 () Bool)

(assert (=> mapNonEmpty!15657 m!2851717))

(declare-fun m!2851719 () Bool)

(assert (=> b!2483859 m!2851719))

(declare-fun m!2851721 () Bool)

(assert (=> b!2483859 m!2851721))

(declare-fun m!2851723 () Bool)

(assert (=> b!2483859 m!2851723))

(declare-fun m!2851725 () Bool)

(assert (=> b!2483859 m!2851725))

(declare-fun m!2851727 () Bool)

(assert (=> b!2483854 m!2851727))

(declare-fun m!2851729 () Bool)

(assert (=> b!2483854 m!2851729))

(declare-fun m!2851731 () Bool)

(assert (=> b!2483853 m!2851731))

(declare-fun m!2851733 () Bool)

(assert (=> b!2483861 m!2851733))

(declare-fun m!2851735 () Bool)

(assert (=> b!2483861 m!2851735))

(declare-fun m!2851737 () Bool)

(assert (=> b!2483861 m!2851737))

(declare-fun m!2851739 () Bool)

(assert (=> b!2483861 m!2851739))

(declare-fun m!2851741 () Bool)

(assert (=> b!2483861 m!2851741))

(declare-fun m!2851743 () Bool)

(assert (=> b!2483861 m!2851743))

(declare-fun m!2851745 () Bool)

(assert (=> b!2483861 m!2851745))

(declare-fun m!2851747 () Bool)

(assert (=> b!2483861 m!2851747))

(declare-fun m!2851749 () Bool)

(assert (=> b!2483861 m!2851749))

(declare-fun m!2851751 () Bool)

(assert (=> b!2483857 m!2851751))

(check-sat (not mapNonEmpty!15657) b_and!188685 (not b!2483853) (not b!2483855) (not b!2483861) (not b_next!73121) tp_is_empty!12321 b_and!188683 (not b!2483857) (not b!2483854) (not b_next!73123) (not b!2483859))
(check-sat b_and!188685 b_and!188683 (not b_next!73121) (not b_next!73123))
