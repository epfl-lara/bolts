; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70576 () Bool)

(assert start!70576)

(declare-fun b_free!12859 () Bool)

(declare-fun b_next!12859 () Bool)

(assert (=> start!70576 (= b_free!12859 (not b_next!12859))))

(declare-fun tp!45313 () Bool)

(declare-fun b_and!21719 () Bool)

(assert (=> start!70576 (= tp!45313 b_and!21719)))

(declare-fun b!819389 () Bool)

(declare-fun e!455081 () Bool)

(assert (=> b!819389 (= e!455081 true)))

(declare-datatypes ((V!24427 0))(
  ( (V!24428 (val!7332 Int)) )
))
(declare-datatypes ((tuple2!9660 0))(
  ( (tuple2!9661 (_1!4840 (_ BitVec 64)) (_2!4840 V!24427)) )
))
(declare-fun lt!367773 () tuple2!9660)

(declare-fun lt!367777 () tuple2!9660)

(declare-datatypes ((List!15521 0))(
  ( (Nil!15518) (Cons!15517 (h!16646 tuple2!9660) (t!21860 List!15521)) )
))
(declare-datatypes ((ListLongMap!8497 0))(
  ( (ListLongMap!8498 (toList!4264 List!15521)) )
))
(declare-fun lt!367772 () ListLongMap!8497)

(declare-fun lt!367780 () ListLongMap!8497)

(declare-fun +!1807 (ListLongMap!8497 tuple2!9660) ListLongMap!8497)

(assert (=> b!819389 (= lt!367780 (+!1807 (+!1807 lt!367772 lt!367777) lt!367773))))

(declare-fun lt!367779 () ListLongMap!8497)

(declare-fun lt!367775 () ListLongMap!8497)

(assert (=> b!819389 (= (+!1807 lt!367779 lt!367773) (+!1807 lt!367775 lt!367773))))

(declare-fun zeroValueBefore!34 () V!24427)

(declare-fun zeroValueAfter!34 () V!24427)

(declare-datatypes ((Unit!27979 0))(
  ( (Unit!27980) )
))
(declare-fun lt!367776 () Unit!27979)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!185 (ListLongMap!8497 (_ BitVec 64) V!24427 V!24427) Unit!27979)

(assert (=> b!819389 (= lt!367776 (addSameAsAddTwiceSameKeyDiffValues!185 lt!367779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819389 (= lt!367773 (tuple2!9661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455080 () Bool)

(assert (=> b!819389 e!455080))

(declare-fun res!559243 () Bool)

(assert (=> b!819389 (=> (not res!559243) (not e!455080))))

(declare-fun lt!367781 () ListLongMap!8497)

(assert (=> b!819389 (= res!559243 (= lt!367781 lt!367775))))

(assert (=> b!819389 (= lt!367775 (+!1807 lt!367779 lt!367777))))

(assert (=> b!819389 (= lt!367777 (tuple2!9661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!45308 0))(
  ( (array!45309 (arr!21703 (Array (_ BitVec 32) (_ BitVec 64))) (size!22124 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45308)

(declare-fun minValue!754 () V!24427)

(declare-datatypes ((ValueCell!6869 0))(
  ( (ValueCellFull!6869 (v!9758 V!24427)) (EmptyCell!6869) )
))
(declare-datatypes ((array!45310 0))(
  ( (array!45311 (arr!21704 (Array (_ BitVec 32) ValueCell!6869)) (size!22125 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45310)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!367778 () ListLongMap!8497)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2420 (array!45308 array!45310 (_ BitVec 32) (_ BitVec 32) V!24427 V!24427 (_ BitVec 32) Int) ListLongMap!8497)

(assert (=> b!819389 (= lt!367778 (getCurrentListMap!2420 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819389 (= lt!367781 (getCurrentListMap!2420 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819390 () Bool)

(declare-fun res!559241 () Bool)

(declare-fun e!455079 () Bool)

(assert (=> b!819390 (=> (not res!559241) (not e!455079))))

(declare-datatypes ((List!15522 0))(
  ( (Nil!15519) (Cons!15518 (h!16647 (_ BitVec 64)) (t!21861 List!15522)) )
))
(declare-fun arrayNoDuplicates!0 (array!45308 (_ BitVec 32) List!15522) Bool)

(assert (=> b!819390 (= res!559241 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15519))))

(declare-fun b!819391 () Bool)

(declare-fun res!559239 () Bool)

(assert (=> b!819391 (=> (not res!559239) (not e!455079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45308 (_ BitVec 32)) Bool)

(assert (=> b!819391 (= res!559239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819392 () Bool)

(declare-fun e!455082 () Bool)

(declare-fun e!455078 () Bool)

(declare-fun mapRes!23455 () Bool)

(assert (=> b!819392 (= e!455082 (and e!455078 mapRes!23455))))

(declare-fun condMapEmpty!23455 () Bool)

(declare-fun mapDefault!23455 () ValueCell!6869)

