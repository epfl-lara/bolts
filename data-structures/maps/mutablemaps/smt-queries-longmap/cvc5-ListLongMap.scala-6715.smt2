; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84290 () Bool)

(assert start!84290)

(declare-fun b!985681 () Bool)

(declare-fun e!555646 () Bool)

(declare-fun tp_is_empty!23065 () Bool)

(assert (=> b!985681 (= e!555646 tp_is_empty!23065)))

(declare-fun b!985682 () Bool)

(declare-fun res!659686 () Bool)

(declare-fun e!555647 () Bool)

(assert (=> b!985682 (=> (not res!659686) (not e!555647))))

(declare-datatypes ((array!62093 0))(
  ( (array!62094 (arr!29900 (Array (_ BitVec 32) (_ BitVec 64))) (size!30380 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62093)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62093 (_ BitVec 32)) Bool)

(assert (=> b!985682 (= res!659686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985683 () Bool)

(declare-fun e!555648 () Bool)

(assert (=> b!985683 (= e!555648 tp_is_empty!23065)))

(declare-fun b!985684 () Bool)

(assert (=> b!985684 (= e!555647 false)))

(declare-fun lt!437338 () Bool)

(declare-datatypes ((List!20838 0))(
  ( (Nil!20835) (Cons!20834 (h!21996 (_ BitVec 64)) (t!29745 List!20838)) )
))
(declare-fun arrayNoDuplicates!0 (array!62093 (_ BitVec 32) List!20838) Bool)

(assert (=> b!985684 (= lt!437338 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20835))))

(declare-fun mapIsEmpty!36626 () Bool)

(declare-fun mapRes!36626 () Bool)

(assert (=> mapIsEmpty!36626 mapRes!36626))

(declare-fun b!985685 () Bool)

(declare-fun e!555649 () Bool)

(assert (=> b!985685 (= e!555649 (and e!555648 mapRes!36626))))

(declare-fun condMapEmpty!36626 () Bool)

(declare-datatypes ((V!35737 0))(
  ( (V!35738 (val!11583 Int)) )
))
(declare-datatypes ((ValueCell!11051 0))(
  ( (ValueCellFull!11051 (v!14145 V!35737)) (EmptyCell!11051) )
))
(declare-datatypes ((array!62095 0))(
  ( (array!62096 (arr!29901 (Array (_ BitVec 32) ValueCell!11051)) (size!30381 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62095)

(declare-fun mapDefault!36626 () ValueCell!11051)

