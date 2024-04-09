; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20584 () Bool)

(assert start!20584)

(declare-fun b_free!5231 () Bool)

(declare-fun b_next!5231 () Bool)

(assert (=> start!20584 (= b_free!5231 (not b_next!5231))))

(declare-fun tp!18725 () Bool)

(declare-fun b_and!11995 () Bool)

(assert (=> start!20584 (= tp!18725 b_and!11995)))

(declare-fun b!204760 () Bool)

(declare-fun res!98778 () Bool)

(declare-fun e!133958 () Bool)

(assert (=> b!204760 (=> (not res!98778) (not e!133958))))

(declare-datatypes ((array!9388 0))(
  ( (array!9389 (arr!4444 (Array (_ BitVec 32) (_ BitVec 64))) (size!4769 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9388)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204760 (= res!98778 (= (select (arr!4444 _keys!825) i!601) k!843))))

(declare-fun b!204761 () Bool)

(declare-fun e!133960 () Bool)

(assert (=> b!204761 (= e!133958 (not e!133960))))

(declare-fun res!98782 () Bool)

(assert (=> b!204761 (=> res!98782 e!133960)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204761 (= res!98782 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6429 0))(
  ( (V!6430 (val!2588 Int)) )
))
(declare-datatypes ((tuple2!3920 0))(
  ( (tuple2!3921 (_1!1970 (_ BitVec 64)) (_2!1970 V!6429)) )
))
(declare-datatypes ((List!2842 0))(
  ( (Nil!2839) (Cons!2838 (h!3480 tuple2!3920) (t!7781 List!2842)) )
))
(declare-datatypes ((ListLongMap!2847 0))(
  ( (ListLongMap!2848 (toList!1439 List!2842)) )
))
(declare-fun lt!103961 () ListLongMap!2847)

(declare-datatypes ((ValueCell!2200 0))(
  ( (ValueCellFull!2200 (v!4554 V!6429)) (EmptyCell!2200) )
))
(declare-datatypes ((array!9390 0))(
  ( (array!9391 (arr!4445 (Array (_ BitVec 32) ValueCell!2200)) (size!4770 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9390)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6429)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6429)

(declare-fun getCurrentListMap!1007 (array!9388 array!9390 (_ BitVec 32) (_ BitVec 32) V!6429 V!6429 (_ BitVec 32) Int) ListLongMap!2847)

(assert (=> b!204761 (= lt!103961 (getCurrentListMap!1007 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103967 () array!9390)

(declare-fun lt!103964 () ListLongMap!2847)

(assert (=> b!204761 (= lt!103964 (getCurrentListMap!1007 _keys!825 lt!103967 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103966 () ListLongMap!2847)

(declare-fun lt!103963 () ListLongMap!2847)

(assert (=> b!204761 (and (= lt!103966 lt!103963) (= lt!103963 lt!103966))))

(declare-fun lt!103969 () ListLongMap!2847)

(declare-fun lt!103962 () tuple2!3920)

(declare-fun +!456 (ListLongMap!2847 tuple2!3920) ListLongMap!2847)

(assert (=> b!204761 (= lt!103963 (+!456 lt!103969 lt!103962))))

(declare-fun v!520 () V!6429)

(assert (=> b!204761 (= lt!103962 (tuple2!3921 k!843 v!520))))

(declare-datatypes ((Unit!6211 0))(
  ( (Unit!6212) )
))
(declare-fun lt!103959 () Unit!6211)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!120 (array!9388 array!9390 (_ BitVec 32) (_ BitVec 32) V!6429 V!6429 (_ BitVec 32) (_ BitVec 64) V!6429 (_ BitVec 32) Int) Unit!6211)

(assert (=> b!204761 (= lt!103959 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!120 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!378 (array!9388 array!9390 (_ BitVec 32) (_ BitVec 32) V!6429 V!6429 (_ BitVec 32) Int) ListLongMap!2847)

(assert (=> b!204761 (= lt!103966 (getCurrentListMapNoExtraKeys!378 _keys!825 lt!103967 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204761 (= lt!103967 (array!9391 (store (arr!4445 _values!649) i!601 (ValueCellFull!2200 v!520)) (size!4770 _values!649)))))

(assert (=> b!204761 (= lt!103969 (getCurrentListMapNoExtraKeys!378 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204762 () Bool)

(declare-fun res!98781 () Bool)

(assert (=> b!204762 (=> (not res!98781) (not e!133958))))

(declare-datatypes ((List!2843 0))(
  ( (Nil!2840) (Cons!2839 (h!3481 (_ BitVec 64)) (t!7782 List!2843)) )
))
(declare-fun arrayNoDuplicates!0 (array!9388 (_ BitVec 32) List!2843) Bool)

(assert (=> b!204762 (= res!98781 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2840))))

(declare-fun b!204763 () Bool)

(declare-fun e!133956 () Bool)

(declare-fun tp_is_empty!5087 () Bool)

(assert (=> b!204763 (= e!133956 tp_is_empty!5087)))

(declare-fun b!204764 () Bool)

(declare-fun e!133954 () Bool)

(declare-fun e!133959 () Bool)

(declare-fun mapRes!8699 () Bool)

(assert (=> b!204764 (= e!133954 (and e!133959 mapRes!8699))))

(declare-fun condMapEmpty!8699 () Bool)

(declare-fun mapDefault!8699 () ValueCell!2200)

