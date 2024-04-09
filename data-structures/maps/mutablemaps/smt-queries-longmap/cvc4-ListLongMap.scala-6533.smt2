; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83114 () Bool)

(assert start!83114)

(declare-fun res!648743 () Bool)

(declare-fun e!546338 () Bool)

(assert (=> start!83114 (=> (not res!648743) (not e!546338))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83114 (= res!648743 (validMask!0 mask!2147))))

(assert (=> start!83114 e!546338))

(assert (=> start!83114 true))

(declare-datatypes ((V!34285 0))(
  ( (V!34286 (val!11039 Int)) )
))
(declare-datatypes ((ValueCell!10507 0))(
  ( (ValueCellFull!10507 (v!13598 V!34285)) (EmptyCell!10507) )
))
(declare-datatypes ((array!60003 0))(
  ( (array!60004 (arr!28861 (Array (_ BitVec 32) ValueCell!10507)) (size!29341 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60003)

(declare-fun e!546340 () Bool)

(declare-fun array_inv!22237 (array!60003) Bool)

(assert (=> start!83114 (and (array_inv!22237 _values!1425) e!546340)))

(declare-datatypes ((array!60005 0))(
  ( (array!60006 (arr!28862 (Array (_ BitVec 32) (_ BitVec 64))) (size!29342 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60005)

(declare-fun array_inv!22238 (array!60005) Bool)

(assert (=> start!83114 (array_inv!22238 _keys!1717)))

(declare-fun b!969068 () Bool)

(declare-fun e!546342 () Bool)

(declare-fun tp_is_empty!21977 () Bool)

(assert (=> b!969068 (= e!546342 tp_is_empty!21977)))

(declare-fun b!969069 () Bool)

(declare-fun res!648744 () Bool)

(assert (=> b!969069 (=> (not res!648744) (not e!546338))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969069 (= res!648744 (and (= (size!29341 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29342 _keys!1717) (size!29341 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969070 () Bool)

(declare-fun e!546341 () Bool)

(declare-fun mapRes!34975 () Bool)

(assert (=> b!969070 (= e!546340 (and e!546341 mapRes!34975))))

(declare-fun condMapEmpty!34975 () Bool)

(declare-fun mapDefault!34975 () ValueCell!10507)

