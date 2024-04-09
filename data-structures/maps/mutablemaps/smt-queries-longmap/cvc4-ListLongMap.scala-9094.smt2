; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109388 () Bool)

(assert start!109388)

(declare-fun b_free!28841 () Bool)

(declare-fun b_next!28841 () Bool)

(assert (=> start!109388 (= b_free!28841 (not b_next!28841))))

(declare-fun tp!101643 () Bool)

(declare-fun b_and!46941 () Bool)

(assert (=> start!109388 (= tp!101643 b_and!46941)))

(declare-fun b!1294207 () Bool)

(declare-fun res!860162 () Bool)

(declare-fun e!738564 () Bool)

(assert (=> b!1294207 (=> (not res!860162) (not e!738564))))

(declare-datatypes ((array!85949 0))(
  ( (array!85950 (arr!41471 (Array (_ BitVec 32) (_ BitVec 64))) (size!42022 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85949)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85949 (_ BitVec 32)) Bool)

(assert (=> b!1294207 (= res!860162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294208 () Bool)

(declare-fun e!738566 () Bool)

(declare-fun tp_is_empty!34481 () Bool)

(assert (=> b!1294208 (= e!738566 tp_is_empty!34481)))

(declare-fun mapNonEmpty!53282 () Bool)

(declare-fun mapRes!53282 () Bool)

(declare-fun tp!101642 () Bool)

(declare-fun e!738565 () Bool)

(assert (=> mapNonEmpty!53282 (= mapRes!53282 (and tp!101642 e!738565))))

(declare-datatypes ((V!51077 0))(
  ( (V!51078 (val!17315 Int)) )
))
(declare-datatypes ((ValueCell!16342 0))(
  ( (ValueCellFull!16342 (v!19916 V!51077)) (EmptyCell!16342) )
))
(declare-fun mapValue!53282 () ValueCell!16342)

(declare-fun mapRest!53282 () (Array (_ BitVec 32) ValueCell!16342))

(declare-fun mapKey!53282 () (_ BitVec 32))

(declare-datatypes ((array!85951 0))(
  ( (array!85952 (arr!41472 (Array (_ BitVec 32) ValueCell!16342)) (size!42023 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85951)

(assert (=> mapNonEmpty!53282 (= (arr!41472 _values!1445) (store mapRest!53282 mapKey!53282 mapValue!53282))))

(declare-fun b!1294209 () Bool)

(declare-fun e!738567 () Bool)

(assert (=> b!1294209 (= e!738567 (and e!738566 mapRes!53282))))

(declare-fun condMapEmpty!53282 () Bool)

(declare-fun mapDefault!53282 () ValueCell!16342)

