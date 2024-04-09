; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133444 () Bool)

(assert start!133444)

(declare-fun b!1559501 () Bool)

(declare-fun res!1066526 () Bool)

(declare-fun e!868997 () Bool)

(assert (=> b!1559501 (=> (not res!1066526) (not e!868997))))

(declare-datatypes ((array!103671 0))(
  ( (array!103672 (arr!50023 (Array (_ BitVec 32) (_ BitVec 64))) (size!50574 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103671)

(declare-datatypes ((List!36499 0))(
  ( (Nil!36496) (Cons!36495 (h!37942 (_ BitVec 64)) (t!51239 List!36499)) )
))
(declare-fun arrayNoDuplicates!0 (array!103671 (_ BitVec 32) List!36499) Bool)

(assert (=> b!1559501 (= res!1066526 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36496))))

(declare-fun mapNonEmpty!59118 () Bool)

(declare-fun mapRes!59118 () Bool)

(declare-fun tp!112774 () Bool)

(declare-fun e!868996 () Bool)

(assert (=> mapNonEmpty!59118 (= mapRes!59118 (and tp!112774 e!868996))))

(declare-datatypes ((V!59533 0))(
  ( (V!59534 (val!19331 Int)) )
))
(declare-datatypes ((ValueCell!18217 0))(
  ( (ValueCellFull!18217 (v!22080 V!59533)) (EmptyCell!18217) )
))
(declare-fun mapRest!59118 () (Array (_ BitVec 32) ValueCell!18217))

(declare-fun mapKey!59118 () (_ BitVec 32))

(declare-datatypes ((array!103673 0))(
  ( (array!103674 (arr!50024 (Array (_ BitVec 32) ValueCell!18217)) (size!50575 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103673)

(declare-fun mapValue!59118 () ValueCell!18217)

(assert (=> mapNonEmpty!59118 (= (arr!50024 _values!487) (store mapRest!59118 mapKey!59118 mapValue!59118))))

(declare-fun b!1559502 () Bool)

(declare-fun e!868995 () Bool)

(declare-fun e!868994 () Bool)

(assert (=> b!1559502 (= e!868995 (and e!868994 mapRes!59118))))

(declare-fun condMapEmpty!59118 () Bool)

(declare-fun mapDefault!59118 () ValueCell!18217)

