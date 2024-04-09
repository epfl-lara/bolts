; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95524 () Bool)

(assert start!95524)

(declare-fun b!1078269 () Bool)

(declare-fun e!616566 () Bool)

(declare-fun tp_is_empty!26159 () Bool)

(assert (=> b!1078269 (= e!616566 tp_is_empty!26159)))

(declare-fun b!1078270 () Bool)

(declare-fun res!718583 () Bool)

(declare-fun e!616567 () Bool)

(assert (=> b!1078270 (=> (not res!718583) (not e!616567))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078270 (= res!718583 (validKeyInArray!0 k!904))))

(declare-fun res!718579 () Bool)

(assert (=> start!95524 (=> (not res!718579) (not e!616567))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95524 (= res!718579 (validMask!0 mask!1414))))

(assert (=> start!95524 e!616567))

(assert (=> start!95524 true))

(declare-datatypes ((array!69232 0))(
  ( (array!69233 (arr!33287 (Array (_ BitVec 32) (_ BitVec 64))) (size!33824 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69232)

(declare-fun array_inv!25580 (array!69232) Bool)

(assert (=> start!95524 (array_inv!25580 _keys!1070)))

(declare-datatypes ((V!40005 0))(
  ( (V!40006 (val!13136 Int)) )
))
(declare-datatypes ((ValueCell!12370 0))(
  ( (ValueCellFull!12370 (v!15758 V!40005)) (EmptyCell!12370) )
))
(declare-datatypes ((array!69234 0))(
  ( (array!69235 (arr!33288 (Array (_ BitVec 32) ValueCell!12370)) (size!33825 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69234)

(declare-fun e!616569 () Bool)

(declare-fun array_inv!25581 (array!69234) Bool)

(assert (=> start!95524 (and (array_inv!25581 _values!874) e!616569)))

(declare-fun b!1078271 () Bool)

(declare-fun res!718582 () Bool)

(assert (=> b!1078271 (=> (not res!718582) (not e!616567))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078271 (= res!718582 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33824 _keys!1070))))))

(declare-fun mapIsEmpty!40990 () Bool)

(declare-fun mapRes!40990 () Bool)

(assert (=> mapIsEmpty!40990 mapRes!40990))

(declare-fun b!1078272 () Bool)

(declare-fun res!718580 () Bool)

(assert (=> b!1078272 (=> (not res!718580) (not e!616567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69232 (_ BitVec 32)) Bool)

(assert (=> b!1078272 (= res!718580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078273 () Bool)

(declare-fun e!616564 () Bool)

(assert (=> b!1078273 (= e!616567 e!616564)))

(declare-fun res!718584 () Bool)

(assert (=> b!1078273 (=> (not res!718584) (not e!616564))))

(declare-fun lt!478592 () array!69232)

(assert (=> b!1078273 (= res!718584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478592 mask!1414))))

(assert (=> b!1078273 (= lt!478592 (array!69233 (store (arr!33287 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33824 _keys!1070)))))

(declare-fun b!1078274 () Bool)

(declare-fun res!718577 () Bool)

(assert (=> b!1078274 (=> (not res!718577) (not e!616567))))

(declare-datatypes ((List!23349 0))(
  ( (Nil!23346) (Cons!23345 (h!24554 (_ BitVec 64)) (t!32715 List!23349)) )
))
(declare-fun arrayNoDuplicates!0 (array!69232 (_ BitVec 32) List!23349) Bool)

(assert (=> b!1078274 (= res!718577 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23346))))

(declare-fun b!1078275 () Bool)

(declare-fun res!718581 () Bool)

(assert (=> b!1078275 (=> (not res!718581) (not e!616567))))

(assert (=> b!1078275 (= res!718581 (= (select (arr!33287 _keys!1070) i!650) k!904))))

(declare-fun b!1078276 () Bool)

(declare-fun e!616568 () Bool)

(assert (=> b!1078276 (= e!616569 (and e!616568 mapRes!40990))))

(declare-fun condMapEmpty!40990 () Bool)

(declare-fun mapDefault!40990 () ValueCell!12370)

