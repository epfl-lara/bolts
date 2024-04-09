; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20650 () Bool)

(assert start!20650)

(declare-fun b_free!5297 () Bool)

(declare-fun b_next!5297 () Bool)

(assert (=> start!20650 (= b_free!5297 (not b_next!5297))))

(declare-fun tp!18923 () Bool)

(declare-fun b_and!12061 () Bool)

(assert (=> start!20650 (= tp!18923 b_and!12061)))

(declare-fun b!205948 () Bool)

(declare-fun res!99666 () Bool)

(declare-fun e!134652 () Bool)

(assert (=> b!205948 (=> (not res!99666) (not e!134652))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9516 0))(
  ( (array!9517 (arr!4508 (Array (_ BitVec 32) (_ BitVec 64))) (size!4833 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9516)

(assert (=> b!205948 (= res!99666 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4833 _keys!825))))))

(declare-fun b!205949 () Bool)

(declare-fun res!99672 () Bool)

(assert (=> b!205949 (=> (not res!99672) (not e!134652))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!205949 (= res!99672 (= (select (arr!4508 _keys!825) i!601) k!843))))

(declare-fun b!205950 () Bool)

(declare-fun res!99669 () Bool)

(assert (=> b!205950 (=> (not res!99669) (not e!134652))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9516 (_ BitVec 32)) Bool)

(assert (=> b!205950 (= res!99669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8798 () Bool)

(declare-fun mapRes!8798 () Bool)

(declare-fun tp!18922 () Bool)

(declare-fun e!134651 () Bool)

(assert (=> mapNonEmpty!8798 (= mapRes!8798 (and tp!18922 e!134651))))

(declare-fun mapKey!8798 () (_ BitVec 32))

(declare-datatypes ((V!6517 0))(
  ( (V!6518 (val!2621 Int)) )
))
(declare-datatypes ((ValueCell!2233 0))(
  ( (ValueCellFull!2233 (v!4587 V!6517)) (EmptyCell!2233) )
))
(declare-datatypes ((array!9518 0))(
  ( (array!9519 (arr!4509 (Array (_ BitVec 32) ValueCell!2233)) (size!4834 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9518)

(declare-fun mapValue!8798 () ValueCell!2233)

(declare-fun mapRest!8798 () (Array (_ BitVec 32) ValueCell!2233))

(assert (=> mapNonEmpty!8798 (= (arr!4509 _values!649) (store mapRest!8798 mapKey!8798 mapValue!8798))))

(declare-fun b!205951 () Bool)

(declare-fun res!99671 () Bool)

(assert (=> b!205951 (=> (not res!99671) (not e!134652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205951 (= res!99671 (validKeyInArray!0 k!843))))

(declare-fun b!205952 () Bool)

(declare-fun e!134648 () Bool)

(assert (=> b!205952 (= e!134652 (not e!134648))))

(declare-fun res!99670 () Bool)

(assert (=> b!205952 (=> res!99670 e!134648)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205952 (= res!99670 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6517)

(declare-fun zeroValue!615 () V!6517)

(declare-datatypes ((tuple2!3974 0))(
  ( (tuple2!3975 (_1!1997 (_ BitVec 64)) (_2!1997 V!6517)) )
))
(declare-datatypes ((List!2891 0))(
  ( (Nil!2888) (Cons!2887 (h!3529 tuple2!3974) (t!7830 List!2891)) )
))
(declare-datatypes ((ListLongMap!2901 0))(
  ( (ListLongMap!2902 (toList!1466 List!2891)) )
))
(declare-fun lt!105149 () ListLongMap!2901)

(declare-fun getCurrentListMap!1031 (array!9516 array!9518 (_ BitVec 32) (_ BitVec 32) V!6517 V!6517 (_ BitVec 32) Int) ListLongMap!2901)

(assert (=> b!205952 (= lt!105149 (getCurrentListMap!1031 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105151 () ListLongMap!2901)

(declare-fun lt!105156 () array!9518)

(assert (=> b!205952 (= lt!105151 (getCurrentListMap!1031 _keys!825 lt!105156 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105152 () ListLongMap!2901)

(declare-fun lt!105147 () ListLongMap!2901)

(assert (=> b!205952 (and (= lt!105152 lt!105147) (= lt!105147 lt!105152))))

(declare-fun lt!105157 () ListLongMap!2901)

(declare-fun lt!105153 () tuple2!3974)

(declare-fun +!483 (ListLongMap!2901 tuple2!3974) ListLongMap!2901)

(assert (=> b!205952 (= lt!105147 (+!483 lt!105157 lt!105153))))

(declare-fun v!520 () V!6517)

(assert (=> b!205952 (= lt!105153 (tuple2!3975 k!843 v!520))))

(declare-datatypes ((Unit!6263 0))(
  ( (Unit!6264) )
))
(declare-fun lt!105150 () Unit!6263)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!144 (array!9516 array!9518 (_ BitVec 32) (_ BitVec 32) V!6517 V!6517 (_ BitVec 32) (_ BitVec 64) V!6517 (_ BitVec 32) Int) Unit!6263)

(assert (=> b!205952 (= lt!105150 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!144 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!402 (array!9516 array!9518 (_ BitVec 32) (_ BitVec 32) V!6517 V!6517 (_ BitVec 32) Int) ListLongMap!2901)

(assert (=> b!205952 (= lt!105152 (getCurrentListMapNoExtraKeys!402 _keys!825 lt!105156 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205952 (= lt!105156 (array!9519 (store (arr!4509 _values!649) i!601 (ValueCellFull!2233 v!520)) (size!4834 _values!649)))))

(assert (=> b!205952 (= lt!105157 (getCurrentListMapNoExtraKeys!402 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205953 () Bool)

(declare-fun e!134653 () Bool)

(assert (=> b!205953 (= e!134648 e!134653)))

(declare-fun res!99673 () Bool)

(assert (=> b!205953 (=> res!99673 e!134653)))

(assert (=> b!205953 (= res!99673 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!105146 () ListLongMap!2901)

(assert (=> b!205953 (= lt!105149 lt!105146)))

(declare-fun lt!105148 () tuple2!3974)

(assert (=> b!205953 (= lt!105146 (+!483 lt!105157 lt!105148))))

(declare-fun lt!105155 () ListLongMap!2901)

(assert (=> b!205953 (= lt!105151 lt!105155)))

(assert (=> b!205953 (= lt!105155 (+!483 lt!105147 lt!105148))))

(assert (=> b!205953 (= lt!105151 (+!483 lt!105152 lt!105148))))

(assert (=> b!205953 (= lt!105148 (tuple2!3975 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205954 () Bool)

(declare-fun res!99668 () Bool)

(assert (=> b!205954 (=> (not res!99668) (not e!134652))))

(assert (=> b!205954 (= res!99668 (and (= (size!4834 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4833 _keys!825) (size!4834 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205955 () Bool)

(declare-fun tp_is_empty!5153 () Bool)

(assert (=> b!205955 (= e!134651 tp_is_empty!5153)))

(declare-fun b!205957 () Bool)

(declare-fun e!134647 () Bool)

(assert (=> b!205957 (= e!134647 tp_is_empty!5153)))

(declare-fun b!205958 () Bool)

(declare-fun res!99667 () Bool)

(assert (=> b!205958 (=> (not res!99667) (not e!134652))))

(declare-datatypes ((List!2892 0))(
  ( (Nil!2889) (Cons!2888 (h!3530 (_ BitVec 64)) (t!7831 List!2892)) )
))
(declare-fun arrayNoDuplicates!0 (array!9516 (_ BitVec 32) List!2892) Bool)

(assert (=> b!205958 (= res!99667 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2889))))

(declare-fun b!205959 () Bool)

(assert (=> b!205959 (= e!134653 true)))

(assert (=> b!205959 (= lt!105155 (+!483 lt!105146 lt!105153))))

(declare-fun lt!105154 () Unit!6263)

(declare-fun addCommutativeForDiffKeys!182 (ListLongMap!2901 (_ BitVec 64) V!6517 (_ BitVec 64) V!6517) Unit!6263)

(assert (=> b!205959 (= lt!105154 (addCommutativeForDiffKeys!182 lt!105157 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8798 () Bool)

(assert (=> mapIsEmpty!8798 mapRes!8798))

(declare-fun b!205956 () Bool)

(declare-fun e!134650 () Bool)

(assert (=> b!205956 (= e!134650 (and e!134647 mapRes!8798))))

(declare-fun condMapEmpty!8798 () Bool)

(declare-fun mapDefault!8798 () ValueCell!2233)

