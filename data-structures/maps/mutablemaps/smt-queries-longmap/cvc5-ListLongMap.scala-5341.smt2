; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71396 () Bool)

(assert start!71396)

(declare-fun b_free!13453 () Bool)

(declare-fun b_next!13453 () Bool)

(assert (=> start!71396 (= b_free!13453 (not b_next!13453))))

(declare-fun tp!47133 () Bool)

(declare-fun b_and!22453 () Bool)

(assert (=> start!71396 (= tp!47133 b_and!22453)))

(declare-fun mapIsEmpty!24385 () Bool)

(declare-fun mapRes!24385 () Bool)

(assert (=> mapIsEmpty!24385 mapRes!24385))

(declare-fun mapNonEmpty!24385 () Bool)

(declare-fun tp!47134 () Bool)

(declare-fun e!461892 () Bool)

(assert (=> mapNonEmpty!24385 (= mapRes!24385 (and tp!47134 e!461892))))

(declare-datatypes ((V!25219 0))(
  ( (V!25220 (val!7629 Int)) )
))
(declare-datatypes ((ValueCell!7166 0))(
  ( (ValueCellFull!7166 (v!10063 V!25219)) (EmptyCell!7166) )
))
(declare-datatypes ((array!46466 0))(
  ( (array!46467 (arr!22269 (Array (_ BitVec 32) ValueCell!7166)) (size!22690 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46466)

(declare-fun mapValue!24385 () ValueCell!7166)

(declare-fun mapKey!24385 () (_ BitVec 32))

(declare-fun mapRest!24385 () (Array (_ BitVec 32) ValueCell!7166))

(assert (=> mapNonEmpty!24385 (= (arr!22269 _values!788) (store mapRest!24385 mapKey!24385 mapValue!24385))))

(declare-datatypes ((tuple2!10138 0))(
  ( (tuple2!10139 (_1!5079 (_ BitVec 64)) (_2!5079 V!25219)) )
))
(declare-fun lt!375671 () tuple2!10138)

(declare-fun e!461893 () Bool)

(declare-fun b!828737 () Bool)

(declare-datatypes ((List!15973 0))(
  ( (Nil!15970) (Cons!15969 (h!17098 tuple2!10138) (t!22338 List!15973)) )
))
(declare-datatypes ((ListLongMap!8975 0))(
  ( (ListLongMap!8976 (toList!4503 List!15973)) )
))
(declare-fun lt!375675 () ListLongMap!8975)

(declare-fun lt!375673 () ListLongMap!8975)

(declare-fun +!1936 (ListLongMap!8975 tuple2!10138) ListLongMap!8975)

(assert (=> b!828737 (= e!461893 (= (+!1936 lt!375675 lt!375671) lt!375673))))

(declare-fun b!828738 () Bool)

(declare-fun res!564757 () Bool)

(declare-fun e!461894 () Bool)

(assert (=> b!828738 (=> (not res!564757) (not e!461894))))

(declare-datatypes ((array!46468 0))(
  ( (array!46469 (arr!22270 (Array (_ BitVec 32) (_ BitVec 64))) (size!22691 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46468)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46468 (_ BitVec 32)) Bool)

(assert (=> b!828738 (= res!564757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828739 () Bool)

(declare-fun e!461896 () Bool)

(assert (=> b!828739 (= e!461896 e!461893)))

(declare-fun res!564756 () Bool)

(assert (=> b!828739 (=> res!564756 e!461893)))

(declare-fun lt!375670 () tuple2!10138)

(declare-fun lt!375672 () ListLongMap!8975)

(assert (=> b!828739 (= res!564756 (not (= lt!375673 (+!1936 (+!1936 lt!375672 lt!375670) lt!375671))))))

(declare-fun lt!375678 () ListLongMap!8975)

(declare-fun lt!375676 () ListLongMap!8975)

(assert (=> b!828739 (= (+!1936 lt!375678 lt!375671) (+!1936 lt!375676 lt!375671))))

(declare-fun zeroValueBefore!34 () V!25219)

(declare-datatypes ((Unit!28395 0))(
  ( (Unit!28396) )
))
(declare-fun lt!375677 () Unit!28395)

(declare-fun zeroValueAfter!34 () V!25219)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!245 (ListLongMap!8975 (_ BitVec 64) V!25219 V!25219) Unit!28395)

(assert (=> b!828739 (= lt!375677 (addSameAsAddTwiceSameKeyDiffValues!245 lt!375678 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828739 (= lt!375671 (tuple2!10139 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!461895 () Bool)

(assert (=> b!828739 e!461895))

(declare-fun res!564755 () Bool)

(assert (=> b!828739 (=> (not res!564755) (not e!461895))))

(assert (=> b!828739 (= res!564755 (= lt!375675 lt!375676))))

(assert (=> b!828739 (= lt!375676 (+!1936 lt!375678 lt!375670))))

(assert (=> b!828739 (= lt!375670 (tuple2!10139 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!25219)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2578 (array!46468 array!46466 (_ BitVec 32) (_ BitVec 32) V!25219 V!25219 (_ BitVec 32) Int) ListLongMap!8975)

(assert (=> b!828739 (= lt!375673 (getCurrentListMap!2578 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828739 (= lt!375675 (getCurrentListMap!2578 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828740 () Bool)

(declare-fun tp_is_empty!15163 () Bool)

(assert (=> b!828740 (= e!461892 tp_is_empty!15163)))

(declare-fun b!828736 () Bool)

(declare-fun e!461898 () Bool)

(declare-fun e!461897 () Bool)

(assert (=> b!828736 (= e!461898 (and e!461897 mapRes!24385))))

(declare-fun condMapEmpty!24385 () Bool)

(declare-fun mapDefault!24385 () ValueCell!7166)

