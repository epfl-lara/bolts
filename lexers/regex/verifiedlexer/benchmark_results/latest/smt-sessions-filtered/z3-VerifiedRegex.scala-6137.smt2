; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297358 () Bool)

(assert start!297358)

(declare-fun b!3175502 () Bool)

(declare-fun b_free!83465 () Bool)

(declare-fun b_next!84169 () Bool)

(assert (=> b!3175502 (= b_free!83465 (not b_next!84169))))

(declare-fun tp!1004188 () Bool)

(declare-fun b_and!209759 () Bool)

(assert (=> b!3175502 (= tp!1004188 b_and!209759)))

(declare-fun b!3175505 () Bool)

(declare-fun b_free!83467 () Bool)

(declare-fun b_next!84171 () Bool)

(assert (=> b!3175505 (= b_free!83467 (not b_next!84171))))

(declare-fun tp!1004194 () Bool)

(declare-fun b_and!209761 () Bool)

(assert (=> b!3175505 (= tp!1004194 b_and!209761)))

(declare-fun tp!1004192 () Bool)

(declare-datatypes ((array!15248 0))(
  ( (array!15249 (arr!6782 (Array (_ BitVec 32) (_ BitVec 64))) (size!26868 (_ BitVec 32))) )
))
(declare-datatypes ((C!19836 0))(
  ( (C!19837 (val!11954 Int)) )
))
(declare-datatypes ((Regex!9825 0))(
  ( (ElementMatch!9825 (c!533618 C!19836)) (Concat!15146 (regOne!20162 Regex!9825) (regTwo!20162 Regex!9825)) (EmptyExpr!9825) (Star!9825 (reg!10154 Regex!9825)) (EmptyLang!9825) (Union!9825 (regOne!20163 Regex!9825) (regTwo!20163 Regex!9825)) )
))
(declare-datatypes ((tuple2!34978 0))(
  ( (tuple2!34979 (_1!20621 Regex!9825) (_2!20621 C!19836)) )
))
(declare-datatypes ((tuple2!34980 0))(
  ( (tuple2!34981 (_1!20622 tuple2!34978) (_2!20622 Regex!9825)) )
))
(declare-datatypes ((List!35681 0))(
  ( (Nil!35557) (Cons!35557 (h!40977 tuple2!34980) (t!234772 List!35681)) )
))
(declare-datatypes ((array!15250 0))(
  ( (array!15251 (arr!6783 (Array (_ BitVec 32) List!35681)) (size!26869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8492 0))(
  ( (LongMapFixedSize!8493 (defaultEntry!4631 Int) (mask!10952 (_ BitVec 32)) (extraKeys!4495 (_ BitVec 32)) (zeroValue!4505 List!35681) (minValue!4505 List!35681) (_size!8535 (_ BitVec 32)) (_keys!4546 array!15248) (_values!4527 array!15250) (_vacant!4307 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16793 0))(
  ( (Cell!16794 (v!35360 LongMapFixedSize!8492)) )
))
(declare-datatypes ((Hashable!4162 0))(
  ( (HashableExt!4161 (__x!22844 Int)) )
))
(declare-datatypes ((MutLongMap!4246 0))(
  ( (LongMap!4246 (underlying!8721 Cell!16793)) (MutLongMapExt!4245 (__x!22845 Int)) )
))
(declare-datatypes ((Cell!16795 0))(
  ( (Cell!16796 (v!35361 MutLongMap!4246)) )
))
(declare-datatypes ((MutableMap!4152 0))(
  ( (MutableMapExt!4151 (__x!22846 Int)) (HashMap!4152 (underlying!8722 Cell!16795) (hashF!6194 Hashable!4162) (_size!8536 (_ BitVec 32)) (defaultValue!4323 Int)) )
))
(declare-fun m!3458 () MutableMap!4152)

(declare-fun e!1977938 () Bool)

(declare-fun e!1977932 () Bool)

(declare-fun tp!1004191 () Bool)

(declare-fun array_inv!4874 (array!15248) Bool)

(declare-fun array_inv!4875 (array!15250) Bool)

(assert (=> b!3175502 (= e!1977932 (and tp!1004188 tp!1004191 tp!1004192 (array_inv!4874 (_keys!4546 (v!35360 (underlying!8721 (v!35361 (underlying!8722 m!3458)))))) (array_inv!4875 (_values!4527 (v!35360 (underlying!8721 (v!35361 (underlying!8722 m!3458)))))) e!1977938))))

(declare-fun b!3175503 () Bool)

(declare-fun e!1977931 () Bool)

(assert (=> b!3175503 (= e!1977931 false)))

(declare-fun lt!1067833 () Bool)

(declare-fun valid!3300 (MutableMap!4152) Bool)

(assert (=> b!3175503 (= lt!1067833 (valid!3300 m!3458))))

(declare-fun b!3175504 () Bool)

(declare-fun e!1977933 () Bool)

(declare-fun e!1977934 () Bool)

(declare-fun lt!1067834 () MutLongMap!4246)

(get-info :version)

(assert (=> b!3175504 (= e!1977933 (and e!1977934 ((_ is LongMap!4246) lt!1067834)))))

(assert (=> b!3175504 (= lt!1067834 (v!35361 (underlying!8722 m!3458)))))

(declare-fun res!1290175 () Bool)

(assert (=> start!297358 (=> (not res!1290175) (not e!1977931))))

(assert (=> start!297358 (= res!1290175 ((_ is HashMap!4152) m!3458))))

(assert (=> start!297358 e!1977931))

(declare-fun e!1977936 () Bool)

(assert (=> start!297358 e!1977936))

(assert (=> b!3175505 (= e!1977936 (and e!1977933 tp!1004194))))

(declare-fun b!3175506 () Bool)

(declare-fun e!1977937 () Bool)

(assert (=> b!3175506 (= e!1977934 e!1977937)))

(declare-fun mapIsEmpty!19217 () Bool)

(declare-fun mapRes!19217 () Bool)

(assert (=> mapIsEmpty!19217 mapRes!19217))

(declare-fun mapNonEmpty!19217 () Bool)

(declare-fun tp!1004189 () Bool)

(declare-fun tp!1004190 () Bool)

(assert (=> mapNonEmpty!19217 (= mapRes!19217 (and tp!1004189 tp!1004190))))

(declare-fun mapRest!19217 () (Array (_ BitVec 32) List!35681))

(declare-fun mapValue!19217 () List!35681)

(declare-fun mapKey!19217 () (_ BitVec 32))

(assert (=> mapNonEmpty!19217 (= (arr!6783 (_values!4527 (v!35360 (underlying!8721 (v!35361 (underlying!8722 m!3458)))))) (store mapRest!19217 mapKey!19217 mapValue!19217))))

(declare-fun b!3175507 () Bool)

(declare-fun tp!1004193 () Bool)

(assert (=> b!3175507 (= e!1977938 (and tp!1004193 mapRes!19217))))

(declare-fun condMapEmpty!19217 () Bool)

(declare-fun mapDefault!19217 () List!35681)

(assert (=> b!3175507 (= condMapEmpty!19217 (= (arr!6783 (_values!4527 (v!35360 (underlying!8721 (v!35361 (underlying!8722 m!3458)))))) ((as const (Array (_ BitVec 32) List!35681)) mapDefault!19217)))))

(declare-fun b!3175508 () Bool)

(assert (=> b!3175508 (= e!1977937 e!1977932)))

(assert (= (and start!297358 res!1290175) b!3175503))

(assert (= (and b!3175507 condMapEmpty!19217) mapIsEmpty!19217))

(assert (= (and b!3175507 (not condMapEmpty!19217)) mapNonEmpty!19217))

(assert (= b!3175502 b!3175507))

(assert (= b!3175508 b!3175502))

(assert (= b!3175506 b!3175508))

(assert (= (and b!3175504 ((_ is LongMap!4246) (v!35361 (underlying!8722 m!3458)))) b!3175506))

(assert (= b!3175505 b!3175504))

(assert (= (and start!297358 ((_ is HashMap!4152) m!3458)) b!3175505))

(declare-fun m!3432267 () Bool)

(assert (=> b!3175502 m!3432267))

(declare-fun m!3432269 () Bool)

(assert (=> b!3175502 m!3432269))

(declare-fun m!3432271 () Bool)

(assert (=> b!3175503 m!3432271))

(declare-fun m!3432273 () Bool)

(assert (=> mapNonEmpty!19217 m!3432273))

(check-sat (not b!3175507) b_and!209761 (not mapNonEmpty!19217) b_and!209759 (not b_next!84171) (not b_next!84169) (not b!3175502) (not b!3175503))
(check-sat b_and!209761 b_and!209759 (not b_next!84169) (not b_next!84171))
