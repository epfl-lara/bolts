; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109702 () Bool)

(assert start!109702)

(declare-fun b_free!29135 () Bool)

(declare-fun b_next!29135 () Bool)

(assert (=> start!109702 (= b_free!29135 (not b_next!29135))))

(declare-fun tp!102528 () Bool)

(declare-fun b_and!47239 () Bool)

(assert (=> start!109702 (= tp!102528 b_and!47239)))

(declare-fun b!1298945 () Bool)

(declare-fun res!863328 () Bool)

(declare-fun e!741069 () Bool)

(assert (=> b!1298945 (=> (not res!863328) (not e!741069))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51469 0))(
  ( (V!51470 (val!17462 Int)) )
))
(declare-datatypes ((ValueCell!16489 0))(
  ( (ValueCellFull!16489 (v!20064 V!51469)) (EmptyCell!16489) )
))
(declare-datatypes ((array!86519 0))(
  ( (array!86520 (arr!41755 (Array (_ BitVec 32) ValueCell!16489)) (size!42306 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86519)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86521 0))(
  ( (array!86522 (arr!41756 (Array (_ BitVec 32) (_ BitVec 64))) (size!42307 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86521)

(assert (=> b!1298945 (= res!863328 (and (= (size!42306 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42307 _keys!1741) (size!42306 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298946 () Bool)

(declare-fun res!863332 () Bool)

(assert (=> b!1298946 (=> (not res!863332) (not e!741069))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1298946 (= res!863332 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42307 _keys!1741))))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun b!1298947 () Bool)

(declare-fun arrayContainsKey!0 (array!86521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1298947 (= e!741069 (not (arrayContainsKey!0 _keys!1741 k!1205 from!2144)))))

(declare-fun b!1298948 () Bool)

(declare-fun res!863330 () Bool)

(assert (=> b!1298948 (=> (not res!863330) (not e!741069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86521 (_ BitVec 32)) Bool)

(assert (=> b!1298948 (= res!863330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298949 () Bool)

(declare-fun res!863333 () Bool)

(assert (=> b!1298949 (=> (not res!863333) (not e!741069))))

(declare-datatypes ((List!29826 0))(
  ( (Nil!29823) (Cons!29822 (h!31031 (_ BitVec 64)) (t!43399 List!29826)) )
))
(declare-fun arrayNoDuplicates!0 (array!86521 (_ BitVec 32) List!29826) Bool)

(assert (=> b!1298949 (= res!863333 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29823))))

(declare-fun b!1298950 () Bool)

(declare-fun e!741067 () Bool)

(declare-fun e!741068 () Bool)

(declare-fun mapRes!53726 () Bool)

(assert (=> b!1298950 (= e!741067 (and e!741068 mapRes!53726))))

(declare-fun condMapEmpty!53726 () Bool)

(declare-fun mapDefault!53726 () ValueCell!16489)

