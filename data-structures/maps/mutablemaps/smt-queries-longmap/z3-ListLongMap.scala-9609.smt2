; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113638 () Bool)

(assert start!113638)

(declare-fun b_free!31569 () Bool)

(declare-fun b_next!31569 () Bool)

(assert (=> start!113638 (= b_free!31569 (not b_next!31569))))

(declare-fun tp!110520 () Bool)

(declare-fun b_and!50937 () Bool)

(assert (=> start!113638 (= tp!110520 b_and!50937)))

(declare-fun mapIsEmpty!58067 () Bool)

(declare-fun mapRes!58067 () Bool)

(assert (=> mapIsEmpty!58067 mapRes!58067))

(declare-fun b!1348494 () Bool)

(declare-fun res!894797 () Bool)

(declare-fun e!767162 () Bool)

(assert (=> b!1348494 (=> (not res!894797) (not e!767162))))

(declare-datatypes ((array!91927 0))(
  ( (array!91928 (arr!44413 (Array (_ BitVec 32) (_ BitVec 64))) (size!44964 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91927)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91927 (_ BitVec 32)) Bool)

(assert (=> b!1348494 (= res!894797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348496 () Bool)

(declare-fun e!767166 () Bool)

(declare-fun tp_is_empty!37569 () Bool)

(assert (=> b!1348496 (= e!767166 tp_is_empty!37569)))

(declare-fun b!1348497 () Bool)

(declare-fun res!894792 () Bool)

(assert (=> b!1348497 (=> (not res!894792) (not e!767162))))

(declare-datatypes ((V!55195 0))(
  ( (V!55196 (val!18859 Int)) )
))
(declare-fun zeroValue!1245 () V!55195)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17886 0))(
  ( (ValueCellFull!17886 (v!21509 V!55195)) (EmptyCell!17886) )
))
(declare-datatypes ((array!91929 0))(
  ( (array!91930 (arr!44414 (Array (_ BitVec 32) ValueCell!17886)) (size!44965 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91929)

(declare-fun minValue!1245 () V!55195)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24456 0))(
  ( (tuple2!24457 (_1!12238 (_ BitVec 64)) (_2!12238 V!55195)) )
))
(declare-datatypes ((List!31625 0))(
  ( (Nil!31622) (Cons!31621 (h!32830 tuple2!24456) (t!46270 List!31625)) )
))
(declare-datatypes ((ListLongMap!22125 0))(
  ( (ListLongMap!22126 (toList!11078 List!31625)) )
))
(declare-fun contains!9193 (ListLongMap!22125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5968 (array!91927 array!91929 (_ BitVec 32) (_ BitVec 32) V!55195 V!55195 (_ BitVec 32) Int) ListLongMap!22125)

(assert (=> b!1348497 (= res!894792 (contains!9193 (getCurrentListMap!5968 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1348498 () Bool)

(declare-fun res!894798 () Bool)

(assert (=> b!1348498 (=> (not res!894798) (not e!767162))))

(assert (=> b!1348498 (= res!894798 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44964 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348499 () Bool)

(declare-fun res!894796 () Bool)

(assert (=> b!1348499 (=> (not res!894796) (not e!767162))))

(assert (=> b!1348499 (= res!894796 (not (= (select (arr!44413 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1348500 () Bool)

(declare-fun e!767165 () Bool)

(declare-fun e!767164 () Bool)

(assert (=> b!1348500 (= e!767165 (and e!767164 mapRes!58067))))

(declare-fun condMapEmpty!58067 () Bool)

(declare-fun mapDefault!58067 () ValueCell!17886)

(assert (=> b!1348500 (= condMapEmpty!58067 (= (arr!44414 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17886)) mapDefault!58067)))))

(declare-fun b!1348501 () Bool)

(assert (=> b!1348501 (= e!767162 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1960 (size!44965 _values!1303))))))

(declare-fun b!1348502 () Bool)

(declare-fun res!894795 () Bool)

(assert (=> b!1348502 (=> (not res!894795) (not e!767162))))

(assert (=> b!1348502 (= res!894795 (and (= (size!44965 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44964 _keys!1571) (size!44965 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1348503 () Bool)

(assert (=> b!1348503 (= e!767164 tp_is_empty!37569)))

(declare-fun b!1348495 () Bool)

(declare-fun res!894799 () Bool)

(assert (=> b!1348495 (=> (not res!894799) (not e!767162))))

(declare-datatypes ((List!31626 0))(
  ( (Nil!31623) (Cons!31622 (h!32831 (_ BitVec 64)) (t!46271 List!31626)) )
))
(declare-fun arrayNoDuplicates!0 (array!91927 (_ BitVec 32) List!31626) Bool)

(assert (=> b!1348495 (= res!894799 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31623))))

(declare-fun res!894794 () Bool)

(assert (=> start!113638 (=> (not res!894794) (not e!767162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113638 (= res!894794 (validMask!0 mask!1977))))

(assert (=> start!113638 e!767162))

(assert (=> start!113638 tp_is_empty!37569))

(assert (=> start!113638 true))

(declare-fun array_inv!33365 (array!91927) Bool)

(assert (=> start!113638 (array_inv!33365 _keys!1571)))

(declare-fun array_inv!33366 (array!91929) Bool)

(assert (=> start!113638 (and (array_inv!33366 _values!1303) e!767165)))

(assert (=> start!113638 tp!110520))

(declare-fun b!1348504 () Bool)

(declare-fun res!894793 () Bool)

(assert (=> b!1348504 (=> (not res!894793) (not e!767162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348504 (= res!894793 (validKeyInArray!0 (select (arr!44413 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!58067 () Bool)

(declare-fun tp!110519 () Bool)

(assert (=> mapNonEmpty!58067 (= mapRes!58067 (and tp!110519 e!767166))))

(declare-fun mapValue!58067 () ValueCell!17886)

(declare-fun mapKey!58067 () (_ BitVec 32))

(declare-fun mapRest!58067 () (Array (_ BitVec 32) ValueCell!17886))

(assert (=> mapNonEmpty!58067 (= (arr!44414 _values!1303) (store mapRest!58067 mapKey!58067 mapValue!58067))))

(assert (= (and start!113638 res!894794) b!1348502))

(assert (= (and b!1348502 res!894795) b!1348494))

(assert (= (and b!1348494 res!894797) b!1348495))

(assert (= (and b!1348495 res!894799) b!1348498))

(assert (= (and b!1348498 res!894798) b!1348497))

(assert (= (and b!1348497 res!894792) b!1348499))

(assert (= (and b!1348499 res!894796) b!1348504))

(assert (= (and b!1348504 res!894793) b!1348501))

(assert (= (and b!1348500 condMapEmpty!58067) mapIsEmpty!58067))

(assert (= (and b!1348500 (not condMapEmpty!58067)) mapNonEmpty!58067))

(get-info :version)

(assert (= (and mapNonEmpty!58067 ((_ is ValueCellFull!17886) mapValue!58067)) b!1348496))

(assert (= (and b!1348500 ((_ is ValueCellFull!17886) mapDefault!58067)) b!1348503))

(assert (= start!113638 b!1348500))

(declare-fun m!1235579 () Bool)

(assert (=> b!1348504 m!1235579))

(assert (=> b!1348504 m!1235579))

(declare-fun m!1235581 () Bool)

(assert (=> b!1348504 m!1235581))

(declare-fun m!1235583 () Bool)

(assert (=> mapNonEmpty!58067 m!1235583))

(assert (=> b!1348499 m!1235579))

(declare-fun m!1235585 () Bool)

(assert (=> b!1348497 m!1235585))

(assert (=> b!1348497 m!1235585))

(declare-fun m!1235587 () Bool)

(assert (=> b!1348497 m!1235587))

(declare-fun m!1235589 () Bool)

(assert (=> b!1348494 m!1235589))

(declare-fun m!1235591 () Bool)

(assert (=> b!1348495 m!1235591))

(declare-fun m!1235593 () Bool)

(assert (=> start!113638 m!1235593))

(declare-fun m!1235595 () Bool)

(assert (=> start!113638 m!1235595))

(declare-fun m!1235597 () Bool)

(assert (=> start!113638 m!1235597))

(check-sat (not b!1348504) b_and!50937 (not b_next!31569) tp_is_empty!37569 (not start!113638) (not b!1348497) (not b!1348495) (not b!1348494) (not mapNonEmpty!58067))
(check-sat b_and!50937 (not b_next!31569))
