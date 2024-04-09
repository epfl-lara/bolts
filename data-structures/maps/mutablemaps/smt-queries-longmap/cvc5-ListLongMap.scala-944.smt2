; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20772 () Bool)

(assert start!20772)

(declare-fun b_free!5419 () Bool)

(declare-fun b_next!5419 () Bool)

(assert (=> start!20772 (= b_free!5419 (not b_next!5419))))

(declare-fun tp!19288 () Bool)

(declare-fun b_and!12183 () Bool)

(assert (=> start!20772 (= tp!19288 b_and!12183)))

(declare-fun b!207852 () Bool)

(declare-fun res!101020 () Bool)

(declare-fun e!135637 () Bool)

(assert (=> b!207852 (=> (not res!101020) (not e!135637))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9754 0))(
  ( (array!9755 (arr!4627 (Array (_ BitVec 32) (_ BitVec 64))) (size!4952 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9754)

(assert (=> b!207852 (= res!101020 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4952 _keys!825))))))

(declare-fun b!207853 () Bool)

(declare-fun res!101023 () Bool)

(assert (=> b!207853 (=> (not res!101023) (not e!135637))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6681 0))(
  ( (V!6682 (val!2682 Int)) )
))
(declare-datatypes ((ValueCell!2294 0))(
  ( (ValueCellFull!2294 (v!4648 V!6681)) (EmptyCell!2294) )
))
(declare-datatypes ((array!9756 0))(
  ( (array!9757 (arr!4628 (Array (_ BitVec 32) ValueCell!2294)) (size!4953 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9756)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207853 (= res!101023 (and (= (size!4953 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4952 _keys!825) (size!4953 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207854 () Bool)

(assert (=> b!207854 (= e!135637 (not true))))

(declare-datatypes ((tuple2!4066 0))(
  ( (tuple2!4067 (_1!2043 (_ BitVec 64)) (_2!2043 V!6681)) )
))
(declare-datatypes ((List!2982 0))(
  ( (Nil!2979) (Cons!2978 (h!3620 tuple2!4066) (t!7921 List!2982)) )
))
(declare-datatypes ((ListLongMap!2993 0))(
  ( (ListLongMap!2994 (toList!1512 List!2982)) )
))
(declare-fun lt!106625 () ListLongMap!2993)

(declare-fun zeroValue!615 () V!6681)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6681)

(declare-fun getCurrentListMap!1074 (array!9754 array!9756 (_ BitVec 32) (_ BitVec 32) V!6681 V!6681 (_ BitVec 32) Int) ListLongMap!2993)

(assert (=> b!207854 (= lt!106625 (getCurrentListMap!1074 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106623 () array!9756)

(declare-fun lt!106624 () ListLongMap!2993)

(assert (=> b!207854 (= lt!106624 (getCurrentListMap!1074 _keys!825 lt!106623 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106627 () ListLongMap!2993)

(declare-fun lt!106622 () ListLongMap!2993)

(assert (=> b!207854 (and (= lt!106627 lt!106622) (= lt!106622 lt!106627))))

(declare-fun lt!106621 () ListLongMap!2993)

(declare-fun v!520 () V!6681)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!529 (ListLongMap!2993 tuple2!4066) ListLongMap!2993)

(assert (=> b!207854 (= lt!106622 (+!529 lt!106621 (tuple2!4067 k!843 v!520)))))

(declare-datatypes ((Unit!6353 0))(
  ( (Unit!6354) )
))
(declare-fun lt!106626 () Unit!6353)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!187 (array!9754 array!9756 (_ BitVec 32) (_ BitVec 32) V!6681 V!6681 (_ BitVec 32) (_ BitVec 64) V!6681 (_ BitVec 32) Int) Unit!6353)

(assert (=> b!207854 (= lt!106626 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!187 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!445 (array!9754 array!9756 (_ BitVec 32) (_ BitVec 32) V!6681 V!6681 (_ BitVec 32) Int) ListLongMap!2993)

(assert (=> b!207854 (= lt!106627 (getCurrentListMapNoExtraKeys!445 _keys!825 lt!106623 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207854 (= lt!106623 (array!9757 (store (arr!4628 _values!649) i!601 (ValueCellFull!2294 v!520)) (size!4953 _values!649)))))

(assert (=> b!207854 (= lt!106621 (getCurrentListMapNoExtraKeys!445 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207855 () Bool)

(declare-fun res!101022 () Bool)

(assert (=> b!207855 (=> (not res!101022) (not e!135637))))

(declare-datatypes ((List!2983 0))(
  ( (Nil!2980) (Cons!2979 (h!3621 (_ BitVec 64)) (t!7922 List!2983)) )
))
(declare-fun arrayNoDuplicates!0 (array!9754 (_ BitVec 32) List!2983) Bool)

(assert (=> b!207855 (= res!101022 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2980))))

(declare-fun mapIsEmpty!8981 () Bool)

(declare-fun mapRes!8981 () Bool)

(assert (=> mapIsEmpty!8981 mapRes!8981))

(declare-fun mapNonEmpty!8981 () Bool)

(declare-fun tp!19289 () Bool)

(declare-fun e!135638 () Bool)

(assert (=> mapNonEmpty!8981 (= mapRes!8981 (and tp!19289 e!135638))))

(declare-fun mapRest!8981 () (Array (_ BitVec 32) ValueCell!2294))

(declare-fun mapValue!8981 () ValueCell!2294)

(declare-fun mapKey!8981 () (_ BitVec 32))

(assert (=> mapNonEmpty!8981 (= (arr!4628 _values!649) (store mapRest!8981 mapKey!8981 mapValue!8981))))

(declare-fun b!207857 () Bool)

(declare-fun e!135639 () Bool)

(declare-fun e!135636 () Bool)

(assert (=> b!207857 (= e!135639 (and e!135636 mapRes!8981))))

(declare-fun condMapEmpty!8981 () Bool)

(declare-fun mapDefault!8981 () ValueCell!2294)

