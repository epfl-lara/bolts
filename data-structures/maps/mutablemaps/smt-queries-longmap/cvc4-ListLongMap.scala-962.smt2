; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20884 () Bool)

(assert start!20884)

(declare-fun b_free!5525 () Bool)

(declare-fun b_next!5525 () Bool)

(assert (=> start!20884 (= b_free!5525 (not b_next!5525))))

(declare-fun tp!19616 () Bool)

(declare-fun b_and!12289 () Bool)

(assert (=> start!20884 (= tp!19616 b_and!12289)))

(declare-fun b!209504 () Bool)

(declare-fun res!102174 () Bool)

(declare-fun e!136489 () Bool)

(assert (=> b!209504 (=> (not res!102174) (not e!136489))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209504 (= res!102174 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!9149 () Bool)

(declare-fun mapRes!9149 () Bool)

(declare-fun tp!19615 () Bool)

(declare-fun e!136485 () Bool)

(assert (=> mapNonEmpty!9149 (= mapRes!9149 (and tp!19615 e!136485))))

(declare-datatypes ((V!6829 0))(
  ( (V!6830 (val!2738 Int)) )
))
(declare-datatypes ((ValueCell!2350 0))(
  ( (ValueCellFull!2350 (v!4704 V!6829)) (EmptyCell!2350) )
))
(declare-datatypes ((array!9970 0))(
  ( (array!9971 (arr!4735 (Array (_ BitVec 32) ValueCell!2350)) (size!5060 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9970)

(declare-fun mapValue!9149 () ValueCell!2350)

(declare-fun mapKey!9149 () (_ BitVec 32))

(declare-fun mapRest!9149 () (Array (_ BitVec 32) ValueCell!2350))

(assert (=> mapNonEmpty!9149 (= (arr!4735 _values!649) (store mapRest!9149 mapKey!9149 mapValue!9149))))

(declare-fun b!209505 () Bool)

(declare-fun res!102172 () Bool)

(assert (=> b!209505 (=> (not res!102172) (not e!136489))))

(declare-datatypes ((array!9972 0))(
  ( (array!9973 (arr!4736 (Array (_ BitVec 32) (_ BitVec 64))) (size!5061 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9972)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209505 (= res!102172 (= (select (arr!4736 _keys!825) i!601) k!843))))

(declare-fun b!209506 () Bool)

(declare-fun tp_is_empty!5387 () Bool)

(assert (=> b!209506 (= e!136485 tp_is_empty!5387)))

(declare-fun b!209507 () Bool)

(declare-fun e!136487 () Bool)

(assert (=> b!209507 (= e!136487 tp_is_empty!5387)))

(declare-fun b!209508 () Bool)

(declare-fun res!102175 () Bool)

(assert (=> b!209508 (=> (not res!102175) (not e!136489))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!209508 (= res!102175 (and (= (size!5060 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5061 _keys!825) (size!5060 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!4134 0))(
  ( (tuple2!4135 (_1!2077 (_ BitVec 64)) (_2!2077 V!6829)) )
))
(declare-datatypes ((List!3054 0))(
  ( (Nil!3051) (Cons!3050 (h!3692 tuple2!4134) (t!7993 List!3054)) )
))
(declare-datatypes ((ListLongMap!3061 0))(
  ( (ListLongMap!3062 (toList!1546 List!3054)) )
))
(declare-fun lt!107107 () ListLongMap!3061)

(declare-fun minValue!615 () V!6829)

(declare-fun b!209509 () Bool)

(declare-fun e!136488 () Bool)

(declare-fun zeroValue!615 () V!6829)

(declare-fun lt!107105 () ListLongMap!3061)

(declare-fun +!539 (ListLongMap!3061 tuple2!4134) ListLongMap!3061)

(assert (=> b!209509 (= e!136488 (= lt!107107 (+!539 (+!539 lt!107105 (tuple2!4135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (tuple2!4135 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!209511 () Bool)

(declare-fun res!102173 () Bool)

(assert (=> b!209511 (=> (not res!102173) (not e!136489))))

(declare-datatypes ((List!3055 0))(
  ( (Nil!3052) (Cons!3051 (h!3693 (_ BitVec 64)) (t!7994 List!3055)) )
))
(declare-fun arrayNoDuplicates!0 (array!9972 (_ BitVec 32) List!3055) Bool)

(assert (=> b!209511 (= res!102173 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3052))))

(declare-fun b!209512 () Bool)

(assert (=> b!209512 (= e!136489 (not e!136488))))

(declare-fun res!102171 () Bool)

(assert (=> b!209512 (=> res!102171 e!136488)))

(assert (=> b!209512 (= res!102171 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!107109 () ListLongMap!3061)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1079 (array!9972 array!9970 (_ BitVec 32) (_ BitVec 32) V!6829 V!6829 (_ BitVec 32) Int) ListLongMap!3061)

(assert (=> b!209512 (= lt!107109 (getCurrentListMap!1079 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107106 () array!9970)

(assert (=> b!209512 (= lt!107107 (getCurrentListMap!1079 _keys!825 lt!107106 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107104 () ListLongMap!3061)

(assert (=> b!209512 (and (= lt!107105 lt!107104) (= lt!107104 lt!107105))))

(declare-fun lt!107108 () ListLongMap!3061)

(declare-fun v!520 () V!6829)

(assert (=> b!209512 (= lt!107104 (+!539 lt!107108 (tuple2!4135 k!843 v!520)))))

(declare-datatypes ((Unit!6371 0))(
  ( (Unit!6372) )
))
(declare-fun lt!107110 () Unit!6371)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!196 (array!9972 array!9970 (_ BitVec 32) (_ BitVec 32) V!6829 V!6829 (_ BitVec 32) (_ BitVec 64) V!6829 (_ BitVec 32) Int) Unit!6371)

(assert (=> b!209512 (= lt!107110 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!196 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!478 (array!9972 array!9970 (_ BitVec 32) (_ BitVec 32) V!6829 V!6829 (_ BitVec 32) Int) ListLongMap!3061)

(assert (=> b!209512 (= lt!107105 (getCurrentListMapNoExtraKeys!478 _keys!825 lt!107106 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209512 (= lt!107106 (array!9971 (store (arr!4735 _values!649) i!601 (ValueCellFull!2350 v!520)) (size!5060 _values!649)))))

(assert (=> b!209512 (= lt!107108 (getCurrentListMapNoExtraKeys!478 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209513 () Bool)

(declare-fun res!102168 () Bool)

(assert (=> b!209513 (=> (not res!102168) (not e!136489))))

(assert (=> b!209513 (= res!102168 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5061 _keys!825))))))

(declare-fun b!209514 () Bool)

(declare-fun e!136484 () Bool)

(assert (=> b!209514 (= e!136484 (and e!136487 mapRes!9149))))

(declare-fun condMapEmpty!9149 () Bool)

(declare-fun mapDefault!9149 () ValueCell!2350)

