; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97082 () Bool)

(assert start!97082)

(declare-fun b!1103833 () Bool)

(declare-fun e!630154 () Bool)

(declare-datatypes ((array!71544 0))(
  ( (array!71545 (arr!34425 (Array (_ BitVec 32) (_ BitVec 64))) (size!34962 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71544)

(assert (=> b!1103833 (= e!630154 (bvsgt #b00000000000000000000000000000000 (size!34962 _keys!1208)))))

(declare-fun b!1103834 () Bool)

(declare-fun res!736515 () Bool)

(assert (=> b!1103834 (=> (not res!736515) (not e!630154))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71544 (_ BitVec 32)) Bool)

(assert (=> b!1103834 (= res!736515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71545 (store (arr!34425 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34962 _keys!1208)) mask!1564))))

(declare-fun b!1103835 () Bool)

(declare-fun res!736509 () Bool)

(assert (=> b!1103835 (=> (not res!736509) (not e!630154))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1103835 (= res!736509 (= (select (arr!34425 _keys!1208) i!673) k!934))))

(declare-fun b!1103836 () Bool)

(declare-fun res!736514 () Bool)

(assert (=> b!1103836 (=> (not res!736514) (not e!630154))))

(declare-datatypes ((List!24169 0))(
  ( (Nil!24166) (Cons!24165 (h!25374 (_ BitVec 64)) (t!34441 List!24169)) )
))
(declare-fun arrayNoDuplicates!0 (array!71544 (_ BitVec 32) List!24169) Bool)

(assert (=> b!1103836 (= res!736514 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24166))))

(declare-fun b!1103837 () Bool)

(declare-fun res!736517 () Bool)

(assert (=> b!1103837 (=> (not res!736517) (not e!630154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103837 (= res!736517 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!42808 () Bool)

(declare-fun mapRes!42808 () Bool)

(declare-fun tp!81729 () Bool)

(declare-fun e!630155 () Bool)

(assert (=> mapNonEmpty!42808 (= mapRes!42808 (and tp!81729 e!630155))))

(declare-fun mapKey!42808 () (_ BitVec 32))

(declare-datatypes ((V!41573 0))(
  ( (V!41574 (val!13724 Int)) )
))
(declare-datatypes ((ValueCell!12958 0))(
  ( (ValueCellFull!12958 (v!16357 V!41573)) (EmptyCell!12958) )
))
(declare-fun mapRest!42808 () (Array (_ BitVec 32) ValueCell!12958))

(declare-fun mapValue!42808 () ValueCell!12958)

(declare-datatypes ((array!71546 0))(
  ( (array!71547 (arr!34426 (Array (_ BitVec 32) ValueCell!12958)) (size!34963 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71546)

(assert (=> mapNonEmpty!42808 (= (arr!34426 _values!996) (store mapRest!42808 mapKey!42808 mapValue!42808))))

(declare-fun res!736510 () Bool)

(assert (=> start!97082 (=> (not res!736510) (not e!630154))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97082 (= res!736510 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34962 _keys!1208))))))

(assert (=> start!97082 e!630154))

(declare-fun array_inv!26362 (array!71544) Bool)

(assert (=> start!97082 (array_inv!26362 _keys!1208)))

(assert (=> start!97082 true))

(declare-fun e!630151 () Bool)

(declare-fun array_inv!26363 (array!71546) Bool)

(assert (=> start!97082 (and (array_inv!26363 _values!996) e!630151)))

(declare-fun b!1103838 () Bool)

(declare-fun res!736513 () Bool)

(assert (=> b!1103838 (=> (not res!736513) (not e!630154))))

(assert (=> b!1103838 (= res!736513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103839 () Bool)

(declare-fun e!630153 () Bool)

(declare-fun tp_is_empty!27335 () Bool)

(assert (=> b!1103839 (= e!630153 tp_is_empty!27335)))

(declare-fun mapIsEmpty!42808 () Bool)

(assert (=> mapIsEmpty!42808 mapRes!42808))

(declare-fun b!1103840 () Bool)

(assert (=> b!1103840 (= e!630155 tp_is_empty!27335)))

(declare-fun b!1103841 () Bool)

(declare-fun res!736511 () Bool)

(assert (=> b!1103841 (=> (not res!736511) (not e!630154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103841 (= res!736511 (validMask!0 mask!1564))))

(declare-fun b!1103842 () Bool)

(assert (=> b!1103842 (= e!630151 (and e!630153 mapRes!42808))))

(declare-fun condMapEmpty!42808 () Bool)

(declare-fun mapDefault!42808 () ValueCell!12958)

