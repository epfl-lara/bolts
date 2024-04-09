; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70124 () Bool)

(assert start!70124)

(declare-fun b_free!12521 () Bool)

(declare-fun b_next!12521 () Bool)

(assert (=> start!70124 (= b_free!12521 (not b_next!12521))))

(declare-fun tp!44277 () Bool)

(declare-fun b_and!21311 () Bool)

(assert (=> start!70124 (= tp!44277 b_and!21311)))

(declare-fun b!814466 () Bool)

(declare-fun e!451533 () Bool)

(declare-fun tp_is_empty!14231 () Bool)

(assert (=> b!814466 (= e!451533 tp_is_empty!14231)))

(declare-fun b!814467 () Bool)

(declare-fun res!556395 () Bool)

(declare-fun e!451535 () Bool)

(assert (=> b!814467 (=> (not res!556395) (not e!451535))))

(declare-datatypes ((array!44648 0))(
  ( (array!44649 (arr!21380 (Array (_ BitVec 32) (_ BitVec 64))) (size!21801 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44648)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23975 0))(
  ( (V!23976 (val!7163 Int)) )
))
(declare-datatypes ((ValueCell!6700 0))(
  ( (ValueCellFull!6700 (v!9586 V!23975)) (EmptyCell!6700) )
))
(declare-datatypes ((array!44650 0))(
  ( (array!44651 (arr!21381 (Array (_ BitVec 32) ValueCell!6700)) (size!21802 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44650)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814467 (= res!556395 (and (= (size!21802 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21801 _keys!976) (size!21802 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!556396 () Bool)

(assert (=> start!70124 (=> (not res!556396) (not e!451535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70124 (= res!556396 (validMask!0 mask!1312))))

(assert (=> start!70124 e!451535))

(assert (=> start!70124 tp_is_empty!14231))

(declare-fun array_inv!17085 (array!44648) Bool)

(assert (=> start!70124 (array_inv!17085 _keys!976)))

(assert (=> start!70124 true))

(declare-fun e!451532 () Bool)

(declare-fun array_inv!17086 (array!44650) Bool)

(assert (=> start!70124 (and (array_inv!17086 _values!788) e!451532)))

(assert (=> start!70124 tp!44277))

(declare-fun b!814468 () Bool)

(assert (=> b!814468 (= e!451535 (not true))))

(declare-datatypes ((tuple2!9396 0))(
  ( (tuple2!9397 (_1!4708 (_ BitVec 64)) (_2!4708 V!23975)) )
))
(declare-datatypes ((List!15269 0))(
  ( (Nil!15266) (Cons!15265 (h!16394 tuple2!9396) (t!21594 List!15269)) )
))
(declare-datatypes ((ListLongMap!8233 0))(
  ( (ListLongMap!8234 (toList!4132 List!15269)) )
))
(declare-fun lt!364641 () ListLongMap!8233)

(declare-fun lt!364643 () ListLongMap!8233)

(assert (=> b!814468 (= lt!364641 lt!364643)))

(declare-fun zeroValueAfter!34 () V!23975)

(declare-fun minValue!754 () V!23975)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!23975)

(declare-datatypes ((Unit!27720 0))(
  ( (Unit!27721) )
))
(declare-fun lt!364642 () Unit!27720)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!297 (array!44648 array!44650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23975 V!23975 V!23975 V!23975 (_ BitVec 32) Int) Unit!27720)

(assert (=> b!814468 (= lt!364642 (lemmaNoChangeToArrayThenSameMapNoExtras!297 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2181 (array!44648 array!44650 (_ BitVec 32) (_ BitVec 32) V!23975 V!23975 (_ BitVec 32) Int) ListLongMap!8233)

(assert (=> b!814468 (= lt!364643 (getCurrentListMapNoExtraKeys!2181 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814468 (= lt!364641 (getCurrentListMapNoExtraKeys!2181 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814469 () Bool)

(declare-fun res!556397 () Bool)

(assert (=> b!814469 (=> (not res!556397) (not e!451535))))

(declare-datatypes ((List!15270 0))(
  ( (Nil!15267) (Cons!15266 (h!16395 (_ BitVec 64)) (t!21595 List!15270)) )
))
(declare-fun arrayNoDuplicates!0 (array!44648 (_ BitVec 32) List!15270) Bool)

(assert (=> b!814469 (= res!556397 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15267))))

(declare-fun b!814470 () Bool)

(declare-fun res!556394 () Bool)

(assert (=> b!814470 (=> (not res!556394) (not e!451535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44648 (_ BitVec 32)) Bool)

(assert (=> b!814470 (= res!556394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814471 () Bool)

(declare-fun mapRes!22927 () Bool)

(assert (=> b!814471 (= e!451532 (and e!451533 mapRes!22927))))

(declare-fun condMapEmpty!22927 () Bool)

(declare-fun mapDefault!22927 () ValueCell!6700)

