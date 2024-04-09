; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71466 () Bool)

(assert start!71466)

(declare-fun b_free!13487 () Bool)

(declare-fun b_next!13487 () Bool)

(assert (=> start!71466 (= b_free!13487 (not b_next!13487))))

(declare-fun tp!47242 () Bool)

(declare-fun b_and!22511 () Bool)

(assert (=> start!71466 (= tp!47242 b_and!22511)))

(declare-fun b!829539 () Bool)

(declare-fun res!565202 () Bool)

(declare-fun e!462465 () Bool)

(assert (=> b!829539 (=> (not res!565202) (not e!462465))))

(declare-datatypes ((array!46536 0))(
  ( (array!46537 (arr!22302 (Array (_ BitVec 32) (_ BitVec 64))) (size!22723 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46536)

(declare-datatypes ((List!15997 0))(
  ( (Nil!15994) (Cons!15993 (h!17122 (_ BitVec 64)) (t!22366 List!15997)) )
))
(declare-fun arrayNoDuplicates!0 (array!46536 (_ BitVec 32) List!15997) Bool)

(assert (=> b!829539 (= res!565202 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15994))))

(declare-fun b!829540 () Bool)

(declare-fun e!462462 () Bool)

(assert (=> b!829540 (= e!462465 (not e!462462))))

(declare-fun res!565203 () Bool)

(assert (=> b!829540 (=> res!565203 e!462462)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!829540 (= res!565203 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25263 0))(
  ( (V!25264 (val!7646 Int)) )
))
(declare-datatypes ((tuple2!10166 0))(
  ( (tuple2!10167 (_1!5093 (_ BitVec 64)) (_2!5093 V!25263)) )
))
(declare-datatypes ((List!15998 0))(
  ( (Nil!15995) (Cons!15994 (h!17123 tuple2!10166) (t!22367 List!15998)) )
))
(declare-datatypes ((ListLongMap!9003 0))(
  ( (ListLongMap!9004 (toList!4517 List!15998)) )
))
(declare-fun lt!376261 () ListLongMap!9003)

(declare-fun lt!376262 () ListLongMap!9003)

(assert (=> b!829540 (= lt!376261 lt!376262)))

(declare-fun zeroValueBefore!34 () V!25263)

(declare-fun zeroValueAfter!34 () V!25263)

(declare-fun minValue!754 () V!25263)

(declare-datatypes ((ValueCell!7183 0))(
  ( (ValueCellFull!7183 (v!10082 V!25263)) (EmptyCell!7183) )
))
(declare-datatypes ((array!46538 0))(
  ( (array!46539 (arr!22303 (Array (_ BitVec 32) ValueCell!7183)) (size!22724 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46538)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28423 0))(
  ( (Unit!28424) )
))
(declare-fun lt!376263 () Unit!28423)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!607 (array!46536 array!46538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25263 V!25263 V!25263 V!25263 (_ BitVec 32) Int) Unit!28423)

(assert (=> b!829540 (= lt!376263 (lemmaNoChangeToArrayThenSameMapNoExtras!607 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2517 (array!46536 array!46538 (_ BitVec 32) (_ BitVec 32) V!25263 V!25263 (_ BitVec 32) Int) ListLongMap!9003)

(assert (=> b!829540 (= lt!376262 (getCurrentListMapNoExtraKeys!2517 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829540 (= lt!376261 (getCurrentListMapNoExtraKeys!2517 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829541 () Bool)

(declare-fun e!462461 () Bool)

(declare-fun tp_is_empty!15197 () Bool)

(assert (=> b!829541 (= e!462461 tp_is_empty!15197)))

(declare-fun b!829542 () Bool)

(declare-fun res!565200 () Bool)

(assert (=> b!829542 (=> (not res!565200) (not e!462465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46536 (_ BitVec 32)) Bool)

(assert (=> b!829542 (= res!565200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24442 () Bool)

(declare-fun mapRes!24442 () Bool)

(assert (=> mapIsEmpty!24442 mapRes!24442))

(declare-fun res!565204 () Bool)

(assert (=> start!71466 (=> (not res!565204) (not e!462465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71466 (= res!565204 (validMask!0 mask!1312))))

(assert (=> start!71466 e!462465))

(assert (=> start!71466 tp_is_empty!15197))

(declare-fun array_inv!17741 (array!46536) Bool)

(assert (=> start!71466 (array_inv!17741 _keys!976)))

(assert (=> start!71466 true))

(declare-fun e!462463 () Bool)

(declare-fun array_inv!17742 (array!46538) Bool)

(assert (=> start!71466 (and (array_inv!17742 _values!788) e!462463)))

(assert (=> start!71466 tp!47242))

(declare-fun b!829543 () Bool)

(assert (=> b!829543 (= e!462463 (and e!462461 mapRes!24442))))

(declare-fun condMapEmpty!24442 () Bool)

(declare-fun mapDefault!24442 () ValueCell!7183)

