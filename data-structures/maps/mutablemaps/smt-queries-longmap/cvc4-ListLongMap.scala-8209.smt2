; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100160 () Bool)

(assert start!100160)

(declare-fun b!1193923 () Bool)

(declare-fun e!678582 () Bool)

(declare-fun tp_is_empty!30233 () Bool)

(assert (=> b!1193923 (= e!678582 tp_is_empty!30233)))

(declare-fun mapNonEmpty!47177 () Bool)

(declare-fun mapRes!47177 () Bool)

(declare-fun tp!89788 () Bool)

(assert (=> mapNonEmpty!47177 (= mapRes!47177 (and tp!89788 e!678582))))

(declare-fun mapKey!47177 () (_ BitVec 32))

(declare-datatypes ((V!45437 0))(
  ( (V!45438 (val!15173 Int)) )
))
(declare-datatypes ((ValueCell!14407 0))(
  ( (ValueCellFull!14407 (v!17812 V!45437)) (EmptyCell!14407) )
))
(declare-fun mapRest!47177 () (Array (_ BitVec 32) ValueCell!14407))

(declare-fun mapValue!47177 () ValueCell!14407)

(declare-datatypes ((array!77228 0))(
  ( (array!77229 (arr!37260 (Array (_ BitVec 32) ValueCell!14407)) (size!37797 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77228)

(assert (=> mapNonEmpty!47177 (= (arr!37260 _values!996) (store mapRest!47177 mapKey!47177 mapValue!47177))))

(declare-fun b!1193924 () Bool)

(declare-fun res!794435 () Bool)

(declare-fun e!678586 () Bool)

(assert (=> b!1193924 (=> (not res!794435) (not e!678586))))

(declare-datatypes ((array!77230 0))(
  ( (array!77231 (arr!37261 (Array (_ BitVec 32) (_ BitVec 64))) (size!37798 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77230)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1193924 (= res!794435 (and (= (size!37797 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37798 _keys!1208) (size!37797 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193925 () Bool)

(declare-fun res!794430 () Bool)

(assert (=> b!1193925 (=> (not res!794430) (not e!678586))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1193925 (= res!794430 (= (select (arr!37261 _keys!1208) i!673) k!934))))

(declare-fun b!1193926 () Bool)

(assert (=> b!1193926 (= e!678586 false)))

(declare-fun lt!542649 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77230 (_ BitVec 32)) Bool)

(assert (=> b!1193926 (= lt!542649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!77231 (store (arr!37261 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37798 _keys!1208)) mask!1564))))

(declare-fun res!794431 () Bool)

(assert (=> start!100160 (=> (not res!794431) (not e!678586))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100160 (= res!794431 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37798 _keys!1208))))))

(assert (=> start!100160 e!678586))

(declare-fun array_inv!28306 (array!77230) Bool)

(assert (=> start!100160 (array_inv!28306 _keys!1208)))

(assert (=> start!100160 true))

(declare-fun e!678583 () Bool)

(declare-fun array_inv!28307 (array!77228) Bool)

(assert (=> start!100160 (and (array_inv!28307 _values!996) e!678583)))

(declare-fun b!1193927 () Bool)

(declare-fun res!794434 () Bool)

(assert (=> b!1193927 (=> (not res!794434) (not e!678586))))

(declare-datatypes ((List!26410 0))(
  ( (Nil!26407) (Cons!26406 (h!27615 (_ BitVec 64)) (t!39088 List!26410)) )
))
(declare-fun arrayNoDuplicates!0 (array!77230 (_ BitVec 32) List!26410) Bool)

(assert (=> b!1193927 (= res!794434 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26407))))

(declare-fun b!1193928 () Bool)

(declare-fun res!794437 () Bool)

(assert (=> b!1193928 (=> (not res!794437) (not e!678586))))

(assert (=> b!1193928 (= res!794437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193929 () Bool)

(declare-fun res!794432 () Bool)

(assert (=> b!1193929 (=> (not res!794432) (not e!678586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193929 (= res!794432 (validKeyInArray!0 k!934))))

(declare-fun b!1193930 () Bool)

(declare-fun res!794436 () Bool)

(assert (=> b!1193930 (=> (not res!794436) (not e!678586))))

(assert (=> b!1193930 (= res!794436 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37798 _keys!1208))))))

(declare-fun b!1193931 () Bool)

(declare-fun res!794433 () Bool)

(assert (=> b!1193931 (=> (not res!794433) (not e!678586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193931 (= res!794433 (validMask!0 mask!1564))))

(declare-fun b!1193932 () Bool)

(declare-fun e!678584 () Bool)

(assert (=> b!1193932 (= e!678584 tp_is_empty!30233)))

(declare-fun b!1193933 () Bool)

(assert (=> b!1193933 (= e!678583 (and e!678584 mapRes!47177))))

(declare-fun condMapEmpty!47177 () Bool)

(declare-fun mapDefault!47177 () ValueCell!14407)

