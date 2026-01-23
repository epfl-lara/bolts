; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217632 () Bool)

(assert start!217632)

(declare-fun b!2232010 () Bool)

(declare-fun b_free!64713 () Bool)

(declare-fun b_next!65417 () Bool)

(assert (=> b!2232010 (= b_free!64713 (not b_next!65417))))

(declare-fun tp!699905 () Bool)

(declare-fun b_and!174701 () Bool)

(assert (=> b!2232010 (= tp!699905 b_and!174701)))

(declare-fun b!2232008 () Bool)

(declare-fun b_free!64715 () Bool)

(declare-fun b_next!65419 () Bool)

(assert (=> b!2232008 (= b_free!64715 (not b_next!65419))))

(declare-fun tp!699912 () Bool)

(declare-fun b_and!174703 () Bool)

(assert (=> b!2232008 (= tp!699912 b_and!174703)))

(declare-fun b!2231997 () Bool)

(declare-fun e!1426437 () Bool)

(declare-fun e!1426430 () Bool)

(assert (=> b!2231997 (= e!1426437 e!1426430)))

(declare-fun b!2231998 () Bool)

(declare-fun e!1426433 () Bool)

(assert (=> b!2231998 (= e!1426433 false)))

(declare-fun mapNonEmpty!14422 () Bool)

(declare-fun mapRes!14422 () Bool)

(declare-fun tp!699910 () Bool)

(declare-fun tp!699915 () Bool)

(assert (=> mapNonEmpty!14422 (= mapRes!14422 (and tp!699910 tp!699915))))

(declare-datatypes ((C!12996 0))(
  ( (C!12997 (val!7546 Int)) )
))
(declare-datatypes ((Regex!6425 0))(
  ( (ElementMatch!6425 (c!355953 C!12996)) (Concat!10763 (regOne!13362 Regex!6425) (regTwo!13362 Regex!6425)) (EmptyExpr!6425) (Star!6425 (reg!6754 Regex!6425)) (EmptyLang!6425) (Union!6425 (regOne!13363 Regex!6425) (regTwo!13363 Regex!6425)) )
))
(declare-datatypes ((List!26322 0))(
  ( (Nil!26228) (Cons!26228 (h!31629 Regex!6425) (t!199740 List!26322)) )
))
(declare-datatypes ((Context!3946 0))(
  ( (Context!3947 (exprs!2473 List!26322)) )
))
(declare-datatypes ((tuple3!3922 0))(
  ( (tuple3!3923 (_1!15222 Regex!6425) (_2!15222 Context!3946) (_3!2431 C!12996)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25582 0))(
  ( (tuple2!25583 (_1!15223 tuple3!3922) (_2!15223 (InoxSet Context!3946))) )
))
(declare-datatypes ((List!26323 0))(
  ( (Nil!26229) (Cons!26229 (h!31630 tuple2!25582) (t!199741 List!26323)) )
))
(declare-fun mapRest!14422 () (Array (_ BitVec 32) List!26323))

(declare-datatypes ((array!10608 0))(
  ( (array!10609 (arr!4713 (Array (_ BitVec 32) (_ BitVec 64))) (size!20494 (_ BitVec 32))) )
))
(declare-datatypes ((array!10610 0))(
  ( (array!10611 (arr!4714 (Array (_ BitVec 32) List!26323)) (size!20495 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6126 0))(
  ( (LongMapFixedSize!6127 (defaultEntry!3428 Int) (mask!7629 (_ BitVec 32)) (extraKeys!3311 (_ BitVec 32)) (zeroValue!3321 List!26323) (minValue!3321 List!26323) (_size!6173 (_ BitVec 32)) (_keys!3360 array!10608) (_values!3343 array!10610) (_vacant!3124 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12069 0))(
  ( (Cell!12070 (v!29822 LongMapFixedSize!6126)) )
))
(declare-datatypes ((MutLongMap!3063 0))(
  ( (LongMap!3063 (underlying!6327 Cell!12069)) (MutLongMapExt!3062 (__x!17415 Int)) )
))
(declare-datatypes ((Cell!12071 0))(
  ( (Cell!12072 (v!29823 MutLongMap!3063)) )
))
(declare-datatypes ((Hashable!2973 0))(
  ( (HashableExt!2972 (__x!17416 Int)) )
))
(declare-datatypes ((MutableMap!2973 0))(
  ( (MutableMapExt!2972 (__x!17417 Int)) (HashMap!2973 (underlying!6328 Cell!12071) (hashF!4896 Hashable!2973) (_size!6174 (_ BitVec 32)) (defaultValue!3135 Int)) )
))
(declare-datatypes ((CacheDown!1992 0))(
  ( (CacheDown!1993 (cache!3354 MutableMap!2973)) )
))
(declare-fun cacheDown!839 () CacheDown!1992)

(declare-fun mapValue!14422 () List!26323)

(declare-fun mapKey!14422 () (_ BitVec 32))

(assert (=> mapNonEmpty!14422 (= (arr!4714 (_values!3343 (v!29822 (underlying!6327 (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))))) (store mapRest!14422 mapKey!14422 mapValue!14422))))

(declare-fun b!2231999 () Bool)

(declare-fun e!1426431 () Bool)

(declare-fun tp!699908 () Bool)

(declare-fun tp!699904 () Bool)

(assert (=> b!2231999 (= e!1426431 (and tp!699908 tp!699904))))

(declare-fun b!2232000 () Bool)

(declare-fun e!1426439 () Bool)

(declare-fun e!1426432 () Bool)

(declare-fun lt!830609 () MutLongMap!3063)

(get-info :version)

(assert (=> b!2232000 (= e!1426439 (and e!1426432 ((_ is LongMap!3063) lt!830609)))))

(assert (=> b!2232000 (= lt!830609 (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))))

(declare-fun b!2232002 () Bool)

(declare-fun tp!699911 () Bool)

(declare-fun tp!699909 () Bool)

(assert (=> b!2232002 (= e!1426431 (and tp!699911 tp!699909))))

(declare-fun b!2232003 () Bool)

(declare-fun e!1426429 () Bool)

(declare-fun e!1426434 () Bool)

(assert (=> b!2232003 (= e!1426429 e!1426434)))

(declare-fun b!2232004 () Bool)

(declare-fun e!1426438 () Bool)

(declare-fun tp!699913 () Bool)

(assert (=> b!2232004 (= e!1426438 (and tp!699913 mapRes!14422))))

(declare-fun condMapEmpty!14422 () Bool)

(declare-fun mapDefault!14422 () List!26323)

(assert (=> b!2232004 (= condMapEmpty!14422 (= (arr!4714 (_values!3343 (v!29822 (underlying!6327 (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26323)) mapDefault!14422)))))

(declare-fun b!2232005 () Bool)

(declare-fun res!955784 () Bool)

(assert (=> b!2232005 (=> (not res!955784) (not e!1426433))))

(declare-fun context!86 () Context!3946)

(declare-fun expr!64 () Regex!6425)

(declare-fun a!1167 () C!12996)

(declare-datatypes ((Option!5107 0))(
  ( (None!5106) (Some!5106 (v!29824 (InoxSet Context!3946))) )
))
(declare-fun get!7924 (CacheDown!1992 Regex!6425 Context!3946 C!12996) Option!5107)

(assert (=> b!2232005 (= res!955784 (not ((_ is Some!5106) (get!7924 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2232006 () Bool)

(declare-fun tp!699907 () Bool)

(assert (=> b!2232006 (= e!1426431 tp!699907)))

(declare-fun b!2232007 () Bool)

(assert (=> b!2232007 (= e!1426432 e!1426429)))

(declare-fun tp!699903 () Bool)

(declare-fun tp!699906 () Bool)

(declare-fun array_inv!3383 (array!10608) Bool)

(declare-fun array_inv!3384 (array!10610) Bool)

(assert (=> b!2232008 (= e!1426434 (and tp!699912 tp!699906 tp!699903 (array_inv!3383 (_keys!3360 (v!29822 (underlying!6327 (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))))) (array_inv!3384 (_values!3343 (v!29822 (underlying!6327 (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))))) e!1426438))))

(declare-fun mapIsEmpty!14422 () Bool)

(assert (=> mapIsEmpty!14422 mapRes!14422))

(declare-fun res!955783 () Bool)

(assert (=> start!217632 (=> (not res!955783) (not e!1426433))))

(declare-fun validRegex!2396 (Regex!6425) Bool)

(assert (=> start!217632 (= res!955783 (validRegex!2396 expr!64))))

(assert (=> start!217632 e!1426433))

(assert (=> start!217632 e!1426431))

(declare-fun inv!35619 (CacheDown!1992) Bool)

(assert (=> start!217632 (and (inv!35619 cacheDown!839) e!1426437)))

(declare-fun e!1426435 () Bool)

(declare-fun inv!35620 (Context!3946) Bool)

(assert (=> start!217632 (and (inv!35620 context!86) e!1426435)))

(declare-fun tp_is_empty!10075 () Bool)

(assert (=> start!217632 tp_is_empty!10075))

(declare-fun b!2232001 () Bool)

(declare-fun tp!699914 () Bool)

(assert (=> b!2232001 (= e!1426435 tp!699914)))

(declare-fun b!2232009 () Bool)

(assert (=> b!2232009 (= e!1426431 tp_is_empty!10075)))

(assert (=> b!2232010 (= e!1426430 (and e!1426439 tp!699905))))

(assert (= (and start!217632 res!955783) b!2232005))

(assert (= (and b!2232005 res!955784) b!2231998))

(assert (= (and start!217632 ((_ is ElementMatch!6425) expr!64)) b!2232009))

(assert (= (and start!217632 ((_ is Concat!10763) expr!64)) b!2231999))

(assert (= (and start!217632 ((_ is Star!6425) expr!64)) b!2232006))

(assert (= (and start!217632 ((_ is Union!6425) expr!64)) b!2232002))

(assert (= (and b!2232004 condMapEmpty!14422) mapIsEmpty!14422))

(assert (= (and b!2232004 (not condMapEmpty!14422)) mapNonEmpty!14422))

(assert (= b!2232008 b!2232004))

(assert (= b!2232003 b!2232008))

(assert (= b!2232007 b!2232003))

(assert (= (and b!2232000 ((_ is LongMap!3063) (v!29823 (underlying!6328 (cache!3354 cacheDown!839))))) b!2232007))

(assert (= b!2232010 b!2232000))

(assert (= (and b!2231997 ((_ is HashMap!2973) (cache!3354 cacheDown!839))) b!2232010))

(assert (= start!217632 b!2231997))

(assert (= start!217632 b!2232001))

(declare-fun m!2668055 () Bool)

(assert (=> mapNonEmpty!14422 m!2668055))

(declare-fun m!2668057 () Bool)

(assert (=> b!2232005 m!2668057))

(declare-fun m!2668059 () Bool)

(assert (=> b!2232008 m!2668059))

(declare-fun m!2668061 () Bool)

(assert (=> b!2232008 m!2668061))

(declare-fun m!2668063 () Bool)

(assert (=> start!217632 m!2668063))

(declare-fun m!2668065 () Bool)

(assert (=> start!217632 m!2668065))

(declare-fun m!2668067 () Bool)

(assert (=> start!217632 m!2668067))

(check-sat (not b!2232002) (not start!217632) (not b!2232001) (not b!2231999) b_and!174703 (not b!2232006) (not b_next!65417) b_and!174701 (not b!2232005) tp_is_empty!10075 (not mapNonEmpty!14422) (not b_next!65419) (not b!2232008) (not b!2232004))
(check-sat b_and!174701 b_and!174703 (not b_next!65419) (not b_next!65417))
