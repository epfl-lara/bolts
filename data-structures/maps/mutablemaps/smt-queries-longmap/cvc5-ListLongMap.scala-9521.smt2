; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113024 () Bool)

(assert start!113024)

(declare-fun b!1339164 () Bool)

(declare-fun e!762744 () Bool)

(declare-fun tp_is_empty!37039 () Bool)

(assert (=> b!1339164 (= e!762744 tp_is_empty!37039)))

(declare-fun mapIsEmpty!57265 () Bool)

(declare-fun mapRes!57265 () Bool)

(assert (=> mapIsEmpty!57265 mapRes!57265))

(declare-fun b!1339165 () Bool)

(declare-fun res!888491 () Bool)

(declare-fun e!762742 () Bool)

(assert (=> b!1339165 (=> (not res!888491) (not e!762742))))

(declare-datatypes ((array!90901 0))(
  ( (array!90902 (arr!43902 (Array (_ BitVec 32) (_ BitVec 64))) (size!44453 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90901)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90901 (_ BitVec 32)) Bool)

(assert (=> b!1339165 (= res!888491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339166 () Bool)

(declare-fun e!762746 () Bool)

(assert (=> b!1339166 (= e!762746 tp_is_empty!37039)))

(declare-fun mapNonEmpty!57265 () Bool)

(declare-fun tp!108965 () Bool)

(assert (=> mapNonEmpty!57265 (= mapRes!57265 (and tp!108965 e!762746))))

(declare-datatypes ((V!54489 0))(
  ( (V!54490 (val!18594 Int)) )
))
(declare-datatypes ((ValueCell!17621 0))(
  ( (ValueCellFull!17621 (v!21240 V!54489)) (EmptyCell!17621) )
))
(declare-fun mapRest!57265 () (Array (_ BitVec 32) ValueCell!17621))

(declare-fun mapKey!57265 () (_ BitVec 32))

(declare-fun mapValue!57265 () ValueCell!17621)

(declare-datatypes ((array!90903 0))(
  ( (array!90904 (arr!43903 (Array (_ BitVec 32) ValueCell!17621)) (size!44454 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90903)

(assert (=> mapNonEmpty!57265 (= (arr!43903 _values!1303) (store mapRest!57265 mapKey!57265 mapValue!57265))))

(declare-fun res!888489 () Bool)

(assert (=> start!113024 (=> (not res!888489) (not e!762742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113024 (= res!888489 (validMask!0 mask!1977))))

(assert (=> start!113024 e!762742))

(assert (=> start!113024 true))

(declare-fun e!762745 () Bool)

(declare-fun array_inv!33027 (array!90903) Bool)

(assert (=> start!113024 (and (array_inv!33027 _values!1303) e!762745)))

(declare-fun array_inv!33028 (array!90901) Bool)

(assert (=> start!113024 (array_inv!33028 _keys!1571)))

(declare-fun b!1339167 () Bool)

(assert (=> b!1339167 (= e!762742 false)))

(declare-fun lt!593794 () Bool)

(declare-datatypes ((List!31273 0))(
  ( (Nil!31270) (Cons!31269 (h!32478 (_ BitVec 64)) (t!45612 List!31273)) )
))
(declare-fun arrayNoDuplicates!0 (array!90901 (_ BitVec 32) List!31273) Bool)

(assert (=> b!1339167 (= lt!593794 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31270))))

(declare-fun b!1339168 () Bool)

(declare-fun res!888490 () Bool)

(assert (=> b!1339168 (=> (not res!888490) (not e!762742))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339168 (= res!888490 (and (= (size!44454 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44453 _keys!1571) (size!44454 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339169 () Bool)

(assert (=> b!1339169 (= e!762745 (and e!762744 mapRes!57265))))

(declare-fun condMapEmpty!57265 () Bool)

(declare-fun mapDefault!57265 () ValueCell!17621)

