; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70530 () Bool)

(assert start!70530)

(declare-fun b_free!12833 () Bool)

(declare-fun b_next!12833 () Bool)

(assert (=> start!70530 (= b_free!12833 (not b_next!12833))))

(declare-fun tp!45231 () Bool)

(declare-fun b_and!21681 () Bool)

(assert (=> start!70530 (= tp!45231 b_and!21681)))

(declare-fun b!818844 () Bool)

(declare-fun e!454682 () Bool)

(declare-fun tp_is_empty!14543 () Bool)

(assert (=> b!818844 (= e!454682 tp_is_empty!14543)))

(declare-fun mapIsEmpty!23413 () Bool)

(declare-fun mapRes!23413 () Bool)

(assert (=> mapIsEmpty!23413 mapRes!23413))

(declare-fun b!818845 () Bool)

(declare-fun e!454681 () Bool)

(assert (=> b!818845 (= e!454681 true)))

(declare-datatypes ((V!24391 0))(
  ( (V!24392 (val!7319 Int)) )
))
(declare-datatypes ((tuple2!9640 0))(
  ( (tuple2!9641 (_1!4830 (_ BitVec 64)) (_2!4830 V!24391)) )
))
(declare-fun lt!367236 () tuple2!9640)

(declare-datatypes ((List!15502 0))(
  ( (Nil!15499) (Cons!15498 (h!16627 tuple2!9640) (t!21839 List!15502)) )
))
(declare-datatypes ((ListLongMap!8477 0))(
  ( (ListLongMap!8478 (toList!4254 List!15502)) )
))
(declare-fun lt!367233 () ListLongMap!8477)

(declare-fun lt!367234 () tuple2!9640)

(declare-fun lt!367232 () ListLongMap!8477)

(declare-fun +!1798 (ListLongMap!8477 tuple2!9640) ListLongMap!8477)

(assert (=> b!818845 (= lt!367233 (+!1798 (+!1798 lt!367232 lt!367234) lt!367236))))

(declare-fun lt!367230 () ListLongMap!8477)

(declare-fun lt!367229 () ListLongMap!8477)

(assert (=> b!818845 (= (+!1798 lt!367230 lt!367236) (+!1798 lt!367229 lt!367236))))

(declare-fun zeroValueBefore!34 () V!24391)

(declare-fun zeroValueAfter!34 () V!24391)

(declare-datatypes ((Unit!27957 0))(
  ( (Unit!27958) )
))
(declare-fun lt!367237 () Unit!27957)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!177 (ListLongMap!8477 (_ BitVec 64) V!24391 V!24391) Unit!27957)

(assert (=> b!818845 (= lt!367237 (addSameAsAddTwiceSameKeyDiffValues!177 lt!367230 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818845 (= lt!367236 (tuple2!9641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454685 () Bool)

(assert (=> b!818845 e!454685))

(declare-fun res!558915 () Bool)

(assert (=> b!818845 (=> (not res!558915) (not e!454685))))

(declare-fun lt!367235 () ListLongMap!8477)

(assert (=> b!818845 (= res!558915 (= lt!367235 lt!367229))))

(assert (=> b!818845 (= lt!367229 (+!1798 lt!367230 lt!367234))))

(assert (=> b!818845 (= lt!367234 (tuple2!9641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!45258 0))(
  ( (array!45259 (arr!21679 (Array (_ BitVec 32) (_ BitVec 64))) (size!22100 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45258)

(declare-fun minValue!754 () V!24391)

(declare-datatypes ((ValueCell!6856 0))(
  ( (ValueCellFull!6856 (v!9744 V!24391)) (EmptyCell!6856) )
))
(declare-datatypes ((array!45260 0))(
  ( (array!45261 (arr!21680 (Array (_ BitVec 32) ValueCell!6856)) (size!22101 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45260)

(declare-fun lt!367231 () ListLongMap!8477)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2412 (array!45258 array!45260 (_ BitVec 32) (_ BitVec 32) V!24391 V!24391 (_ BitVec 32) Int) ListLongMap!8477)

(assert (=> b!818845 (= lt!367231 (getCurrentListMap!2412 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818845 (= lt!367235 (getCurrentListMap!2412 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818846 () Bool)

(declare-fun e!454684 () Bool)

(declare-fun e!454686 () Bool)

(assert (=> b!818846 (= e!454684 (and e!454686 mapRes!23413))))

(declare-fun condMapEmpty!23413 () Bool)

(declare-fun mapDefault!23413 () ValueCell!6856)

