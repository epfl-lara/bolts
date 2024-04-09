; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84312 () Bool)

(assert start!84312)

(declare-fun b!985879 () Bool)

(declare-fun res!659786 () Bool)

(declare-fun e!555812 () Bool)

(assert (=> b!985879 (=> (not res!659786) (not e!555812))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35765 0))(
  ( (V!35766 (val!11594 Int)) )
))
(declare-datatypes ((ValueCell!11062 0))(
  ( (ValueCellFull!11062 (v!14156 V!35765)) (EmptyCell!11062) )
))
(declare-datatypes ((array!62133 0))(
  ( (array!62134 (arr!29920 (Array (_ BitVec 32) ValueCell!11062)) (size!30400 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62133)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62135 0))(
  ( (array!62136 (arr!29921 (Array (_ BitVec 32) (_ BitVec 64))) (size!30401 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62135)

(assert (=> b!985879 (= res!659786 (and (= (size!30400 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30401 _keys!1544) (size!30400 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985880 () Bool)

(declare-fun e!555813 () Bool)

(declare-fun e!555815 () Bool)

(declare-fun mapRes!36659 () Bool)

(assert (=> b!985880 (= e!555813 (and e!555815 mapRes!36659))))

(declare-fun condMapEmpty!36659 () Bool)

(declare-fun mapDefault!36659 () ValueCell!11062)

