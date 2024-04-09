; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110516 () Bool)

(assert start!110516)

(declare-fun b!1306829 () Bool)

(declare-fun res!867576 () Bool)

(declare-fun e!745697 () Bool)

(assert (=> b!1306829 (=> (not res!867576) (not e!745697))))

(declare-datatypes ((array!87075 0))(
  ( (array!87076 (arr!42013 (Array (_ BitVec 32) (_ BitVec 64))) (size!42564 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87075)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87075 (_ BitVec 32)) Bool)

(assert (=> b!1306829 (= res!867576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!867578 () Bool)

(assert (=> start!110516 (=> (not res!867578) (not e!745697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110516 (= res!867578 (validMask!0 mask!2040))))

(assert (=> start!110516 e!745697))

(assert (=> start!110516 true))

(declare-datatypes ((V!51829 0))(
  ( (V!51830 (val!17597 Int)) )
))
(declare-datatypes ((ValueCell!16624 0))(
  ( (ValueCellFull!16624 (v!20222 V!51829)) (EmptyCell!16624) )
))
(declare-datatypes ((array!87077 0))(
  ( (array!87078 (arr!42014 (Array (_ BitVec 32) ValueCell!16624)) (size!42565 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87077)

(declare-fun e!745699 () Bool)

(declare-fun array_inv!31763 (array!87077) Bool)

(assert (=> start!110516 (and (array_inv!31763 _values!1354) e!745699)))

(declare-fun array_inv!31764 (array!87075) Bool)

(assert (=> start!110516 (array_inv!31764 _keys!1628)))

(declare-fun mapNonEmpty!54196 () Bool)

(declare-fun mapRes!54196 () Bool)

(declare-fun tp!103277 () Bool)

(declare-fun e!745696 () Bool)

(assert (=> mapNonEmpty!54196 (= mapRes!54196 (and tp!103277 e!745696))))

(declare-fun mapRest!54196 () (Array (_ BitVec 32) ValueCell!16624))

(declare-fun mapKey!54196 () (_ BitVec 32))

(declare-fun mapValue!54196 () ValueCell!16624)

(assert (=> mapNonEmpty!54196 (= (arr!42014 _values!1354) (store mapRest!54196 mapKey!54196 mapValue!54196))))

(declare-fun b!1306830 () Bool)

(assert (=> b!1306830 (= e!745697 false)))

(declare-fun lt!584932 () Bool)

(declare-datatypes ((List!29994 0))(
  ( (Nil!29991) (Cons!29990 (h!31199 (_ BitVec 64)) (t!43607 List!29994)) )
))
(declare-fun arrayNoDuplicates!0 (array!87075 (_ BitVec 32) List!29994) Bool)

(assert (=> b!1306830 (= lt!584932 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29991))))

(declare-fun b!1306831 () Bool)

(declare-fun e!745700 () Bool)

(declare-fun tp_is_empty!35045 () Bool)

(assert (=> b!1306831 (= e!745700 tp_is_empty!35045)))

(declare-fun mapIsEmpty!54196 () Bool)

(assert (=> mapIsEmpty!54196 mapRes!54196))

(declare-fun b!1306832 () Bool)

(assert (=> b!1306832 (= e!745696 tp_is_empty!35045)))

(declare-fun b!1306833 () Bool)

(assert (=> b!1306833 (= e!745699 (and e!745700 mapRes!54196))))

(declare-fun condMapEmpty!54196 () Bool)

(declare-fun mapDefault!54196 () ValueCell!16624)

