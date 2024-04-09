; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100172 () Bool)

(assert start!100172)

(declare-fun b!1194138 () Bool)

(declare-fun e!678693 () Bool)

(assert (=> b!1194138 (= e!678693 false)))

(declare-fun lt!542684 () Bool)

(declare-datatypes ((array!77252 0))(
  ( (array!77253 (arr!37272 (Array (_ BitVec 32) (_ BitVec 64))) (size!37809 (_ BitVec 32))) )
))
(declare-fun lt!542685 () array!77252)

(declare-datatypes ((List!26416 0))(
  ( (Nil!26413) (Cons!26412 (h!27621 (_ BitVec 64)) (t!39094 List!26416)) )
))
(declare-fun arrayNoDuplicates!0 (array!77252 (_ BitVec 32) List!26416) Bool)

(assert (=> b!1194138 (= lt!542684 (arrayNoDuplicates!0 lt!542685 #b00000000000000000000000000000000 Nil!26413))))

(declare-fun b!1194139 () Bool)

(declare-fun res!794593 () Bool)

(declare-fun e!678689 () Bool)

(assert (=> b!1194139 (=> (not res!794593) (not e!678689))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194139 (= res!794593 (validMask!0 mask!1564))))

(declare-fun b!1194140 () Bool)

(declare-fun e!678692 () Bool)

(declare-fun tp_is_empty!30245 () Bool)

(assert (=> b!1194140 (= e!678692 tp_is_empty!30245)))

(declare-fun b!1194141 () Bool)

(declare-fun res!794597 () Bool)

(assert (=> b!1194141 (=> (not res!794597) (not e!678689))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!77252)

(assert (=> b!1194141 (= res!794597 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37809 _keys!1208))))))

(declare-fun b!1194142 () Bool)

(declare-fun res!794599 () Bool)

(assert (=> b!1194142 (=> (not res!794599) (not e!678689))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194142 (= res!794599 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!47195 () Bool)

(declare-fun mapRes!47195 () Bool)

(declare-fun tp!89806 () Bool)

(assert (=> mapNonEmpty!47195 (= mapRes!47195 (and tp!89806 e!678692))))

(declare-datatypes ((V!45453 0))(
  ( (V!45454 (val!15179 Int)) )
))
(declare-datatypes ((ValueCell!14413 0))(
  ( (ValueCellFull!14413 (v!17818 V!45453)) (EmptyCell!14413) )
))
(declare-fun mapRest!47195 () (Array (_ BitVec 32) ValueCell!14413))

(declare-fun mapKey!47195 () (_ BitVec 32))

(declare-fun mapValue!47195 () ValueCell!14413)

(declare-datatypes ((array!77254 0))(
  ( (array!77255 (arr!37273 (Array (_ BitVec 32) ValueCell!14413)) (size!37810 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77254)

(assert (=> mapNonEmpty!47195 (= (arr!37273 _values!996) (store mapRest!47195 mapKey!47195 mapValue!47195))))

(declare-fun b!1194143 () Bool)

(declare-fun res!794598 () Bool)

(assert (=> b!1194143 (=> (not res!794598) (not e!678689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77252 (_ BitVec 32)) Bool)

(assert (=> b!1194143 (= res!794598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194144 () Bool)

(declare-fun res!794594 () Bool)

(assert (=> b!1194144 (=> (not res!794594) (not e!678689))))

(assert (=> b!1194144 (= res!794594 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26413))))

(declare-fun res!794595 () Bool)

(assert (=> start!100172 (=> (not res!794595) (not e!678689))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100172 (= res!794595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37809 _keys!1208))))))

(assert (=> start!100172 e!678689))

(declare-fun array_inv!28312 (array!77252) Bool)

(assert (=> start!100172 (array_inv!28312 _keys!1208)))

(assert (=> start!100172 true))

(declare-fun e!678691 () Bool)

(declare-fun array_inv!28313 (array!77254) Bool)

(assert (=> start!100172 (and (array_inv!28313 _values!996) e!678691)))

(declare-fun b!1194145 () Bool)

(declare-fun e!678690 () Bool)

(assert (=> b!1194145 (= e!678690 tp_is_empty!30245)))

(declare-fun b!1194146 () Bool)

(assert (=> b!1194146 (= e!678691 (and e!678690 mapRes!47195))))

(declare-fun condMapEmpty!47195 () Bool)

(declare-fun mapDefault!47195 () ValueCell!14413)

