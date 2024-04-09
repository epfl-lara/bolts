; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111068 () Bool)

(assert start!111068)

(declare-fun b_free!29867 () Bool)

(declare-fun b_next!29867 () Bool)

(assert (=> start!111068 (= b_free!29867 (not b_next!29867))))

(declare-fun tp!104923 () Bool)

(declare-fun b_and!48085 () Bool)

(assert (=> start!111068 (= tp!104923 b_and!48085)))

(declare-fun res!872742 () Bool)

(declare-fun e!749838 () Bool)

(assert (=> start!111068 (=> (not res!872742) (not e!749838))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111068 (= res!872742 (validMask!0 mask!2040))))

(assert (=> start!111068 e!749838))

(assert (=> start!111068 tp!104923))

(declare-datatypes ((array!88127 0))(
  ( (array!88128 (arr!42539 (Array (_ BitVec 32) (_ BitVec 64))) (size!43090 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88127)

(declare-fun array_inv!32107 (array!88127) Bool)

(assert (=> start!111068 (array_inv!32107 _keys!1628)))

(assert (=> start!111068 true))

(declare-fun tp_is_empty!35597 () Bool)

(assert (=> start!111068 tp_is_empty!35597))

(declare-datatypes ((V!52565 0))(
  ( (V!52566 (val!17873 Int)) )
))
(declare-datatypes ((ValueCell!16900 0))(
  ( (ValueCellFull!16900 (v!20498 V!52565)) (EmptyCell!16900) )
))
(declare-datatypes ((array!88129 0))(
  ( (array!88130 (arr!42540 (Array (_ BitVec 32) ValueCell!16900)) (size!43091 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88129)

(declare-fun e!749839 () Bool)

(declare-fun array_inv!32108 (array!88129) Bool)

(assert (=> start!111068 (and (array_inv!32108 _values!1354) e!749839)))

(declare-fun mapNonEmpty!55024 () Bool)

(declare-fun mapRes!55024 () Bool)

(declare-fun tp!104924 () Bool)

(declare-fun e!749840 () Bool)

(assert (=> mapNonEmpty!55024 (= mapRes!55024 (and tp!104924 e!749840))))

(declare-fun mapKey!55024 () (_ BitVec 32))

(declare-fun mapValue!55024 () ValueCell!16900)

(declare-fun mapRest!55024 () (Array (_ BitVec 32) ValueCell!16900))

(assert (=> mapNonEmpty!55024 (= (arr!42540 _values!1354) (store mapRest!55024 mapKey!55024 mapValue!55024))))

(declare-fun mapIsEmpty!55024 () Bool)

(assert (=> mapIsEmpty!55024 mapRes!55024))

(declare-fun b!1314477 () Bool)

(declare-fun res!872740 () Bool)

(assert (=> b!1314477 (=> (not res!872740) (not e!749838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88127 (_ BitVec 32)) Bool)

(assert (=> b!1314477 (= res!872740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314478 () Bool)

(declare-fun res!872741 () Bool)

(assert (=> b!1314478 (=> (not res!872741) (not e!749838))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314478 (= res!872741 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43090 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314479 () Bool)

(declare-fun e!749837 () Bool)

(assert (=> b!1314479 (= e!749839 (and e!749837 mapRes!55024))))

(declare-fun condMapEmpty!55024 () Bool)

(declare-fun mapDefault!55024 () ValueCell!16900)

