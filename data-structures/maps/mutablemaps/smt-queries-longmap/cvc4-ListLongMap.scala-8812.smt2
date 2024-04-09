; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107136 () Bool)

(assert start!107136)

(declare-fun b_free!27605 () Bool)

(declare-fun b_next!27605 () Bool)

(assert (=> start!107136 (= b_free!27605 (not b_next!27605))))

(declare-fun tp!97043 () Bool)

(declare-fun b_and!45647 () Bool)

(assert (=> start!107136 (= tp!97043 b_and!45647)))

(declare-fun mapIsEmpty!50764 () Bool)

(declare-fun mapRes!50764 () Bool)

(assert (=> mapIsEmpty!50764 mapRes!50764))

(declare-fun b!1269697 () Bool)

(declare-fun e!723728 () Bool)

(declare-fun tp_is_empty!32789 () Bool)

(assert (=> b!1269697 (= e!723728 tp_is_empty!32789)))

(declare-fun b!1269698 () Bool)

(declare-fun res!845048 () Bool)

(declare-fun e!723724 () Bool)

(assert (=> b!1269698 (=> (not res!845048) (not e!723724))))

(declare-datatypes ((array!82813 0))(
  ( (array!82814 (arr!39939 (Array (_ BitVec 32) (_ BitVec 64))) (size!40476 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82813)

(declare-datatypes ((List!28617 0))(
  ( (Nil!28614) (Cons!28613 (h!29822 (_ BitVec 64)) (t!42153 List!28617)) )
))
(declare-fun arrayNoDuplicates!0 (array!82813 (_ BitVec 32) List!28617) Bool)

(assert (=> b!1269698 (= res!845048 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28614))))

(declare-fun mapNonEmpty!50764 () Bool)

(declare-fun tp!97042 () Bool)

(assert (=> mapNonEmpty!50764 (= mapRes!50764 (and tp!97042 e!723728))))

(declare-fun mapKey!50764 () (_ BitVec 32))

(declare-datatypes ((V!48911 0))(
  ( (V!48912 (val!16469 Int)) )
))
(declare-datatypes ((ValueCell!15541 0))(
  ( (ValueCellFull!15541 (v!19104 V!48911)) (EmptyCell!15541) )
))
(declare-fun mapRest!50764 () (Array (_ BitVec 32) ValueCell!15541))

(declare-fun mapValue!50764 () ValueCell!15541)

(declare-datatypes ((array!82815 0))(
  ( (array!82816 (arr!39940 (Array (_ BitVec 32) ValueCell!15541)) (size!40477 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82815)

(assert (=> mapNonEmpty!50764 (= (arr!39940 _values!1134) (store mapRest!50764 mapKey!50764 mapValue!50764))))

(declare-fun res!845047 () Bool)

(assert (=> start!107136 (=> (not res!845047) (not e!723724))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107136 (= res!845047 (validMask!0 mask!1730))))

(assert (=> start!107136 e!723724))

(declare-fun e!723725 () Bool)

(declare-fun array_inv!30341 (array!82815) Bool)

(assert (=> start!107136 (and (array_inv!30341 _values!1134) e!723725)))

(assert (=> start!107136 true))

(declare-fun array_inv!30342 (array!82813) Bool)

(assert (=> start!107136 (array_inv!30342 _keys!1364)))

(assert (=> start!107136 tp_is_empty!32789))

(assert (=> start!107136 tp!97043))

(declare-fun b!1269699 () Bool)

(declare-fun e!723727 () Bool)

(assert (=> b!1269699 (= e!723725 (and e!723727 mapRes!50764))))

(declare-fun condMapEmpty!50764 () Bool)

(declare-fun mapDefault!50764 () ValueCell!15541)

