; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108134 () Bool)

(assert start!108134)

(declare-fun b_free!27811 () Bool)

(declare-fun b_next!27811 () Bool)

(assert (=> start!108134 (= b_free!27811 (not b_next!27811))))

(declare-fun tp!98387 () Bool)

(declare-fun b_and!45877 () Bool)

(assert (=> start!108134 (= tp!98387 b_and!45877)))

(declare-fun b!1276488 () Bool)

(declare-fun res!848389 () Bool)

(declare-fun e!728965 () Bool)

(assert (=> b!1276488 (=> (not res!848389) (not e!728965))))

(declare-datatypes ((array!83767 0))(
  ( (array!83768 (arr!40390 (Array (_ BitVec 32) (_ BitVec 64))) (size!40941 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83767)

(declare-datatypes ((List!28820 0))(
  ( (Nil!28817) (Cons!28816 (h!30025 (_ BitVec 64)) (t!42363 List!28820)) )
))
(declare-fun arrayNoDuplicates!0 (array!83767 (_ BitVec 32) List!28820) Bool)

(assert (=> b!1276488 (= res!848389 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28817))))

(declare-fun mapIsEmpty!51572 () Bool)

(declare-fun mapRes!51572 () Bool)

(assert (=> mapIsEmpty!51572 mapRes!51572))

(declare-fun res!848391 () Bool)

(assert (=> start!108134 (=> (not res!848391) (not e!728965))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108134 (= res!848391 (validMask!0 mask!1805))))

(assert (=> start!108134 e!728965))

(assert (=> start!108134 true))

(assert (=> start!108134 tp!98387))

(declare-fun tp_is_empty!33361 () Bool)

(assert (=> start!108134 tp_is_empty!33361))

(declare-datatypes ((V!49585 0))(
  ( (V!49586 (val!16755 Int)) )
))
(declare-datatypes ((ValueCell!15782 0))(
  ( (ValueCellFull!15782 (v!19350 V!49585)) (EmptyCell!15782) )
))
(declare-datatypes ((array!83769 0))(
  ( (array!83770 (arr!40391 (Array (_ BitVec 32) ValueCell!15782)) (size!40942 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83769)

(declare-fun e!728966 () Bool)

(declare-fun array_inv!30655 (array!83769) Bool)

(assert (=> start!108134 (and (array_inv!30655 _values!1187) e!728966)))

(declare-fun array_inv!30656 (array!83767) Bool)

(assert (=> start!108134 (array_inv!30656 _keys!1427)))

(declare-fun b!1276489 () Bool)

(assert (=> b!1276489 (= e!728965 false)))

(declare-fun lt!575445 () Bool)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49585)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49585)

(declare-datatypes ((tuple2!21634 0))(
  ( (tuple2!21635 (_1!10827 (_ BitVec 64)) (_2!10827 V!49585)) )
))
(declare-datatypes ((List!28821 0))(
  ( (Nil!28818) (Cons!28817 (h!30026 tuple2!21634) (t!42364 List!28821)) )
))
(declare-datatypes ((ListLongMap!19303 0))(
  ( (ListLongMap!19304 (toList!9667 List!28821)) )
))
(declare-fun contains!7714 (ListLongMap!19303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4687 (array!83767 array!83769 (_ BitVec 32) (_ BitVec 32) V!49585 V!49585 (_ BitVec 32) Int) ListLongMap!19303)

(assert (=> b!1276489 (= lt!575445 (contains!7714 (getCurrentListMap!4687 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276490 () Bool)

(declare-fun res!848390 () Bool)

(assert (=> b!1276490 (=> (not res!848390) (not e!728965))))

(assert (=> b!1276490 (= res!848390 (and (= (size!40942 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40941 _keys!1427) (size!40942 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276491 () Bool)

(declare-fun res!848388 () Bool)

(assert (=> b!1276491 (=> (not res!848388) (not e!728965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83767 (_ BitVec 32)) Bool)

(assert (=> b!1276491 (= res!848388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276492 () Bool)

(declare-fun e!728963 () Bool)

(assert (=> b!1276492 (= e!728966 (and e!728963 mapRes!51572))))

(declare-fun condMapEmpty!51572 () Bool)

(declare-fun mapDefault!51572 () ValueCell!15782)

