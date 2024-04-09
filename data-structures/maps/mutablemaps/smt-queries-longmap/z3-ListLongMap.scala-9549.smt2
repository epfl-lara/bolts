; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113194 () Bool)

(assert start!113194)

(declare-fun b_free!31209 () Bool)

(declare-fun b_next!31209 () Bool)

(assert (=> start!113194 (= b_free!31209 (not b_next!31209))))

(declare-fun tp!109433 () Bool)

(declare-fun b_and!50335 () Bool)

(assert (=> start!113194 (= tp!109433 b_and!50335)))

(declare-fun b!1341764 () Bool)

(declare-fun res!890246 () Bool)

(declare-fun e!764018 () Bool)

(assert (=> b!1341764 (=> (not res!890246) (not e!764018))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91227 0))(
  ( (array!91228 (arr!44065 (Array (_ BitVec 32) (_ BitVec 64))) (size!44616 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91227)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341764 (= res!890246 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44616 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341765 () Bool)

(declare-fun e!764020 () Bool)

(declare-fun e!764019 () Bool)

(declare-fun mapRes!57520 () Bool)

(assert (=> b!1341765 (= e!764020 (and e!764019 mapRes!57520))))

(declare-fun condMapEmpty!57520 () Bool)

(declare-datatypes ((V!54715 0))(
  ( (V!54716 (val!18679 Int)) )
))
(declare-datatypes ((ValueCell!17706 0))(
  ( (ValueCellFull!17706 (v!21325 V!54715)) (EmptyCell!17706) )
))
(declare-datatypes ((array!91229 0))(
  ( (array!91230 (arr!44066 (Array (_ BitVec 32) ValueCell!17706)) (size!44617 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91229)

(declare-fun mapDefault!57520 () ValueCell!17706)

(assert (=> b!1341765 (= condMapEmpty!57520 (= (arr!44066 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17706)) mapDefault!57520)))))

(declare-fun b!1341766 () Bool)

(declare-fun e!764021 () Bool)

(declare-fun tp_is_empty!37209 () Bool)

(assert (=> b!1341766 (= e!764021 tp_is_empty!37209)))

(declare-fun b!1341767 () Bool)

(declare-fun res!890240 () Bool)

(assert (=> b!1341767 (=> (not res!890240) (not e!764018))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1341767 (= res!890240 (and (= (size!44617 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44616 _keys!1571) (size!44617 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!890244 () Bool)

(assert (=> start!113194 (=> (not res!890244) (not e!764018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113194 (= res!890244 (validMask!0 mask!1977))))

(assert (=> start!113194 e!764018))

(assert (=> start!113194 tp_is_empty!37209))

(assert (=> start!113194 true))

(declare-fun array_inv!33135 (array!91227) Bool)

(assert (=> start!113194 (array_inv!33135 _keys!1571)))

(declare-fun array_inv!33136 (array!91229) Bool)

(assert (=> start!113194 (and (array_inv!33136 _values!1303) e!764020)))

(assert (=> start!113194 tp!109433))

(declare-fun b!1341768 () Bool)

(declare-fun res!890239 () Bool)

(assert (=> b!1341768 (=> (not res!890239) (not e!764018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91227 (_ BitVec 32)) Bool)

(assert (=> b!1341768 (= res!890239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341769 () Bool)

(assert (=> b!1341769 (= e!764019 tp_is_empty!37209)))

(declare-fun mapIsEmpty!57520 () Bool)

(assert (=> mapIsEmpty!57520 mapRes!57520))

(declare-fun b!1341770 () Bool)

(declare-fun res!890242 () Bool)

(assert (=> b!1341770 (=> (not res!890242) (not e!764018))))

(declare-datatypes ((List!31382 0))(
  ( (Nil!31379) (Cons!31378 (h!32587 (_ BitVec 64)) (t!45809 List!31382)) )
))
(declare-fun arrayNoDuplicates!0 (array!91227 (_ BitVec 32) List!31382) Bool)

(assert (=> b!1341770 (= res!890242 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31379))))

(declare-fun b!1341771 () Bool)

(declare-fun res!890243 () Bool)

(assert (=> b!1341771 (=> (not res!890243) (not e!764018))))

(assert (=> b!1341771 (= res!890243 (not (= (select (arr!44065 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341772 () Bool)

(declare-fun res!890238 () Bool)

(assert (=> b!1341772 (=> (not res!890238) (not e!764018))))

(declare-fun minValue!1245 () V!54715)

(declare-fun zeroValue!1245 () V!54715)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24202 0))(
  ( (tuple2!24203 (_1!12111 (_ BitVec 64)) (_2!12111 V!54715)) )
))
(declare-datatypes ((List!31383 0))(
  ( (Nil!31380) (Cons!31379 (h!32588 tuple2!24202) (t!45810 List!31383)) )
))
(declare-datatypes ((ListLongMap!21871 0))(
  ( (ListLongMap!21872 (toList!10951 List!31383)) )
))
(declare-fun contains!9063 (ListLongMap!21871 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5851 (array!91227 array!91229 (_ BitVec 32) (_ BitVec 32) V!54715 V!54715 (_ BitVec 32) Int) ListLongMap!21871)

(assert (=> b!1341772 (= res!890238 (contains!9063 (getCurrentListMap!5851 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341773 () Bool)

(declare-fun res!890241 () Bool)

(assert (=> b!1341773 (=> (not res!890241) (not e!764018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341773 (= res!890241 (validKeyInArray!0 (select (arr!44065 _keys!1571) from!1960)))))

(declare-fun b!1341774 () Bool)

(declare-fun res!890245 () Bool)

(assert (=> b!1341774 (=> (not res!890245) (not e!764018))))

(assert (=> b!1341774 (= res!890245 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57520 () Bool)

(declare-fun tp!109432 () Bool)

(assert (=> mapNonEmpty!57520 (= mapRes!57520 (and tp!109432 e!764021))))

(declare-fun mapRest!57520 () (Array (_ BitVec 32) ValueCell!17706))

(declare-fun mapKey!57520 () (_ BitVec 32))

(declare-fun mapValue!57520 () ValueCell!17706)

(assert (=> mapNonEmpty!57520 (= (arr!44066 _values!1303) (store mapRest!57520 mapKey!57520 mapValue!57520))))

(declare-fun b!1341775 () Bool)

(assert (=> b!1341775 (= e!764018 (not true))))

(declare-fun lt!594190 () ListLongMap!21871)

(assert (=> b!1341775 (contains!9063 lt!594190 k0!1142)))

(declare-fun lt!594187 () V!54715)

(declare-datatypes ((Unit!43977 0))(
  ( (Unit!43978) )
))
(declare-fun lt!594189 () Unit!43977)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!348 ((_ BitVec 64) (_ BitVec 64) V!54715 ListLongMap!21871) Unit!43977)

(assert (=> b!1341775 (= lt!594189 (lemmaInListMapAfterAddingDiffThenInBefore!348 k0!1142 (select (arr!44065 _keys!1571) from!1960) lt!594187 lt!594190))))

(declare-fun lt!594186 () ListLongMap!21871)

(assert (=> b!1341775 (contains!9063 lt!594186 k0!1142)))

(declare-fun lt!594188 () Unit!43977)

(assert (=> b!1341775 (= lt!594188 (lemmaInListMapAfterAddingDiffThenInBefore!348 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594186))))

(declare-fun +!4756 (ListLongMap!21871 tuple2!24202) ListLongMap!21871)

(assert (=> b!1341775 (= lt!594186 (+!4756 lt!594190 (tuple2!24203 (select (arr!44065 _keys!1571) from!1960) lt!594187)))))

(declare-fun get!22287 (ValueCell!17706 V!54715) V!54715)

(declare-fun dynLambda!3793 (Int (_ BitVec 64)) V!54715)

(assert (=> b!1341775 (= lt!594187 (get!22287 (select (arr!44066 _values!1303) from!1960) (dynLambda!3793 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6479 (array!91227 array!91229 (_ BitVec 32) (_ BitVec 32) V!54715 V!54715 (_ BitVec 32) Int) ListLongMap!21871)

(assert (=> b!1341775 (= lt!594190 (getCurrentListMapNoExtraKeys!6479 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(assert (= (and start!113194 res!890244) b!1341767))

(assert (= (and b!1341767 res!890240) b!1341768))

(assert (= (and b!1341768 res!890239) b!1341770))

(assert (= (and b!1341770 res!890242) b!1341764))

(assert (= (and b!1341764 res!890246) b!1341772))

(assert (= (and b!1341772 res!890238) b!1341771))

(assert (= (and b!1341771 res!890243) b!1341773))

(assert (= (and b!1341773 res!890241) b!1341774))

(assert (= (and b!1341774 res!890245) b!1341775))

(assert (= (and b!1341765 condMapEmpty!57520) mapIsEmpty!57520))

(assert (= (and b!1341765 (not condMapEmpty!57520)) mapNonEmpty!57520))

(get-info :version)

(assert (= (and mapNonEmpty!57520 ((_ is ValueCellFull!17706) mapValue!57520)) b!1341766))

(assert (= (and b!1341765 ((_ is ValueCellFull!17706) mapDefault!57520)) b!1341769))

(assert (= start!113194 b!1341765))

(declare-fun b_lambda!24395 () Bool)

(assert (=> (not b_lambda!24395) (not b!1341775)))

(declare-fun t!45808 () Bool)

(declare-fun tb!12231 () Bool)

(assert (=> (and start!113194 (= defaultEntry!1306 defaultEntry!1306) t!45808) tb!12231))

(declare-fun result!25545 () Bool)

(assert (=> tb!12231 (= result!25545 tp_is_empty!37209)))

(assert (=> b!1341775 t!45808))

(declare-fun b_and!50337 () Bool)

(assert (= b_and!50335 (and (=> t!45808 result!25545) b_and!50337)))

(declare-fun m!1229427 () Bool)

(assert (=> start!113194 m!1229427))

(declare-fun m!1229429 () Bool)

(assert (=> start!113194 m!1229429))

(declare-fun m!1229431 () Bool)

(assert (=> start!113194 m!1229431))

(declare-fun m!1229433 () Bool)

(assert (=> b!1341770 m!1229433))

(declare-fun m!1229435 () Bool)

(assert (=> b!1341773 m!1229435))

(assert (=> b!1341773 m!1229435))

(declare-fun m!1229437 () Bool)

(assert (=> b!1341773 m!1229437))

(declare-fun m!1229439 () Bool)

(assert (=> mapNonEmpty!57520 m!1229439))

(declare-fun m!1229441 () Bool)

(assert (=> b!1341775 m!1229441))

(declare-fun m!1229443 () Bool)

(assert (=> b!1341775 m!1229443))

(declare-fun m!1229445 () Bool)

(assert (=> b!1341775 m!1229445))

(declare-fun m!1229447 () Bool)

(assert (=> b!1341775 m!1229447))

(assert (=> b!1341775 m!1229443))

(assert (=> b!1341775 m!1229445))

(assert (=> b!1341775 m!1229435))

(declare-fun m!1229449 () Bool)

(assert (=> b!1341775 m!1229449))

(declare-fun m!1229451 () Bool)

(assert (=> b!1341775 m!1229451))

(declare-fun m!1229453 () Bool)

(assert (=> b!1341775 m!1229453))

(assert (=> b!1341775 m!1229435))

(declare-fun m!1229455 () Bool)

(assert (=> b!1341775 m!1229455))

(declare-fun m!1229457 () Bool)

(assert (=> b!1341775 m!1229457))

(declare-fun m!1229459 () Bool)

(assert (=> b!1341772 m!1229459))

(assert (=> b!1341772 m!1229459))

(declare-fun m!1229461 () Bool)

(assert (=> b!1341772 m!1229461))

(assert (=> b!1341771 m!1229435))

(declare-fun m!1229463 () Bool)

(assert (=> b!1341768 m!1229463))

(check-sat (not b!1341772) (not start!113194) (not b!1341768) (not b!1341773) tp_is_empty!37209 (not b!1341770) (not b_lambda!24395) (not b_next!31209) (not b!1341775) b_and!50337 (not mapNonEmpty!57520))
(check-sat b_and!50337 (not b_next!31209))
