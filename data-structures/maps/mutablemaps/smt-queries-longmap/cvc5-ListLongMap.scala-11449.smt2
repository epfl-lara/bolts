; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133524 () Bool)

(assert start!133524)

(declare-fun b!1560467 () Bool)

(declare-fun e!869593 () Bool)

(assert (=> b!1560467 (= e!869593 false)))

(declare-fun lt!670941 () Bool)

(declare-datatypes ((array!103825 0))(
  ( (array!103826 (arr!50100 (Array (_ BitVec 32) (_ BitVec 64))) (size!50651 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103825)

(declare-datatypes ((List!36550 0))(
  ( (Nil!36547) (Cons!36546 (h!37993 (_ BitVec 64)) (t!51290 List!36550)) )
))
(declare-fun arrayNoDuplicates!0 (array!103825 (_ BitVec 32) List!36550) Bool)

(assert (=> b!1560467 (= lt!670941 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36547))))

(declare-fun mapIsEmpty!59238 () Bool)

(declare-fun mapRes!59238 () Bool)

(assert (=> mapIsEmpty!59238 mapRes!59238))

(declare-fun b!1560468 () Bool)

(declare-fun e!869595 () Bool)

(declare-fun tp_is_empty!38575 () Bool)

(assert (=> b!1560468 (= e!869595 tp_is_empty!38575)))

(declare-fun b!1560470 () Bool)

(declare-fun e!869594 () Bool)

(assert (=> b!1560470 (= e!869594 (and e!869595 mapRes!59238))))

(declare-fun condMapEmpty!59238 () Bool)

(declare-datatypes ((V!59641 0))(
  ( (V!59642 (val!19371 Int)) )
))
(declare-datatypes ((ValueCell!18257 0))(
  ( (ValueCellFull!18257 (v!22120 V!59641)) (EmptyCell!18257) )
))
(declare-datatypes ((array!103827 0))(
  ( (array!103828 (arr!50101 (Array (_ BitVec 32) ValueCell!18257)) (size!50652 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103827)

(declare-fun mapDefault!59238 () ValueCell!18257)

