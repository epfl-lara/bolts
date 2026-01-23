; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507914 () Bool)

(assert start!507914)

(declare-fun b!4860310 () Bool)

(declare-fun b_free!130403 () Bool)

(declare-fun b_next!131193 () Bool)

(assert (=> b!4860310 (= b_free!130403 (not b_next!131193))))

(declare-fun tp!1367062 () Bool)

(declare-fun b_and!342255 () Bool)

(assert (=> b!4860310 (= tp!1367062 b_and!342255)))

(declare-fun b!4860308 () Bool)

(declare-fun b_free!130405 () Bool)

(declare-fun b_next!131195 () Bool)

(assert (=> b!4860308 (= b_free!130405 (not b_next!131195))))

(declare-fun tp!1367057 () Bool)

(declare-fun b_and!342257 () Bool)

(assert (=> b!4860308 (= tp!1367057 b_and!342257)))

(declare-fun mapIsEmpty!22574 () Bool)

(declare-fun mapRes!22574 () Bool)

(assert (=> mapIsEmpty!22574 mapRes!22574))

(declare-fun b!4860305 () Bool)

(declare-fun e!3038542 () Bool)

(declare-fun tp!1367061 () Bool)

(assert (=> b!4860305 (= e!3038542 (and tp!1367061 mapRes!22574))))

(declare-fun condMapEmpty!22574 () Bool)

(declare-datatypes ((C!26348 0))(
  ( (C!26349 (val!22436 Int)) )
))
(declare-datatypes ((Regex!13075 0))(
  ( (ElementMatch!13075 (c!826807 C!26348)) (Concat!21394 (regOne!26662 Regex!13075) (regTwo!26662 Regex!13075)) (EmptyExpr!13075) (Star!13075 (reg!13404 Regex!13075)) (EmptyLang!13075) (Union!13075 (regOne!26663 Regex!13075) (regTwo!26663 Regex!13075)) )
))
(declare-datatypes ((List!55905 0))(
  ( (Nil!55781) (Cons!55781 (h!62229 Regex!13075) (t!363525 List!55905)) )
))
(declare-datatypes ((Context!5930 0))(
  ( (Context!5931 (exprs!3465 List!55905)) )
))
(declare-datatypes ((tuple2!59580 0))(
  ( (tuple2!59581 (_1!33087 Context!5930) (_2!33087 C!26348)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59582 0))(
  ( (tuple2!59583 (_1!33088 tuple2!59580) (_2!33088 (InoxSet Context!5930))) )
))
(declare-datatypes ((List!55906 0))(
  ( (Nil!55782) (Cons!55782 (h!62230 tuple2!59582) (t!363526 List!55906)) )
))
(declare-datatypes ((array!18863 0))(
  ( (array!18864 (arr!8416 (Array (_ BitVec 32) List!55906)) (size!36759 (_ BitVec 32))) )
))
(declare-datatypes ((array!18865 0))(
  ( (array!18866 (arr!8417 (Array (_ BitVec 32) (_ BitVec 64))) (size!36760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10232 0))(
  ( (LongMapFixedSize!10233 (defaultEntry!5541 Int) (mask!15451 (_ BitVec 32)) (extraKeys!5400 (_ BitVec 32)) (zeroValue!5413 List!55906) (minValue!5413 List!55906) (_size!10245 (_ BitVec 32)) (_keys!5470 array!18865) (_values!5438 array!18863) (_vacant!5181 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20205 0))(
  ( (Cell!20206 (v!49615 LongMapFixedSize!10232)) )
))
(declare-datatypes ((Hashable!7561 0))(
  ( (HashableExt!7560 (__x!33868 Int)) )
))
(declare-datatypes ((MutLongMap!5116 0))(
  ( (LongMap!5116 (underlying!10427 Cell!20205)) (MutLongMapExt!5115 (__x!33869 Int)) )
))
(declare-datatypes ((Cell!20207 0))(
  ( (Cell!20208 (v!49616 MutLongMap!5116)) )
))
(declare-datatypes ((MutableMap!4988 0))(
  ( (MutableMapExt!4987 (__x!33870 Int)) (HashMap!4988 (underlying!10428 Cell!20207) (hashF!13828 Hashable!7561) (_size!10246 (_ BitVec 32)) (defaultValue!5159 Int)) )
))
(declare-fun m!3471 () MutableMap!4988)

(declare-fun mapDefault!22574 () List!55906)

(assert (=> b!4860305 (= condMapEmpty!22574 (= (arr!8416 (_values!5438 (v!49615 (underlying!10427 (v!49616 (underlying!10428 m!3471)))))) ((as const (Array (_ BitVec 32) List!55906)) mapDefault!22574)))))

(declare-fun b!4860307 () Bool)

(declare-fun e!3038541 () Bool)

(declare-fun e!3038543 () Bool)

(declare-fun lt!1992248 () MutLongMap!5116)

(get-info :version)

(assert (=> b!4860307 (= e!3038541 (and e!3038543 ((_ is LongMap!5116) lt!1992248)))))

(assert (=> b!4860307 (= lt!1992248 (v!49616 (underlying!10428 m!3471)))))

(declare-fun mapNonEmpty!22574 () Bool)

(declare-fun tp!1367059 () Bool)

(declare-fun tp!1367060 () Bool)

(assert (=> mapNonEmpty!22574 (= mapRes!22574 (and tp!1367059 tp!1367060))))

(declare-fun mapRest!22574 () (Array (_ BitVec 32) List!55906))

(declare-fun mapValue!22574 () List!55906)

(declare-fun mapKey!22574 () (_ BitVec 32))

(assert (=> mapNonEmpty!22574 (= (arr!8416 (_values!5438 (v!49615 (underlying!10427 (v!49616 (underlying!10428 m!3471)))))) (store mapRest!22574 mapKey!22574 mapValue!22574))))

(declare-fun e!3038544 () Bool)

(assert (=> b!4860308 (= e!3038544 (and e!3038541 tp!1367057))))

(declare-fun b!4860309 () Bool)

(declare-fun e!3038545 () Bool)

(declare-fun e!3038548 () Bool)

(assert (=> b!4860309 (= e!3038545 e!3038548)))

(declare-fun res!2074927 () Bool)

(declare-fun e!3038546 () Bool)

(assert (=> start!507914 (=> (not res!2074927) (not e!3038546))))

(assert (=> start!507914 (= res!2074927 ((_ is HashMap!4988) m!3471))))

(assert (=> start!507914 e!3038546))

(assert (=> start!507914 e!3038544))

(declare-fun b!4860306 () Bool)

(assert (=> b!4860306 (= e!3038546 false)))

(declare-fun lt!1992249 () Bool)

(declare-fun valid!4140 (MutableMap!4988) Bool)

(assert (=> b!4860306 (= lt!1992249 (valid!4140 m!3471))))

(declare-fun tp!1367058 () Bool)

(declare-fun tp!1367063 () Bool)

(declare-fun array_inv!6078 (array!18865) Bool)

(declare-fun array_inv!6079 (array!18863) Bool)

(assert (=> b!4860310 (= e!3038548 (and tp!1367062 tp!1367058 tp!1367063 (array_inv!6078 (_keys!5470 (v!49615 (underlying!10427 (v!49616 (underlying!10428 m!3471)))))) (array_inv!6079 (_values!5438 (v!49615 (underlying!10427 (v!49616 (underlying!10428 m!3471)))))) e!3038542))))

(declare-fun b!4860311 () Bool)

(assert (=> b!4860311 (= e!3038543 e!3038545)))

(assert (= (and start!507914 res!2074927) b!4860306))

(assert (= (and b!4860305 condMapEmpty!22574) mapIsEmpty!22574))

(assert (= (and b!4860305 (not condMapEmpty!22574)) mapNonEmpty!22574))

(assert (= b!4860310 b!4860305))

(assert (= b!4860309 b!4860310))

(assert (= b!4860311 b!4860309))

(assert (= (and b!4860307 ((_ is LongMap!5116) (v!49616 (underlying!10428 m!3471)))) b!4860311))

(assert (= b!4860308 b!4860307))

(assert (= (and start!507914 ((_ is HashMap!4988) m!3471)) b!4860308))

(declare-fun m!5858490 () Bool)

(assert (=> mapNonEmpty!22574 m!5858490))

(declare-fun m!5858492 () Bool)

(assert (=> b!4860306 m!5858492))

(declare-fun m!5858494 () Bool)

(assert (=> b!4860310 m!5858494))

(declare-fun m!5858496 () Bool)

(assert (=> b!4860310 m!5858496))

(check-sat (not b_next!131195) (not b!4860306) (not mapNonEmpty!22574) (not b!4860310) (not b!4860305) b_and!342257 (not b_next!131193) b_and!342255)
(check-sat b_and!342255 b_and!342257 (not b_next!131193) (not b_next!131195))
