; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37264 () Bool)

(assert start!37264)

(declare-fun b_free!8383 () Bool)

(declare-fun b_next!8383 () Bool)

(assert (=> start!37264 (= b_free!8383 (not b_next!8383))))

(declare-fun tp!29865 () Bool)

(declare-fun b_and!15643 () Bool)

(assert (=> start!37264 (= tp!29865 b_and!15643)))

(declare-fun b!376866 () Bool)

(declare-fun e!229484 () Bool)

(declare-fun e!229486 () Bool)

(assert (=> b!376866 (= e!229484 e!229486)))

(declare-fun res!213198 () Bool)

(assert (=> b!376866 (=> (not res!213198) (not e!229486))))

(declare-datatypes ((array!21961 0))(
  ( (array!21962 (arr!10446 (Array (_ BitVec 32) (_ BitVec 64))) (size!10798 (_ BitVec 32))) )
))
(declare-fun lt!175129 () array!21961)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21961 (_ BitVec 32)) Bool)

(assert (=> b!376866 (= res!213198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175129 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21961)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376866 (= lt!175129 (array!21962 (store (arr!10446 _keys!658) i!548 k!778) (size!10798 _keys!658)))))

(declare-fun b!376867 () Bool)

(declare-fun e!229491 () Bool)

(declare-fun tp_is_empty!9031 () Bool)

(assert (=> b!376867 (= e!229491 tp_is_empty!9031)))

(declare-fun res!213200 () Bool)

(assert (=> start!37264 (=> (not res!213200) (not e!229484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37264 (= res!213200 (validMask!0 mask!970))))

(assert (=> start!37264 e!229484))

(declare-datatypes ((V!13147 0))(
  ( (V!13148 (val!4560 Int)) )
))
(declare-datatypes ((ValueCell!4172 0))(
  ( (ValueCellFull!4172 (v!6753 V!13147)) (EmptyCell!4172) )
))
(declare-datatypes ((array!21963 0))(
  ( (array!21964 (arr!10447 (Array (_ BitVec 32) ValueCell!4172)) (size!10799 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21963)

(declare-fun e!229490 () Bool)

(declare-fun array_inv!7692 (array!21963) Bool)

(assert (=> start!37264 (and (array_inv!7692 _values!506) e!229490)))

(assert (=> start!37264 tp!29865))

(assert (=> start!37264 true))

(assert (=> start!37264 tp_is_empty!9031))

(declare-fun array_inv!7693 (array!21961) Bool)

(assert (=> start!37264 (array_inv!7693 _keys!658)))

(declare-fun b!376868 () Bool)

(declare-fun res!213202 () Bool)

(assert (=> b!376868 (=> (not res!213202) (not e!229484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376868 (= res!213202 (validKeyInArray!0 k!778))))

(declare-fun b!376869 () Bool)

(declare-fun res!213208 () Bool)

(assert (=> b!376869 (=> (not res!213208) (not e!229484))))

(assert (=> b!376869 (= res!213208 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10798 _keys!658))))))

(declare-fun b!376870 () Bool)

(declare-fun e!229485 () Bool)

(assert (=> b!376870 (= e!229485 true)))

(declare-datatypes ((tuple2!6050 0))(
  ( (tuple2!6051 (_1!3035 (_ BitVec 64)) (_2!3035 V!13147)) )
))
(declare-datatypes ((List!5920 0))(
  ( (Nil!5917) (Cons!5916 (h!6772 tuple2!6050) (t!11078 List!5920)) )
))
(declare-datatypes ((ListLongMap!4977 0))(
  ( (ListLongMap!4978 (toList!2504 List!5920)) )
))
(declare-fun lt!175132 () ListLongMap!4977)

(declare-fun lt!175133 () ListLongMap!4977)

(declare-fun lt!175139 () tuple2!6050)

(declare-fun +!845 (ListLongMap!4977 tuple2!6050) ListLongMap!4977)

(assert (=> b!376870 (= lt!175132 (+!845 lt!175133 lt!175139))))

(declare-fun lt!175140 () ListLongMap!4977)

(declare-fun v!373 () V!13147)

(declare-datatypes ((Unit!11591 0))(
  ( (Unit!11592) )
))
(declare-fun lt!175130 () Unit!11591)

(declare-fun zeroValue!472 () V!13147)

(declare-fun addCommutativeForDiffKeys!267 (ListLongMap!4977 (_ BitVec 64) V!13147 (_ BitVec 64) V!13147) Unit!11591)

(assert (=> b!376870 (= lt!175130 (addCommutativeForDiffKeys!267 lt!175140 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376871 () Bool)

(declare-fun res!213204 () Bool)

(assert (=> b!376871 (=> (not res!213204) (not e!229484))))

(declare-fun arrayContainsKey!0 (array!21961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376871 (= res!213204 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376872 () Bool)

(declare-fun res!213203 () Bool)

(assert (=> b!376872 (=> (not res!213203) (not e!229484))))

(declare-datatypes ((List!5921 0))(
  ( (Nil!5918) (Cons!5917 (h!6773 (_ BitVec 64)) (t!11079 List!5921)) )
))
(declare-fun arrayNoDuplicates!0 (array!21961 (_ BitVec 32) List!5921) Bool)

(assert (=> b!376872 (= res!213203 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5918))))

(declare-fun b!376873 () Bool)

(declare-fun e!229488 () Bool)

(assert (=> b!376873 (= e!229486 (not e!229488))))

(declare-fun res!213206 () Bool)

(assert (=> b!376873 (=> res!213206 e!229488)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376873 (= res!213206 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!175136 () ListLongMap!4977)

(declare-fun minValue!472 () V!13147)

(declare-fun getCurrentListMap!1942 (array!21961 array!21963 (_ BitVec 32) (_ BitVec 32) V!13147 V!13147 (_ BitVec 32) Int) ListLongMap!4977)

(assert (=> b!376873 (= lt!175136 (getCurrentListMap!1942 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175135 () array!21963)

(declare-fun lt!175131 () ListLongMap!4977)

(assert (=> b!376873 (= lt!175131 (getCurrentListMap!1942 lt!175129 lt!175135 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175138 () ListLongMap!4977)

(declare-fun lt!175134 () ListLongMap!4977)

(assert (=> b!376873 (and (= lt!175138 lt!175134) (= lt!175134 lt!175138))))

(assert (=> b!376873 (= lt!175134 (+!845 lt!175140 lt!175139))))

(assert (=> b!376873 (= lt!175139 (tuple2!6051 k!778 v!373))))

(declare-fun lt!175141 () Unit!11591)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!93 (array!21961 array!21963 (_ BitVec 32) (_ BitVec 32) V!13147 V!13147 (_ BitVec 32) (_ BitVec 64) V!13147 (_ BitVec 32) Int) Unit!11591)

(assert (=> b!376873 (= lt!175141 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!93 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!760 (array!21961 array!21963 (_ BitVec 32) (_ BitVec 32) V!13147 V!13147 (_ BitVec 32) Int) ListLongMap!4977)

(assert (=> b!376873 (= lt!175138 (getCurrentListMapNoExtraKeys!760 lt!175129 lt!175135 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376873 (= lt!175135 (array!21964 (store (arr!10447 _values!506) i!548 (ValueCellFull!4172 v!373)) (size!10799 _values!506)))))

(assert (=> b!376873 (= lt!175140 (getCurrentListMapNoExtraKeys!760 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376874 () Bool)

(declare-fun e!229489 () Bool)

(assert (=> b!376874 (= e!229489 tp_is_empty!9031)))

(declare-fun b!376875 () Bool)

(declare-fun res!213209 () Bool)

(assert (=> b!376875 (=> (not res!213209) (not e!229484))))

(assert (=> b!376875 (= res!213209 (or (= (select (arr!10446 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10446 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376876 () Bool)

(declare-fun res!213199 () Bool)

(assert (=> b!376876 (=> (not res!213199) (not e!229484))))

(assert (=> b!376876 (= res!213199 (and (= (size!10799 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10798 _keys!658) (size!10799 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376877 () Bool)

(declare-fun mapRes!15111 () Bool)

(assert (=> b!376877 (= e!229490 (and e!229491 mapRes!15111))))

(declare-fun condMapEmpty!15111 () Bool)

(declare-fun mapDefault!15111 () ValueCell!4172)

