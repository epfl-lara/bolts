; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37204 () Bool)

(assert start!37204)

(declare-fun b_free!8323 () Bool)

(declare-fun b_next!8323 () Bool)

(assert (=> start!37204 (= b_free!8323 (not b_next!8323))))

(declare-fun tp!29684 () Bool)

(declare-fun b_and!15583 () Bool)

(assert (=> start!37204 (= tp!29684 b_and!15583)))

(declare-fun b!375509 () Bool)

(declare-fun e!228764 () Bool)

(assert (=> b!375509 (= e!228764 true)))

(declare-fun e!228770 () Bool)

(assert (=> b!375509 e!228770))

(declare-fun res!212112 () Bool)

(assert (=> b!375509 (=> (not res!212112) (not e!228770))))

(declare-datatypes ((V!13067 0))(
  ( (V!13068 (val!4530 Int)) )
))
(declare-datatypes ((tuple2!6002 0))(
  ( (tuple2!6003 (_1!3011 (_ BitVec 64)) (_2!3011 V!13067)) )
))
(declare-datatypes ((List!5873 0))(
  ( (Nil!5870) (Cons!5869 (h!6725 tuple2!6002) (t!11031 List!5873)) )
))
(declare-datatypes ((ListLongMap!4929 0))(
  ( (ListLongMap!4930 (toList!2480 List!5873)) )
))
(declare-fun lt!173988 () ListLongMap!4929)

(declare-fun lt!173991 () ListLongMap!4929)

(declare-fun lt!173995 () tuple2!6002)

(declare-fun +!821 (ListLongMap!4929 tuple2!6002) ListLongMap!4929)

(assert (=> b!375509 (= res!212112 (= lt!173988 (+!821 lt!173991 lt!173995)))))

(declare-fun zeroValue!472 () V!13067)

(assert (=> b!375509 (= lt!173995 (tuple2!6003 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375510 () Bool)

(declare-fun res!212122 () Bool)

(declare-fun e!228769 () Bool)

(assert (=> b!375510 (=> (not res!212122) (not e!228769))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21841 0))(
  ( (array!21842 (arr!10386 (Array (_ BitVec 32) (_ BitVec 64))) (size!10738 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21841)

(assert (=> b!375510 (= res!212122 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10738 _keys!658))))))

(declare-fun b!375511 () Bool)

(declare-fun res!212121 () Bool)

(assert (=> b!375511 (=> (not res!212121) (not e!228769))))

(declare-datatypes ((List!5874 0))(
  ( (Nil!5871) (Cons!5870 (h!6726 (_ BitVec 64)) (t!11032 List!5874)) )
))
(declare-fun arrayNoDuplicates!0 (array!21841 (_ BitVec 32) List!5874) Bool)

(assert (=> b!375511 (= res!212121 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5871))))

(declare-fun b!375512 () Bool)

(declare-fun e!228771 () Bool)

(declare-fun tp_is_empty!8971 () Bool)

(assert (=> b!375512 (= e!228771 tp_is_empty!8971)))

(declare-fun b!375513 () Bool)

(declare-fun e!228766 () Bool)

(assert (=> b!375513 (= e!228766 (not e!228764))))

(declare-fun res!212111 () Bool)

(assert (=> b!375513 (=> res!212111 e!228764)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375513 (= res!212111 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!173987 () ListLongMap!4929)

(declare-datatypes ((ValueCell!4142 0))(
  ( (ValueCellFull!4142 (v!6723 V!13067)) (EmptyCell!4142) )
))
(declare-datatypes ((array!21843 0))(
  ( (array!21844 (arr!10387 (Array (_ BitVec 32) ValueCell!4142)) (size!10739 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21843)

(declare-fun defaultEntry!514 () Int)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13067)

(declare-fun getCurrentListMap!1922 (array!21841 array!21843 (_ BitVec 32) (_ BitVec 32) V!13067 V!13067 (_ BitVec 32) Int) ListLongMap!4929)

(assert (=> b!375513 (= lt!173987 (getCurrentListMap!1922 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173993 () array!21843)

(declare-fun lt!173992 () array!21841)

(assert (=> b!375513 (= lt!173988 (getCurrentListMap!1922 lt!173992 lt!173993 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173994 () ListLongMap!4929)

(assert (=> b!375513 (and (= lt!173991 lt!173994) (= lt!173994 lt!173991))))

(declare-fun v!373 () V!13067)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!173990 () ListLongMap!4929)

(assert (=> b!375513 (= lt!173994 (+!821 lt!173990 (tuple2!6003 k!778 v!373)))))

(declare-datatypes ((Unit!11545 0))(
  ( (Unit!11546) )
))
(declare-fun lt!173989 () Unit!11545)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!73 (array!21841 array!21843 (_ BitVec 32) (_ BitVec 32) V!13067 V!13067 (_ BitVec 32) (_ BitVec 64) V!13067 (_ BitVec 32) Int) Unit!11545)

(assert (=> b!375513 (= lt!173989 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!73 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!740 (array!21841 array!21843 (_ BitVec 32) (_ BitVec 32) V!13067 V!13067 (_ BitVec 32) Int) ListLongMap!4929)

(assert (=> b!375513 (= lt!173991 (getCurrentListMapNoExtraKeys!740 lt!173992 lt!173993 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375513 (= lt!173993 (array!21844 (store (arr!10387 _values!506) i!548 (ValueCellFull!4142 v!373)) (size!10739 _values!506)))))

(assert (=> b!375513 (= lt!173990 (getCurrentListMapNoExtraKeys!740 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375514 () Bool)

(declare-fun res!212117 () Bool)

(assert (=> b!375514 (=> (not res!212117) (not e!228769))))

(assert (=> b!375514 (= res!212117 (or (= (select (arr!10386 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10386 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375515 () Bool)

(declare-fun res!212123 () Bool)

(assert (=> b!375515 (=> (not res!212123) (not e!228769))))

(assert (=> b!375515 (= res!212123 (and (= (size!10739 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10738 _keys!658) (size!10739 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15021 () Bool)

(declare-fun mapRes!15021 () Bool)

(assert (=> mapIsEmpty!15021 mapRes!15021))

(declare-fun b!375516 () Bool)

(declare-fun e!228765 () Bool)

(assert (=> b!375516 (= e!228765 tp_is_empty!8971)))

(declare-fun b!375517 () Bool)

(declare-fun res!212118 () Bool)

(assert (=> b!375517 (=> (not res!212118) (not e!228769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375517 (= res!212118 (validKeyInArray!0 k!778))))

(declare-fun b!375518 () Bool)

(declare-fun res!212114 () Bool)

(assert (=> b!375518 (=> (not res!212114) (not e!228766))))

(assert (=> b!375518 (= res!212114 (arrayNoDuplicates!0 lt!173992 #b00000000000000000000000000000000 Nil!5871))))

(declare-fun b!375519 () Bool)

(declare-fun e!228768 () Bool)

(assert (=> b!375519 (= e!228768 (and e!228765 mapRes!15021))))

(declare-fun condMapEmpty!15021 () Bool)

(declare-fun mapDefault!15021 () ValueCell!4142)

