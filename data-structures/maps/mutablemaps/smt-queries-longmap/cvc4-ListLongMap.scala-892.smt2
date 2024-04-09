; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20464 () Bool)

(assert start!20464)

(declare-fun b_free!5111 () Bool)

(declare-fun b_next!5111 () Bool)

(assert (=> start!20464 (= b_free!5111 (not b_next!5111))))

(declare-fun tp!18365 () Bool)

(declare-fun b_and!11875 () Bool)

(assert (=> start!20464 (= tp!18365 b_and!11875)))

(declare-fun b!202591 () Bool)

(declare-fun res!97153 () Bool)

(declare-fun e!132699 () Bool)

(assert (=> b!202591 (=> (not res!97153) (not e!132699))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202591 (= res!97153 (validKeyInArray!0 k!843))))

(declare-fun b!202592 () Bool)

(declare-fun res!97150 () Bool)

(assert (=> b!202592 (=> (not res!97150) (not e!132699))))

(declare-datatypes ((array!9158 0))(
  ( (array!9159 (arr!4329 (Array (_ BitVec 32) (_ BitVec 64))) (size!4654 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9158)

(declare-datatypes ((List!2759 0))(
  ( (Nil!2756) (Cons!2755 (h!3397 (_ BitVec 64)) (t!7698 List!2759)) )
))
(declare-fun arrayNoDuplicates!0 (array!9158 (_ BitVec 32) List!2759) Bool)

(assert (=> b!202592 (= res!97150 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2756))))

(declare-fun b!202593 () Bool)

(declare-fun e!132698 () Bool)

(declare-fun tp_is_empty!4967 () Bool)

(assert (=> b!202593 (= e!132698 tp_is_empty!4967)))

(declare-fun b!202594 () Bool)

(declare-fun e!132700 () Bool)

(assert (=> b!202594 (= e!132699 (not e!132700))))

(declare-fun res!97151 () Bool)

(assert (=> b!202594 (=> res!97151 e!132700)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202594 (= res!97151 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6269 0))(
  ( (V!6270 (val!2528 Int)) )
))
(declare-datatypes ((tuple2!3832 0))(
  ( (tuple2!3833 (_1!1926 (_ BitVec 64)) (_2!1926 V!6269)) )
))
(declare-datatypes ((List!2760 0))(
  ( (Nil!2757) (Cons!2756 (h!3398 tuple2!3832) (t!7699 List!2760)) )
))
(declare-datatypes ((ListLongMap!2759 0))(
  ( (ListLongMap!2760 (toList!1395 List!2760)) )
))
(declare-fun lt!101837 () ListLongMap!2759)

(declare-datatypes ((ValueCell!2140 0))(
  ( (ValueCellFull!2140 (v!4494 V!6269)) (EmptyCell!2140) )
))
(declare-datatypes ((array!9160 0))(
  ( (array!9161 (arr!4330 (Array (_ BitVec 32) ValueCell!2140)) (size!4655 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9160)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6269)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6269)

(declare-fun getCurrentListMap!969 (array!9158 array!9160 (_ BitVec 32) (_ BitVec 32) V!6269 V!6269 (_ BitVec 32) Int) ListLongMap!2759)

(assert (=> b!202594 (= lt!101837 (getCurrentListMap!969 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101845 () array!9160)

(declare-fun lt!101839 () ListLongMap!2759)

(assert (=> b!202594 (= lt!101839 (getCurrentListMap!969 _keys!825 lt!101845 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101840 () ListLongMap!2759)

(declare-fun lt!101838 () ListLongMap!2759)

(assert (=> b!202594 (and (= lt!101840 lt!101838) (= lt!101838 lt!101840))))

(declare-fun lt!101836 () ListLongMap!2759)

(declare-fun lt!101841 () tuple2!3832)

(declare-fun +!412 (ListLongMap!2759 tuple2!3832) ListLongMap!2759)

(assert (=> b!202594 (= lt!101838 (+!412 lt!101836 lt!101841))))

(declare-fun v!520 () V!6269)

(assert (=> b!202594 (= lt!101841 (tuple2!3833 k!843 v!520))))

(declare-datatypes ((Unit!6125 0))(
  ( (Unit!6126) )
))
(declare-fun lt!101844 () Unit!6125)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!82 (array!9158 array!9160 (_ BitVec 32) (_ BitVec 32) V!6269 V!6269 (_ BitVec 32) (_ BitVec 64) V!6269 (_ BitVec 32) Int) Unit!6125)

(assert (=> b!202594 (= lt!101844 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!82 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!340 (array!9158 array!9160 (_ BitVec 32) (_ BitVec 32) V!6269 V!6269 (_ BitVec 32) Int) ListLongMap!2759)

(assert (=> b!202594 (= lt!101840 (getCurrentListMapNoExtraKeys!340 _keys!825 lt!101845 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202594 (= lt!101845 (array!9161 (store (arr!4330 _values!649) i!601 (ValueCellFull!2140 v!520)) (size!4655 _values!649)))))

(assert (=> b!202594 (= lt!101836 (getCurrentListMapNoExtraKeys!340 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8519 () Bool)

(declare-fun mapRes!8519 () Bool)

(declare-fun tp!18364 () Bool)

(assert (=> mapNonEmpty!8519 (= mapRes!8519 (and tp!18364 e!132698))))

(declare-fun mapKey!8519 () (_ BitVec 32))

(declare-fun mapValue!8519 () ValueCell!2140)

(declare-fun mapRest!8519 () (Array (_ BitVec 32) ValueCell!2140))

(assert (=> mapNonEmpty!8519 (= (arr!4330 _values!649) (store mapRest!8519 mapKey!8519 mapValue!8519))))

(declare-fun b!202595 () Bool)

(declare-fun e!132696 () Bool)

(assert (=> b!202595 (= e!132696 true)))

(declare-fun lt!101843 () ListLongMap!2759)

(declare-fun lt!101834 () ListLongMap!2759)

(assert (=> b!202595 (= lt!101843 (+!412 lt!101834 lt!101841))))

(declare-fun lt!101835 () Unit!6125)

(declare-fun addCommutativeForDiffKeys!128 (ListLongMap!2759 (_ BitVec 64) V!6269 (_ BitVec 64) V!6269) Unit!6125)

(assert (=> b!202595 (= lt!101835 (addCommutativeForDiffKeys!128 lt!101836 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97149 () Bool)

(assert (=> start!20464 (=> (not res!97149) (not e!132699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20464 (= res!97149 (validMask!0 mask!1149))))

(assert (=> start!20464 e!132699))

(declare-fun e!132694 () Bool)

(declare-fun array_inv!2847 (array!9160) Bool)

(assert (=> start!20464 (and (array_inv!2847 _values!649) e!132694)))

(assert (=> start!20464 true))

(assert (=> start!20464 tp_is_empty!4967))

(declare-fun array_inv!2848 (array!9158) Bool)

(assert (=> start!20464 (array_inv!2848 _keys!825)))

(assert (=> start!20464 tp!18365))

(declare-fun b!202596 () Bool)

(declare-fun res!97145 () Bool)

(assert (=> b!202596 (=> (not res!97145) (not e!132699))))

(assert (=> b!202596 (= res!97145 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4654 _keys!825))))))

(declare-fun b!202597 () Bool)

(declare-fun e!132697 () Bool)

(assert (=> b!202597 (= e!132697 tp_is_empty!4967)))

(declare-fun b!202598 () Bool)

(declare-fun res!97148 () Bool)

(assert (=> b!202598 (=> (not res!97148) (not e!132699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9158 (_ BitVec 32)) Bool)

(assert (=> b!202598 (= res!97148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202599 () Bool)

(declare-fun res!97147 () Bool)

(assert (=> b!202599 (=> (not res!97147) (not e!132699))))

(assert (=> b!202599 (= res!97147 (and (= (size!4655 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4654 _keys!825) (size!4655 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8519 () Bool)

(assert (=> mapIsEmpty!8519 mapRes!8519))

(declare-fun b!202600 () Bool)

(assert (=> b!202600 (= e!132700 e!132696)))

(declare-fun res!97152 () Bool)

(assert (=> b!202600 (=> res!97152 e!132696)))

(assert (=> b!202600 (= res!97152 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!202600 (= lt!101839 lt!101843)))

(declare-fun lt!101842 () tuple2!3832)

(assert (=> b!202600 (= lt!101843 (+!412 lt!101838 lt!101842))))

(assert (=> b!202600 (= lt!101837 lt!101834)))

(assert (=> b!202600 (= lt!101834 (+!412 lt!101836 lt!101842))))

(assert (=> b!202600 (= lt!101839 (+!412 lt!101840 lt!101842))))

(assert (=> b!202600 (= lt!101842 (tuple2!3833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202601 () Bool)

(assert (=> b!202601 (= e!132694 (and e!132697 mapRes!8519))))

(declare-fun condMapEmpty!8519 () Bool)

(declare-fun mapDefault!8519 () ValueCell!2140)

