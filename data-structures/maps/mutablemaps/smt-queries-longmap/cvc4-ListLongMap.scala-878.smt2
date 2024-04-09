; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20380 () Bool)

(assert start!20380)

(declare-fun b_free!5027 () Bool)

(declare-fun b_next!5027 () Bool)

(assert (=> start!20380 (= b_free!5027 (not b_next!5027))))

(declare-fun tp!18113 () Bool)

(declare-fun b_and!11791 () Bool)

(assert (=> start!20380 (= tp!18113 b_and!11791)))

(declare-fun b!201070 () Bool)

(declare-fun e!131816 () Bool)

(declare-fun tp_is_empty!4883 () Bool)

(assert (=> b!201070 (= e!131816 tp_is_empty!4883)))

(declare-fun b!201071 () Bool)

(declare-fun res!96005 () Bool)

(declare-fun e!131815 () Bool)

(assert (=> b!201071 (=> (not res!96005) (not e!131815))))

(declare-datatypes ((array!8994 0))(
  ( (array!8995 (arr!4247 (Array (_ BitVec 32) (_ BitVec 64))) (size!4572 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8994)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8994 (_ BitVec 32)) Bool)

(assert (=> b!201071 (= res!96005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201072 () Bool)

(declare-fun e!131814 () Bool)

(assert (=> b!201072 (= e!131814 tp_is_empty!4883)))

(declare-fun b!201073 () Bool)

(declare-fun e!131813 () Bool)

(assert (=> b!201073 (= e!131813 true)))

(declare-datatypes ((V!6157 0))(
  ( (V!6158 (val!2486 Int)) )
))
(declare-datatypes ((tuple2!3758 0))(
  ( (tuple2!3759 (_1!1889 (_ BitVec 64)) (_2!1889 V!6157)) )
))
(declare-datatypes ((List!2698 0))(
  ( (Nil!2695) (Cons!2694 (h!3336 tuple2!3758) (t!7637 List!2698)) )
))
(declare-datatypes ((ListLongMap!2685 0))(
  ( (ListLongMap!2686 (toList!1358 List!2698)) )
))
(declare-fun lt!99960 () ListLongMap!2685)

(declare-fun lt!99961 () ListLongMap!2685)

(declare-fun lt!99970 () tuple2!3758)

(declare-fun lt!99971 () tuple2!3758)

(declare-fun +!375 (ListLongMap!2685 tuple2!3758) ListLongMap!2685)

(assert (=> b!201073 (= (+!375 lt!99961 lt!99970) (+!375 lt!99960 lt!99971))))

(declare-fun minValue!615 () V!6157)

(declare-fun lt!99969 () ListLongMap!2685)

(declare-fun v!520 () V!6157)

(declare-fun k!843 () (_ BitVec 64))

(declare-datatypes ((Unit!6057 0))(
  ( (Unit!6058) )
))
(declare-fun lt!99959 () Unit!6057)

(declare-fun addCommutativeForDiffKeys!96 (ListLongMap!2685 (_ BitVec 64) V!6157 (_ BitVec 64) V!6157) Unit!6057)

(assert (=> b!201073 (= lt!99959 (addCommutativeForDiffKeys!96 lt!99969 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201074 () Bool)

(declare-fun res!96006 () Bool)

(assert (=> b!201074 (=> (not res!96006) (not e!131815))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201074 (= res!96006 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4572 _keys!825))))))

(declare-fun b!201075 () Bool)

(declare-fun e!131818 () Bool)

(assert (=> b!201075 (= e!131815 (not e!131818))))

(declare-fun res!96007 () Bool)

(assert (=> b!201075 (=> res!96007 e!131818)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201075 (= res!96007 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2098 0))(
  ( (ValueCellFull!2098 (v!4452 V!6157)) (EmptyCell!2098) )
))
(declare-datatypes ((array!8996 0))(
  ( (array!8997 (arr!4248 (Array (_ BitVec 32) ValueCell!2098)) (size!4573 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8996)

(declare-fun lt!99972 () ListLongMap!2685)

(declare-fun zeroValue!615 () V!6157)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!942 (array!8994 array!8996 (_ BitVec 32) (_ BitVec 32) V!6157 V!6157 (_ BitVec 32) Int) ListLongMap!2685)

(assert (=> b!201075 (= lt!99972 (getCurrentListMap!942 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99965 () array!8996)

(declare-fun lt!99967 () ListLongMap!2685)

(assert (=> b!201075 (= lt!99967 (getCurrentListMap!942 _keys!825 lt!99965 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99962 () ListLongMap!2685)

(declare-fun lt!99973 () ListLongMap!2685)

(assert (=> b!201075 (and (= lt!99962 lt!99973) (= lt!99973 lt!99962))))

(declare-fun lt!99966 () ListLongMap!2685)

(assert (=> b!201075 (= lt!99973 (+!375 lt!99966 lt!99971))))

(assert (=> b!201075 (= lt!99971 (tuple2!3759 k!843 v!520))))

(declare-fun lt!99963 () Unit!6057)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!55 (array!8994 array!8996 (_ BitVec 32) (_ BitVec 32) V!6157 V!6157 (_ BitVec 32) (_ BitVec 64) V!6157 (_ BitVec 32) Int) Unit!6057)

(assert (=> b!201075 (= lt!99963 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!55 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!313 (array!8994 array!8996 (_ BitVec 32) (_ BitVec 32) V!6157 V!6157 (_ BitVec 32) Int) ListLongMap!2685)

(assert (=> b!201075 (= lt!99962 (getCurrentListMapNoExtraKeys!313 _keys!825 lt!99965 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201075 (= lt!99965 (array!8997 (store (arr!4248 _values!649) i!601 (ValueCellFull!2098 v!520)) (size!4573 _values!649)))))

(assert (=> b!201075 (= lt!99966 (getCurrentListMapNoExtraKeys!313 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8393 () Bool)

(declare-fun mapRes!8393 () Bool)

(assert (=> mapIsEmpty!8393 mapRes!8393))

(declare-fun mapNonEmpty!8393 () Bool)

(declare-fun tp!18112 () Bool)

(assert (=> mapNonEmpty!8393 (= mapRes!8393 (and tp!18112 e!131816))))

(declare-fun mapValue!8393 () ValueCell!2098)

(declare-fun mapRest!8393 () (Array (_ BitVec 32) ValueCell!2098))

(declare-fun mapKey!8393 () (_ BitVec 32))

(assert (=> mapNonEmpty!8393 (= (arr!4248 _values!649) (store mapRest!8393 mapKey!8393 mapValue!8393))))

(declare-fun b!201076 () Bool)

(declare-fun res!96004 () Bool)

(assert (=> b!201076 (=> (not res!96004) (not e!131815))))

(declare-datatypes ((List!2699 0))(
  ( (Nil!2696) (Cons!2695 (h!3337 (_ BitVec 64)) (t!7638 List!2699)) )
))
(declare-fun arrayNoDuplicates!0 (array!8994 (_ BitVec 32) List!2699) Bool)

(assert (=> b!201076 (= res!96004 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2696))))

(declare-fun res!96008 () Bool)

(assert (=> start!20380 (=> (not res!96008) (not e!131815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20380 (= res!96008 (validMask!0 mask!1149))))

(assert (=> start!20380 e!131815))

(declare-fun e!131817 () Bool)

(declare-fun array_inv!2787 (array!8996) Bool)

(assert (=> start!20380 (and (array_inv!2787 _values!649) e!131817)))

(assert (=> start!20380 true))

(assert (=> start!20380 tp_is_empty!4883))

(declare-fun array_inv!2788 (array!8994) Bool)

(assert (=> start!20380 (array_inv!2788 _keys!825)))

(assert (=> start!20380 tp!18113))

(declare-fun b!201077 () Bool)

(declare-fun res!96009 () Bool)

(assert (=> b!201077 (=> (not res!96009) (not e!131815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201077 (= res!96009 (validKeyInArray!0 k!843))))

(declare-fun b!201078 () Bool)

(assert (=> b!201078 (= e!131818 e!131813)))

(declare-fun res!96002 () Bool)

(assert (=> b!201078 (=> res!96002 e!131813)))

(assert (=> b!201078 (= res!96002 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99968 () ListLongMap!2685)

(assert (=> b!201078 (= lt!99968 lt!99961)))

(assert (=> b!201078 (= lt!99961 (+!375 lt!99969 lt!99971))))

(declare-fun lt!99958 () Unit!6057)

(assert (=> b!201078 (= lt!99958 (addCommutativeForDiffKeys!96 lt!99966 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!201078 (= lt!99967 (+!375 lt!99968 lt!99970))))

(declare-fun lt!99964 () tuple2!3758)

(assert (=> b!201078 (= lt!99968 (+!375 lt!99973 lt!99964))))

(assert (=> b!201078 (= lt!99972 lt!99960)))

(assert (=> b!201078 (= lt!99960 (+!375 lt!99969 lt!99970))))

(assert (=> b!201078 (= lt!99969 (+!375 lt!99966 lt!99964))))

(assert (=> b!201078 (= lt!99967 (+!375 (+!375 lt!99962 lt!99964) lt!99970))))

(assert (=> b!201078 (= lt!99970 (tuple2!3759 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201078 (= lt!99964 (tuple2!3759 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201079 () Bool)

(assert (=> b!201079 (= e!131817 (and e!131814 mapRes!8393))))

(declare-fun condMapEmpty!8393 () Bool)

(declare-fun mapDefault!8393 () ValueCell!2098)

