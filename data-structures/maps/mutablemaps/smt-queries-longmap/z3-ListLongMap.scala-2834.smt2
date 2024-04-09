; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40978 () Bool)

(assert start!40978)

(declare-fun b_free!10905 () Bool)

(declare-fun b_next!10905 () Bool)

(assert (=> start!40978 (= b_free!10905 (not b_next!10905))))

(declare-fun tp!38542 () Bool)

(declare-fun b_and!19065 () Bool)

(assert (=> start!40978 (= tp!38542 b_and!19065)))

(declare-fun b!455792 () Bool)

(declare-fun res!271968 () Bool)

(declare-fun e!266395 () Bool)

(assert (=> b!455792 (=> (not res!271968) (not e!266395))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455792 (= res!271968 (validKeyInArray!0 k0!794))))

(declare-fun b!455793 () Bool)

(declare-fun res!271959 () Bool)

(assert (=> b!455793 (=> (not res!271959) (not e!266395))))

(declare-datatypes ((array!28255 0))(
  ( (array!28256 (arr!13568 (Array (_ BitVec 32) (_ BitVec 64))) (size!13920 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28255)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455793 (= res!271959 (or (= (select (arr!13568 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13568 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455794 () Bool)

(declare-fun e!266392 () Bool)

(declare-fun tp_is_empty!12243 () Bool)

(assert (=> b!455794 (= e!266392 tp_is_empty!12243)))

(declare-fun b!455795 () Bool)

(declare-fun e!266396 () Bool)

(assert (=> b!455795 (= e!266395 e!266396)))

(declare-fun res!271962 () Bool)

(assert (=> b!455795 (=> (not res!271962) (not e!266396))))

(declare-fun lt!206407 () array!28255)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28255 (_ BitVec 32)) Bool)

(assert (=> b!455795 (= res!271962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206407 mask!1025))))

(assert (=> b!455795 (= lt!206407 (array!28256 (store (arr!13568 _keys!709) i!563 k0!794) (size!13920 _keys!709)))))

(declare-fun b!455796 () Bool)

(declare-fun res!271963 () Bool)

(assert (=> b!455796 (=> (not res!271963) (not e!266396))))

(declare-datatypes ((List!8182 0))(
  ( (Nil!8179) (Cons!8178 (h!9034 (_ BitVec 64)) (t!14018 List!8182)) )
))
(declare-fun arrayNoDuplicates!0 (array!28255 (_ BitVec 32) List!8182) Bool)

(assert (=> b!455796 (= res!271963 (arrayNoDuplicates!0 lt!206407 #b00000000000000000000000000000000 Nil!8179))))

(declare-fun mapNonEmpty!20005 () Bool)

(declare-fun mapRes!20005 () Bool)

(declare-fun tp!38541 () Bool)

(declare-fun e!266391 () Bool)

(assert (=> mapNonEmpty!20005 (= mapRes!20005 (and tp!38541 e!266391))))

(declare-datatypes ((V!17429 0))(
  ( (V!17430 (val!6166 Int)) )
))
(declare-datatypes ((ValueCell!5778 0))(
  ( (ValueCellFull!5778 (v!8428 V!17429)) (EmptyCell!5778) )
))
(declare-fun mapRest!20005 () (Array (_ BitVec 32) ValueCell!5778))

(declare-fun mapValue!20005 () ValueCell!5778)

(declare-datatypes ((array!28257 0))(
  ( (array!28258 (arr!13569 (Array (_ BitVec 32) ValueCell!5778)) (size!13921 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28257)

(declare-fun mapKey!20005 () (_ BitVec 32))

(assert (=> mapNonEmpty!20005 (= (arr!13569 _values!549) (store mapRest!20005 mapKey!20005 mapValue!20005))))

(declare-fun b!455798 () Bool)

(assert (=> b!455798 (= e!266396 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17429)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8076 0))(
  ( (tuple2!8077 (_1!4048 (_ BitVec 64)) (_2!4048 V!17429)) )
))
(declare-datatypes ((List!8183 0))(
  ( (Nil!8180) (Cons!8179 (h!9035 tuple2!8076) (t!14019 List!8183)) )
))
(declare-datatypes ((ListLongMap!7003 0))(
  ( (ListLongMap!7004 (toList!3517 List!8183)) )
))
(declare-fun lt!206408 () ListLongMap!7003)

(declare-fun v!412 () V!17429)

(declare-fun zeroValue!515 () V!17429)

(declare-fun getCurrentListMapNoExtraKeys!1693 (array!28255 array!28257 (_ BitVec 32) (_ BitVec 32) V!17429 V!17429 (_ BitVec 32) Int) ListLongMap!7003)

(assert (=> b!455798 (= lt!206408 (getCurrentListMapNoExtraKeys!1693 lt!206407 (array!28258 (store (arr!13569 _values!549) i!563 (ValueCellFull!5778 v!412)) (size!13921 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206409 () ListLongMap!7003)

(assert (=> b!455798 (= lt!206409 (getCurrentListMapNoExtraKeys!1693 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455799 () Bool)

(declare-fun res!271967 () Bool)

(assert (=> b!455799 (=> (not res!271967) (not e!266395))))

(assert (=> b!455799 (= res!271967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455800 () Bool)

(declare-fun res!271969 () Bool)

(assert (=> b!455800 (=> (not res!271969) (not e!266395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455800 (= res!271969 (validMask!0 mask!1025))))

(declare-fun b!455801 () Bool)

(declare-fun res!271965 () Bool)

(assert (=> b!455801 (=> (not res!271965) (not e!266395))))

(assert (=> b!455801 (= res!271965 (and (= (size!13921 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13920 _keys!709) (size!13921 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455797 () Bool)

(declare-fun e!266393 () Bool)

(assert (=> b!455797 (= e!266393 (and e!266392 mapRes!20005))))

(declare-fun condMapEmpty!20005 () Bool)

(declare-fun mapDefault!20005 () ValueCell!5778)

(assert (=> b!455797 (= condMapEmpty!20005 (= (arr!13569 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5778)) mapDefault!20005)))))

(declare-fun res!271966 () Bool)

(assert (=> start!40978 (=> (not res!271966) (not e!266395))))

(assert (=> start!40978 (= res!271966 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13920 _keys!709))))))

(assert (=> start!40978 e!266395))

(assert (=> start!40978 tp_is_empty!12243))

(assert (=> start!40978 tp!38542))

(assert (=> start!40978 true))

(declare-fun array_inv!9814 (array!28257) Bool)

(assert (=> start!40978 (and (array_inv!9814 _values!549) e!266393)))

(declare-fun array_inv!9815 (array!28255) Bool)

(assert (=> start!40978 (array_inv!9815 _keys!709)))

(declare-fun b!455802 () Bool)

(declare-fun res!271970 () Bool)

(assert (=> b!455802 (=> (not res!271970) (not e!266396))))

(assert (=> b!455802 (= res!271970 (bvsle from!863 i!563))))

(declare-fun b!455803 () Bool)

(assert (=> b!455803 (= e!266391 tp_is_empty!12243)))

(declare-fun b!455804 () Bool)

(declare-fun res!271964 () Bool)

(assert (=> b!455804 (=> (not res!271964) (not e!266395))))

(assert (=> b!455804 (= res!271964 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8179))))

(declare-fun b!455805 () Bool)

(declare-fun res!271960 () Bool)

(assert (=> b!455805 (=> (not res!271960) (not e!266395))))

(declare-fun arrayContainsKey!0 (array!28255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455805 (= res!271960 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!455806 () Bool)

(declare-fun res!271961 () Bool)

(assert (=> b!455806 (=> (not res!271961) (not e!266395))))

(assert (=> b!455806 (= res!271961 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13920 _keys!709))))))

(declare-fun mapIsEmpty!20005 () Bool)

(assert (=> mapIsEmpty!20005 mapRes!20005))

(assert (= (and start!40978 res!271966) b!455800))

(assert (= (and b!455800 res!271969) b!455801))

(assert (= (and b!455801 res!271965) b!455799))

(assert (= (and b!455799 res!271967) b!455804))

(assert (= (and b!455804 res!271964) b!455806))

(assert (= (and b!455806 res!271961) b!455792))

(assert (= (and b!455792 res!271968) b!455793))

(assert (= (and b!455793 res!271959) b!455805))

(assert (= (and b!455805 res!271960) b!455795))

(assert (= (and b!455795 res!271962) b!455796))

(assert (= (and b!455796 res!271963) b!455802))

(assert (= (and b!455802 res!271970) b!455798))

(assert (= (and b!455797 condMapEmpty!20005) mapIsEmpty!20005))

(assert (= (and b!455797 (not condMapEmpty!20005)) mapNonEmpty!20005))

(get-info :version)

(assert (= (and mapNonEmpty!20005 ((_ is ValueCellFull!5778) mapValue!20005)) b!455803))

(assert (= (and b!455797 ((_ is ValueCellFull!5778) mapDefault!20005)) b!455794))

(assert (= start!40978 b!455797))

(declare-fun m!439431 () Bool)

(assert (=> b!455795 m!439431))

(declare-fun m!439433 () Bool)

(assert (=> b!455795 m!439433))

(declare-fun m!439435 () Bool)

(assert (=> b!455798 m!439435))

(declare-fun m!439437 () Bool)

(assert (=> b!455798 m!439437))

(declare-fun m!439439 () Bool)

(assert (=> b!455798 m!439439))

(declare-fun m!439441 () Bool)

(assert (=> b!455799 m!439441))

(declare-fun m!439443 () Bool)

(assert (=> mapNonEmpty!20005 m!439443))

(declare-fun m!439445 () Bool)

(assert (=> b!455793 m!439445))

(declare-fun m!439447 () Bool)

(assert (=> start!40978 m!439447))

(declare-fun m!439449 () Bool)

(assert (=> start!40978 m!439449))

(declare-fun m!439451 () Bool)

(assert (=> b!455792 m!439451))

(declare-fun m!439453 () Bool)

(assert (=> b!455796 m!439453))

(declare-fun m!439455 () Bool)

(assert (=> b!455800 m!439455))

(declare-fun m!439457 () Bool)

(assert (=> b!455804 m!439457))

(declare-fun m!439459 () Bool)

(assert (=> b!455805 m!439459))

(check-sat (not b!455798) (not b!455795) (not b_next!10905) (not start!40978) (not b!455804) (not b!455805) (not mapNonEmpty!20005) (not b!455796) tp_is_empty!12243 (not b!455800) b_and!19065 (not b!455799) (not b!455792))
(check-sat b_and!19065 (not b_next!10905))
