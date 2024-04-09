; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70628 () Bool)

(assert start!70628)

(declare-fun b_free!12911 () Bool)

(declare-fun b_next!12911 () Bool)

(assert (=> start!70628 (= b_free!12911 (not b_next!12911))))

(declare-fun tp!45468 () Bool)

(declare-fun b_and!21771 () Bool)

(assert (=> start!70628 (= tp!45468 b_and!21771)))

(declare-fun b!820099 () Bool)

(declare-fun res!559718 () Bool)

(declare-fun e!455634 () Bool)

(assert (=> b!820099 (=> (not res!559718) (not e!455634))))

(declare-datatypes ((array!45402 0))(
  ( (array!45403 (arr!21750 (Array (_ BitVec 32) (_ BitVec 64))) (size!22171 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45402)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45402 (_ BitVec 32)) Bool)

(assert (=> b!820099 (= res!559718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!559714 () Bool)

(assert (=> start!70628 (=> (not res!559714) (not e!455634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70628 (= res!559714 (validMask!0 mask!1312))))

(assert (=> start!70628 e!455634))

(declare-fun tp_is_empty!14621 () Bool)

(assert (=> start!70628 tp_is_empty!14621))

(declare-fun array_inv!17353 (array!45402) Bool)

(assert (=> start!70628 (array_inv!17353 _keys!976)))

(assert (=> start!70628 true))

(declare-datatypes ((V!24495 0))(
  ( (V!24496 (val!7358 Int)) )
))
(declare-datatypes ((ValueCell!6895 0))(
  ( (ValueCellFull!6895 (v!9784 V!24495)) (EmptyCell!6895) )
))
(declare-datatypes ((array!45404 0))(
  ( (array!45405 (arr!21751 (Array (_ BitVec 32) ValueCell!6895)) (size!22172 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45404)

(declare-fun e!455637 () Bool)

(declare-fun array_inv!17354 (array!45404) Bool)

(assert (=> start!70628 (and (array_inv!17354 _values!788) e!455637)))

(assert (=> start!70628 tp!45468))

(declare-fun b!820100 () Bool)

(declare-fun e!455636 () Bool)

(assert (=> b!820100 (= e!455634 (not e!455636))))

(declare-fun res!559720 () Bool)

(assert (=> b!820100 (=> res!559720 e!455636)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820100 (= res!559720 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9700 0))(
  ( (tuple2!9701 (_1!4860 (_ BitVec 64)) (_2!4860 V!24495)) )
))
(declare-datatypes ((List!15558 0))(
  ( (Nil!15555) (Cons!15554 (h!16683 tuple2!9700) (t!21897 List!15558)) )
))
(declare-datatypes ((ListLongMap!8537 0))(
  ( (ListLongMap!8538 (toList!4284 List!15558)) )
))
(declare-fun lt!368544 () ListLongMap!8537)

(declare-fun lt!368552 () ListLongMap!8537)

(assert (=> b!820100 (= lt!368544 lt!368552)))

(declare-fun zeroValueAfter!34 () V!24495)

(declare-fun minValue!754 () V!24495)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28019 0))(
  ( (Unit!28020) )
))
(declare-fun lt!368546 () Unit!28019)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!24495)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!434 (array!45402 array!45404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24495 V!24495 V!24495 V!24495 (_ BitVec 32) Int) Unit!28019)

(assert (=> b!820100 (= lt!368546 (lemmaNoChangeToArrayThenSameMapNoExtras!434 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2318 (array!45402 array!45404 (_ BitVec 32) (_ BitVec 32) V!24495 V!24495 (_ BitVec 32) Int) ListLongMap!8537)

(assert (=> b!820100 (= lt!368552 (getCurrentListMapNoExtraKeys!2318 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820100 (= lt!368544 (getCurrentListMapNoExtraKeys!2318 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820101 () Bool)

(declare-fun e!455632 () Bool)

(assert (=> b!820101 (= e!455632 tp_is_empty!14621)))

(declare-fun b!820102 () Bool)

(declare-fun e!455635 () Bool)

(assert (=> b!820102 (= e!455635 (bvsle #b00000000000000000000000000000000 (size!22171 _keys!976)))))

(declare-fun mapNonEmpty!23533 () Bool)

(declare-fun mapRes!23533 () Bool)

(declare-fun tp!45469 () Bool)

(declare-fun e!455633 () Bool)

(assert (=> mapNonEmpty!23533 (= mapRes!23533 (and tp!45469 e!455633))))

(declare-fun mapKey!23533 () (_ BitVec 32))

(declare-fun mapRest!23533 () (Array (_ BitVec 32) ValueCell!6895))

(declare-fun mapValue!23533 () ValueCell!6895)

(assert (=> mapNonEmpty!23533 (= (arr!21751 _values!788) (store mapRest!23533 mapKey!23533 mapValue!23533))))

(declare-fun b!820103 () Bool)

(assert (=> b!820103 (= e!455633 tp_is_empty!14621)))

(declare-fun b!820104 () Bool)

(assert (=> b!820104 (= e!455636 e!455635)))

(declare-fun res!559715 () Bool)

(assert (=> b!820104 (=> res!559715 e!455635)))

(declare-fun lt!368545 () tuple2!9700)

(declare-fun lt!368551 () tuple2!9700)

(declare-fun lt!368550 () ListLongMap!8537)

(declare-fun +!1825 (ListLongMap!8537 tuple2!9700) ListLongMap!8537)

(assert (=> b!820104 (= res!559715 (not (= lt!368550 (+!1825 (+!1825 lt!368552 lt!368545) lt!368551))))))

(declare-fun lt!368547 () ListLongMap!8537)

(assert (=> b!820104 (= (+!1825 lt!368544 lt!368551) (+!1825 lt!368547 lt!368551))))

(declare-fun lt!368548 () Unit!28019)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!201 (ListLongMap!8537 (_ BitVec 64) V!24495 V!24495) Unit!28019)

(assert (=> b!820104 (= lt!368548 (addSameAsAddTwiceSameKeyDiffValues!201 lt!368544 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!820104 (= lt!368551 (tuple2!9701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455638 () Bool)

(assert (=> b!820104 e!455638))

(declare-fun res!559716 () Bool)

(assert (=> b!820104 (=> (not res!559716) (not e!455638))))

(declare-fun lt!368549 () ListLongMap!8537)

(assert (=> b!820104 (= res!559716 (= lt!368549 lt!368547))))

(assert (=> b!820104 (= lt!368547 (+!1825 lt!368544 lt!368545))))

(assert (=> b!820104 (= lt!368545 (tuple2!9701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2436 (array!45402 array!45404 (_ BitVec 32) (_ BitVec 32) V!24495 V!24495 (_ BitVec 32) Int) ListLongMap!8537)

(assert (=> b!820104 (= lt!368550 (getCurrentListMap!2436 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820104 (= lt!368549 (getCurrentListMap!2436 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23533 () Bool)

(assert (=> mapIsEmpty!23533 mapRes!23533))

(declare-fun b!820105 () Bool)

(assert (=> b!820105 (= e!455637 (and e!455632 mapRes!23533))))

(declare-fun condMapEmpty!23533 () Bool)

(declare-fun mapDefault!23533 () ValueCell!6895)

