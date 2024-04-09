; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37114 () Bool)

(assert start!37114)

(declare-fun b_free!8233 () Bool)

(declare-fun b_next!8233 () Bool)

(assert (=> start!37114 (= b_free!8233 (not b_next!8233))))

(declare-fun tp!29414 () Bool)

(declare-fun b_and!15493 () Bool)

(assert (=> start!37114 (= tp!29414 b_and!15493)))

(declare-fun b!373482 () Bool)

(declare-fun e!227690 () Bool)

(assert (=> b!373482 (= e!227690 true)))

(declare-datatypes ((V!12947 0))(
  ( (V!12948 (val!4485 Int)) )
))
(declare-datatypes ((tuple2!5934 0))(
  ( (tuple2!5935 (_1!2977 (_ BitVec 64)) (_2!2977 V!12947)) )
))
(declare-fun lt!171716 () tuple2!5934)

(declare-datatypes ((List!5808 0))(
  ( (Nil!5805) (Cons!5804 (h!6660 tuple2!5934) (t!10966 List!5808)) )
))
(declare-datatypes ((ListLongMap!4861 0))(
  ( (ListLongMap!4862 (toList!2446 List!5808)) )
))
(declare-fun lt!171721 () ListLongMap!4861)

(declare-fun lt!171719 () ListLongMap!4861)

(declare-fun lt!171724 () tuple2!5934)

(declare-fun +!787 (ListLongMap!4861 tuple2!5934) ListLongMap!4861)

(assert (=> b!373482 (= (+!787 lt!171719 lt!171724) (+!787 lt!171721 lt!171716))))

(declare-fun v!373 () V!12947)

(declare-fun lt!171709 () ListLongMap!4861)

(declare-datatypes ((Unit!11477 0))(
  ( (Unit!11478) )
))
(declare-fun lt!171715 () Unit!11477)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!12947)

(declare-fun addCommutativeForDiffKeys!216 (ListLongMap!4861 (_ BitVec 64) V!12947 (_ BitVec 64) V!12947) Unit!11477)

(assert (=> b!373482 (= lt!171715 (addCommutativeForDiffKeys!216 lt!171709 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!14886 () Bool)

(declare-fun mapRes!14886 () Bool)

(declare-fun tp!29415 () Bool)

(declare-fun e!227684 () Bool)

(assert (=> mapNonEmpty!14886 (= mapRes!14886 (and tp!29415 e!227684))))

(declare-fun mapKey!14886 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4097 0))(
  ( (ValueCellFull!4097 (v!6678 V!12947)) (EmptyCell!4097) )
))
(declare-datatypes ((array!21669 0))(
  ( (array!21670 (arr!10300 (Array (_ BitVec 32) ValueCell!4097)) (size!10652 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21669)

(declare-fun mapRest!14886 () (Array (_ BitVec 32) ValueCell!4097))

(declare-fun mapValue!14886 () ValueCell!4097)

(assert (=> mapNonEmpty!14886 (= (arr!10300 _values!506) (store mapRest!14886 mapKey!14886 mapValue!14886))))

(declare-fun b!373483 () Bool)

(declare-fun res!210500 () Bool)

(declare-fun e!227686 () Bool)

(assert (=> b!373483 (=> (not res!210500) (not e!227686))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!21671 0))(
  ( (array!21672 (arr!10301 (Array (_ BitVec 32) (_ BitVec 64))) (size!10653 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21671)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!373483 (= res!210500 (and (= (size!10652 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10653 _keys!658) (size!10652 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14886 () Bool)

(assert (=> mapIsEmpty!14886 mapRes!14886))

(declare-fun b!373484 () Bool)

(declare-fun e!227688 () Bool)

(assert (=> b!373484 (= e!227688 e!227690)))

(declare-fun res!210497 () Bool)

(assert (=> b!373484 (=> res!210497 e!227690)))

(assert (=> b!373484 (= res!210497 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171712 () ListLongMap!4861)

(assert (=> b!373484 (= lt!171712 lt!171719)))

(assert (=> b!373484 (= lt!171719 (+!787 lt!171709 lt!171716))))

(declare-fun lt!171714 () Unit!11477)

(declare-fun zeroValue!472 () V!12947)

(declare-fun lt!171723 () ListLongMap!4861)

(assert (=> b!373484 (= lt!171714 (addCommutativeForDiffKeys!216 lt!171723 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171713 () ListLongMap!4861)

(assert (=> b!373484 (= lt!171713 (+!787 lt!171712 lt!171724))))

(declare-fun lt!171718 () ListLongMap!4861)

(declare-fun lt!171720 () tuple2!5934)

(assert (=> b!373484 (= lt!171712 (+!787 lt!171718 lt!171720))))

(declare-fun lt!171717 () ListLongMap!4861)

(assert (=> b!373484 (= lt!171717 lt!171721)))

(assert (=> b!373484 (= lt!171721 (+!787 lt!171709 lt!171724))))

(assert (=> b!373484 (= lt!171709 (+!787 lt!171723 lt!171720))))

(declare-fun lt!171710 () ListLongMap!4861)

(assert (=> b!373484 (= lt!171713 (+!787 (+!787 lt!171710 lt!171720) lt!171724))))

(assert (=> b!373484 (= lt!171724 (tuple2!5935 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373484 (= lt!171720 (tuple2!5935 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!210490 () Bool)

(assert (=> start!37114 (=> (not res!210490) (not e!227686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37114 (= res!210490 (validMask!0 mask!970))))

(assert (=> start!37114 e!227686))

(declare-fun e!227685 () Bool)

(declare-fun array_inv!7600 (array!21669) Bool)

(assert (=> start!37114 (and (array_inv!7600 _values!506) e!227685)))

(assert (=> start!37114 tp!29414))

(assert (=> start!37114 true))

(declare-fun tp_is_empty!8881 () Bool)

(assert (=> start!37114 tp_is_empty!8881))

(declare-fun array_inv!7601 (array!21671) Bool)

(assert (=> start!37114 (array_inv!7601 _keys!658)))

(declare-fun b!373485 () Bool)

(declare-fun e!227689 () Bool)

(assert (=> b!373485 (= e!227689 (not e!227688))))

(declare-fun res!210498 () Bool)

(assert (=> b!373485 (=> res!210498 e!227688)))

(assert (=> b!373485 (= res!210498 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1894 (array!21671 array!21669 (_ BitVec 32) (_ BitVec 32) V!12947 V!12947 (_ BitVec 32) Int) ListLongMap!4861)

(assert (=> b!373485 (= lt!171717 (getCurrentListMap!1894 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171722 () array!21671)

(declare-fun lt!171708 () array!21669)

(assert (=> b!373485 (= lt!171713 (getCurrentListMap!1894 lt!171722 lt!171708 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373485 (and (= lt!171710 lt!171718) (= lt!171718 lt!171710))))

(assert (=> b!373485 (= lt!171718 (+!787 lt!171723 lt!171716))))

(assert (=> b!373485 (= lt!171716 (tuple2!5935 k!778 v!373))))

(declare-fun lt!171711 () Unit!11477)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!45 (array!21671 array!21669 (_ BitVec 32) (_ BitVec 32) V!12947 V!12947 (_ BitVec 32) (_ BitVec 64) V!12947 (_ BitVec 32) Int) Unit!11477)

(assert (=> b!373485 (= lt!171711 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!45 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!712 (array!21671 array!21669 (_ BitVec 32) (_ BitVec 32) V!12947 V!12947 (_ BitVec 32) Int) ListLongMap!4861)

(assert (=> b!373485 (= lt!171710 (getCurrentListMapNoExtraKeys!712 lt!171722 lt!171708 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373485 (= lt!171708 (array!21670 (store (arr!10300 _values!506) i!548 (ValueCellFull!4097 v!373)) (size!10652 _values!506)))))

(assert (=> b!373485 (= lt!171723 (getCurrentListMapNoExtraKeys!712 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373486 () Bool)

(declare-fun res!210493 () Bool)

(assert (=> b!373486 (=> (not res!210493) (not e!227686))))

(assert (=> b!373486 (= res!210493 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10653 _keys!658))))))

(declare-fun b!373487 () Bool)

(declare-fun res!210494 () Bool)

(assert (=> b!373487 (=> (not res!210494) (not e!227686))))

(declare-fun arrayContainsKey!0 (array!21671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373487 (= res!210494 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373488 () Bool)

(assert (=> b!373488 (= e!227686 e!227689)))

(declare-fun res!210489 () Bool)

(assert (=> b!373488 (=> (not res!210489) (not e!227689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21671 (_ BitVec 32)) Bool)

(assert (=> b!373488 (= res!210489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171722 mask!970))))

(assert (=> b!373488 (= lt!171722 (array!21672 (store (arr!10301 _keys!658) i!548 k!778) (size!10653 _keys!658)))))

(declare-fun b!373489 () Bool)

(declare-fun e!227691 () Bool)

(assert (=> b!373489 (= e!227685 (and e!227691 mapRes!14886))))

(declare-fun condMapEmpty!14886 () Bool)

(declare-fun mapDefault!14886 () ValueCell!4097)

