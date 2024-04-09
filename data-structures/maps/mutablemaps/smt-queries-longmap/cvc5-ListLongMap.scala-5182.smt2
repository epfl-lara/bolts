; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70102 () Bool)

(assert start!70102)

(declare-fun b_free!12499 () Bool)

(declare-fun b_next!12499 () Bool)

(assert (=> start!70102 (= b_free!12499 (not b_next!12499))))

(declare-fun tp!44211 () Bool)

(declare-fun b_and!21289 () Bool)

(assert (=> start!70102 (= tp!44211 b_and!21289)))

(declare-fun b!814235 () Bool)

(declare-fun e!451366 () Bool)

(assert (=> b!814235 (= e!451366 (not true))))

(declare-datatypes ((V!23947 0))(
  ( (V!23948 (val!7152 Int)) )
))
(declare-datatypes ((tuple2!9380 0))(
  ( (tuple2!9381 (_1!4700 (_ BitVec 64)) (_2!4700 V!23947)) )
))
(declare-datatypes ((List!15254 0))(
  ( (Nil!15251) (Cons!15250 (h!16379 tuple2!9380) (t!21579 List!15254)) )
))
(declare-datatypes ((ListLongMap!8217 0))(
  ( (ListLongMap!8218 (toList!4124 List!15254)) )
))
(declare-fun lt!364542 () ListLongMap!8217)

(declare-fun lt!364544 () ListLongMap!8217)

(assert (=> b!814235 (= lt!364542 lt!364544)))

(declare-fun zeroValueBefore!34 () V!23947)

(declare-datatypes ((array!44606 0))(
  ( (array!44607 (arr!21359 (Array (_ BitVec 32) (_ BitVec 64))) (size!21780 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44606)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23947)

(declare-datatypes ((ValueCell!6689 0))(
  ( (ValueCellFull!6689 (v!9575 V!23947)) (EmptyCell!6689) )
))
(declare-datatypes ((array!44608 0))(
  ( (array!44609 (arr!21360 (Array (_ BitVec 32) ValueCell!6689)) (size!21781 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44608)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!23947)

(declare-datatypes ((Unit!27704 0))(
  ( (Unit!27705) )
))
(declare-fun lt!364543 () Unit!27704)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!289 (array!44606 array!44608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23947 V!23947 V!23947 V!23947 (_ BitVec 32) Int) Unit!27704)

(assert (=> b!814235 (= lt!364543 (lemmaNoChangeToArrayThenSameMapNoExtras!289 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2173 (array!44606 array!44608 (_ BitVec 32) (_ BitVec 32) V!23947 V!23947 (_ BitVec 32) Int) ListLongMap!8217)

(assert (=> b!814235 (= lt!364544 (getCurrentListMapNoExtraKeys!2173 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814235 (= lt!364542 (getCurrentListMapNoExtraKeys!2173 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814236 () Bool)

(declare-fun res!556265 () Bool)

(assert (=> b!814236 (=> (not res!556265) (not e!451366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44606 (_ BitVec 32)) Bool)

(assert (=> b!814236 (= res!556265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814237 () Bool)

(declare-fun e!451367 () Bool)

(declare-fun tp_is_empty!14209 () Bool)

(assert (=> b!814237 (= e!451367 tp_is_empty!14209)))

(declare-fun b!814238 () Bool)

(declare-fun res!556262 () Bool)

(assert (=> b!814238 (=> (not res!556262) (not e!451366))))

(assert (=> b!814238 (= res!556262 (and (= (size!21781 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21780 _keys!976) (size!21781 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814239 () Bool)

(declare-fun e!451370 () Bool)

(declare-fun e!451369 () Bool)

(declare-fun mapRes!22894 () Bool)

(assert (=> b!814239 (= e!451370 (and e!451369 mapRes!22894))))

(declare-fun condMapEmpty!22894 () Bool)

(declare-fun mapDefault!22894 () ValueCell!6689)

