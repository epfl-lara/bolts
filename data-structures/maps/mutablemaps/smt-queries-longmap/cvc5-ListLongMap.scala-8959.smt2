; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108516 () Bool)

(assert start!108516)

(declare-fun b_free!28027 () Bool)

(declare-fun b_next!28027 () Bool)

(assert (=> start!108516 (= b_free!28027 (not b_next!28027))))

(declare-fun tp!99191 () Bool)

(declare-fun b_and!46097 () Bool)

(assert (=> start!108516 (= tp!99191 b_and!46097)))

(declare-fun b!1280239 () Bool)

(declare-fun e!731545 () Bool)

(declare-fun tp_is_empty!33667 () Bool)

(assert (=> b!1280239 (= e!731545 tp_is_empty!33667)))

(declare-fun b!1280240 () Bool)

(declare-fun res!850496 () Bool)

(declare-fun e!731541 () Bool)

(assert (=> b!1280240 (=> (not res!850496) (not e!731541))))

(declare-datatypes ((array!84365 0))(
  ( (array!84366 (arr!40682 (Array (_ BitVec 32) (_ BitVec 64))) (size!41233 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84365)

(declare-datatypes ((List!28997 0))(
  ( (Nil!28994) (Cons!28993 (h!30202 (_ BitVec 64)) (t!42544 List!28997)) )
))
(declare-fun arrayNoDuplicates!0 (array!84365 (_ BitVec 32) List!28997) Bool)

(assert (=> b!1280240 (= res!850496 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28994))))

(declare-fun b!1280241 () Bool)

(declare-fun res!850495 () Bool)

(assert (=> b!1280241 (=> (not res!850495) (not e!731541))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84365 (_ BitVec 32)) Bool)

(assert (=> b!1280241 (= res!850495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52052 () Bool)

(declare-fun mapRes!52052 () Bool)

(assert (=> mapIsEmpty!52052 mapRes!52052))

(declare-fun b!1280242 () Bool)

(declare-fun e!731542 () Bool)

(assert (=> b!1280242 (= e!731542 (and e!731545 mapRes!52052))))

(declare-fun condMapEmpty!52052 () Bool)

(declare-datatypes ((V!49993 0))(
  ( (V!49994 (val!16908 Int)) )
))
(declare-datatypes ((ValueCell!15935 0))(
  ( (ValueCellFull!15935 (v!19506 V!49993)) (EmptyCell!15935) )
))
(declare-datatypes ((array!84367 0))(
  ( (array!84368 (arr!40683 (Array (_ BitVec 32) ValueCell!15935)) (size!41234 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84367)

(declare-fun mapDefault!52052 () ValueCell!15935)

