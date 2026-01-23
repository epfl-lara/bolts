; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261100 () Bool)

(assert start!261100)

(declare-fun b!2680068 () Bool)

(declare-fun b_free!75617 () Bool)

(declare-fun b_next!76321 () Bool)

(assert (=> b!2680068 (= b_free!75617 (not b_next!76321))))

(declare-fun tp!847384 () Bool)

(declare-fun b_and!198413 () Bool)

(assert (=> b!2680068 (= tp!847384 b_and!198413)))

(declare-fun b!2680067 () Bool)

(declare-fun b_free!75619 () Bool)

(declare-fun b_next!76323 () Bool)

(assert (=> b!2680067 (= b_free!75619 (not b_next!76323))))

(declare-fun tp!847386 () Bool)

(declare-fun b_and!198415 () Bool)

(assert (=> b!2680067 (= tp!847386 b_and!198415)))

(declare-fun b!2680065 () Bool)

(declare-fun e!1689396 () Bool)

(declare-fun e!1689399 () Bool)

(assert (=> b!2680065 (= e!1689396 e!1689399)))

(declare-fun b!2680066 () Bool)

(declare-fun e!1689398 () Bool)

(assert (=> b!2680066 (= e!1689398 false)))

(declare-fun lt!944059 () Bool)

(declare-datatypes ((C!15880 0))(
  ( (C!15881 (val!9874 Int)) )
))
(declare-datatypes ((Regex!7861 0))(
  ( (ElementMatch!7861 (c!431793 C!15880)) (Concat!12795 (regOne!16234 Regex!7861) (regTwo!16234 Regex!7861)) (EmptyExpr!7861) (Star!7861 (reg!8190 Regex!7861)) (EmptyLang!7861) (Union!7861 (regOne!16235 Regex!7861) (regTwo!16235 Regex!7861)) )
))
(declare-datatypes ((List!30943 0))(
  ( (Nil!30843) (Cons!30843 (h!36263 Regex!7861) (t!224444 List!30943)) )
))
(declare-datatypes ((Context!4270 0))(
  ( (Context!4271 (exprs!2635 List!30943)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!4154 0))(
  ( (tuple3!4155 (_1!17700 (InoxSet Context!4270)) (_2!17700 Int) (_3!2547 Int)) )
))
(declare-datatypes ((tuple2!30306 0))(
  ( (tuple2!30307 (_1!17701 tuple3!4154) (_2!17701 Int)) )
))
(declare-datatypes ((array!12329 0))(
  ( (array!12330 (arr!5506 (Array (_ BitVec 32) (_ BitVec 64))) (size!23844 (_ BitVec 32))) )
))
(declare-datatypes ((List!30944 0))(
  ( (Nil!30844) (Cons!30844 (h!36264 tuple2!30306) (t!224445 List!30944)) )
))
(declare-datatypes ((array!12331 0))(
  ( (array!12332 (arr!5507 (Array (_ BitVec 32) List!30944)) (size!23845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6912 0))(
  ( (LongMapFixedSize!6913 (defaultEntry!3841 Int) (mask!9123 (_ BitVec 32)) (extraKeys!3705 (_ BitVec 32)) (zeroValue!3715 List!30944) (minValue!3715 List!30944) (_size!6955 (_ BitVec 32)) (_keys!3756 array!12329) (_values!3737 array!12331) (_vacant!3517 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13633 0))(
  ( (Cell!13634 (v!32693 LongMapFixedSize!6912)) )
))
(declare-datatypes ((MutLongMap!3456 0))(
  ( (LongMap!3456 (underlying!7115 Cell!13633)) (MutLongMapExt!3455 (__x!19716 Int)) )
))
(declare-datatypes ((Cell!13635 0))(
  ( (Cell!13636 (v!32694 MutLongMap!3456)) )
))
(declare-datatypes ((Hashable!3372 0))(
  ( (HashableExt!3371 (__x!19717 Int)) )
))
(declare-datatypes ((MutableMap!3362 0))(
  ( (MutableMapExt!3361 (__x!19718 Int)) (HashMap!3362 (underlying!7116 Cell!13635) (hashF!5404 Hashable!3372) (_size!6956 (_ BitVec 32)) (defaultValue!3533 Int)) )
))
(declare-fun m!3524 () MutableMap!3362)

(declare-fun invariantList!437 (List!30944) Bool)

(declare-datatypes ((ListMap!1207 0))(
  ( (ListMap!1208 (toList!1799 List!30944)) )
))
(declare-fun map!6825 (MutableMap!3362) ListMap!1207)

(assert (=> b!2680066 (= lt!944059 (invariantList!437 (toList!1799 (map!6825 m!3524))))))

(declare-fun mapNonEmpty!15846 () Bool)

(declare-fun mapRes!15846 () Bool)

(declare-fun tp!847382 () Bool)

(declare-fun tp!847381 () Bool)

(assert (=> mapNonEmpty!15846 (= mapRes!15846 (and tp!847382 tp!847381))))

(declare-fun mapValue!15846 () List!30944)

(declare-fun mapRest!15846 () (Array (_ BitVec 32) List!30944))

(declare-fun mapKey!15846 () (_ BitVec 32))

(assert (=> mapNonEmpty!15846 (= (arr!5507 (_values!3737 (v!32693 (underlying!7115 (v!32694 (underlying!7116 m!3524)))))) (store mapRest!15846 mapKey!15846 mapValue!15846))))

(declare-fun e!1689402 () Bool)

(declare-fun e!1689403 () Bool)

(declare-fun tp!847383 () Bool)

(declare-fun tp!847380 () Bool)

(declare-fun array_inv!3931 (array!12329) Bool)

(declare-fun array_inv!3932 (array!12331) Bool)

(assert (=> b!2680068 (= e!1689402 (and tp!847384 tp!847380 tp!847383 (array_inv!3931 (_keys!3756 (v!32693 (underlying!7115 (v!32694 (underlying!7116 m!3524)))))) (array_inv!3932 (_values!3737 (v!32693 (underlying!7115 (v!32694 (underlying!7116 m!3524)))))) e!1689403))))

(declare-fun mapIsEmpty!15846 () Bool)

(assert (=> mapIsEmpty!15846 mapRes!15846))

(declare-fun b!2680069 () Bool)

(declare-fun e!1689401 () Bool)

(declare-fun lt!944060 () MutLongMap!3456)

(get-info :version)

(assert (=> b!2680069 (= e!1689401 (and e!1689396 ((_ is LongMap!3456) lt!944060)))))

(assert (=> b!2680069 (= lt!944060 (v!32694 (underlying!7116 m!3524)))))

(declare-fun b!2680070 () Bool)

(declare-fun res!1126687 () Bool)

(assert (=> b!2680070 (=> (not res!1126687) (not e!1689398))))

(declare-fun valid!2676 (MutableMap!3362) Bool)

(assert (=> b!2680070 (= res!1126687 (valid!2676 m!3524))))

(declare-fun b!2680071 () Bool)

(assert (=> b!2680071 (= e!1689399 e!1689402)))

(declare-fun b!2680072 () Bool)

(declare-fun tp!847385 () Bool)

(assert (=> b!2680072 (= e!1689403 (and tp!847385 mapRes!15846))))

(declare-fun condMapEmpty!15846 () Bool)

(declare-fun mapDefault!15846 () List!30944)

(assert (=> b!2680072 (= condMapEmpty!15846 (= (arr!5507 (_values!3737 (v!32693 (underlying!7115 (v!32694 (underlying!7116 m!3524)))))) ((as const (Array (_ BitVec 32) List!30944)) mapDefault!15846)))))

(declare-fun res!1126686 () Bool)

(assert (=> start!261100 (=> (not res!1126686) (not e!1689398))))

(assert (=> start!261100 (= res!1126686 ((_ is HashMap!3362) m!3524))))

(assert (=> start!261100 e!1689398))

(declare-fun e!1689400 () Bool)

(assert (=> start!261100 e!1689400))

(assert (=> b!2680067 (= e!1689400 (and e!1689401 tp!847386))))

(assert (= (and start!261100 res!1126686) b!2680070))

(assert (= (and b!2680070 res!1126687) b!2680066))

(assert (= (and b!2680072 condMapEmpty!15846) mapIsEmpty!15846))

(assert (= (and b!2680072 (not condMapEmpty!15846)) mapNonEmpty!15846))

(assert (= b!2680068 b!2680072))

(assert (= b!2680071 b!2680068))

(assert (= b!2680065 b!2680071))

(assert (= (and b!2680069 ((_ is LongMap!3456) (v!32694 (underlying!7116 m!3524)))) b!2680065))

(assert (= b!2680067 b!2680069))

(assert (= (and start!261100 ((_ is HashMap!3362) m!3524)) b!2680067))

(declare-fun m!3048407 () Bool)

(assert (=> b!2680066 m!3048407))

(declare-fun m!3048409 () Bool)

(assert (=> b!2680066 m!3048409))

(declare-fun m!3048411 () Bool)

(assert (=> mapNonEmpty!15846 m!3048411))

(declare-fun m!3048413 () Bool)

(assert (=> b!2680068 m!3048413))

(declare-fun m!3048415 () Bool)

(assert (=> b!2680068 m!3048415))

(declare-fun m!3048417 () Bool)

(assert (=> b!2680070 m!3048417))

(check-sat (not b!2680066) b_and!198413 b_and!198415 (not b!2680072) (not b!2680068) (not b!2680070) (not b_next!76321) (not mapNonEmpty!15846) (not b_next!76323))
(check-sat b_and!198413 b_and!198415 (not b_next!76321) (not b_next!76323))
