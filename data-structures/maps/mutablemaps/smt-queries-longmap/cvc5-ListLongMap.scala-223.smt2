; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4018 () Bool)

(assert start!4018)

(declare-fun b_free!925 () Bool)

(declare-fun b_next!925 () Bool)

(assert (=> start!4018 (= b_free!925 (not b_next!925))))

(declare-fun tp!4195 () Bool)

(declare-fun b_and!1737 () Bool)

(assert (=> start!4018 (= tp!4195 b_and!1737)))

(declare-fun mapNonEmpty!1447 () Bool)

(declare-fun mapRes!1447 () Bool)

(declare-fun tp!4194 () Bool)

(declare-fun e!18942 () Bool)

(assert (=> mapNonEmpty!1447 (= mapRes!1447 (and tp!4194 e!18942))))

(declare-datatypes ((V!1531 0))(
  ( (V!1532 (val!666 Int)) )
))
(declare-datatypes ((ValueCell!440 0))(
  ( (ValueCellFull!440 (v!1755 V!1531)) (EmptyCell!440) )
))
(declare-datatypes ((array!1779 0))(
  ( (array!1780 (arr!843 (Array (_ BitVec 32) ValueCell!440)) (size!944 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1779)

(declare-fun mapKey!1447 () (_ BitVec 32))

(declare-fun mapRest!1447 () (Array (_ BitVec 32) ValueCell!440))

(declare-fun mapValue!1447 () ValueCell!440)

(assert (=> mapNonEmpty!1447 (= (arr!843 _values!1501) (store mapRest!1447 mapKey!1447 mapValue!1447))))

(declare-fun b!29330 () Bool)

(declare-fun e!18940 () Bool)

(declare-fun e!18941 () Bool)

(assert (=> b!29330 (= e!18940 e!18941)))

(declare-fun res!17557 () Bool)

(assert (=> b!29330 (=> (not res!17557) (not e!18941))))

(declare-datatypes ((tuple2!1092 0))(
  ( (tuple2!1093 (_1!556 (_ BitVec 64)) (_2!556 V!1531)) )
))
(declare-datatypes ((List!701 0))(
  ( (Nil!698) (Cons!697 (h!1264 tuple2!1092) (t!3396 List!701)) )
))
(declare-datatypes ((ListLongMap!673 0))(
  ( (ListLongMap!674 (toList!352 List!701)) )
))
(declare-fun lt!11197 () ListLongMap!673)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!289 (ListLongMap!673 (_ BitVec 64)) Bool)

(assert (=> b!29330 (= res!17557 (not (contains!289 lt!11197 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1781 0))(
  ( (array!1782 (arr!844 (Array (_ BitVec 32) (_ BitVec 64))) (size!945 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1781)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1531)

(declare-fun minValue!1443 () V!1531)

(declare-fun getCurrentListMap!179 (array!1781 array!1779 (_ BitVec 32) (_ BitVec 32) V!1531 V!1531 (_ BitVec 32) Int) ListLongMap!673)

(assert (=> b!29330 (= lt!11197 (getCurrentListMap!179 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1447 () Bool)

(assert (=> mapIsEmpty!1447 mapRes!1447))

(declare-fun b!29331 () Bool)

(declare-fun e!18939 () Bool)

(declare-fun e!18938 () Bool)

(assert (=> b!29331 (= e!18939 (and e!18938 mapRes!1447))))

(declare-fun condMapEmpty!1447 () Bool)

(declare-fun mapDefault!1447 () ValueCell!440)

