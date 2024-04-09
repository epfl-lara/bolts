; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37232 () Bool)

(assert start!37232)

(declare-fun b_free!8351 () Bool)

(declare-fun b_next!8351 () Bool)

(assert (=> start!37232 (= b_free!8351 (not b_next!8351))))

(declare-fun tp!29768 () Bool)

(declare-fun b_and!15611 () Bool)

(assert (=> start!37232 (= tp!29768 b_and!15611)))

(declare-fun b!376146 () Bool)

(declare-fun res!212627 () Bool)

(declare-fun e!229101 () Bool)

(assert (=> b!376146 (=> (not res!212627) (not e!229101))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21897 0))(
  ( (array!21898 (arr!10414 (Array (_ BitVec 32) (_ BitVec 64))) (size!10766 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21897)

(assert (=> b!376146 (= res!212627 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10766 _keys!658))))))

(declare-fun res!212633 () Bool)

(assert (=> start!37232 (=> (not res!212633) (not e!229101))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37232 (= res!212633 (validMask!0 mask!970))))

(assert (=> start!37232 e!229101))

(declare-datatypes ((V!13103 0))(
  ( (V!13104 (val!4544 Int)) )
))
(declare-datatypes ((ValueCell!4156 0))(
  ( (ValueCellFull!4156 (v!6737 V!13103)) (EmptyCell!4156) )
))
(declare-datatypes ((array!21899 0))(
  ( (array!21900 (arr!10415 (Array (_ BitVec 32) ValueCell!4156)) (size!10767 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21899)

(declare-fun e!229106 () Bool)

(declare-fun array_inv!7670 (array!21899) Bool)

(assert (=> start!37232 (and (array_inv!7670 _values!506) e!229106)))

(assert (=> start!37232 tp!29768))

(assert (=> start!37232 true))

(declare-fun tp_is_empty!8999 () Bool)

(assert (=> start!37232 tp_is_empty!8999))

(declare-fun array_inv!7671 (array!21897) Bool)

(assert (=> start!37232 (array_inv!7671 _keys!658)))

(declare-fun b!376147 () Bool)

(declare-fun res!212626 () Bool)

(assert (=> b!376147 (=> (not res!212626) (not e!229101))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376147 (= res!212626 (and (= (size!10767 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10766 _keys!658) (size!10767 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376148 () Bool)

(declare-fun res!212630 () Bool)

(assert (=> b!376148 (=> (not res!212630) (not e!229101))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376148 (= res!212630 (validKeyInArray!0 k!778))))

(declare-fun b!376149 () Bool)

(declare-fun e!229104 () Bool)

(assert (=> b!376149 (= e!229104 tp_is_empty!8999)))

(declare-fun b!376150 () Bool)

(declare-fun e!229103 () Bool)

(declare-fun e!229105 () Bool)

(assert (=> b!376150 (= e!229103 e!229105)))

(declare-fun res!212629 () Bool)

(assert (=> b!376150 (=> res!212629 e!229105)))

(assert (=> b!376150 (= res!212629 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6024 0))(
  ( (tuple2!6025 (_1!3022 (_ BitVec 64)) (_2!3022 V!13103)) )
))
(declare-datatypes ((List!5895 0))(
  ( (Nil!5892) (Cons!5891 (h!6747 tuple2!6024) (t!11053 List!5895)) )
))
(declare-datatypes ((ListLongMap!4951 0))(
  ( (ListLongMap!4952 (toList!2491 List!5895)) )
))
(declare-fun lt!174514 () ListLongMap!4951)

(declare-fun lt!174513 () ListLongMap!4951)

(assert (=> b!376150 (= lt!174514 lt!174513)))

(declare-fun lt!174517 () ListLongMap!4951)

(declare-fun lt!174507 () tuple2!6024)

(declare-fun +!832 (ListLongMap!4951 tuple2!6024) ListLongMap!4951)

(assert (=> b!376150 (= lt!174513 (+!832 lt!174517 lt!174507))))

(declare-fun lt!174510 () ListLongMap!4951)

(declare-fun lt!174516 () ListLongMap!4951)

(assert (=> b!376150 (= lt!174510 lt!174516)))

(declare-fun lt!174515 () ListLongMap!4951)

(assert (=> b!376150 (= lt!174516 (+!832 lt!174515 lt!174507))))

(declare-fun lt!174512 () ListLongMap!4951)

(assert (=> b!376150 (= lt!174514 (+!832 lt!174512 lt!174507))))

(declare-fun zeroValue!472 () V!13103)

(assert (=> b!376150 (= lt!174507 (tuple2!6025 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15063 () Bool)

(declare-fun mapRes!15063 () Bool)

(declare-fun tp!29769 () Bool)

(declare-fun e!229107 () Bool)

(assert (=> mapNonEmpty!15063 (= mapRes!15063 (and tp!29769 e!229107))))

(declare-fun mapKey!15063 () (_ BitVec 32))

(declare-fun mapValue!15063 () ValueCell!4156)

(declare-fun mapRest!15063 () (Array (_ BitVec 32) ValueCell!4156))

(assert (=> mapNonEmpty!15063 (= (arr!10415 _values!506) (store mapRest!15063 mapKey!15063 mapValue!15063))))

(declare-fun b!376151 () Bool)

(declare-fun res!212623 () Bool)

(assert (=> b!376151 (=> (not res!212623) (not e!229101))))

(assert (=> b!376151 (= res!212623 (or (= (select (arr!10414 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10414 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376152 () Bool)

(declare-fun res!212622 () Bool)

(assert (=> b!376152 (=> (not res!212622) (not e!229101))))

(declare-fun arrayContainsKey!0 (array!21897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376152 (= res!212622 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376153 () Bool)

(assert (=> b!376153 (= e!229105 true)))

(declare-fun lt!174508 () tuple2!6024)

(assert (=> b!376153 (= lt!174513 (+!832 lt!174516 lt!174508))))

(declare-fun v!373 () V!13103)

(declare-datatypes ((Unit!11567 0))(
  ( (Unit!11568) )
))
(declare-fun lt!174505 () Unit!11567)

(declare-fun addCommutativeForDiffKeys!257 (ListLongMap!4951 (_ BitVec 64) V!13103 (_ BitVec 64) V!13103) Unit!11567)

(assert (=> b!376153 (= lt!174505 (addCommutativeForDiffKeys!257 lt!174515 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376154 () Bool)

(declare-fun e!229102 () Bool)

(assert (=> b!376154 (= e!229102 (not e!229103))))

(declare-fun res!212625 () Bool)

(assert (=> b!376154 (=> res!212625 e!229103)))

(assert (=> b!376154 (= res!212625 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13103)

(declare-fun getCurrentListMap!1930 (array!21897 array!21899 (_ BitVec 32) (_ BitVec 32) V!13103 V!13103 (_ BitVec 32) Int) ListLongMap!4951)

(assert (=> b!376154 (= lt!174510 (getCurrentListMap!1930 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174511 () array!21897)

(declare-fun lt!174509 () array!21899)

(assert (=> b!376154 (= lt!174514 (getCurrentListMap!1930 lt!174511 lt!174509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376154 (and (= lt!174512 lt!174517) (= lt!174517 lt!174512))))

(assert (=> b!376154 (= lt!174517 (+!832 lt!174515 lt!174508))))

(assert (=> b!376154 (= lt!174508 (tuple2!6025 k!778 v!373))))

(declare-fun lt!174506 () Unit!11567)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!81 (array!21897 array!21899 (_ BitVec 32) (_ BitVec 32) V!13103 V!13103 (_ BitVec 32) (_ BitVec 64) V!13103 (_ BitVec 32) Int) Unit!11567)

(assert (=> b!376154 (= lt!174506 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!81 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!748 (array!21897 array!21899 (_ BitVec 32) (_ BitVec 32) V!13103 V!13103 (_ BitVec 32) Int) ListLongMap!4951)

(assert (=> b!376154 (= lt!174512 (getCurrentListMapNoExtraKeys!748 lt!174511 lt!174509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376154 (= lt!174509 (array!21900 (store (arr!10415 _values!506) i!548 (ValueCellFull!4156 v!373)) (size!10767 _values!506)))))

(assert (=> b!376154 (= lt!174515 (getCurrentListMapNoExtraKeys!748 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376155 () Bool)

(declare-fun res!212631 () Bool)

(assert (=> b!376155 (=> (not res!212631) (not e!229101))))

(declare-datatypes ((List!5896 0))(
  ( (Nil!5893) (Cons!5892 (h!6748 (_ BitVec 64)) (t!11054 List!5896)) )
))
(declare-fun arrayNoDuplicates!0 (array!21897 (_ BitVec 32) List!5896) Bool)

(assert (=> b!376155 (= res!212631 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5893))))

(declare-fun mapIsEmpty!15063 () Bool)

(assert (=> mapIsEmpty!15063 mapRes!15063))

(declare-fun b!376156 () Bool)

(assert (=> b!376156 (= e!229107 tp_is_empty!8999)))

(declare-fun b!376157 () Bool)

(assert (=> b!376157 (= e!229101 e!229102)))

(declare-fun res!212628 () Bool)

(assert (=> b!376157 (=> (not res!212628) (not e!229102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21897 (_ BitVec 32)) Bool)

(assert (=> b!376157 (= res!212628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174511 mask!970))))

(assert (=> b!376157 (= lt!174511 (array!21898 (store (arr!10414 _keys!658) i!548 k!778) (size!10766 _keys!658)))))

(declare-fun b!376158 () Bool)

(declare-fun res!212624 () Bool)

(assert (=> b!376158 (=> (not res!212624) (not e!229102))))

(assert (=> b!376158 (= res!212624 (arrayNoDuplicates!0 lt!174511 #b00000000000000000000000000000000 Nil!5893))))

(declare-fun b!376159 () Bool)

(assert (=> b!376159 (= e!229106 (and e!229104 mapRes!15063))))

(declare-fun condMapEmpty!15063 () Bool)

(declare-fun mapDefault!15063 () ValueCell!4156)

