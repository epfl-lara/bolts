; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113404 () Bool)

(assert start!113404)

(declare-fun b_free!31419 () Bool)

(declare-fun b_next!31419 () Bool)

(assert (=> start!113404 (= b_free!31419 (not b_next!31419))))

(declare-fun tp!110063 () Bool)

(declare-fun b_and!50701 () Bool)

(assert (=> start!113404 (= tp!110063 b_and!50701)))

(declare-fun b!1345521 () Bool)

(declare-fun res!892901 () Bool)

(declare-fun e!765656 () Bool)

(assert (=> b!1345521 (=> (not res!892901) (not e!765656))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91635 0))(
  ( (array!91636 (arr!44269 (Array (_ BitVec 32) (_ BitVec 64))) (size!44820 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91635)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345521 (= res!892901 (not (= (select (arr!44269 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345522 () Bool)

(declare-fun res!892894 () Bool)

(assert (=> b!1345522 (=> (not res!892894) (not e!765656))))

(declare-datatypes ((V!54995 0))(
  ( (V!54996 (val!18784 Int)) )
))
(declare-fun minValue!1245 () V!54995)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54995)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17811 0))(
  ( (ValueCellFull!17811 (v!21430 V!54995)) (EmptyCell!17811) )
))
(declare-datatypes ((array!91637 0))(
  ( (array!91638 (arr!44270 (Array (_ BitVec 32) ValueCell!17811)) (size!44821 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91637)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24354 0))(
  ( (tuple2!24355 (_1!12187 (_ BitVec 64)) (_2!12187 V!54995)) )
))
(declare-datatypes ((List!31525 0))(
  ( (Nil!31522) (Cons!31521 (h!32730 tuple2!24354) (t!46108 List!31525)) )
))
(declare-datatypes ((ListLongMap!22023 0))(
  ( (ListLongMap!22024 (toList!11027 List!31525)) )
))
(declare-fun contains!9139 (ListLongMap!22023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5918 (array!91635 array!91637 (_ BitVec 32) (_ BitVec 32) V!54995 V!54995 (_ BitVec 32) Int) ListLongMap!22023)

(assert (=> b!1345522 (= res!892894 (contains!9139 (getCurrentListMap!5918 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345523 () Bool)

(declare-fun e!765653 () Bool)

(declare-fun e!765654 () Bool)

(declare-fun mapRes!57835 () Bool)

(assert (=> b!1345523 (= e!765653 (and e!765654 mapRes!57835))))

(declare-fun condMapEmpty!57835 () Bool)

(declare-fun mapDefault!57835 () ValueCell!17811)

(assert (=> b!1345523 (= condMapEmpty!57835 (= (arr!44270 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17811)) mapDefault!57835)))))

(declare-fun b!1345524 () Bool)

(declare-fun res!892896 () Bool)

(assert (=> b!1345524 (=> (not res!892896) (not e!765656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345524 (= res!892896 (validKeyInArray!0 (select (arr!44269 _keys!1571) from!1960)))))

(declare-fun b!1345525 () Bool)

(declare-fun res!892900 () Bool)

(declare-fun e!765655 () Bool)

(assert (=> b!1345525 (=> (not res!892900) (not e!765655))))

(assert (=> b!1345525 (= res!892900 (not (= k0!1142 (select (arr!44269 _keys!1571) from!1960))))))

(declare-fun b!1345526 () Bool)

(assert (=> b!1345526 (= e!765655 (not true))))

(declare-fun lt!595320 () ListLongMap!22023)

(assert (=> b!1345526 (contains!9139 lt!595320 k0!1142)))

(declare-datatypes ((Unit!44069 0))(
  ( (Unit!44070) )
))
(declare-fun lt!595319 () Unit!44069)

(declare-fun lt!595321 () V!54995)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!394 ((_ BitVec 64) (_ BitVec 64) V!54995 ListLongMap!22023) Unit!44069)

(assert (=> b!1345526 (= lt!595319 (lemmaInListMapAfterAddingDiffThenInBefore!394 k0!1142 (select (arr!44269 _keys!1571) from!1960) lt!595321 lt!595320))))

(declare-fun b!1345527 () Bool)

(assert (=> b!1345527 (= e!765656 e!765655)))

(declare-fun res!892898 () Bool)

(assert (=> b!1345527 (=> (not res!892898) (not e!765655))))

(declare-fun +!4805 (ListLongMap!22023 tuple2!24354) ListLongMap!22023)

(assert (=> b!1345527 (= res!892898 (contains!9139 (+!4805 lt!595320 (tuple2!24355 (select (arr!44269 _keys!1571) from!1960) lt!595321)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6528 (array!91635 array!91637 (_ BitVec 32) (_ BitVec 32) V!54995 V!54995 (_ BitVec 32) Int) ListLongMap!22023)

(assert (=> b!1345527 (= lt!595320 (getCurrentListMapNoExtraKeys!6528 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22406 (ValueCell!17811 V!54995) V!54995)

(declare-fun dynLambda!3842 (Int (_ BitVec 64)) V!54995)

(assert (=> b!1345527 (= lt!595321 (get!22406 (select (arr!44270 _values!1303) from!1960) (dynLambda!3842 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345528 () Bool)

(declare-fun e!765652 () Bool)

(declare-fun tp_is_empty!37419 () Bool)

(assert (=> b!1345528 (= e!765652 tp_is_empty!37419)))

(declare-fun mapNonEmpty!57835 () Bool)

(declare-fun tp!110062 () Bool)

(assert (=> mapNonEmpty!57835 (= mapRes!57835 (and tp!110062 e!765652))))

(declare-fun mapValue!57835 () ValueCell!17811)

(declare-fun mapKey!57835 () (_ BitVec 32))

(declare-fun mapRest!57835 () (Array (_ BitVec 32) ValueCell!17811))

(assert (=> mapNonEmpty!57835 (= (arr!44270 _values!1303) (store mapRest!57835 mapKey!57835 mapValue!57835))))

(declare-fun res!892895 () Bool)

(assert (=> start!113404 (=> (not res!892895) (not e!765656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113404 (= res!892895 (validMask!0 mask!1977))))

(assert (=> start!113404 e!765656))

(assert (=> start!113404 tp_is_empty!37419))

(assert (=> start!113404 true))

(declare-fun array_inv!33273 (array!91635) Bool)

(assert (=> start!113404 (array_inv!33273 _keys!1571)))

(declare-fun array_inv!33274 (array!91637) Bool)

(assert (=> start!113404 (and (array_inv!33274 _values!1303) e!765653)))

(assert (=> start!113404 tp!110063))

(declare-fun b!1345529 () Bool)

(assert (=> b!1345529 (= e!765654 tp_is_empty!37419)))

(declare-fun b!1345530 () Bool)

(declare-fun res!892897 () Bool)

(assert (=> b!1345530 (=> (not res!892897) (not e!765656))))

(assert (=> b!1345530 (= res!892897 (and (= (size!44821 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44820 _keys!1571) (size!44821 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345531 () Bool)

(declare-fun res!892904 () Bool)

(assert (=> b!1345531 (=> (not res!892904) (not e!765656))))

(declare-datatypes ((List!31526 0))(
  ( (Nil!31523) (Cons!31522 (h!32731 (_ BitVec 64)) (t!46109 List!31526)) )
))
(declare-fun arrayNoDuplicates!0 (array!91635 (_ BitVec 32) List!31526) Bool)

(assert (=> b!1345531 (= res!892904 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31523))))

(declare-fun b!1345532 () Bool)

(declare-fun res!892903 () Bool)

(assert (=> b!1345532 (=> (not res!892903) (not e!765656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91635 (_ BitVec 32)) Bool)

(assert (=> b!1345532 (= res!892903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345533 () Bool)

(declare-fun res!892899 () Bool)

(assert (=> b!1345533 (=> (not res!892899) (not e!765656))))

(assert (=> b!1345533 (= res!892899 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44820 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345534 () Bool)

(declare-fun res!892902 () Bool)

(assert (=> b!1345534 (=> (not res!892902) (not e!765656))))

(assert (=> b!1345534 (= res!892902 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!57835 () Bool)

(assert (=> mapIsEmpty!57835 mapRes!57835))

(assert (= (and start!113404 res!892895) b!1345530))

(assert (= (and b!1345530 res!892897) b!1345532))

(assert (= (and b!1345532 res!892903) b!1345531))

(assert (= (and b!1345531 res!892904) b!1345533))

(assert (= (and b!1345533 res!892899) b!1345522))

(assert (= (and b!1345522 res!892894) b!1345521))

(assert (= (and b!1345521 res!892901) b!1345524))

(assert (= (and b!1345524 res!892896) b!1345534))

(assert (= (and b!1345534 res!892902) b!1345527))

(assert (= (and b!1345527 res!892898) b!1345525))

(assert (= (and b!1345525 res!892900) b!1345526))

(assert (= (and b!1345523 condMapEmpty!57835) mapIsEmpty!57835))

(assert (= (and b!1345523 (not condMapEmpty!57835)) mapNonEmpty!57835))

(get-info :version)

(assert (= (and mapNonEmpty!57835 ((_ is ValueCellFull!17811) mapValue!57835)) b!1345528))

(assert (= (and b!1345523 ((_ is ValueCellFull!17811) mapDefault!57835)) b!1345529))

(assert (= start!113404 b!1345523))

(declare-fun b_lambda!24551 () Bool)

(assert (=> (not b_lambda!24551) (not b!1345527)))

(declare-fun t!46107 () Bool)

(declare-fun tb!12387 () Bool)

(assert (=> (and start!113404 (= defaultEntry!1306 defaultEntry!1306) t!46107) tb!12387))

(declare-fun result!25857 () Bool)

(assert (=> tb!12387 (= result!25857 tp_is_empty!37419)))

(assert (=> b!1345527 t!46107))

(declare-fun b_and!50703 () Bool)

(assert (= b_and!50701 (and (=> t!46107 result!25857) b_and!50703)))

(declare-fun m!1232923 () Bool)

(assert (=> b!1345526 m!1232923))

(declare-fun m!1232925 () Bool)

(assert (=> b!1345526 m!1232925))

(assert (=> b!1345526 m!1232925))

(declare-fun m!1232927 () Bool)

(assert (=> b!1345526 m!1232927))

(declare-fun m!1232929 () Bool)

(assert (=> mapNonEmpty!57835 m!1232929))

(declare-fun m!1232931 () Bool)

(assert (=> b!1345532 m!1232931))

(assert (=> b!1345525 m!1232925))

(declare-fun m!1232933 () Bool)

(assert (=> start!113404 m!1232933))

(declare-fun m!1232935 () Bool)

(assert (=> start!113404 m!1232935))

(declare-fun m!1232937 () Bool)

(assert (=> start!113404 m!1232937))

(declare-fun m!1232939 () Bool)

(assert (=> b!1345527 m!1232939))

(declare-fun m!1232941 () Bool)

(assert (=> b!1345527 m!1232941))

(declare-fun m!1232943 () Bool)

(assert (=> b!1345527 m!1232943))

(declare-fun m!1232945 () Bool)

(assert (=> b!1345527 m!1232945))

(declare-fun m!1232947 () Bool)

(assert (=> b!1345527 m!1232947))

(assert (=> b!1345527 m!1232943))

(assert (=> b!1345527 m!1232945))

(assert (=> b!1345527 m!1232939))

(declare-fun m!1232949 () Bool)

(assert (=> b!1345527 m!1232949))

(assert (=> b!1345527 m!1232925))

(assert (=> b!1345521 m!1232925))

(declare-fun m!1232951 () Bool)

(assert (=> b!1345531 m!1232951))

(assert (=> b!1345524 m!1232925))

(assert (=> b!1345524 m!1232925))

(declare-fun m!1232953 () Bool)

(assert (=> b!1345524 m!1232953))

(declare-fun m!1232955 () Bool)

(assert (=> b!1345522 m!1232955))

(assert (=> b!1345522 m!1232955))

(declare-fun m!1232957 () Bool)

(assert (=> b!1345522 m!1232957))

(check-sat (not mapNonEmpty!57835) b_and!50703 (not b!1345524) (not b_lambda!24551) (not b!1345526) (not b!1345531) (not b_next!31419) (not start!113404) (not b!1345527) tp_is_empty!37419 (not b!1345522) (not b!1345532))
(check-sat b_and!50703 (not b_next!31419))
