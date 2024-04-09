; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108710 () Bool)

(assert start!108710)

(declare-fun b_free!28187 () Bool)

(declare-fun b_next!28187 () Bool)

(assert (=> start!108710 (= b_free!28187 (not b_next!28187))))

(declare-fun tp!99678 () Bool)

(declare-fun b_and!46263 () Bool)

(assert (=> start!108710 (= tp!99678 b_and!46263)))

(declare-fun b!1282707 () Bool)

(declare-fun res!852094 () Bool)

(declare-fun e!732936 () Bool)

(assert (=> b!1282707 (=> (not res!852094) (not e!732936))))

(declare-datatypes ((array!84675 0))(
  ( (array!84676 (arr!40835 (Array (_ BitVec 32) (_ BitVec 64))) (size!41386 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84675)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84675 (_ BitVec 32)) Bool)

(assert (=> b!1282707 (= res!852094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun b!1282708 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282708 (= e!732936 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsgt from!2144 (size!41386 _keys!1741))))))

(declare-fun mapNonEmpty!52298 () Bool)

(declare-fun mapRes!52298 () Bool)

(declare-fun tp!99677 () Bool)

(declare-fun e!732937 () Bool)

(assert (=> mapNonEmpty!52298 (= mapRes!52298 (and tp!99677 e!732937))))

(declare-datatypes ((V!50205 0))(
  ( (V!50206 (val!16988 Int)) )
))
(declare-datatypes ((ValueCell!16015 0))(
  ( (ValueCellFull!16015 (v!19588 V!50205)) (EmptyCell!16015) )
))
(declare-fun mapRest!52298 () (Array (_ BitVec 32) ValueCell!16015))

(declare-fun mapKey!52298 () (_ BitVec 32))

(declare-datatypes ((array!84677 0))(
  ( (array!84678 (arr!40836 (Array (_ BitVec 32) ValueCell!16015)) (size!41387 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84677)

(declare-fun mapValue!52298 () ValueCell!16015)

(assert (=> mapNonEmpty!52298 (= (arr!40836 _values!1445) (store mapRest!52298 mapKey!52298 mapValue!52298))))

(declare-fun res!852099 () Bool)

(assert (=> start!108710 (=> (not res!852099) (not e!732936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108710 (= res!852099 (validMask!0 mask!2175))))

(assert (=> start!108710 e!732936))

(declare-fun tp_is_empty!33827 () Bool)

(assert (=> start!108710 tp_is_empty!33827))

(assert (=> start!108710 true))

(declare-fun e!732939 () Bool)

(declare-fun array_inv!30957 (array!84677) Bool)

(assert (=> start!108710 (and (array_inv!30957 _values!1445) e!732939)))

(declare-fun array_inv!30958 (array!84675) Bool)

(assert (=> start!108710 (array_inv!30958 _keys!1741)))

(assert (=> start!108710 tp!99678))

(declare-fun b!1282709 () Bool)

(declare-fun e!732940 () Bool)

(assert (=> b!1282709 (= e!732939 (and e!732940 mapRes!52298))))

(declare-fun condMapEmpty!52298 () Bool)

(declare-fun mapDefault!52298 () ValueCell!16015)

