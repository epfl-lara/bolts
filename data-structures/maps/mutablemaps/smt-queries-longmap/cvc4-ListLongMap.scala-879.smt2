; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20386 () Bool)

(assert start!20386)

(declare-fun b_free!5033 () Bool)

(declare-fun b_next!5033 () Bool)

(assert (=> start!20386 (= b_free!5033 (not b_next!5033))))

(declare-fun tp!18131 () Bool)

(declare-fun b_and!11797 () Bool)

(assert (=> start!20386 (= tp!18131 b_and!11797)))

(declare-fun b!201178 () Bool)

(declare-fun res!96085 () Bool)

(declare-fun e!131877 () Bool)

(assert (=> b!201178 (=> (not res!96085) (not e!131877))))

(declare-datatypes ((array!9006 0))(
  ( (array!9007 (arr!4253 (Array (_ BitVec 32) (_ BitVec 64))) (size!4578 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9006)

(declare-datatypes ((List!2702 0))(
  ( (Nil!2699) (Cons!2698 (h!3340 (_ BitVec 64)) (t!7641 List!2702)) )
))
(declare-fun arrayNoDuplicates!0 (array!9006 (_ BitVec 32) List!2702) Bool)

(assert (=> b!201178 (= res!96085 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2699))))

(declare-fun res!96091 () Bool)

(assert (=> start!20386 (=> (not res!96091) (not e!131877))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20386 (= res!96091 (validMask!0 mask!1149))))

(assert (=> start!20386 e!131877))

(declare-datatypes ((V!6165 0))(
  ( (V!6166 (val!2489 Int)) )
))
(declare-datatypes ((ValueCell!2101 0))(
  ( (ValueCellFull!2101 (v!4455 V!6165)) (EmptyCell!2101) )
))
(declare-datatypes ((array!9008 0))(
  ( (array!9009 (arr!4254 (Array (_ BitVec 32) ValueCell!2101)) (size!4579 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9008)

(declare-fun e!131881 () Bool)

(declare-fun array_inv!2793 (array!9008) Bool)

(assert (=> start!20386 (and (array_inv!2793 _values!649) e!131881)))

(assert (=> start!20386 true))

(declare-fun tp_is_empty!4889 () Bool)

(assert (=> start!20386 tp_is_empty!4889))

(declare-fun array_inv!2794 (array!9006) Bool)

(assert (=> start!20386 (array_inv!2794 _keys!825)))

(assert (=> start!20386 tp!18131))

(declare-fun b!201179 () Bool)

(declare-fun res!96089 () Bool)

(assert (=> b!201179 (=> (not res!96089) (not e!131877))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201179 (= res!96089 (validKeyInArray!0 k!843))))

(declare-fun b!201180 () Bool)

(declare-fun res!96086 () Bool)

(assert (=> b!201180 (=> (not res!96086) (not e!131877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9006 (_ BitVec 32)) Bool)

(assert (=> b!201180 (= res!96086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201181 () Bool)

(declare-fun e!131875 () Bool)

(assert (=> b!201181 (= e!131875 true)))

(declare-datatypes ((tuple2!3762 0))(
  ( (tuple2!3763 (_1!1891 (_ BitVec 64)) (_2!1891 V!6165)) )
))
(declare-fun lt!100102 () tuple2!3762)

(declare-datatypes ((List!2703 0))(
  ( (Nil!2700) (Cons!2699 (h!3341 tuple2!3762) (t!7642 List!2703)) )
))
(declare-datatypes ((ListLongMap!2689 0))(
  ( (ListLongMap!2690 (toList!1360 List!2703)) )
))
(declare-fun lt!100113 () ListLongMap!2689)

(declare-fun lt!100111 () tuple2!3762)

(declare-fun lt!100103 () ListLongMap!2689)

(declare-fun +!377 (ListLongMap!2689 tuple2!3762) ListLongMap!2689)

(assert (=> b!201181 (= (+!377 lt!100113 lt!100111) (+!377 lt!100103 lt!100102))))

(declare-fun minValue!615 () V!6165)

(declare-fun v!520 () V!6165)

(declare-fun lt!100104 () ListLongMap!2689)

(declare-datatypes ((Unit!6061 0))(
  ( (Unit!6062) )
))
(declare-fun lt!100116 () Unit!6061)

(declare-fun addCommutativeForDiffKeys!98 (ListLongMap!2689 (_ BitVec 64) V!6165 (_ BitVec 64) V!6165) Unit!6061)

(assert (=> b!201181 (= lt!100116 (addCommutativeForDiffKeys!98 lt!100104 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201182 () Bool)

(declare-fun res!96084 () Bool)

(assert (=> b!201182 (=> (not res!96084) (not e!131877))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201182 (= res!96084 (and (= (size!4579 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4578 _keys!825) (size!4579 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201183 () Bool)

(declare-fun e!131876 () Bool)

(assert (=> b!201183 (= e!131876 e!131875)))

(declare-fun res!96087 () Bool)

(assert (=> b!201183 (=> res!96087 e!131875)))

(assert (=> b!201183 (= res!96087 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100117 () ListLongMap!2689)

(assert (=> b!201183 (= lt!100117 lt!100113)))

(assert (=> b!201183 (= lt!100113 (+!377 lt!100104 lt!100102))))

(declare-fun lt!100106 () ListLongMap!2689)

(declare-fun lt!100110 () Unit!6061)

(declare-fun zeroValue!615 () V!6165)

(assert (=> b!201183 (= lt!100110 (addCommutativeForDiffKeys!98 lt!100106 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100112 () ListLongMap!2689)

(assert (=> b!201183 (= lt!100112 (+!377 lt!100117 lt!100111))))

(declare-fun lt!100107 () ListLongMap!2689)

(declare-fun lt!100109 () tuple2!3762)

(assert (=> b!201183 (= lt!100117 (+!377 lt!100107 lt!100109))))

(declare-fun lt!100105 () ListLongMap!2689)

(assert (=> b!201183 (= lt!100105 lt!100103)))

(assert (=> b!201183 (= lt!100103 (+!377 lt!100104 lt!100111))))

(assert (=> b!201183 (= lt!100104 (+!377 lt!100106 lt!100109))))

(declare-fun lt!100114 () ListLongMap!2689)

(assert (=> b!201183 (= lt!100112 (+!377 (+!377 lt!100114 lt!100109) lt!100111))))

(assert (=> b!201183 (= lt!100111 (tuple2!3763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201183 (= lt!100109 (tuple2!3763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201184 () Bool)

(declare-fun res!96088 () Bool)

(assert (=> b!201184 (=> (not res!96088) (not e!131877))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201184 (= res!96088 (= (select (arr!4253 _keys!825) i!601) k!843))))

(declare-fun b!201185 () Bool)

(declare-fun res!96090 () Bool)

(assert (=> b!201185 (=> (not res!96090) (not e!131877))))

(assert (=> b!201185 (= res!96090 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4578 _keys!825))))))

(declare-fun mapIsEmpty!8402 () Bool)

(declare-fun mapRes!8402 () Bool)

(assert (=> mapIsEmpty!8402 mapRes!8402))

(declare-fun b!201186 () Bool)

(assert (=> b!201186 (= e!131877 (not e!131876))))

(declare-fun res!96083 () Bool)

(assert (=> b!201186 (=> res!96083 e!131876)))

(assert (=> b!201186 (= res!96083 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!944 (array!9006 array!9008 (_ BitVec 32) (_ BitVec 32) V!6165 V!6165 (_ BitVec 32) Int) ListLongMap!2689)

(assert (=> b!201186 (= lt!100105 (getCurrentListMap!944 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100108 () array!9008)

(assert (=> b!201186 (= lt!100112 (getCurrentListMap!944 _keys!825 lt!100108 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201186 (and (= lt!100114 lt!100107) (= lt!100107 lt!100114))))

(assert (=> b!201186 (= lt!100107 (+!377 lt!100106 lt!100102))))

(assert (=> b!201186 (= lt!100102 (tuple2!3763 k!843 v!520))))

(declare-fun lt!100115 () Unit!6061)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!57 (array!9006 array!9008 (_ BitVec 32) (_ BitVec 32) V!6165 V!6165 (_ BitVec 32) (_ BitVec 64) V!6165 (_ BitVec 32) Int) Unit!6061)

(assert (=> b!201186 (= lt!100115 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!57 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!315 (array!9006 array!9008 (_ BitVec 32) (_ BitVec 32) V!6165 V!6165 (_ BitVec 32) Int) ListLongMap!2689)

(assert (=> b!201186 (= lt!100114 (getCurrentListMapNoExtraKeys!315 _keys!825 lt!100108 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201186 (= lt!100108 (array!9009 (store (arr!4254 _values!649) i!601 (ValueCellFull!2101 v!520)) (size!4579 _values!649)))))

(assert (=> b!201186 (= lt!100106 (getCurrentListMapNoExtraKeys!315 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201187 () Bool)

(declare-fun e!131879 () Bool)

(assert (=> b!201187 (= e!131881 (and e!131879 mapRes!8402))))

(declare-fun condMapEmpty!8402 () Bool)

(declare-fun mapDefault!8402 () ValueCell!2101)

