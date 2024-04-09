; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96158 () Bool)

(assert start!96158)

(declare-fun b_free!22775 () Bool)

(declare-fun b_next!22775 () Bool)

(assert (=> start!96158 (= b_free!22775 (not b_next!22775))))

(declare-fun tp!80175 () Bool)

(declare-fun b_and!36243 () Bool)

(assert (=> start!96158 (= tp!80175 b_and!36243)))

(declare-fun b!1090749 () Bool)

(declare-fun res!727783 () Bool)

(declare-fun e!623006 () Bool)

(assert (=> b!1090749 (=> (not res!727783) (not e!623006))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70442 0))(
  ( (array!70443 (arr!33891 (Array (_ BitVec 32) (_ BitVec 64))) (size!34428 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70442)

(declare-datatypes ((V!40829 0))(
  ( (V!40830 (val!13445 Int)) )
))
(declare-datatypes ((ValueCell!12679 0))(
  ( (ValueCellFull!12679 (v!16067 V!40829)) (EmptyCell!12679) )
))
(declare-datatypes ((array!70444 0))(
  ( (array!70445 (arr!33892 (Array (_ BitVec 32) ValueCell!12679)) (size!34429 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70444)

(assert (=> b!1090749 (= res!727783 (and (= (size!34429 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34428 _keys!1070) (size!34429 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090750 () Bool)

(declare-fun e!623005 () Bool)

(declare-fun tp_is_empty!26777 () Bool)

(assert (=> b!1090750 (= e!623005 tp_is_empty!26777)))

(declare-fun mapNonEmpty!41920 () Bool)

(declare-fun mapRes!41920 () Bool)

(declare-fun tp!80174 () Bool)

(declare-fun e!623004 () Bool)

(assert (=> mapNonEmpty!41920 (= mapRes!41920 (and tp!80174 e!623004))))

(declare-fun mapValue!41920 () ValueCell!12679)

(declare-fun mapKey!41920 () (_ BitVec 32))

(declare-fun mapRest!41920 () (Array (_ BitVec 32) ValueCell!12679))

(assert (=> mapNonEmpty!41920 (= (arr!33892 _values!874) (store mapRest!41920 mapKey!41920 mapValue!41920))))

(declare-fun b!1090751 () Bool)

(declare-fun res!727789 () Bool)

(assert (=> b!1090751 (=> (not res!727789) (not e!623006))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090751 (= res!727789 (= (select (arr!33891 _keys!1070) i!650) k!904))))

(declare-fun b!1090752 () Bool)

(declare-fun res!727784 () Bool)

(assert (=> b!1090752 (=> (not res!727784) (not e!623006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090752 (= res!727784 (validKeyInArray!0 k!904))))

(declare-fun b!1090753 () Bool)

(declare-fun res!727790 () Bool)

(declare-fun e!623008 () Bool)

(assert (=> b!1090753 (=> (not res!727790) (not e!623008))))

(declare-fun lt!486837 () array!70442)

(declare-datatypes ((List!23805 0))(
  ( (Nil!23802) (Cons!23801 (h!25010 (_ BitVec 64)) (t!33645 List!23805)) )
))
(declare-fun arrayNoDuplicates!0 (array!70442 (_ BitVec 32) List!23805) Bool)

(assert (=> b!1090753 (= res!727790 (arrayNoDuplicates!0 lt!486837 #b00000000000000000000000000000000 Nil!23802))))

(declare-fun b!1090754 () Bool)

(declare-fun res!727786 () Bool)

(assert (=> b!1090754 (=> (not res!727786) (not e!623006))))

(assert (=> b!1090754 (= res!727786 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34428 _keys!1070))))))

(declare-fun b!1090755 () Bool)

(assert (=> b!1090755 (= e!623006 e!623008)))

(declare-fun res!727782 () Bool)

(assert (=> b!1090755 (=> (not res!727782) (not e!623008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70442 (_ BitVec 32)) Bool)

(assert (=> b!1090755 (= res!727782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486837 mask!1414))))

(assert (=> b!1090755 (= lt!486837 (array!70443 (store (arr!33891 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34428 _keys!1070)))))

(declare-fun b!1090756 () Bool)

(assert (=> b!1090756 (= e!623004 tp_is_empty!26777)))

(declare-fun b!1090757 () Bool)

(declare-fun e!623003 () Bool)

(assert (=> b!1090757 (= e!623003 true)))

(declare-datatypes ((tuple2!17166 0))(
  ( (tuple2!17167 (_1!8593 (_ BitVec 64)) (_2!8593 V!40829)) )
))
(declare-datatypes ((List!23806 0))(
  ( (Nil!23803) (Cons!23802 (h!25011 tuple2!17166) (t!33646 List!23806)) )
))
(declare-datatypes ((ListLongMap!15147 0))(
  ( (ListLongMap!15148 (toList!7589 List!23806)) )
))
(declare-fun lt!486831 () ListLongMap!15147)

(declare-fun lt!486835 () ListLongMap!15147)

(declare-fun -!867 (ListLongMap!15147 (_ BitVec 64)) ListLongMap!15147)

(assert (=> b!1090757 (= (-!867 lt!486831 k!904) lt!486835)))

(declare-datatypes ((Unit!35849 0))(
  ( (Unit!35850) )
))
(declare-fun lt!486839 () Unit!35849)

(declare-fun minValue!831 () V!40829)

(declare-fun lt!486840 () ListLongMap!15147)

(declare-fun addRemoveCommutativeForDiffKeys!95 (ListLongMap!15147 (_ BitVec 64) V!40829 (_ BitVec 64)) Unit!35849)

(assert (=> b!1090757 (= lt!486839 (addRemoveCommutativeForDiffKeys!95 lt!486840 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090758 () Bool)

(declare-fun e!623002 () Bool)

(assert (=> b!1090758 (= e!623002 (and e!623005 mapRes!41920))))

(declare-fun condMapEmpty!41920 () Bool)

(declare-fun mapDefault!41920 () ValueCell!12679)

