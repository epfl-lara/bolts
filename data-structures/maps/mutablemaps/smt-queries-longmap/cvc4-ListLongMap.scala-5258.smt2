; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70696 () Bool)

(assert start!70696)

(declare-fun b_free!12959 () Bool)

(declare-fun b_next!12959 () Bool)

(assert (=> start!70696 (= b_free!12959 (not b_next!12959))))

(declare-fun tp!45615 () Bool)

(declare-fun b_and!21831 () Bool)

(assert (=> start!70696 (= tp!45615 b_and!21831)))

(declare-fun res!560088 () Bool)

(declare-fun e!456112 () Bool)

(assert (=> start!70696 (=> (not res!560088) (not e!456112))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70696 (= res!560088 (validMask!0 mask!1312))))

(assert (=> start!70696 e!456112))

(declare-fun tp_is_empty!14669 () Bool)

(assert (=> start!70696 tp_is_empty!14669))

(declare-datatypes ((array!45498 0))(
  ( (array!45499 (arr!21797 (Array (_ BitVec 32) (_ BitVec 64))) (size!22218 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45498)

(declare-fun array_inv!17387 (array!45498) Bool)

(assert (=> start!70696 (array_inv!17387 _keys!976)))

(assert (=> start!70696 true))

(declare-datatypes ((V!24559 0))(
  ( (V!24560 (val!7382 Int)) )
))
(declare-datatypes ((ValueCell!6919 0))(
  ( (ValueCellFull!6919 (v!9809 V!24559)) (EmptyCell!6919) )
))
(declare-datatypes ((array!45500 0))(
  ( (array!45501 (arr!21798 (Array (_ BitVec 32) ValueCell!6919)) (size!22219 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45500)

(declare-fun e!456113 () Bool)

(declare-fun array_inv!17388 (array!45500) Bool)

(assert (=> start!70696 (and (array_inv!17388 _values!788) e!456113)))

(assert (=> start!70696 tp!45615))

(declare-fun b!820791 () Bool)

(declare-fun res!560091 () Bool)

(assert (=> b!820791 (=> (not res!560091) (not e!456112))))

(declare-datatypes ((List!15590 0))(
  ( (Nil!15587) (Cons!15586 (h!16715 (_ BitVec 64)) (t!21931 List!15590)) )
))
(declare-fun arrayNoDuplicates!0 (array!45498 (_ BitVec 32) List!15590) Bool)

(assert (=> b!820791 (= res!560091 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15587))))

(declare-fun b!820792 () Bool)

(declare-fun e!456114 () Bool)

(assert (=> b!820792 (= e!456114 tp_is_empty!14669)))

(declare-fun b!820793 () Bool)

(assert (=> b!820793 (= e!456112 (not true))))

(declare-datatypes ((tuple2!9730 0))(
  ( (tuple2!9731 (_1!4875 (_ BitVec 64)) (_2!4875 V!24559)) )
))
(declare-datatypes ((List!15591 0))(
  ( (Nil!15588) (Cons!15587 (h!16716 tuple2!9730) (t!21932 List!15591)) )
))
(declare-datatypes ((ListLongMap!8567 0))(
  ( (ListLongMap!8568 (toList!4299 List!15591)) )
))
(declare-fun lt!368930 () ListLongMap!8567)

(declare-fun lt!368929 () ListLongMap!8567)

(assert (=> b!820793 (= lt!368930 lt!368929)))

(declare-fun zeroValueBefore!34 () V!24559)

(declare-fun zeroValueAfter!34 () V!24559)

(declare-fun minValue!754 () V!24559)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28051 0))(
  ( (Unit!28052) )
))
(declare-fun lt!368931 () Unit!28051)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!449 (array!45498 array!45500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24559 V!24559 V!24559 V!24559 (_ BitVec 32) Int) Unit!28051)

(assert (=> b!820793 (= lt!368931 (lemmaNoChangeToArrayThenSameMapNoExtras!449 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2333 (array!45498 array!45500 (_ BitVec 32) (_ BitVec 32) V!24559 V!24559 (_ BitVec 32) Int) ListLongMap!8567)

(assert (=> b!820793 (= lt!368929 (getCurrentListMapNoExtraKeys!2333 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820793 (= lt!368930 (getCurrentListMapNoExtraKeys!2333 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820794 () Bool)

(declare-fun mapRes!23608 () Bool)

(assert (=> b!820794 (= e!456113 (and e!456114 mapRes!23608))))

(declare-fun condMapEmpty!23608 () Bool)

(declare-fun mapDefault!23608 () ValueCell!6919)

