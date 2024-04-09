; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78032 () Bool)

(assert start!78032)

(declare-fun b_free!16531 () Bool)

(declare-fun b_next!16531 () Bool)

(assert (=> start!78032 (= b_free!16531 (not b_next!16531))))

(declare-fun tp!57864 () Bool)

(declare-fun b_and!27121 () Bool)

(assert (=> start!78032 (= tp!57864 b_and!27121)))

(declare-fun b!910440 () Bool)

(declare-fun e!510515 () Bool)

(declare-fun tp_is_empty!18949 () Bool)

(assert (=> b!910440 (= e!510515 tp_is_empty!18949)))

(declare-fun b!910441 () Bool)

(declare-fun e!510514 () Bool)

(assert (=> b!910441 (= e!510514 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!30231 0))(
  ( (V!30232 (val!9525 Int)) )
))
(declare-fun zeroValue!1094 () V!30231)

(declare-datatypes ((array!53910 0))(
  ( (array!53911 (arr!25907 (Array (_ BitVec 32) (_ BitVec 64))) (size!26367 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53910)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410224 () Bool)

(declare-datatypes ((ValueCell!8993 0))(
  ( (ValueCellFull!8993 (v!12034 V!30231)) (EmptyCell!8993) )
))
(declare-datatypes ((array!53912 0))(
  ( (array!53913 (arr!25908 (Array (_ BitVec 32) ValueCell!8993)) (size!26368 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53912)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30231)

(declare-datatypes ((tuple2!12448 0))(
  ( (tuple2!12449 (_1!6234 (_ BitVec 64)) (_2!6234 V!30231)) )
))
(declare-datatypes ((List!18300 0))(
  ( (Nil!18297) (Cons!18296 (h!19442 tuple2!12448) (t!25893 List!18300)) )
))
(declare-datatypes ((ListLongMap!11159 0))(
  ( (ListLongMap!11160 (toList!5595 List!18300)) )
))
(declare-fun contains!4604 (ListLongMap!11159 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2825 (array!53910 array!53912 (_ BitVec 32) (_ BitVec 32) V!30231 V!30231 (_ BitVec 32) Int) ListLongMap!11159)

(assert (=> b!910441 (= lt!410224 (contains!4604 (getCurrentListMap!2825 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30145 () Bool)

(declare-fun mapRes!30145 () Bool)

(assert (=> mapIsEmpty!30145 mapRes!30145))

(declare-fun b!910442 () Bool)

(declare-fun res!614461 () Bool)

(assert (=> b!910442 (=> (not res!614461) (not e!510514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53910 (_ BitVec 32)) Bool)

(assert (=> b!910442 (= res!614461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910443 () Bool)

(declare-fun res!614462 () Bool)

(assert (=> b!910443 (=> (not res!614462) (not e!510514))))

(assert (=> b!910443 (= res!614462 (and (= (size!26368 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26367 _keys!1386) (size!26368 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910444 () Bool)

(declare-fun e!510518 () Bool)

(declare-fun e!510516 () Bool)

(assert (=> b!910444 (= e!510518 (and e!510516 mapRes!30145))))

(declare-fun condMapEmpty!30145 () Bool)

(declare-fun mapDefault!30145 () ValueCell!8993)

