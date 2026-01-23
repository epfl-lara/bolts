; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2078 () Bool)

(assert start!2078)

(declare-fun b!37396 () Bool)

(declare-fun b_free!573 () Bool)

(declare-fun b_next!573 () Bool)

(assert (=> b!37396 (= b_free!573 (not b_next!573))))

(declare-fun tp!25939 () Bool)

(declare-fun b_and!607 () Bool)

(assert (=> b!37396 (= tp!25939 b_and!607)))

(declare-fun b!37407 () Bool)

(declare-fun b_free!575 () Bool)

(declare-fun b_next!575 () Bool)

(assert (=> b!37407 (= b_free!575 (not b_next!575))))

(declare-fun tp!25933 () Bool)

(declare-fun b_and!609 () Bool)

(assert (=> b!37407 (= tp!25933 b_and!609)))

(declare-fun b!37393 () Bool)

(declare-fun e!18409 () Bool)

(declare-fun e!18406 () Bool)

(assert (=> b!37393 (= e!18409 e!18406)))

(declare-fun b!37394 () Bool)

(declare-fun res!28341 () Bool)

(declare-fun e!18410 () Bool)

(assert (=> b!37394 (=> (not res!28341) (not e!18410))))

(declare-datatypes ((C!1392 0))(
  ( (C!1393 (val!215 Int)) )
))
(declare-datatypes ((List!416 0))(
  ( (Nil!414) (Cons!414 (h!5810 C!1392) (t!15252 List!416)) )
))
(declare-fun input!6011 () List!416)

(declare-fun isEmpty!95 (List!416) Bool)

(assert (=> b!37394 (= res!28341 (not (isEmpty!95 input!6011)))))

(declare-fun b!37395 () Bool)

(assert (=> b!37395 (= e!18410 false)))

(declare-datatypes ((Regex!179 0))(
  ( (ElementMatch!179 (c!15636 C!1392)) (Concat!298 (regOne!870 Regex!179) (regTwo!870 Regex!179)) (EmptyExpr!179) (Star!179 (reg!508 Regex!179)) (EmptyLang!179) (Union!179 (regOne!871 Regex!179) (regTwo!871 Regex!179)) )
))
(declare-datatypes ((tuple2!406 0))(
  ( (tuple2!407 (_1!269 Regex!179) (_2!269 C!1392)) )
))
(declare-datatypes ((tuple2!408 0))(
  ( (tuple2!409 (_1!270 tuple2!406) (_2!270 Regex!179)) )
))
(declare-datatypes ((List!417 0))(
  ( (Nil!415) (Cons!415 (h!5811 tuple2!408) (t!15253 List!417)) )
))
(declare-datatypes ((array!394 0))(
  ( (array!395 (arr!208 (Array (_ BitVec 32) List!417)) (size!464 (_ BitVec 32))) )
))
(declare-datatypes ((array!396 0))(
  ( (array!397 (arr!209 (Array (_ BitVec 32) (_ BitVec 64))) (size!465 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!230 0))(
  ( (LongMapFixedSize!231 (defaultEntry!453 Int) (mask!806 (_ BitVec 32)) (extraKeys!361 (_ BitVec 32)) (zeroValue!371 List!417) (minValue!371 List!417) (_size!362 (_ BitVec 32)) (_keys!406 array!396) (_values!393 array!394) (_vacant!175 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!111 0))(
  ( (HashableExt!110 (__x!767 Int)) )
))
(declare-datatypes ((Cell!449 0))(
  ( (Cell!450 (v!12201 LongMapFixedSize!230)) )
))
(declare-datatypes ((MutLongMap!115 0))(
  ( (LongMap!115 (underlying!425 Cell!449)) (MutLongMapExt!114 (__x!768 Int)) )
))
(declare-datatypes ((Cell!451 0))(
  ( (Cell!452 (v!12202 MutLongMap!115)) )
))
(declare-datatypes ((MutableMap!111 0))(
  ( (MutableMapExt!110 (__x!769 Int)) (HashMap!111 (underlying!426 Cell!451) (hashF!1979 Hashable!111) (_size!363 (_ BitVec 32)) (defaultValue!260 Int)) )
))
(declare-datatypes ((Cache!30 0))(
  ( (Cache!31 (cache!593 MutableMap!111)) )
))
(declare-datatypes ((tuple2!410 0))(
  ( (tuple2!411 (_1!271 Bool) (_2!271 Cache!30)) )
))
(declare-fun lt!3211 () tuple2!410)

(declare-datatypes ((tuple2!412 0))(
  ( (tuple2!413 (_1!272 Regex!179) (_2!272 Cache!30)) )
))
(declare-fun lt!3212 () tuple2!412)

(declare-fun matchRMem!1 (Regex!179 List!416 Cache!30) tuple2!410)

(declare-fun tail!23 (List!416) List!416)

(assert (=> b!37395 (= lt!3211 (matchRMem!1 (_1!272 lt!3212) (tail!23 input!6011) (_2!272 lt!3212)))))

(declare-fun cache!443 () Cache!30)

(declare-fun r!13380 () Regex!179)

(declare-fun derivativeStepMem!7 (Regex!179 C!1392 Cache!30) tuple2!412)

(declare-fun head!335 (List!416) C!1392)

(assert (=> b!37395 (= lt!3212 (derivativeStepMem!7 r!13380 (head!335 input!6011) cache!443))))

(declare-fun mapNonEmpty!393 () Bool)

(declare-fun mapRes!393 () Bool)

(declare-fun tp!25937 () Bool)

(declare-fun tp!25941 () Bool)

(assert (=> mapNonEmpty!393 (= mapRes!393 (and tp!25937 tp!25941))))

(declare-fun mapKey!393 () (_ BitVec 32))

(declare-fun mapValue!393 () List!417)

(declare-fun mapRest!393 () (Array (_ BitVec 32) List!417))

(assert (=> mapNonEmpty!393 (= (arr!208 (_values!393 (v!12201 (underlying!425 (v!12202 (underlying!426 (cache!593 cache!443))))))) (store mapRest!393 mapKey!393 mapValue!393))))

(declare-fun e!18405 () Bool)

(declare-fun e!18401 () Bool)

(assert (=> b!37396 (= e!18405 (and e!18401 tp!25939))))

(declare-fun res!28342 () Bool)

(assert (=> start!2078 (=> (not res!28342) (not e!18410))))

(declare-fun validRegex!16 (Regex!179) Bool)

(assert (=> start!2078 (= res!28342 (validRegex!16 r!13380))))

(assert (=> start!2078 e!18410))

(declare-fun e!18407 () Bool)

(assert (=> start!2078 e!18407))

(declare-fun e!18402 () Bool)

(declare-fun inv!721 (Cache!30) Bool)

(assert (=> start!2078 (and (inv!721 cache!443) e!18402)))

(declare-fun e!18411 () Bool)

(assert (=> start!2078 e!18411))

(declare-fun b!37397 () Bool)

(declare-fun e!18404 () Bool)

(assert (=> b!37397 (= e!18404 e!18409)))

(declare-fun b!37398 () Bool)

(declare-fun res!28343 () Bool)

(assert (=> b!37398 (=> (not res!28343) (not e!18410))))

(declare-fun valid!124 (Cache!30) Bool)

(assert (=> b!37398 (= res!28343 (valid!124 cache!443))))

(declare-fun b!37399 () Bool)

(declare-fun tp!25938 () Bool)

(assert (=> b!37399 (= e!18407 tp!25938)))

(declare-fun b!37400 () Bool)

(assert (=> b!37400 (= e!18402 e!18405)))

(declare-fun b!37401 () Bool)

(declare-fun tp_is_empty!383 () Bool)

(declare-fun tp!25936 () Bool)

(assert (=> b!37401 (= e!18411 (and tp_is_empty!383 tp!25936))))

(declare-fun b!37402 () Bool)

(declare-fun tp!25930 () Bool)

(declare-fun tp!25934 () Bool)

(assert (=> b!37402 (= e!18407 (and tp!25930 tp!25934))))

(declare-fun b!37403 () Bool)

(declare-fun tp!25929 () Bool)

(declare-fun tp!25940 () Bool)

(assert (=> b!37403 (= e!18407 (and tp!25929 tp!25940))))

(declare-fun b!37404 () Bool)

(declare-fun lt!3213 () MutLongMap!115)

(get-info :version)

(assert (=> b!37404 (= e!18401 (and e!18404 ((_ is LongMap!115) lt!3213)))))

(assert (=> b!37404 (= lt!3213 (v!12202 (underlying!426 (cache!593 cache!443))))))

(declare-fun b!37405 () Bool)

(assert (=> b!37405 (= e!18407 tp_is_empty!383)))

(declare-fun mapIsEmpty!393 () Bool)

(assert (=> mapIsEmpty!393 mapRes!393))

(declare-fun b!37406 () Bool)

(declare-fun e!18403 () Bool)

(declare-fun tp!25932 () Bool)

(assert (=> b!37406 (= e!18403 (and tp!25932 mapRes!393))))

(declare-fun condMapEmpty!393 () Bool)

(declare-fun mapDefault!393 () List!417)

(assert (=> b!37406 (= condMapEmpty!393 (= (arr!208 (_values!393 (v!12201 (underlying!425 (v!12202 (underlying!426 (cache!593 cache!443))))))) ((as const (Array (_ BitVec 32) List!417)) mapDefault!393)))))

(declare-fun tp!25935 () Bool)

(declare-fun tp!25931 () Bool)

(declare-fun array_inv!126 (array!396) Bool)

(declare-fun array_inv!127 (array!394) Bool)

(assert (=> b!37407 (= e!18406 (and tp!25933 tp!25931 tp!25935 (array_inv!126 (_keys!406 (v!12201 (underlying!425 (v!12202 (underlying!426 (cache!593 cache!443))))))) (array_inv!127 (_values!393 (v!12201 (underlying!425 (v!12202 (underlying!426 (cache!593 cache!443))))))) e!18403))))

(assert (= (and start!2078 res!28342) b!37398))

(assert (= (and b!37398 res!28343) b!37394))

(assert (= (and b!37394 res!28341) b!37395))

(assert (= (and start!2078 ((_ is ElementMatch!179) r!13380)) b!37405))

(assert (= (and start!2078 ((_ is Concat!298) r!13380)) b!37403))

(assert (= (and start!2078 ((_ is Star!179) r!13380)) b!37399))

(assert (= (and start!2078 ((_ is Union!179) r!13380)) b!37402))

(assert (= (and b!37406 condMapEmpty!393) mapIsEmpty!393))

(assert (= (and b!37406 (not condMapEmpty!393)) mapNonEmpty!393))

(assert (= b!37407 b!37406))

(assert (= b!37393 b!37407))

(assert (= b!37397 b!37393))

(assert (= (and b!37404 ((_ is LongMap!115) (v!12202 (underlying!426 (cache!593 cache!443))))) b!37397))

(assert (= b!37396 b!37404))

(assert (= (and b!37400 ((_ is HashMap!111) (cache!593 cache!443))) b!37396))

(assert (= start!2078 b!37400))

(assert (= (and start!2078 ((_ is Cons!414) input!6011)) b!37401))

(declare-fun m!12174 () Bool)

(assert (=> b!37407 m!12174))

(declare-fun m!12176 () Bool)

(assert (=> b!37407 m!12176))

(declare-fun m!12178 () Bool)

(assert (=> b!37394 m!12178))

(declare-fun m!12180 () Bool)

(assert (=> mapNonEmpty!393 m!12180))

(declare-fun m!12182 () Bool)

(assert (=> b!37398 m!12182))

(declare-fun m!12184 () Bool)

(assert (=> start!2078 m!12184))

(declare-fun m!12186 () Bool)

(assert (=> start!2078 m!12186))

(declare-fun m!12188 () Bool)

(assert (=> b!37395 m!12188))

(assert (=> b!37395 m!12188))

(declare-fun m!12190 () Bool)

(assert (=> b!37395 m!12190))

(declare-fun m!12192 () Bool)

(assert (=> b!37395 m!12192))

(assert (=> b!37395 m!12192))

(declare-fun m!12194 () Bool)

(assert (=> b!37395 m!12194))

(check-sat (not b!37395) b_and!609 (not b!37403) (not mapNonEmpty!393) (not start!2078) (not b!37407) (not b!37402) (not b!37406) (not b_next!573) (not b!37399) (not b!37394) (not b_next!575) b_and!607 (not b!37401) (not b!37398) tp_is_empty!383)
(check-sat b_and!609 b_and!607 (not b_next!575) (not b_next!573))
