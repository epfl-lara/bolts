; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113142 () Bool)

(assert start!113142)

(declare-fun b_free!31157 () Bool)

(declare-fun b_next!31157 () Bool)

(assert (=> start!113142 (= b_free!31157 (not b_next!31157))))

(declare-fun tp!109276 () Bool)

(declare-fun b_and!50231 () Bool)

(assert (=> start!113142 (= tp!109276 b_and!50231)))

(declare-fun b!1340776 () Bool)

(declare-fun res!889539 () Bool)

(declare-fun e!763627 () Bool)

(assert (=> b!1340776 (=> (not res!889539) (not e!763627))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340776 (= res!889539 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340777 () Bool)

(declare-fun res!889541 () Bool)

(assert (=> b!1340777 (=> (not res!889541) (not e!763627))))

(declare-datatypes ((array!91123 0))(
  ( (array!91124 (arr!44013 (Array (_ BitVec 32) (_ BitVec 64))) (size!44564 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91123)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340777 (= res!889541 (validKeyInArray!0 (select (arr!44013 _keys!1571) from!1960)))))

(declare-fun b!1340778 () Bool)

(declare-fun res!889537 () Bool)

(assert (=> b!1340778 (=> (not res!889537) (not e!763627))))

(declare-datatypes ((List!31342 0))(
  ( (Nil!31339) (Cons!31338 (h!32547 (_ BitVec 64)) (t!45717 List!31342)) )
))
(declare-fun arrayNoDuplicates!0 (array!91123 (_ BitVec 32) List!31342) Bool)

(assert (=> b!1340778 (= res!889537 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31339))))

(declare-fun b!1340779 () Bool)

(declare-fun res!889536 () Bool)

(assert (=> b!1340779 (=> (not res!889536) (not e!763627))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91123 (_ BitVec 32)) Bool)

(assert (=> b!1340779 (= res!889536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340780 () Bool)

(declare-fun e!763630 () Bool)

(declare-fun tp_is_empty!37157 () Bool)

(assert (=> b!1340780 (= e!763630 tp_is_empty!37157)))

(declare-fun b!1340781 () Bool)

(declare-fun res!889540 () Bool)

(assert (=> b!1340781 (=> (not res!889540) (not e!763627))))

(declare-datatypes ((V!54645 0))(
  ( (V!54646 (val!18653 Int)) )
))
(declare-fun minValue!1245 () V!54645)

(declare-fun zeroValue!1245 () V!54645)

(declare-datatypes ((ValueCell!17680 0))(
  ( (ValueCellFull!17680 (v!21299 V!54645)) (EmptyCell!17680) )
))
(declare-datatypes ((array!91125 0))(
  ( (array!91126 (arr!44014 (Array (_ BitVec 32) ValueCell!17680)) (size!44565 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91125)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24158 0))(
  ( (tuple2!24159 (_1!12089 (_ BitVec 64)) (_2!12089 V!54645)) )
))
(declare-datatypes ((List!31343 0))(
  ( (Nil!31340) (Cons!31339 (h!32548 tuple2!24158) (t!45718 List!31343)) )
))
(declare-datatypes ((ListLongMap!21827 0))(
  ( (ListLongMap!21828 (toList!10929 List!31343)) )
))
(declare-fun contains!9041 (ListLongMap!21827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5832 (array!91123 array!91125 (_ BitVec 32) (_ BitVec 32) V!54645 V!54645 (_ BitVec 32) Int) ListLongMap!21827)

(assert (=> b!1340781 (= res!889540 (contains!9041 (getCurrentListMap!5832 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340782 () Bool)

(declare-fun res!889538 () Bool)

(assert (=> b!1340782 (=> (not res!889538) (not e!763627))))

(assert (=> b!1340782 (= res!889538 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44564 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57442 () Bool)

(declare-fun mapRes!57442 () Bool)

(declare-fun tp!109277 () Bool)

(assert (=> mapNonEmpty!57442 (= mapRes!57442 (and tp!109277 e!763630))))

(declare-fun mapRest!57442 () (Array (_ BitVec 32) ValueCell!17680))

(declare-fun mapValue!57442 () ValueCell!17680)

(declare-fun mapKey!57442 () (_ BitVec 32))

(assert (=> mapNonEmpty!57442 (= (arr!44014 _values!1303) (store mapRest!57442 mapKey!57442 mapValue!57442))))

(declare-fun res!889544 () Bool)

(assert (=> start!113142 (=> (not res!889544) (not e!763627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113142 (= res!889544 (validMask!0 mask!1977))))

(assert (=> start!113142 e!763627))

(assert (=> start!113142 tp_is_empty!37157))

(assert (=> start!113142 true))

(declare-fun array_inv!33101 (array!91123) Bool)

(assert (=> start!113142 (array_inv!33101 _keys!1571)))

(declare-fun e!763628 () Bool)

(declare-fun array_inv!33102 (array!91125) Bool)

(assert (=> start!113142 (and (array_inv!33102 _values!1303) e!763628)))

(assert (=> start!113142 tp!109276))

(declare-fun b!1340783 () Bool)

(declare-fun res!889543 () Bool)

(assert (=> b!1340783 (=> (not res!889543) (not e!763627))))

(assert (=> b!1340783 (= res!889543 (not (= (select (arr!44013 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340784 () Bool)

(assert (=> b!1340784 (= e!763627 (not true))))

(declare-fun lt!593989 () ListLongMap!21827)

(assert (=> b!1340784 (contains!9041 lt!593989 k!1142)))

(declare-datatypes ((Unit!43935 0))(
  ( (Unit!43936) )
))
(declare-fun lt!593988 () Unit!43935)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!327 ((_ BitVec 64) (_ BitVec 64) V!54645 ListLongMap!21827) Unit!43935)

(assert (=> b!1340784 (= lt!593988 (lemmaInListMapAfterAddingDiffThenInBefore!327 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593989))))

(declare-fun +!4735 (ListLongMap!21827 tuple2!24158) ListLongMap!21827)

(declare-fun getCurrentListMapNoExtraKeys!6458 (array!91123 array!91125 (_ BitVec 32) (_ BitVec 32) V!54645 V!54645 (_ BitVec 32) Int) ListLongMap!21827)

(declare-fun get!22248 (ValueCell!17680 V!54645) V!54645)

(declare-fun dynLambda!3772 (Int (_ BitVec 64)) V!54645)

(assert (=> b!1340784 (= lt!593989 (+!4735 (getCurrentListMapNoExtraKeys!6458 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24159 (select (arr!44013 _keys!1571) from!1960) (get!22248 (select (arr!44014 _values!1303) from!1960) (dynLambda!3772 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340785 () Bool)

(declare-fun res!889542 () Bool)

(assert (=> b!1340785 (=> (not res!889542) (not e!763627))))

(assert (=> b!1340785 (= res!889542 (and (= (size!44565 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44564 _keys!1571) (size!44565 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340786 () Bool)

(declare-fun e!763629 () Bool)

(assert (=> b!1340786 (= e!763628 (and e!763629 mapRes!57442))))

(declare-fun condMapEmpty!57442 () Bool)

(declare-fun mapDefault!57442 () ValueCell!17680)

