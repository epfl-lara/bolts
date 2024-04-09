; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107076 () Bool)

(assert start!107076)

(declare-fun b_free!27545 () Bool)

(declare-fun b_next!27545 () Bool)

(assert (=> start!107076 (= b_free!27545 (not b_next!27545))))

(declare-fun tp!96862 () Bool)

(declare-fun b_and!45587 () Bool)

(assert (=> start!107076 (= tp!96862 b_and!45587)))

(declare-fun mapIsEmpty!50674 () Bool)

(declare-fun mapRes!50674 () Bool)

(assert (=> mapIsEmpty!50674 mapRes!50674))

(declare-fun b!1268977 () Bool)

(declare-fun e!723277 () Bool)

(assert (=> b!1268977 (= e!723277 (not true))))

(declare-datatypes ((V!48831 0))(
  ( (V!48832 (val!16439 Int)) )
))
(declare-datatypes ((ValueCell!15511 0))(
  ( (ValueCellFull!15511 (v!19074 V!48831)) (EmptyCell!15511) )
))
(declare-datatypes ((array!82701 0))(
  ( (array!82702 (arr!39883 (Array (_ BitVec 32) ValueCell!15511)) (size!40420 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82701)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82703 0))(
  ( (array!82704 (arr!39884 (Array (_ BitVec 32) (_ BitVec 64))) (size!40421 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82703)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48831)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48831)

(declare-fun zeroValueBefore!52 () V!48831)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48831)

(declare-datatypes ((tuple2!21444 0))(
  ( (tuple2!21445 (_1!10732 (_ BitVec 64)) (_2!10732 V!48831)) )
))
(declare-datatypes ((List!28582 0))(
  ( (Nil!28579) (Cons!28578 (h!29787 tuple2!21444) (t!42118 List!28582)) )
))
(declare-datatypes ((ListLongMap!19185 0))(
  ( (ListLongMap!19186 (toList!9608 List!28582)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5916 (array!82703 array!82701 (_ BitVec 32) (_ BitVec 32) V!48831 V!48831 (_ BitVec 32) Int) ListLongMap!19185)

(assert (=> b!1268977 (= (getCurrentListMapNoExtraKeys!5916 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5916 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42188 0))(
  ( (Unit!42189) )
))
(declare-fun lt!574466 () Unit!42188)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1212 (array!82703 array!82701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48831 V!48831 V!48831 V!48831 (_ BitVec 32) Int) Unit!42188)

(assert (=> b!1268977 (= lt!574466 (lemmaNoChangeToArrayThenSameMapNoExtras!1212 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1268978 () Bool)

(declare-fun e!723276 () Bool)

(declare-fun e!723274 () Bool)

(assert (=> b!1268978 (= e!723276 (and e!723274 mapRes!50674))))

(declare-fun condMapEmpty!50674 () Bool)

(declare-fun mapDefault!50674 () ValueCell!15511)

