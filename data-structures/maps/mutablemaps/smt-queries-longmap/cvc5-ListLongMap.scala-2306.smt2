; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37306 () Bool)

(assert start!37306)

(declare-fun b_free!8425 () Bool)

(declare-fun b_next!8425 () Bool)

(assert (=> start!37306 (= b_free!8425 (not b_next!8425))))

(declare-fun tp!29991 () Bool)

(declare-fun b_and!15685 () Bool)

(assert (=> start!37306 (= tp!29991 b_and!15685)))

(declare-fun b!377811 () Bool)

(declare-fun res!213956 () Bool)

(declare-fun e!229995 () Bool)

(assert (=> b!377811 (=> (not res!213956) (not e!229995))))

(declare-datatypes ((array!22045 0))(
  ( (array!22046 (arr!10488 (Array (_ BitVec 32) (_ BitVec 64))) (size!10840 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22045)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377811 (= res!213956 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15174 () Bool)

(declare-fun mapRes!15174 () Bool)

(declare-fun tp!29990 () Bool)

(declare-fun e!229988 () Bool)

(assert (=> mapNonEmpty!15174 (= mapRes!15174 (and tp!29990 e!229988))))

(declare-datatypes ((V!13203 0))(
  ( (V!13204 (val!4581 Int)) )
))
(declare-datatypes ((ValueCell!4193 0))(
  ( (ValueCellFull!4193 (v!6774 V!13203)) (EmptyCell!4193) )
))
(declare-fun mapValue!15174 () ValueCell!4193)

(declare-datatypes ((array!22047 0))(
  ( (array!22048 (arr!10489 (Array (_ BitVec 32) ValueCell!4193)) (size!10841 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22047)

(declare-fun mapKey!15174 () (_ BitVec 32))

(declare-fun mapRest!15174 () (Array (_ BitVec 32) ValueCell!4193))

(assert (=> mapNonEmpty!15174 (= (arr!10489 _values!506) (store mapRest!15174 mapKey!15174 mapValue!15174))))

(declare-fun b!377812 () Bool)

(declare-fun res!213955 () Bool)

(assert (=> b!377812 (=> (not res!213955) (not e!229995))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!377812 (= res!213955 (and (= (size!10841 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10840 _keys!658) (size!10841 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377814 () Bool)

(declare-fun res!213959 () Bool)

(assert (=> b!377814 (=> (not res!213959) (not e!229995))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377814 (= res!213959 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10840 _keys!658))))))

(declare-fun b!377815 () Bool)

(declare-fun e!229989 () Bool)

(declare-fun e!229991 () Bool)

(assert (=> b!377815 (= e!229989 (not e!229991))))

(declare-fun res!213965 () Bool)

(assert (=> b!377815 (=> res!213965 e!229991)))

(assert (=> b!377815 (= res!213965 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6086 0))(
  ( (tuple2!6087 (_1!3053 (_ BitVec 64)) (_2!3053 V!13203)) )
))
(declare-datatypes ((List!5957 0))(
  ( (Nil!5954) (Cons!5953 (h!6809 tuple2!6086) (t!11115 List!5957)) )
))
(declare-datatypes ((ListLongMap!5013 0))(
  ( (ListLongMap!5014 (toList!2522 List!5957)) )
))
(declare-fun lt!175950 () ListLongMap!5013)

(declare-fun zeroValue!472 () V!13203)

(declare-fun minValue!472 () V!13203)

(declare-fun getCurrentListMap!1957 (array!22045 array!22047 (_ BitVec 32) (_ BitVec 32) V!13203 V!13203 (_ BitVec 32) Int) ListLongMap!5013)

(assert (=> b!377815 (= lt!175950 (getCurrentListMap!1957 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175959 () ListLongMap!5013)

(declare-fun lt!175951 () array!22047)

(declare-fun lt!175955 () array!22045)

(assert (=> b!377815 (= lt!175959 (getCurrentListMap!1957 lt!175955 lt!175951 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175948 () ListLongMap!5013)

(declare-fun lt!175952 () ListLongMap!5013)

(assert (=> b!377815 (and (= lt!175948 lt!175952) (= lt!175952 lt!175948))))

(declare-fun lt!175953 () ListLongMap!5013)

(declare-fun lt!175957 () tuple2!6086)

(declare-fun +!863 (ListLongMap!5013 tuple2!6086) ListLongMap!5013)

(assert (=> b!377815 (= lt!175952 (+!863 lt!175953 lt!175957))))

(declare-fun v!373 () V!13203)

(assert (=> b!377815 (= lt!175957 (tuple2!6087 k!778 v!373))))

(declare-datatypes ((Unit!11625 0))(
  ( (Unit!11626) )
))
(declare-fun lt!175956 () Unit!11625)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!108 (array!22045 array!22047 (_ BitVec 32) (_ BitVec 32) V!13203 V!13203 (_ BitVec 32) (_ BitVec 64) V!13203 (_ BitVec 32) Int) Unit!11625)

(assert (=> b!377815 (= lt!175956 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!108 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!775 (array!22045 array!22047 (_ BitVec 32) (_ BitVec 32) V!13203 V!13203 (_ BitVec 32) Int) ListLongMap!5013)

(assert (=> b!377815 (= lt!175948 (getCurrentListMapNoExtraKeys!775 lt!175955 lt!175951 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377815 (= lt!175951 (array!22048 (store (arr!10489 _values!506) i!548 (ValueCellFull!4193 v!373)) (size!10841 _values!506)))))

(assert (=> b!377815 (= lt!175953 (getCurrentListMapNoExtraKeys!775 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15174 () Bool)

(assert (=> mapIsEmpty!15174 mapRes!15174))

(declare-fun b!377816 () Bool)

(declare-fun res!213960 () Bool)

(assert (=> b!377816 (=> (not res!213960) (not e!229989))))

(declare-datatypes ((List!5958 0))(
  ( (Nil!5955) (Cons!5954 (h!6810 (_ BitVec 64)) (t!11116 List!5958)) )
))
(declare-fun arrayNoDuplicates!0 (array!22045 (_ BitVec 32) List!5958) Bool)

(assert (=> b!377816 (= res!213960 (arrayNoDuplicates!0 lt!175955 #b00000000000000000000000000000000 Nil!5955))))

(declare-fun b!377817 () Bool)

(declare-fun e!229992 () Bool)

(assert (=> b!377817 (= e!229991 e!229992)))

(declare-fun res!213964 () Bool)

(assert (=> b!377817 (=> res!213964 e!229992)))

(assert (=> b!377817 (= res!213964 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175949 () ListLongMap!5013)

(assert (=> b!377817 (= lt!175959 lt!175949)))

(declare-fun lt!175958 () tuple2!6086)

(assert (=> b!377817 (= lt!175949 (+!863 lt!175952 lt!175958))))

(declare-fun lt!175960 () ListLongMap!5013)

(assert (=> b!377817 (= lt!175950 lt!175960)))

(assert (=> b!377817 (= lt!175960 (+!863 lt!175953 lt!175958))))

(assert (=> b!377817 (= lt!175959 (+!863 lt!175948 lt!175958))))

(assert (=> b!377817 (= lt!175958 (tuple2!6087 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377818 () Bool)

(declare-fun res!213963 () Bool)

(assert (=> b!377818 (=> (not res!213963) (not e!229995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377818 (= res!213963 (validKeyInArray!0 k!778))))

(declare-fun b!377819 () Bool)

(declare-fun tp_is_empty!9073 () Bool)

(assert (=> b!377819 (= e!229988 tp_is_empty!9073)))

(declare-fun b!377820 () Bool)

(assert (=> b!377820 (= e!229995 e!229989)))

(declare-fun res!213958 () Bool)

(assert (=> b!377820 (=> (not res!213958) (not e!229989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22045 (_ BitVec 32)) Bool)

(assert (=> b!377820 (= res!213958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175955 mask!970))))

(assert (=> b!377820 (= lt!175955 (array!22046 (store (arr!10488 _keys!658) i!548 k!778) (size!10840 _keys!658)))))

(declare-fun b!377821 () Bool)

(declare-fun res!213961 () Bool)

(assert (=> b!377821 (=> (not res!213961) (not e!229995))))

(assert (=> b!377821 (= res!213961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377822 () Bool)

(declare-fun e!229993 () Bool)

(assert (=> b!377822 (= e!229993 tp_is_empty!9073)))

(declare-fun b!377823 () Bool)

(declare-fun res!213957 () Bool)

(assert (=> b!377823 (=> (not res!213957) (not e!229995))))

(assert (=> b!377823 (= res!213957 (or (= (select (arr!10488 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10488 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!213962 () Bool)

(assert (=> start!37306 (=> (not res!213962) (not e!229995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37306 (= res!213962 (validMask!0 mask!970))))

(assert (=> start!37306 e!229995))

(declare-fun e!229994 () Bool)

(declare-fun array_inv!7718 (array!22047) Bool)

(assert (=> start!37306 (and (array_inv!7718 _values!506) e!229994)))

(assert (=> start!37306 tp!29991))

(assert (=> start!37306 true))

(assert (=> start!37306 tp_is_empty!9073))

(declare-fun array_inv!7719 (array!22045) Bool)

(assert (=> start!37306 (array_inv!7719 _keys!658)))

(declare-fun b!377813 () Bool)

(assert (=> b!377813 (= e!229994 (and e!229993 mapRes!15174))))

(declare-fun condMapEmpty!15174 () Bool)

(declare-fun mapDefault!15174 () ValueCell!4193)

