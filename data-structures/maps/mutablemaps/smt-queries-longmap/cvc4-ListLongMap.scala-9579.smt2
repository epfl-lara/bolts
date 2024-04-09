; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113376 () Bool)

(assert start!113376)

(declare-fun b_free!31391 () Bool)

(declare-fun b_next!31391 () Bool)

(assert (=> start!113376 (= b_free!31391 (not b_next!31391))))

(declare-fun tp!109979 () Bool)

(declare-fun b_and!50645 () Bool)

(assert (=> start!113376 (= tp!109979 b_and!50645)))

(declare-fun b!1344905 () Bool)

(declare-fun res!892434 () Bool)

(declare-fun e!765401 () Bool)

(assert (=> b!1344905 (=> (not res!892434) (not e!765401))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344905 (= res!892434 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344906 () Bool)

(declare-fun res!892438 () Bool)

(assert (=> b!1344906 (=> (not res!892438) (not e!765401))))

(declare-datatypes ((array!91579 0))(
  ( (array!91580 (arr!44241 (Array (_ BitVec 32) (_ BitVec 64))) (size!44792 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91579)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344906 (= res!892438 (validKeyInArray!0 (select (arr!44241 _keys!1571) from!1960)))))

(declare-fun b!1344907 () Bool)

(declare-fun e!765402 () Bool)

(declare-fun tp_is_empty!37391 () Bool)

(assert (=> b!1344907 (= e!765402 tp_is_empty!37391)))

(declare-fun res!892442 () Bool)

(assert (=> start!113376 (=> (not res!892442) (not e!765401))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113376 (= res!892442 (validMask!0 mask!1977))))

(assert (=> start!113376 e!765401))

(assert (=> start!113376 tp_is_empty!37391))

(assert (=> start!113376 true))

(declare-fun array_inv!33255 (array!91579) Bool)

(assert (=> start!113376 (array_inv!33255 _keys!1571)))

(declare-datatypes ((V!54957 0))(
  ( (V!54958 (val!18770 Int)) )
))
(declare-datatypes ((ValueCell!17797 0))(
  ( (ValueCellFull!17797 (v!21416 V!54957)) (EmptyCell!17797) )
))
(declare-datatypes ((array!91581 0))(
  ( (array!91582 (arr!44242 (Array (_ BitVec 32) ValueCell!17797)) (size!44793 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91581)

(declare-fun e!765404 () Bool)

(declare-fun array_inv!33256 (array!91581) Bool)

(assert (=> start!113376 (and (array_inv!33256 _values!1303) e!765404)))

(assert (=> start!113376 tp!109979))

(declare-fun b!1344908 () Bool)

(declare-fun res!892432 () Bool)

(assert (=> b!1344908 (=> (not res!892432) (not e!765401))))

(declare-fun minValue!1245 () V!54957)

(declare-fun zeroValue!1245 () V!54957)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24332 0))(
  ( (tuple2!24333 (_1!12176 (_ BitVec 64)) (_2!12176 V!54957)) )
))
(declare-datatypes ((List!31506 0))(
  ( (Nil!31503) (Cons!31502 (h!32711 tuple2!24332) (t!46061 List!31506)) )
))
(declare-datatypes ((ListLongMap!22001 0))(
  ( (ListLongMap!22002 (toList!11016 List!31506)) )
))
(declare-fun contains!9128 (ListLongMap!22001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5909 (array!91579 array!91581 (_ BitVec 32) (_ BitVec 32) V!54957 V!54957 (_ BitVec 32) Int) ListLongMap!22001)

(assert (=> b!1344908 (= res!892432 (contains!9128 (getCurrentListMap!5909 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344909 () Bool)

(declare-fun e!765399 () Bool)

(assert (=> b!1344909 (= e!765399 tp_is_empty!37391)))

(declare-fun b!1344910 () Bool)

(declare-fun e!765400 () Bool)

(assert (=> b!1344910 (= e!765400 (not true))))

(declare-fun lt!595195 () ListLongMap!22001)

(assert (=> b!1344910 (contains!9128 lt!595195 k!1142)))

(declare-datatypes ((Unit!44051 0))(
  ( (Unit!44052) )
))
(declare-fun lt!595193 () Unit!44051)

(declare-fun lt!595194 () V!54957)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!385 ((_ BitVec 64) (_ BitVec 64) V!54957 ListLongMap!22001) Unit!44051)

(assert (=> b!1344910 (= lt!595193 (lemmaInListMapAfterAddingDiffThenInBefore!385 k!1142 (select (arr!44241 _keys!1571) from!1960) lt!595194 lt!595195))))

(declare-fun b!1344911 () Bool)

(declare-fun res!892441 () Bool)

(assert (=> b!1344911 (=> (not res!892441) (not e!765401))))

(assert (=> b!1344911 (= res!892441 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44792 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344912 () Bool)

(declare-fun res!892433 () Bool)

(assert (=> b!1344912 (=> (not res!892433) (not e!765401))))

(assert (=> b!1344912 (= res!892433 (not (= (select (arr!44241 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1344913 () Bool)

(declare-fun mapRes!57793 () Bool)

(assert (=> b!1344913 (= e!765404 (and e!765402 mapRes!57793))))

(declare-fun condMapEmpty!57793 () Bool)

(declare-fun mapDefault!57793 () ValueCell!17797)

