; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131892 () Bool)

(assert start!131892)

(declare-fun b!1543568 () Bool)

(declare-fun res!1059133 () Bool)

(declare-fun e!859130 () Bool)

(assert (=> b!1543568 (=> (not res!1059133) (not e!859130))))

(declare-datatypes ((array!102875 0))(
  ( (array!102876 (arr!49635 (Array (_ BitVec 32) (_ BitVec 64))) (size!50186 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102875)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102875 (_ BitVec 32)) Bool)

(assert (=> b!1543568 (= res!1059133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543569 () Bool)

(assert (=> b!1543569 (= e!859130 false)))

(declare-fun lt!665948 () Bool)

(declare-datatypes ((List!36075 0))(
  ( (Nil!36072) (Cons!36071 (h!37517 (_ BitVec 64)) (t!50776 List!36075)) )
))
(declare-fun arrayNoDuplicates!0 (array!102875 (_ BitVec 32) List!36075) Bool)

(assert (=> b!1543569 (= lt!665948 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36072))))

(declare-fun mapNonEmpty!58477 () Bool)

(declare-fun mapRes!58477 () Bool)

(declare-fun tp!111005 () Bool)

(declare-fun e!859128 () Bool)

(assert (=> mapNonEmpty!58477 (= mapRes!58477 (and tp!111005 e!859128))))

(declare-datatypes ((V!58909 0))(
  ( (V!58910 (val!19002 Int)) )
))
(declare-datatypes ((ValueCell!18014 0))(
  ( (ValueCellFull!18014 (v!21800 V!58909)) (EmptyCell!18014) )
))
(declare-fun mapRest!58477 () (Array (_ BitVec 32) ValueCell!18014))

(declare-datatypes ((array!102877 0))(
  ( (array!102878 (arr!49636 (Array (_ BitVec 32) ValueCell!18014)) (size!50187 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102877)

(declare-fun mapKey!58477 () (_ BitVec 32))

(declare-fun mapValue!58477 () ValueCell!18014)

(assert (=> mapNonEmpty!58477 (= (arr!49636 _values!470) (store mapRest!58477 mapKey!58477 mapValue!58477))))

(declare-fun res!1059134 () Bool)

(assert (=> start!131892 (=> (not res!1059134) (not e!859130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131892 (= res!1059134 (validMask!0 mask!926))))

(assert (=> start!131892 e!859130))

(assert (=> start!131892 true))

(declare-fun e!859129 () Bool)

(declare-fun array_inv!38533 (array!102877) Bool)

(assert (=> start!131892 (and (array_inv!38533 _values!470) e!859129)))

(declare-fun array_inv!38534 (array!102875) Bool)

(assert (=> start!131892 (array_inv!38534 _keys!618)))

(declare-fun b!1543570 () Bool)

(declare-fun e!859131 () Bool)

(assert (=> b!1543570 (= e!859129 (and e!859131 mapRes!58477))))

(declare-fun condMapEmpty!58477 () Bool)

(declare-fun mapDefault!58477 () ValueCell!18014)

