; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113306 () Bool)

(assert start!113306)

(declare-fun b_free!31321 () Bool)

(declare-fun b_next!31321 () Bool)

(assert (=> start!113306 (= b_free!31321 (not b_next!31321))))

(declare-fun tp!109768 () Bool)

(declare-fun b_and!50553 () Bool)

(assert (=> start!113306 (= tp!109768 b_and!50553)))

(declare-fun res!891709 () Bool)

(declare-fun e!764859 () Bool)

(assert (=> start!113306 (=> (not res!891709) (not e!764859))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113306 (= res!891709 (validMask!0 mask!1977))))

(assert (=> start!113306 e!764859))

(declare-fun tp_is_empty!37321 () Bool)

(assert (=> start!113306 tp_is_empty!37321))

(assert (=> start!113306 true))

(declare-datatypes ((array!91441 0))(
  ( (array!91442 (arr!44172 (Array (_ BitVec 32) (_ BitVec 64))) (size!44723 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91441)

(declare-fun array_inv!33209 (array!91441) Bool)

(assert (=> start!113306 (array_inv!33209 _keys!1571)))

(declare-datatypes ((V!54865 0))(
  ( (V!54866 (val!18735 Int)) )
))
(declare-datatypes ((ValueCell!17762 0))(
  ( (ValueCellFull!17762 (v!21381 V!54865)) (EmptyCell!17762) )
))
(declare-datatypes ((array!91443 0))(
  ( (array!91444 (arr!44173 (Array (_ BitVec 32) ValueCell!17762)) (size!44724 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91443)

(declare-fun e!764860 () Bool)

(declare-fun array_inv!33210 (array!91443) Bool)

(assert (=> start!113306 (and (array_inv!33210 _values!1303) e!764860)))

(assert (=> start!113306 tp!109768))

(declare-fun b!1343842 () Bool)

(declare-fun res!891710 () Bool)

(assert (=> b!1343842 (=> (not res!891710) (not e!764859))))

(declare-datatypes ((List!31464 0))(
  ( (Nil!31461) (Cons!31460 (h!32669 (_ BitVec 64)) (t!45995 List!31464)) )
))
(declare-fun arrayNoDuplicates!0 (array!91441 (_ BitVec 32) List!31464) Bool)

(assert (=> b!1343842 (= res!891710 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31461))))

(declare-fun b!1343843 () Bool)

(declare-fun res!891707 () Bool)

(assert (=> b!1343843 (=> (not res!891707) (not e!764859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91441 (_ BitVec 32)) Bool)

(assert (=> b!1343843 (= res!891707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57688 () Bool)

(declare-fun mapRes!57688 () Bool)

(assert (=> mapIsEmpty!57688 mapRes!57688))

(declare-fun b!1343844 () Bool)

(declare-fun res!891706 () Bool)

(assert (=> b!1343844 (=> (not res!891706) (not e!764859))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343844 (= res!891706 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44723 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343845 () Bool)

(declare-fun e!764861 () Bool)

(assert (=> b!1343845 (= e!764861 tp_is_empty!37321)))

(declare-fun b!1343846 () Bool)

(declare-fun res!891708 () Bool)

(assert (=> b!1343846 (=> (not res!891708) (not e!764859))))

(assert (=> b!1343846 (= res!891708 (and (= (size!44724 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44723 _keys!1571) (size!44724 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57688 () Bool)

(declare-fun tp!109769 () Bool)

(declare-fun e!764858 () Bool)

(assert (=> mapNonEmpty!57688 (= mapRes!57688 (and tp!109769 e!764858))))

(declare-fun mapKey!57688 () (_ BitVec 32))

(declare-fun mapValue!57688 () ValueCell!17762)

(declare-fun mapRest!57688 () (Array (_ BitVec 32) ValueCell!17762))

(assert (=> mapNonEmpty!57688 (= (arr!44173 _values!1303) (store mapRest!57688 mapKey!57688 mapValue!57688))))

(declare-fun b!1343847 () Bool)

(assert (=> b!1343847 (= e!764859 false)))

(declare-fun minValue!1245 () V!54865)

(declare-fun zeroValue!1245 () V!54865)

(declare-fun lt!595063 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24290 0))(
  ( (tuple2!24291 (_1!12155 (_ BitVec 64)) (_2!12155 V!54865)) )
))
(declare-datatypes ((List!31465 0))(
  ( (Nil!31462) (Cons!31461 (h!32670 tuple2!24290) (t!45996 List!31465)) )
))
(declare-datatypes ((ListLongMap!21959 0))(
  ( (ListLongMap!21960 (toList!10995 List!31465)) )
))
(declare-fun contains!9107 (ListLongMap!21959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5888 (array!91441 array!91443 (_ BitVec 32) (_ BitVec 32) V!54865 V!54865 (_ BitVec 32) Int) ListLongMap!21959)

(assert (=> b!1343847 (= lt!595063 (contains!9107 (getCurrentListMap!5888 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343848 () Bool)

(assert (=> b!1343848 (= e!764860 (and e!764861 mapRes!57688))))

(declare-fun condMapEmpty!57688 () Bool)

(declare-fun mapDefault!57688 () ValueCell!17762)

