; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4130 () Bool)

(assert start!4130)

(declare-fun b_free!1037 () Bool)

(declare-fun b_next!1037 () Bool)

(assert (=> start!4130 (= b_free!1037 (not b_next!1037))))

(declare-fun tp!4531 () Bool)

(declare-fun b_and!1849 () Bool)

(assert (=> start!4130 (= tp!4531 b_and!1849)))

(declare-fun b!31000 () Bool)

(declare-fun e!19855 () Bool)

(assert (=> b!31000 (= e!19855 (not true))))

(declare-datatypes ((V!1679 0))(
  ( (V!1680 (val!722 Int)) )
))
(declare-datatypes ((tuple2!1174 0))(
  ( (tuple2!1175 (_1!597 (_ BitVec 64)) (_2!597 V!1679)) )
))
(declare-datatypes ((List!777 0))(
  ( (Nil!774) (Cons!773 (h!1340 tuple2!1174) (t!3472 List!777)) )
))
(declare-datatypes ((ListLongMap!755 0))(
  ( (ListLongMap!756 (toList!393 List!777)) )
))
(declare-fun lt!11535 () ListLongMap!755)

(declare-datatypes ((array!1991 0))(
  ( (array!1992 (arr!949 (Array (_ BitVec 32) (_ BitVec 64))) (size!1050 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1991)

(declare-datatypes ((SeekEntryResult!121 0))(
  ( (MissingZero!121 (index!2606 (_ BitVec 32))) (Found!121 (index!2607 (_ BitVec 32))) (Intermediate!121 (undefined!933 Bool) (index!2608 (_ BitVec 32)) (x!6591 (_ BitVec 32))) (Undefined!121) (MissingVacant!121 (index!2609 (_ BitVec 32))) )
))
(declare-fun lt!11533 () SeekEntryResult!121)

(declare-fun contains!330 (ListLongMap!755 (_ BitVec 64)) Bool)

(assert (=> b!31000 (contains!330 lt!11535 (select (arr!949 _keys!1833) (index!2607 lt!11533)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!496 0))(
  ( (ValueCellFull!496 (v!1811 V!1679)) (EmptyCell!496) )
))
(declare-datatypes ((array!1993 0))(
  ( (array!1994 (arr!950 (Array (_ BitVec 32) ValueCell!496)) (size!1051 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1993)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!705 0))(
  ( (Unit!706) )
))
(declare-fun lt!11534 () Unit!705)

(declare-fun zeroValue!1443 () V!1679)

(declare-fun minValue!1443 () V!1679)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun lemmaValidKeyInArrayIsInListMap!44 (array!1991 array!1993 (_ BitVec 32) (_ BitVec 32) V!1679 V!1679 (_ BitVec 32) Int) Unit!705)

(assert (=> b!31000 (= lt!11534 (lemmaValidKeyInArrayIsInListMap!44 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2607 lt!11533) defaultEntry!1504))))

(declare-fun mapIsEmpty!1615 () Bool)

(declare-fun mapRes!1615 () Bool)

(assert (=> mapIsEmpty!1615 mapRes!1615))

(declare-fun b!31002 () Bool)

(declare-fun res!18727 () Bool)

(declare-fun e!19861 () Bool)

(assert (=> b!31002 (=> (not res!18727) (not e!19861))))

(declare-datatypes ((List!778 0))(
  ( (Nil!775) (Cons!774 (h!1341 (_ BitVec 64)) (t!3473 List!778)) )
))
(declare-fun arrayNoDuplicates!0 (array!1991 (_ BitVec 32) List!778) Bool)

(assert (=> b!31002 (= res!18727 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!775))))

(declare-fun b!31003 () Bool)

(declare-fun res!18730 () Bool)

(assert (=> b!31003 (=> (not res!18730) (not e!19861))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31003 (= res!18730 (validKeyInArray!0 k!1304))))

(declare-fun b!31004 () Bool)

(declare-fun res!18725 () Bool)

(assert (=> b!31004 (=> (not res!18725) (not e!19861))))

(assert (=> b!31004 (= res!18725 (and (= (size!1051 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1050 _keys!1833) (size!1051 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31005 () Bool)

(declare-fun e!19859 () Bool)

(declare-fun e!19860 () Bool)

(assert (=> b!31005 (= e!19859 (and e!19860 mapRes!1615))))

(declare-fun condMapEmpty!1615 () Bool)

(declare-fun mapDefault!1615 () ValueCell!496)

