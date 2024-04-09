; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113358 () Bool)

(assert start!113358)

(declare-fun b_free!31373 () Bool)

(declare-fun b_next!31373 () Bool)

(assert (=> start!113358 (= b_free!31373 (not b_next!31373))))

(declare-fun tp!109925 () Bool)

(declare-fun b_and!50609 () Bool)

(assert (=> start!113358 (= tp!109925 b_and!50609)))

(declare-fun b!1344529 () Bool)

(declare-fun res!892155 () Bool)

(declare-fun e!765248 () Bool)

(assert (=> b!1344529 (=> (not res!892155) (not e!765248))))

(declare-datatypes ((V!54933 0))(
  ( (V!54934 (val!18761 Int)) )
))
(declare-fun minValue!1245 () V!54933)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91543 0))(
  ( (array!91544 (arr!44223 (Array (_ BitVec 32) (_ BitVec 64))) (size!44774 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91543)

(declare-fun zeroValue!1245 () V!54933)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17788 0))(
  ( (ValueCellFull!17788 (v!21407 V!54933)) (EmptyCell!17788) )
))
(declare-datatypes ((array!91545 0))(
  ( (array!91546 (arr!44224 (Array (_ BitVec 32) ValueCell!17788)) (size!44775 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91545)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24320 0))(
  ( (tuple2!24321 (_1!12170 (_ BitVec 64)) (_2!12170 V!54933)) )
))
(declare-datatypes ((List!31494 0))(
  ( (Nil!31491) (Cons!31490 (h!32699 tuple2!24320) (t!46031 List!31494)) )
))
(declare-datatypes ((ListLongMap!21989 0))(
  ( (ListLongMap!21990 (toList!11010 List!31494)) )
))
(declare-fun contains!9122 (ListLongMap!21989 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5903 (array!91543 array!91545 (_ BitVec 32) (_ BitVec 32) V!54933 V!54933 (_ BitVec 32) Int) ListLongMap!21989)

(assert (=> b!1344529 (= res!892155 (contains!9122 (getCurrentListMap!5903 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344530 () Bool)

(declare-fun res!892160 () Bool)

(assert (=> b!1344530 (=> (not res!892160) (not e!765248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91543 (_ BitVec 32)) Bool)

(assert (=> b!1344530 (= res!892160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344531 () Bool)

(declare-fun res!892156 () Bool)

(assert (=> b!1344531 (=> (not res!892156) (not e!765248))))

(assert (=> b!1344531 (= res!892156 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44774 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344532 () Bool)

(declare-fun res!892158 () Bool)

(assert (=> b!1344532 (=> (not res!892158) (not e!765248))))

(assert (=> b!1344532 (= res!892158 (and (= (size!44775 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44774 _keys!1571) (size!44775 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344533 () Bool)

(declare-fun res!892159 () Bool)

(assert (=> b!1344533 (=> (not res!892159) (not e!765248))))

(declare-datatypes ((List!31495 0))(
  ( (Nil!31492) (Cons!31491 (h!32700 (_ BitVec 64)) (t!46032 List!31495)) )
))
(declare-fun arrayNoDuplicates!0 (array!91543 (_ BitVec 32) List!31495) Bool)

(assert (=> b!1344533 (= res!892159 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31492))))

(declare-fun mapNonEmpty!57766 () Bool)

(declare-fun mapRes!57766 () Bool)

(declare-fun tp!109924 () Bool)

(declare-fun e!765251 () Bool)

(assert (=> mapNonEmpty!57766 (= mapRes!57766 (and tp!109924 e!765251))))

(declare-fun mapValue!57766 () ValueCell!17788)

(declare-fun mapKey!57766 () (_ BitVec 32))

(declare-fun mapRest!57766 () (Array (_ BitVec 32) ValueCell!17788))

(assert (=> mapNonEmpty!57766 (= (arr!44224 _values!1303) (store mapRest!57766 mapKey!57766 mapValue!57766))))

(declare-fun mapIsEmpty!57766 () Bool)

(assert (=> mapIsEmpty!57766 mapRes!57766))

(declare-fun b!1344535 () Bool)

(declare-fun res!892162 () Bool)

(assert (=> b!1344535 (=> (not res!892162) (not e!765248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344535 (= res!892162 (validKeyInArray!0 (select (arr!44223 _keys!1571) from!1960)))))

(declare-fun b!1344536 () Bool)

(declare-fun res!892163 () Bool)

(assert (=> b!1344536 (=> (not res!892163) (not e!765248))))

(assert (=> b!1344536 (= res!892163 (not (= (select (arr!44223 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1344537 () Bool)

(assert (=> b!1344537 (= e!765248 false)))

(declare-fun lt!595132 () Bool)

(declare-fun +!4791 (ListLongMap!21989 tuple2!24320) ListLongMap!21989)

(declare-fun getCurrentListMapNoExtraKeys!6514 (array!91543 array!91545 (_ BitVec 32) (_ BitVec 32) V!54933 V!54933 (_ BitVec 32) Int) ListLongMap!21989)

(declare-fun get!22376 (ValueCell!17788 V!54933) V!54933)

(declare-fun dynLambda!3828 (Int (_ BitVec 64)) V!54933)

(assert (=> b!1344537 (= lt!595132 (contains!9122 (+!4791 (getCurrentListMapNoExtraKeys!6514 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24321 (select (arr!44223 _keys!1571) from!1960) (get!22376 (select (arr!44224 _values!1303) from!1960) (dynLambda!3828 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1142))))

(declare-fun b!1344538 () Bool)

(declare-fun tp_is_empty!37373 () Bool)

(assert (=> b!1344538 (= e!765251 tp_is_empty!37373)))

(declare-fun b!1344539 () Bool)

(declare-fun e!765247 () Bool)

(declare-fun e!765250 () Bool)

(assert (=> b!1344539 (= e!765247 (and e!765250 mapRes!57766))))

(declare-fun condMapEmpty!57766 () Bool)

(declare-fun mapDefault!57766 () ValueCell!17788)

