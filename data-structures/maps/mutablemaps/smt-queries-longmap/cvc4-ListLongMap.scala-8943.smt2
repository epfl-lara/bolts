; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108424 () Bool)

(assert start!108424)

(declare-fun b_free!27935 () Bool)

(declare-fun b_next!27935 () Bool)

(assert (=> start!108424 (= b_free!27935 (not b_next!27935))))

(declare-fun tp!98916 () Bool)

(declare-fun b_and!46005 () Bool)

(assert (=> start!108424 (= tp!98916 b_and!46005)))

(declare-fun b!1279126 () Bool)

(declare-fun res!849795 () Bool)

(declare-fun e!730854 () Bool)

(assert (=> b!1279126 (=> (not res!849795) (not e!730854))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49869 0))(
  ( (V!49870 (val!16862 Int)) )
))
(declare-datatypes ((ValueCell!15889 0))(
  ( (ValueCellFull!15889 (v!19460 V!49869)) (EmptyCell!15889) )
))
(declare-datatypes ((array!84185 0))(
  ( (array!84186 (arr!40592 (Array (_ BitVec 32) ValueCell!15889)) (size!41143 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84185)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84187 0))(
  ( (array!84188 (arr!40593 (Array (_ BitVec 32) (_ BitVec 64))) (size!41144 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84187)

(assert (=> b!1279126 (= res!849795 (and (= (size!41143 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41144 _keys!1741) (size!41143 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279127 () Bool)

(declare-fun res!849797 () Bool)

(assert (=> b!1279127 (=> (not res!849797) (not e!730854))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279127 (= res!849797 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41144 _keys!1741))))))

(declare-fun b!1279128 () Bool)

(assert (=> b!1279128 (= e!730854 false)))

(declare-fun minValue!1387 () V!49869)

(declare-fun zeroValue!1387 () V!49869)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!575920 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21720 0))(
  ( (tuple2!21721 (_1!10870 (_ BitVec 64)) (_2!10870 V!49869)) )
))
(declare-datatypes ((List!28932 0))(
  ( (Nil!28929) (Cons!28928 (h!30137 tuple2!21720) (t!42479 List!28932)) )
))
(declare-datatypes ((ListLongMap!19389 0))(
  ( (ListLongMap!19390 (toList!9710 List!28932)) )
))
(declare-fun contains!7763 (ListLongMap!19389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4730 (array!84187 array!84185 (_ BitVec 32) (_ BitVec 32) V!49869 V!49869 (_ BitVec 32) Int) ListLongMap!19389)

(assert (=> b!1279128 (= lt!575920 (contains!7763 (getCurrentListMap!4730 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279129 () Bool)

(declare-fun res!849794 () Bool)

(assert (=> b!1279129 (=> (not res!849794) (not e!730854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84187 (_ BitVec 32)) Bool)

(assert (=> b!1279129 (= res!849794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279130 () Bool)

(declare-fun e!730852 () Bool)

(declare-fun e!730855 () Bool)

(declare-fun mapRes!51914 () Bool)

(assert (=> b!1279130 (= e!730852 (and e!730855 mapRes!51914))))

(declare-fun condMapEmpty!51914 () Bool)

(declare-fun mapDefault!51914 () ValueCell!15889)

