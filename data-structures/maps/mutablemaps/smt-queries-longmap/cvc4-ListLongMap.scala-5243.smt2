; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70586 () Bool)

(assert start!70586)

(declare-fun b_free!12869 () Bool)

(declare-fun b_next!12869 () Bool)

(assert (=> start!70586 (= b_free!12869 (not b_next!12869))))

(declare-fun tp!45342 () Bool)

(declare-fun b_and!21729 () Bool)

(assert (=> start!70586 (= tp!45342 b_and!21729)))

(declare-fun b!819524 () Bool)

(declare-fun e!455186 () Bool)

(declare-fun tp_is_empty!14579 () Bool)

(assert (=> b!819524 (= e!455186 tp_is_empty!14579)))

(declare-fun b!819525 () Bool)

(declare-fun e!455185 () Bool)

(assert (=> b!819525 (= e!455185 true)))

(declare-datatypes ((V!24439 0))(
  ( (V!24440 (val!7337 Int)) )
))
(declare-datatypes ((tuple2!9668 0))(
  ( (tuple2!9669 (_1!4844 (_ BitVec 64)) (_2!4844 V!24439)) )
))
(declare-datatypes ((List!15528 0))(
  ( (Nil!15525) (Cons!15524 (h!16653 tuple2!9668) (t!21867 List!15528)) )
))
(declare-datatypes ((ListLongMap!8505 0))(
  ( (ListLongMap!8506 (toList!4268 List!15528)) )
))
(declare-fun lt!367930 () ListLongMap!8505)

(declare-fun lt!367928 () ListLongMap!8505)

(declare-fun lt!367929 () tuple2!9668)

(declare-fun lt!367922 () tuple2!9668)

(declare-fun +!1811 (ListLongMap!8505 tuple2!9668) ListLongMap!8505)

(assert (=> b!819525 (= lt!367928 (+!1811 (+!1811 lt!367930 lt!367922) lt!367929))))

(declare-fun lt!367923 () ListLongMap!8505)

(declare-fun lt!367924 () ListLongMap!8505)

(assert (=> b!819525 (= (+!1811 lt!367923 lt!367929) (+!1811 lt!367924 lt!367929))))

(declare-fun zeroValueBefore!34 () V!24439)

(declare-datatypes ((Unit!27987 0))(
  ( (Unit!27988) )
))
(declare-fun lt!367927 () Unit!27987)

(declare-fun zeroValueAfter!34 () V!24439)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!188 (ListLongMap!8505 (_ BitVec 64) V!24439 V!24439) Unit!27987)

(assert (=> b!819525 (= lt!367927 (addSameAsAddTwiceSameKeyDiffValues!188 lt!367923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819525 (= lt!367929 (tuple2!9669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455189 () Bool)

(assert (=> b!819525 e!455189))

(declare-fun res!559333 () Bool)

(assert (=> b!819525 (=> (not res!559333) (not e!455189))))

(declare-fun lt!367926 () ListLongMap!8505)

(assert (=> b!819525 (= res!559333 (= lt!367926 lt!367924))))

(assert (=> b!819525 (= lt!367924 (+!1811 lt!367923 lt!367922))))

(assert (=> b!819525 (= lt!367922 (tuple2!9669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!45326 0))(
  ( (array!45327 (arr!21712 (Array (_ BitVec 32) (_ BitVec 64))) (size!22133 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45326)

(declare-datatypes ((ValueCell!6874 0))(
  ( (ValueCellFull!6874 (v!9763 V!24439)) (EmptyCell!6874) )
))
(declare-datatypes ((array!45328 0))(
  ( (array!45329 (arr!21713 (Array (_ BitVec 32) ValueCell!6874)) (size!22134 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45328)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24439)

(declare-fun lt!367925 () ListLongMap!8505)

(declare-fun getCurrentListMap!2423 (array!45326 array!45328 (_ BitVec 32) (_ BitVec 32) V!24439 V!24439 (_ BitVec 32) Int) ListLongMap!8505)

(assert (=> b!819525 (= lt!367925 (getCurrentListMap!2423 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819525 (= lt!367926 (getCurrentListMap!2423 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23470 () Bool)

(declare-fun mapRes!23470 () Bool)

(assert (=> mapIsEmpty!23470 mapRes!23470))

(declare-fun b!819526 () Bool)

(assert (=> b!819526 (= e!455189 (= lt!367925 (+!1811 lt!367930 (tuple2!9669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun res!559332 () Bool)

(declare-fun e!455187 () Bool)

(assert (=> start!70586 (=> (not res!559332) (not e!455187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70586 (= res!559332 (validMask!0 mask!1312))))

(assert (=> start!70586 e!455187))

(assert (=> start!70586 tp_is_empty!14579))

(declare-fun array_inv!17327 (array!45326) Bool)

(assert (=> start!70586 (array_inv!17327 _keys!976)))

(assert (=> start!70586 true))

(declare-fun e!455183 () Bool)

(declare-fun array_inv!17328 (array!45328) Bool)

(assert (=> start!70586 (and (array_inv!17328 _values!788) e!455183)))

(assert (=> start!70586 tp!45342))

(declare-fun b!819527 () Bool)

(declare-fun e!455184 () Bool)

(assert (=> b!819527 (= e!455184 tp_is_empty!14579)))

(declare-fun b!819528 () Bool)

(assert (=> b!819528 (= e!455183 (and e!455184 mapRes!23470))))

(declare-fun condMapEmpty!23470 () Bool)

(declare-fun mapDefault!23470 () ValueCell!6874)

