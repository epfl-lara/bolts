; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107144 () Bool)

(assert start!107144)

(declare-fun b_free!27613 () Bool)

(declare-fun b_next!27613 () Bool)

(assert (=> start!107144 (= b_free!27613 (not b_next!27613))))

(declare-fun tp!97067 () Bool)

(declare-fun b_and!45655 () Bool)

(assert (=> start!107144 (= tp!97067 b_and!45655)))

(declare-fun mapIsEmpty!50776 () Bool)

(declare-fun mapRes!50776 () Bool)

(assert (=> mapIsEmpty!50776 mapRes!50776))

(declare-fun mapNonEmpty!50776 () Bool)

(declare-fun tp!97066 () Bool)

(declare-fun e!723785 () Bool)

(assert (=> mapNonEmpty!50776 (= mapRes!50776 (and tp!97066 e!723785))))

(declare-datatypes ((V!48923 0))(
  ( (V!48924 (val!16473 Int)) )
))
(declare-datatypes ((ValueCell!15545 0))(
  ( (ValueCellFull!15545 (v!19108 V!48923)) (EmptyCell!15545) )
))
(declare-datatypes ((array!82827 0))(
  ( (array!82828 (arr!39946 (Array (_ BitVec 32) ValueCell!15545)) (size!40483 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82827)

(declare-fun mapRest!50776 () (Array (_ BitVec 32) ValueCell!15545))

(declare-fun mapKey!50776 () (_ BitVec 32))

(declare-fun mapValue!50776 () ValueCell!15545)

(assert (=> mapNonEmpty!50776 (= (arr!39946 _values!1134) (store mapRest!50776 mapKey!50776 mapValue!50776))))

(declare-fun b!1269793 () Bool)

(declare-fun res!845111 () Bool)

(declare-fun e!723786 () Bool)

(assert (=> b!1269793 (=> (not res!845111) (not e!723786))))

(declare-datatypes ((array!82829 0))(
  ( (array!82830 (arr!39947 (Array (_ BitVec 32) (_ BitVec 64))) (size!40484 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82829)

(declare-datatypes ((List!28620 0))(
  ( (Nil!28617) (Cons!28616 (h!29825 (_ BitVec 64)) (t!42156 List!28620)) )
))
(declare-fun arrayNoDuplicates!0 (array!82829 (_ BitVec 32) List!28620) Bool)

(assert (=> b!1269793 (= res!845111 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28617))))

(declare-fun res!845109 () Bool)

(assert (=> start!107144 (=> (not res!845109) (not e!723786))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107144 (= res!845109 (validMask!0 mask!1730))))

(assert (=> start!107144 e!723786))

(declare-fun e!723788 () Bool)

(declare-fun array_inv!30345 (array!82827) Bool)

(assert (=> start!107144 (and (array_inv!30345 _values!1134) e!723788)))

(assert (=> start!107144 true))

(declare-fun array_inv!30346 (array!82829) Bool)

(assert (=> start!107144 (array_inv!30346 _keys!1364)))

(declare-fun tp_is_empty!32797 () Bool)

(assert (=> start!107144 tp_is_empty!32797))

(assert (=> start!107144 tp!97067))

(declare-fun b!1269794 () Bool)

(declare-fun e!723784 () Bool)

(assert (=> b!1269794 (= e!723788 (and e!723784 mapRes!50776))))

(declare-fun condMapEmpty!50776 () Bool)

(declare-fun mapDefault!50776 () ValueCell!15545)

