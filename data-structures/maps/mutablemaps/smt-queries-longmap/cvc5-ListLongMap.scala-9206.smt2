; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110620 () Bool)

(assert start!110620)

(declare-fun b_free!29419 () Bool)

(declare-fun b_next!29419 () Bool)

(assert (=> start!110620 (= b_free!29419 (not b_next!29419))))

(declare-fun tp!103579 () Bool)

(declare-fun b_and!47637 () Bool)

(assert (=> start!110620 (= tp!103579 b_and!47637)))

(declare-fun b!1308218 () Bool)

(declare-fun res!868497 () Bool)

(declare-fun e!746476 () Bool)

(assert (=> b!1308218 (=> (not res!868497) (not e!746476))))

(declare-datatypes ((array!87265 0))(
  ( (array!87266 (arr!42108 (Array (_ BitVec 32) (_ BitVec 64))) (size!42659 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87265)

(declare-datatypes ((List!30061 0))(
  ( (Nil!30058) (Cons!30057 (h!31266 (_ BitVec 64)) (t!43674 List!30061)) )
))
(declare-fun arrayNoDuplicates!0 (array!87265 (_ BitVec 32) List!30061) Bool)

(assert (=> b!1308218 (= res!868497 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30058))))

(declare-fun b!1308219 () Bool)

(declare-fun e!746477 () Bool)

(declare-fun e!746478 () Bool)

(declare-fun mapRes!54352 () Bool)

(assert (=> b!1308219 (= e!746477 (and e!746478 mapRes!54352))))

(declare-fun condMapEmpty!54352 () Bool)

(declare-datatypes ((V!51969 0))(
  ( (V!51970 (val!17649 Int)) )
))
(declare-datatypes ((ValueCell!16676 0))(
  ( (ValueCellFull!16676 (v!20274 V!51969)) (EmptyCell!16676) )
))
(declare-datatypes ((array!87267 0))(
  ( (array!87268 (arr!42109 (Array (_ BitVec 32) ValueCell!16676)) (size!42660 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87267)

(declare-fun mapDefault!54352 () ValueCell!16676)

