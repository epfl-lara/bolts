; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131778 () Bool)

(assert start!131778)

(declare-fun b!1542542 () Bool)

(declare-fun res!1058619 () Bool)

(declare-fun e!858273 () Bool)

(assert (=> b!1542542 (=> (not res!1058619) (not e!858273))))

(declare-datatypes ((array!102665 0))(
  ( (array!102666 (arr!49530 (Array (_ BitVec 32) (_ BitVec 64))) (size!50081 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102665)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58757 0))(
  ( (V!58758 (val!18945 Int)) )
))
(declare-datatypes ((ValueCell!17957 0))(
  ( (ValueCellFull!17957 (v!21743 V!58757)) (EmptyCell!17957) )
))
(declare-datatypes ((array!102667 0))(
  ( (array!102668 (arr!49531 (Array (_ BitVec 32) ValueCell!17957)) (size!50082 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102667)

(assert (=> b!1542542 (= res!1058619 (and (= (size!50082 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50081 _keys!618) (size!50082 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542543 () Bool)

(declare-fun e!858276 () Bool)

(declare-fun e!858277 () Bool)

(declare-fun mapRes!58306 () Bool)

(assert (=> b!1542543 (= e!858276 (and e!858277 mapRes!58306))))

(declare-fun condMapEmpty!58306 () Bool)

(declare-fun mapDefault!58306 () ValueCell!17957)

