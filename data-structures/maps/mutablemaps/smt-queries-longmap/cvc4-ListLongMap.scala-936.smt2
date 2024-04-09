; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20728 () Bool)

(assert start!20728)

(declare-fun b_free!5375 () Bool)

(declare-fun b_next!5375 () Bool)

(assert (=> start!20728 (= b_free!5375 (not b_next!5375))))

(declare-fun tp!19156 () Bool)

(declare-fun b_and!12139 () Bool)

(assert (=> start!20728 (= tp!19156 b_and!12139)))

(declare-fun b!207192 () Bool)

(declare-datatypes ((array!9670 0))(
  ( (array!9671 (arr!4585 (Array (_ BitVec 32) (_ BitVec 64))) (size!4910 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9670)

(declare-fun e!135306 () Bool)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun lt!106161 () Bool)

(declare-datatypes ((V!6621 0))(
  ( (V!6622 (val!2660 Int)) )
))
(declare-datatypes ((tuple2!4036 0))(
  ( (tuple2!4037 (_1!2028 (_ BitVec 64)) (_2!2028 V!6621)) )
))
(declare-datatypes ((List!2951 0))(
  ( (Nil!2948) (Cons!2947 (h!3589 tuple2!4036) (t!7890 List!2951)) )
))
(declare-datatypes ((ListLongMap!2963 0))(
  ( (ListLongMap!2964 (toList!1497 List!2951)) )
))
(declare-fun lt!106158 () ListLongMap!2963)

(declare-fun lt!106159 () ListLongMap!2963)

(assert (=> b!207192 (= e!135306 (not (or (and (not lt!106161) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!106161) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!106161) (not (= lt!106158 lt!106159)) (bvsle #b00000000000000000000000000000000 (size!4910 _keys!825)))))))

(assert (=> b!207192 (= lt!106161 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((ValueCell!2272 0))(
  ( (ValueCellFull!2272 (v!4626 V!6621)) (EmptyCell!2272) )
))
(declare-datatypes ((array!9672 0))(
  ( (array!9673 (arr!4586 (Array (_ BitVec 32) ValueCell!2272)) (size!4911 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9672)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun lt!106164 () ListLongMap!2963)

(declare-fun zeroValue!615 () V!6621)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6621)

(declare-fun getCurrentListMap!1059 (array!9670 array!9672 (_ BitVec 32) (_ BitVec 32) V!6621 V!6621 (_ BitVec 32) Int) ListLongMap!2963)

(assert (=> b!207192 (= lt!106164 (getCurrentListMap!1059 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106163 () array!9672)

(assert (=> b!207192 (= lt!106158 (getCurrentListMap!1059 _keys!825 lt!106163 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106162 () ListLongMap!2963)

(assert (=> b!207192 (and (= lt!106159 lt!106162) (= lt!106162 lt!106159))))

(declare-fun lt!106165 () ListLongMap!2963)

(declare-fun v!520 () V!6621)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!514 (ListLongMap!2963 tuple2!4036) ListLongMap!2963)

(assert (=> b!207192 (= lt!106162 (+!514 lt!106165 (tuple2!4037 k!843 v!520)))))

(declare-datatypes ((Unit!6323 0))(
  ( (Unit!6324) )
))
(declare-fun lt!106160 () Unit!6323)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!172 (array!9670 array!9672 (_ BitVec 32) (_ BitVec 32) V!6621 V!6621 (_ BitVec 32) (_ BitVec 64) V!6621 (_ BitVec 32) Int) Unit!6323)

(assert (=> b!207192 (= lt!106160 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!172 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!430 (array!9670 array!9672 (_ BitVec 32) (_ BitVec 32) V!6621 V!6621 (_ BitVec 32) Int) ListLongMap!2963)

(assert (=> b!207192 (= lt!106159 (getCurrentListMapNoExtraKeys!430 _keys!825 lt!106163 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207192 (= lt!106163 (array!9673 (store (arr!4586 _values!649) i!601 (ValueCellFull!2272 v!520)) (size!4911 _values!649)))))

(assert (=> b!207192 (= lt!106165 (getCurrentListMapNoExtraKeys!430 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207193 () Bool)

(declare-fun res!100559 () Bool)

(assert (=> b!207193 (=> (not res!100559) (not e!135306))))

(assert (=> b!207193 (= res!100559 (and (= (size!4911 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4910 _keys!825) (size!4911 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207194 () Bool)

(declare-fun res!100560 () Bool)

(assert (=> b!207194 (=> (not res!100560) (not e!135306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9670 (_ BitVec 32)) Bool)

(assert (=> b!207194 (= res!100560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207195 () Bool)

(declare-fun res!100561 () Bool)

(assert (=> b!207195 (=> (not res!100561) (not e!135306))))

(assert (=> b!207195 (= res!100561 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4910 _keys!825))))))

(declare-fun b!207196 () Bool)

(declare-fun res!100564 () Bool)

(assert (=> b!207196 (=> (not res!100564) (not e!135306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207196 (= res!100564 (validKeyInArray!0 k!843))))

(declare-fun b!207197 () Bool)

(declare-fun res!100558 () Bool)

(assert (=> b!207197 (=> (not res!100558) (not e!135306))))

(assert (=> b!207197 (= res!100558 (= (select (arr!4585 _keys!825) i!601) k!843))))

(declare-fun b!207198 () Bool)

(declare-fun e!135310 () Bool)

(declare-fun tp_is_empty!5231 () Bool)

(assert (=> b!207198 (= e!135310 tp_is_empty!5231)))

(declare-fun mapIsEmpty!8915 () Bool)

(declare-fun mapRes!8915 () Bool)

(assert (=> mapIsEmpty!8915 mapRes!8915))

(declare-fun b!207199 () Bool)

(declare-fun e!135307 () Bool)

(assert (=> b!207199 (= e!135307 tp_is_empty!5231)))

(declare-fun res!100563 () Bool)

(assert (=> start!20728 (=> (not res!100563) (not e!135306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20728 (= res!100563 (validMask!0 mask!1149))))

(assert (=> start!20728 e!135306))

(declare-fun e!135308 () Bool)

(declare-fun array_inv!3027 (array!9672) Bool)

(assert (=> start!20728 (and (array_inv!3027 _values!649) e!135308)))

(assert (=> start!20728 true))

(assert (=> start!20728 tp_is_empty!5231))

(declare-fun array_inv!3028 (array!9670) Bool)

(assert (=> start!20728 (array_inv!3028 _keys!825)))

(assert (=> start!20728 tp!19156))

(declare-fun mapNonEmpty!8915 () Bool)

(declare-fun tp!19157 () Bool)

(assert (=> mapNonEmpty!8915 (= mapRes!8915 (and tp!19157 e!135310))))

(declare-fun mapKey!8915 () (_ BitVec 32))

(declare-fun mapRest!8915 () (Array (_ BitVec 32) ValueCell!2272))

(declare-fun mapValue!8915 () ValueCell!2272)

(assert (=> mapNonEmpty!8915 (= (arr!4586 _values!649) (store mapRest!8915 mapKey!8915 mapValue!8915))))

(declare-fun b!207200 () Bool)

(assert (=> b!207200 (= e!135308 (and e!135307 mapRes!8915))))

(declare-fun condMapEmpty!8915 () Bool)

(declare-fun mapDefault!8915 () ValueCell!2272)

