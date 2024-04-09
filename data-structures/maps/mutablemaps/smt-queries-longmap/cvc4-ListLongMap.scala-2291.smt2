; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37220 () Bool)

(assert start!37220)

(declare-fun b_free!8339 () Bool)

(declare-fun b_next!8339 () Bool)

(assert (=> start!37220 (= b_free!8339 (not b_next!8339))))

(declare-fun tp!29733 () Bool)

(declare-fun b_and!15599 () Bool)

(assert (=> start!37220 (= tp!29733 b_and!15599)))

(declare-fun b!375876 () Bool)

(declare-fun e!228960 () Bool)

(declare-fun tp_is_empty!8987 () Bool)

(assert (=> b!375876 (= e!228960 tp_is_empty!8987)))

(declare-fun b!375877 () Bool)

(declare-fun e!228958 () Bool)

(declare-fun e!228962 () Bool)

(assert (=> b!375877 (= e!228958 e!228962)))

(declare-fun res!212409 () Bool)

(assert (=> b!375877 (=> (not res!212409) (not e!228962))))

(declare-datatypes ((array!21873 0))(
  ( (array!21874 (arr!10402 (Array (_ BitVec 32) (_ BitVec 64))) (size!10754 (_ BitVec 32))) )
))
(declare-fun lt!174280 () array!21873)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21873 (_ BitVec 32)) Bool)

(assert (=> b!375877 (= res!212409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174280 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21873)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375877 (= lt!174280 (array!21874 (store (arr!10402 _keys!658) i!548 k!778) (size!10754 _keys!658)))))

(declare-fun b!375878 () Bool)

(declare-fun e!228963 () Bool)

(assert (=> b!375878 (= e!228962 (not e!228963))))

(declare-fun res!212415 () Bool)

(assert (=> b!375878 (=> res!212415 e!228963)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375878 (= res!212415 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13087 0))(
  ( (V!13088 (val!4538 Int)) )
))
(declare-datatypes ((ValueCell!4150 0))(
  ( (ValueCellFull!4150 (v!6731 V!13087)) (EmptyCell!4150) )
))
(declare-datatypes ((array!21875 0))(
  ( (array!21876 (arr!10403 (Array (_ BitVec 32) ValueCell!4150)) (size!10755 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21875)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6016 0))(
  ( (tuple2!6017 (_1!3018 (_ BitVec 64)) (_2!3018 V!13087)) )
))
(declare-datatypes ((List!5886 0))(
  ( (Nil!5883) (Cons!5882 (h!6738 tuple2!6016) (t!11044 List!5886)) )
))
(declare-datatypes ((ListLongMap!4943 0))(
  ( (ListLongMap!4944 (toList!2487 List!5886)) )
))
(declare-fun lt!174281 () ListLongMap!4943)

(declare-fun zeroValue!472 () V!13087)

(declare-fun minValue!472 () V!13087)

(declare-fun getCurrentListMap!1926 (array!21873 array!21875 (_ BitVec 32) (_ BitVec 32) V!13087 V!13087 (_ BitVec 32) Int) ListLongMap!4943)

(assert (=> b!375878 (= lt!174281 (getCurrentListMap!1926 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174271 () ListLongMap!4943)

(declare-fun lt!174272 () array!21875)

(assert (=> b!375878 (= lt!174271 (getCurrentListMap!1926 lt!174280 lt!174272 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174283 () ListLongMap!4943)

(declare-fun lt!174273 () ListLongMap!4943)

(assert (=> b!375878 (and (= lt!174283 lt!174273) (= lt!174273 lt!174283))))

(declare-fun lt!174274 () ListLongMap!4943)

(declare-fun lt!174275 () tuple2!6016)

(declare-fun +!828 (ListLongMap!4943 tuple2!6016) ListLongMap!4943)

(assert (=> b!375878 (= lt!174273 (+!828 lt!174274 lt!174275))))

(declare-fun v!373 () V!13087)

(assert (=> b!375878 (= lt!174275 (tuple2!6017 k!778 v!373))))

(declare-datatypes ((Unit!11559 0))(
  ( (Unit!11560) )
))
(declare-fun lt!174279 () Unit!11559)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!77 (array!21873 array!21875 (_ BitVec 32) (_ BitVec 32) V!13087 V!13087 (_ BitVec 32) (_ BitVec 64) V!13087 (_ BitVec 32) Int) Unit!11559)

(assert (=> b!375878 (= lt!174279 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!77 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!744 (array!21873 array!21875 (_ BitVec 32) (_ BitVec 32) V!13087 V!13087 (_ BitVec 32) Int) ListLongMap!4943)

(assert (=> b!375878 (= lt!174283 (getCurrentListMapNoExtraKeys!744 lt!174280 lt!174272 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375878 (= lt!174272 (array!21876 (store (arr!10403 _values!506) i!548 (ValueCellFull!4150 v!373)) (size!10755 _values!506)))))

(assert (=> b!375878 (= lt!174274 (getCurrentListMapNoExtraKeys!744 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375879 () Bool)

(declare-fun res!212417 () Bool)

(assert (=> b!375879 (=> (not res!212417) (not e!228962))))

(declare-datatypes ((List!5887 0))(
  ( (Nil!5884) (Cons!5883 (h!6739 (_ BitVec 64)) (t!11045 List!5887)) )
))
(declare-fun arrayNoDuplicates!0 (array!21873 (_ BitVec 32) List!5887) Bool)

(assert (=> b!375879 (= res!212417 (arrayNoDuplicates!0 lt!174280 #b00000000000000000000000000000000 Nil!5884))))

(declare-fun b!375880 () Bool)

(declare-fun e!228957 () Bool)

(assert (=> b!375880 (= e!228957 tp_is_empty!8987)))

(declare-fun b!375881 () Bool)

(declare-fun e!228959 () Bool)

(assert (=> b!375881 (= e!228963 e!228959)))

(declare-fun res!212416 () Bool)

(assert (=> b!375881 (=> res!212416 e!228959)))

(assert (=> b!375881 (= res!212416 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174276 () ListLongMap!4943)

(assert (=> b!375881 (= lt!174271 lt!174276)))

(declare-fun lt!174282 () tuple2!6016)

(assert (=> b!375881 (= lt!174276 (+!828 lt!174273 lt!174282))))

(declare-fun lt!174277 () ListLongMap!4943)

(assert (=> b!375881 (= lt!174281 lt!174277)))

(assert (=> b!375881 (= lt!174277 (+!828 lt!174274 lt!174282))))

(assert (=> b!375881 (= lt!174271 (+!828 lt!174283 lt!174282))))

(assert (=> b!375881 (= lt!174282 (tuple2!6017 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15045 () Bool)

(declare-fun mapRes!15045 () Bool)

(declare-fun tp!29732 () Bool)

(assert (=> mapNonEmpty!15045 (= mapRes!15045 (and tp!29732 e!228957))))

(declare-fun mapKey!15045 () (_ BitVec 32))

(declare-fun mapValue!15045 () ValueCell!4150)

(declare-fun mapRest!15045 () (Array (_ BitVec 32) ValueCell!4150))

(assert (=> mapNonEmpty!15045 (= (arr!10403 _values!506) (store mapRest!15045 mapKey!15045 mapValue!15045))))

(declare-fun b!375882 () Bool)

(declare-fun res!212412 () Bool)

(assert (=> b!375882 (=> (not res!212412) (not e!228958))))

(assert (=> b!375882 (= res!212412 (or (= (select (arr!10402 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10402 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375883 () Bool)

(declare-fun res!212413 () Bool)

(assert (=> b!375883 (=> (not res!212413) (not e!228958))))

(assert (=> b!375883 (= res!212413 (and (= (size!10755 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10754 _keys!658) (size!10755 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375885 () Bool)

(declare-fun e!228961 () Bool)

(assert (=> b!375885 (= e!228961 (and e!228960 mapRes!15045))))

(declare-fun condMapEmpty!15045 () Bool)

(declare-fun mapDefault!15045 () ValueCell!4150)

