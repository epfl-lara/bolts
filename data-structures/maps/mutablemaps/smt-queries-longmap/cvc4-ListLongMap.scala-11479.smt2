; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133708 () Bool)

(assert start!133708)

(declare-fun b!1562813 () Bool)

(declare-fun e!870984 () Bool)

(declare-fun tp_is_empty!38759 () Bool)

(assert (=> b!1562813 (= e!870984 tp_is_empty!38759)))

(declare-fun b!1562814 () Bool)

(declare-fun res!1068532 () Bool)

(declare-fun e!870986 () Bool)

(assert (=> b!1562814 (=> (not res!1068532) (not e!870986))))

(declare-datatypes ((array!104181 0))(
  ( (array!104182 (arr!50278 (Array (_ BitVec 32) (_ BitVec 64))) (size!50829 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104181)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104181 (_ BitVec 32)) Bool)

(assert (=> b!1562814 (= res!1068532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562815 () Bool)

(declare-fun e!870985 () Bool)

(assert (=> b!1562815 (= e!870985 tp_is_empty!38759)))

(declare-fun res!1068531 () Bool)

(assert (=> start!133708 (=> (not res!1068531) (not e!870986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133708 (= res!1068531 (validMask!0 mask!947))))

(assert (=> start!133708 e!870986))

(assert (=> start!133708 true))

(declare-datatypes ((V!59885 0))(
  ( (V!59886 (val!19463 Int)) )
))
(declare-datatypes ((ValueCell!18349 0))(
  ( (ValueCellFull!18349 (v!22212 V!59885)) (EmptyCell!18349) )
))
(declare-datatypes ((array!104183 0))(
  ( (array!104184 (arr!50279 (Array (_ BitVec 32) ValueCell!18349)) (size!50830 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104183)

(declare-fun e!870982 () Bool)

(declare-fun array_inv!39003 (array!104183) Bool)

(assert (=> start!133708 (and (array_inv!39003 _values!487) e!870982)))

(declare-fun array_inv!39004 (array!104181) Bool)

(assert (=> start!133708 (array_inv!39004 _keys!637)))

(declare-fun mapIsEmpty!59514 () Bool)

(declare-fun mapRes!59514 () Bool)

(assert (=> mapIsEmpty!59514 mapRes!59514))

(declare-fun b!1562816 () Bool)

(declare-fun res!1068533 () Bool)

(assert (=> b!1562816 (=> (not res!1068533) (not e!870986))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562816 (= res!1068533 (and (= (size!50830 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50829 _keys!637) (size!50830 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562817 () Bool)

(assert (=> b!1562817 (= e!870982 (and e!870985 mapRes!59514))))

(declare-fun condMapEmpty!59514 () Bool)

(declare-fun mapDefault!59514 () ValueCell!18349)

