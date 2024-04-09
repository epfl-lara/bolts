; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108576 () Bool)

(assert start!108576)

(declare-fun b_free!28087 () Bool)

(declare-fun b_next!28087 () Bool)

(assert (=> start!108576 (= b_free!28087 (not b_next!28087))))

(declare-fun tp!99372 () Bool)

(declare-fun b_and!46157 () Bool)

(assert (=> start!108576 (= tp!99372 b_and!46157)))

(declare-fun b!1281107 () Bool)

(declare-fun res!851096 () Bool)

(declare-fun e!731995 () Bool)

(assert (=> b!1281107 (=> (not res!851096) (not e!731995))))

(declare-datatypes ((array!84479 0))(
  ( (array!84480 (arr!40739 (Array (_ BitVec 32) (_ BitVec 64))) (size!41290 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84479)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84479 (_ BitVec 32)) Bool)

(assert (=> b!1281107 (= res!851096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281108 () Bool)

(declare-fun res!851093 () Bool)

(assert (=> b!1281108 (=> (not res!851093) (not e!731995))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281108 (= res!851093 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41290 _keys!1741))))))

(declare-fun b!1281109 () Bool)

(declare-fun e!731991 () Bool)

(declare-fun e!731994 () Bool)

(declare-fun mapRes!52142 () Bool)

(assert (=> b!1281109 (= e!731991 (and e!731994 mapRes!52142))))

(declare-fun condMapEmpty!52142 () Bool)

(declare-datatypes ((V!50073 0))(
  ( (V!50074 (val!16938 Int)) )
))
(declare-datatypes ((ValueCell!15965 0))(
  ( (ValueCellFull!15965 (v!19536 V!50073)) (EmptyCell!15965) )
))
(declare-datatypes ((array!84481 0))(
  ( (array!84482 (arr!40740 (Array (_ BitVec 32) ValueCell!15965)) (size!41291 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84481)

(declare-fun mapDefault!52142 () ValueCell!15965)

