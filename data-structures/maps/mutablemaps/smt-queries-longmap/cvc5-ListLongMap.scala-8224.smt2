; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100288 () Bool)

(assert start!100288)

(declare-fun b!1195724 () Bool)

(declare-fun res!795779 () Bool)

(declare-fun e!679471 () Bool)

(assert (=> b!1195724 (=> (not res!795779) (not e!679471))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195724 (= res!795779 (validKeyInArray!0 k!934))))

(declare-fun b!1195725 () Bool)

(declare-fun res!795777 () Bool)

(assert (=> b!1195725 (=> (not res!795777) (not e!679471))))

(declare-datatypes ((array!77400 0))(
  ( (array!77401 (arr!37343 (Array (_ BitVec 32) (_ BitVec 64))) (size!37880 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77400)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45553 0))(
  ( (V!45554 (val!15216 Int)) )
))
(declare-datatypes ((ValueCell!14450 0))(
  ( (ValueCellFull!14450 (v!17855 V!45553)) (EmptyCell!14450) )
))
(declare-datatypes ((array!77402 0))(
  ( (array!77403 (arr!37344 (Array (_ BitVec 32) ValueCell!14450)) (size!37881 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77402)

(assert (=> b!1195725 (= res!795777 (and (= (size!37881 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37880 _keys!1208) (size!37881 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195726 () Bool)

(declare-fun res!795778 () Bool)

(assert (=> b!1195726 (=> (not res!795778) (not e!679471))))

(declare-datatypes ((List!26447 0))(
  ( (Nil!26444) (Cons!26443 (h!27652 (_ BitVec 64)) (t!39125 List!26447)) )
))
(declare-fun arrayNoDuplicates!0 (array!77400 (_ BitVec 32) List!26447) Bool)

(assert (=> b!1195726 (= res!795778 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26444))))

(declare-fun b!1195727 () Bool)

(declare-fun e!679474 () Bool)

(declare-fun tp_is_empty!30319 () Bool)

(assert (=> b!1195727 (= e!679474 tp_is_empty!30319)))

(declare-fun b!1195728 () Bool)

(declare-fun res!795775 () Bool)

(assert (=> b!1195728 (=> (not res!795775) (not e!679471))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195728 (= res!795775 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37880 _keys!1208))))))

(declare-fun b!1195729 () Bool)

(declare-fun e!679469 () Bool)

(assert (=> b!1195729 (= e!679471 e!679469)))

(declare-fun res!795780 () Bool)

(assert (=> b!1195729 (=> (not res!795780) (not e!679469))))

(declare-fun lt!542928 () array!77400)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77400 (_ BitVec 32)) Bool)

(assert (=> b!1195729 (= res!795780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542928 mask!1564))))

(assert (=> b!1195729 (= lt!542928 (array!77401 (store (arr!37343 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37880 _keys!1208)))))

(declare-fun b!1195730 () Bool)

(declare-fun res!795781 () Bool)

(assert (=> b!1195730 (=> (not res!795781) (not e!679471))))

(assert (=> b!1195730 (= res!795781 (= (select (arr!37343 _keys!1208) i!673) k!934))))

(declare-fun b!1195731 () Bool)

(declare-fun res!795776 () Bool)

(assert (=> b!1195731 (=> (not res!795776) (not e!679471))))

(assert (=> b!1195731 (= res!795776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195732 () Bool)

(declare-fun res!795773 () Bool)

(assert (=> b!1195732 (=> (not res!795773) (not e!679469))))

(assert (=> b!1195732 (= res!795773 (arrayNoDuplicates!0 lt!542928 #b00000000000000000000000000000000 Nil!26444))))

(declare-fun mapIsEmpty!47315 () Bool)

(declare-fun mapRes!47315 () Bool)

(assert (=> mapIsEmpty!47315 mapRes!47315))

(declare-fun b!1195733 () Bool)

(declare-fun res!795774 () Bool)

(assert (=> b!1195733 (=> (not res!795774) (not e!679471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195733 (= res!795774 (validMask!0 mask!1564))))

(declare-fun res!795772 () Bool)

(assert (=> start!100288 (=> (not res!795772) (not e!679471))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100288 (= res!795772 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37880 _keys!1208))))))

(assert (=> start!100288 e!679471))

(declare-fun array_inv!28364 (array!77400) Bool)

(assert (=> start!100288 (array_inv!28364 _keys!1208)))

(assert (=> start!100288 true))

(declare-fun e!679472 () Bool)

(declare-fun array_inv!28365 (array!77402) Bool)

(assert (=> start!100288 (and (array_inv!28365 _values!996) e!679472)))

(declare-fun b!1195734 () Bool)

(declare-fun e!679473 () Bool)

(assert (=> b!1195734 (= e!679473 tp_is_empty!30319)))

(declare-fun mapNonEmpty!47315 () Bool)

(declare-fun tp!89926 () Bool)

(assert (=> mapNonEmpty!47315 (= mapRes!47315 (and tp!89926 e!679474))))

(declare-fun mapValue!47315 () ValueCell!14450)

(declare-fun mapKey!47315 () (_ BitVec 32))

(declare-fun mapRest!47315 () (Array (_ BitVec 32) ValueCell!14450))

(assert (=> mapNonEmpty!47315 (= (arr!37344 _values!996) (store mapRest!47315 mapKey!47315 mapValue!47315))))

(declare-fun b!1195735 () Bool)

(assert (=> b!1195735 (= e!679469 (not true))))

(declare-fun arrayContainsKey!0 (array!77400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195735 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39590 0))(
  ( (Unit!39591) )
))
(declare-fun lt!542927 () Unit!39590)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77400 (_ BitVec 64) (_ BitVec 32)) Unit!39590)

(assert (=> b!1195735 (= lt!542927 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195736 () Bool)

(assert (=> b!1195736 (= e!679472 (and e!679473 mapRes!47315))))

(declare-fun condMapEmpty!47315 () Bool)

(declare-fun mapDefault!47315 () ValueCell!14450)

