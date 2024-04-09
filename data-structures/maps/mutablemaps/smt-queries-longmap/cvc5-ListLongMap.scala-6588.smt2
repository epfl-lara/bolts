; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83440 () Bool)

(assert start!83440)

(declare-fun b_free!19405 () Bool)

(declare-fun b_next!19405 () Bool)

(assert (=> start!83440 (= b_free!19405 (not b_next!19405))))

(declare-fun tp!67495 () Bool)

(declare-fun b_and!31025 () Bool)

(assert (=> start!83440 (= tp!67495 b_and!31025)))

(declare-fun b!974014 () Bool)

(declare-fun res!652108 () Bool)

(declare-fun e!549035 () Bool)

(assert (=> b!974014 (=> (not res!652108) (not e!549035))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34721 0))(
  ( (V!34722 (val!11202 Int)) )
))
(declare-datatypes ((ValueCell!10670 0))(
  ( (ValueCellFull!10670 (v!13761 V!34721)) (EmptyCell!10670) )
))
(declare-datatypes ((array!60627 0))(
  ( (array!60628 (arr!29173 (Array (_ BitVec 32) ValueCell!10670)) (size!29653 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60627)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60629 0))(
  ( (array!60630 (arr!29174 (Array (_ BitVec 32) (_ BitVec 64))) (size!29654 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60629)

(assert (=> b!974014 (= res!652108 (and (= (size!29653 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29654 _keys!1717) (size!29653 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!652113 () Bool)

(assert (=> start!83440 (=> (not res!652113) (not e!549035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83440 (= res!652113 (validMask!0 mask!2147))))

(assert (=> start!83440 e!549035))

(assert (=> start!83440 true))

(declare-fun e!549036 () Bool)

(declare-fun array_inv!22463 (array!60627) Bool)

(assert (=> start!83440 (and (array_inv!22463 _values!1425) e!549036)))

(declare-fun tp_is_empty!22303 () Bool)

(assert (=> start!83440 tp_is_empty!22303))

(assert (=> start!83440 tp!67495))

(declare-fun array_inv!22464 (array!60629) Bool)

(assert (=> start!83440 (array_inv!22464 _keys!1717)))

(declare-fun b!974015 () Bool)

(declare-fun res!652111 () Bool)

(assert (=> b!974015 (=> (not res!652111) (not e!549035))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974015 (= res!652111 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29654 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29654 _keys!1717))))))

(declare-fun mapIsEmpty!35464 () Bool)

(declare-fun mapRes!35464 () Bool)

(assert (=> mapIsEmpty!35464 mapRes!35464))

(declare-fun b!974016 () Bool)

(declare-fun res!652114 () Bool)

(assert (=> b!974016 (=> (not res!652114) (not e!549035))))

(declare-datatypes ((List!20366 0))(
  ( (Nil!20363) (Cons!20362 (h!21524 (_ BitVec 64)) (t!28851 List!20366)) )
))
(declare-fun arrayNoDuplicates!0 (array!60629 (_ BitVec 32) List!20366) Bool)

(assert (=> b!974016 (= res!652114 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20363))))

(declare-fun b!974017 () Bool)

(declare-fun res!652112 () Bool)

(assert (=> b!974017 (=> (not res!652112) (not e!549035))))

(declare-fun zeroValue!1367 () V!34721)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34721)

(declare-datatypes ((tuple2!14488 0))(
  ( (tuple2!14489 (_1!7254 (_ BitVec 64)) (_2!7254 V!34721)) )
))
(declare-datatypes ((List!20367 0))(
  ( (Nil!20364) (Cons!20363 (h!21525 tuple2!14488) (t!28852 List!20367)) )
))
(declare-datatypes ((ListLongMap!13199 0))(
  ( (ListLongMap!13200 (toList!6615 List!20367)) )
))
(declare-fun contains!5656 (ListLongMap!13199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3800 (array!60629 array!60627 (_ BitVec 32) (_ BitVec 32) V!34721 V!34721 (_ BitVec 32) Int) ListLongMap!13199)

(assert (=> b!974017 (= res!652112 (contains!5656 (getCurrentListMap!3800 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29174 _keys!1717) i!822)))))

(declare-fun b!974018 () Bool)

(declare-fun e!549037 () Bool)

(assert (=> b!974018 (= e!549037 tp_is_empty!22303)))

(declare-fun b!974019 () Bool)

(assert (=> b!974019 (= e!549035 false)))

(declare-fun lt!432688 () ListLongMap!13199)

(assert (=> b!974019 (= lt!432688 (getCurrentListMap!3800 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974020 () Bool)

(declare-fun res!652109 () Bool)

(assert (=> b!974020 (=> (not res!652109) (not e!549035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974020 (= res!652109 (validKeyInArray!0 (select (arr!29174 _keys!1717) i!822)))))

(declare-fun b!974021 () Bool)

(assert (=> b!974021 (= e!549036 (and e!549037 mapRes!35464))))

(declare-fun condMapEmpty!35464 () Bool)

(declare-fun mapDefault!35464 () ValueCell!10670)

