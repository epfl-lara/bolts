; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113370 () Bool)

(assert start!113370)

(declare-fun b_free!31385 () Bool)

(declare-fun b_next!31385 () Bool)

(assert (=> start!113370 (= b_free!31385 (not b_next!31385))))

(declare-fun tp!109960 () Bool)

(declare-fun b_and!50633 () Bool)

(assert (=> start!113370 (= tp!109960 b_and!50633)))

(declare-fun b!1344773 () Bool)

(declare-fun res!892342 () Bool)

(declare-fun e!765350 () Bool)

(assert (=> b!1344773 (=> (not res!892342) (not e!765350))))

(declare-datatypes ((array!91567 0))(
  ( (array!91568 (arr!44235 (Array (_ BitVec 32) (_ BitVec 64))) (size!44786 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91567)

(declare-datatypes ((List!31501 0))(
  ( (Nil!31498) (Cons!31497 (h!32706 (_ BitVec 64)) (t!46050 List!31501)) )
))
(declare-fun arrayNoDuplicates!0 (array!91567 (_ BitVec 32) List!31501) Bool)

(assert (=> b!1344773 (= res!892342 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31498))))

(declare-fun mapIsEmpty!57784 () Bool)

(declare-fun mapRes!57784 () Bool)

(assert (=> mapIsEmpty!57784 mapRes!57784))

(declare-fun mapNonEmpty!57784 () Bool)

(declare-fun tp!109961 () Bool)

(declare-fun e!765345 () Bool)

(assert (=> mapNonEmpty!57784 (= mapRes!57784 (and tp!109961 e!765345))))

(declare-datatypes ((V!54949 0))(
  ( (V!54950 (val!18767 Int)) )
))
(declare-datatypes ((ValueCell!17794 0))(
  ( (ValueCellFull!17794 (v!21413 V!54949)) (EmptyCell!17794) )
))
(declare-fun mapRest!57784 () (Array (_ BitVec 32) ValueCell!17794))

(declare-fun mapValue!57784 () ValueCell!17794)

(declare-datatypes ((array!91569 0))(
  ( (array!91570 (arr!44236 (Array (_ BitVec 32) ValueCell!17794)) (size!44787 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91569)

(declare-fun mapKey!57784 () (_ BitVec 32))

(assert (=> mapNonEmpty!57784 (= (arr!44236 _values!1303) (store mapRest!57784 mapKey!57784 mapValue!57784))))

(declare-fun res!892341 () Bool)

(assert (=> start!113370 (=> (not res!892341) (not e!765350))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113370 (= res!892341 (validMask!0 mask!1977))))

(assert (=> start!113370 e!765350))

(declare-fun tp_is_empty!37385 () Bool)

(assert (=> start!113370 tp_is_empty!37385))

(assert (=> start!113370 true))

(declare-fun array_inv!33251 (array!91567) Bool)

(assert (=> start!113370 (array_inv!33251 _keys!1571)))

(declare-fun e!765347 () Bool)

(declare-fun array_inv!33252 (array!91569) Bool)

(assert (=> start!113370 (and (array_inv!33252 _values!1303) e!765347)))

(assert (=> start!113370 tp!109960))

(declare-fun b!1344774 () Bool)

(assert (=> b!1344774 (= e!765345 tp_is_empty!37385)))

(declare-fun b!1344775 () Bool)

(declare-fun res!892336 () Bool)

(assert (=> b!1344775 (=> (not res!892336) (not e!765350))))

(declare-fun minValue!1245 () V!54949)

(declare-fun zeroValue!1245 () V!54949)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24326 0))(
  ( (tuple2!24327 (_1!12173 (_ BitVec 64)) (_2!12173 V!54949)) )
))
(declare-datatypes ((List!31502 0))(
  ( (Nil!31499) (Cons!31498 (h!32707 tuple2!24326) (t!46051 List!31502)) )
))
(declare-datatypes ((ListLongMap!21995 0))(
  ( (ListLongMap!21996 (toList!11013 List!31502)) )
))
(declare-fun contains!9125 (ListLongMap!21995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5906 (array!91567 array!91569 (_ BitVec 32) (_ BitVec 32) V!54949 V!54949 (_ BitVec 32) Int) ListLongMap!21995)

(assert (=> b!1344775 (= res!892336 (contains!9125 (getCurrentListMap!5906 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344776 () Bool)

(declare-fun res!892338 () Bool)

(declare-fun e!765349 () Bool)

(assert (=> b!1344776 (=> (not res!892338) (not e!765349))))

(assert (=> b!1344776 (= res!892338 (not (= k!1142 (select (arr!44235 _keys!1571) from!1960))))))

(declare-fun b!1344777 () Bool)

(declare-fun e!765346 () Bool)

(assert (=> b!1344777 (= e!765346 tp_is_empty!37385)))

(declare-fun b!1344778 () Bool)

(declare-fun res!892339 () Bool)

(assert (=> b!1344778 (=> (not res!892339) (not e!765350))))

(assert (=> b!1344778 (= res!892339 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44786 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344779 () Bool)

(declare-fun res!892334 () Bool)

(assert (=> b!1344779 (=> (not res!892334) (not e!765350))))

(assert (=> b!1344779 (= res!892334 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344780 () Bool)

(declare-fun res!892340 () Bool)

(assert (=> b!1344780 (=> (not res!892340) (not e!765350))))

(assert (=> b!1344780 (= res!892340 (not (= (select (arr!44235 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1344781 () Bool)

(assert (=> b!1344781 (= e!765350 e!765349)))

(declare-fun res!892337 () Bool)

(assert (=> b!1344781 (=> (not res!892337) (not e!765349))))

(declare-fun lt!595166 () ListLongMap!21995)

(declare-fun lt!595168 () V!54949)

(declare-fun +!4794 (ListLongMap!21995 tuple2!24326) ListLongMap!21995)

(assert (=> b!1344781 (= res!892337 (contains!9125 (+!4794 lt!595166 (tuple2!24327 (select (arr!44235 _keys!1571) from!1960) lt!595168)) k!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6517 (array!91567 array!91569 (_ BitVec 32) (_ BitVec 32) V!54949 V!54949 (_ BitVec 32) Int) ListLongMap!21995)

(assert (=> b!1344781 (= lt!595166 (getCurrentListMapNoExtraKeys!6517 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22383 (ValueCell!17794 V!54949) V!54949)

(declare-fun dynLambda!3831 (Int (_ BitVec 64)) V!54949)

(assert (=> b!1344781 (= lt!595168 (get!22383 (select (arr!44236 _values!1303) from!1960) (dynLambda!3831 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1344782 () Bool)

(declare-fun res!892335 () Bool)

(assert (=> b!1344782 (=> (not res!892335) (not e!765350))))

(assert (=> b!1344782 (= res!892335 (and (= (size!44787 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44786 _keys!1571) (size!44787 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344783 () Bool)

(declare-fun res!892333 () Bool)

(assert (=> b!1344783 (=> (not res!892333) (not e!765350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344783 (= res!892333 (validKeyInArray!0 (select (arr!44235 _keys!1571) from!1960)))))

(declare-fun b!1344784 () Bool)

(assert (=> b!1344784 (= e!765347 (and e!765346 mapRes!57784))))

(declare-fun condMapEmpty!57784 () Bool)

(declare-fun mapDefault!57784 () ValueCell!17794)

