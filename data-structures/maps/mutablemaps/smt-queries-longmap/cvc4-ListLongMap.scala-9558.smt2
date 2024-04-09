; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113250 () Bool)

(assert start!113250)

(declare-fun b_free!31265 () Bool)

(declare-fun b_next!31265 () Bool)

(assert (=> start!113250 (= b_free!31265 (not b_next!31265))))

(declare-fun tp!109601 () Bool)

(declare-fun b_and!50447 () Bool)

(assert (=> start!113250 (= tp!109601 b_and!50447)))

(declare-fun b!1342828 () Bool)

(declare-fun res!891001 () Bool)

(declare-fun e!764439 () Bool)

(assert (=> b!1342828 (=> (not res!891001) (not e!764439))))

(declare-datatypes ((array!91331 0))(
  ( (array!91332 (arr!44117 (Array (_ BitVec 32) (_ BitVec 64))) (size!44668 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91331)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342828 (= res!891001 (validKeyInArray!0 (select (arr!44117 _keys!1571) from!1960)))))

(declare-fun b!1342829 () Bool)

(declare-fun e!764440 () Bool)

(declare-fun tp_is_empty!37265 () Bool)

(assert (=> b!1342829 (= e!764440 tp_is_empty!37265)))

(declare-fun mapNonEmpty!57604 () Bool)

(declare-fun mapRes!57604 () Bool)

(declare-fun tp!109600 () Bool)

(declare-fun e!764437 () Bool)

(assert (=> mapNonEmpty!57604 (= mapRes!57604 (and tp!109600 e!764437))))

(declare-datatypes ((V!54789 0))(
  ( (V!54790 (val!18707 Int)) )
))
(declare-datatypes ((ValueCell!17734 0))(
  ( (ValueCellFull!17734 (v!21353 V!54789)) (EmptyCell!17734) )
))
(declare-fun mapValue!57604 () ValueCell!17734)

(declare-fun mapRest!57604 () (Array (_ BitVec 32) ValueCell!17734))

(declare-datatypes ((array!91333 0))(
  ( (array!91334 (arr!44118 (Array (_ BitVec 32) ValueCell!17734)) (size!44669 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91333)

(declare-fun mapKey!57604 () (_ BitVec 32))

(assert (=> mapNonEmpty!57604 (= (arr!44118 _values!1303) (store mapRest!57604 mapKey!57604 mapValue!57604))))

(declare-fun b!1342830 () Bool)

(declare-fun res!891000 () Bool)

(assert (=> b!1342830 (=> (not res!891000) (not e!764439))))

(declare-datatypes ((List!31426 0))(
  ( (Nil!31423) (Cons!31422 (h!32631 (_ BitVec 64)) (t!45909 List!31426)) )
))
(declare-fun arrayNoDuplicates!0 (array!91331 (_ BitVec 32) List!31426) Bool)

(assert (=> b!1342830 (= res!891000 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31423))))

(declare-fun b!1342831 () Bool)

(declare-fun res!890999 () Bool)

(assert (=> b!1342831 (=> (not res!890999) (not e!764439))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342831 (= res!890999 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44668 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342832 () Bool)

(declare-fun res!890994 () Bool)

(assert (=> b!1342832 (=> (not res!890994) (not e!764439))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1342832 (= res!890994 (and (= (size!44669 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44668 _keys!1571) (size!44669 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!890998 () Bool)

(assert (=> start!113250 (=> (not res!890998) (not e!764439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113250 (= res!890998 (validMask!0 mask!1977))))

(assert (=> start!113250 e!764439))

(assert (=> start!113250 tp_is_empty!37265))

(assert (=> start!113250 true))

(declare-fun array_inv!33171 (array!91331) Bool)

(assert (=> start!113250 (array_inv!33171 _keys!1571)))

(declare-fun e!764441 () Bool)

(declare-fun array_inv!33172 (array!91333) Bool)

(assert (=> start!113250 (and (array_inv!33172 _values!1303) e!764441)))

(assert (=> start!113250 tp!109601))

(declare-fun b!1342833 () Bool)

(declare-fun res!891002 () Bool)

(assert (=> b!1342833 (=> (not res!891002) (not e!764439))))

(declare-fun zeroValue!1245 () V!54789)

(declare-fun minValue!1245 () V!54789)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24246 0))(
  ( (tuple2!24247 (_1!12133 (_ BitVec 64)) (_2!12133 V!54789)) )
))
(declare-datatypes ((List!31427 0))(
  ( (Nil!31424) (Cons!31423 (h!32632 tuple2!24246) (t!45910 List!31427)) )
))
(declare-datatypes ((ListLongMap!21915 0))(
  ( (ListLongMap!21916 (toList!10973 List!31427)) )
))
(declare-fun contains!9085 (ListLongMap!21915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5869 (array!91331 array!91333 (_ BitVec 32) (_ BitVec 32) V!54789 V!54789 (_ BitVec 32) Int) ListLongMap!21915)

(assert (=> b!1342833 (= res!891002 (contains!9085 (getCurrentListMap!5869 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342834 () Bool)

(assert (=> b!1342834 (= e!764441 (and e!764440 mapRes!57604))))

(declare-fun condMapEmpty!57604 () Bool)

(declare-fun mapDefault!57604 () ValueCell!17734)

