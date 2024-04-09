; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108910 () Bool)

(assert start!108910)

(declare-fun b_free!28387 () Bool)

(declare-fun b_next!28387 () Bool)

(assert (=> start!108910 (= b_free!28387 (not b_next!28387))))

(declare-fun tp!100278 () Bool)

(declare-fun b_and!46463 () Bool)

(assert (=> start!108910 (= tp!100278 b_and!46463)))

(declare-fun b!1285712 () Bool)

(declare-fun res!854204 () Bool)

(declare-fun e!734438 () Bool)

(assert (=> b!1285712 (=> (not res!854204) (not e!734438))))

(declare-datatypes ((V!50473 0))(
  ( (V!50474 (val!17088 Int)) )
))
(declare-fun minValue!1387 () V!50473)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16115 0))(
  ( (ValueCellFull!16115 (v!19688 V!50473)) (EmptyCell!16115) )
))
(declare-datatypes ((array!85063 0))(
  ( (array!85064 (arr!41029 (Array (_ BitVec 32) ValueCell!16115)) (size!41580 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85063)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85065 0))(
  ( (array!85066 (arr!41030 (Array (_ BitVec 32) (_ BitVec 64))) (size!41581 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85065)

(declare-fun zeroValue!1387 () V!50473)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22038 0))(
  ( (tuple2!22039 (_1!11029 (_ BitVec 64)) (_2!11029 V!50473)) )
))
(declare-datatypes ((List!29249 0))(
  ( (Nil!29246) (Cons!29245 (h!30454 tuple2!22038) (t!42800 List!29249)) )
))
(declare-datatypes ((ListLongMap!19707 0))(
  ( (ListLongMap!19708 (toList!9869 List!29249)) )
))
(declare-fun contains!7924 (ListLongMap!19707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4885 (array!85065 array!85063 (_ BitVec 32) (_ BitVec 32) V!50473 V!50473 (_ BitVec 32) Int) ListLongMap!19707)

(assert (=> b!1285712 (= res!854204 (contains!7924 (getCurrentListMap!4885 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285713 () Bool)

(declare-fun res!854198 () Bool)

(assert (=> b!1285713 (=> (not res!854198) (not e!734438))))

(assert (=> b!1285713 (= res!854198 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41581 _keys!1741))))))

(declare-fun b!1285714 () Bool)

(declare-fun res!854205 () Bool)

(assert (=> b!1285714 (=> (not res!854205) (not e!734438))))

(assert (=> b!1285714 (= res!854205 (and (= (size!41580 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41581 _keys!1741) (size!41580 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!854200 () Bool)

(assert (=> start!108910 (=> (not res!854200) (not e!734438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108910 (= res!854200 (validMask!0 mask!2175))))

(assert (=> start!108910 e!734438))

(declare-fun tp_is_empty!34027 () Bool)

(assert (=> start!108910 tp_is_empty!34027))

(assert (=> start!108910 true))

(declare-fun e!734436 () Bool)

(declare-fun array_inv!31091 (array!85063) Bool)

(assert (=> start!108910 (and (array_inv!31091 _values!1445) e!734436)))

(declare-fun array_inv!31092 (array!85065) Bool)

(assert (=> start!108910 (array_inv!31092 _keys!1741)))

(assert (=> start!108910 tp!100278))

(declare-fun mapNonEmpty!52598 () Bool)

(declare-fun mapRes!52598 () Bool)

(declare-fun tp!100277 () Bool)

(declare-fun e!734439 () Bool)

(assert (=> mapNonEmpty!52598 (= mapRes!52598 (and tp!100277 e!734439))))

(declare-fun mapValue!52598 () ValueCell!16115)

(declare-fun mapRest!52598 () (Array (_ BitVec 32) ValueCell!16115))

(declare-fun mapKey!52598 () (_ BitVec 32))

(assert (=> mapNonEmpty!52598 (= (arr!41029 _values!1445) (store mapRest!52598 mapKey!52598 mapValue!52598))))

(declare-fun b!1285715 () Bool)

(declare-fun res!854203 () Bool)

(assert (=> b!1285715 (=> (not res!854203) (not e!734438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285715 (= res!854203 (validKeyInArray!0 (select (arr!41030 _keys!1741) from!2144)))))

(declare-fun b!1285716 () Bool)

(declare-fun res!854201 () Bool)

(assert (=> b!1285716 (=> (not res!854201) (not e!734438))))

(assert (=> b!1285716 (= res!854201 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1285717 () Bool)

(assert (=> b!1285717 (= e!734438 false)))

(declare-fun lt!576885 () Bool)

(declare-fun +!4279 (ListLongMap!19707 tuple2!22038) ListLongMap!19707)

(declare-fun getCurrentListMapNoExtraKeys!5990 (array!85065 array!85063 (_ BitVec 32) (_ BitVec 32) V!50473 V!50473 (_ BitVec 32) Int) ListLongMap!19707)

(assert (=> b!1285717 (= lt!576885 (contains!7924 (+!4279 (getCurrentListMapNoExtraKeys!5990 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun b!1285718 () Bool)

(declare-fun res!854202 () Bool)

(assert (=> b!1285718 (=> (not res!854202) (not e!734438))))

(assert (=> b!1285718 (= res!854202 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41581 _keys!1741))))))

(declare-fun mapIsEmpty!52598 () Bool)

(assert (=> mapIsEmpty!52598 mapRes!52598))

(declare-fun b!1285719 () Bool)

(declare-fun res!854199 () Bool)

(assert (=> b!1285719 (=> (not res!854199) (not e!734438))))

(declare-datatypes ((List!29250 0))(
  ( (Nil!29247) (Cons!29246 (h!30455 (_ BitVec 64)) (t!42801 List!29250)) )
))
(declare-fun arrayNoDuplicates!0 (array!85065 (_ BitVec 32) List!29250) Bool)

(assert (=> b!1285719 (= res!854199 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29247))))

(declare-fun b!1285720 () Bool)

(assert (=> b!1285720 (= e!734439 tp_is_empty!34027)))

(declare-fun b!1285721 () Bool)

(declare-fun e!734437 () Bool)

(assert (=> b!1285721 (= e!734437 tp_is_empty!34027)))

(declare-fun b!1285722 () Bool)

(declare-fun res!854197 () Bool)

(assert (=> b!1285722 (=> (not res!854197) (not e!734438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85065 (_ BitVec 32)) Bool)

(assert (=> b!1285722 (= res!854197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285723 () Bool)

(assert (=> b!1285723 (= e!734436 (and e!734437 mapRes!52598))))

(declare-fun condMapEmpty!52598 () Bool)

(declare-fun mapDefault!52598 () ValueCell!16115)

