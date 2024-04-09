; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109774 () Bool)

(assert start!109774)

(declare-fun b_free!29171 () Bool)

(declare-fun b_next!29171 () Bool)

(assert (=> start!109774 (= b_free!29171 (not b_next!29171))))

(declare-fun tp!102641 () Bool)

(declare-fun b_and!47283 () Bool)

(assert (=> start!109774 (= tp!102641 b_and!47283)))

(declare-fun res!863899 () Bool)

(declare-fun e!741514 () Bool)

(assert (=> start!109774 (=> (not res!863899) (not e!741514))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109774 (= res!863899 (validMask!0 mask!2175))))

(assert (=> start!109774 e!741514))

(declare-fun tp_is_empty!34811 () Bool)

(assert (=> start!109774 tp_is_empty!34811))

(assert (=> start!109774 true))

(declare-datatypes ((V!51517 0))(
  ( (V!51518 (val!17480 Int)) )
))
(declare-datatypes ((ValueCell!16507 0))(
  ( (ValueCellFull!16507 (v!20084 V!51517)) (EmptyCell!16507) )
))
(declare-datatypes ((array!86593 0))(
  ( (array!86594 (arr!41790 (Array (_ BitVec 32) ValueCell!16507)) (size!42341 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86593)

(declare-fun e!741512 () Bool)

(declare-fun array_inv!31619 (array!86593) Bool)

(assert (=> start!109774 (and (array_inv!31619 _values!1445) e!741512)))

(declare-datatypes ((array!86595 0))(
  ( (array!86596 (arr!41791 (Array (_ BitVec 32) (_ BitVec 64))) (size!42342 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86595)

(declare-fun array_inv!31620 (array!86595) Bool)

(assert (=> start!109774 (array_inv!31620 _keys!1741)))

(assert (=> start!109774 tp!102641))

(declare-fun b!1299826 () Bool)

(declare-fun res!863895 () Bool)

(assert (=> b!1299826 (=> (not res!863895) (not e!741514))))

(declare-datatypes ((List!29852 0))(
  ( (Nil!29849) (Cons!29848 (h!31057 (_ BitVec 64)) (t!43429 List!29852)) )
))
(declare-fun arrayNoDuplicates!0 (array!86595 (_ BitVec 32) List!29852) Bool)

(assert (=> b!1299826 (= res!863895 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29849))))

(declare-fun b!1299827 () Bool)

(declare-fun res!863900 () Bool)

(assert (=> b!1299827 (=> (not res!863900) (not e!741514))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1299827 (= res!863900 (and (= (size!42341 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42342 _keys!1741) (size!42341 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!1387 () V!51517)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun minValue!1387 () V!51517)

(declare-fun b!1299828 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22694 0))(
  ( (tuple2!22695 (_1!11357 (_ BitVec 64)) (_2!11357 V!51517)) )
))
(declare-datatypes ((List!29853 0))(
  ( (Nil!29850) (Cons!29849 (h!31058 tuple2!22694) (t!43430 List!29853)) )
))
(declare-datatypes ((ListLongMap!20363 0))(
  ( (ListLongMap!20364 (toList!10197 List!29853)) )
))
(declare-fun contains!8255 (ListLongMap!20363 (_ BitVec 64)) Bool)

(declare-fun +!4427 (ListLongMap!20363 tuple2!22694) ListLongMap!20363)

(declare-fun getCurrentListMapNoExtraKeys!6140 (array!86595 array!86593 (_ BitVec 32) (_ BitVec 32) V!51517 V!51517 (_ BitVec 32) Int) ListLongMap!20363)

(assert (=> b!1299828 (= e!741514 (not (contains!8255 (+!4427 (getCurrentListMapNoExtraKeys!6140 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205)))))

(declare-fun b!1299829 () Bool)

(declare-fun res!863898 () Bool)

(assert (=> b!1299829 (=> (not res!863898) (not e!741514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299829 (= res!863898 (validKeyInArray!0 (select (arr!41791 _keys!1741) from!2144)))))

(declare-fun b!1299830 () Bool)

(declare-fun res!863894 () Bool)

(assert (=> b!1299830 (=> (not res!863894) (not e!741514))))

(assert (=> b!1299830 (= res!863894 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42342 _keys!1741))))))

(declare-fun b!1299831 () Bool)

(declare-fun res!863896 () Bool)

(assert (=> b!1299831 (=> (not res!863896) (not e!741514))))

(assert (=> b!1299831 (= res!863896 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42342 _keys!1741))))))

(declare-fun b!1299832 () Bool)

(declare-fun e!741513 () Bool)

(assert (=> b!1299832 (= e!741513 tp_is_empty!34811)))

(declare-fun b!1299833 () Bool)

(declare-fun e!741515 () Bool)

(assert (=> b!1299833 (= e!741515 tp_is_empty!34811)))

(declare-fun mapNonEmpty!53786 () Bool)

(declare-fun mapRes!53786 () Bool)

(declare-fun tp!102642 () Bool)

(assert (=> mapNonEmpty!53786 (= mapRes!53786 (and tp!102642 e!741513))))

(declare-fun mapValue!53786 () ValueCell!16507)

(declare-fun mapRest!53786 () (Array (_ BitVec 32) ValueCell!16507))

(declare-fun mapKey!53786 () (_ BitVec 32))

(assert (=> mapNonEmpty!53786 (= (arr!41790 _values!1445) (store mapRest!53786 mapKey!53786 mapValue!53786))))

(declare-fun b!1299834 () Bool)

(assert (=> b!1299834 (= e!741512 (and e!741515 mapRes!53786))))

(declare-fun condMapEmpty!53786 () Bool)

(declare-fun mapDefault!53786 () ValueCell!16507)

