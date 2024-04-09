; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113310 () Bool)

(assert start!113310)

(declare-fun b_free!31325 () Bool)

(declare-fun b_next!31325 () Bool)

(assert (=> start!113310 (= b_free!31325 (not b_next!31325))))

(declare-fun tp!109780 () Bool)

(declare-fun b_and!50557 () Bool)

(assert (=> start!113310 (= tp!109780 b_and!50557)))

(declare-fun b!1343890 () Bool)

(declare-fun e!764887 () Bool)

(assert (=> b!1343890 (= e!764887 false)))

(declare-datatypes ((V!54869 0))(
  ( (V!54870 (val!18737 Int)) )
))
(declare-fun minValue!1245 () V!54869)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91449 0))(
  ( (array!91450 (arr!44176 (Array (_ BitVec 32) (_ BitVec 64))) (size!44727 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91449)

(declare-fun lt!595069 () Bool)

(declare-fun zeroValue!1245 () V!54869)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17764 0))(
  ( (ValueCellFull!17764 (v!21383 V!54869)) (EmptyCell!17764) )
))
(declare-datatypes ((array!91451 0))(
  ( (array!91452 (arr!44177 (Array (_ BitVec 32) ValueCell!17764)) (size!44728 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91451)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24294 0))(
  ( (tuple2!24295 (_1!12157 (_ BitVec 64)) (_2!12157 V!54869)) )
))
(declare-datatypes ((List!31468 0))(
  ( (Nil!31465) (Cons!31464 (h!32673 tuple2!24294) (t!45999 List!31468)) )
))
(declare-datatypes ((ListLongMap!21963 0))(
  ( (ListLongMap!21964 (toList!10997 List!31468)) )
))
(declare-fun contains!9109 (ListLongMap!21963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5890 (array!91449 array!91451 (_ BitVec 32) (_ BitVec 32) V!54869 V!54869 (_ BitVec 32) Int) ListLongMap!21963)

(assert (=> b!1343890 (= lt!595069 (contains!9109 (getCurrentListMap!5890 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343891 () Bool)

(declare-fun e!764889 () Bool)

(declare-fun tp_is_empty!37325 () Bool)

(assert (=> b!1343891 (= e!764889 tp_is_empty!37325)))

(declare-fun mapIsEmpty!57694 () Bool)

(declare-fun mapRes!57694 () Bool)

(assert (=> mapIsEmpty!57694 mapRes!57694))

(declare-fun mapNonEmpty!57694 () Bool)

(declare-fun tp!109781 () Bool)

(declare-fun e!764891 () Bool)

(assert (=> mapNonEmpty!57694 (= mapRes!57694 (and tp!109781 e!764891))))

(declare-fun mapRest!57694 () (Array (_ BitVec 32) ValueCell!17764))

(declare-fun mapValue!57694 () ValueCell!17764)

(declare-fun mapKey!57694 () (_ BitVec 32))

(assert (=> mapNonEmpty!57694 (= (arr!44177 _values!1303) (store mapRest!57694 mapKey!57694 mapValue!57694))))

(declare-fun b!1343892 () Bool)

(assert (=> b!1343892 (= e!764891 tp_is_empty!37325)))

(declare-fun b!1343893 () Bool)

(declare-fun res!891738 () Bool)

(assert (=> b!1343893 (=> (not res!891738) (not e!764887))))

(assert (=> b!1343893 (= res!891738 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44727 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!891736 () Bool)

(assert (=> start!113310 (=> (not res!891736) (not e!764887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113310 (= res!891736 (validMask!0 mask!1977))))

(assert (=> start!113310 e!764887))

(assert (=> start!113310 tp_is_empty!37325))

(assert (=> start!113310 true))

(declare-fun array_inv!33213 (array!91449) Bool)

(assert (=> start!113310 (array_inv!33213 _keys!1571)))

(declare-fun e!764888 () Bool)

(declare-fun array_inv!33214 (array!91451) Bool)

(assert (=> start!113310 (and (array_inv!33214 _values!1303) e!764888)))

(assert (=> start!113310 tp!109780))

(declare-fun b!1343894 () Bool)

(assert (=> b!1343894 (= e!764888 (and e!764889 mapRes!57694))))

(declare-fun condMapEmpty!57694 () Bool)

(declare-fun mapDefault!57694 () ValueCell!17764)

