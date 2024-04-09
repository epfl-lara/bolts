; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20724 () Bool)

(assert start!20724)

(declare-fun b_free!5371 () Bool)

(declare-fun b_next!5371 () Bool)

(assert (=> start!20724 (= b_free!5371 (not b_next!5371))))

(declare-fun tp!19144 () Bool)

(declare-fun b_and!12135 () Bool)

(assert (=> start!20724 (= tp!19144 b_and!12135)))

(declare-fun b!207132 () Bool)

(declare-fun res!100519 () Bool)

(declare-fun e!135277 () Bool)

(assert (=> b!207132 (=> (not res!100519) (not e!135277))))

(declare-datatypes ((array!9662 0))(
  ( (array!9663 (arr!4581 (Array (_ BitVec 32) (_ BitVec 64))) (size!4906 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9662)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6617 0))(
  ( (V!6618 (val!2658 Int)) )
))
(declare-datatypes ((ValueCell!2270 0))(
  ( (ValueCellFull!2270 (v!4624 V!6617)) (EmptyCell!2270) )
))
(declare-datatypes ((array!9664 0))(
  ( (array!9665 (arr!4582 (Array (_ BitVec 32) ValueCell!2270)) (size!4907 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9664)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207132 (= res!100519 (and (= (size!4907 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4906 _keys!825) (size!4907 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100517 () Bool)

(assert (=> start!20724 (=> (not res!100517) (not e!135277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20724 (= res!100517 (validMask!0 mask!1149))))

(assert (=> start!20724 e!135277))

(declare-fun e!135276 () Bool)

(declare-fun array_inv!3023 (array!9664) Bool)

(assert (=> start!20724 (and (array_inv!3023 _values!649) e!135276)))

(assert (=> start!20724 true))

(declare-fun tp_is_empty!5227 () Bool)

(assert (=> start!20724 tp_is_empty!5227))

(declare-fun array_inv!3024 (array!9662) Bool)

(assert (=> start!20724 (array_inv!3024 _keys!825)))

(assert (=> start!20724 tp!19144))

(declare-fun mapNonEmpty!8909 () Bool)

(declare-fun mapRes!8909 () Bool)

(declare-fun tp!19145 () Bool)

(declare-fun e!135280 () Bool)

(assert (=> mapNonEmpty!8909 (= mapRes!8909 (and tp!19145 e!135280))))

(declare-fun mapRest!8909 () (Array (_ BitVec 32) ValueCell!2270))

(declare-fun mapValue!8909 () ValueCell!2270)

(declare-fun mapKey!8909 () (_ BitVec 32))

(assert (=> mapNonEmpty!8909 (= (arr!4582 _values!649) (store mapRest!8909 mapKey!8909 mapValue!8909))))

(declare-fun b!207133 () Bool)

(declare-fun res!100518 () Bool)

(assert (=> b!207133 (=> (not res!100518) (not e!135277))))

(declare-datatypes ((List!2947 0))(
  ( (Nil!2944) (Cons!2943 (h!3585 (_ BitVec 64)) (t!7886 List!2947)) )
))
(declare-fun arrayNoDuplicates!0 (array!9662 (_ BitVec 32) List!2947) Bool)

(assert (=> b!207133 (= res!100518 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2944))))

(declare-fun b!207134 () Bool)

(declare-fun res!100522 () Bool)

(assert (=> b!207134 (=> (not res!100522) (not e!135277))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207134 (= res!100522 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4906 _keys!825))))))

(declare-fun mapIsEmpty!8909 () Bool)

(assert (=> mapIsEmpty!8909 mapRes!8909))

(declare-fun b!207135 () Bool)

(declare-datatypes ((tuple2!4032 0))(
  ( (tuple2!4033 (_1!2026 (_ BitVec 64)) (_2!2026 V!6617)) )
))
(declare-datatypes ((List!2948 0))(
  ( (Nil!2945) (Cons!2944 (h!3586 tuple2!4032) (t!7887 List!2948)) )
))
(declare-datatypes ((ListLongMap!2959 0))(
  ( (ListLongMap!2960 (toList!1495 List!2948)) )
))
(declare-fun lt!106110 () ListLongMap!2959)

(declare-fun lt!106111 () Bool)

(declare-fun lt!106115 () ListLongMap!2959)

(assert (=> b!207135 (= e!135277 (not (or (and (not lt!106111) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!106111) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!106111) (not (= lt!106115 lt!106110)) (bvsle #b00000000000000000000000000000000 (size!4906 _keys!825)))))))

(assert (=> b!207135 (= lt!106111 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!106112 () ListLongMap!2959)

(declare-fun zeroValue!615 () V!6617)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6617)

(declare-fun getCurrentListMap!1057 (array!9662 array!9664 (_ BitVec 32) (_ BitVec 32) V!6617 V!6617 (_ BitVec 32) Int) ListLongMap!2959)

(assert (=> b!207135 (= lt!106112 (getCurrentListMap!1057 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106116 () array!9664)

(assert (=> b!207135 (= lt!106115 (getCurrentListMap!1057 _keys!825 lt!106116 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106114 () ListLongMap!2959)

(assert (=> b!207135 (and (= lt!106110 lt!106114) (= lt!106114 lt!106110))))

(declare-fun v!520 () V!6617)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!106117 () ListLongMap!2959)

(declare-fun +!512 (ListLongMap!2959 tuple2!4032) ListLongMap!2959)

(assert (=> b!207135 (= lt!106114 (+!512 lt!106117 (tuple2!4033 k!843 v!520)))))

(declare-datatypes ((Unit!6319 0))(
  ( (Unit!6320) )
))
(declare-fun lt!106113 () Unit!6319)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!170 (array!9662 array!9664 (_ BitVec 32) (_ BitVec 32) V!6617 V!6617 (_ BitVec 32) (_ BitVec 64) V!6617 (_ BitVec 32) Int) Unit!6319)

(assert (=> b!207135 (= lt!106113 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!170 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!428 (array!9662 array!9664 (_ BitVec 32) (_ BitVec 32) V!6617 V!6617 (_ BitVec 32) Int) ListLongMap!2959)

(assert (=> b!207135 (= lt!106110 (getCurrentListMapNoExtraKeys!428 _keys!825 lt!106116 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207135 (= lt!106116 (array!9665 (store (arr!4582 _values!649) i!601 (ValueCellFull!2270 v!520)) (size!4907 _values!649)))))

(assert (=> b!207135 (= lt!106117 (getCurrentListMapNoExtraKeys!428 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207136 () Bool)

(declare-fun res!100521 () Bool)

(assert (=> b!207136 (=> (not res!100521) (not e!135277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9662 (_ BitVec 32)) Bool)

(assert (=> b!207136 (= res!100521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207137 () Bool)

(declare-fun res!100520 () Bool)

(assert (=> b!207137 (=> (not res!100520) (not e!135277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207137 (= res!100520 (validKeyInArray!0 k!843))))

(declare-fun b!207138 () Bool)

(declare-fun e!135279 () Bool)

(assert (=> b!207138 (= e!135276 (and e!135279 mapRes!8909))))

(declare-fun condMapEmpty!8909 () Bool)

(declare-fun mapDefault!8909 () ValueCell!2270)

