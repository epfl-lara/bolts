; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131642 () Bool)

(assert start!131642)

(declare-fun b!1541524 () Bool)

(declare-fun e!857449 () Bool)

(declare-fun tp_is_empty!37637 () Bool)

(assert (=> b!1541524 (= e!857449 tp_is_empty!37637)))

(declare-fun b!1541525 () Bool)

(declare-fun res!1058100 () Bool)

(declare-fun e!857453 () Bool)

(assert (=> b!1541525 (=> (not res!1058100) (not e!857453))))

(declare-datatypes ((array!102469 0))(
  ( (array!102470 (arr!49436 (Array (_ BitVec 32) (_ BitVec 64))) (size!49987 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102469)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102469 (_ BitVec 32)) Bool)

(assert (=> b!1541525 (= res!1058100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58147 () Bool)

(declare-fun mapRes!58147 () Bool)

(assert (=> mapIsEmpty!58147 mapRes!58147))

(declare-fun b!1541526 () Bool)

(assert (=> b!1541526 (= e!857453 (bvsgt #b00000000000000000000000000000000 (size!49987 _keys!618)))))

(declare-fun b!1541527 () Bool)

(declare-fun e!857452 () Bool)

(assert (=> b!1541527 (= e!857452 tp_is_empty!37637)))

(declare-fun b!1541528 () Bool)

(declare-fun e!857450 () Bool)

(assert (=> b!1541528 (= e!857450 (and e!857449 mapRes!58147))))

(declare-fun condMapEmpty!58147 () Bool)

(declare-datatypes ((V!58625 0))(
  ( (V!58626 (val!18896 Int)) )
))
(declare-datatypes ((ValueCell!17908 0))(
  ( (ValueCellFull!17908 (v!21693 V!58625)) (EmptyCell!17908) )
))
(declare-datatypes ((array!102471 0))(
  ( (array!102472 (arr!49437 (Array (_ BitVec 32) ValueCell!17908)) (size!49988 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102471)

(declare-fun mapDefault!58147 () ValueCell!17908)

