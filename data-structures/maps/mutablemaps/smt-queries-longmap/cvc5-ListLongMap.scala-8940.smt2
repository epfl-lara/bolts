; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108402 () Bool)

(assert start!108402)

(declare-fun mapNonEmpty!51881 () Bool)

(declare-fun mapRes!51881 () Bool)

(declare-fun tp!98856 () Bool)

(declare-fun e!730689 () Bool)

(assert (=> mapNonEmpty!51881 (= mapRes!51881 (and tp!98856 e!730689))))

(declare-datatypes ((V!49841 0))(
  ( (V!49842 (val!16851 Int)) )
))
(declare-datatypes ((ValueCell!15878 0))(
  ( (ValueCellFull!15878 (v!19449 V!49841)) (EmptyCell!15878) )
))
(declare-fun mapValue!51881 () ValueCell!15878)

(declare-datatypes ((array!84143 0))(
  ( (array!84144 (arr!40571 (Array (_ BitVec 32) ValueCell!15878)) (size!41122 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84143)

(declare-fun mapKey!51881 () (_ BitVec 32))

(declare-fun mapRest!51881 () (Array (_ BitVec 32) ValueCell!15878))

(assert (=> mapNonEmpty!51881 (= (arr!40571 _values!1445) (store mapRest!51881 mapKey!51881 mapValue!51881))))

(declare-fun b!1278869 () Bool)

(declare-fun e!730687 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84145 0))(
  ( (array!84146 (arr!40572 (Array (_ BitVec 32) (_ BitVec 64))) (size!41123 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84145)

(assert (=> b!1278869 (= e!730687 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41123 _keys!1741)) (bvsgt from!2144 (size!41123 _keys!1741))))))

(declare-fun b!1278870 () Bool)

(declare-fun res!849636 () Bool)

(assert (=> b!1278870 (=> (not res!849636) (not e!730687))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84145 (_ BitVec 32)) Bool)

(assert (=> b!1278870 (= res!849636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278871 () Bool)

(declare-fun e!730688 () Bool)

(declare-fun e!730686 () Bool)

(assert (=> b!1278871 (= e!730688 (and e!730686 mapRes!51881))))

(declare-fun condMapEmpty!51881 () Bool)

(declare-fun mapDefault!51881 () ValueCell!15878)

