; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133698 () Bool)

(assert start!133698)

(declare-fun b!1562723 () Bool)

(declare-fun e!870907 () Bool)

(declare-fun tp_is_empty!38749 () Bool)

(assert (=> b!1562723 (= e!870907 tp_is_empty!38749)))

(declare-fun b!1562724 () Bool)

(declare-fun e!870911 () Bool)

(assert (=> b!1562724 (= e!870911 false)))

(declare-fun lt!671715 () Bool)

(declare-datatypes ((array!104161 0))(
  ( (array!104162 (arr!50268 (Array (_ BitVec 32) (_ BitVec 64))) (size!50819 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104161)

(declare-datatypes ((List!36657 0))(
  ( (Nil!36654) (Cons!36653 (h!38100 (_ BitVec 64)) (t!51511 List!36657)) )
))
(declare-fun arrayNoDuplicates!0 (array!104161 (_ BitVec 32) List!36657) Bool)

(assert (=> b!1562724 (= lt!671715 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36654))))

(declare-fun b!1562725 () Bool)

(declare-fun e!870909 () Bool)

(declare-fun e!870910 () Bool)

(declare-fun mapRes!59499 () Bool)

(assert (=> b!1562725 (= e!870909 (and e!870910 mapRes!59499))))

(declare-fun condMapEmpty!59499 () Bool)

(declare-datatypes ((V!59873 0))(
  ( (V!59874 (val!19458 Int)) )
))
(declare-datatypes ((ValueCell!18344 0))(
  ( (ValueCellFull!18344 (v!22207 V!59873)) (EmptyCell!18344) )
))
(declare-datatypes ((array!104163 0))(
  ( (array!104164 (arr!50269 (Array (_ BitVec 32) ValueCell!18344)) (size!50820 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104163)

(declare-fun mapDefault!59499 () ValueCell!18344)

