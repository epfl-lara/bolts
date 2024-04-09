; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40928 () Bool)

(assert start!40928)

(declare-fun b_free!10855 () Bool)

(declare-fun b_next!10855 () Bool)

(assert (=> start!40928 (= b_free!10855 (not b_next!10855))))

(declare-fun tp!38391 () Bool)

(declare-fun b_and!19015 () Bool)

(assert (=> start!40928 (= tp!38391 b_and!19015)))

(declare-fun b!454667 () Bool)

(declare-fun e!265943 () Bool)

(declare-fun tp_is_empty!12193 () Bool)

(assert (=> b!454667 (= e!265943 tp_is_empty!12193)))

(declare-fun b!454668 () Bool)

(declare-fun res!271065 () Bool)

(declare-fun e!265946 () Bool)

(assert (=> b!454668 (=> (not res!271065) (not e!265946))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454668 (= res!271065 (bvsle from!863 i!563))))

(declare-fun b!454669 () Bool)

(declare-fun res!271063 () Bool)

(assert (=> b!454669 (=> (not res!271063) (not e!265946))))

(declare-datatypes ((array!28155 0))(
  ( (array!28156 (arr!13518 (Array (_ BitVec 32) (_ BitVec 64))) (size!13870 (_ BitVec 32))) )
))
(declare-fun lt!206183 () array!28155)

(declare-datatypes ((List!8144 0))(
  ( (Nil!8141) (Cons!8140 (h!8996 (_ BitVec 64)) (t!13980 List!8144)) )
))
(declare-fun arrayNoDuplicates!0 (array!28155 (_ BitVec 32) List!8144) Bool)

(assert (=> b!454669 (= res!271063 (arrayNoDuplicates!0 lt!206183 #b00000000000000000000000000000000 Nil!8141))))

(declare-fun b!454670 () Bool)

(declare-fun e!265942 () Bool)

(assert (=> b!454670 (= e!265942 e!265946)))

(declare-fun res!271059 () Bool)

(assert (=> b!454670 (=> (not res!271059) (not e!265946))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28155 (_ BitVec 32)) Bool)

(assert (=> b!454670 (= res!271059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206183 mask!1025))))

(declare-fun _keys!709 () array!28155)

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!454670 (= lt!206183 (array!28156 (store (arr!13518 _keys!709) i!563 k!794) (size!13870 _keys!709)))))

(declare-fun b!454671 () Bool)

(assert (=> b!454671 (= e!265946 false)))

(declare-datatypes ((V!17363 0))(
  ( (V!17364 (val!6141 Int)) )
))
(declare-fun minValue!515 () V!17363)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5753 0))(
  ( (ValueCellFull!5753 (v!8403 V!17363)) (EmptyCell!5753) )
))
(declare-datatypes ((array!28157 0))(
  ( (array!28158 (arr!13519 (Array (_ BitVec 32) ValueCell!5753)) (size!13871 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28157)

(declare-fun zeroValue!515 () V!17363)

(declare-datatypes ((tuple2!8038 0))(
  ( (tuple2!8039 (_1!4029 (_ BitVec 64)) (_2!4029 V!17363)) )
))
(declare-datatypes ((List!8145 0))(
  ( (Nil!8142) (Cons!8141 (h!8997 tuple2!8038) (t!13981 List!8145)) )
))
(declare-datatypes ((ListLongMap!6965 0))(
  ( (ListLongMap!6966 (toList!3498 List!8145)) )
))
(declare-fun lt!206184 () ListLongMap!6965)

(declare-fun v!412 () V!17363)

(declare-fun getCurrentListMapNoExtraKeys!1674 (array!28155 array!28157 (_ BitVec 32) (_ BitVec 32) V!17363 V!17363 (_ BitVec 32) Int) ListLongMap!6965)

(assert (=> b!454671 (= lt!206184 (getCurrentListMapNoExtraKeys!1674 lt!206183 (array!28158 (store (arr!13519 _values!549) i!563 (ValueCellFull!5753 v!412)) (size!13871 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206182 () ListLongMap!6965)

(assert (=> b!454671 (= lt!206182 (getCurrentListMapNoExtraKeys!1674 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454672 () Bool)

(declare-fun res!271064 () Bool)

(assert (=> b!454672 (=> (not res!271064) (not e!265942))))

(assert (=> b!454672 (= res!271064 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8141))))

(declare-fun b!454673 () Bool)

(declare-fun res!271069 () Bool)

(assert (=> b!454673 (=> (not res!271069) (not e!265942))))

(assert (=> b!454673 (= res!271069 (or (= (select (arr!13518 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13518 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454674 () Bool)

(declare-fun e!265944 () Bool)

(assert (=> b!454674 (= e!265944 tp_is_empty!12193)))

(declare-fun b!454675 () Bool)

(declare-fun res!271060 () Bool)

(assert (=> b!454675 (=> (not res!271060) (not e!265942))))

(assert (=> b!454675 (= res!271060 (and (= (size!13871 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13870 _keys!709) (size!13871 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454676 () Bool)

(declare-fun res!271062 () Bool)

(assert (=> b!454676 (=> (not res!271062) (not e!265942))))

(assert (=> b!454676 (= res!271062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19930 () Bool)

(declare-fun mapRes!19930 () Bool)

(assert (=> mapIsEmpty!19930 mapRes!19930))

(declare-fun b!454677 () Bool)

(declare-fun res!271070 () Bool)

(assert (=> b!454677 (=> (not res!271070) (not e!265942))))

(assert (=> b!454677 (= res!271070 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13870 _keys!709))))))

(declare-fun mapNonEmpty!19930 () Bool)

(declare-fun tp!38392 () Bool)

(assert (=> mapNonEmpty!19930 (= mapRes!19930 (and tp!38392 e!265944))))

(declare-fun mapRest!19930 () (Array (_ BitVec 32) ValueCell!5753))

(declare-fun mapValue!19930 () ValueCell!5753)

(declare-fun mapKey!19930 () (_ BitVec 32))

(assert (=> mapNonEmpty!19930 (= (arr!13519 _values!549) (store mapRest!19930 mapKey!19930 mapValue!19930))))

(declare-fun b!454678 () Bool)

(declare-fun e!265941 () Bool)

(assert (=> b!454678 (= e!265941 (and e!265943 mapRes!19930))))

(declare-fun condMapEmpty!19930 () Bool)

(declare-fun mapDefault!19930 () ValueCell!5753)

