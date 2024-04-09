; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110804 () Bool)

(assert start!110804)

(declare-fun b_free!29603 () Bool)

(declare-fun b_next!29603 () Bool)

(assert (=> start!110804 (= b_free!29603 (not b_next!29603))))

(declare-fun tp!104132 () Bool)

(declare-fun b_and!47821 () Bool)

(assert (=> start!110804 (= tp!104132 b_and!47821)))

(declare-fun b!1310923 () Bool)

(declare-fun e!747858 () Bool)

(assert (=> b!1310923 (= e!747858 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87617 0))(
  ( (array!87618 (arr!42284 (Array (_ BitVec 32) (_ BitVec 64))) (size!42835 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87617)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52213 0))(
  ( (V!52214 (val!17741 Int)) )
))
(declare-fun minValue!1296 () V!52213)

(declare-datatypes ((ValueCell!16768 0))(
  ( (ValueCellFull!16768 (v!20366 V!52213)) (EmptyCell!16768) )
))
(declare-datatypes ((array!87619 0))(
  ( (array!87620 (arr!42285 (Array (_ BitVec 32) ValueCell!16768)) (size!42836 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87619)

(declare-fun zeroValue!1296 () V!52213)

(declare-fun lt!585355 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23026 0))(
  ( (tuple2!23027 (_1!11523 (_ BitVec 64)) (_2!11523 V!52213)) )
))
(declare-datatypes ((List!30192 0))(
  ( (Nil!30189) (Cons!30188 (h!31397 tuple2!23026) (t!43805 List!30192)) )
))
(declare-datatypes ((ListLongMap!20695 0))(
  ( (ListLongMap!20696 (toList!10363 List!30192)) )
))
(declare-fun contains!8449 (ListLongMap!20695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5319 (array!87617 array!87619 (_ BitVec 32) (_ BitVec 32) V!52213 V!52213 (_ BitVec 32) Int) ListLongMap!20695)

(assert (=> b!1310923 (= lt!585355 (contains!8449 (getCurrentListMap!5319 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310924 () Bool)

(declare-fun res!870377 () Bool)

(assert (=> b!1310924 (=> (not res!870377) (not e!747858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87617 (_ BitVec 32)) Bool)

(assert (=> b!1310924 (= res!870377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54628 () Bool)

(declare-fun mapRes!54628 () Bool)

(assert (=> mapIsEmpty!54628 mapRes!54628))

(declare-fun b!1310925 () Bool)

(declare-fun e!747859 () Bool)

(declare-fun tp_is_empty!35333 () Bool)

(assert (=> b!1310925 (= e!747859 tp_is_empty!35333)))

(declare-fun b!1310926 () Bool)

(declare-fun res!870376 () Bool)

(assert (=> b!1310926 (=> (not res!870376) (not e!747858))))

(assert (=> b!1310926 (= res!870376 (and (= (size!42836 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42835 _keys!1628) (size!42836 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310927 () Bool)

(declare-fun e!747857 () Bool)

(assert (=> b!1310927 (= e!747857 (and e!747859 mapRes!54628))))

(declare-fun condMapEmpty!54628 () Bool)

(declare-fun mapDefault!54628 () ValueCell!16768)

