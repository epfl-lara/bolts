; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71058 () Bool)

(assert start!71058)

(declare-fun b_free!13237 () Bool)

(declare-fun b_next!13237 () Bool)

(assert (=> start!71058 (= b_free!13237 (not b_next!13237))))

(declare-fun tp!46465 () Bool)

(declare-fun b_and!22159 () Bool)

(assert (=> start!71058 (= tp!46465 b_and!22159)))

(declare-fun mapIsEmpty!24040 () Bool)

(declare-fun mapRes!24040 () Bool)

(assert (=> mapIsEmpty!24040 mapRes!24040))

(declare-fun b!824725 () Bool)

(declare-fun res!562373 () Bool)

(declare-fun e!458963 () Bool)

(assert (=> b!824725 (=> (not res!562373) (not e!458963))))

(declare-datatypes ((array!46040 0))(
  ( (array!46041 (arr!22063 (Array (_ BitVec 32) (_ BitVec 64))) (size!22484 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46040)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46040 (_ BitVec 32)) Bool)

(assert (=> b!824725 (= res!562373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824726 () Bool)

(declare-fun e!458960 () Bool)

(assert (=> b!824726 (= e!458963 (not e!458960))))

(declare-fun res!562372 () Bool)

(assert (=> b!824726 (=> res!562372 e!458960)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824726 (= res!562372 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24931 0))(
  ( (V!24932 (val!7521 Int)) )
))
(declare-datatypes ((tuple2!9950 0))(
  ( (tuple2!9951 (_1!4985 (_ BitVec 64)) (_2!4985 V!24931)) )
))
(declare-datatypes ((List!15799 0))(
  ( (Nil!15796) (Cons!15795 (h!16924 tuple2!9950) (t!22150 List!15799)) )
))
(declare-datatypes ((ListLongMap!8787 0))(
  ( (ListLongMap!8788 (toList!4409 List!15799)) )
))
(declare-fun lt!371994 () ListLongMap!8787)

(declare-fun lt!371993 () ListLongMap!8787)

(assert (=> b!824726 (= lt!371994 lt!371993)))

(declare-datatypes ((Unit!28260 0))(
  ( (Unit!28261) )
))
(declare-fun lt!371995 () Unit!28260)

(declare-fun zeroValueBefore!34 () V!24931)

(declare-fun zeroValueAfter!34 () V!24931)

(declare-fun minValue!754 () V!24931)

(declare-datatypes ((ValueCell!7058 0))(
  ( (ValueCellFull!7058 (v!9950 V!24931)) (EmptyCell!7058) )
))
(declare-datatypes ((array!46042 0))(
  ( (array!46043 (arr!22064 (Array (_ BitVec 32) ValueCell!7058)) (size!22485 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46042)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!545 (array!46040 array!46042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24931 V!24931 V!24931 V!24931 (_ BitVec 32) Int) Unit!28260)

(assert (=> b!824726 (= lt!371995 (lemmaNoChangeToArrayThenSameMapNoExtras!545 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2429 (array!46040 array!46042 (_ BitVec 32) (_ BitVec 32) V!24931 V!24931 (_ BitVec 32) Int) ListLongMap!8787)

(assert (=> b!824726 (= lt!371993 (getCurrentListMapNoExtraKeys!2429 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824726 (= lt!371994 (getCurrentListMapNoExtraKeys!2429 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24040 () Bool)

(declare-fun tp!46464 () Bool)

(declare-fun e!458962 () Bool)

(assert (=> mapNonEmpty!24040 (= mapRes!24040 (and tp!46464 e!458962))))

(declare-fun mapRest!24040 () (Array (_ BitVec 32) ValueCell!7058))

(declare-fun mapKey!24040 () (_ BitVec 32))

(declare-fun mapValue!24040 () ValueCell!7058)

(assert (=> mapNonEmpty!24040 (= (arr!22064 _values!788) (store mapRest!24040 mapKey!24040 mapValue!24040))))

(declare-fun b!824727 () Bool)

(assert (=> b!824727 (= e!458960 (bvsle #b00000000000000000000000000000000 (size!22484 _keys!976)))))

(declare-fun lt!371992 () ListLongMap!8787)

(declare-fun getCurrentListMap!2521 (array!46040 array!46042 (_ BitVec 32) (_ BitVec 32) V!24931 V!24931 (_ BitVec 32) Int) ListLongMap!8787)

(assert (=> b!824727 (= lt!371992 (getCurrentListMap!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824728 () Bool)

(declare-fun e!458964 () Bool)

(declare-fun e!458965 () Bool)

(assert (=> b!824728 (= e!458964 (and e!458965 mapRes!24040))))

(declare-fun condMapEmpty!24040 () Bool)

(declare-fun mapDefault!24040 () ValueCell!7058)

