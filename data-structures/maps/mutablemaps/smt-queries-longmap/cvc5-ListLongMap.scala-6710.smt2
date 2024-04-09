; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84260 () Bool)

(assert start!84260)

(declare-fun b_free!19933 () Bool)

(declare-fun b_next!19933 () Bool)

(assert (=> start!84260 (= b_free!19933 (not b_next!19933))))

(declare-fun tp!69403 () Bool)

(declare-fun b_and!31961 () Bool)

(assert (=> start!84260 (= tp!69403 b_and!31961)))

(declare-fun b!985217 () Bool)

(declare-fun res!659385 () Bool)

(declare-fun e!555387 () Bool)

(assert (=> b!985217 (=> (not res!659385) (not e!555387))))

(declare-datatypes ((array!62035 0))(
  ( (array!62036 (arr!29871 (Array (_ BitVec 32) (_ BitVec 64))) (size!30351 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62035)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985217 (= res!659385 (validKeyInArray!0 (select (arr!29871 _keys!1544) from!1932)))))

(declare-fun b!985218 () Bool)

(declare-fun res!659384 () Bool)

(assert (=> b!985218 (=> (not res!659384) (not e!555387))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62035 (_ BitVec 32)) Bool)

(assert (=> b!985218 (= res!659384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985220 () Bool)

(declare-fun res!659382 () Bool)

(assert (=> b!985220 (=> (not res!659382) (not e!555387))))

(declare-datatypes ((V!35697 0))(
  ( (V!35698 (val!11568 Int)) )
))
(declare-datatypes ((ValueCell!11036 0))(
  ( (ValueCellFull!11036 (v!14130 V!35697)) (EmptyCell!11036) )
))
(declare-datatypes ((array!62037 0))(
  ( (array!62038 (arr!29872 (Array (_ BitVec 32) ValueCell!11036)) (size!30352 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62037)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985220 (= res!659382 (and (= (size!30352 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30351 _keys!1544) (size!30352 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985221 () Bool)

(declare-fun res!659383 () Bool)

(assert (=> b!985221 (=> (not res!659383) (not e!555387))))

(assert (=> b!985221 (= res!659383 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985222 () Bool)

(declare-fun res!659387 () Bool)

(assert (=> b!985222 (=> (not res!659387) (not e!555387))))

(assert (=> b!985222 (= res!659387 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30351 _keys!1544))))))

(declare-fun b!985223 () Bool)

(declare-fun e!555389 () Bool)

(declare-fun e!555392 () Bool)

(declare-fun mapRes!36581 () Bool)

(assert (=> b!985223 (= e!555389 (and e!555392 mapRes!36581))))

(declare-fun condMapEmpty!36581 () Bool)

(declare-fun mapDefault!36581 () ValueCell!11036)

