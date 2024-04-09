; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95674 () Bool)

(assert start!95674)

(declare-fun b_free!22291 () Bool)

(declare-fun b_next!22291 () Bool)

(assert (=> start!95674 (= b_free!22291 (not b_next!22291))))

(declare-fun tp!78723 () Bool)

(declare-fun b_and!35287 () Bool)

(assert (=> start!95674 (= tp!78723 b_and!35287)))

(declare-fun b!1080703 () Bool)

(declare-fun res!720390 () Bool)

(declare-fun e!617810 () Bool)

(assert (=> b!1080703 (=> (not res!720390) (not e!617810))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69492 0))(
  ( (array!69493 (arr!33416 (Array (_ BitVec 32) (_ BitVec 64))) (size!33953 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69492)

(declare-datatypes ((V!40185 0))(
  ( (V!40186 (val!13203 Int)) )
))
(declare-datatypes ((ValueCell!12437 0))(
  ( (ValueCellFull!12437 (v!15825 V!40185)) (EmptyCell!12437) )
))
(declare-datatypes ((array!69494 0))(
  ( (array!69495 (arr!33417 (Array (_ BitVec 32) ValueCell!12437)) (size!33954 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69494)

(assert (=> b!1080703 (= res!720390 (and (= (size!33954 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33953 _keys!1070) (size!33954 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080704 () Bool)

(declare-fun res!720388 () Bool)

(assert (=> b!1080704 (=> (not res!720388) (not e!617810))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080704 (= res!720388 (validKeyInArray!0 k!904))))

(declare-fun res!720392 () Bool)

(assert (=> start!95674 (=> (not res!720392) (not e!617810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95674 (= res!720392 (validMask!0 mask!1414))))

(assert (=> start!95674 e!617810))

(assert (=> start!95674 tp!78723))

(assert (=> start!95674 true))

(declare-fun tp_is_empty!26293 () Bool)

(assert (=> start!95674 tp_is_empty!26293))

(declare-fun array_inv!25662 (array!69492) Bool)

(assert (=> start!95674 (array_inv!25662 _keys!1070)))

(declare-fun e!617811 () Bool)

(declare-fun array_inv!25663 (array!69494) Bool)

(assert (=> start!95674 (and (array_inv!25663 _values!874) e!617811)))

(declare-fun b!1080705 () Bool)

(declare-fun res!720389 () Bool)

(assert (=> b!1080705 (=> (not res!720389) (not e!617810))))

(declare-datatypes ((List!23419 0))(
  ( (Nil!23416) (Cons!23415 (h!24624 (_ BitVec 64)) (t!32785 List!23419)) )
))
(declare-fun arrayNoDuplicates!0 (array!69492 (_ BitVec 32) List!23419) Bool)

(assert (=> b!1080705 (= res!720389 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23416))))

(declare-fun mapIsEmpty!41194 () Bool)

(declare-fun mapRes!41194 () Bool)

(assert (=> mapIsEmpty!41194 mapRes!41194))

(declare-fun mapNonEmpty!41194 () Bool)

(declare-fun tp!78722 () Bool)

(declare-fun e!617814 () Bool)

(assert (=> mapNonEmpty!41194 (= mapRes!41194 (and tp!78722 e!617814))))

(declare-fun mapKey!41194 () (_ BitVec 32))

(declare-fun mapValue!41194 () ValueCell!12437)

(declare-fun mapRest!41194 () (Array (_ BitVec 32) ValueCell!12437))

(assert (=> mapNonEmpty!41194 (= (arr!33417 _values!874) (store mapRest!41194 mapKey!41194 mapValue!41194))))

(declare-fun b!1080706 () Bool)

(declare-fun e!617813 () Bool)

(assert (=> b!1080706 (= e!617813 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40185)

(declare-datatypes ((tuple2!16796 0))(
  ( (tuple2!16797 (_1!8408 (_ BitVec 64)) (_2!8408 V!40185)) )
))
(declare-datatypes ((List!23420 0))(
  ( (Nil!23417) (Cons!23416 (h!24625 tuple2!16796) (t!32786 List!23420)) )
))
(declare-datatypes ((ListLongMap!14777 0))(
  ( (ListLongMap!14778 (toList!7404 List!23420)) )
))
(declare-fun lt!479075 () ListLongMap!14777)

(declare-fun zeroValue!831 () V!40185)

(declare-fun getCurrentListMapNoExtraKeys!3915 (array!69492 array!69494 (_ BitVec 32) (_ BitVec 32) V!40185 V!40185 (_ BitVec 32) Int) ListLongMap!14777)

(assert (=> b!1080706 (= lt!479075 (getCurrentListMapNoExtraKeys!3915 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080706 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35487 0))(
  ( (Unit!35488) )
))
(declare-fun lt!479073 () Unit!35487)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69492 (_ BitVec 64) (_ BitVec 32)) Unit!35487)

(assert (=> b!1080706 (= lt!479073 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080707 () Bool)

(declare-fun e!617815 () Bool)

(assert (=> b!1080707 (= e!617811 (and e!617815 mapRes!41194))))

(declare-fun condMapEmpty!41194 () Bool)

(declare-fun mapDefault!41194 () ValueCell!12437)

