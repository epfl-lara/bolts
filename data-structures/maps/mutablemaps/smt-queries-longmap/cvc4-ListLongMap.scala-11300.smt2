; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131740 () Bool)

(assert start!131740)

(declare-fun b!1542200 () Bool)

(declare-fun e!857990 () Bool)

(assert (=> b!1542200 (= e!857990 false)))

(declare-fun lt!665720 () Bool)

(declare-datatypes ((array!102589 0))(
  ( (array!102590 (arr!49492 (Array (_ BitVec 32) (_ BitVec 64))) (size!50043 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102589)

(declare-datatypes ((List!36026 0))(
  ( (Nil!36023) (Cons!36022 (h!37468 (_ BitVec 64)) (t!50727 List!36026)) )
))
(declare-fun arrayNoDuplicates!0 (array!102589 (_ BitVec 32) List!36026) Bool)

(assert (=> b!1542200 (= lt!665720 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36023))))

(declare-fun b!1542201 () Bool)

(declare-fun res!1058448 () Bool)

(assert (=> b!1542201 (=> (not res!1058448) (not e!857990))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58705 0))(
  ( (V!58706 (val!18926 Int)) )
))
(declare-datatypes ((ValueCell!17938 0))(
  ( (ValueCellFull!17938 (v!21724 V!58705)) (EmptyCell!17938) )
))
(declare-datatypes ((array!102591 0))(
  ( (array!102592 (arr!49493 (Array (_ BitVec 32) ValueCell!17938)) (size!50044 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102591)

(assert (=> b!1542201 (= res!1058448 (and (= (size!50044 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50043 _keys!618) (size!50044 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058449 () Bool)

(assert (=> start!131740 (=> (not res!1058449) (not e!857990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131740 (= res!1058449 (validMask!0 mask!926))))

(assert (=> start!131740 e!857990))

(assert (=> start!131740 true))

(declare-fun e!857991 () Bool)

(declare-fun array_inv!38427 (array!102591) Bool)

(assert (=> start!131740 (and (array_inv!38427 _values!470) e!857991)))

(declare-fun array_inv!38428 (array!102589) Bool)

(assert (=> start!131740 (array_inv!38428 _keys!618)))

(declare-fun b!1542202 () Bool)

(declare-fun res!1058450 () Bool)

(assert (=> b!1542202 (=> (not res!1058450) (not e!857990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102589 (_ BitVec 32)) Bool)

(assert (=> b!1542202 (= res!1058450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58249 () Bool)

(declare-fun mapRes!58249 () Bool)

(assert (=> mapIsEmpty!58249 mapRes!58249))

(declare-fun b!1542203 () Bool)

(declare-fun e!857989 () Bool)

(declare-fun tp_is_empty!37697 () Bool)

(assert (=> b!1542203 (= e!857989 tp_is_empty!37697)))

(declare-fun b!1542204 () Bool)

(declare-fun e!857988 () Bool)

(assert (=> b!1542204 (= e!857991 (and e!857988 mapRes!58249))))

(declare-fun condMapEmpty!58249 () Bool)

(declare-fun mapDefault!58249 () ValueCell!17938)

