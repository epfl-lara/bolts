; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47792 () Bool)

(assert start!47792)

(declare-fun b!521422 () Bool)

(declare-fun b_free!13673 () Bool)

(declare-fun b_next!13689 () Bool)

(assert (=> b!521422 (= b_free!13673 (not b_next!13689))))

(declare-fun tp!162208 () Bool)

(declare-fun b_and!51167 () Bool)

(assert (=> b!521422 (= tp!162208 b_and!51167)))

(declare-fun b!521425 () Bool)

(declare-fun b_free!13675 () Bool)

(declare-fun b_next!13691 () Bool)

(assert (=> b!521425 (= b_free!13675 (not b_next!13691))))

(declare-fun tp!162211 () Bool)

(declare-fun b_and!51169 () Bool)

(assert (=> b!521425 (= tp!162211 b_and!51169)))

(declare-fun b!521420 () Bool)

(declare-fun e!312621 () Bool)

(declare-fun tp!162209 () Bool)

(declare-fun mapRes!2087 () Bool)

(assert (=> b!521420 (= e!312621 (and tp!162209 mapRes!2087))))

(declare-fun condMapEmpty!2087 () Bool)

(declare-datatypes ((C!3320 0))(
  ( (C!3321 (val!1886 Int)) )
))
(declare-datatypes ((Regex!1199 0))(
  ( (ElementMatch!1199 (c!100720 C!3320)) (Concat!2101 (regOne!2910 Regex!1199) (regTwo!2910 Regex!1199)) (EmptyExpr!1199) (Star!1199 (reg!1528 Regex!1199)) (EmptyLang!1199) (Union!1199 (regOne!2911 Regex!1199) (regTwo!2911 Regex!1199)) )
))
(declare-datatypes ((tuple2!5920 0))(
  ( (tuple2!5921 (_1!3176 Regex!1199) (_2!3176 C!3320)) )
))
(declare-datatypes ((tuple2!5922 0))(
  ( (tuple2!5923 (_1!3177 tuple2!5920) (_2!3177 Regex!1199)) )
))
(declare-datatypes ((List!4834 0))(
  ( (Nil!4824) (Cons!4824 (h!10225 tuple2!5922) (t!73424 List!4834)) )
))
(declare-datatypes ((array!2103 0))(
  ( (array!2104 (arr!962 (Array (_ BitVec 32) (_ BitVec 64))) (size!3938 (_ BitVec 32))) )
))
(declare-datatypes ((array!2105 0))(
  ( (array!2106 (arr!963 (Array (_ BitVec 32) List!4834)) (size!3939 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1078 0))(
  ( (LongMapFixedSize!1079 (defaultEntry!895 Int) (mask!2010 (_ BitVec 32)) (extraKeys!786 (_ BitVec 32)) (zeroValue!796 List!4834) (minValue!796 List!4834) (_size!1187 (_ BitVec 32)) (_keys!833 array!2103) (_values!818 array!2105) (_vacant!600 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2097 0))(
  ( (Cell!2098 (v!15911 LongMapFixedSize!1078)) )
))
(declare-datatypes ((MutLongMap!539 0))(
  ( (LongMap!539 (underlying!1257 Cell!2097)) (MutLongMapExt!538 (__x!3510 Int)) )
))
(declare-datatypes ((Cell!2099 0))(
  ( (Cell!2100 (v!15912 MutLongMap!539)) )
))
(declare-datatypes ((Hashable!511 0))(
  ( (HashableExt!510 (__x!3511 Int)) )
))
(declare-datatypes ((MutableMap!511 0))(
  ( (MutableMapExt!510 (__x!3512 Int)) (HashMap!511 (underlying!1258 Cell!2099) (hashF!2419 Hashable!511) (_size!1188 (_ BitVec 32)) (defaultValue!662 Int)) )
))
(declare-datatypes ((Cache!294 0))(
  ( (Cache!295 (cache!898 MutableMap!511)) )
))
(declare-fun thiss!28494 () Cache!294)

(declare-fun mapDefault!2087 () List!4834)

(assert (=> b!521420 (= condMapEmpty!2087 (= (arr!963 (_values!818 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) ((as const (Array (_ BitVec 32) List!4834)) mapDefault!2087)))))

(declare-fun b!521421 () Bool)

(declare-fun e!312618 () Bool)

(declare-fun e!312619 () Bool)

(assert (=> b!521421 (= e!312618 e!312619)))

(declare-fun tp!162210 () Bool)

(declare-fun e!312625 () Bool)

(declare-fun tp!162207 () Bool)

(declare-fun array_inv!701 (array!2103) Bool)

(declare-fun array_inv!702 (array!2105) Bool)

(assert (=> b!521422 (= e!312625 (and tp!162208 tp!162210 tp!162207 (array_inv!701 (_keys!833 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) (array_inv!702 (_values!818 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) e!312621))))

(declare-fun b!521423 () Bool)

(declare-fun e!312623 () Bool)

(get-info :version)

(assert (=> b!521423 (= e!312623 (not ((_ is HashMap!511) (cache!898 thiss!28494))))))

(declare-fun b!521424 () Bool)

(declare-fun e!312620 () Bool)

(declare-fun e!312617 () Bool)

(declare-fun lt!217133 () MutLongMap!539)

(assert (=> b!521424 (= e!312620 (and e!312617 ((_ is LongMap!539) lt!217133)))))

(assert (=> b!521424 (= lt!217133 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))

(declare-fun mapIsEmpty!2087 () Bool)

(assert (=> mapIsEmpty!2087 mapRes!2087))

(assert (=> b!521425 (= e!312619 (and e!312620 tp!162211))))

(declare-fun res!221462 () Bool)

(assert (=> start!47792 (=> (not res!221462) (not e!312623))))

(declare-fun validCacheMap!34 (MutableMap!511) Bool)

(assert (=> start!47792 (= res!221462 (validCacheMap!34 (cache!898 thiss!28494)))))

(assert (=> start!47792 e!312623))

(declare-fun inv!6099 (Cache!294) Bool)

(assert (=> start!47792 (and (inv!6099 thiss!28494) e!312618)))

(declare-fun b!521426 () Bool)

(declare-fun e!312622 () Bool)

(assert (=> b!521426 (= e!312617 e!312622)))

(declare-fun b!521427 () Bool)

(assert (=> b!521427 (= e!312622 e!312625)))

(declare-fun mapNonEmpty!2087 () Bool)

(declare-fun tp!162212 () Bool)

(declare-fun tp!162206 () Bool)

(assert (=> mapNonEmpty!2087 (= mapRes!2087 (and tp!162212 tp!162206))))

(declare-fun mapRest!2087 () (Array (_ BitVec 32) List!4834))

(declare-fun mapValue!2087 () List!4834)

(declare-fun mapKey!2087 () (_ BitVec 32))

(assert (=> mapNonEmpty!2087 (= (arr!963 (_values!818 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) (store mapRest!2087 mapKey!2087 mapValue!2087))))

(assert (= (and start!47792 res!221462) b!521423))

(assert (= (and b!521420 condMapEmpty!2087) mapIsEmpty!2087))

(assert (= (and b!521420 (not condMapEmpty!2087)) mapNonEmpty!2087))

(assert (= b!521422 b!521420))

(assert (= b!521427 b!521422))

(assert (= b!521426 b!521427))

(assert (= (and b!521424 ((_ is LongMap!539) (v!15912 (underlying!1258 (cache!898 thiss!28494))))) b!521426))

(assert (= b!521425 b!521424))

(assert (= (and b!521421 ((_ is HashMap!511) (cache!898 thiss!28494))) b!521425))

(assert (= start!47792 b!521421))

(declare-fun m!767899 () Bool)

(assert (=> b!521422 m!767899))

(declare-fun m!767901 () Bool)

(assert (=> b!521422 m!767901))

(declare-fun m!767903 () Bool)

(assert (=> start!47792 m!767903))

(declare-fun m!767905 () Bool)

(assert (=> start!47792 m!767905))

(declare-fun m!767907 () Bool)

(assert (=> mapNonEmpty!2087 m!767907))

(check-sat (not b!521420) (not mapNonEmpty!2087) (not b_next!13689) (not b!521422) b_and!51169 (not b_next!13691) b_and!51167 (not start!47792))
(check-sat b_and!51167 b_and!51169 (not b_next!13691) (not b_next!13689))
(get-model)

(declare-fun d!186146 () Bool)

(assert (=> d!186146 (= (array_inv!701 (_keys!833 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) (bvsge (size!3938 (_keys!833 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521422 d!186146))

(declare-fun d!186148 () Bool)

(assert (=> d!186148 (= (array_inv!702 (_values!818 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) (bvsge (size!3939 (_values!818 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521422 d!186148))

(declare-fun d!186150 () Bool)

(declare-fun res!221469 () Bool)

(declare-fun e!312630 () Bool)

(assert (=> d!186150 (=> (not res!221469) (not e!312630))))

(declare-fun valid!513 (MutableMap!511) Bool)

(assert (=> d!186150 (= res!221469 (valid!513 (cache!898 thiss!28494)))))

(assert (=> d!186150 (= (validCacheMap!34 (cache!898 thiss!28494)) e!312630)))

(declare-fun b!521434 () Bool)

(declare-fun res!221470 () Bool)

(assert (=> b!521434 (=> (not res!221470) (not e!312630))))

(declare-fun invariantList!87 (List!4834) Bool)

(declare-datatypes ((ListMap!223 0))(
  ( (ListMap!224 (toList!444 List!4834)) )
))
(declare-fun map!1108 (MutableMap!511) ListMap!223)

(assert (=> b!521434 (= res!221470 (invariantList!87 (toList!444 (map!1108 (cache!898 thiss!28494)))))))

(declare-fun b!521435 () Bool)

(declare-fun lambda!14956 () Int)

(declare-fun forall!1464 (List!4834 Int) Bool)

(assert (=> b!521435 (= e!312630 (forall!1464 (toList!444 (map!1108 (cache!898 thiss!28494))) lambda!14956))))

(assert (= (and d!186150 res!221469) b!521434))

(assert (= (and b!521434 res!221470) b!521435))

(declare-fun m!767910 () Bool)

(assert (=> d!186150 m!767910))

(declare-fun m!767912 () Bool)

(assert (=> b!521434 m!767912))

(declare-fun m!767914 () Bool)

(assert (=> b!521434 m!767914))

(assert (=> b!521435 m!767912))

(declare-fun m!767916 () Bool)

(assert (=> b!521435 m!767916))

(assert (=> start!47792 d!186150))

(declare-fun d!186152 () Bool)

(declare-fun res!221473 () Bool)

(declare-fun e!312633 () Bool)

(assert (=> d!186152 (=> (not res!221473) (not e!312633))))

(assert (=> d!186152 (= res!221473 ((_ is HashMap!511) (cache!898 thiss!28494)))))

(assert (=> d!186152 (= (inv!6099 thiss!28494) e!312633)))

(declare-fun b!521438 () Bool)

(assert (=> b!521438 (= e!312633 (validCacheMap!34 (cache!898 thiss!28494)))))

(assert (= (and d!186152 res!221473) b!521438))

(assert (=> b!521438 m!767903))

(assert (=> start!47792 d!186152))

(declare-fun tp!162220 () Bool)

(declare-fun tp_is_empty!2785 () Bool)

(declare-fun tp!162219 () Bool)

(declare-fun e!312636 () Bool)

(declare-fun b!521443 () Bool)

(declare-fun tp!162221 () Bool)

(assert (=> b!521443 (= e!312636 (and tp!162219 tp_is_empty!2785 tp!162220 tp!162221))))

(assert (=> b!521422 (= tp!162210 e!312636)))

(assert (= (and b!521422 ((_ is Cons!4824) (zeroValue!796 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494)))))))) b!521443))

(declare-fun e!312637 () Bool)

(declare-fun tp!162224 () Bool)

(declare-fun tp!162222 () Bool)

(declare-fun tp!162223 () Bool)

(declare-fun b!521444 () Bool)

(assert (=> b!521444 (= e!312637 (and tp!162222 tp_is_empty!2785 tp!162223 tp!162224))))

(assert (=> b!521422 (= tp!162207 e!312637)))

(assert (= (and b!521422 ((_ is Cons!4824) (minValue!796 (v!15911 (underlying!1257 (v!15912 (underlying!1258 (cache!898 thiss!28494)))))))) b!521444))

(declare-fun mapNonEmpty!2090 () Bool)

(declare-fun mapRes!2090 () Bool)

(declare-fun tp!162244 () Bool)

(declare-fun e!312643 () Bool)

(assert (=> mapNonEmpty!2090 (= mapRes!2090 (and tp!162244 e!312643))))

(declare-fun mapKey!2090 () (_ BitVec 32))

(declare-fun mapRest!2090 () (Array (_ BitVec 32) List!4834))

(declare-fun mapValue!2090 () List!4834)

(assert (=> mapNonEmpty!2090 (= mapRest!2087 (store mapRest!2090 mapKey!2090 mapValue!2090))))

(declare-fun b!521452 () Bool)

(declare-fun e!312642 () Bool)

(declare-fun tp!162243 () Bool)

(declare-fun tp!162245 () Bool)

(declare-fun tp!162241 () Bool)

(assert (=> b!521452 (= e!312642 (and tp!162243 tp_is_empty!2785 tp!162241 tp!162245))))

(declare-fun mapIsEmpty!2090 () Bool)

(assert (=> mapIsEmpty!2090 mapRes!2090))

(declare-fun tp!162242 () Bool)

(declare-fun tp!162239 () Bool)

(declare-fun tp!162240 () Bool)

(declare-fun b!521451 () Bool)

(assert (=> b!521451 (= e!312643 (and tp!162242 tp_is_empty!2785 tp!162239 tp!162240))))

(declare-fun condMapEmpty!2090 () Bool)

(declare-fun mapDefault!2090 () List!4834)

(assert (=> mapNonEmpty!2087 (= condMapEmpty!2090 (= mapRest!2087 ((as const (Array (_ BitVec 32) List!4834)) mapDefault!2090)))))

(assert (=> mapNonEmpty!2087 (= tp!162212 (and e!312642 mapRes!2090))))

(assert (= (and mapNonEmpty!2087 condMapEmpty!2090) mapIsEmpty!2090))

(assert (= (and mapNonEmpty!2087 (not condMapEmpty!2090)) mapNonEmpty!2090))

(assert (= (and mapNonEmpty!2090 ((_ is Cons!4824) mapValue!2090)) b!521451))

(assert (= (and mapNonEmpty!2087 ((_ is Cons!4824) mapDefault!2090)) b!521452))

(declare-fun m!767918 () Bool)

(assert (=> mapNonEmpty!2090 m!767918))

(declare-fun tp!162246 () Bool)

(declare-fun b!521453 () Bool)

(declare-fun e!312644 () Bool)

(declare-fun tp!162247 () Bool)

(declare-fun tp!162248 () Bool)

(assert (=> b!521453 (= e!312644 (and tp!162246 tp_is_empty!2785 tp!162247 tp!162248))))

(assert (=> mapNonEmpty!2087 (= tp!162206 e!312644)))

(assert (= (and mapNonEmpty!2087 ((_ is Cons!4824) mapValue!2087)) b!521453))

(declare-fun tp!162249 () Bool)

(declare-fun e!312645 () Bool)

(declare-fun b!521454 () Bool)

(declare-fun tp!162250 () Bool)

(declare-fun tp!162251 () Bool)

(assert (=> b!521454 (= e!312645 (and tp!162249 tp_is_empty!2785 tp!162250 tp!162251))))

(assert (=> b!521420 (= tp!162209 e!312645)))

(assert (= (and b!521420 ((_ is Cons!4824) mapDefault!2087)) b!521454))

(check-sat (not b!521438) tp_is_empty!2785 (not b!521435) b_and!51169 (not d!186150) (not b!521454) b_and!51167 (not b!521451) (not b!521434) (not b_next!13689) (not b_next!13691) (not b!521452) (not b!521444) (not b!521453) (not mapNonEmpty!2090) (not b!521443))
(check-sat b_and!51167 b_and!51169 (not b_next!13691) (not b_next!13689))
