; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3988 () Bool)

(assert start!3988)

(declare-fun b_free!895 () Bool)

(declare-fun b_next!895 () Bool)

(assert (=> start!3988 (= b_free!895 (not b_next!895))))

(declare-fun tp!4105 () Bool)

(declare-fun b_and!1707 () Bool)

(assert (=> start!3988 (= tp!4105 b_and!1707)))

(declare-fun b!28880 () Bool)

(declare-fun res!17242 () Bool)

(declare-fun e!18672 () Bool)

(assert (=> b!28880 (=> (not res!17242) (not e!18672))))

(declare-datatypes ((array!1721 0))(
  ( (array!1722 (arr!814 (Array (_ BitVec 32) (_ BitVec 64))) (size!915 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1721)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28880 (= res!17242 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28881 () Bool)

(declare-fun res!17247 () Bool)

(declare-fun e!18669 () Bool)

(assert (=> b!28881 (=> (not res!17247) (not e!18669))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1721 (_ BitVec 32)) Bool)

(assert (=> b!28881 (= res!17247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28882 () Bool)

(declare-fun res!17245 () Bool)

(assert (=> b!28882 (=> (not res!17245) (not e!18669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28882 (= res!17245 (validKeyInArray!0 k!1304))))

(declare-fun b!28883 () Bool)

(assert (=> b!28883 (= e!18669 e!18672)))

(declare-fun res!17244 () Bool)

(assert (=> b!28883 (=> (not res!17244) (not e!18672))))

(declare-datatypes ((V!1491 0))(
  ( (V!1492 (val!651 Int)) )
))
(declare-datatypes ((tuple2!1068 0))(
  ( (tuple2!1069 (_1!544 (_ BitVec 64)) (_2!544 V!1491)) )
))
(declare-datatypes ((List!679 0))(
  ( (Nil!676) (Cons!675 (h!1242 tuple2!1068) (t!3374 List!679)) )
))
(declare-datatypes ((ListLongMap!649 0))(
  ( (ListLongMap!650 (toList!340 List!679)) )
))
(declare-fun lt!10974 () ListLongMap!649)

(declare-fun contains!277 (ListLongMap!649 (_ BitVec 64)) Bool)

(assert (=> b!28883 (= res!17244 (not (contains!277 lt!10974 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((ValueCell!425 0))(
  ( (ValueCellFull!425 (v!1740 V!1491)) (EmptyCell!425) )
))
(declare-datatypes ((array!1723 0))(
  ( (array!1724 (arr!815 (Array (_ BitVec 32) ValueCell!425)) (size!916 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1723)

(declare-fun zeroValue!1443 () V!1491)

(declare-fun minValue!1443 () V!1491)

(declare-fun getCurrentListMap!167 (array!1721 array!1723 (_ BitVec 32) (_ BitVec 32) V!1491 V!1491 (_ BitVec 32) Int) ListLongMap!649)

(assert (=> b!28883 (= lt!10974 (getCurrentListMap!167 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapNonEmpty!1402 () Bool)

(declare-fun mapRes!1402 () Bool)

(declare-fun tp!4104 () Bool)

(declare-fun e!18668 () Bool)

(assert (=> mapNonEmpty!1402 (= mapRes!1402 (and tp!4104 e!18668))))

(declare-fun mapKey!1402 () (_ BitVec 32))

(declare-fun mapRest!1402 () (Array (_ BitVec 32) ValueCell!425))

(declare-fun mapValue!1402 () ValueCell!425)

(assert (=> mapNonEmpty!1402 (= (arr!815 _values!1501) (store mapRest!1402 mapKey!1402 mapValue!1402))))

(declare-fun b!28884 () Bool)

(declare-fun e!18670 () Bool)

(declare-fun e!18671 () Bool)

(assert (=> b!28884 (= e!18670 (and e!18671 mapRes!1402))))

(declare-fun condMapEmpty!1402 () Bool)

(declare-fun mapDefault!1402 () ValueCell!425)

