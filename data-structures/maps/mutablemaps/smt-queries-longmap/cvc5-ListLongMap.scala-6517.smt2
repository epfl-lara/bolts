; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82970 () Bool)

(assert start!82970)

(declare-fun b_free!19069 () Bool)

(declare-fun b_next!19069 () Bool)

(assert (=> start!82970 (= b_free!19069 (not b_next!19069))))

(declare-fun tp!66337 () Bool)

(declare-fun b_and!30575 () Bool)

(assert (=> start!82970 (= tp!66337 b_and!30575)))

(declare-fun b!967827 () Bool)

(declare-fun res!648020 () Bool)

(declare-fun e!545479 () Bool)

(assert (=> b!967827 (=> (not res!648020) (not e!545479))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967827 (= res!648020 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967828 () Bool)

(declare-fun res!648019 () Bool)

(assert (=> b!967828 (=> (not res!648019) (not e!545479))))

(declare-datatypes ((array!59805 0))(
  ( (array!59806 (arr!28767 (Array (_ BitVec 32) (_ BitVec 64))) (size!29247 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59805)

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967828 (= res!648019 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29247 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29247 _keys!1686))))))

(declare-fun res!648021 () Bool)

(assert (=> start!82970 (=> (not res!648021) (not e!545479))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82970 (= res!648021 (validMask!0 mask!2110))))

(assert (=> start!82970 e!545479))

(assert (=> start!82970 true))

(declare-datatypes ((V!34153 0))(
  ( (V!34154 (val!10989 Int)) )
))
(declare-datatypes ((ValueCell!10457 0))(
  ( (ValueCellFull!10457 (v!13547 V!34153)) (EmptyCell!10457) )
))
(declare-datatypes ((array!59807 0))(
  ( (array!59808 (arr!28768 (Array (_ BitVec 32) ValueCell!10457)) (size!29248 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59807)

(declare-fun e!545478 () Bool)

(declare-fun array_inv!22165 (array!59807) Bool)

(assert (=> start!82970 (and (array_inv!22165 _values!1400) e!545478)))

(declare-fun array_inv!22166 (array!59805) Bool)

(assert (=> start!82970 (array_inv!22166 _keys!1686)))

(assert (=> start!82970 tp!66337))

(declare-fun tp_is_empty!21877 () Bool)

(assert (=> start!82970 tp_is_empty!21877))

(declare-fun mapIsEmpty!34810 () Bool)

(declare-fun mapRes!34810 () Bool)

(assert (=> mapIsEmpty!34810 mapRes!34810))

(declare-fun b!967829 () Bool)

(declare-fun e!545475 () Bool)

(assert (=> b!967829 (= e!545478 (and e!545475 mapRes!34810))))

(declare-fun condMapEmpty!34810 () Bool)

(declare-fun mapDefault!34810 () ValueCell!10457)

