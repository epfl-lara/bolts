; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110482 () Bool)

(assert start!110482)

(declare-fun mapIsEmpty!54145 () Bool)

(declare-fun mapRes!54145 () Bool)

(assert (=> mapIsEmpty!54145 mapRes!54145))

(declare-fun b!1306523 () Bool)

(declare-fun res!867425 () Bool)

(declare-fun e!745441 () Bool)

(assert (=> b!1306523 (=> (not res!867425) (not e!745441))))

(declare-datatypes ((array!87013 0))(
  ( (array!87014 (arr!41982 (Array (_ BitVec 32) (_ BitVec 64))) (size!42533 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87013)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51785 0))(
  ( (V!51786 (val!17580 Int)) )
))
(declare-datatypes ((ValueCell!16607 0))(
  ( (ValueCellFull!16607 (v!20205 V!51785)) (EmptyCell!16607) )
))
(declare-datatypes ((array!87015 0))(
  ( (array!87016 (arr!41983 (Array (_ BitVec 32) ValueCell!16607)) (size!42534 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87015)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306523 (= res!867425 (and (= (size!42534 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42533 _keys!1628) (size!42534 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306524 () Bool)

(declare-fun e!745444 () Bool)

(declare-fun tp_is_empty!35011 () Bool)

(assert (=> b!1306524 (= e!745444 tp_is_empty!35011)))

(declare-fun b!1306525 () Bool)

(declare-fun e!745442 () Bool)

(assert (=> b!1306525 (= e!745442 tp_is_empty!35011)))

(declare-fun res!867424 () Bool)

(assert (=> start!110482 (=> (not res!867424) (not e!745441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110482 (= res!867424 (validMask!0 mask!2040))))

(assert (=> start!110482 e!745441))

(assert (=> start!110482 true))

(declare-fun e!745445 () Bool)

(declare-fun array_inv!31739 (array!87015) Bool)

(assert (=> start!110482 (and (array_inv!31739 _values!1354) e!745445)))

(declare-fun array_inv!31740 (array!87013) Bool)

(assert (=> start!110482 (array_inv!31740 _keys!1628)))

(declare-fun b!1306526 () Bool)

(assert (=> b!1306526 (= e!745441 false)))

(declare-fun lt!584881 () Bool)

(declare-datatypes ((List!29983 0))(
  ( (Nil!29980) (Cons!29979 (h!31188 (_ BitVec 64)) (t!43596 List!29983)) )
))
(declare-fun arrayNoDuplicates!0 (array!87013 (_ BitVec 32) List!29983) Bool)

(assert (=> b!1306526 (= lt!584881 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29980))))

(declare-fun mapNonEmpty!54145 () Bool)

(declare-fun tp!103226 () Bool)

(assert (=> mapNonEmpty!54145 (= mapRes!54145 (and tp!103226 e!745444))))

(declare-fun mapKey!54145 () (_ BitVec 32))

(declare-fun mapValue!54145 () ValueCell!16607)

(declare-fun mapRest!54145 () (Array (_ BitVec 32) ValueCell!16607))

(assert (=> mapNonEmpty!54145 (= (arr!41983 _values!1354) (store mapRest!54145 mapKey!54145 mapValue!54145))))

(declare-fun b!1306527 () Bool)

(assert (=> b!1306527 (= e!745445 (and e!745442 mapRes!54145))))

(declare-fun condMapEmpty!54145 () Bool)

(declare-fun mapDefault!54145 () ValueCell!16607)

