; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37184 () Bool)

(assert start!37184)

(declare-fun b_free!8303 () Bool)

(declare-fun b_next!8303 () Bool)

(assert (=> start!37184 (= b_free!8303 (not b_next!8303))))

(declare-fun tp!29625 () Bool)

(declare-fun b_and!15563 () Bool)

(assert (=> start!37184 (= tp!29625 b_and!15563)))

(declare-fun b!375057 () Bool)

(declare-fun res!211756 () Bool)

(declare-fun e!228529 () Bool)

(assert (=> b!375057 (=> (not res!211756) (not e!228529))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375057 (= res!211756 (validKeyInArray!0 k!778))))

(declare-fun b!375058 () Bool)

(declare-fun res!211751 () Bool)

(assert (=> b!375058 (=> (not res!211751) (not e!228529))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13039 0))(
  ( (V!13040 (val!4520 Int)) )
))
(declare-datatypes ((ValueCell!4132 0))(
  ( (ValueCellFull!4132 (v!6713 V!13039)) (EmptyCell!4132) )
))
(declare-datatypes ((array!21801 0))(
  ( (array!21802 (arr!10366 (Array (_ BitVec 32) ValueCell!4132)) (size!10718 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21801)

(declare-datatypes ((array!21803 0))(
  ( (array!21804 (arr!10367 (Array (_ BitVec 32) (_ BitVec 64))) (size!10719 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21803)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375058 (= res!211751 (and (= (size!10718 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10719 _keys!658) (size!10718 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375059 () Bool)

(declare-fun res!211750 () Bool)

(assert (=> b!375059 (=> (not res!211750) (not e!228529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21803 (_ BitVec 32)) Bool)

(assert (=> b!375059 (= res!211750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375060 () Bool)

(declare-fun res!211758 () Bool)

(assert (=> b!375060 (=> (not res!211758) (not e!228529))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375060 (= res!211758 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10719 _keys!658))))))

(declare-fun b!375061 () Bool)

(declare-fun e!228528 () Bool)

(assert (=> b!375061 (= e!228528 true)))

(declare-datatypes ((tuple2!5986 0))(
  ( (tuple2!5987 (_1!3003 (_ BitVec 64)) (_2!3003 V!13039)) )
))
(declare-fun lt!173503 () tuple2!5986)

(declare-datatypes ((List!5857 0))(
  ( (Nil!5854) (Cons!5853 (h!6709 tuple2!5986) (t!11015 List!5857)) )
))
(declare-datatypes ((ListLongMap!4913 0))(
  ( (ListLongMap!4914 (toList!2472 List!5857)) )
))
(declare-fun lt!173506 () ListLongMap!4913)

(declare-fun lt!173496 () ListLongMap!4913)

(declare-fun lt!173505 () tuple2!5986)

(declare-fun +!813 (ListLongMap!4913 tuple2!5986) ListLongMap!4913)

(assert (=> b!375061 (= (+!813 lt!173496 lt!173503) (+!813 lt!173506 lt!173505))))

(declare-fun v!373 () V!13039)

(declare-fun lt!173497 () ListLongMap!4913)

(declare-datatypes ((Unit!11529 0))(
  ( (Unit!11530) )
))
(declare-fun lt!173500 () Unit!11529)

(declare-fun minValue!472 () V!13039)

(declare-fun addCommutativeForDiffKeys!242 (ListLongMap!4913 (_ BitVec 64) V!13039 (_ BitVec 64) V!13039) Unit!11529)

(assert (=> b!375061 (= lt!173500 (addCommutativeForDiffKeys!242 lt!173497 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!14991 () Bool)

(declare-fun mapRes!14991 () Bool)

(assert (=> mapIsEmpty!14991 mapRes!14991))

(declare-fun b!375062 () Bool)

(declare-fun e!228527 () Bool)

(declare-fun tp_is_empty!8951 () Bool)

(assert (=> b!375062 (= e!228527 tp_is_empty!8951)))

(declare-fun b!375063 () Bool)

(declare-fun e!228531 () Bool)

(assert (=> b!375063 (= e!228531 e!228528)))

(declare-fun res!211755 () Bool)

(assert (=> b!375063 (=> res!211755 e!228528)))

(assert (=> b!375063 (= res!211755 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173499 () ListLongMap!4913)

(assert (=> b!375063 (= lt!173499 lt!173496)))

(assert (=> b!375063 (= lt!173496 (+!813 lt!173497 lt!173505))))

(declare-fun lt!173509 () ListLongMap!4913)

(declare-fun zeroValue!472 () V!13039)

(declare-fun lt!173493 () Unit!11529)

(assert (=> b!375063 (= lt!173493 (addCommutativeForDiffKeys!242 lt!173509 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173495 () ListLongMap!4913)

(assert (=> b!375063 (= lt!173495 (+!813 lt!173499 lt!173503))))

(declare-fun lt!173507 () ListLongMap!4913)

(declare-fun lt!173494 () tuple2!5986)

(assert (=> b!375063 (= lt!173499 (+!813 lt!173507 lt!173494))))

(declare-fun lt!173502 () ListLongMap!4913)

(assert (=> b!375063 (= lt!173502 lt!173506)))

(assert (=> b!375063 (= lt!173506 (+!813 lt!173497 lt!173503))))

(assert (=> b!375063 (= lt!173497 (+!813 lt!173509 lt!173494))))

(declare-fun lt!173504 () ListLongMap!4913)

(assert (=> b!375063 (= lt!173495 (+!813 (+!813 lt!173504 lt!173494) lt!173503))))

(assert (=> b!375063 (= lt!173503 (tuple2!5987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375063 (= lt!173494 (tuple2!5987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375064 () Bool)

(declare-fun e!228525 () Bool)

(assert (=> b!375064 (= e!228525 tp_is_empty!8951)))

(declare-fun b!375065 () Bool)

(declare-fun res!211753 () Bool)

(assert (=> b!375065 (=> (not res!211753) (not e!228529))))

(declare-datatypes ((List!5858 0))(
  ( (Nil!5855) (Cons!5854 (h!6710 (_ BitVec 64)) (t!11016 List!5858)) )
))
(declare-fun arrayNoDuplicates!0 (array!21803 (_ BitVec 32) List!5858) Bool)

(assert (=> b!375065 (= res!211753 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5855))))

(declare-fun res!211749 () Bool)

(assert (=> start!37184 (=> (not res!211749) (not e!228529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37184 (= res!211749 (validMask!0 mask!970))))

(assert (=> start!37184 e!228529))

(declare-fun e!228530 () Bool)

(declare-fun array_inv!7638 (array!21801) Bool)

(assert (=> start!37184 (and (array_inv!7638 _values!506) e!228530)))

(assert (=> start!37184 tp!29625))

(assert (=> start!37184 true))

(assert (=> start!37184 tp_is_empty!8951))

(declare-fun array_inv!7639 (array!21803) Bool)

(assert (=> start!37184 (array_inv!7639 _keys!658)))

(declare-fun b!375066 () Bool)

(declare-fun e!228524 () Bool)

(assert (=> b!375066 (= e!228524 (not e!228531))))

(declare-fun res!211757 () Bool)

(assert (=> b!375066 (=> res!211757 e!228531)))

(assert (=> b!375066 (= res!211757 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1914 (array!21803 array!21801 (_ BitVec 32) (_ BitVec 32) V!13039 V!13039 (_ BitVec 32) Int) ListLongMap!4913)

(assert (=> b!375066 (= lt!173502 (getCurrentListMap!1914 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173498 () array!21801)

(declare-fun lt!173501 () array!21803)

(assert (=> b!375066 (= lt!173495 (getCurrentListMap!1914 lt!173501 lt!173498 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375066 (and (= lt!173504 lt!173507) (= lt!173507 lt!173504))))

(assert (=> b!375066 (= lt!173507 (+!813 lt!173509 lt!173505))))

(assert (=> b!375066 (= lt!173505 (tuple2!5987 k!778 v!373))))

(declare-fun lt!173508 () Unit!11529)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!65 (array!21803 array!21801 (_ BitVec 32) (_ BitVec 32) V!13039 V!13039 (_ BitVec 32) (_ BitVec 64) V!13039 (_ BitVec 32) Int) Unit!11529)

(assert (=> b!375066 (= lt!173508 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!65 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!732 (array!21803 array!21801 (_ BitVec 32) (_ BitVec 32) V!13039 V!13039 (_ BitVec 32) Int) ListLongMap!4913)

(assert (=> b!375066 (= lt!173504 (getCurrentListMapNoExtraKeys!732 lt!173501 lt!173498 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375066 (= lt!173498 (array!21802 (store (arr!10366 _values!506) i!548 (ValueCellFull!4132 v!373)) (size!10718 _values!506)))))

(assert (=> b!375066 (= lt!173509 (getCurrentListMapNoExtraKeys!732 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375067 () Bool)

(assert (=> b!375067 (= e!228530 (and e!228527 mapRes!14991))))

(declare-fun condMapEmpty!14991 () Bool)

(declare-fun mapDefault!14991 () ValueCell!4132)

