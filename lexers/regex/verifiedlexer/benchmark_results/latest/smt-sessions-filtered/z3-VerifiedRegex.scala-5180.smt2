; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266572 () Bool)

(assert start!266572)

(declare-fun b!2749522 () Bool)

(declare-fun b_free!77669 () Bool)

(declare-fun b_next!78373 () Bool)

(assert (=> b!2749522 (= b_free!77669 (not b_next!78373))))

(declare-fun tp!867692 () Bool)

(declare-fun b_and!202407 () Bool)

(assert (=> b!2749522 (= tp!867692 b_and!202407)))

(declare-fun b!2749523 () Bool)

(declare-fun b_free!77671 () Bool)

(declare-fun b_next!78375 () Bool)

(assert (=> b!2749523 (= b_free!77671 (not b_next!78375))))

(declare-fun tp!867702 () Bool)

(declare-fun b_and!202409 () Bool)

(assert (=> b!2749523 (= tp!867702 b_and!202409)))

(declare-fun b!2749513 () Bool)

(declare-fun b_free!77673 () Bool)

(declare-fun b_next!78377 () Bool)

(assert (=> b!2749513 (= b_free!77673 (not b_next!78377))))

(declare-fun tp!867694 () Bool)

(declare-fun b_and!202411 () Bool)

(assert (=> b!2749513 (= tp!867694 b_and!202411)))

(declare-fun b!2749512 () Bool)

(declare-fun b_free!77675 () Bool)

(declare-fun b_next!78379 () Bool)

(assert (=> b!2749512 (= b_free!77675 (not b_next!78379))))

(declare-fun tp!867697 () Bool)

(declare-fun b_and!202413 () Bool)

(assert (=> b!2749512 (= tp!867697 b_and!202413)))

(declare-fun b!2749509 () Bool)

(declare-fun e!1733013 () Bool)

(declare-fun e!1733008 () Bool)

(assert (=> b!2749509 (= e!1733013 e!1733008)))

(declare-fun b!2749510 () Bool)

(declare-fun e!1733020 () Bool)

(declare-fun e!1733009 () Bool)

(assert (=> b!2749510 (= e!1733020 e!1733009)))

(declare-fun b!2749511 () Bool)

(declare-fun e!1733017 () Bool)

(declare-datatypes ((C!16208 0))(
  ( (C!16209 (val!10038 Int)) )
))
(declare-datatypes ((Regex!8025 0))(
  ( (ElementMatch!8025 (c!445044 C!16208)) (Concat!13113 (regOne!16562 Regex!8025) (regTwo!16562 Regex!8025)) (EmptyExpr!8025) (Star!8025 (reg!8354 Regex!8025)) (EmptyLang!8025) (Union!8025 (regOne!16563 Regex!8025) (regTwo!16563 Regex!8025)) )
))
(declare-datatypes ((List!31849 0))(
  ( (Nil!31749) (Cons!31749 (h!37169 Regex!8025) (t!227953 List!31849)) )
))
(declare-datatypes ((Context!4486 0))(
  ( (Context!4487 (exprs!2743 List!31849)) )
))
(declare-datatypes ((tuple3!4508 0))(
  ( (tuple3!4509 (_1!18550 Regex!8025) (_2!18550 Context!4486) (_3!2724 C!16208)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31652 0))(
  ( (tuple2!31653 (_1!18551 tuple3!4508) (_2!18551 (InoxSet Context!4486))) )
))
(declare-datatypes ((List!31850 0))(
  ( (Nil!31750) (Cons!31750 (h!37170 tuple2!31652) (t!227954 List!31850)) )
))
(declare-datatypes ((array!13045 0))(
  ( (array!13046 (arr!5819 (Array (_ BitVec 32) List!31850)) (size!24514 (_ BitVec 32))) )
))
(declare-datatypes ((array!13047 0))(
  ( (array!13048 (arr!5820 (Array (_ BitVec 32) (_ BitVec 64))) (size!24515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7322 0))(
  ( (LongMapFixedSize!7323 (defaultEntry!4046 Int) (mask!9410 (_ BitVec 32)) (extraKeys!3910 (_ BitVec 32)) (zeroValue!3920 List!31850) (minValue!3920 List!31850) (_size!7365 (_ BitVec 32)) (_keys!3961 array!13047) (_values!3942 array!13045) (_vacant!3722 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14453 0))(
  ( (Cell!14454 (v!33361 LongMapFixedSize!7322)) )
))
(declare-datatypes ((MutLongMap!3661 0))(
  ( (LongMap!3661 (underlying!7525 Cell!14453)) (MutLongMapExt!3660 (__x!20633 Int)) )
))
(declare-fun lt!972370 () MutLongMap!3661)

(get-info :version)

(assert (=> b!2749511 (= e!1733017 (and e!1733020 ((_ is LongMap!3661) lt!972370)))))

(declare-datatypes ((Cell!14455 0))(
  ( (Cell!14456 (v!33362 MutLongMap!3661)) )
))
(declare-datatypes ((Hashable!3577 0))(
  ( (HashableExt!3576 (__x!20634 Int)) )
))
(declare-datatypes ((MutableMap!3567 0))(
  ( (MutableMapExt!3566 (__x!20635 Int)) (HashMap!3567 (underlying!7526 Cell!14455) (hashF!5609 Hashable!3577) (_size!7366 (_ BitVec 32)) (defaultValue!3738 Int)) )
))
(declare-datatypes ((CacheDown!2394 0))(
  ( (CacheDown!2395 (cache!3710 MutableMap!3567)) )
))
(declare-fun cacheDown!1142 () CacheDown!2394)

(assert (=> b!2749511 (= lt!972370 (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))))

(declare-fun e!1733018 () Bool)

(declare-fun tp!867698 () Bool)

(declare-fun tp!867703 () Bool)

(declare-datatypes ((tuple2!31654 0))(
  ( (tuple2!31655 (_1!18552 Context!4486) (_2!18552 C!16208)) )
))
(declare-datatypes ((tuple2!31656 0))(
  ( (tuple2!31657 (_1!18553 tuple2!31654) (_2!18553 (InoxSet Context!4486))) )
))
(declare-datatypes ((List!31851 0))(
  ( (Nil!31751) (Cons!31751 (h!37171 tuple2!31656) (t!227955 List!31851)) )
))
(declare-datatypes ((array!13049 0))(
  ( (array!13050 (arr!5821 (Array (_ BitVec 32) List!31851)) (size!24516 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7324 0))(
  ( (LongMapFixedSize!7325 (defaultEntry!4047 Int) (mask!9411 (_ BitVec 32)) (extraKeys!3911 (_ BitVec 32)) (zeroValue!3921 List!31851) (minValue!3921 List!31851) (_size!7367 (_ BitVec 32)) (_keys!3962 array!13047) (_values!3943 array!13049) (_vacant!3723 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14457 0))(
  ( (Cell!14458 (v!33363 LongMapFixedSize!7324)) )
))
(declare-datatypes ((MutLongMap!3662 0))(
  ( (LongMap!3662 (underlying!7527 Cell!14457)) (MutLongMapExt!3661 (__x!20636 Int)) )
))
(declare-datatypes ((Cell!14459 0))(
  ( (Cell!14460 (v!33364 MutLongMap!3662)) )
))
(declare-datatypes ((Hashable!3578 0))(
  ( (HashableExt!3577 (__x!20637 Int)) )
))
(declare-datatypes ((MutableMap!3568 0))(
  ( (MutableMapExt!3567 (__x!20638 Int)) (HashMap!3568 (underlying!7528 Cell!14459) (hashF!5610 Hashable!3578) (_size!7368 (_ BitVec 32)) (defaultValue!3739 Int)) )
))
(declare-datatypes ((CacheUp!2272 0))(
  ( (CacheUp!2273 (cache!3711 MutableMap!3568)) )
))
(declare-fun cacheUp!1023 () CacheUp!2272)

(declare-fun array_inv!4158 (array!13047) Bool)

(declare-fun array_inv!4159 (array!13049) Bool)

(assert (=> b!2749512 (= e!1733008 (and tp!867697 tp!867703 tp!867698 (array_inv!4158 (_keys!3962 (v!33363 (underlying!7527 (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))))) (array_inv!4159 (_values!3943 (v!33363 (underlying!7527 (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))))) e!1733018))))

(declare-fun mapIsEmpty!16699 () Bool)

(declare-fun mapRes!16699 () Bool)

(assert (=> mapIsEmpty!16699 mapRes!16699))

(declare-fun mapNonEmpty!16699 () Bool)

(declare-fun mapRes!16700 () Bool)

(declare-fun tp!867693 () Bool)

(declare-fun tp!867705 () Bool)

(assert (=> mapNonEmpty!16699 (= mapRes!16700 (and tp!867693 tp!867705))))

(declare-fun mapValue!16700 () List!31851)

(declare-fun mapKey!16699 () (_ BitVec 32))

(declare-fun mapRest!16700 () (Array (_ BitVec 32) List!31851))

(assert (=> mapNonEmpty!16699 (= (arr!5821 (_values!3943 (v!33363 (underlying!7527 (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))))) (store mapRest!16700 mapKey!16699 mapValue!16700))))

(declare-fun tp!867690 () Bool)

(declare-fun e!1733007 () Bool)

(declare-fun tp!867700 () Bool)

(declare-fun e!1733004 () Bool)

(declare-fun array_inv!4160 (array!13045) Bool)

(assert (=> b!2749513 (= e!1733007 (and tp!867694 tp!867690 tp!867700 (array_inv!4158 (_keys!3961 (v!33361 (underlying!7525 (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))))) (array_inv!4160 (_values!3942 (v!33361 (underlying!7525 (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))))) e!1733004))))

(declare-fun b!2749514 () Bool)

(declare-fun e!1733019 () Bool)

(declare-fun e!1733006 () Bool)

(assert (=> b!2749514 (= e!1733019 e!1733006)))

(declare-fun res!1153177 () Bool)

(declare-fun e!1733016 () Bool)

(assert (=> start!266572 (=> (not res!1153177) (not e!1733016))))

(declare-fun r!15227 () Regex!8025)

(declare-fun validRegex!3324 (Regex!8025) Bool)

(assert (=> start!266572 (= res!1153177 (validRegex!3324 r!15227))))

(assert (=> start!266572 e!1733016))

(declare-fun e!1733011 () Bool)

(assert (=> start!266572 e!1733011))

(declare-fun inv!43129 (CacheUp!2272) Bool)

(assert (=> start!266572 (and (inv!43129 cacheUp!1023) e!1733019)))

(declare-fun e!1733012 () Bool)

(declare-fun inv!43130 (CacheDown!2394) Bool)

(assert (=> start!266572 (and (inv!43130 cacheDown!1142) e!1733012)))

(declare-fun b!2749515 () Bool)

(declare-fun tp_is_empty!13953 () Bool)

(assert (=> b!2749515 (= e!1733011 tp_is_empty!13953)))

(declare-fun b!2749516 () Bool)

(declare-fun e!1733021 () Bool)

(declare-fun e!1733010 () Bool)

(declare-fun lt!972371 () MutLongMap!3662)

(assert (=> b!2749516 (= e!1733021 (and e!1733010 ((_ is LongMap!3662) lt!972371)))))

(assert (=> b!2749516 (= lt!972371 (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))))

(declare-fun b!2749517 () Bool)

(assert (=> b!2749517 (= e!1733016 false)))

(declare-fun lt!972372 () Bool)

(declare-fun valid!2838 (CacheDown!2394) Bool)

(assert (=> b!2749517 (= lt!972372 (valid!2838 cacheDown!1142))))

(declare-fun b!2749518 () Bool)

(assert (=> b!2749518 (= e!1733009 e!1733007)))

(declare-fun b!2749519 () Bool)

(declare-fun tp!867696 () Bool)

(declare-fun tp!867691 () Bool)

(assert (=> b!2749519 (= e!1733011 (and tp!867696 tp!867691))))

(declare-fun b!2749520 () Bool)

(declare-fun tp!867688 () Bool)

(assert (=> b!2749520 (= e!1733018 (and tp!867688 mapRes!16700))))

(declare-fun condMapEmpty!16699 () Bool)

(declare-fun mapDefault!16699 () List!31851)

(assert (=> b!2749520 (= condMapEmpty!16699 (= (arr!5821 (_values!3943 (v!33363 (underlying!7527 (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31851)) mapDefault!16699)))))

(declare-fun mapNonEmpty!16700 () Bool)

(declare-fun tp!867706 () Bool)

(declare-fun tp!867695 () Bool)

(assert (=> mapNonEmpty!16700 (= mapRes!16699 (and tp!867706 tp!867695))))

(declare-fun mapKey!16700 () (_ BitVec 32))

(declare-fun mapRest!16699 () (Array (_ BitVec 32) List!31850))

(declare-fun mapValue!16699 () List!31850)

(assert (=> mapNonEmpty!16700 (= (arr!5819 (_values!3942 (v!33361 (underlying!7525 (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))))) (store mapRest!16699 mapKey!16700 mapValue!16699))))

(declare-fun b!2749521 () Bool)

(declare-fun tp!867704 () Bool)

(declare-fun tp!867689 () Bool)

(assert (=> b!2749521 (= e!1733011 (and tp!867704 tp!867689))))

(declare-fun e!1733015 () Bool)

(assert (=> b!2749522 (= e!1733015 (and e!1733017 tp!867692))))

(assert (=> b!2749523 (= e!1733006 (and e!1733021 tp!867702))))

(declare-fun b!2749524 () Bool)

(assert (=> b!2749524 (= e!1733012 e!1733015)))

(declare-fun b!2749525 () Bool)

(declare-fun res!1153178 () Bool)

(assert (=> b!2749525 (=> (not res!1153178) (not e!1733016))))

(declare-fun valid!2839 (CacheUp!2272) Bool)

(assert (=> b!2749525 (= res!1153178 (valid!2839 cacheUp!1023))))

(declare-fun b!2749526 () Bool)

(assert (=> b!2749526 (= e!1733010 e!1733013)))

(declare-fun b!2749527 () Bool)

(declare-fun tp!867699 () Bool)

(assert (=> b!2749527 (= e!1733004 (and tp!867699 mapRes!16699))))

(declare-fun condMapEmpty!16700 () Bool)

(declare-fun mapDefault!16700 () List!31850)

(assert (=> b!2749527 (= condMapEmpty!16700 (= (arr!5819 (_values!3942 (v!33361 (underlying!7525 (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31850)) mapDefault!16700)))))

(declare-fun b!2749528 () Bool)

(declare-fun tp!867701 () Bool)

(assert (=> b!2749528 (= e!1733011 tp!867701)))

(declare-fun mapIsEmpty!16700 () Bool)

(assert (=> mapIsEmpty!16700 mapRes!16700))

(assert (= (and start!266572 res!1153177) b!2749525))

(assert (= (and b!2749525 res!1153178) b!2749517))

(assert (= (and start!266572 ((_ is ElementMatch!8025) r!15227)) b!2749515))

(assert (= (and start!266572 ((_ is Concat!13113) r!15227)) b!2749519))

(assert (= (and start!266572 ((_ is Star!8025) r!15227)) b!2749528))

(assert (= (and start!266572 ((_ is Union!8025) r!15227)) b!2749521))

(assert (= (and b!2749520 condMapEmpty!16699) mapIsEmpty!16700))

(assert (= (and b!2749520 (not condMapEmpty!16699)) mapNonEmpty!16699))

(assert (= b!2749512 b!2749520))

(assert (= b!2749509 b!2749512))

(assert (= b!2749526 b!2749509))

(assert (= (and b!2749516 ((_ is LongMap!3662) (v!33364 (underlying!7528 (cache!3711 cacheUp!1023))))) b!2749526))

(assert (= b!2749523 b!2749516))

(assert (= (and b!2749514 ((_ is HashMap!3568) (cache!3711 cacheUp!1023))) b!2749523))

(assert (= start!266572 b!2749514))

(assert (= (and b!2749527 condMapEmpty!16700) mapIsEmpty!16699))

(assert (= (and b!2749527 (not condMapEmpty!16700)) mapNonEmpty!16700))

(assert (= b!2749513 b!2749527))

(assert (= b!2749518 b!2749513))

(assert (= b!2749510 b!2749518))

(assert (= (and b!2749511 ((_ is LongMap!3661) (v!33362 (underlying!7526 (cache!3710 cacheDown!1142))))) b!2749510))

(assert (= b!2749522 b!2749511))

(assert (= (and b!2749524 ((_ is HashMap!3567) (cache!3710 cacheDown!1142))) b!2749522))

(assert (= start!266572 b!2749524))

(declare-fun m!3164925 () Bool)

(assert (=> b!2749517 m!3164925))

(declare-fun m!3164927 () Bool)

(assert (=> b!2749525 m!3164927))

(declare-fun m!3164929 () Bool)

(assert (=> start!266572 m!3164929))

(declare-fun m!3164931 () Bool)

(assert (=> start!266572 m!3164931))

(declare-fun m!3164933 () Bool)

(assert (=> start!266572 m!3164933))

(declare-fun m!3164935 () Bool)

(assert (=> b!2749513 m!3164935))

(declare-fun m!3164937 () Bool)

(assert (=> b!2749513 m!3164937))

(declare-fun m!3164939 () Bool)

(assert (=> b!2749512 m!3164939))

(declare-fun m!3164941 () Bool)

(assert (=> b!2749512 m!3164941))

(declare-fun m!3164943 () Bool)

(assert (=> mapNonEmpty!16699 m!3164943))

(declare-fun m!3164945 () Bool)

(assert (=> mapNonEmpty!16700 m!3164945))

(check-sat (not b!2749517) (not mapNonEmpty!16699) (not b!2749528) (not b!2749513) (not b!2749527) tp_is_empty!13953 (not start!266572) b_and!202409 (not b!2749512) (not mapNonEmpty!16700) (not b_next!78379) b_and!202413 (not b!2749521) (not b_next!78373) (not b_next!78377) b_and!202407 (not b!2749525) (not b!2749519) (not b_next!78375) (not b!2749520) b_and!202411)
(check-sat b_and!202407 b_and!202409 (not b_next!78375) (not b_next!78379) b_and!202411 b_and!202413 (not b_next!78373) (not b_next!78377))
