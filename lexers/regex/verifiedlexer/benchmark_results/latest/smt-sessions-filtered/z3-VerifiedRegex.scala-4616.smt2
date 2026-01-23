; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242078 () Bool)

(assert start!242078)

(declare-fun b!2481133 () Bool)

(declare-fun b_free!72265 () Bool)

(declare-fun b_next!72969 () Bool)

(assert (=> b!2481133 (= b_free!72265 (not b_next!72969))))

(declare-fun tp!794190 () Bool)

(declare-fun b_and!188511 () Bool)

(assert (=> b!2481133 (= tp!794190 b_and!188511)))

(declare-fun b!2481137 () Bool)

(declare-fun b_free!72267 () Bool)

(declare-fun b_next!72971 () Bool)

(assert (=> b!2481137 (= b_free!72267 (not b_next!72971))))

(declare-fun tp!794189 () Bool)

(declare-fun b_and!188513 () Bool)

(assert (=> b!2481137 (= tp!794189 b_and!188513)))

(declare-fun mapNonEmpty!15514 () Bool)

(declare-fun mapRes!15514 () Bool)

(declare-fun tp!794186 () Bool)

(declare-fun tp!794191 () Bool)

(assert (=> mapNonEmpty!15514 (= mapRes!15514 (and tp!794186 tp!794191))))

(declare-datatypes ((K!5465 0))(
  ( (K!5466 (val!8847 Int)) )
))
(declare-datatypes ((V!5667 0))(
  ( (V!5668 (val!8848 Int)) )
))
(declare-datatypes ((tuple2!28790 0))(
  ( (tuple2!28791 (_1!16936 K!5465) (_2!16936 V!5667)) )
))
(declare-datatypes ((List!29187 0))(
  ( (Nil!29087) (Cons!29087 (h!34493 tuple2!28790) (t!210844 List!29187)) )
))
(declare-fun mapValue!15514 () List!29187)

(declare-datatypes ((Hashable!3262 0))(
  ( (HashableExt!3261 (__x!18962 Int)) )
))
(declare-datatypes ((array!11865 0))(
  ( (array!11866 (arr!5294 (Array (_ BitVec 32) List!29187)) (size!22713 (_ BitVec 32))) )
))
(declare-datatypes ((array!11867 0))(
  ( (array!11868 (arr!5295 (Array (_ BitVec 32) (_ BitVec 64))) (size!22714 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6704 0))(
  ( (LongMapFixedSize!6705 (defaultEntry!3726 Int) (mask!8517 (_ BitVec 32)) (extraKeys!3600 (_ BitVec 32)) (zeroValue!3610 List!29187) (minValue!3610 List!29187) (_size!6751 (_ BitVec 32)) (_keys!3649 array!11867) (_values!3632 array!11865) (_vacant!3413 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13225 0))(
  ( (Cell!13226 (v!31416 LongMapFixedSize!6704)) )
))
(declare-datatypes ((MutLongMap!3352 0))(
  ( (LongMap!3352 (underlying!6911 Cell!13225)) (MutLongMapExt!3351 (__x!18963 Int)) )
))
(declare-datatypes ((Cell!13227 0))(
  ( (Cell!13228 (v!31417 MutLongMap!3352)) )
))
(declare-datatypes ((MutableMap!3262 0))(
  ( (MutableMapExt!3261 (__x!18964 Int)) (HashMap!3262 (underlying!6912 Cell!13227) (hashF!5220 Hashable!3262) (_size!6752 (_ BitVec 32)) (defaultValue!3424 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3262)

(declare-fun mapKey!15514 () (_ BitVec 32))

(declare-fun mapRest!15514 () (Array (_ BitVec 32) List!29187))

(assert (=> mapNonEmpty!15514 (= (arr!5294 (_values!3632 (v!31416 (underlying!6911 (v!31417 (underlying!6912 thiss!42540)))))) (store mapRest!15514 mapKey!15514 mapValue!15514))))

(declare-fun res!1050409 () Bool)

(declare-fun e!1574873 () Bool)

(assert (=> start!242078 (=> (not res!1050409) (not e!1574873))))

(get-info :version)

(assert (=> start!242078 (= res!1050409 ((_ is HashMap!3262) thiss!42540))))

(assert (=> start!242078 e!1574873))

(declare-fun e!1574876 () Bool)

(assert (=> start!242078 e!1574876))

(declare-fun tp_is_empty!12227 () Bool)

(assert (=> start!242078 tp_is_empty!12227))

(declare-fun b!2481130 () Bool)

(assert (=> b!2481130 (= e!1574873 false)))

(declare-fun lt!888113 () Bool)

(declare-fun key!2246 () K!5465)

(declare-fun contains!5083 (MutableMap!3262 K!5465) Bool)

(assert (=> b!2481130 (= lt!888113 (contains!5083 thiss!42540 key!2246))))

(declare-fun b!2481131 () Bool)

(declare-fun e!1574875 () Bool)

(declare-fun e!1574870 () Bool)

(assert (=> b!2481131 (= e!1574875 e!1574870)))

(declare-fun b!2481132 () Bool)

(declare-fun e!1574874 () Bool)

(declare-fun lt!888114 () MutLongMap!3352)

(assert (=> b!2481132 (= e!1574874 (and e!1574875 ((_ is LongMap!3352) lt!888114)))))

(assert (=> b!2481132 (= lt!888114 (v!31417 (underlying!6912 thiss!42540)))))

(declare-fun e!1574871 () Bool)

(declare-fun e!1574872 () Bool)

(declare-fun tp!794192 () Bool)

(declare-fun tp!794187 () Bool)

(declare-fun array_inv!3801 (array!11867) Bool)

(declare-fun array_inv!3802 (array!11865) Bool)

(assert (=> b!2481133 (= e!1574872 (and tp!794190 tp!794187 tp!794192 (array_inv!3801 (_keys!3649 (v!31416 (underlying!6911 (v!31417 (underlying!6912 thiss!42540)))))) (array_inv!3802 (_values!3632 (v!31416 (underlying!6911 (v!31417 (underlying!6912 thiss!42540)))))) e!1574871))))

(declare-fun b!2481134 () Bool)

(declare-fun res!1050410 () Bool)

(assert (=> b!2481134 (=> (not res!1050410) (not e!1574873))))

(declare-fun valid!2558 (MutableMap!3262) Bool)

(assert (=> b!2481134 (= res!1050410 (valid!2558 thiss!42540))))

(declare-fun b!2481135 () Bool)

(assert (=> b!2481135 (= e!1574870 e!1574872)))

(declare-fun mapIsEmpty!15514 () Bool)

(assert (=> mapIsEmpty!15514 mapRes!15514))

(declare-fun b!2481136 () Bool)

(declare-fun tp!794188 () Bool)

(assert (=> b!2481136 (= e!1574871 (and tp!794188 mapRes!15514))))

(declare-fun condMapEmpty!15514 () Bool)

(declare-fun mapDefault!15514 () List!29187)

(assert (=> b!2481136 (= condMapEmpty!15514 (= (arr!5294 (_values!3632 (v!31416 (underlying!6911 (v!31417 (underlying!6912 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29187)) mapDefault!15514)))))

(assert (=> b!2481137 (= e!1574876 (and e!1574874 tp!794189))))

(assert (= (and start!242078 res!1050409) b!2481134))

(assert (= (and b!2481134 res!1050410) b!2481130))

(assert (= (and b!2481136 condMapEmpty!15514) mapIsEmpty!15514))

(assert (= (and b!2481136 (not condMapEmpty!15514)) mapNonEmpty!15514))

(assert (= b!2481133 b!2481136))

(assert (= b!2481135 b!2481133))

(assert (= b!2481131 b!2481135))

(assert (= (and b!2481132 ((_ is LongMap!3352) (v!31417 (underlying!6912 thiss!42540)))) b!2481131))

(assert (= b!2481137 b!2481132))

(assert (= (and start!242078 ((_ is HashMap!3262) thiss!42540)) b!2481137))

(declare-fun m!2849223 () Bool)

(assert (=> mapNonEmpty!15514 m!2849223))

(declare-fun m!2849225 () Bool)

(assert (=> b!2481130 m!2849225))

(declare-fun m!2849227 () Bool)

(assert (=> b!2481133 m!2849227))

(declare-fun m!2849229 () Bool)

(assert (=> b!2481133 m!2849229))

(declare-fun m!2849231 () Bool)

(assert (=> b!2481134 m!2849231))

(check-sat (not b!2481134) (not mapNonEmpty!15514) (not b!2481136) b_and!188511 (not b_next!72969) tp_is_empty!12227 (not b!2481130) (not b_next!72971) (not b!2481133) b_and!188513)
(check-sat b_and!188513 b_and!188511 (not b_next!72969) (not b_next!72971))
