; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113050 () Bool)

(assert start!113050)

(declare-fun b!1339403 () Bool)

(declare-fun res!888614 () Bool)

(declare-fun e!762938 () Bool)

(assert (=> b!1339403 (=> (not res!888614) (not e!762938))))

(declare-datatypes ((array!90949 0))(
  ( (array!90950 (arr!43926 (Array (_ BitVec 32) (_ BitVec 64))) (size!44477 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90949)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90949 (_ BitVec 32)) Bool)

(assert (=> b!1339403 (= res!888614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57304 () Bool)

(declare-fun mapRes!57304 () Bool)

(declare-fun tp!109004 () Bool)

(declare-fun e!762940 () Bool)

(assert (=> mapNonEmpty!57304 (= mapRes!57304 (and tp!109004 e!762940))))

(declare-datatypes ((V!54523 0))(
  ( (V!54524 (val!18607 Int)) )
))
(declare-datatypes ((ValueCell!17634 0))(
  ( (ValueCellFull!17634 (v!21253 V!54523)) (EmptyCell!17634) )
))
(declare-fun mapRest!57304 () (Array (_ BitVec 32) ValueCell!17634))

(declare-fun mapValue!57304 () ValueCell!17634)

(declare-fun mapKey!57304 () (_ BitVec 32))

(declare-datatypes ((array!90951 0))(
  ( (array!90952 (arr!43927 (Array (_ BitVec 32) ValueCell!17634)) (size!44478 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90951)

(assert (=> mapNonEmpty!57304 (= (arr!43927 _values!1303) (store mapRest!57304 mapKey!57304 mapValue!57304))))

(declare-fun res!888612 () Bool)

(assert (=> start!113050 (=> (not res!888612) (not e!762938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113050 (= res!888612 (validMask!0 mask!1977))))

(assert (=> start!113050 e!762938))

(assert (=> start!113050 true))

(declare-fun array_inv!33043 (array!90949) Bool)

(assert (=> start!113050 (array_inv!33043 _keys!1571)))

(declare-fun e!762939 () Bool)

(declare-fun array_inv!33044 (array!90951) Bool)

(assert (=> start!113050 (and (array_inv!33044 _values!1303) e!762939)))

(declare-fun b!1339404 () Bool)

(declare-fun res!888613 () Bool)

(assert (=> b!1339404 (=> (not res!888613) (not e!762938))))

(declare-datatypes ((List!31282 0))(
  ( (Nil!31279) (Cons!31278 (h!32487 (_ BitVec 64)) (t!45621 List!31282)) )
))
(declare-fun arrayNoDuplicates!0 (array!90949 (_ BitVec 32) List!31282) Bool)

(assert (=> b!1339404 (= res!888613 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31279))))

(declare-fun b!1339405 () Bool)

(declare-fun e!762941 () Bool)

(assert (=> b!1339405 (= e!762939 (and e!762941 mapRes!57304))))

(declare-fun condMapEmpty!57304 () Bool)

(declare-fun mapDefault!57304 () ValueCell!17634)

(assert (=> b!1339405 (= condMapEmpty!57304 (= (arr!43927 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17634)) mapDefault!57304)))))

(declare-fun b!1339406 () Bool)

(declare-fun tp_is_empty!37065 () Bool)

(assert (=> b!1339406 (= e!762941 tp_is_empty!37065)))

(declare-fun b!1339407 () Bool)

(declare-fun res!888611 () Bool)

(assert (=> b!1339407 (=> (not res!888611) (not e!762938))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339407 (= res!888611 (and (= (size!44478 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44477 _keys!1571) (size!44478 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57304 () Bool)

(assert (=> mapIsEmpty!57304 mapRes!57304))

(declare-fun b!1339408 () Bool)

(assert (=> b!1339408 (= e!762940 tp_is_empty!37065)))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun b!1339409 () Bool)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339409 (= e!762938 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44477 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!1960 (size!44477 _keys!1571))))))

(assert (= (and start!113050 res!888612) b!1339407))

(assert (= (and b!1339407 res!888611) b!1339403))

(assert (= (and b!1339403 res!888614) b!1339404))

(assert (= (and b!1339404 res!888613) b!1339409))

(assert (= (and b!1339405 condMapEmpty!57304) mapIsEmpty!57304))

(assert (= (and b!1339405 (not condMapEmpty!57304)) mapNonEmpty!57304))

(get-info :version)

(assert (= (and mapNonEmpty!57304 ((_ is ValueCellFull!17634) mapValue!57304)) b!1339408))

(assert (= (and b!1339405 ((_ is ValueCellFull!17634) mapDefault!57304)) b!1339406))

(assert (= start!113050 b!1339405))

(declare-fun m!1227481 () Bool)

(assert (=> b!1339403 m!1227481))

(declare-fun m!1227483 () Bool)

(assert (=> mapNonEmpty!57304 m!1227483))

(declare-fun m!1227485 () Bool)

(assert (=> start!113050 m!1227485))

(declare-fun m!1227487 () Bool)

(assert (=> start!113050 m!1227487))

(declare-fun m!1227489 () Bool)

(assert (=> start!113050 m!1227489))

(declare-fun m!1227491 () Bool)

(assert (=> b!1339404 m!1227491))

(check-sat (not b!1339403) (not mapNonEmpty!57304) (not b!1339404) tp_is_empty!37065 (not start!113050))
(check-sat)
