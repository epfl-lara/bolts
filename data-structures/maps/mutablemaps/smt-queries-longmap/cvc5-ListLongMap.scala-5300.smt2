; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71028 () Bool)

(assert start!71028)

(declare-fun b_free!13207 () Bool)

(declare-fun b_next!13207 () Bool)

(assert (=> start!71028 (= b_free!13207 (not b_next!13207))))

(declare-fun tp!46374 () Bool)

(declare-fun b_and!22129 () Bool)

(assert (=> start!71028 (= tp!46374 b_and!22129)))

(declare-fun res!562144 () Bool)

(declare-fun e!458694 () Bool)

(assert (=> start!71028 (=> (not res!562144) (not e!458694))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71028 (= res!562144 (validMask!0 mask!1312))))

(assert (=> start!71028 e!458694))

(declare-fun tp_is_empty!14917 () Bool)

(assert (=> start!71028 tp_is_empty!14917))

(declare-datatypes ((array!45980 0))(
  ( (array!45981 (arr!22033 (Array (_ BitVec 32) (_ BitVec 64))) (size!22454 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45980)

(declare-fun array_inv!17557 (array!45980) Bool)

(assert (=> start!71028 (array_inv!17557 _keys!976)))

(assert (=> start!71028 true))

(declare-datatypes ((V!24891 0))(
  ( (V!24892 (val!7506 Int)) )
))
(declare-datatypes ((ValueCell!7043 0))(
  ( (ValueCellFull!7043 (v!9935 V!24891)) (EmptyCell!7043) )
))
(declare-datatypes ((array!45982 0))(
  ( (array!45983 (arr!22034 (Array (_ BitVec 32) ValueCell!7043)) (size!22455 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45982)

(declare-fun e!458691 () Bool)

(declare-fun array_inv!17558 (array!45982) Bool)

(assert (=> start!71028 (and (array_inv!17558 _values!788) e!458691)))

(assert (=> start!71028 tp!46374))

(declare-fun b!824365 () Bool)

(declare-fun e!458693 () Bool)

(assert (=> b!824365 (= e!458694 (not e!458693))))

(declare-fun res!562146 () Bool)

(assert (=> b!824365 (=> res!562146 e!458693)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824365 (= res!562146 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9920 0))(
  ( (tuple2!9921 (_1!4970 (_ BitVec 64)) (_2!4970 V!24891)) )
))
(declare-datatypes ((List!15775 0))(
  ( (Nil!15772) (Cons!15771 (h!16900 tuple2!9920) (t!22126 List!15775)) )
))
(declare-datatypes ((ListLongMap!8757 0))(
  ( (ListLongMap!8758 (toList!4394 List!15775)) )
))
(declare-fun lt!371813 () ListLongMap!8757)

(declare-fun lt!371815 () ListLongMap!8757)

(assert (=> b!824365 (= lt!371813 lt!371815)))

(declare-fun zeroValueBefore!34 () V!24891)

(declare-fun zeroValueAfter!34 () V!24891)

(declare-fun minValue!754 () V!24891)

(declare-datatypes ((Unit!28234 0))(
  ( (Unit!28235) )
))
(declare-fun lt!371814 () Unit!28234)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!532 (array!45980 array!45982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24891 V!24891 V!24891 V!24891 (_ BitVec 32) Int) Unit!28234)

(assert (=> b!824365 (= lt!371814 (lemmaNoChangeToArrayThenSameMapNoExtras!532 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2416 (array!45980 array!45982 (_ BitVec 32) (_ BitVec 32) V!24891 V!24891 (_ BitVec 32) Int) ListLongMap!8757)

(assert (=> b!824365 (= lt!371815 (getCurrentListMapNoExtraKeys!2416 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824365 (= lt!371813 (getCurrentListMapNoExtraKeys!2416 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23995 () Bool)

(declare-fun mapRes!23995 () Bool)

(assert (=> mapIsEmpty!23995 mapRes!23995))

(declare-fun b!824366 () Bool)

(declare-fun res!562145 () Bool)

(assert (=> b!824366 (=> (not res!562145) (not e!458694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45980 (_ BitVec 32)) Bool)

(assert (=> b!824366 (= res!562145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824367 () Bool)

(declare-fun e!458695 () Bool)

(assert (=> b!824367 (= e!458695 tp_is_empty!14917)))

(declare-fun mapNonEmpty!23995 () Bool)

(declare-fun tp!46375 () Bool)

(assert (=> mapNonEmpty!23995 (= mapRes!23995 (and tp!46375 e!458695))))

(declare-fun mapValue!23995 () ValueCell!7043)

(declare-fun mapRest!23995 () (Array (_ BitVec 32) ValueCell!7043))

(declare-fun mapKey!23995 () (_ BitVec 32))

(assert (=> mapNonEmpty!23995 (= (arr!22034 _values!788) (store mapRest!23995 mapKey!23995 mapValue!23995))))

(declare-fun b!824368 () Bool)

(declare-fun e!458692 () Bool)

(assert (=> b!824368 (= e!458692 tp_is_empty!14917)))

(declare-fun b!824369 () Bool)

(assert (=> b!824369 (= e!458691 (and e!458692 mapRes!23995))))

(declare-fun condMapEmpty!23995 () Bool)

(declare-fun mapDefault!23995 () ValueCell!7043)

