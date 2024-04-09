; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69980 () Bool)

(assert start!69980)

(declare-fun b_free!12389 () Bool)

(declare-fun b_next!12389 () Bool)

(assert (=> start!69980 (= b_free!12389 (not b_next!12389))))

(declare-fun tp!43879 () Bool)

(declare-fun b_and!21175 () Bool)

(assert (=> start!69980 (= tp!43879 b_and!21175)))

(declare-fun b!813007 () Bool)

(declare-fun e!450497 () Bool)

(assert (=> b!813007 (= e!450497 false)))

(declare-datatypes ((V!23799 0))(
  ( (V!23800 (val!7097 Int)) )
))
(declare-fun zeroValueBefore!34 () V!23799)

(declare-datatypes ((array!44388 0))(
  ( (array!44389 (arr!21251 (Array (_ BitVec 32) (_ BitVec 64))) (size!21672 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44388)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23799)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9298 0))(
  ( (tuple2!9299 (_1!4659 (_ BitVec 64)) (_2!4659 V!23799)) )
))
(declare-datatypes ((List!15170 0))(
  ( (Nil!15167) (Cons!15166 (h!16295 tuple2!9298) (t!21493 List!15170)) )
))
(declare-datatypes ((ListLongMap!8135 0))(
  ( (ListLongMap!8136 (toList!4083 List!15170)) )
))
(declare-fun lt!364190 () ListLongMap!8135)

(declare-datatypes ((ValueCell!6634 0))(
  ( (ValueCellFull!6634 (v!9520 V!23799)) (EmptyCell!6634) )
))
(declare-datatypes ((array!44390 0))(
  ( (array!44391 (arr!21252 (Array (_ BitVec 32) ValueCell!6634)) (size!21673 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44390)

(declare-fun getCurrentListMapNoExtraKeys!2132 (array!44388 array!44390 (_ BitVec 32) (_ BitVec 32) V!23799 V!23799 (_ BitVec 32) Int) ListLongMap!8135)

(assert (=> b!813007 (= lt!364190 (getCurrentListMapNoExtraKeys!2132 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813008 () Bool)

(declare-fun e!450493 () Bool)

(declare-fun tp_is_empty!14099 () Bool)

(assert (=> b!813008 (= e!450493 tp_is_empty!14099)))

(declare-fun res!555577 () Bool)

(assert (=> start!69980 (=> (not res!555577) (not e!450497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69980 (= res!555577 (validMask!0 mask!1312))))

(assert (=> start!69980 e!450497))

(assert (=> start!69980 tp_is_empty!14099))

(declare-fun array_inv!16995 (array!44388) Bool)

(assert (=> start!69980 (array_inv!16995 _keys!976)))

(assert (=> start!69980 true))

(declare-fun e!450496 () Bool)

(declare-fun array_inv!16996 (array!44390) Bool)

(assert (=> start!69980 (and (array_inv!16996 _values!788) e!450496)))

(assert (=> start!69980 tp!43879))

(declare-fun b!813009 () Bool)

(declare-fun res!555575 () Bool)

(assert (=> b!813009 (=> (not res!555575) (not e!450497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44388 (_ BitVec 32)) Bool)

(assert (=> b!813009 (= res!555575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813010 () Bool)

(declare-fun res!555578 () Bool)

(assert (=> b!813010 (=> (not res!555578) (not e!450497))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813010 (= res!555578 (and (= (size!21673 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21672 _keys!976) (size!21673 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22726 () Bool)

(declare-fun mapRes!22726 () Bool)

(declare-fun tp!43878 () Bool)

(assert (=> mapNonEmpty!22726 (= mapRes!22726 (and tp!43878 e!450493))))

(declare-fun mapRest!22726 () (Array (_ BitVec 32) ValueCell!6634))

(declare-fun mapKey!22726 () (_ BitVec 32))

(declare-fun mapValue!22726 () ValueCell!6634)

(assert (=> mapNonEmpty!22726 (= (arr!21252 _values!788) (store mapRest!22726 mapKey!22726 mapValue!22726))))

(declare-fun mapIsEmpty!22726 () Bool)

(assert (=> mapIsEmpty!22726 mapRes!22726))

(declare-fun b!813011 () Bool)

(declare-fun e!450495 () Bool)

(assert (=> b!813011 (= e!450496 (and e!450495 mapRes!22726))))

(declare-fun condMapEmpty!22726 () Bool)

(declare-fun mapDefault!22726 () ValueCell!6634)

