; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38152 () Bool)

(assert start!38152)

(declare-fun b_free!9025 () Bool)

(declare-fun b_next!9025 () Bool)

(assert (=> start!38152 (= b_free!9025 (not b_next!9025))))

(declare-fun tp!31856 () Bool)

(declare-fun b_and!16405 () Bool)

(assert (=> start!38152 (= tp!31856 b_and!16405)))

(declare-fun b!392879 () Bool)

(declare-fun e!237913 () Bool)

(declare-fun e!237911 () Bool)

(assert (=> b!392879 (= e!237913 e!237911)))

(declare-fun res!225097 () Bool)

(assert (=> b!392879 (=> res!225097 e!237911)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!392879 (= res!225097 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!14035 0))(
  ( (V!14036 (val!4893 Int)) )
))
(declare-datatypes ((tuple2!6534 0))(
  ( (tuple2!6535 (_1!3277 (_ BitVec 64)) (_2!3277 V!14035)) )
))
(declare-datatypes ((List!6416 0))(
  ( (Nil!6413) (Cons!6412 (h!7268 tuple2!6534) (t!11594 List!6416)) )
))
(declare-datatypes ((ListLongMap!5461 0))(
  ( (ListLongMap!5462 (toList!2746 List!6416)) )
))
(declare-fun lt!185876 () ListLongMap!5461)

(declare-fun lt!185881 () ListLongMap!5461)

(assert (=> b!392879 (= lt!185876 lt!185881)))

(declare-fun lt!185872 () ListLongMap!5461)

(declare-fun lt!185874 () tuple2!6534)

(declare-fun +!1044 (ListLongMap!5461 tuple2!6534) ListLongMap!5461)

(assert (=> b!392879 (= lt!185881 (+!1044 lt!185872 lt!185874))))

(declare-fun lt!185873 () ListLongMap!5461)

(declare-fun lt!185875 () ListLongMap!5461)

(assert (=> b!392879 (= lt!185873 lt!185875)))

(declare-fun lt!185877 () ListLongMap!5461)

(assert (=> b!392879 (= lt!185875 (+!1044 lt!185877 lt!185874))))

(declare-fun lt!185870 () ListLongMap!5461)

(assert (=> b!392879 (= lt!185873 (+!1044 lt!185870 lt!185874))))

(declare-fun minValue!472 () V!14035)

(assert (=> b!392879 (= lt!185874 (tuple2!6535 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392880 () Bool)

(declare-fun e!237910 () Bool)

(declare-fun tp_is_empty!9697 () Bool)

(assert (=> b!392880 (= e!237910 tp_is_empty!9697)))

(declare-fun b!392881 () Bool)

(declare-fun res!225096 () Bool)

(declare-fun e!237912 () Bool)

(assert (=> b!392881 (=> (not res!225096) (not e!237912))))

(declare-datatypes ((array!23275 0))(
  ( (array!23276 (arr!11093 (Array (_ BitVec 32) (_ BitVec 64))) (size!11445 (_ BitVec 32))) )
))
(declare-fun lt!185880 () array!23275)

(declare-datatypes ((List!6417 0))(
  ( (Nil!6414) (Cons!6413 (h!7269 (_ BitVec 64)) (t!11595 List!6417)) )
))
(declare-fun arrayNoDuplicates!0 (array!23275 (_ BitVec 32) List!6417) Bool)

(assert (=> b!392881 (= res!225096 (arrayNoDuplicates!0 lt!185880 #b00000000000000000000000000000000 Nil!6414))))

(declare-fun b!392882 () Bool)

(declare-fun res!225098 () Bool)

(declare-fun e!237907 () Bool)

(assert (=> b!392882 (=> (not res!225098) (not e!237907))))

(declare-fun _keys!658 () array!23275)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392882 (= res!225098 (or (= (select (arr!11093 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11093 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392883 () Bool)

(declare-fun res!225095 () Bool)

(assert (=> b!392883 (=> (not res!225095) (not e!237907))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23275 (_ BitVec 32)) Bool)

(assert (=> b!392883 (= res!225095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392884 () Bool)

(declare-fun res!225105 () Bool)

(assert (=> b!392884 (=> (not res!225105) (not e!237907))))

(assert (=> b!392884 (= res!225105 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11445 _keys!658))))))

(declare-fun mapNonEmpty!16140 () Bool)

(declare-fun mapRes!16140 () Bool)

(declare-fun tp!31857 () Bool)

(declare-fun e!237908 () Bool)

(assert (=> mapNonEmpty!16140 (= mapRes!16140 (and tp!31857 e!237908))))

(declare-datatypes ((ValueCell!4505 0))(
  ( (ValueCellFull!4505 (v!7126 V!14035)) (EmptyCell!4505) )
))
(declare-datatypes ((array!23277 0))(
  ( (array!23278 (arr!11094 (Array (_ BitVec 32) ValueCell!4505)) (size!11446 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23277)

(declare-fun mapRest!16140 () (Array (_ BitVec 32) ValueCell!4505))

(declare-fun mapValue!16140 () ValueCell!4505)

(declare-fun mapKey!16140 () (_ BitVec 32))

(assert (=> mapNonEmpty!16140 (= (arr!11094 _values!506) (store mapRest!16140 mapKey!16140 mapValue!16140))))

(declare-fun b!392885 () Bool)

(assert (=> b!392885 (= e!237912 (not e!237913))))

(declare-fun res!225103 () Bool)

(assert (=> b!392885 (=> res!225103 e!237913)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392885 (= res!225103 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14035)

(declare-fun getCurrentListMap!2108 (array!23275 array!23277 (_ BitVec 32) (_ BitVec 32) V!14035 V!14035 (_ BitVec 32) Int) ListLongMap!5461)

(assert (=> b!392885 (= lt!185876 (getCurrentListMap!2108 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185882 () array!23277)

(assert (=> b!392885 (= lt!185873 (getCurrentListMap!2108 lt!185880 lt!185882 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392885 (and (= lt!185870 lt!185877) (= lt!185877 lt!185870))))

(declare-fun lt!185879 () tuple2!6534)

(assert (=> b!392885 (= lt!185877 (+!1044 lt!185872 lt!185879))))

(declare-fun v!373 () V!14035)

(assert (=> b!392885 (= lt!185879 (tuple2!6535 k!778 v!373))))

(declare-datatypes ((Unit!11983 0))(
  ( (Unit!11984) )
))
(declare-fun lt!185871 () Unit!11983)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!265 (array!23275 array!23277 (_ BitVec 32) (_ BitVec 32) V!14035 V!14035 (_ BitVec 32) (_ BitVec 64) V!14035 (_ BitVec 32) Int) Unit!11983)

(assert (=> b!392885 (= lt!185871 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!265 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!970 (array!23275 array!23277 (_ BitVec 32) (_ BitVec 32) V!14035 V!14035 (_ BitVec 32) Int) ListLongMap!5461)

(assert (=> b!392885 (= lt!185870 (getCurrentListMapNoExtraKeys!970 lt!185880 lt!185882 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392885 (= lt!185882 (array!23278 (store (arr!11094 _values!506) i!548 (ValueCellFull!4505 v!373)) (size!11446 _values!506)))))

(assert (=> b!392885 (= lt!185872 (getCurrentListMapNoExtraKeys!970 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392886 () Bool)

(declare-fun res!225100 () Bool)

(assert (=> b!392886 (=> (not res!225100) (not e!237907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392886 (= res!225100 (validKeyInArray!0 k!778))))

(declare-fun b!392887 () Bool)

(declare-fun res!225101 () Bool)

(assert (=> b!392887 (=> (not res!225101) (not e!237907))))

(assert (=> b!392887 (= res!225101 (and (= (size!11446 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11445 _keys!658) (size!11446 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392888 () Bool)

(declare-fun e!237909 () Bool)

(assert (=> b!392888 (= e!237909 (and e!237910 mapRes!16140))))

(declare-fun condMapEmpty!16140 () Bool)

(declare-fun mapDefault!16140 () ValueCell!4505)

