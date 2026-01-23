; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296856 () Bool)

(assert start!296856)

(declare-fun b!3168790 () Bool)

(declare-fun b_free!83177 () Bool)

(declare-fun b_next!83881 () Bool)

(assert (=> b!3168790 (= b_free!83177 (not b_next!83881))))

(declare-fun tp!999326 () Bool)

(declare-fun b_and!209455 () Bool)

(assert (=> b!3168790 (= tp!999326 b_and!209455)))

(declare-fun b!3168792 () Bool)

(declare-fun b_free!83179 () Bool)

(declare-fun b_next!83883 () Bool)

(assert (=> b!3168792 (= b_free!83179 (not b_next!83883))))

(declare-fun tp!999327 () Bool)

(declare-fun b_and!209457 () Bool)

(assert (=> b!3168792 (= tp!999327 b_and!209457)))

(declare-fun b!3168782 () Bool)

(declare-fun e!1973671 () Bool)

(declare-fun e!1973674 () Bool)

(assert (=> b!3168782 (= e!1973671 e!1973674)))

(declare-fun b!3168783 () Bool)

(declare-fun e!1973678 () Bool)

(declare-fun tp_is_empty!17069 () Bool)

(assert (=> b!3168783 (= e!1973678 tp_is_empty!17069)))

(declare-fun mapIsEmpty!18932 () Bool)

(declare-fun mapRes!18932 () Bool)

(assert (=> mapIsEmpty!18932 mapRes!18932))

(declare-fun b!3168784 () Bool)

(declare-fun e!1973670 () Bool)

(assert (=> b!3168784 (= e!1973670 e!1973671)))

(declare-fun mapNonEmpty!18932 () Bool)

(declare-fun tp!999334 () Bool)

(declare-fun tp!999332 () Bool)

(assert (=> mapNonEmpty!18932 (= mapRes!18932 (and tp!999334 tp!999332))))

(declare-datatypes ((C!19692 0))(
  ( (C!19693 (val!11882 Int)) )
))
(declare-datatypes ((Regex!9753 0))(
  ( (ElementMatch!9753 (c!532986 C!19692)) (Concat!15074 (regOne!20018 Regex!9753) (regTwo!20018 Regex!9753)) (EmptyExpr!9753) (Star!9753 (reg!10082 Regex!9753)) (EmptyLang!9753) (Union!9753 (regOne!20019 Regex!9753) (regTwo!20019 Regex!9753)) )
))
(declare-datatypes ((tuple2!34624 0))(
  ( (tuple2!34625 (_1!20444 Regex!9753) (_2!20444 C!19692)) )
))
(declare-datatypes ((tuple2!34626 0))(
  ( (tuple2!34627 (_1!20445 tuple2!34624) (_2!20445 Regex!9753)) )
))
(declare-datatypes ((List!35590 0))(
  ( (Nil!35466) (Cons!35466 (h!40886 tuple2!34626) (t!234673 List!35590)) )
))
(declare-fun mapRest!18932 () (Array (_ BitVec 32) List!35590))

(declare-fun mapValue!18932 () List!35590)

(declare-fun mapKey!18932 () (_ BitVec 32))

(declare-datatypes ((array!14914 0))(
  ( (array!14915 (arr!6638 (Array (_ BitVec 32) List!35590)) (size!26724 (_ BitVec 32))) )
))
(declare-datatypes ((array!14916 0))(
  ( (array!14917 (arr!6639 (Array (_ BitVec 32) (_ BitVec 64))) (size!26725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8348 0))(
  ( (LongMapFixedSize!8349 (defaultEntry!4559 Int) (mask!10844 (_ BitVec 32)) (extraKeys!4423 (_ BitVec 32)) (zeroValue!4433 List!35590) (minValue!4433 List!35590) (_size!8391 (_ BitVec 32)) (_keys!4474 array!14916) (_values!4455 array!14914) (_vacant!4235 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16505 0))(
  ( (Cell!16506 (v!35179 LongMapFixedSize!8348)) )
))
(declare-datatypes ((MutLongMap!4174 0))(
  ( (LongMap!4174 (underlying!8577 Cell!16505)) (MutLongMapExt!4173 (__x!22628 Int)) )
))
(declare-datatypes ((Cell!16507 0))(
  ( (Cell!16508 (v!35180 MutLongMap!4174)) )
))
(declare-datatypes ((Hashable!4090 0))(
  ( (HashableExt!4089 (__x!22629 Int)) )
))
(declare-datatypes ((MutableMap!4080 0))(
  ( (MutableMapExt!4079 (__x!22630 Int)) (HashMap!4080 (underlying!8578 Cell!16507) (hashF!6122 Hashable!4090) (_size!8392 (_ BitVec 32)) (defaultValue!4251 Int)) )
))
(declare-datatypes ((Cache!430 0))(
  ( (Cache!431 (cache!4226 MutableMap!4080)) )
))
(declare-fun thiss!28524 () Cache!430)

(assert (=> mapNonEmpty!18932 (= (arr!6638 (_values!4455 (v!35179 (underlying!8577 (v!35180 (underlying!8578 (cache!4226 thiss!28524))))))) (store mapRest!18932 mapKey!18932 mapValue!18932))))

(declare-fun b!3168785 () Bool)

(declare-fun e!1973677 () Bool)

(declare-fun tp!999333 () Bool)

(assert (=> b!3168785 (= e!1973677 (and tp!999333 mapRes!18932))))

(declare-fun condMapEmpty!18932 () Bool)

(declare-fun mapDefault!18932 () List!35590)

(assert (=> b!3168785 (= condMapEmpty!18932 (= (arr!6638 (_values!4455 (v!35179 (underlying!8577 (v!35180 (underlying!8578 (cache!4226 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35590)) mapDefault!18932)))))

(declare-fun b!3168786 () Bool)

(declare-fun e!1973673 () Bool)

(declare-fun lt!1065416 () MutLongMap!4174)

(get-info :version)

(assert (=> b!3168786 (= e!1973673 (and e!1973670 ((_ is LongMap!4174) lt!1065416)))))

(assert (=> b!3168786 (= lt!1065416 (v!35180 (underlying!8578 (cache!4226 thiss!28524))))))

(declare-fun b!3168787 () Bool)

(declare-fun tp!999330 () Bool)

(declare-fun tp!999325 () Bool)

(assert (=> b!3168787 (= e!1973678 (and tp!999330 tp!999325))))

(declare-fun b!3168788 () Bool)

(declare-fun tp!999328 () Bool)

(assert (=> b!3168788 (= e!1973678 tp!999328)))

(declare-fun res!1288452 () Bool)

(declare-fun e!1973672 () Bool)

(assert (=> start!296856 (=> (not res!1288452) (not e!1973672))))

(declare-fun validCacheMap!64 (MutableMap!4080) Bool)

(assert (=> start!296856 (= res!1288452 (validCacheMap!64 (cache!4226 thiss!28524)))))

(assert (=> start!296856 e!1973672))

(declare-fun e!1973676 () Bool)

(declare-fun inv!48148 (Cache!430) Bool)

(assert (=> start!296856 (and (inv!48148 thiss!28524) e!1973676)))

(assert (=> start!296856 e!1973678))

(declare-fun b!3168789 () Bool)

(assert (=> b!3168789 (= e!1973672 false)))

(declare-fun tp!999324 () Bool)

(declare-fun tp!999331 () Bool)

(declare-fun array_inv!4758 (array!14916) Bool)

(declare-fun array_inv!4759 (array!14914) Bool)

(assert (=> b!3168790 (= e!1973674 (and tp!999326 tp!999324 tp!999331 (array_inv!4758 (_keys!4474 (v!35179 (underlying!8577 (v!35180 (underlying!8578 (cache!4226 thiss!28524))))))) (array_inv!4759 (_values!4455 (v!35179 (underlying!8577 (v!35180 (underlying!8578 (cache!4226 thiss!28524))))))) e!1973677))))

(declare-fun b!3168791 () Bool)

(declare-fun tp!999329 () Bool)

(declare-fun tp!999335 () Bool)

(assert (=> b!3168791 (= e!1973678 (and tp!999329 tp!999335))))

(declare-fun e!1973669 () Bool)

(assert (=> b!3168792 (= e!1973669 (and e!1973673 tp!999327))))

(declare-fun b!3168793 () Bool)

(assert (=> b!3168793 (= e!1973676 e!1973669)))

(assert (= (and start!296856 res!1288452) b!3168789))

(assert (= (and b!3168785 condMapEmpty!18932) mapIsEmpty!18932))

(assert (= (and b!3168785 (not condMapEmpty!18932)) mapNonEmpty!18932))

(assert (= b!3168790 b!3168785))

(assert (= b!3168782 b!3168790))

(assert (= b!3168784 b!3168782))

(assert (= (and b!3168786 ((_ is LongMap!4174) (v!35180 (underlying!8578 (cache!4226 thiss!28524))))) b!3168784))

(assert (= b!3168792 b!3168786))

(assert (= (and b!3168793 ((_ is HashMap!4080) (cache!4226 thiss!28524))) b!3168792))

(assert (= start!296856 b!3168793))

(declare-fun r!4733 () Regex!9753)

(assert (= (and start!296856 ((_ is ElementMatch!9753) r!4733)) b!3168783))

(assert (= (and start!296856 ((_ is Concat!15074) r!4733)) b!3168787))

(assert (= (and start!296856 ((_ is Star!9753) r!4733)) b!3168788))

(assert (= (and start!296856 ((_ is Union!9753) r!4733)) b!3168791))

(declare-fun m!3429157 () Bool)

(assert (=> mapNonEmpty!18932 m!3429157))

(declare-fun m!3429159 () Bool)

(assert (=> start!296856 m!3429159))

(declare-fun m!3429161 () Bool)

(assert (=> start!296856 m!3429161))

(declare-fun m!3429163 () Bool)

(assert (=> b!3168790 m!3429163))

(declare-fun m!3429165 () Bool)

(assert (=> b!3168790 m!3429165))

(check-sat (not start!296856) (not mapNonEmpty!18932) b_and!209457 (not b_next!83883) (not b!3168790) tp_is_empty!17069 (not b!3168785) b_and!209455 (not b!3168788) (not b_next!83881) (not b!3168791) (not b!3168787))
(check-sat b_and!209457 b_and!209455 (not b_next!83881) (not b_next!83883))
