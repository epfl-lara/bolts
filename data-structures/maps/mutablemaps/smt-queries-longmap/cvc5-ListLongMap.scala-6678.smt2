; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84068 () Bool)

(assert start!84068)

(declare-fun b_free!19795 () Bool)

(declare-fun b_next!19795 () Bool)

(assert (=> start!84068 (= b_free!19795 (not b_next!19795))))

(declare-fun tp!68908 () Bool)

(declare-fun b_and!31691 () Bool)

(assert (=> start!84068 (= tp!68908 b_and!31691)))

(declare-fun mapIsEmpty!36293 () Bool)

(declare-fun mapRes!36293 () Bool)

(assert (=> mapIsEmpty!36293 mapRes!36293))

(declare-fun b!982304 () Bool)

(declare-fun res!657466 () Bool)

(declare-fun e!553753 () Bool)

(assert (=> b!982304 (=> (not res!657466) (not e!553753))))

(declare-datatypes ((array!61671 0))(
  ( (array!61672 (arr!29689 (Array (_ BitVec 32) (_ BitVec 64))) (size!30169 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61671)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982304 (= res!657466 (validKeyInArray!0 (select (arr!29689 _keys!1544) from!1932)))))

(declare-fun b!982305 () Bool)

(declare-fun res!657470 () Bool)

(assert (=> b!982305 (=> (not res!657470) (not e!553753))))

(assert (=> b!982305 (= res!657470 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30169 _keys!1544))))))

(declare-fun b!982306 () Bool)

(declare-fun res!657469 () Bool)

(assert (=> b!982306 (=> (not res!657469) (not e!553753))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982306 (= res!657469 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!657471 () Bool)

(assert (=> start!84068 (=> (not res!657471) (not e!553753))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84068 (= res!657471 (validMask!0 mask!1948))))

(assert (=> start!84068 e!553753))

(assert (=> start!84068 true))

(declare-fun tp_is_empty!22843 () Bool)

(assert (=> start!84068 tp_is_empty!22843))

(declare-datatypes ((V!35441 0))(
  ( (V!35442 (val!11472 Int)) )
))
(declare-datatypes ((ValueCell!10940 0))(
  ( (ValueCellFull!10940 (v!14034 V!35441)) (EmptyCell!10940) )
))
(declare-datatypes ((array!61673 0))(
  ( (array!61674 (arr!29690 (Array (_ BitVec 32) ValueCell!10940)) (size!30170 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61673)

(declare-fun e!553754 () Bool)

(declare-fun array_inv!22831 (array!61673) Bool)

(assert (=> start!84068 (and (array_inv!22831 _values!1278) e!553754)))

(assert (=> start!84068 tp!68908))

(declare-fun array_inv!22832 (array!61671) Bool)

(assert (=> start!84068 (array_inv!22832 _keys!1544)))

(declare-fun b!982307 () Bool)

(declare-fun e!553752 () Bool)

(assert (=> b!982307 (= e!553752 tp_is_empty!22843)))

(declare-fun b!982308 () Bool)

(assert (=> b!982308 (= e!553754 (and e!553752 mapRes!36293))))

(declare-fun condMapEmpty!36293 () Bool)

(declare-fun mapDefault!36293 () ValueCell!10940)

