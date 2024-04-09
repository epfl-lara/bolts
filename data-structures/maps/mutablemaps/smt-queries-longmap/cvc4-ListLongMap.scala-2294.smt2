; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37238 () Bool)

(assert start!37238)

(declare-fun b_free!8357 () Bool)

(declare-fun b_next!8357 () Bool)

(assert (=> start!37238 (= b_free!8357 (not b_next!8357))))

(declare-fun tp!29786 () Bool)

(declare-fun b_and!15617 () Bool)

(assert (=> start!37238 (= tp!29786 b_and!15617)))

(declare-fun b!376281 () Bool)

(declare-fun res!212732 () Bool)

(declare-fun e!229172 () Bool)

(assert (=> b!376281 (=> (not res!212732) (not e!229172))))

(declare-datatypes ((array!21909 0))(
  ( (array!21910 (arr!10420 (Array (_ BitVec 32) (_ BitVec 64))) (size!10772 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21909)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376281 (= res!212732 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376282 () Bool)

(declare-fun e!229173 () Bool)

(assert (=> b!376282 (= e!229172 e!229173)))

(declare-fun res!212733 () Bool)

(assert (=> b!376282 (=> (not res!212733) (not e!229173))))

(declare-fun lt!174628 () array!21909)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21909 (_ BitVec 32)) Bool)

(assert (=> b!376282 (= res!212733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174628 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376282 (= lt!174628 (array!21910 (store (arr!10420 _keys!658) i!548 k!778) (size!10772 _keys!658)))))

(declare-fun b!376283 () Bool)

(declare-fun res!212739 () Bool)

(assert (=> b!376283 (=> (not res!212739) (not e!229172))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13111 0))(
  ( (V!13112 (val!4547 Int)) )
))
(declare-datatypes ((ValueCell!4159 0))(
  ( (ValueCellFull!4159 (v!6740 V!13111)) (EmptyCell!4159) )
))
(declare-datatypes ((array!21911 0))(
  ( (array!21912 (arr!10421 (Array (_ BitVec 32) ValueCell!4159)) (size!10773 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21911)

(assert (=> b!376283 (= res!212739 (and (= (size!10773 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10772 _keys!658) (size!10773 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376284 () Bool)

(declare-fun res!212736 () Bool)

(assert (=> b!376284 (=> (not res!212736) (not e!229172))))

(assert (=> b!376284 (= res!212736 (or (= (select (arr!10420 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10420 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376285 () Bool)

(declare-fun res!212731 () Bool)

(assert (=> b!376285 (=> (not res!212731) (not e!229172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376285 (= res!212731 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15072 () Bool)

(declare-fun mapRes!15072 () Bool)

(declare-fun tp!29787 () Bool)

(declare-fun e!229176 () Bool)

(assert (=> mapNonEmpty!15072 (= mapRes!15072 (and tp!29787 e!229176))))

(declare-fun mapKey!15072 () (_ BitVec 32))

(declare-fun mapValue!15072 () ValueCell!4159)

(declare-fun mapRest!15072 () (Array (_ BitVec 32) ValueCell!4159))

(assert (=> mapNonEmpty!15072 (= (arr!10421 _values!506) (store mapRest!15072 mapKey!15072 mapValue!15072))))

(declare-fun b!376286 () Bool)

(declare-fun res!212740 () Bool)

(assert (=> b!376286 (=> (not res!212740) (not e!229172))))

(assert (=> b!376286 (= res!212740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376287 () Bool)

(declare-fun e!229179 () Bool)

(assert (=> b!376287 (= e!229173 (not e!229179))))

(declare-fun res!212737 () Bool)

(assert (=> b!376287 (=> res!212737 e!229179)))

(assert (=> b!376287 (= res!212737 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13111)

(declare-datatypes ((tuple2!6028 0))(
  ( (tuple2!6029 (_1!3024 (_ BitVec 64)) (_2!3024 V!13111)) )
))
(declare-datatypes ((List!5899 0))(
  ( (Nil!5896) (Cons!5895 (h!6751 tuple2!6028) (t!11057 List!5899)) )
))
(declare-datatypes ((ListLongMap!4955 0))(
  ( (ListLongMap!4956 (toList!2493 List!5899)) )
))
(declare-fun lt!174627 () ListLongMap!4955)

(declare-fun minValue!472 () V!13111)

(declare-fun getCurrentListMap!1932 (array!21909 array!21911 (_ BitVec 32) (_ BitVec 32) V!13111 V!13111 (_ BitVec 32) Int) ListLongMap!4955)

(assert (=> b!376287 (= lt!174627 (getCurrentListMap!1932 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174625 () ListLongMap!4955)

(declare-fun lt!174629 () array!21911)

(assert (=> b!376287 (= lt!174625 (getCurrentListMap!1932 lt!174628 lt!174629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174631 () ListLongMap!4955)

(declare-fun lt!174632 () ListLongMap!4955)

(assert (=> b!376287 (and (= lt!174631 lt!174632) (= lt!174632 lt!174631))))

(declare-fun lt!174634 () ListLongMap!4955)

(declare-fun lt!174630 () tuple2!6028)

(declare-fun +!834 (ListLongMap!4955 tuple2!6028) ListLongMap!4955)

(assert (=> b!376287 (= lt!174632 (+!834 lt!174634 lt!174630))))

(declare-fun v!373 () V!13111)

(assert (=> b!376287 (= lt!174630 (tuple2!6029 k!778 v!373))))

(declare-datatypes ((Unit!11571 0))(
  ( (Unit!11572) )
))
(declare-fun lt!174623 () Unit!11571)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!83 (array!21909 array!21911 (_ BitVec 32) (_ BitVec 32) V!13111 V!13111 (_ BitVec 32) (_ BitVec 64) V!13111 (_ BitVec 32) Int) Unit!11571)

(assert (=> b!376287 (= lt!174623 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!83 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!750 (array!21909 array!21911 (_ BitVec 32) (_ BitVec 32) V!13111 V!13111 (_ BitVec 32) Int) ListLongMap!4955)

(assert (=> b!376287 (= lt!174631 (getCurrentListMapNoExtraKeys!750 lt!174628 lt!174629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376287 (= lt!174629 (array!21912 (store (arr!10421 _values!506) i!548 (ValueCellFull!4159 v!373)) (size!10773 _values!506)))))

(assert (=> b!376287 (= lt!174634 (getCurrentListMapNoExtraKeys!750 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376289 () Bool)

(declare-fun res!212734 () Bool)

(assert (=> b!376289 (=> (not res!212734) (not e!229172))))

(declare-datatypes ((List!5900 0))(
  ( (Nil!5897) (Cons!5896 (h!6752 (_ BitVec 64)) (t!11058 List!5900)) )
))
(declare-fun arrayNoDuplicates!0 (array!21909 (_ BitVec 32) List!5900) Bool)

(assert (=> b!376289 (= res!212734 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5897))))

(declare-fun b!376290 () Bool)

(declare-fun e!229174 () Bool)

(declare-fun e!229178 () Bool)

(assert (=> b!376290 (= e!229174 (and e!229178 mapRes!15072))))

(declare-fun condMapEmpty!15072 () Bool)

(declare-fun mapDefault!15072 () ValueCell!4159)

