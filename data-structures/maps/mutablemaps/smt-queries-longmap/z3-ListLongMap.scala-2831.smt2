; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40960 () Bool)

(assert start!40960)

(declare-fun b_free!10887 () Bool)

(declare-fun b_next!10887 () Bool)

(assert (=> start!40960 (= b_free!10887 (not b_next!10887))))

(declare-fun tp!38488 () Bool)

(declare-fun b_and!19047 () Bool)

(assert (=> start!40960 (= tp!38488 b_and!19047)))

(declare-fun b!455387 () Bool)

(declare-fun e!266230 () Bool)

(declare-fun e!266234 () Bool)

(assert (=> b!455387 (= e!266230 e!266234)))

(declare-fun res!271638 () Bool)

(assert (=> b!455387 (=> (not res!271638) (not e!266234))))

(declare-datatypes ((array!28219 0))(
  ( (array!28220 (arr!13550 (Array (_ BitVec 32) (_ BitVec 64))) (size!13902 (_ BitVec 32))) )
))
(declare-fun lt!206327 () array!28219)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28219 (_ BitVec 32)) Bool)

(assert (=> b!455387 (= res!271638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206327 mask!1025))))

(declare-fun _keys!709 () array!28219)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455387 (= lt!206327 (array!28220 (store (arr!13550 _keys!709) i!563 k0!794) (size!13902 _keys!709)))))

(declare-fun b!455388 () Bool)

(declare-fun res!271641 () Bool)

(assert (=> b!455388 (=> (not res!271641) (not e!266230))))

(assert (=> b!455388 (= res!271641 (or (= (select (arr!13550 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13550 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19978 () Bool)

(declare-fun mapRes!19978 () Bool)

(assert (=> mapIsEmpty!19978 mapRes!19978))

(declare-fun b!455389 () Bool)

(declare-fun e!266231 () Bool)

(declare-fun tp_is_empty!12225 () Bool)

(assert (=> b!455389 (= e!266231 tp_is_empty!12225)))

(declare-fun b!455390 () Bool)

(declare-fun res!271637 () Bool)

(assert (=> b!455390 (=> (not res!271637) (not e!266230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455390 (= res!271637 (validMask!0 mask!1025))))

(declare-fun b!455392 () Bool)

(declare-fun res!271639 () Bool)

(assert (=> b!455392 (=> (not res!271639) (not e!266234))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!455392 (= res!271639 (bvsle from!863 i!563))))

(declare-fun b!455393 () Bool)

(declare-fun res!271643 () Bool)

(assert (=> b!455393 (=> (not res!271643) (not e!266230))))

(assert (=> b!455393 (= res!271643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455394 () Bool)

(assert (=> b!455394 (= e!266234 false)))

(declare-datatypes ((V!17405 0))(
  ( (V!17406 (val!6157 Int)) )
))
(declare-fun minValue!515 () V!17405)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17405)

(declare-fun v!412 () V!17405)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5769 0))(
  ( (ValueCellFull!5769 (v!8419 V!17405)) (EmptyCell!5769) )
))
(declare-datatypes ((array!28221 0))(
  ( (array!28222 (arr!13551 (Array (_ BitVec 32) ValueCell!5769)) (size!13903 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28221)

(declare-datatypes ((tuple2!8058 0))(
  ( (tuple2!8059 (_1!4039 (_ BitVec 64)) (_2!4039 V!17405)) )
))
(declare-datatypes ((List!8165 0))(
  ( (Nil!8162) (Cons!8161 (h!9017 tuple2!8058) (t!14001 List!8165)) )
))
(declare-datatypes ((ListLongMap!6985 0))(
  ( (ListLongMap!6986 (toList!3508 List!8165)) )
))
(declare-fun lt!206328 () ListLongMap!6985)

(declare-fun getCurrentListMapNoExtraKeys!1684 (array!28219 array!28221 (_ BitVec 32) (_ BitVec 32) V!17405 V!17405 (_ BitVec 32) Int) ListLongMap!6985)

(assert (=> b!455394 (= lt!206328 (getCurrentListMapNoExtraKeys!1684 lt!206327 (array!28222 (store (arr!13551 _values!549) i!563 (ValueCellFull!5769 v!412)) (size!13903 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206326 () ListLongMap!6985)

(assert (=> b!455394 (= lt!206326 (getCurrentListMapNoExtraKeys!1684 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455395 () Bool)

(declare-fun res!271640 () Bool)

(assert (=> b!455395 (=> (not res!271640) (not e!266230))))

(assert (=> b!455395 (= res!271640 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13902 _keys!709))))))

(declare-fun b!455396 () Bool)

(declare-fun res!271636 () Bool)

(assert (=> b!455396 (=> (not res!271636) (not e!266230))))

(declare-datatypes ((List!8166 0))(
  ( (Nil!8163) (Cons!8162 (h!9018 (_ BitVec 64)) (t!14002 List!8166)) )
))
(declare-fun arrayNoDuplicates!0 (array!28219 (_ BitVec 32) List!8166) Bool)

(assert (=> b!455396 (= res!271636 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8163))))

(declare-fun mapNonEmpty!19978 () Bool)

(declare-fun tp!38487 () Bool)

(assert (=> mapNonEmpty!19978 (= mapRes!19978 (and tp!38487 e!266231))))

(declare-fun mapRest!19978 () (Array (_ BitVec 32) ValueCell!5769))

(declare-fun mapKey!19978 () (_ BitVec 32))

(declare-fun mapValue!19978 () ValueCell!5769)

(assert (=> mapNonEmpty!19978 (= (arr!13551 _values!549) (store mapRest!19978 mapKey!19978 mapValue!19978))))

(declare-fun b!455397 () Bool)

(declare-fun res!271646 () Bool)

(assert (=> b!455397 (=> (not res!271646) (not e!266230))))

(assert (=> b!455397 (= res!271646 (and (= (size!13903 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13902 _keys!709) (size!13903 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455398 () Bool)

(declare-fun res!271645 () Bool)

(assert (=> b!455398 (=> (not res!271645) (not e!266230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455398 (= res!271645 (validKeyInArray!0 k0!794))))

(declare-fun b!455399 () Bool)

(declare-fun res!271642 () Bool)

(assert (=> b!455399 (=> (not res!271642) (not e!266230))))

(declare-fun arrayContainsKey!0 (array!28219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455399 (= res!271642 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!271635 () Bool)

(assert (=> start!40960 (=> (not res!271635) (not e!266230))))

(assert (=> start!40960 (= res!271635 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13902 _keys!709))))))

(assert (=> start!40960 e!266230))

(assert (=> start!40960 tp_is_empty!12225))

(assert (=> start!40960 tp!38488))

(assert (=> start!40960 true))

(declare-fun e!266229 () Bool)

(declare-fun array_inv!9802 (array!28221) Bool)

(assert (=> start!40960 (and (array_inv!9802 _values!549) e!266229)))

(declare-fun array_inv!9803 (array!28219) Bool)

(assert (=> start!40960 (array_inv!9803 _keys!709)))

(declare-fun b!455391 () Bool)

(declare-fun res!271644 () Bool)

(assert (=> b!455391 (=> (not res!271644) (not e!266234))))

(assert (=> b!455391 (= res!271644 (arrayNoDuplicates!0 lt!206327 #b00000000000000000000000000000000 Nil!8163))))

(declare-fun b!455400 () Bool)

(declare-fun e!266233 () Bool)

(assert (=> b!455400 (= e!266229 (and e!266233 mapRes!19978))))

(declare-fun condMapEmpty!19978 () Bool)

(declare-fun mapDefault!19978 () ValueCell!5769)

(assert (=> b!455400 (= condMapEmpty!19978 (= (arr!13551 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5769)) mapDefault!19978)))))

(declare-fun b!455401 () Bool)

(assert (=> b!455401 (= e!266233 tp_is_empty!12225)))

(assert (= (and start!40960 res!271635) b!455390))

(assert (= (and b!455390 res!271637) b!455397))

(assert (= (and b!455397 res!271646) b!455393))

(assert (= (and b!455393 res!271643) b!455396))

(assert (= (and b!455396 res!271636) b!455395))

(assert (= (and b!455395 res!271640) b!455398))

(assert (= (and b!455398 res!271645) b!455388))

(assert (= (and b!455388 res!271641) b!455399))

(assert (= (and b!455399 res!271642) b!455387))

(assert (= (and b!455387 res!271638) b!455391))

(assert (= (and b!455391 res!271644) b!455392))

(assert (= (and b!455392 res!271639) b!455394))

(assert (= (and b!455400 condMapEmpty!19978) mapIsEmpty!19978))

(assert (= (and b!455400 (not condMapEmpty!19978)) mapNonEmpty!19978))

(get-info :version)

(assert (= (and mapNonEmpty!19978 ((_ is ValueCellFull!5769) mapValue!19978)) b!455389))

(assert (= (and b!455400 ((_ is ValueCellFull!5769) mapDefault!19978)) b!455401))

(assert (= start!40960 b!455400))

(declare-fun m!439161 () Bool)

(assert (=> b!455398 m!439161))

(declare-fun m!439163 () Bool)

(assert (=> b!455399 m!439163))

(declare-fun m!439165 () Bool)

(assert (=> mapNonEmpty!19978 m!439165))

(declare-fun m!439167 () Bool)

(assert (=> b!455394 m!439167))

(declare-fun m!439169 () Bool)

(assert (=> b!455394 m!439169))

(declare-fun m!439171 () Bool)

(assert (=> b!455394 m!439171))

(declare-fun m!439173 () Bool)

(assert (=> b!455390 m!439173))

(declare-fun m!439175 () Bool)

(assert (=> b!455396 m!439175))

(declare-fun m!439177 () Bool)

(assert (=> b!455387 m!439177))

(declare-fun m!439179 () Bool)

(assert (=> b!455387 m!439179))

(declare-fun m!439181 () Bool)

(assert (=> start!40960 m!439181))

(declare-fun m!439183 () Bool)

(assert (=> start!40960 m!439183))

(declare-fun m!439185 () Bool)

(assert (=> b!455388 m!439185))

(declare-fun m!439187 () Bool)

(assert (=> b!455393 m!439187))

(declare-fun m!439189 () Bool)

(assert (=> b!455391 m!439189))

(check-sat b_and!19047 (not start!40960) tp_is_empty!12225 (not b!455396) (not mapNonEmpty!19978) (not b!455390) (not b!455394) (not b!455387) (not b_next!10887) (not b!455399) (not b!455398) (not b!455393) (not b!455391))
(check-sat b_and!19047 (not b_next!10887))
