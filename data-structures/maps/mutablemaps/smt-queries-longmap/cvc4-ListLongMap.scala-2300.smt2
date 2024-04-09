; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37274 () Bool)

(assert start!37274)

(declare-fun b_free!8393 () Bool)

(declare-fun b_next!8393 () Bool)

(assert (=> start!37274 (= b_free!8393 (not b_next!8393))))

(declare-fun tp!29895 () Bool)

(declare-fun b_and!15653 () Bool)

(assert (=> start!37274 (= tp!29895 b_and!15653)))

(declare-fun b!377091 () Bool)

(declare-fun res!213379 () Bool)

(declare-fun e!229605 () Bool)

(assert (=> b!377091 (=> (not res!213379) (not e!229605))))

(declare-datatypes ((array!21981 0))(
  ( (array!21982 (arr!10456 (Array (_ BitVec 32) (_ BitVec 64))) (size!10808 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21981)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377091 (= res!213379 (or (= (select (arr!10456 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10456 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377092 () Bool)

(declare-fun e!229611 () Bool)

(declare-fun tp_is_empty!9041 () Bool)

(assert (=> b!377092 (= e!229611 tp_is_empty!9041)))

(declare-fun mapNonEmpty!15126 () Bool)

(declare-fun mapRes!15126 () Bool)

(declare-fun tp!29894 () Bool)

(declare-fun e!229606 () Bool)

(assert (=> mapNonEmpty!15126 (= mapRes!15126 (and tp!29894 e!229606))))

(declare-datatypes ((V!13159 0))(
  ( (V!13160 (val!4565 Int)) )
))
(declare-datatypes ((ValueCell!4177 0))(
  ( (ValueCellFull!4177 (v!6758 V!13159)) (EmptyCell!4177) )
))
(declare-fun mapValue!15126 () ValueCell!4177)

(declare-datatypes ((array!21983 0))(
  ( (array!21984 (arr!10457 (Array (_ BitVec 32) ValueCell!4177)) (size!10809 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21983)

(declare-fun mapKey!15126 () (_ BitVec 32))

(declare-fun mapRest!15126 () (Array (_ BitVec 32) ValueCell!4177))

(assert (=> mapNonEmpty!15126 (= (arr!10457 _values!506) (store mapRest!15126 mapKey!15126 mapValue!15126))))

(declare-fun b!377093 () Bool)

(declare-fun res!213389 () Bool)

(assert (=> b!377093 (=> (not res!213389) (not e!229605))))

(assert (=> b!377093 (= res!213389 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10808 _keys!658))))))

(declare-fun b!377094 () Bool)

(declare-fun res!213388 () Bool)

(assert (=> b!377094 (=> (not res!213388) (not e!229605))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377094 (= res!213388 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377095 () Bool)

(declare-fun res!213387 () Bool)

(assert (=> b!377095 (=> (not res!213387) (not e!229605))))

(declare-datatypes ((List!5929 0))(
  ( (Nil!5926) (Cons!5925 (h!6781 (_ BitVec 64)) (t!11087 List!5929)) )
))
(declare-fun arrayNoDuplicates!0 (array!21981 (_ BitVec 32) List!5929) Bool)

(assert (=> b!377095 (= res!213387 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5926))))

(declare-fun b!377096 () Bool)

(declare-fun e!229610 () Bool)

(declare-fun e!229609 () Bool)

(assert (=> b!377096 (= e!229610 (not e!229609))))

(declare-fun res!213382 () Bool)

(assert (=> b!377096 (=> res!213382 e!229609)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377096 (= res!213382 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6060 0))(
  ( (tuple2!6061 (_1!3040 (_ BitVec 64)) (_2!3040 V!13159)) )
))
(declare-datatypes ((List!5930 0))(
  ( (Nil!5927) (Cons!5926 (h!6782 tuple2!6060) (t!11088 List!5930)) )
))
(declare-datatypes ((ListLongMap!4987 0))(
  ( (ListLongMap!4988 (toList!2509 List!5930)) )
))
(declare-fun lt!175330 () ListLongMap!4987)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13159)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13159)

(declare-fun getCurrentListMap!1946 (array!21981 array!21983 (_ BitVec 32) (_ BitVec 32) V!13159 V!13159 (_ BitVec 32) Int) ListLongMap!4987)

(assert (=> b!377096 (= lt!175330 (getCurrentListMap!1946 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175324 () array!21981)

(declare-fun lt!175336 () array!21983)

(declare-fun lt!175333 () ListLongMap!4987)

(assert (=> b!377096 (= lt!175333 (getCurrentListMap!1946 lt!175324 lt!175336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175332 () ListLongMap!4987)

(declare-fun lt!175334 () ListLongMap!4987)

(assert (=> b!377096 (and (= lt!175332 lt!175334) (= lt!175334 lt!175332))))

(declare-fun lt!175328 () ListLongMap!4987)

(declare-fun lt!175335 () tuple2!6060)

(declare-fun +!850 (ListLongMap!4987 tuple2!6060) ListLongMap!4987)

(assert (=> b!377096 (= lt!175334 (+!850 lt!175328 lt!175335))))

(declare-fun v!373 () V!13159)

(assert (=> b!377096 (= lt!175335 (tuple2!6061 k!778 v!373))))

(declare-datatypes ((Unit!11601 0))(
  ( (Unit!11602) )
))
(declare-fun lt!175325 () Unit!11601)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!97 (array!21981 array!21983 (_ BitVec 32) (_ BitVec 32) V!13159 V!13159 (_ BitVec 32) (_ BitVec 64) V!13159 (_ BitVec 32) Int) Unit!11601)

(assert (=> b!377096 (= lt!175325 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!97 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!764 (array!21981 array!21983 (_ BitVec 32) (_ BitVec 32) V!13159 V!13159 (_ BitVec 32) Int) ListLongMap!4987)

(assert (=> b!377096 (= lt!175332 (getCurrentListMapNoExtraKeys!764 lt!175324 lt!175336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377096 (= lt!175336 (array!21984 (store (arr!10457 _values!506) i!548 (ValueCellFull!4177 v!373)) (size!10809 _values!506)))))

(assert (=> b!377096 (= lt!175328 (getCurrentListMapNoExtraKeys!764 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377097 () Bool)

(declare-fun e!229608 () Bool)

(assert (=> b!377097 (= e!229609 e!229608)))

(declare-fun res!213381 () Bool)

(assert (=> b!377097 (=> res!213381 e!229608)))

(assert (=> b!377097 (= res!213381 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175327 () ListLongMap!4987)

(assert (=> b!377097 (= lt!175333 lt!175327)))

(declare-fun lt!175326 () tuple2!6060)

(assert (=> b!377097 (= lt!175327 (+!850 lt!175334 lt!175326))))

(declare-fun lt!175329 () ListLongMap!4987)

(assert (=> b!377097 (= lt!175330 lt!175329)))

(assert (=> b!377097 (= lt!175329 (+!850 lt!175328 lt!175326))))

(assert (=> b!377097 (= lt!175333 (+!850 lt!175332 lt!175326))))

(assert (=> b!377097 (= lt!175326 (tuple2!6061 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!213378 () Bool)

(assert (=> start!37274 (=> (not res!213378) (not e!229605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37274 (= res!213378 (validMask!0 mask!970))))

(assert (=> start!37274 e!229605))

(declare-fun e!229607 () Bool)

(declare-fun array_inv!7700 (array!21983) Bool)

(assert (=> start!37274 (and (array_inv!7700 _values!506) e!229607)))

(assert (=> start!37274 tp!29895))

(assert (=> start!37274 true))

(assert (=> start!37274 tp_is_empty!9041))

(declare-fun array_inv!7701 (array!21981) Bool)

(assert (=> start!37274 (array_inv!7701 _keys!658)))

(declare-fun b!377098 () Bool)

(assert (=> b!377098 (= e!229607 (and e!229611 mapRes!15126))))

(declare-fun condMapEmpty!15126 () Bool)

(declare-fun mapDefault!15126 () ValueCell!4177)

