; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70604 () Bool)

(assert start!70604)

(declare-fun b_free!12887 () Bool)

(declare-fun b_next!12887 () Bool)

(assert (=> start!70604 (= b_free!12887 (not b_next!12887))))

(declare-fun tp!45397 () Bool)

(declare-fun b_and!21747 () Bool)

(assert (=> start!70604 (= tp!45397 b_and!21747)))

(declare-fun mapNonEmpty!23497 () Bool)

(declare-fun mapRes!23497 () Bool)

(declare-fun tp!45396 () Bool)

(declare-fun e!455375 () Bool)

(assert (=> mapNonEmpty!23497 (= mapRes!23497 (and tp!45396 e!455375))))

(declare-fun mapKey!23497 () (_ BitVec 32))

(declare-datatypes ((V!24463 0))(
  ( (V!24464 (val!7346 Int)) )
))
(declare-datatypes ((ValueCell!6883 0))(
  ( (ValueCellFull!6883 (v!9772 V!24463)) (EmptyCell!6883) )
))
(declare-datatypes ((array!45358 0))(
  ( (array!45359 (arr!21728 (Array (_ BitVec 32) ValueCell!6883)) (size!22149 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45358)

(declare-fun mapValue!23497 () ValueCell!6883)

(declare-fun mapRest!23497 () (Array (_ BitVec 32) ValueCell!6883))

(assert (=> mapNonEmpty!23497 (= (arr!21728 _values!788) (store mapRest!23497 mapKey!23497 mapValue!23497))))

(declare-fun b!819768 () Bool)

(declare-fun e!455376 () Bool)

(declare-fun e!455377 () Bool)

(assert (=> b!819768 (= e!455376 (not e!455377))))

(declare-fun res!559493 () Bool)

(assert (=> b!819768 (=> res!559493 e!455377)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819768 (= res!559493 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9682 0))(
  ( (tuple2!9683 (_1!4851 (_ BitVec 64)) (_2!4851 V!24463)) )
))
(declare-datatypes ((List!15540 0))(
  ( (Nil!15537) (Cons!15536 (h!16665 tuple2!9682) (t!21879 List!15540)) )
))
(declare-datatypes ((ListLongMap!8519 0))(
  ( (ListLongMap!8520 (toList!4275 List!15540)) )
))
(declare-fun lt!368197 () ListLongMap!8519)

(declare-fun lt!368194 () ListLongMap!8519)

(assert (=> b!819768 (= lt!368197 lt!368194)))

(declare-fun zeroValueBefore!34 () V!24463)

(declare-datatypes ((array!45360 0))(
  ( (array!45361 (arr!21729 (Array (_ BitVec 32) (_ BitVec 64))) (size!22150 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45360)

(declare-fun zeroValueAfter!34 () V!24463)

(declare-fun minValue!754 () V!24463)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28001 0))(
  ( (Unit!28002) )
))
(declare-fun lt!368195 () Unit!28001)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!428 (array!45360 array!45358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24463 V!24463 V!24463 V!24463 (_ BitVec 32) Int) Unit!28001)

(assert (=> b!819768 (= lt!368195 (lemmaNoChangeToArrayThenSameMapNoExtras!428 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2312 (array!45360 array!45358 (_ BitVec 32) (_ BitVec 32) V!24463 V!24463 (_ BitVec 32) Int) ListLongMap!8519)

(assert (=> b!819768 (= lt!368194 (getCurrentListMapNoExtraKeys!2312 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819768 (= lt!368197 (getCurrentListMapNoExtraKeys!2312 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819769 () Bool)

(declare-fun res!559491 () Bool)

(assert (=> b!819769 (=> (not res!559491) (not e!455376))))

(declare-datatypes ((List!15541 0))(
  ( (Nil!15538) (Cons!15537 (h!16666 (_ BitVec 64)) (t!21880 List!15541)) )
))
(declare-fun arrayNoDuplicates!0 (array!45360 (_ BitVec 32) List!15541) Bool)

(assert (=> b!819769 (= res!559491 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15538))))

(declare-fun b!819770 () Bool)

(declare-fun res!559495 () Bool)

(assert (=> b!819770 (=> (not res!559495) (not e!455376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45360 (_ BitVec 32)) Bool)

(assert (=> b!819770 (= res!559495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819771 () Bool)

(declare-fun e!455373 () Bool)

(declare-fun e!455374 () Bool)

(assert (=> b!819771 (= e!455373 (and e!455374 mapRes!23497))))

(declare-fun condMapEmpty!23497 () Bool)

(declare-fun mapDefault!23497 () ValueCell!6883)

