; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108046 () Bool)

(assert start!108046)

(declare-fun b!1275686 () Bool)

(declare-fun e!728352 () Bool)

(assert (=> b!1275686 (= e!728352 false)))

(declare-fun lt!575328 () Bool)

(declare-datatypes ((array!83617 0))(
  ( (array!83618 (arr!40316 (Array (_ BitVec 32) (_ BitVec 64))) (size!40867 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83617)

(declare-datatypes ((List!28784 0))(
  ( (Nil!28781) (Cons!28780 (h!29989 (_ BitVec 64)) (t!42327 List!28784)) )
))
(declare-fun arrayNoDuplicates!0 (array!83617 (_ BitVec 32) List!28784) Bool)

(assert (=> b!1275686 (= lt!575328 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28781))))

(declare-fun mapIsEmpty!51452 () Bool)

(declare-fun mapRes!51452 () Bool)

(assert (=> mapIsEmpty!51452 mapRes!51452))

(declare-fun b!1275687 () Bool)

(declare-fun e!728354 () Bool)

(declare-fun e!728350 () Bool)

(assert (=> b!1275687 (= e!728354 (and e!728350 mapRes!51452))))

(declare-fun condMapEmpty!51452 () Bool)

(declare-datatypes ((V!49481 0))(
  ( (V!49482 (val!16716 Int)) )
))
(declare-datatypes ((ValueCell!15743 0))(
  ( (ValueCellFull!15743 (v!19311 V!49481)) (EmptyCell!15743) )
))
(declare-datatypes ((array!83619 0))(
  ( (array!83620 (arr!40317 (Array (_ BitVec 32) ValueCell!15743)) (size!40868 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83619)

(declare-fun mapDefault!51452 () ValueCell!15743)

