; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20284 () Bool)

(assert start!20284)

(declare-fun b_free!4931 () Bool)

(declare-fun b_next!4931 () Bool)

(assert (=> start!20284 (= b_free!4931 (not b_next!4931))))

(declare-fun tp!17825 () Bool)

(declare-fun b_and!11695 () Bool)

(assert (=> start!20284 (= tp!17825 b_and!11695)))

(declare-fun b!199470 () Bool)

(declare-fun e!130944 () Bool)

(declare-fun tp_is_empty!4787 () Bool)

(assert (=> b!199470 (= e!130944 tp_is_empty!4787)))

(declare-fun b!199471 () Bool)

(declare-fun res!94835 () Bool)

(declare-fun e!130942 () Bool)

(assert (=> b!199471 (=> (not res!94835) (not e!130942))))

(declare-datatypes ((array!8814 0))(
  ( (array!8815 (arr!4157 (Array (_ BitVec 32) (_ BitVec 64))) (size!4482 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8814)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199471 (= res!94835 (= (select (arr!4157 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8249 () Bool)

(declare-fun mapRes!8249 () Bool)

(declare-fun tp!17824 () Bool)

(assert (=> mapNonEmpty!8249 (= mapRes!8249 (and tp!17824 e!130944))))

(declare-fun mapKey!8249 () (_ BitVec 32))

(declare-datatypes ((V!6029 0))(
  ( (V!6030 (val!2438 Int)) )
))
(declare-datatypes ((ValueCell!2050 0))(
  ( (ValueCellFull!2050 (v!4404 V!6029)) (EmptyCell!2050) )
))
(declare-fun mapRest!8249 () (Array (_ BitVec 32) ValueCell!2050))

(declare-datatypes ((array!8816 0))(
  ( (array!8817 (arr!4158 (Array (_ BitVec 32) ValueCell!2050)) (size!4483 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8816)

(declare-fun mapValue!8249 () ValueCell!2050)

(assert (=> mapNonEmpty!8249 (= (arr!4158 _values!649) (store mapRest!8249 mapKey!8249 mapValue!8249))))

(declare-fun b!199472 () Bool)

(declare-fun res!94834 () Bool)

(assert (=> b!199472 (=> (not res!94834) (not e!130942))))

(assert (=> b!199472 (= res!94834 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4482 _keys!825))))))

(declare-fun b!199473 () Bool)

(declare-fun res!94839 () Bool)

(assert (=> b!199473 (=> (not res!94839) (not e!130942))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!199473 (= res!94839 (and (= (size!4483 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4482 _keys!825) (size!4483 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199474 () Bool)

(assert (=> b!199474 (= e!130942 (not true))))

(declare-fun lt!98387 () array!8816)

(declare-datatypes ((tuple2!3684 0))(
  ( (tuple2!3685 (_1!1852 (_ BitVec 64)) (_2!1852 V!6029)) )
))
(declare-datatypes ((List!2626 0))(
  ( (Nil!2623) (Cons!2622 (h!3264 tuple2!3684) (t!7565 List!2626)) )
))
(declare-datatypes ((ListLongMap!2611 0))(
  ( (ListLongMap!2612 (toList!1321 List!2626)) )
))
(declare-fun lt!98384 () ListLongMap!2611)

(declare-fun zeroValue!615 () V!6029)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6029)

(declare-fun getCurrentListMap!907 (array!8814 array!8816 (_ BitVec 32) (_ BitVec 32) V!6029 V!6029 (_ BitVec 32) Int) ListLongMap!2611)

(assert (=> b!199474 (= lt!98384 (getCurrentListMap!907 _keys!825 lt!98387 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98389 () ListLongMap!2611)

(declare-fun lt!98388 () ListLongMap!2611)

(assert (=> b!199474 (and (= lt!98389 lt!98388) (= lt!98388 lt!98389))))

(declare-fun lt!98386 () ListLongMap!2611)

(declare-fun v!520 () V!6029)

(declare-fun +!338 (ListLongMap!2611 tuple2!3684) ListLongMap!2611)

(assert (=> b!199474 (= lt!98388 (+!338 lt!98386 (tuple2!3685 k!843 v!520)))))

(declare-datatypes ((Unit!5985 0))(
  ( (Unit!5986) )
))
(declare-fun lt!98385 () Unit!5985)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!20 (array!8814 array!8816 (_ BitVec 32) (_ BitVec 32) V!6029 V!6029 (_ BitVec 32) (_ BitVec 64) V!6029 (_ BitVec 32) Int) Unit!5985)

(assert (=> b!199474 (= lt!98385 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!20 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!278 (array!8814 array!8816 (_ BitVec 32) (_ BitVec 32) V!6029 V!6029 (_ BitVec 32) Int) ListLongMap!2611)

(assert (=> b!199474 (= lt!98389 (getCurrentListMapNoExtraKeys!278 _keys!825 lt!98387 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199474 (= lt!98387 (array!8817 (store (arr!4158 _values!649) i!601 (ValueCellFull!2050 v!520)) (size!4483 _values!649)))))

(assert (=> b!199474 (= lt!98386 (getCurrentListMapNoExtraKeys!278 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199475 () Bool)

(declare-fun res!94837 () Bool)

(assert (=> b!199475 (=> (not res!94837) (not e!130942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8814 (_ BitVec 32)) Bool)

(assert (=> b!199475 (= res!94837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!94838 () Bool)

(assert (=> start!20284 (=> (not res!94838) (not e!130942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20284 (= res!94838 (validMask!0 mask!1149))))

(assert (=> start!20284 e!130942))

(declare-fun e!130943 () Bool)

(declare-fun array_inv!2721 (array!8816) Bool)

(assert (=> start!20284 (and (array_inv!2721 _values!649) e!130943)))

(assert (=> start!20284 true))

(assert (=> start!20284 tp_is_empty!4787))

(declare-fun array_inv!2722 (array!8814) Bool)

(assert (=> start!20284 (array_inv!2722 _keys!825)))

(assert (=> start!20284 tp!17825))

(declare-fun b!199476 () Bool)

(declare-fun res!94840 () Bool)

(assert (=> b!199476 (=> (not res!94840) (not e!130942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199476 (= res!94840 (validKeyInArray!0 k!843))))

(declare-fun b!199477 () Bool)

(declare-fun e!130941 () Bool)

(assert (=> b!199477 (= e!130943 (and e!130941 mapRes!8249))))

(declare-fun condMapEmpty!8249 () Bool)

(declare-fun mapDefault!8249 () ValueCell!2050)

