; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110800 () Bool)

(assert start!110800)

(declare-fun b_free!29599 () Bool)

(declare-fun b_next!29599 () Bool)

(assert (=> start!110800 (= b_free!29599 (not b_next!29599))))

(declare-fun tp!104120 () Bool)

(declare-fun b_and!47817 () Bool)

(assert (=> start!110800 (= tp!104120 b_and!47817)))

(declare-fun b!1310874 () Bool)

(declare-fun res!870346 () Bool)

(declare-fun e!747827 () Bool)

(assert (=> b!1310874 (=> (not res!870346) (not e!747827))))

(declare-datatypes ((array!87609 0))(
  ( (array!87610 (arr!42280 (Array (_ BitVec 32) (_ BitVec 64))) (size!42831 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87609)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52209 0))(
  ( (V!52210 (val!17739 Int)) )
))
(declare-datatypes ((ValueCell!16766 0))(
  ( (ValueCellFull!16766 (v!20364 V!52209)) (EmptyCell!16766) )
))
(declare-datatypes ((array!87611 0))(
  ( (array!87612 (arr!42281 (Array (_ BitVec 32) ValueCell!16766)) (size!42832 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87611)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310874 (= res!870346 (and (= (size!42832 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42831 _keys!1628) (size!42832 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310875 () Bool)

(declare-fun e!747830 () Bool)

(declare-fun tp_is_empty!35329 () Bool)

(assert (=> b!1310875 (= e!747830 tp_is_empty!35329)))

(declare-fun b!1310876 () Bool)

(declare-fun res!870343 () Bool)

(assert (=> b!1310876 (=> (not res!870343) (not e!747827))))

(declare-datatypes ((List!30189 0))(
  ( (Nil!30186) (Cons!30185 (h!31394 (_ BitVec 64)) (t!43802 List!30189)) )
))
(declare-fun arrayNoDuplicates!0 (array!87609 (_ BitVec 32) List!30189) Bool)

(assert (=> b!1310876 (= res!870343 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30186))))

(declare-fun b!1310877 () Bool)

(declare-fun res!870347 () Bool)

(assert (=> b!1310877 (=> (not res!870347) (not e!747827))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310877 (= res!870347 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42831 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310878 () Bool)

(declare-fun e!747826 () Bool)

(assert (=> b!1310878 (= e!747826 tp_is_empty!35329)))

(declare-fun mapNonEmpty!54622 () Bool)

(declare-fun mapRes!54622 () Bool)

(declare-fun tp!104119 () Bool)

(assert (=> mapNonEmpty!54622 (= mapRes!54622 (and tp!104119 e!747830))))

(declare-fun mapKey!54622 () (_ BitVec 32))

(declare-fun mapRest!54622 () (Array (_ BitVec 32) ValueCell!16766))

(declare-fun mapValue!54622 () ValueCell!16766)

(assert (=> mapNonEmpty!54622 (= (arr!42281 _values!1354) (store mapRest!54622 mapKey!54622 mapValue!54622))))

(declare-fun mapIsEmpty!54622 () Bool)

(assert (=> mapIsEmpty!54622 mapRes!54622))

(declare-fun b!1310879 () Bool)

(declare-fun res!870344 () Bool)

(assert (=> b!1310879 (=> (not res!870344) (not e!747827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87609 (_ BitVec 32)) Bool)

(assert (=> b!1310879 (= res!870344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310880 () Bool)

(declare-fun e!747829 () Bool)

(assert (=> b!1310880 (= e!747829 (and e!747826 mapRes!54622))))

(declare-fun condMapEmpty!54622 () Bool)

(declare-fun mapDefault!54622 () ValueCell!16766)

