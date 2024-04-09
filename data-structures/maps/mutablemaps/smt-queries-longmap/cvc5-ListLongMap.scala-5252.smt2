; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70656 () Bool)

(assert start!70656)

(declare-fun b_free!12919 () Bool)

(declare-fun b_next!12919 () Bool)

(assert (=> start!70656 (= b_free!12919 (not b_next!12919))))

(declare-fun tp!45496 () Bool)

(declare-fun b_and!21791 () Bool)

(assert (=> start!70656 (= tp!45496 b_and!21791)))

(declare-fun b!820371 () Bool)

(declare-fun e!455812 () Bool)

(assert (=> b!820371 (= e!455812 (not true))))

(declare-datatypes ((V!24507 0))(
  ( (V!24508 (val!7362 Int)) )
))
(declare-datatypes ((tuple2!9704 0))(
  ( (tuple2!9705 (_1!4862 (_ BitVec 64)) (_2!4862 V!24507)) )
))
(declare-datatypes ((List!15563 0))(
  ( (Nil!15560) (Cons!15559 (h!16688 tuple2!9704) (t!21904 List!15563)) )
))
(declare-datatypes ((ListLongMap!8541 0))(
  ( (ListLongMap!8542 (toList!4286 List!15563)) )
))
(declare-fun lt!368750 () ListLongMap!8541)

(declare-fun lt!368749 () ListLongMap!8541)

(assert (=> b!820371 (= lt!368750 lt!368749)))

(declare-fun zeroValueBefore!34 () V!24507)

(declare-datatypes ((array!45420 0))(
  ( (array!45421 (arr!21758 (Array (_ BitVec 32) (_ BitVec 64))) (size!22179 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45420)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24507)

(declare-datatypes ((ValueCell!6899 0))(
  ( (ValueCellFull!6899 (v!9789 V!24507)) (EmptyCell!6899) )
))
(declare-datatypes ((array!45422 0))(
  ( (array!45423 (arr!21759 (Array (_ BitVec 32) ValueCell!6899)) (size!22180 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45422)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24507)

(declare-datatypes ((Unit!28025 0))(
  ( (Unit!28026) )
))
(declare-fun lt!368751 () Unit!28025)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!436 (array!45420 array!45422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24507 V!24507 V!24507 V!24507 (_ BitVec 32) Int) Unit!28025)

(assert (=> b!820371 (= lt!368751 (lemmaNoChangeToArrayThenSameMapNoExtras!436 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2320 (array!45420 array!45422 (_ BitVec 32) (_ BitVec 32) V!24507 V!24507 (_ BitVec 32) Int) ListLongMap!8541)

(assert (=> b!820371 (= lt!368749 (getCurrentListMapNoExtraKeys!2320 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820371 (= lt!368750 (getCurrentListMapNoExtraKeys!2320 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820372 () Bool)

(declare-fun e!455814 () Bool)

(declare-fun tp_is_empty!14629 () Bool)

(assert (=> b!820372 (= e!455814 tp_is_empty!14629)))

(declare-fun res!559849 () Bool)

(assert (=> start!70656 (=> (not res!559849) (not e!455812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70656 (= res!559849 (validMask!0 mask!1312))))

(assert (=> start!70656 e!455812))

(assert (=> start!70656 tp_is_empty!14629))

(declare-fun array_inv!17359 (array!45420) Bool)

(assert (=> start!70656 (array_inv!17359 _keys!976)))

(assert (=> start!70656 true))

(declare-fun e!455811 () Bool)

(declare-fun array_inv!17360 (array!45422) Bool)

(assert (=> start!70656 (and (array_inv!17360 _values!788) e!455811)))

(assert (=> start!70656 tp!45496))

(declare-fun mapNonEmpty!23548 () Bool)

(declare-fun mapRes!23548 () Bool)

(declare-fun tp!45495 () Bool)

(assert (=> mapNonEmpty!23548 (= mapRes!23548 (and tp!45495 e!455814))))

(declare-fun mapValue!23548 () ValueCell!6899)

(declare-fun mapRest!23548 () (Array (_ BitVec 32) ValueCell!6899))

(declare-fun mapKey!23548 () (_ BitVec 32))

(assert (=> mapNonEmpty!23548 (= (arr!21759 _values!788) (store mapRest!23548 mapKey!23548 mapValue!23548))))

(declare-fun b!820373 () Bool)

(declare-fun res!559848 () Bool)

(assert (=> b!820373 (=> (not res!559848) (not e!455812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45420 (_ BitVec 32)) Bool)

(assert (=> b!820373 (= res!559848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820374 () Bool)

(declare-fun res!559850 () Bool)

(assert (=> b!820374 (=> (not res!559850) (not e!455812))))

(declare-datatypes ((List!15564 0))(
  ( (Nil!15561) (Cons!15560 (h!16689 (_ BitVec 64)) (t!21905 List!15564)) )
))
(declare-fun arrayNoDuplicates!0 (array!45420 (_ BitVec 32) List!15564) Bool)

(assert (=> b!820374 (= res!559850 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15561))))

(declare-fun b!820375 () Bool)

(declare-fun e!455813 () Bool)

(assert (=> b!820375 (= e!455811 (and e!455813 mapRes!23548))))

(declare-fun condMapEmpty!23548 () Bool)

(declare-fun mapDefault!23548 () ValueCell!6899)

