; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71426 () Bool)

(assert start!71426)

(declare-fun b_free!13465 () Bool)

(declare-fun b_next!13465 () Bool)

(assert (=> start!71426 (= b_free!13465 (not b_next!13465))))

(declare-fun tp!47172 () Bool)

(declare-fun b_and!22477 () Bool)

(assert (=> start!71426 (= tp!47172 b_and!22477)))

(declare-fun mapIsEmpty!24406 () Bool)

(declare-fun mapRes!24406 () Bool)

(assert (=> mapIsEmpty!24406 mapRes!24406))

(declare-fun b!829073 () Bool)

(declare-fun res!564939 () Bool)

(declare-fun e!462132 () Bool)

(assert (=> b!829073 (=> (not res!564939) (not e!462132))))

(declare-datatypes ((array!46492 0))(
  ( (array!46493 (arr!22281 (Array (_ BitVec 32) (_ BitVec 64))) (size!22702 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46492)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46492 (_ BitVec 32)) Bool)

(assert (=> b!829073 (= res!564939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!829074 () Bool)

(declare-fun e!462134 () Bool)

(assert (=> b!829074 (= e!462132 (not e!462134))))

(declare-fun res!564938 () Bool)

(assert (=> b!829074 (=> res!564938 e!462134)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!829074 (= res!564938 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun e!462131 () Bool)

(assert (=> b!829074 e!462131))

(declare-fun res!564935 () Bool)

(assert (=> b!829074 (=> (not res!564935) (not e!462131))))

(declare-datatypes ((V!25235 0))(
  ( (V!25236 (val!7635 Int)) )
))
(declare-datatypes ((tuple2!10150 0))(
  ( (tuple2!10151 (_1!5085 (_ BitVec 64)) (_2!5085 V!25235)) )
))
(declare-datatypes ((List!15982 0))(
  ( (Nil!15979) (Cons!15978 (h!17107 tuple2!10150) (t!22349 List!15982)) )
))
(declare-datatypes ((ListLongMap!8987 0))(
  ( (ListLongMap!8988 (toList!4509 List!15982)) )
))
(declare-fun lt!375917 () ListLongMap!8987)

(declare-fun lt!375916 () ListLongMap!8987)

(assert (=> b!829074 (= res!564935 (= lt!375917 lt!375916))))

(declare-datatypes ((Unit!28407 0))(
  ( (Unit!28408) )
))
(declare-fun lt!375915 () Unit!28407)

(declare-fun zeroValueAfter!34 () V!25235)

(declare-fun minValue!754 () V!25235)

(declare-datatypes ((ValueCell!7172 0))(
  ( (ValueCellFull!7172 (v!10070 V!25235)) (EmptyCell!7172) )
))
(declare-datatypes ((array!46494 0))(
  ( (array!46495 (arr!22282 (Array (_ BitVec 32) ValueCell!7172)) (size!22703 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46494)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!25235)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!600 (array!46492 array!46494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25235 V!25235 V!25235 V!25235 (_ BitVec 32) Int) Unit!28407)

(assert (=> b!829074 (= lt!375915 (lemmaNoChangeToArrayThenSameMapNoExtras!600 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2510 (array!46492 array!46494 (_ BitVec 32) (_ BitVec 32) V!25235 V!25235 (_ BitVec 32) Int) ListLongMap!8987)

(assert (=> b!829074 (= lt!375916 (getCurrentListMapNoExtraKeys!2510 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829074 (= lt!375917 (getCurrentListMapNoExtraKeys!2510 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829076 () Bool)

(declare-fun e!462128 () Bool)

(declare-fun tp_is_empty!15175 () Bool)

(assert (=> b!829076 (= e!462128 tp_is_empty!15175)))

(declare-fun b!829077 () Bool)

(declare-fun res!564940 () Bool)

(assert (=> b!829077 (=> (not res!564940) (not e!462132))))

(assert (=> b!829077 (= res!564940 (and (= (size!22703 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22702 _keys!976) (size!22703 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829078 () Bool)

(declare-fun e!462127 () Bool)

(declare-fun e!462130 () Bool)

(assert (=> b!829078 (= e!462127 (and e!462130 mapRes!24406))))

(declare-fun condMapEmpty!24406 () Bool)

(declare-fun mapDefault!24406 () ValueCell!7172)

