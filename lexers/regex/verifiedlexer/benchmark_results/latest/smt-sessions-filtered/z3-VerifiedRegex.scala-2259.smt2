; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110758 () Bool)

(assert start!110758)

(declare-fun b!1256409 () Bool)

(declare-fun b_free!29719 () Bool)

(declare-fun b_next!30423 () Bool)

(assert (=> b!1256409 (= b_free!29719 (not b_next!30423))))

(declare-fun tp!370494 () Bool)

(declare-fun b_and!84863 () Bool)

(assert (=> b!1256409 (= tp!370494 b_and!84863)))

(declare-fun mapNonEmpty!6228 () Bool)

(declare-fun mapRes!6228 () Bool)

(declare-fun tp!370495 () Bool)

(declare-fun tp_is_empty!6483 () Bool)

(assert (=> mapNonEmpty!6228 (= mapRes!6228 (and tp!370495 tp_is_empty!6483))))

(declare-datatypes ((V!2918 0))(
  ( (V!2919 (val!4172 Int)) )
))
(declare-fun mapValue!6228 () V!2918)

(declare-datatypes ((array!4578 0))(
  ( (array!4579 (arr!2041 (Array (_ BitVec 32) (_ BitVec 64))) (size!9932 (_ BitVec 32))) )
))
(declare-datatypes ((array!4580 0))(
  ( (array!4581 (arr!2042 (Array (_ BitVec 32) V!2918)) (size!9933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2588 0))(
  ( (LongMapFixedSize!2589 (defaultEntry!1654 Int) (mask!4097 (_ BitVec 32)) (extraKeys!1541 (_ BitVec 32)) (zeroValue!1551 V!2918) (minValue!1551 V!2918) (_size!2688 (_ BitVec 32)) (_keys!1588 array!4578) (_values!1573 array!4580) (_vacant!1355 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5099 0))(
  ( (Cell!5100 (v!20749 LongMapFixedSize!2588)) )
))
(declare-datatypes ((MutLongMap!1294 0))(
  ( (LongMap!1294 (underlying!2812 Cell!5099)) (MutLongMapExt!1293 (__x!8188 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1294)

(declare-fun mapKey!6228 () (_ BitVec 32))

(declare-fun mapRest!6228 () (Array (_ BitVec 32) V!2918))

(assert (=> mapNonEmpty!6228 (= (arr!2042 (_values!1573 (v!20749 (underlying!2812 thiss!47531)))) (store mapRest!6228 mapKey!6228 mapValue!6228))))

(declare-fun res!556324 () Bool)

(declare-fun e!799635 () Bool)

(assert (=> start!110758 (=> (not res!556324) (not e!799635))))

(declare-fun valid!1026 (MutLongMap!1294) Bool)

(assert (=> start!110758 (= res!556324 (valid!1026 thiss!47531))))

(assert (=> start!110758 e!799635))

(declare-fun e!799629 () Bool)

(assert (=> start!110758 e!799629))

(assert (=> start!110758 true))

(assert (=> start!110758 tp_is_empty!6483))

(declare-fun b!1256407 () Bool)

(declare-fun res!556326 () Bool)

(assert (=> b!1256407 (=> (not res!556326) (not e!799635))))

(get-info :version)

(assert (=> b!1256407 (= res!556326 ((_ is LongMap!1294) thiss!47531))))

(declare-fun mapIsEmpty!6228 () Bool)

(assert (=> mapIsEmpty!6228 mapRes!6228))

(declare-fun b!1256408 () Bool)

(declare-fun e!799633 () Bool)

(assert (=> b!1256408 (= e!799633 (and tp_is_empty!6483 mapRes!6228))))

(declare-fun condMapEmpty!6228 () Bool)

(declare-fun mapDefault!6228 () V!2918)

(assert (=> b!1256408 (= condMapEmpty!6228 (= (arr!2042 (_values!1573 (v!20749 (underlying!2812 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2918)) mapDefault!6228)))))

(declare-fun e!799631 () Bool)

(declare-fun array_inv!1481 (array!4578) Bool)

(declare-fun array_inv!1482 (array!4580) Bool)

(assert (=> b!1256409 (= e!799631 (and tp!370494 tp_is_empty!6483 (array_inv!1481 (_keys!1588 (v!20749 (underlying!2812 thiss!47531)))) (array_inv!1482 (_values!1573 (v!20749 (underlying!2812 thiss!47531)))) e!799633))))

(declare-fun b!1256410 () Bool)

(declare-fun e!799630 () Bool)

(assert (=> b!1256410 (= e!799630 false)))

(declare-fun lt!420542 () Bool)

(declare-datatypes ((tuple2!12434 0))(
  ( (tuple2!12435 (_1!7064 Bool) (_2!7064 MutLongMap!1294)) )
))
(declare-fun lt!420543 () tuple2!12434)

(declare-fun key!7099 () (_ BitVec 64))

(declare-datatypes ((tuple2!12436 0))(
  ( (tuple2!12437 (_1!7065 (_ BitVec 64)) (_2!7065 V!2918)) )
))
(declare-datatypes ((List!12622 0))(
  ( (Nil!12558) (Cons!12558 (h!17959 tuple2!12436) (t!115754 List!12622)) )
))
(declare-datatypes ((ListLongMap!127 0))(
  ( (ListLongMap!128 (toList!695 List!12622)) )
))
(declare-fun contains!2115 (ListLongMap!127 (_ BitVec 64)) Bool)

(declare-fun abstractMap!43 (MutLongMap!1294) ListLongMap!127)

(assert (=> b!1256410 (= lt!420542 (contains!2115 (abstractMap!43 (_2!7064 lt!420543)) key!7099))))

(declare-fun b!1256411 () Bool)

(declare-fun e!799634 () Bool)

(assert (=> b!1256411 (= e!799629 e!799634)))

(declare-fun b!1256412 () Bool)

(assert (=> b!1256412 (= e!799635 e!799630)))

(declare-fun res!556325 () Bool)

(assert (=> b!1256412 (=> (not res!556325) (not e!799630))))

(assert (=> b!1256412 (= res!556325 (valid!1026 (_2!7064 lt!420543)))))

(declare-fun v!11775 () V!2918)

(declare-fun update!68 (MutLongMap!1294 (_ BitVec 64) V!2918) tuple2!12434)

(assert (=> b!1256412 (= lt!420543 (update!68 thiss!47531 key!7099 v!11775))))

(declare-fun b!1256413 () Bool)

(declare-fun res!556327 () Bool)

(assert (=> b!1256413 (=> (not res!556327) (not e!799630))))

(assert (=> b!1256413 (= res!556327 (_1!7064 lt!420543))))

(declare-fun b!1256414 () Bool)

(assert (=> b!1256414 (= e!799634 e!799631)))

(assert (= (and start!110758 res!556324) b!1256407))

(assert (= (and b!1256407 res!556326) b!1256412))

(assert (= (and b!1256412 res!556325) b!1256413))

(assert (= (and b!1256413 res!556327) b!1256410))

(assert (= (and b!1256408 condMapEmpty!6228) mapIsEmpty!6228))

(assert (= (and b!1256408 (not condMapEmpty!6228)) mapNonEmpty!6228))

(assert (= b!1256409 b!1256408))

(assert (= b!1256414 b!1256409))

(assert (= b!1256411 b!1256414))

(assert (= (and start!110758 ((_ is LongMap!1294) thiss!47531)) b!1256411))

(declare-fun m!1414795 () Bool)

(assert (=> b!1256409 m!1414795))

(declare-fun m!1414797 () Bool)

(assert (=> b!1256409 m!1414797))

(declare-fun m!1414799 () Bool)

(assert (=> start!110758 m!1414799))

(declare-fun m!1414801 () Bool)

(assert (=> mapNonEmpty!6228 m!1414801))

(declare-fun m!1414803 () Bool)

(assert (=> b!1256410 m!1414803))

(assert (=> b!1256410 m!1414803))

(declare-fun m!1414805 () Bool)

(assert (=> b!1256410 m!1414805))

(declare-fun m!1414807 () Bool)

(assert (=> b!1256412 m!1414807))

(declare-fun m!1414809 () Bool)

(assert (=> b!1256412 m!1414809))

(check-sat (not start!110758) (not b!1256412) tp_is_empty!6483 (not b_next!30423) (not b!1256409) (not b!1256410) b_and!84863 (not mapNonEmpty!6228))
(check-sat b_and!84863 (not b_next!30423))
