; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3952 () Bool)

(assert start!3952)

(declare-fun b_free!859 () Bool)

(declare-fun b_next!859 () Bool)

(assert (=> start!3952 (= b_free!859 (not b_next!859))))

(declare-fun tp!3997 () Bool)

(declare-fun b_and!1671 () Bool)

(assert (=> start!3952 (= tp!3997 b_and!1671)))

(declare-fun b!28296 () Bool)

(declare-fun res!16822 () Bool)

(declare-fun e!18306 () Bool)

(assert (=> b!28296 (=> (not res!16822) (not e!18306))))

(declare-datatypes ((array!1651 0))(
  ( (array!1652 (arr!779 (Array (_ BitVec 32) (_ BitVec 64))) (size!880 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1651)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28296 (= res!16822 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28297 () Bool)

(declare-fun res!16820 () Bool)

(assert (=> b!28297 (=> (not res!16820) (not e!18306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28297 (= res!16820 (validKeyInArray!0 k!1304))))

(declare-fun mapNonEmpty!1348 () Bool)

(declare-fun mapRes!1348 () Bool)

(declare-fun tp!3996 () Bool)

(declare-fun e!18310 () Bool)

(assert (=> mapNonEmpty!1348 (= mapRes!1348 (and tp!3996 e!18310))))

(declare-fun mapKey!1348 () (_ BitVec 32))

(declare-datatypes ((V!1443 0))(
  ( (V!1444 (val!633 Int)) )
))
(declare-datatypes ((ValueCell!407 0))(
  ( (ValueCellFull!407 (v!1722 V!1443)) (EmptyCell!407) )
))
(declare-datatypes ((array!1653 0))(
  ( (array!1654 (arr!780 (Array (_ BitVec 32) ValueCell!407)) (size!881 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1653)

(declare-fun mapRest!1348 () (Array (_ BitVec 32) ValueCell!407))

(declare-fun mapValue!1348 () ValueCell!407)

(assert (=> mapNonEmpty!1348 (= (arr!780 _values!1501) (store mapRest!1348 mapKey!1348 mapValue!1348))))

(declare-fun b!28298 () Bool)

(declare-fun res!16821 () Bool)

(assert (=> b!28298 (=> (not res!16821) (not e!18306))))

(declare-datatypes ((List!651 0))(
  ( (Nil!648) (Cons!647 (h!1214 (_ BitVec 64)) (t!3346 List!651)) )
))
(declare-fun arrayNoDuplicates!0 (array!1651 (_ BitVec 32) List!651) Bool)

(assert (=> b!28298 (= res!16821 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!648))))

(declare-fun b!28299 () Bool)

(declare-fun res!16823 () Bool)

(assert (=> b!28299 (=> (not res!16823) (not e!18306))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28299 (= res!16823 (and (= (size!881 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!880 _keys!1833) (size!881 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28300 () Bool)

(declare-fun res!16819 () Bool)

(assert (=> b!28300 (=> (not res!16819) (not e!18306))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1443)

(declare-fun minValue!1443 () V!1443)

(declare-datatypes ((tuple2!1036 0))(
  ( (tuple2!1037 (_1!528 (_ BitVec 64)) (_2!528 V!1443)) )
))
(declare-datatypes ((List!652 0))(
  ( (Nil!649) (Cons!648 (h!1215 tuple2!1036) (t!3347 List!652)) )
))
(declare-datatypes ((ListLongMap!617 0))(
  ( (ListLongMap!618 (toList!324 List!652)) )
))
(declare-fun contains!261 (ListLongMap!617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!152 (array!1651 array!1653 (_ BitVec 32) (_ BitVec 32) V!1443 V!1443 (_ BitVec 32) Int) ListLongMap!617)

(assert (=> b!28300 (= res!16819 (not (contains!261 (getCurrentListMap!152 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!28301 () Bool)

(declare-fun e!18308 () Bool)

(declare-fun e!18309 () Bool)

(assert (=> b!28301 (= e!18308 (and e!18309 mapRes!1348))))

(declare-fun condMapEmpty!1348 () Bool)

(declare-fun mapDefault!1348 () ValueCell!407)

