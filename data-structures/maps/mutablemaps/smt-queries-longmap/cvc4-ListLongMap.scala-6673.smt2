; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84042 () Bool)

(assert start!84042)

(declare-fun b_free!19769 () Bool)

(declare-fun b_next!19769 () Bool)

(assert (=> start!84042 (= b_free!19769 (not b_next!19769))))

(declare-fun tp!68831 () Bool)

(declare-fun b_and!31639 () Bool)

(assert (=> start!84042 (= tp!68831 b_and!31639)))

(declare-fun b!981849 () Bool)

(declare-fun e!553517 () Bool)

(declare-fun tp_is_empty!22817 () Bool)

(assert (=> b!981849 (= e!553517 tp_is_empty!22817)))

(declare-fun b!981850 () Bool)

(declare-fun res!657154 () Bool)

(declare-fun e!553515 () Bool)

(assert (=> b!981850 (=> (not res!657154) (not e!553515))))

(declare-datatypes ((array!61625 0))(
  ( (array!61626 (arr!29666 (Array (_ BitVec 32) (_ BitVec 64))) (size!30146 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61625)

(declare-datatypes ((List!20690 0))(
  ( (Nil!20687) (Cons!20686 (h!21848 (_ BitVec 64)) (t!29417 List!20690)) )
))
(declare-fun arrayNoDuplicates!0 (array!61625 (_ BitVec 32) List!20690) Bool)

(assert (=> b!981850 (= res!657154 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20687))))

(declare-fun mapIsEmpty!36254 () Bool)

(declare-fun mapRes!36254 () Bool)

(assert (=> mapIsEmpty!36254 mapRes!36254))

(declare-fun b!981851 () Bool)

(declare-fun res!657153 () Bool)

(assert (=> b!981851 (=> (not res!657153) (not e!553515))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981851 (= res!657153 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30146 _keys!1544))))))

(declare-fun b!981852 () Bool)

(declare-fun res!657156 () Bool)

(assert (=> b!981852 (=> (not res!657156) (not e!553515))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981852 (= res!657156 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981853 () Bool)

(declare-fun res!657152 () Bool)

(assert (=> b!981853 (=> (not res!657152) (not e!553515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981853 (= res!657152 (validKeyInArray!0 (select (arr!29666 _keys!1544) from!1932)))))

(declare-fun b!981854 () Bool)

(declare-fun e!553520 () Bool)

(assert (=> b!981854 (= e!553520 (and e!553517 mapRes!36254))))

(declare-fun condMapEmpty!36254 () Bool)

(declare-datatypes ((V!35405 0))(
  ( (V!35406 (val!11459 Int)) )
))
(declare-datatypes ((ValueCell!10927 0))(
  ( (ValueCellFull!10927 (v!14021 V!35405)) (EmptyCell!10927) )
))
(declare-datatypes ((array!61627 0))(
  ( (array!61628 (arr!29667 (Array (_ BitVec 32) ValueCell!10927)) (size!30147 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61627)

(declare-fun mapDefault!36254 () ValueCell!10927)

