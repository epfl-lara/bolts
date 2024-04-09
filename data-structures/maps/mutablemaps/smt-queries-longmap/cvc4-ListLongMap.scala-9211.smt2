; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110654 () Bool)

(assert start!110654)

(declare-fun b_free!29453 () Bool)

(declare-fun b_next!29453 () Bool)

(assert (=> start!110654 (= b_free!29453 (not b_next!29453))))

(declare-fun tp!103681 () Bool)

(declare-fun b_and!47671 () Bool)

(assert (=> start!110654 (= tp!103681 b_and!47671)))

(declare-fun b!1308798 () Bool)

(declare-fun res!868924 () Bool)

(declare-fun e!746732 () Bool)

(assert (=> b!1308798 (=> (not res!868924) (not e!746732))))

(declare-datatypes ((array!87331 0))(
  ( (array!87332 (arr!42141 (Array (_ BitVec 32) (_ BitVec 64))) (size!42692 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87331)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87331 (_ BitVec 32)) Bool)

(assert (=> b!1308798 (= res!868924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308799 () Bool)

(declare-fun e!746734 () Bool)

(declare-fun e!746735 () Bool)

(declare-fun mapRes!54403 () Bool)

(assert (=> b!1308799 (= e!746734 (and e!746735 mapRes!54403))))

(declare-fun condMapEmpty!54403 () Bool)

(declare-datatypes ((V!52013 0))(
  ( (V!52014 (val!17666 Int)) )
))
(declare-datatypes ((ValueCell!16693 0))(
  ( (ValueCellFull!16693 (v!20291 V!52013)) (EmptyCell!16693) )
))
(declare-datatypes ((array!87333 0))(
  ( (array!87334 (arr!42142 (Array (_ BitVec 32) ValueCell!16693)) (size!42693 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87333)

(declare-fun mapDefault!54403 () ValueCell!16693)

