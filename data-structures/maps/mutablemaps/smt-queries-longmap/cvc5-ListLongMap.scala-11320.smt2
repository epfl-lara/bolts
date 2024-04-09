; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131856 () Bool)

(assert start!131856)

(declare-fun b!1543244 () Bool)

(declare-fun res!1058971 () Bool)

(declare-fun e!858861 () Bool)

(assert (=> b!1543244 (=> (not res!1058971) (not e!858861))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58861 0))(
  ( (V!58862 (val!18984 Int)) )
))
(declare-datatypes ((ValueCell!17996 0))(
  ( (ValueCellFull!17996 (v!21782 V!58861)) (EmptyCell!17996) )
))
(declare-datatypes ((array!102805 0))(
  ( (array!102806 (arr!49600 (Array (_ BitVec 32) ValueCell!17996)) (size!50151 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102805)

(declare-datatypes ((array!102807 0))(
  ( (array!102808 (arr!49601 (Array (_ BitVec 32) (_ BitVec 64))) (size!50152 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102807)

(assert (=> b!1543244 (= res!1058971 (and (= (size!50151 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50152 _keys!618) (size!50151 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58423 () Bool)

(declare-fun mapRes!58423 () Bool)

(declare-fun tp!110951 () Bool)

(declare-fun e!858860 () Bool)

(assert (=> mapNonEmpty!58423 (= mapRes!58423 (and tp!110951 e!858860))))

(declare-fun mapValue!58423 () ValueCell!17996)

(declare-fun mapRest!58423 () (Array (_ BitVec 32) ValueCell!17996))

(declare-fun mapKey!58423 () (_ BitVec 32))

(assert (=> mapNonEmpty!58423 (= (arr!49600 _values!470) (store mapRest!58423 mapKey!58423 mapValue!58423))))

(declare-fun b!1543245 () Bool)

(assert (=> b!1543245 (= e!858861 false)))

(declare-fun lt!665894 () Bool)

(declare-datatypes ((List!36063 0))(
  ( (Nil!36060) (Cons!36059 (h!37505 (_ BitVec 64)) (t!50764 List!36063)) )
))
(declare-fun arrayNoDuplicates!0 (array!102807 (_ BitVec 32) List!36063) Bool)

(assert (=> b!1543245 (= lt!665894 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36060))))

(declare-fun mapIsEmpty!58423 () Bool)

(assert (=> mapIsEmpty!58423 mapRes!58423))

(declare-fun b!1543246 () Bool)

(declare-fun tp_is_empty!37813 () Bool)

(assert (=> b!1543246 (= e!858860 tp_is_empty!37813)))

(declare-fun b!1543247 () Bool)

(declare-fun e!858858 () Bool)

(assert (=> b!1543247 (= e!858858 tp_is_empty!37813)))

(declare-fun res!1058970 () Bool)

(assert (=> start!131856 (=> (not res!1058970) (not e!858861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131856 (= res!1058970 (validMask!0 mask!926))))

(assert (=> start!131856 e!858861))

(assert (=> start!131856 true))

(declare-fun e!858862 () Bool)

(declare-fun array_inv!38513 (array!102805) Bool)

(assert (=> start!131856 (and (array_inv!38513 _values!470) e!858862)))

(declare-fun array_inv!38514 (array!102807) Bool)

(assert (=> start!131856 (array_inv!38514 _keys!618)))

(declare-fun b!1543248 () Bool)

(declare-fun res!1058972 () Bool)

(assert (=> b!1543248 (=> (not res!1058972) (not e!858861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102807 (_ BitVec 32)) Bool)

(assert (=> b!1543248 (= res!1058972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543249 () Bool)

(assert (=> b!1543249 (= e!858862 (and e!858858 mapRes!58423))))

(declare-fun condMapEmpty!58423 () Bool)

(declare-fun mapDefault!58423 () ValueCell!17996)

