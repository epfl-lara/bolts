; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71062 () Bool)

(assert start!71062)

(declare-fun b_free!13241 () Bool)

(declare-fun b_next!13241 () Bool)

(assert (=> start!71062 (= b_free!13241 (not b_next!13241))))

(declare-fun tp!46476 () Bool)

(declare-fun b_and!22163 () Bool)

(assert (=> start!71062 (= tp!46476 b_and!22163)))

(declare-fun b!824773 () Bool)

(declare-fun res!562401 () Bool)

(declare-fun e!458998 () Bool)

(assert (=> b!824773 (=> (not res!562401) (not e!458998))))

(declare-datatypes ((array!46048 0))(
  ( (array!46049 (arr!22067 (Array (_ BitVec 32) (_ BitVec 64))) (size!22488 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46048)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46048 (_ BitVec 32)) Bool)

(assert (=> b!824773 (= res!562401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!24046 () Bool)

(declare-fun mapRes!24046 () Bool)

(declare-fun tp!46477 () Bool)

(declare-fun e!459001 () Bool)

(assert (=> mapNonEmpty!24046 (= mapRes!24046 (and tp!46477 e!459001))))

(declare-fun mapKey!24046 () (_ BitVec 32))

(declare-datatypes ((V!24935 0))(
  ( (V!24936 (val!7523 Int)) )
))
(declare-datatypes ((ValueCell!7060 0))(
  ( (ValueCellFull!7060 (v!9952 V!24935)) (EmptyCell!7060) )
))
(declare-fun mapValue!24046 () ValueCell!7060)

(declare-datatypes ((array!46050 0))(
  ( (array!46051 (arr!22068 (Array (_ BitVec 32) ValueCell!7060)) (size!22489 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46050)

(declare-fun mapRest!24046 () (Array (_ BitVec 32) ValueCell!7060))

(assert (=> mapNonEmpty!24046 (= (arr!22068 _values!788) (store mapRest!24046 mapKey!24046 mapValue!24046))))

(declare-fun mapIsEmpty!24046 () Bool)

(assert (=> mapIsEmpty!24046 mapRes!24046))

(declare-fun b!824774 () Bool)

(declare-fun e!458997 () Bool)

(assert (=> b!824774 (= e!458997 (bvsle #b00000000000000000000000000000000 (size!22488 _keys!976)))))

(declare-fun zeroValueBefore!34 () V!24935)

(declare-datatypes ((tuple2!9954 0))(
  ( (tuple2!9955 (_1!4987 (_ BitVec 64)) (_2!4987 V!24935)) )
))
(declare-datatypes ((List!15802 0))(
  ( (Nil!15799) (Cons!15798 (h!16927 tuple2!9954) (t!22153 List!15802)) )
))
(declare-datatypes ((ListLongMap!8791 0))(
  ( (ListLongMap!8792 (toList!4411 List!15802)) )
))
(declare-fun lt!372016 () ListLongMap!8791)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24935)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2523 (array!46048 array!46050 (_ BitVec 32) (_ BitVec 32) V!24935 V!24935 (_ BitVec 32) Int) ListLongMap!8791)

(assert (=> b!824774 (= lt!372016 (getCurrentListMap!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!562399 () Bool)

(assert (=> start!71062 (=> (not res!562399) (not e!458998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71062 (= res!562399 (validMask!0 mask!1312))))

(assert (=> start!71062 e!458998))

(declare-fun tp_is_empty!14951 () Bool)

(assert (=> start!71062 tp_is_empty!14951))

(declare-fun array_inv!17583 (array!46048) Bool)

(assert (=> start!71062 (array_inv!17583 _keys!976)))

(assert (=> start!71062 true))

(declare-fun e!459000 () Bool)

(declare-fun array_inv!17584 (array!46050) Bool)

(assert (=> start!71062 (and (array_inv!17584 _values!788) e!459000)))

(assert (=> start!71062 tp!46476))

(declare-fun b!824775 () Bool)

(declare-fun e!458996 () Bool)

(assert (=> b!824775 (= e!458996 tp_is_empty!14951)))

(declare-fun b!824776 () Bool)

(declare-fun res!562403 () Bool)

(assert (=> b!824776 (=> (not res!562403) (not e!458998))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824776 (= res!562403 (and (= (size!22489 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22488 _keys!976) (size!22489 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824777 () Bool)

(assert (=> b!824777 (= e!459001 tp_is_empty!14951)))

(declare-fun b!824778 () Bool)

(assert (=> b!824778 (= e!459000 (and e!458996 mapRes!24046))))

(declare-fun condMapEmpty!24046 () Bool)

(declare-fun mapDefault!24046 () ValueCell!7060)

