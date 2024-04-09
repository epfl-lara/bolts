; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21094 () Bool)

(assert start!21094)

(declare-fun b_free!5593 () Bool)

(declare-fun b_next!5593 () Bool)

(assert (=> start!21094 (= b_free!5593 (not b_next!5593))))

(declare-fun tp!19841 () Bool)

(declare-fun b_and!12441 () Bool)

(assert (=> start!21094 (= tp!19841 b_and!12441)))

(declare-fun b!212047 () Bool)

(declare-fun res!103650 () Bool)

(declare-fun e!138000 () Bool)

(assert (=> b!212047 (=> (not res!103650) (not e!138000))))

(declare-datatypes ((array!10112 0))(
  ( (array!10113 (arr!4799 (Array (_ BitVec 32) (_ BitVec 64))) (size!5124 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10112)

(declare-datatypes ((List!3104 0))(
  ( (Nil!3101) (Cons!3100 (h!3742 (_ BitVec 64)) (t!8057 List!3104)) )
))
(declare-fun arrayNoDuplicates!0 (array!10112 (_ BitVec 32) List!3104) Bool)

(assert (=> b!212047 (= res!103650 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3101))))

(declare-fun b!212048 () Bool)

(declare-fun e!138004 () Bool)

(declare-fun e!138002 () Bool)

(assert (=> b!212048 (= e!138004 e!138002)))

(declare-fun res!103657 () Bool)

(assert (=> b!212048 (=> res!103657 e!138002)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!212048 (= res!103657 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6921 0))(
  ( (V!6922 (val!2772 Int)) )
))
(declare-datatypes ((tuple2!4190 0))(
  ( (tuple2!4191 (_1!2105 (_ BitVec 64)) (_2!2105 V!6921)) )
))
(declare-datatypes ((List!3105 0))(
  ( (Nil!3102) (Cons!3101 (h!3743 tuple2!4190) (t!8058 List!3105)) )
))
(declare-datatypes ((ListLongMap!3117 0))(
  ( (ListLongMap!3118 (toList!1574 List!3105)) )
))
(declare-fun lt!109256 () ListLongMap!3117)

(declare-fun lt!109259 () ListLongMap!3117)

(assert (=> b!212048 (= lt!109256 lt!109259)))

(declare-fun lt!109258 () ListLongMap!3117)

(declare-fun lt!109261 () tuple2!4190)

(declare-fun +!567 (ListLongMap!3117 tuple2!4190) ListLongMap!3117)

(assert (=> b!212048 (= lt!109259 (+!567 lt!109258 lt!109261))))

(declare-fun lt!109262 () ListLongMap!3117)

(declare-fun lt!109260 () ListLongMap!3117)

(assert (=> b!212048 (= lt!109262 lt!109260)))

(declare-fun lt!109255 () ListLongMap!3117)

(assert (=> b!212048 (= lt!109260 (+!567 lt!109255 lt!109261))))

(declare-fun lt!109263 () ListLongMap!3117)

(assert (=> b!212048 (= lt!109256 (+!567 lt!109263 lt!109261))))

(declare-fun zeroValue!615 () V!6921)

(assert (=> b!212048 (= lt!109261 (tuple2!4191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!9272 () Bool)

(declare-fun mapRes!9272 () Bool)

(declare-fun tp!19840 () Bool)

(declare-fun e!138003 () Bool)

(assert (=> mapNonEmpty!9272 (= mapRes!9272 (and tp!19840 e!138003))))

(declare-datatypes ((ValueCell!2384 0))(
  ( (ValueCellFull!2384 (v!4766 V!6921)) (EmptyCell!2384) )
))
(declare-fun mapRest!9272 () (Array (_ BitVec 32) ValueCell!2384))

(declare-fun mapValue!9272 () ValueCell!2384)

(declare-fun mapKey!9272 () (_ BitVec 32))

(declare-datatypes ((array!10114 0))(
  ( (array!10115 (arr!4800 (Array (_ BitVec 32) ValueCell!2384)) (size!5125 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10114)

(assert (=> mapNonEmpty!9272 (= (arr!4800 _values!649) (store mapRest!9272 mapKey!9272 mapValue!9272))))

(declare-fun b!212049 () Bool)

(declare-fun e!137998 () Bool)

(declare-fun tp_is_empty!5455 () Bool)

(assert (=> b!212049 (= e!137998 tp_is_empty!5455)))

(declare-fun b!212050 () Bool)

(assert (=> b!212050 (= e!138000 (not e!138004))))

(declare-fun res!103656 () Bool)

(assert (=> b!212050 (=> res!103656 e!138004)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212050 (= res!103656 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6921)

(declare-fun getCurrentListMap!1102 (array!10112 array!10114 (_ BitVec 32) (_ BitVec 32) V!6921 V!6921 (_ BitVec 32) Int) ListLongMap!3117)

(assert (=> b!212050 (= lt!109262 (getCurrentListMap!1102 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109257 () array!10114)

(assert (=> b!212050 (= lt!109256 (getCurrentListMap!1102 _keys!825 lt!109257 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212050 (and (= lt!109263 lt!109258) (= lt!109258 lt!109263))))

(declare-fun lt!109254 () tuple2!4190)

(assert (=> b!212050 (= lt!109258 (+!567 lt!109255 lt!109254))))

(declare-fun v!520 () V!6921)

(assert (=> b!212050 (= lt!109254 (tuple2!4191 k!843 v!520))))

(declare-datatypes ((Unit!6435 0))(
  ( (Unit!6436) )
))
(declare-fun lt!109264 () Unit!6435)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!219 (array!10112 array!10114 (_ BitVec 32) (_ BitVec 32) V!6921 V!6921 (_ BitVec 32) (_ BitVec 64) V!6921 (_ BitVec 32) Int) Unit!6435)

(assert (=> b!212050 (= lt!109264 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!219 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!501 (array!10112 array!10114 (_ BitVec 32) (_ BitVec 32) V!6921 V!6921 (_ BitVec 32) Int) ListLongMap!3117)

(assert (=> b!212050 (= lt!109263 (getCurrentListMapNoExtraKeys!501 _keys!825 lt!109257 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212050 (= lt!109257 (array!10115 (store (arr!4800 _values!649) i!601 (ValueCellFull!2384 v!520)) (size!5125 _values!649)))))

(assert (=> b!212050 (= lt!109255 (getCurrentListMapNoExtraKeys!501 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212051 () Bool)

(declare-fun res!103649 () Bool)

(assert (=> b!212051 (=> (not res!103649) (not e!138000))))

(assert (=> b!212051 (= res!103649 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5124 _keys!825))))))

(declare-fun res!103653 () Bool)

(assert (=> start!21094 (=> (not res!103653) (not e!138000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21094 (= res!103653 (validMask!0 mask!1149))))

(assert (=> start!21094 e!138000))

(declare-fun e!137999 () Bool)

(declare-fun array_inv!3165 (array!10114) Bool)

(assert (=> start!21094 (and (array_inv!3165 _values!649) e!137999)))

(assert (=> start!21094 true))

(assert (=> start!21094 tp_is_empty!5455))

(declare-fun array_inv!3166 (array!10112) Bool)

(assert (=> start!21094 (array_inv!3166 _keys!825)))

(assert (=> start!21094 tp!19841))

(declare-fun b!212052 () Bool)

(assert (=> b!212052 (= e!138003 tp_is_empty!5455)))

(declare-fun b!212053 () Bool)

(declare-fun res!103651 () Bool)

(assert (=> b!212053 (=> (not res!103651) (not e!138000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212053 (= res!103651 (validKeyInArray!0 k!843))))

(declare-fun b!212054 () Bool)

(assert (=> b!212054 (= e!138002 (= (+!567 lt!109262 lt!109254) lt!109256))))

(assert (=> b!212054 (= lt!109259 (+!567 lt!109260 lt!109254))))

(declare-fun lt!109253 () Unit!6435)

(declare-fun addCommutativeForDiffKeys!200 (ListLongMap!3117 (_ BitVec 64) V!6921 (_ BitVec 64) V!6921) Unit!6435)

(assert (=> b!212054 (= lt!109253 (addCommutativeForDiffKeys!200 lt!109255 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!212055 () Bool)

(assert (=> b!212055 (= e!137999 (and e!137998 mapRes!9272))))

(declare-fun condMapEmpty!9272 () Bool)

(declare-fun mapDefault!9272 () ValueCell!2384)

