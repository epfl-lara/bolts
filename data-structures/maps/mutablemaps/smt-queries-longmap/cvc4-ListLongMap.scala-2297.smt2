; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37256 () Bool)

(assert start!37256)

(declare-fun b_free!8375 () Bool)

(declare-fun b_next!8375 () Bool)

(assert (=> start!37256 (= b_free!8375 (not b_next!8375))))

(declare-fun tp!29841 () Bool)

(declare-fun b_and!15635 () Bool)

(assert (=> start!37256 (= tp!29841 b_and!15635)))

(declare-fun mapIsEmpty!15099 () Bool)

(declare-fun mapRes!15099 () Bool)

(assert (=> mapIsEmpty!15099 mapRes!15099))

(declare-fun b!376686 () Bool)

(declare-fun e!229389 () Bool)

(assert (=> b!376686 (= e!229389 true)))

(declare-datatypes ((V!13135 0))(
  ( (V!13136 (val!4556 Int)) )
))
(declare-datatypes ((tuple2!6044 0))(
  ( (tuple2!6045 (_1!3032 (_ BitVec 64)) (_2!3032 V!13135)) )
))
(declare-datatypes ((List!5914 0))(
  ( (Nil!5911) (Cons!5910 (h!6766 tuple2!6044) (t!11072 List!5914)) )
))
(declare-datatypes ((ListLongMap!4971 0))(
  ( (ListLongMap!4972 (toList!2501 List!5914)) )
))
(declare-fun lt!174980 () ListLongMap!4971)

(declare-fun lt!174982 () ListLongMap!4971)

(declare-fun lt!174974 () tuple2!6044)

(declare-fun +!842 (ListLongMap!4971 tuple2!6044) ListLongMap!4971)

(assert (=> b!376686 (= lt!174980 (+!842 lt!174982 lt!174974))))

(declare-fun v!373 () V!13135)

(declare-datatypes ((Unit!11585 0))(
  ( (Unit!11586) )
))
(declare-fun lt!174985 () Unit!11585)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13135)

(declare-fun lt!174983 () ListLongMap!4971)

(declare-fun addCommutativeForDiffKeys!264 (ListLongMap!4971 (_ BitVec 64) V!13135 (_ BitVec 64) V!13135) Unit!11585)

(assert (=> b!376686 (= lt!174985 (addCommutativeForDiffKeys!264 lt!174983 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376687 () Bool)

(declare-fun e!229391 () Bool)

(declare-fun e!229388 () Bool)

(assert (=> b!376687 (= e!229391 (not e!229388))))

(declare-fun res!213062 () Bool)

(assert (=> b!376687 (=> res!213062 e!229388)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376687 (= res!213062 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4168 0))(
  ( (ValueCellFull!4168 (v!6749 V!13135)) (EmptyCell!4168) )
))
(declare-datatypes ((array!21945 0))(
  ( (array!21946 (arr!10438 (Array (_ BitVec 32) ValueCell!4168)) (size!10790 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21945)

(declare-fun lt!174978 () ListLongMap!4971)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!21947 0))(
  ( (array!21948 (arr!10439 (Array (_ BitVec 32) (_ BitVec 64))) (size!10791 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21947)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13135)

(declare-fun getCurrentListMap!1939 (array!21947 array!21945 (_ BitVec 32) (_ BitVec 32) V!13135 V!13135 (_ BitVec 32) Int) ListLongMap!4971)

(assert (=> b!376687 (= lt!174978 (getCurrentListMap!1939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174975 () array!21945)

(declare-fun lt!174981 () ListLongMap!4971)

(declare-fun lt!174977 () array!21947)

(assert (=> b!376687 (= lt!174981 (getCurrentListMap!1939 lt!174977 lt!174975 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174976 () ListLongMap!4971)

(declare-fun lt!174973 () ListLongMap!4971)

(assert (=> b!376687 (and (= lt!174976 lt!174973) (= lt!174973 lt!174976))))

(assert (=> b!376687 (= lt!174973 (+!842 lt!174983 lt!174974))))

(assert (=> b!376687 (= lt!174974 (tuple2!6045 k!778 v!373))))

(declare-fun lt!174984 () Unit!11585)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!90 (array!21947 array!21945 (_ BitVec 32) (_ BitVec 32) V!13135 V!13135 (_ BitVec 32) (_ BitVec 64) V!13135 (_ BitVec 32) Int) Unit!11585)

(assert (=> b!376687 (= lt!174984 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!90 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!757 (array!21947 array!21945 (_ BitVec 32) (_ BitVec 32) V!13135 V!13135 (_ BitVec 32) Int) ListLongMap!4971)

(assert (=> b!376687 (= lt!174976 (getCurrentListMapNoExtraKeys!757 lt!174977 lt!174975 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376687 (= lt!174975 (array!21946 (store (arr!10438 _values!506) i!548 (ValueCellFull!4168 v!373)) (size!10790 _values!506)))))

(assert (=> b!376687 (= lt!174983 (getCurrentListMapNoExtraKeys!757 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376688 () Bool)

(declare-fun e!229392 () Bool)

(assert (=> b!376688 (= e!229392 e!229391)))

(declare-fun res!213057 () Bool)

(assert (=> b!376688 (=> (not res!213057) (not e!229391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21947 (_ BitVec 32)) Bool)

(assert (=> b!376688 (= res!213057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174977 mask!970))))

(assert (=> b!376688 (= lt!174977 (array!21948 (store (arr!10439 _keys!658) i!548 k!778) (size!10791 _keys!658)))))

(declare-fun b!376689 () Bool)

(declare-fun res!213054 () Bool)

(assert (=> b!376689 (=> (not res!213054) (not e!229392))))

(assert (=> b!376689 (= res!213054 (and (= (size!10790 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10791 _keys!658) (size!10790 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376691 () Bool)

(assert (=> b!376691 (= e!229388 e!229389)))

(declare-fun res!213055 () Bool)

(assert (=> b!376691 (=> res!213055 e!229389)))

(assert (=> b!376691 (= res!213055 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!376691 (= lt!174981 lt!174980)))

(declare-fun lt!174979 () tuple2!6044)

(assert (=> b!376691 (= lt!174980 (+!842 lt!174973 lt!174979))))

(assert (=> b!376691 (= lt!174978 lt!174982)))

(assert (=> b!376691 (= lt!174982 (+!842 lt!174983 lt!174979))))

(assert (=> b!376691 (= lt!174981 (+!842 lt!174976 lt!174979))))

(assert (=> b!376691 (= lt!174979 (tuple2!6045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376692 () Bool)

(declare-fun res!213064 () Bool)

(assert (=> b!376692 (=> (not res!213064) (not e!229392))))

(assert (=> b!376692 (= res!213064 (or (= (select (arr!10439 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10439 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15099 () Bool)

(declare-fun tp!29840 () Bool)

(declare-fun e!229390 () Bool)

(assert (=> mapNonEmpty!15099 (= mapRes!15099 (and tp!29840 e!229390))))

(declare-fun mapValue!15099 () ValueCell!4168)

(declare-fun mapKey!15099 () (_ BitVec 32))

(declare-fun mapRest!15099 () (Array (_ BitVec 32) ValueCell!4168))

(assert (=> mapNonEmpty!15099 (= (arr!10438 _values!506) (store mapRest!15099 mapKey!15099 mapValue!15099))))

(declare-fun b!376693 () Bool)

(declare-fun e!229395 () Bool)

(declare-fun tp_is_empty!9023 () Bool)

(assert (=> b!376693 (= e!229395 tp_is_empty!9023)))

(declare-fun b!376694 () Bool)

(declare-fun res!213056 () Bool)

(assert (=> b!376694 (=> (not res!213056) (not e!229392))))

(declare-datatypes ((List!5915 0))(
  ( (Nil!5912) (Cons!5911 (h!6767 (_ BitVec 64)) (t!11073 List!5915)) )
))
(declare-fun arrayNoDuplicates!0 (array!21947 (_ BitVec 32) List!5915) Bool)

(assert (=> b!376694 (= res!213056 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5912))))

(declare-fun b!376695 () Bool)

(declare-fun res!213060 () Bool)

(assert (=> b!376695 (=> (not res!213060) (not e!229391))))

(assert (=> b!376695 (= res!213060 (arrayNoDuplicates!0 lt!174977 #b00000000000000000000000000000000 Nil!5912))))

(declare-fun b!376696 () Bool)

(declare-fun res!213059 () Bool)

(assert (=> b!376696 (=> (not res!213059) (not e!229392))))

(assert (=> b!376696 (= res!213059 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10791 _keys!658))))))

(declare-fun res!213061 () Bool)

(assert (=> start!37256 (=> (not res!213061) (not e!229392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37256 (= res!213061 (validMask!0 mask!970))))

(assert (=> start!37256 e!229392))

(declare-fun e!229394 () Bool)

(declare-fun array_inv!7686 (array!21945) Bool)

(assert (=> start!37256 (and (array_inv!7686 _values!506) e!229394)))

(assert (=> start!37256 tp!29841))

(assert (=> start!37256 true))

(assert (=> start!37256 tp_is_empty!9023))

(declare-fun array_inv!7687 (array!21947) Bool)

(assert (=> start!37256 (array_inv!7687 _keys!658)))

(declare-fun b!376690 () Bool)

(assert (=> b!376690 (= e!229394 (and e!229395 mapRes!15099))))

(declare-fun condMapEmpty!15099 () Bool)

(declare-fun mapDefault!15099 () ValueCell!4168)

