; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131736 () Bool)

(assert start!131736)

(declare-fun b!1542164 () Bool)

(declare-fun res!1058431 () Bool)

(declare-fun e!857962 () Bool)

(assert (=> b!1542164 (=> (not res!1058431) (not e!857962))))

(declare-datatypes ((array!102581 0))(
  ( (array!102582 (arr!49488 (Array (_ BitVec 32) (_ BitVec 64))) (size!50039 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102581)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102581 (_ BitVec 32)) Bool)

(assert (=> b!1542164 (= res!1058431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058432 () Bool)

(assert (=> start!131736 (=> (not res!1058432) (not e!857962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131736 (= res!1058432 (validMask!0 mask!926))))

(assert (=> start!131736 e!857962))

(assert (=> start!131736 true))

(declare-datatypes ((V!58701 0))(
  ( (V!58702 (val!18924 Int)) )
))
(declare-datatypes ((ValueCell!17936 0))(
  ( (ValueCellFull!17936 (v!21722 V!58701)) (EmptyCell!17936) )
))
(declare-datatypes ((array!102583 0))(
  ( (array!102584 (arr!49489 (Array (_ BitVec 32) ValueCell!17936)) (size!50040 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102583)

(declare-fun e!857959 () Bool)

(declare-fun array_inv!38423 (array!102583) Bool)

(assert (=> start!131736 (and (array_inv!38423 _values!470) e!857959)))

(declare-fun array_inv!38424 (array!102581) Bool)

(assert (=> start!131736 (array_inv!38424 _keys!618)))

(declare-fun b!1542165 () Bool)

(declare-fun res!1058430 () Bool)

(assert (=> b!1542165 (=> (not res!1058430) (not e!857962))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542165 (= res!1058430 (and (= (size!50040 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50039 _keys!618) (size!50040 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542166 () Bool)

(declare-fun e!857961 () Bool)

(declare-fun tp_is_empty!37693 () Bool)

(assert (=> b!1542166 (= e!857961 tp_is_empty!37693)))

(declare-fun mapIsEmpty!58243 () Bool)

(declare-fun mapRes!58243 () Bool)

(assert (=> mapIsEmpty!58243 mapRes!58243))

(declare-fun b!1542167 () Bool)

(assert (=> b!1542167 (= e!857959 (and e!857961 mapRes!58243))))

(declare-fun condMapEmpty!58243 () Bool)

(declare-fun mapDefault!58243 () ValueCell!17936)

