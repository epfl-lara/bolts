; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97162 () Bool)

(assert start!97162)

(declare-fun mapNonEmpty!42874 () Bool)

(declare-fun mapRes!42874 () Bool)

(declare-fun tp!81795 () Bool)

(declare-fun e!630584 () Bool)

(assert (=> mapNonEmpty!42874 (= mapRes!42874 (and tp!81795 e!630584))))

(declare-fun mapKey!42874 () (_ BitVec 32))

(declare-datatypes ((V!41625 0))(
  ( (V!41626 (val!13743 Int)) )
))
(declare-datatypes ((ValueCell!12977 0))(
  ( (ValueCellFull!12977 (v!16377 V!41625)) (EmptyCell!12977) )
))
(declare-datatypes ((array!71622 0))(
  ( (array!71623 (arr!34461 (Array (_ BitVec 32) ValueCell!12977)) (size!34998 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71622)

(declare-fun mapRest!42874 () (Array (_ BitVec 32) ValueCell!12977))

(declare-fun mapValue!42874 () ValueCell!12977)

(assert (=> mapNonEmpty!42874 (= (arr!34461 _values!996) (store mapRest!42874 mapKey!42874 mapValue!42874))))

(declare-fun b!1104690 () Bool)

(declare-fun res!737130 () Bool)

(declare-fun e!630586 () Bool)

(assert (=> b!1104690 (=> (not res!737130) (not e!630586))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71624 0))(
  ( (array!71625 (arr!34462 (Array (_ BitVec 32) (_ BitVec 64))) (size!34999 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71624)

(assert (=> b!1104690 (= res!737130 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34999 _keys!1208))))))

(declare-fun res!737136 () Bool)

(assert (=> start!97162 (=> (not res!737136) (not e!630586))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97162 (= res!737136 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34999 _keys!1208))))))

(assert (=> start!97162 e!630586))

(declare-fun array_inv!26392 (array!71624) Bool)

(assert (=> start!97162 (array_inv!26392 _keys!1208)))

(assert (=> start!97162 true))

(declare-fun e!630588 () Bool)

(declare-fun array_inv!26393 (array!71622) Bool)

(assert (=> start!97162 (and (array_inv!26393 _values!996) e!630588)))

(declare-fun b!1104691 () Bool)

(declare-fun e!630587 () Bool)

(assert (=> b!1104691 (= e!630587 false)))

(declare-fun lt!495167 () Bool)

(declare-fun lt!495168 () array!71624)

(declare-datatypes ((List!24183 0))(
  ( (Nil!24180) (Cons!24179 (h!25388 (_ BitVec 64)) (t!34455 List!24183)) )
))
(declare-fun arrayNoDuplicates!0 (array!71624 (_ BitVec 32) List!24183) Bool)

(assert (=> b!1104691 (= lt!495167 (arrayNoDuplicates!0 lt!495168 #b00000000000000000000000000000000 Nil!24180))))

(declare-fun b!1104692 () Bool)

(declare-fun res!737132 () Bool)

(assert (=> b!1104692 (=> (not res!737132) (not e!630586))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104692 (= res!737132 (= (select (arr!34462 _keys!1208) i!673) k!934))))

(declare-fun b!1104693 () Bool)

(declare-fun res!737129 () Bool)

(assert (=> b!1104693 (=> (not res!737129) (not e!630586))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1104693 (= res!737129 (and (= (size!34998 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34999 _keys!1208) (size!34998 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42874 () Bool)

(assert (=> mapIsEmpty!42874 mapRes!42874))

(declare-fun b!1104694 () Bool)

(declare-fun res!737135 () Bool)

(assert (=> b!1104694 (=> (not res!737135) (not e!630586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71624 (_ BitVec 32)) Bool)

(assert (=> b!1104694 (= res!737135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104695 () Bool)

(declare-fun res!737134 () Bool)

(assert (=> b!1104695 (=> (not res!737134) (not e!630586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104695 (= res!737134 (validKeyInArray!0 k!934))))

(declare-fun b!1104696 () Bool)

(declare-fun tp_is_empty!27373 () Bool)

(assert (=> b!1104696 (= e!630584 tp_is_empty!27373)))

(declare-fun b!1104697 () Bool)

(declare-fun res!737133 () Bool)

(assert (=> b!1104697 (=> (not res!737133) (not e!630586))))

(assert (=> b!1104697 (= res!737133 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24180))))

(declare-fun b!1104698 () Bool)

(declare-fun e!630585 () Bool)

(assert (=> b!1104698 (= e!630585 tp_is_empty!27373)))

(declare-fun b!1104699 () Bool)

(assert (=> b!1104699 (= e!630586 e!630587)))

(declare-fun res!737137 () Bool)

(assert (=> b!1104699 (=> (not res!737137) (not e!630587))))

(assert (=> b!1104699 (= res!737137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495168 mask!1564))))

(assert (=> b!1104699 (= lt!495168 (array!71625 (store (arr!34462 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34999 _keys!1208)))))

(declare-fun b!1104700 () Bool)

(assert (=> b!1104700 (= e!630588 (and e!630585 mapRes!42874))))

(declare-fun condMapEmpty!42874 () Bool)

(declare-fun mapDefault!42874 () ValueCell!12977)

