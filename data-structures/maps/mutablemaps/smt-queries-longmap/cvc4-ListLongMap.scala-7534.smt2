; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95548 () Bool)

(assert start!95548)

(declare-fun b!1078673 () Bool)

(declare-fun res!718878 () Bool)

(declare-fun e!616784 () Bool)

(assert (=> b!1078673 (=> (not res!718878) (not e!616784))))

(declare-datatypes ((array!69278 0))(
  ( (array!69279 (arr!33310 (Array (_ BitVec 32) (_ BitVec 64))) (size!33847 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69278)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69278 (_ BitVec 32)) Bool)

(assert (=> b!1078673 (= res!718878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078674 () Bool)

(declare-fun e!616785 () Bool)

(assert (=> b!1078674 (= e!616785 (not true))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078674 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35415 0))(
  ( (Unit!35416) )
))
(declare-fun lt!478664 () Unit!35415)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69278 (_ BitVec 64) (_ BitVec 32)) Unit!35415)

(assert (=> b!1078674 (= lt!478664 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1078675 () Bool)

(declare-fun res!718875 () Bool)

(assert (=> b!1078675 (=> (not res!718875) (not e!616784))))

(declare-datatypes ((V!40037 0))(
  ( (V!40038 (val!13148 Int)) )
))
(declare-datatypes ((ValueCell!12382 0))(
  ( (ValueCellFull!12382 (v!15770 V!40037)) (EmptyCell!12382) )
))
(declare-datatypes ((array!69280 0))(
  ( (array!69281 (arr!33311 (Array (_ BitVec 32) ValueCell!12382)) (size!33848 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69280)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078675 (= res!718875 (and (= (size!33848 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33847 _keys!1070) (size!33848 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078676 () Bool)

(declare-fun res!718879 () Bool)

(assert (=> b!1078676 (=> (not res!718879) (not e!616784))))

(assert (=> b!1078676 (= res!718879 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33847 _keys!1070))))))

(declare-fun mapIsEmpty!41026 () Bool)

(declare-fun mapRes!41026 () Bool)

(assert (=> mapIsEmpty!41026 mapRes!41026))

(declare-fun b!1078677 () Bool)

(declare-fun res!718874 () Bool)

(assert (=> b!1078677 (=> (not res!718874) (not e!616785))))

(declare-fun lt!478663 () array!69278)

(declare-datatypes ((List!23360 0))(
  ( (Nil!23357) (Cons!23356 (h!24565 (_ BitVec 64)) (t!32726 List!23360)) )
))
(declare-fun arrayNoDuplicates!0 (array!69278 (_ BitVec 32) List!23360) Bool)

(assert (=> b!1078677 (= res!718874 (arrayNoDuplicates!0 lt!478663 #b00000000000000000000000000000000 Nil!23357))))

(declare-fun b!1078678 () Bool)

(declare-fun e!616783 () Bool)

(declare-fun tp_is_empty!26183 () Bool)

(assert (=> b!1078678 (= e!616783 tp_is_empty!26183)))

(declare-fun b!1078679 () Bool)

(declare-fun res!718881 () Bool)

(assert (=> b!1078679 (=> (not res!718881) (not e!616784))))

(assert (=> b!1078679 (= res!718881 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23357))))

(declare-fun b!1078680 () Bool)

(declare-fun e!616780 () Bool)

(declare-fun e!616782 () Bool)

(assert (=> b!1078680 (= e!616780 (and e!616782 mapRes!41026))))

(declare-fun condMapEmpty!41026 () Bool)

(declare-fun mapDefault!41026 () ValueCell!12382)

