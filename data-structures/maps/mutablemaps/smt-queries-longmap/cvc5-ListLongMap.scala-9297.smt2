; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111166 () Bool)

(assert start!111166)

(declare-fun b_free!29965 () Bool)

(declare-fun b_next!29965 () Bool)

(assert (=> start!111166 (= b_free!29965 (not b_next!29965))))

(declare-fun tp!105218 () Bool)

(declare-fun b_and!48183 () Bool)

(assert (=> start!111166 (= tp!105218 b_and!48183)))

(declare-fun b!1315689 () Bool)

(declare-fun res!873515 () Bool)

(declare-fun e!750572 () Bool)

(assert (=> b!1315689 (=> (not res!873515) (not e!750572))))

(declare-datatypes ((array!88309 0))(
  ( (array!88310 (arr!42630 (Array (_ BitVec 32) (_ BitVec 64))) (size!43181 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88309)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52697 0))(
  ( (V!52698 (val!17922 Int)) )
))
(declare-datatypes ((ValueCell!16949 0))(
  ( (ValueCellFull!16949 (v!20547 V!52697)) (EmptyCell!16949) )
))
(declare-datatypes ((array!88311 0))(
  ( (array!88312 (arr!42631 (Array (_ BitVec 32) ValueCell!16949)) (size!43182 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88311)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315689 (= res!873515 (and (= (size!43182 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43181 _keys!1628) (size!43182 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315690 () Bool)

(declare-fun res!873513 () Bool)

(assert (=> b!1315690 (=> (not res!873513) (not e!750572))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315690 (= res!873513 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43181 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315692 () Bool)

(declare-fun e!750571 () Bool)

(declare-fun e!750575 () Bool)

(declare-fun mapRes!55171 () Bool)

(assert (=> b!1315692 (= e!750571 (and e!750575 mapRes!55171))))

(declare-fun condMapEmpty!55171 () Bool)

(declare-fun mapDefault!55171 () ValueCell!16949)

