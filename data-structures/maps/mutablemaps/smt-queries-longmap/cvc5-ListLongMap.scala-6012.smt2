; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77968 () Bool)

(assert start!77968)

(declare-fun b_free!16483 () Bool)

(declare-fun b_next!16483 () Bool)

(assert (=> start!77968 (= b_free!16483 (not b_next!16483))))

(declare-fun tp!57717 () Bool)

(declare-fun b_and!27071 () Bool)

(assert (=> start!77968 (= tp!57717 b_and!27071)))

(declare-fun b!909809 () Bool)

(declare-fun res!614111 () Bool)

(declare-fun e!510083 () Bool)

(assert (=> b!909809 (=> (not res!614111) (not e!510083))))

(declare-datatypes ((V!30167 0))(
  ( (V!30168 (val!9501 Int)) )
))
(declare-datatypes ((ValueCell!8969 0))(
  ( (ValueCellFull!8969 (v!12009 V!30167)) (EmptyCell!8969) )
))
(declare-datatypes ((array!53820 0))(
  ( (array!53821 (arr!25863 (Array (_ BitVec 32) ValueCell!8969)) (size!26323 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53820)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53822 0))(
  ( (array!53823 (arr!25864 (Array (_ BitVec 32) (_ BitVec 64))) (size!26324 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53822)

(assert (=> b!909809 (= res!614111 (and (= (size!26323 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26324 _keys!1386) (size!26323 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909810 () Bool)

(assert (=> b!909810 (= e!510083 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410074 () Bool)

(declare-fun zeroValue!1094 () V!30167)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30167)

(declare-datatypes ((tuple2!12416 0))(
  ( (tuple2!12417 (_1!6218 (_ BitVec 64)) (_2!6218 V!30167)) )
))
(declare-datatypes ((List!18269 0))(
  ( (Nil!18266) (Cons!18265 (h!19411 tuple2!12416) (t!25860 List!18269)) )
))
(declare-datatypes ((ListLongMap!11127 0))(
  ( (ListLongMap!11128 (toList!5579 List!18269)) )
))
(declare-fun contains!4587 (ListLongMap!11127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2809 (array!53822 array!53820 (_ BitVec 32) (_ BitVec 32) V!30167 V!30167 (_ BitVec 32) Int) ListLongMap!11127)

(assert (=> b!909810 (= lt!410074 (contains!4587 (getCurrentListMap!2809 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909811 () Bool)

(declare-fun res!614110 () Bool)

(assert (=> b!909811 (=> (not res!614110) (not e!510083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53822 (_ BitVec 32)) Bool)

(assert (=> b!909811 (= res!614110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909812 () Bool)

(declare-fun e!510084 () Bool)

(declare-fun e!510082 () Bool)

(declare-fun mapRes!30070 () Bool)

(assert (=> b!909812 (= e!510084 (and e!510082 mapRes!30070))))

(declare-fun condMapEmpty!30070 () Bool)

(declare-fun mapDefault!30070 () ValueCell!8969)

