; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110828 () Bool)

(assert start!110828)

(declare-fun b_free!29627 () Bool)

(declare-fun b_next!29627 () Bool)

(assert (=> start!110828 (= b_free!29627 (not b_next!29627))))

(declare-fun tp!104204 () Bool)

(declare-fun b_and!47845 () Bool)

(assert (=> start!110828 (= tp!104204 b_and!47845)))

(declare-fun mapNonEmpty!54664 () Bool)

(declare-fun mapRes!54664 () Bool)

(declare-fun tp!104203 () Bool)

(declare-fun e!748036 () Bool)

(assert (=> mapNonEmpty!54664 (= mapRes!54664 (and tp!104203 e!748036))))

(declare-fun mapKey!54664 () (_ BitVec 32))

(declare-datatypes ((V!52245 0))(
  ( (V!52246 (val!17753 Int)) )
))
(declare-datatypes ((ValueCell!16780 0))(
  ( (ValueCellFull!16780 (v!20378 V!52245)) (EmptyCell!16780) )
))
(declare-fun mapRest!54664 () (Array (_ BitVec 32) ValueCell!16780))

(declare-fun mapValue!54664 () ValueCell!16780)

(declare-datatypes ((array!87665 0))(
  ( (array!87666 (arr!42308 (Array (_ BitVec 32) ValueCell!16780)) (size!42859 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87665)

(assert (=> mapNonEmpty!54664 (= (arr!42308 _values!1354) (store mapRest!54664 mapKey!54664 mapValue!54664))))

(declare-fun b!1311210 () Bool)

(declare-fun e!748040 () Bool)

(declare-fun tp_is_empty!35357 () Bool)

(assert (=> b!1311210 (= e!748040 tp_is_empty!35357)))

(declare-fun b!1311211 () Bool)

(declare-fun res!870554 () Bool)

(declare-fun e!748039 () Bool)

(assert (=> b!1311211 (=> (not res!870554) (not e!748039))))

(declare-datatypes ((array!87667 0))(
  ( (array!87668 (arr!42309 (Array (_ BitVec 32) (_ BitVec 64))) (size!42860 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87667)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87667 (_ BitVec 32)) Bool)

(assert (=> b!1311211 (= res!870554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54664 () Bool)

(assert (=> mapIsEmpty!54664 mapRes!54664))

(declare-fun b!1311212 () Bool)

(declare-fun res!870555 () Bool)

(assert (=> b!1311212 (=> (not res!870555) (not e!748039))))

(declare-datatypes ((List!30211 0))(
  ( (Nil!30208) (Cons!30207 (h!31416 (_ BitVec 64)) (t!43824 List!30211)) )
))
(declare-fun arrayNoDuplicates!0 (array!87667 (_ BitVec 32) List!30211) Bool)

(assert (=> b!1311212 (= res!870555 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30208))))

(declare-fun b!1311214 () Bool)

(declare-fun e!748037 () Bool)

(assert (=> b!1311214 (= e!748037 (and e!748040 mapRes!54664))))

(declare-fun condMapEmpty!54664 () Bool)

(declare-fun mapDefault!54664 () ValueCell!16780)

