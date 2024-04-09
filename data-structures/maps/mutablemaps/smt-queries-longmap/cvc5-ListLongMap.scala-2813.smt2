; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40796 () Bool)

(assert start!40796)

(declare-fun b_free!10777 () Bool)

(declare-fun b_next!10777 () Bool)

(assert (=> start!40796 (= b_free!10777 (not b_next!10777))))

(declare-fun tp!38154 () Bool)

(declare-fun b_and!18859 () Bool)

(assert (=> start!40796 (= tp!38154 b_and!18859)))

(declare-fun b!452099 () Bool)

(declare-fun e!264740 () Bool)

(declare-fun e!264741 () Bool)

(assert (=> b!452099 (= e!264740 e!264741)))

(declare-fun res!269345 () Bool)

(assert (=> b!452099 (=> (not res!269345) (not e!264741))))

(declare-datatypes ((array!27999 0))(
  ( (array!28000 (arr!13441 (Array (_ BitVec 32) (_ BitVec 64))) (size!13793 (_ BitVec 32))) )
))
(declare-fun lt!205128 () array!27999)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27999 (_ BitVec 32)) Bool)

(assert (=> b!452099 (= res!269345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205128 mask!1025))))

(declare-fun _keys!709 () array!27999)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452099 (= lt!205128 (array!28000 (store (arr!13441 _keys!709) i!563 k!794) (size!13793 _keys!709)))))

(declare-fun b!452100 () Bool)

(declare-fun e!264739 () Bool)

(assert (=> b!452100 (= e!264739 true)))

(declare-datatypes ((V!17259 0))(
  ( (V!17260 (val!6102 Int)) )
))
(declare-datatypes ((tuple2!7976 0))(
  ( (tuple2!7977 (_1!3998 (_ BitVec 64)) (_2!3998 V!17259)) )
))
(declare-datatypes ((List!8079 0))(
  ( (Nil!8076) (Cons!8075 (h!8931 tuple2!7976) (t!13887 List!8079)) )
))
(declare-datatypes ((ListLongMap!6903 0))(
  ( (ListLongMap!6904 (toList!3467 List!8079)) )
))
(declare-fun lt!205120 () ListLongMap!6903)

(declare-fun lt!205119 () V!17259)

(declare-fun lt!205122 () tuple2!7976)

(declare-fun +!1533 (ListLongMap!6903 tuple2!7976) ListLongMap!6903)

(assert (=> b!452100 (= (+!1533 lt!205120 lt!205122) (+!1533 (+!1533 lt!205120 (tuple2!7977 k!794 lt!205119)) lt!205122))))

(declare-fun lt!205125 () V!17259)

(assert (=> b!452100 (= lt!205122 (tuple2!7977 k!794 lt!205125))))

(declare-datatypes ((Unit!13169 0))(
  ( (Unit!13170) )
))
(declare-fun lt!205124 () Unit!13169)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!79 (ListLongMap!6903 (_ BitVec 64) V!17259 V!17259) Unit!13169)

(assert (=> b!452100 (= lt!205124 (addSameAsAddTwiceSameKeyDiffValues!79 lt!205120 k!794 lt!205119 lt!205125))))

(declare-datatypes ((ValueCell!5714 0))(
  ( (ValueCellFull!5714 (v!8357 V!17259)) (EmptyCell!5714) )
))
(declare-datatypes ((array!28001 0))(
  ( (array!28002 (arr!13442 (Array (_ BitVec 32) ValueCell!5714)) (size!13794 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28001)

(declare-fun lt!205123 () V!17259)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun get!6634 (ValueCell!5714 V!17259) V!17259)

(assert (=> b!452100 (= lt!205119 (get!6634 (select (arr!13442 _values!549) from!863) lt!205123))))

(declare-fun lt!205126 () ListLongMap!6903)

(assert (=> b!452100 (= lt!205126 (+!1533 lt!205120 (tuple2!7977 (select (arr!13441 lt!205128) from!863) lt!205125)))))

(declare-fun v!412 () V!17259)

(assert (=> b!452100 (= lt!205125 (get!6634 (select (store (arr!13442 _values!549) i!563 (ValueCellFull!5714 v!412)) from!863) lt!205123))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!857 (Int (_ BitVec 64)) V!17259)

(assert (=> b!452100 (= lt!205123 (dynLambda!857 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!17259)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17259)

(declare-fun lt!205118 () array!28001)

(declare-fun getCurrentListMapNoExtraKeys!1644 (array!27999 array!28001 (_ BitVec 32) (_ BitVec 32) V!17259 V!17259 (_ BitVec 32) Int) ListLongMap!6903)

(assert (=> b!452100 (= lt!205120 (getCurrentListMapNoExtraKeys!1644 lt!205128 lt!205118 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452101 () Bool)

(declare-fun res!269346 () Bool)

(assert (=> b!452101 (=> (not res!269346) (not e!264740))))

(assert (=> b!452101 (= res!269346 (and (= (size!13794 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13793 _keys!709) (size!13794 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19809 () Bool)

(declare-fun mapRes!19809 () Bool)

(assert (=> mapIsEmpty!19809 mapRes!19809))

(declare-fun b!452102 () Bool)

(declare-fun res!269340 () Bool)

(assert (=> b!452102 (=> (not res!269340) (not e!264740))))

(assert (=> b!452102 (= res!269340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452103 () Bool)

(declare-fun e!264736 () Bool)

(assert (=> b!452103 (= e!264741 e!264736)))

(declare-fun res!269347 () Bool)

(assert (=> b!452103 (=> (not res!269347) (not e!264736))))

(assert (=> b!452103 (= res!269347 (= from!863 i!563))))

(assert (=> b!452103 (= lt!205126 (getCurrentListMapNoExtraKeys!1644 lt!205128 lt!205118 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452103 (= lt!205118 (array!28002 (store (arr!13442 _values!549) i!563 (ValueCellFull!5714 v!412)) (size!13794 _values!549)))))

(declare-fun lt!205121 () ListLongMap!6903)

(assert (=> b!452103 (= lt!205121 (getCurrentListMapNoExtraKeys!1644 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19809 () Bool)

(declare-fun tp!38153 () Bool)

(declare-fun e!264744 () Bool)

(assert (=> mapNonEmpty!19809 (= mapRes!19809 (and tp!38153 e!264744))))

(declare-fun mapRest!19809 () (Array (_ BitVec 32) ValueCell!5714))

(declare-fun mapKey!19809 () (_ BitVec 32))

(declare-fun mapValue!19809 () ValueCell!5714)

(assert (=> mapNonEmpty!19809 (= (arr!13442 _values!549) (store mapRest!19809 mapKey!19809 mapValue!19809))))

(declare-fun res!269335 () Bool)

(assert (=> start!40796 (=> (not res!269335) (not e!264740))))

(assert (=> start!40796 (= res!269335 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13793 _keys!709))))))

(assert (=> start!40796 e!264740))

(declare-fun tp_is_empty!12115 () Bool)

(assert (=> start!40796 tp_is_empty!12115))

(assert (=> start!40796 tp!38154))

(assert (=> start!40796 true))

(declare-fun e!264743 () Bool)

(declare-fun array_inv!9730 (array!28001) Bool)

(assert (=> start!40796 (and (array_inv!9730 _values!549) e!264743)))

(declare-fun array_inv!9731 (array!27999) Bool)

(assert (=> start!40796 (array_inv!9731 _keys!709)))

(declare-fun b!452104 () Bool)

(declare-fun e!264738 () Bool)

(assert (=> b!452104 (= e!264738 tp_is_empty!12115)))

(declare-fun b!452105 () Bool)

(declare-fun res!269348 () Bool)

(assert (=> b!452105 (=> (not res!269348) (not e!264740))))

(assert (=> b!452105 (= res!269348 (or (= (select (arr!13441 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13441 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun c!56039 () Bool)

(declare-fun bm!29938 () Bool)

(declare-fun call!29942 () ListLongMap!6903)

(assert (=> bm!29938 (= call!29942 (getCurrentListMapNoExtraKeys!1644 (ite c!56039 _keys!709 lt!205128) (ite c!56039 _values!549 lt!205118) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452106 () Bool)

(declare-fun res!269341 () Bool)

(assert (=> b!452106 (=> (not res!269341) (not e!264740))))

(assert (=> b!452106 (= res!269341 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13793 _keys!709))))))

(declare-fun b!452107 () Bool)

(declare-fun res!269336 () Bool)

(assert (=> b!452107 (=> (not res!269336) (not e!264740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452107 (= res!269336 (validMask!0 mask!1025))))

(declare-fun call!29941 () ListLongMap!6903)

(declare-fun e!264737 () Bool)

(declare-fun b!452108 () Bool)

(assert (=> b!452108 (= e!264737 (= call!29941 (+!1533 call!29942 (tuple2!7977 k!794 v!412))))))

(declare-fun bm!29939 () Bool)

(assert (=> bm!29939 (= call!29941 (getCurrentListMapNoExtraKeys!1644 (ite c!56039 lt!205128 _keys!709) (ite c!56039 lt!205118 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452109 () Bool)

(declare-fun res!269344 () Bool)

(assert (=> b!452109 (=> (not res!269344) (not e!264741))))

(declare-datatypes ((List!8080 0))(
  ( (Nil!8077) (Cons!8076 (h!8932 (_ BitVec 64)) (t!13888 List!8080)) )
))
(declare-fun arrayNoDuplicates!0 (array!27999 (_ BitVec 32) List!8080) Bool)

(assert (=> b!452109 (= res!269344 (arrayNoDuplicates!0 lt!205128 #b00000000000000000000000000000000 Nil!8077))))

(declare-fun b!452110 () Bool)

(assert (=> b!452110 (= e!264737 (= call!29942 call!29941))))

(declare-fun b!452111 () Bool)

(assert (=> b!452111 (= e!264743 (and e!264738 mapRes!19809))))

(declare-fun condMapEmpty!19809 () Bool)

(declare-fun mapDefault!19809 () ValueCell!5714)

