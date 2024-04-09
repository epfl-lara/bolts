; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110780 () Bool)

(assert start!110780)

(declare-fun b_free!29579 () Bool)

(declare-fun b_next!29579 () Bool)

(assert (=> start!110780 (= b_free!29579 (not b_next!29579))))

(declare-fun tp!104059 () Bool)

(declare-fun b_and!47797 () Bool)

(assert (=> start!110780 (= tp!104059 b_and!47797)))

(declare-fun b!1310634 () Bool)

(declare-fun res!870196 () Bool)

(declare-fun e!747678 () Bool)

(assert (=> b!1310634 (=> (not res!870196) (not e!747678))))

(declare-datatypes ((array!87571 0))(
  ( (array!87572 (arr!42261 (Array (_ BitVec 32) (_ BitVec 64))) (size!42812 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87571)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87571 (_ BitVec 32)) Bool)

(assert (=> b!1310634 (= res!870196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310635 () Bool)

(declare-fun res!870197 () Bool)

(assert (=> b!1310635 (=> (not res!870197) (not e!747678))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310635 (= res!870197 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42812 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310636 () Bool)

(declare-fun e!747679 () Bool)

(declare-fun e!747680 () Bool)

(declare-fun mapRes!54592 () Bool)

(assert (=> b!1310636 (= e!747679 (and e!747680 mapRes!54592))))

(declare-fun condMapEmpty!54592 () Bool)

(declare-datatypes ((V!52181 0))(
  ( (V!52182 (val!17729 Int)) )
))
(declare-datatypes ((ValueCell!16756 0))(
  ( (ValueCellFull!16756 (v!20354 V!52181)) (EmptyCell!16756) )
))
(declare-datatypes ((array!87573 0))(
  ( (array!87574 (arr!42262 (Array (_ BitVec 32) ValueCell!16756)) (size!42813 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87573)

(declare-fun mapDefault!54592 () ValueCell!16756)

