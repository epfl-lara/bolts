; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109408 () Bool)

(assert start!109408)

(declare-fun b_free!28861 () Bool)

(declare-fun b_next!28861 () Bool)

(assert (=> start!109408 (= b_free!28861 (not b_next!28861))))

(declare-fun tp!101703 () Bool)

(declare-fun b_and!46961 () Bool)

(assert (=> start!109408 (= tp!101703 b_and!46961)))

(declare-fun b!1294537 () Bool)

(declare-fun res!860403 () Bool)

(declare-fun e!738714 () Bool)

(assert (=> b!1294537 (=> (not res!860403) (not e!738714))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85987 0))(
  ( (array!85988 (arr!41490 (Array (_ BitVec 32) (_ BitVec 64))) (size!42041 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85987)

(declare-datatypes ((V!51105 0))(
  ( (V!51106 (val!17325 Int)) )
))
(declare-datatypes ((ValueCell!16352 0))(
  ( (ValueCellFull!16352 (v!19926 V!51105)) (EmptyCell!16352) )
))
(declare-datatypes ((array!85989 0))(
  ( (array!85990 (arr!41491 (Array (_ BitVec 32) ValueCell!16352)) (size!42042 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85989)

(assert (=> b!1294537 (= res!860403 (and (= (size!42042 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42041 _keys!1741) (size!42042 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294538 () Bool)

(declare-fun res!860402 () Bool)

(assert (=> b!1294538 (=> (not res!860402) (not e!738714))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1294538 (= res!860402 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42041 _keys!1741))))))

(declare-fun b!1294539 () Bool)

(declare-fun res!860401 () Bool)

(assert (=> b!1294539 (=> (not res!860401) (not e!738714))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1294539 (= res!860401 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42041 _keys!1741))))))

(declare-fun mapIsEmpty!53312 () Bool)

(declare-fun mapRes!53312 () Bool)

(assert (=> mapIsEmpty!53312 mapRes!53312))

(declare-fun b!1294540 () Bool)

(declare-fun res!860404 () Bool)

(assert (=> b!1294540 (=> (not res!860404) (not e!738714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85987 (_ BitVec 32)) Bool)

(assert (=> b!1294540 (= res!860404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294541 () Bool)

(declare-fun e!738715 () Bool)

(declare-fun tp_is_empty!34501 () Bool)

(assert (=> b!1294541 (= e!738715 tp_is_empty!34501)))

(declare-fun b!1294542 () Bool)

(declare-fun e!738717 () Bool)

(assert (=> b!1294542 (= e!738717 (and e!738715 mapRes!53312))))

(declare-fun condMapEmpty!53312 () Bool)

(declare-fun mapDefault!53312 () ValueCell!16352)

