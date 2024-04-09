; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95588 () Bool)

(assert start!95588)

(declare-fun b!1079155 () Bool)

(declare-fun res!719230 () Bool)

(declare-fun e!617037 () Bool)

(assert (=> b!1079155 (=> (not res!719230) (not e!617037))))

(declare-datatypes ((array!69326 0))(
  ( (array!69327 (arr!33333 (Array (_ BitVec 32) (_ BitVec 64))) (size!33870 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69326)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69326 (_ BitVec 32)) Bool)

(assert (=> b!1079155 (= res!719230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41065 () Bool)

(declare-fun mapRes!41065 () Bool)

(declare-fun tp!78528 () Bool)

(declare-fun e!617040 () Bool)

(assert (=> mapNonEmpty!41065 (= mapRes!41065 (and tp!78528 e!617040))))

(declare-datatypes ((V!40069 0))(
  ( (V!40070 (val!13160 Int)) )
))
(declare-datatypes ((ValueCell!12394 0))(
  ( (ValueCellFull!12394 (v!15782 V!40069)) (EmptyCell!12394) )
))
(declare-datatypes ((array!69328 0))(
  ( (array!69329 (arr!33334 (Array (_ BitVec 32) ValueCell!12394)) (size!33871 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69328)

(declare-fun mapValue!41065 () ValueCell!12394)

(declare-fun mapKey!41065 () (_ BitVec 32))

(declare-fun mapRest!41065 () (Array (_ BitVec 32) ValueCell!12394))

(assert (=> mapNonEmpty!41065 (= (arr!33334 _values!874) (store mapRest!41065 mapKey!41065 mapValue!41065))))

(declare-fun b!1079156 () Bool)

(declare-fun res!719223 () Bool)

(assert (=> b!1079156 (=> (not res!719223) (not e!617037))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079156 (= res!719223 (= (select (arr!33333 _keys!1070) i!650) k!904))))

(declare-fun b!1079157 () Bool)

(declare-fun res!719227 () Bool)

(assert (=> b!1079157 (=> (not res!719227) (not e!617037))))

(declare-datatypes ((List!23370 0))(
  ( (Nil!23367) (Cons!23366 (h!24575 (_ BitVec 64)) (t!32736 List!23370)) )
))
(declare-fun arrayNoDuplicates!0 (array!69326 (_ BitVec 32) List!23370) Bool)

(assert (=> b!1079157 (= res!719227 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23367))))

(declare-fun b!1079158 () Bool)

(declare-fun res!719228 () Bool)

(assert (=> b!1079158 (=> (not res!719228) (not e!617037))))

(assert (=> b!1079158 (= res!719228 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33870 _keys!1070))))))

(declare-fun b!1079159 () Bool)

(declare-fun tp_is_empty!26207 () Bool)

(assert (=> b!1079159 (= e!617040 tp_is_empty!26207)))

(declare-fun b!1079160 () Bool)

(declare-fun res!719224 () Bool)

(assert (=> b!1079160 (=> (not res!719224) (not e!617037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079160 (= res!719224 (validKeyInArray!0 k!904))))

(declare-fun res!719225 () Bool)

(assert (=> start!95588 (=> (not res!719225) (not e!617037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95588 (= res!719225 (validMask!0 mask!1414))))

(assert (=> start!95588 e!617037))

(assert (=> start!95588 true))

(declare-fun array_inv!25614 (array!69326) Bool)

(assert (=> start!95588 (array_inv!25614 _keys!1070)))

(declare-fun e!617039 () Bool)

(declare-fun array_inv!25615 (array!69328) Bool)

(assert (=> start!95588 (and (array_inv!25615 _values!874) e!617039)))

(declare-fun b!1079161 () Bool)

(declare-fun e!617038 () Bool)

(assert (=> b!1079161 (= e!617038 (not true))))

(declare-fun arrayContainsKey!0 (array!69326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079161 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35431 0))(
  ( (Unit!35432) )
))
(declare-fun lt!478751 () Unit!35431)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69326 (_ BitVec 64) (_ BitVec 32)) Unit!35431)

(assert (=> b!1079161 (= lt!478751 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079162 () Bool)

(declare-fun e!617036 () Bool)

(assert (=> b!1079162 (= e!617036 tp_is_empty!26207)))

(declare-fun b!1079163 () Bool)

(declare-fun res!719229 () Bool)

(assert (=> b!1079163 (=> (not res!719229) (not e!617037))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079163 (= res!719229 (and (= (size!33871 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33870 _keys!1070) (size!33871 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41065 () Bool)

(assert (=> mapIsEmpty!41065 mapRes!41065))

(declare-fun b!1079164 () Bool)

(assert (=> b!1079164 (= e!617039 (and e!617036 mapRes!41065))))

(declare-fun condMapEmpty!41065 () Bool)

(declare-fun mapDefault!41065 () ValueCell!12394)

