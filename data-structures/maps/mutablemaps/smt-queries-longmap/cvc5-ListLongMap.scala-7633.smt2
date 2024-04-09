; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96154 () Bool)

(assert start!96154)

(declare-fun b_free!22771 () Bool)

(declare-fun b_next!22771 () Bool)

(assert (=> start!96154 (= b_free!22771 (not b_next!22771))))

(declare-fun tp!80163 () Bool)

(declare-fun b_and!36235 () Bool)

(assert (=> start!96154 (= tp!80163 b_and!36235)))

(declare-fun res!727716 () Bool)

(declare-fun e!622959 () Bool)

(assert (=> start!96154 (=> (not res!727716) (not e!622959))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96154 (= res!727716 (validMask!0 mask!1414))))

(assert (=> start!96154 e!622959))

(assert (=> start!96154 tp!80163))

(assert (=> start!96154 true))

(declare-fun tp_is_empty!26773 () Bool)

(assert (=> start!96154 tp_is_empty!26773))

(declare-datatypes ((array!70434 0))(
  ( (array!70435 (arr!33887 (Array (_ BitVec 32) (_ BitVec 64))) (size!34424 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70434)

(declare-fun array_inv!25986 (array!70434) Bool)

(assert (=> start!96154 (array_inv!25986 _keys!1070)))

(declare-datatypes ((V!40825 0))(
  ( (V!40826 (val!13443 Int)) )
))
(declare-datatypes ((ValueCell!12677 0))(
  ( (ValueCellFull!12677 (v!16065 V!40825)) (EmptyCell!12677) )
))
(declare-datatypes ((array!70436 0))(
  ( (array!70437 (arr!33888 (Array (_ BitVec 32) ValueCell!12677)) (size!34425 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70436)

(declare-fun e!622954 () Bool)

(declare-fun array_inv!25987 (array!70436) Bool)

(assert (=> start!96154 (and (array_inv!25987 _values!874) e!622954)))

(declare-fun b!1090661 () Bool)

(declare-fun res!727718 () Bool)

(assert (=> b!1090661 (=> (not res!727718) (not e!622959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70434 (_ BitVec 32)) Bool)

(assert (=> b!1090661 (= res!727718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090662 () Bool)

(declare-fun res!727715 () Bool)

(assert (=> b!1090662 (=> (not res!727715) (not e!622959))))

(declare-datatypes ((List!23801 0))(
  ( (Nil!23798) (Cons!23797 (h!25006 (_ BitVec 64)) (t!33637 List!23801)) )
))
(declare-fun arrayNoDuplicates!0 (array!70434 (_ BitVec 32) List!23801) Bool)

(assert (=> b!1090662 (= res!727715 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23798))))

(declare-fun b!1090663 () Bool)

(declare-fun e!622960 () Bool)

(assert (=> b!1090663 (= e!622960 tp_is_empty!26773)))

(declare-fun b!1090664 () Bool)

(declare-fun res!727723 () Bool)

(declare-fun e!622956 () Bool)

(assert (=> b!1090664 (=> (not res!727723) (not e!622956))))

(declare-fun lt!486755 () array!70434)

(assert (=> b!1090664 (= res!727723 (arrayNoDuplicates!0 lt!486755 #b00000000000000000000000000000000 Nil!23798))))

(declare-fun b!1090665 () Bool)

(declare-fun res!727717 () Bool)

(assert (=> b!1090665 (=> (not res!727717) (not e!622959))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090665 (= res!727717 (validKeyInArray!0 k!904))))

(declare-fun b!1090666 () Bool)

(declare-fun e!622958 () Bool)

(declare-fun e!622953 () Bool)

(assert (=> b!1090666 (= e!622958 e!622953)))

(declare-fun res!727719 () Bool)

(assert (=> b!1090666 (=> res!727719 e!622953)))

(assert (=> b!1090666 (= res!727719 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17162 0))(
  ( (tuple2!17163 (_1!8591 (_ BitVec 64)) (_2!8591 V!40825)) )
))
(declare-datatypes ((List!23802 0))(
  ( (Nil!23799) (Cons!23798 (h!25007 tuple2!17162) (t!33638 List!23802)) )
))
(declare-datatypes ((ListLongMap!15143 0))(
  ( (ListLongMap!15144 (toList!7587 List!23802)) )
))
(declare-fun lt!486763 () ListLongMap!15143)

(declare-fun lt!486757 () ListLongMap!15143)

(assert (=> b!1090666 (= lt!486763 lt!486757)))

(declare-fun lt!486759 () ListLongMap!15143)

(declare-fun lt!486754 () tuple2!17162)

(declare-fun +!3296 (ListLongMap!15143 tuple2!17162) ListLongMap!15143)

(assert (=> b!1090666 (= lt!486757 (+!3296 lt!486759 lt!486754))))

(declare-fun lt!486764 () ListLongMap!15143)

(declare-fun lt!486756 () ListLongMap!15143)

(assert (=> b!1090666 (= lt!486764 lt!486756)))

(declare-fun lt!486752 () ListLongMap!15143)

(assert (=> b!1090666 (= lt!486756 (+!3296 lt!486752 lt!486754))))

(declare-fun lt!486753 () ListLongMap!15143)

(assert (=> b!1090666 (= lt!486764 (+!3296 lt!486753 lt!486754))))

(declare-fun minValue!831 () V!40825)

(assert (=> b!1090666 (= lt!486754 (tuple2!17163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090667 () Bool)

(declare-fun res!727721 () Bool)

(assert (=> b!1090667 (=> (not res!727721) (not e!622959))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090667 (= res!727721 (= (select (arr!33887 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41914 () Bool)

(declare-fun mapRes!41914 () Bool)

(assert (=> mapIsEmpty!41914 mapRes!41914))

(declare-fun b!1090668 () Bool)

(declare-fun res!727720 () Bool)

(assert (=> b!1090668 (=> (not res!727720) (not e!622959))))

(assert (=> b!1090668 (= res!727720 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34424 _keys!1070))))))

(declare-fun b!1090669 () Bool)

(declare-fun e!622957 () Bool)

(assert (=> b!1090669 (= e!622957 tp_is_empty!26773)))

(declare-fun b!1090670 () Bool)

(assert (=> b!1090670 (= e!622953 true)))

(declare-fun -!865 (ListLongMap!15143 (_ BitVec 64)) ListLongMap!15143)

(assert (=> b!1090670 (= (-!865 lt!486757 k!904) lt!486756)))

(declare-datatypes ((Unit!35845 0))(
  ( (Unit!35846) )
))
(declare-fun lt!486758 () Unit!35845)

(declare-fun addRemoveCommutativeForDiffKeys!93 (ListLongMap!15143 (_ BitVec 64) V!40825 (_ BitVec 64)) Unit!35845)

(assert (=> b!1090670 (= lt!486758 (addRemoveCommutativeForDiffKeys!93 lt!486759 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090671 () Bool)

(declare-fun res!727724 () Bool)

(assert (=> b!1090671 (=> (not res!727724) (not e!622959))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090671 (= res!727724 (and (= (size!34425 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34424 _keys!1070) (size!34425 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090672 () Bool)

(assert (=> b!1090672 (= e!622954 (and e!622960 mapRes!41914))))

(declare-fun condMapEmpty!41914 () Bool)

(declare-fun mapDefault!41914 () ValueCell!12677)

