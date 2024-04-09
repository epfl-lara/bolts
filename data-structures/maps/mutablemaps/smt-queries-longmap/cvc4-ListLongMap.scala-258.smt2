; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4272 () Bool)

(assert start!4272)

(declare-fun b_free!1139 () Bool)

(declare-fun b_next!1139 () Bool)

(assert (=> start!4272 (= b_free!1139 (not b_next!1139))))

(declare-fun tp!4843 () Bool)

(declare-fun b_and!1955 () Bool)

(assert (=> start!4272 (= tp!4843 b_and!1955)))

(declare-fun mapIsEmpty!1774 () Bool)

(declare-fun mapRes!1774 () Bool)

(assert (=> mapIsEmpty!1774 mapRes!1774))

(declare-fun res!19861 () Bool)

(declare-fun e!20803 () Bool)

(assert (=> start!4272 (=> (not res!19861) (not e!20803))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4272 (= res!19861 (validMask!0 mask!2294))))

(assert (=> start!4272 e!20803))

(assert (=> start!4272 true))

(assert (=> start!4272 tp!4843))

(declare-datatypes ((V!1815 0))(
  ( (V!1816 (val!773 Int)) )
))
(declare-datatypes ((ValueCell!547 0))(
  ( (ValueCellFull!547 (v!1864 V!1815)) (EmptyCell!547) )
))
(declare-datatypes ((array!2195 0))(
  ( (array!2196 (arr!1049 (Array (_ BitVec 32) ValueCell!547)) (size!1150 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2195)

(declare-fun e!20802 () Bool)

(declare-fun array_inv!697 (array!2195) Bool)

(assert (=> start!4272 (and (array_inv!697 _values!1501) e!20802)))

(declare-datatypes ((array!2197 0))(
  ( (array!2198 (arr!1050 (Array (_ BitVec 32) (_ BitVec 64))) (size!1151 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2197)

(declare-fun array_inv!698 (array!2197) Bool)

(assert (=> start!4272 (array_inv!698 _keys!1833)))

(declare-fun tp_is_empty!1493 () Bool)

(assert (=> start!4272 tp_is_empty!1493))

(declare-fun b!32737 () Bool)

(declare-fun res!19863 () Bool)

(assert (=> b!32737 (=> (not res!19863) (not e!20803))))

(declare-datatypes ((List!852 0))(
  ( (Nil!849) (Cons!848 (h!1415 (_ BitVec 64)) (t!3551 List!852)) )
))
(declare-fun arrayNoDuplicates!0 (array!2197 (_ BitVec 32) List!852) Bool)

(assert (=> b!32737 (= res!19863 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!849))))

(declare-fun b!32738 () Bool)

(declare-fun e!20801 () Bool)

(assert (=> b!32738 (= e!20803 e!20801)))

(declare-fun res!19866 () Bool)

(assert (=> b!32738 (=> (not res!19866) (not e!20801))))

(declare-datatypes ((tuple2!1250 0))(
  ( (tuple2!1251 (_1!635 (_ BitVec 64)) (_2!635 V!1815)) )
))
(declare-datatypes ((List!853 0))(
  ( (Nil!850) (Cons!849 (h!1416 tuple2!1250) (t!3552 List!853)) )
))
(declare-datatypes ((ListLongMap!831 0))(
  ( (ListLongMap!832 (toList!431 List!853)) )
))
(declare-fun lt!11877 () ListLongMap!831)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!370 (ListLongMap!831 (_ BitVec 64)) Bool)

(assert (=> b!32738 (= res!19866 (not (contains!370 lt!11877 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1815)

(declare-fun minValue!1443 () V!1815)

(declare-fun getCurrentListMap!256 (array!2197 array!2195 (_ BitVec 32) (_ BitVec 32) V!1815 V!1815 (_ BitVec 32) Int) ListLongMap!831)

(assert (=> b!32738 (= lt!11877 (getCurrentListMap!256 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapNonEmpty!1774 () Bool)

(declare-fun tp!4842 () Bool)

(declare-fun e!20804 () Bool)

(assert (=> mapNonEmpty!1774 (= mapRes!1774 (and tp!4842 e!20804))))

(declare-fun mapValue!1774 () ValueCell!547)

(declare-fun mapRest!1774 () (Array (_ BitVec 32) ValueCell!547))

(declare-fun mapKey!1774 () (_ BitVec 32))

(assert (=> mapNonEmpty!1774 (= (arr!1049 _values!1501) (store mapRest!1774 mapKey!1774 mapValue!1774))))

(declare-fun b!32739 () Bool)

(declare-fun res!19865 () Bool)

(assert (=> b!32739 (=> (not res!19865) (not e!20803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32739 (= res!19865 (validKeyInArray!0 k!1304))))

(declare-fun b!32740 () Bool)

(declare-fun e!20806 () Bool)

(assert (=> b!32740 (= e!20802 (and e!20806 mapRes!1774))))

(declare-fun condMapEmpty!1774 () Bool)

(declare-fun mapDefault!1774 () ValueCell!547)

