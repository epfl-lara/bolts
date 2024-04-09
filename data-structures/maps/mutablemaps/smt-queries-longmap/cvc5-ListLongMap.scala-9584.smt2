; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113402 () Bool)

(assert start!113402)

(declare-fun b_free!31417 () Bool)

(declare-fun b_next!31417 () Bool)

(assert (=> start!113402 (= b_free!31417 (not b_next!31417))))

(declare-fun tp!110057 () Bool)

(declare-fun b_and!50697 () Bool)

(assert (=> start!113402 (= tp!110057 b_and!50697)))

(declare-fun b!1345477 () Bool)

(declare-fun res!892871 () Bool)

(declare-fun e!765636 () Bool)

(assert (=> b!1345477 (=> (not res!892871) (not e!765636))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91631 0))(
  ( (array!91632 (arr!44267 (Array (_ BitVec 32) (_ BitVec 64))) (size!44818 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91631)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54993 0))(
  ( (V!54994 (val!18783 Int)) )
))
(declare-datatypes ((ValueCell!17810 0))(
  ( (ValueCellFull!17810 (v!21429 V!54993)) (EmptyCell!17810) )
))
(declare-datatypes ((array!91633 0))(
  ( (array!91634 (arr!44268 (Array (_ BitVec 32) ValueCell!17810)) (size!44819 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91633)

(assert (=> b!1345477 (= res!892871 (and (= (size!44819 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44818 _keys!1571) (size!44819 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345478 () Bool)

(declare-fun res!892866 () Bool)

(assert (=> b!1345478 (=> (not res!892866) (not e!765636))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345478 (= res!892866 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44818 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345479 () Bool)

(declare-fun e!765638 () Bool)

(declare-fun tp_is_empty!37417 () Bool)

(assert (=> b!1345479 (= e!765638 tp_is_empty!37417)))

(declare-fun b!1345480 () Bool)

(declare-fun e!765634 () Bool)

(assert (=> b!1345480 (= e!765634 (not true))))

(declare-datatypes ((tuple2!24352 0))(
  ( (tuple2!24353 (_1!12186 (_ BitVec 64)) (_2!12186 V!54993)) )
))
(declare-datatypes ((List!31523 0))(
  ( (Nil!31520) (Cons!31519 (h!32728 tuple2!24352) (t!46104 List!31523)) )
))
(declare-datatypes ((ListLongMap!22021 0))(
  ( (ListLongMap!22022 (toList!11026 List!31523)) )
))
(declare-fun lt!595310 () ListLongMap!22021)

(declare-fun contains!9138 (ListLongMap!22021 (_ BitVec 64)) Bool)

(assert (=> b!1345480 (contains!9138 lt!595310 k!1142)))

(declare-datatypes ((Unit!44067 0))(
  ( (Unit!44068) )
))
(declare-fun lt!595311 () Unit!44067)

(declare-fun lt!595312 () V!54993)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!393 ((_ BitVec 64) (_ BitVec 64) V!54993 ListLongMap!22021) Unit!44067)

(assert (=> b!1345480 (= lt!595311 (lemmaInListMapAfterAddingDiffThenInBefore!393 k!1142 (select (arr!44267 _keys!1571) from!1960) lt!595312 lt!595310))))

(declare-fun b!1345481 () Bool)

(declare-fun res!892870 () Bool)

(assert (=> b!1345481 (=> (not res!892870) (not e!765636))))

(declare-datatypes ((List!31524 0))(
  ( (Nil!31521) (Cons!31520 (h!32729 (_ BitVec 64)) (t!46105 List!31524)) )
))
(declare-fun arrayNoDuplicates!0 (array!91631 (_ BitVec 32) List!31524) Bool)

(assert (=> b!1345481 (= res!892870 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31521))))

(declare-fun b!1345482 () Bool)

(declare-fun res!892868 () Bool)

(assert (=> b!1345482 (=> (not res!892868) (not e!765636))))

(assert (=> b!1345482 (= res!892868 (not (= (select (arr!44267 _keys!1571) from!1960) k!1142)))))

(declare-fun mapNonEmpty!57832 () Bool)

(declare-fun mapRes!57832 () Bool)

(declare-fun tp!110056 () Bool)

(declare-fun e!765633 () Bool)

(assert (=> mapNonEmpty!57832 (= mapRes!57832 (and tp!110056 e!765633))))

(declare-fun mapKey!57832 () (_ BitVec 32))

(declare-fun mapValue!57832 () ValueCell!17810)

(declare-fun mapRest!57832 () (Array (_ BitVec 32) ValueCell!17810))

(assert (=> mapNonEmpty!57832 (= (arr!44268 _values!1303) (store mapRest!57832 mapKey!57832 mapValue!57832))))

(declare-fun b!1345483 () Bool)

(assert (=> b!1345483 (= e!765633 tp_is_empty!37417)))

(declare-fun b!1345484 () Bool)

(declare-fun res!892861 () Bool)

(assert (=> b!1345484 (=> (not res!892861) (not e!765636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345484 (= res!892861 (validKeyInArray!0 (select (arr!44267 _keys!1571) from!1960)))))

(declare-fun b!1345485 () Bool)

(declare-fun e!765637 () Bool)

(assert (=> b!1345485 (= e!765637 (and e!765638 mapRes!57832))))

(declare-fun condMapEmpty!57832 () Bool)

(declare-fun mapDefault!57832 () ValueCell!17810)

