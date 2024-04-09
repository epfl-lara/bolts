; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37304 () Bool)

(assert start!37304)

(declare-fun b_free!8423 () Bool)

(declare-fun b_next!8423 () Bool)

(assert (=> start!37304 (= b_free!8423 (not b_next!8423))))

(declare-fun tp!29984 () Bool)

(declare-fun b_and!15683 () Bool)

(assert (=> start!37304 (= tp!29984 b_and!15683)))

(declare-fun b!377766 () Bool)

(declare-fun e!229964 () Bool)

(declare-fun tp_is_empty!9071 () Bool)

(assert (=> b!377766 (= e!229964 tp_is_empty!9071)))

(declare-fun b!377767 () Bool)

(declare-fun e!229971 () Bool)

(assert (=> b!377767 (= e!229971 tp_is_empty!9071)))

(declare-fun b!377768 () Bool)

(declare-fun res!213925 () Bool)

(declare-fun e!229967 () Bool)

(assert (=> b!377768 (=> (not res!213925) (not e!229967))))

(declare-datatypes ((array!22041 0))(
  ( (array!22042 (arr!10486 (Array (_ BitVec 32) (_ BitVec 64))) (size!10838 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22041)

(declare-datatypes ((List!5955 0))(
  ( (Nil!5952) (Cons!5951 (h!6807 (_ BitVec 64)) (t!11113 List!5955)) )
))
(declare-fun arrayNoDuplicates!0 (array!22041 (_ BitVec 32) List!5955) Bool)

(assert (=> b!377768 (= res!213925 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5952))))

(declare-fun mapNonEmpty!15171 () Bool)

(declare-fun mapRes!15171 () Bool)

(declare-fun tp!29985 () Bool)

(assert (=> mapNonEmpty!15171 (= mapRes!15171 (and tp!29985 e!229964))))

(declare-datatypes ((V!13199 0))(
  ( (V!13200 (val!4580 Int)) )
))
(declare-datatypes ((ValueCell!4192 0))(
  ( (ValueCellFull!4192 (v!6773 V!13199)) (EmptyCell!4192) )
))
(declare-datatypes ((array!22043 0))(
  ( (array!22044 (arr!10487 (Array (_ BitVec 32) ValueCell!4192)) (size!10839 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22043)

(declare-fun mapValue!15171 () ValueCell!4192)

(declare-fun mapKey!15171 () (_ BitVec 32))

(declare-fun mapRest!15171 () (Array (_ BitVec 32) ValueCell!4192))

(assert (=> mapNonEmpty!15171 (= (arr!10487 _values!506) (store mapRest!15171 mapKey!15171 mapValue!15171))))

(declare-fun b!377769 () Bool)

(declare-fun e!229970 () Bool)

(declare-fun e!229966 () Bool)

(assert (=> b!377769 (= e!229970 e!229966)))

(declare-fun res!213919 () Bool)

(assert (=> b!377769 (=> res!213919 e!229966)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!377769 (= res!213919 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6084 0))(
  ( (tuple2!6085 (_1!3052 (_ BitVec 64)) (_2!3052 V!13199)) )
))
(declare-datatypes ((List!5956 0))(
  ( (Nil!5953) (Cons!5952 (h!6808 tuple2!6084) (t!11114 List!5956)) )
))
(declare-datatypes ((ListLongMap!5011 0))(
  ( (ListLongMap!5012 (toList!2521 List!5956)) )
))
(declare-fun lt!175912 () ListLongMap!5011)

(declare-fun lt!175914 () ListLongMap!5011)

(assert (=> b!377769 (= lt!175912 lt!175914)))

(declare-fun lt!175921 () ListLongMap!5011)

(declare-fun lt!175909 () tuple2!6084)

(declare-fun +!862 (ListLongMap!5011 tuple2!6084) ListLongMap!5011)

(assert (=> b!377769 (= lt!175914 (+!862 lt!175921 lt!175909))))

(declare-fun lt!175917 () ListLongMap!5011)

(declare-fun lt!175916 () ListLongMap!5011)

(assert (=> b!377769 (= lt!175917 lt!175916)))

(declare-fun lt!175915 () ListLongMap!5011)

(assert (=> b!377769 (= lt!175916 (+!862 lt!175915 lt!175909))))

(declare-fun lt!175910 () ListLongMap!5011)

(assert (=> b!377769 (= lt!175912 (+!862 lt!175910 lt!175909))))

(declare-fun zeroValue!472 () V!13199)

(assert (=> b!377769 (= lt!175909 (tuple2!6085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377770 () Bool)

(declare-fun res!213918 () Bool)

(assert (=> b!377770 (=> (not res!213918) (not e!229967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377770 (= res!213918 (validKeyInArray!0 k!778))))

(declare-fun b!377771 () Bool)

(declare-fun res!213922 () Bool)

(assert (=> b!377771 (=> (not res!213922) (not e!229967))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377771 (= res!213922 (or (= (select (arr!10486 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10486 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377772 () Bool)

(declare-fun e!229969 () Bool)

(assert (=> b!377772 (= e!229967 e!229969)))

(declare-fun res!213927 () Bool)

(assert (=> b!377772 (=> (not res!213927) (not e!229969))))

(declare-fun lt!175913 () array!22041)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22041 (_ BitVec 32)) Bool)

(assert (=> b!377772 (= res!213927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175913 mask!970))))

(assert (=> b!377772 (= lt!175913 (array!22042 (store (arr!10486 _keys!658) i!548 k!778) (size!10838 _keys!658)))))

(declare-fun b!377774 () Bool)

(declare-fun res!213924 () Bool)

(assert (=> b!377774 (=> (not res!213924) (not e!229967))))

(assert (=> b!377774 (= res!213924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377775 () Bool)

(declare-fun res!213921 () Bool)

(assert (=> b!377775 (=> (not res!213921) (not e!229967))))

(declare-fun arrayContainsKey!0 (array!22041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377775 (= res!213921 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377776 () Bool)

(assert (=> b!377776 (= e!229969 (not e!229970))))

(declare-fun res!213928 () Bool)

(assert (=> b!377776 (=> res!213928 e!229970)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377776 (= res!213928 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13199)

(declare-fun getCurrentListMap!1956 (array!22041 array!22043 (_ BitVec 32) (_ BitVec 32) V!13199 V!13199 (_ BitVec 32) Int) ListLongMap!5011)

(assert (=> b!377776 (= lt!175917 (getCurrentListMap!1956 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175918 () array!22043)

(assert (=> b!377776 (= lt!175912 (getCurrentListMap!1956 lt!175913 lt!175918 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377776 (and (= lt!175910 lt!175921) (= lt!175921 lt!175910))))

(declare-fun lt!175919 () tuple2!6084)

(assert (=> b!377776 (= lt!175921 (+!862 lt!175915 lt!175919))))

(declare-fun v!373 () V!13199)

(assert (=> b!377776 (= lt!175919 (tuple2!6085 k!778 v!373))))

(declare-datatypes ((Unit!11623 0))(
  ( (Unit!11624) )
))
(declare-fun lt!175911 () Unit!11623)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!107 (array!22041 array!22043 (_ BitVec 32) (_ BitVec 32) V!13199 V!13199 (_ BitVec 32) (_ BitVec 64) V!13199 (_ BitVec 32) Int) Unit!11623)

(assert (=> b!377776 (= lt!175911 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!107 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!774 (array!22041 array!22043 (_ BitVec 32) (_ BitVec 32) V!13199 V!13199 (_ BitVec 32) Int) ListLongMap!5011)

(assert (=> b!377776 (= lt!175910 (getCurrentListMapNoExtraKeys!774 lt!175913 lt!175918 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377776 (= lt!175918 (array!22044 (store (arr!10487 _values!506) i!548 (ValueCellFull!4192 v!373)) (size!10839 _values!506)))))

(assert (=> b!377776 (= lt!175915 (getCurrentListMapNoExtraKeys!774 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377777 () Bool)

(declare-fun res!213929 () Bool)

(assert (=> b!377777 (=> (not res!213929) (not e!229967))))

(assert (=> b!377777 (= res!213929 (and (= (size!10839 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10838 _keys!658) (size!10839 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377778 () Bool)

(declare-fun res!213923 () Bool)

(assert (=> b!377778 (=> (not res!213923) (not e!229967))))

(assert (=> b!377778 (= res!213923 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10838 _keys!658))))))

(declare-fun b!377779 () Bool)

(declare-fun e!229965 () Bool)

(assert (=> b!377779 (= e!229965 (and e!229971 mapRes!15171))))

(declare-fun condMapEmpty!15171 () Bool)

(declare-fun mapDefault!15171 () ValueCell!4192)

