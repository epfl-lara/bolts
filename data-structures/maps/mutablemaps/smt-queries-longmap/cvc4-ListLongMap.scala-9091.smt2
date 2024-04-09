; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109370 () Bool)

(assert start!109370)

(declare-fun b_free!28823 () Bool)

(declare-fun b_next!28823 () Bool)

(assert (=> start!109370 (= b_free!28823 (not b_next!28823))))

(declare-fun tp!101589 () Bool)

(declare-fun b_and!46923 () Bool)

(assert (=> start!109370 (= tp!101589 b_and!46923)))

(declare-fun mapNonEmpty!53255 () Bool)

(declare-fun mapRes!53255 () Bool)

(declare-fun tp!101588 () Bool)

(declare-fun e!738432 () Bool)

(assert (=> mapNonEmpty!53255 (= mapRes!53255 (and tp!101588 e!738432))))

(declare-datatypes ((V!51053 0))(
  ( (V!51054 (val!17306 Int)) )
))
(declare-datatypes ((ValueCell!16333 0))(
  ( (ValueCellFull!16333 (v!19907 V!51053)) (EmptyCell!16333) )
))
(declare-fun mapRest!53255 () (Array (_ BitVec 32) ValueCell!16333))

(declare-datatypes ((array!85913 0))(
  ( (array!85914 (arr!41453 (Array (_ BitVec 32) ValueCell!16333)) (size!42004 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85913)

(declare-fun mapValue!53255 () ValueCell!16333)

(declare-fun mapKey!53255 () (_ BitVec 32))

(assert (=> mapNonEmpty!53255 (= (arr!41453 _values!1445) (store mapRest!53255 mapKey!53255 mapValue!53255))))

(declare-fun b!1293910 () Bool)

(declare-fun res!859945 () Bool)

(declare-fun e!738430 () Bool)

(assert (=> b!1293910 (=> (not res!859945) (not e!738430))))

(declare-datatypes ((array!85915 0))(
  ( (array!85916 (arr!41454 (Array (_ BitVec 32) (_ BitVec 64))) (size!42005 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85915)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85915 (_ BitVec 32)) Bool)

(assert (=> b!1293910 (= res!859945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293911 () Bool)

(declare-fun res!859947 () Bool)

(assert (=> b!1293911 (=> (not res!859947) (not e!738430))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293911 (= res!859947 (and (= (size!42004 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42005 _keys!1741) (size!42004 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293912 () Bool)

(declare-fun e!738429 () Bool)

(declare-fun e!738431 () Bool)

(assert (=> b!1293912 (= e!738429 (and e!738431 mapRes!53255))))

(declare-fun condMapEmpty!53255 () Bool)

(declare-fun mapDefault!53255 () ValueCell!16333)

