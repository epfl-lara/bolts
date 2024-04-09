; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78086 () Bool)

(assert start!78086)

(declare-fun b_free!16585 () Bool)

(declare-fun b_next!16585 () Bool)

(assert (=> start!78086 (= b_free!16585 (not b_next!16585))))

(declare-fun tp!58027 () Bool)

(declare-fun b_and!27175 () Bool)

(assert (=> start!78086 (= tp!58027 b_and!27175)))

(declare-fun b!911007 () Bool)

(declare-fun res!614787 () Bool)

(declare-fun e!510920 () Bool)

(assert (=> b!911007 (=> (not res!614787) (not e!510920))))

(declare-datatypes ((array!54016 0))(
  ( (array!54017 (arr!25960 (Array (_ BitVec 32) (_ BitVec 64))) (size!26420 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54016)

(declare-datatypes ((List!18340 0))(
  ( (Nil!18337) (Cons!18336 (h!19482 (_ BitVec 64)) (t!25933 List!18340)) )
))
(declare-fun arrayNoDuplicates!0 (array!54016 (_ BitVec 32) List!18340) Bool)

(assert (=> b!911007 (= res!614787 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18337))))

(declare-fun b!911008 () Bool)

(assert (=> b!911008 (= e!510920 false)))

(declare-datatypes ((V!30303 0))(
  ( (V!30304 (val!9552 Int)) )
))
(declare-datatypes ((ValueCell!9020 0))(
  ( (ValueCellFull!9020 (v!12061 V!30303)) (EmptyCell!9020) )
))
(declare-datatypes ((array!54018 0))(
  ( (array!54019 (arr!25961 (Array (_ BitVec 32) ValueCell!9020)) (size!26421 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54018)

(declare-fun lt!410305 () Bool)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30303)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30303)

(declare-datatypes ((tuple2!12492 0))(
  ( (tuple2!12493 (_1!6256 (_ BitVec 64)) (_2!6256 V!30303)) )
))
(declare-datatypes ((List!18341 0))(
  ( (Nil!18338) (Cons!18337 (h!19483 tuple2!12492) (t!25934 List!18341)) )
))
(declare-datatypes ((ListLongMap!11203 0))(
  ( (ListLongMap!11204 (toList!5617 List!18341)) )
))
(declare-fun contains!4626 (ListLongMap!11203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2847 (array!54016 array!54018 (_ BitVec 32) (_ BitVec 32) V!30303 V!30303 (_ BitVec 32) Int) ListLongMap!11203)

(assert (=> b!911008 (= lt!410305 (contains!4626 (getCurrentListMap!2847 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911009 () Bool)

(declare-fun res!614788 () Bool)

(assert (=> b!911009 (=> (not res!614788) (not e!510920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54016 (_ BitVec 32)) Bool)

(assert (=> b!911009 (= res!614788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911010 () Bool)

(declare-fun e!510923 () Bool)

(declare-fun tp_is_empty!19003 () Bool)

(assert (=> b!911010 (= e!510923 tp_is_empty!19003)))

(declare-fun b!911011 () Bool)

(declare-fun e!510922 () Bool)

(declare-fun e!510919 () Bool)

(declare-fun mapRes!30226 () Bool)

(assert (=> b!911011 (= e!510922 (and e!510919 mapRes!30226))))

(declare-fun condMapEmpty!30226 () Bool)

(declare-fun mapDefault!30226 () ValueCell!9020)

